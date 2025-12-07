@interface HDSPSleepWidgetManager
- (BOOL)inUnscheduledSleepMode;
- (BOOL)isOnboarded;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPSleepWidgetManager)initWithEnvironment:(id)environment;
- (HDSPSleepWidgetManager)initWithEnvironment:(id)environment widgetManager:(id)manager reloadThrottler:(id)throttler;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NAScheduler)callbackScheduler;
- (NSDate)currentDate;
- (NSString)providerIdentifier;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)date;
- (int64_t)_lock_currentSleepWidgetState;
- (int64_t)currentSleepWidgetState;
- (unint64_t)sleepScheduleState;
- (void)clearWidgetOverrideState;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)overrideWidgetState:(int64_t)state;
- (void)scheduleStateExpiration;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepEventIsDue:(id)due;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)sleepWidgetShouldReload;
- (void)sleepWidgetStateDidChange:(int64_t)change previousState:(int64_t)state;
- (void)timeZoneChangeDetected:(id)detected;
- (void)unscheduleStateExpiration;
- (void)updateState;
@end

@implementation HDSPSleepWidgetManager

- (HDSPSleepWidgetManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([environmentCopy isUnitTestEnvironment])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D62530]);
    v8 = objc_alloc(MEMORY[0x277D62540]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__HDSPSleepWidgetManager_initWithEnvironment___block_invoke;
    v11[3] = &unk_279C7B108;
    v5 = v7;
    v12 = v5;
    v6 = [v8 initWithInterval:v11 executeBlock:1.0];
  }

  v9 = [(HDSPSleepWidgetManager *)self initWithEnvironment:environmentCopy widgetManager:v5 reloadThrottler:v6];

  return v9;
}

- (HDSPSleepWidgetManager)initWithEnvironment:(id)environment widgetManager:(id)manager reloadThrottler:(id)throttler
{
  v34 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  managerCopy = manager;
  throttlerCopy = throttler;
  v29.receiver = self;
  v29.super_class = HDSPSleepWidgetManager;
  v11 = [(HDSPSleepWidgetManager *)&v29 init];
  if (v11)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v31 = v13;
      v32 = 2048;
      v33 = v11;
      v14 = v13;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeStrong(&v11->_widgetManager, manager);
    [(HKSPSleepWidgetManager *)v11->_widgetManager setDelegate:v11];
    objc_storeStrong(&v11->_reloadThrottler, throttler);
    mutexGenerator = [environmentCopy mutexGenerator];
    v16 = mutexGenerator[2]();
    mutexProvider = v11->_mutexProvider;
    v11->_mutexProvider = v16;

    v18 = [HDSPSleepWidgetStateMachine alloc];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = objc_alloc(MEMORY[0x277D62558]);
    userDefaults = [environmentCopy userDefaults];
    v23 = [v21 initWithUserDefaults:userDefaults];
    currentDateProvider = [environmentCopy currentDateProvider];
    v25 = [(HDSPSleepWidgetStateMachine *)v18 initWithIdentifier:v20 persistence:v23 delegate:v11 infoProvider:v11 currentDateProvider:currentDateProvider];
    stateMachine = v11->_stateMachine;
    v11->_stateMachine = v25;

    v27 = v11;
  }

  return v11;
}

- (void)environmentWillBecomeReady:(id)ready
{
  v16 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v6 = v15;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v14, 0xCu);
  }

  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  sleepScheduler2 = [readyCopy sleepScheduler];
  [sleepScheduler2 addEventProvider:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  diagnostics = [readyCopy diagnostics];

  [diagnostics addProvider:self];
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

  [(HDSPSleepWidgetManager *)self updateState];
}

- (void)updateState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__HDSPSleepWidgetManager_updateState__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v2];
}

- (int64_t)currentSleepWidgetState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepWidgetManager_currentSleepWidgetState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepWidgetManager *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__49__HDSPSleepWidgetManager_currentSleepWidgetState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_currentSleepWidgetState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_lock_currentSleepWidgetState
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_isOverridingWidgetState)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v4 = v9;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] overriding widget state", &v8, 0xCu);
    }

    return self->_overrideState;
  }

  else
  {
    currentState = [(HKSPStateMachine *)self->_stateMachine currentState];
    widgetState = [currentState widgetState];

    return widgetState;
  }
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v13 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v7 = v12;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule model did change", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HDSPSleepWidgetManager_sleepScheduleModelManager_didUpdateSleepScheduleModel___block_invoke;
  v9[3] = &unk_279C7B2D0;
  v9[4] = self;
  v10 = modelCopy;
  v8 = modelCopy;
  [(HDSPSleepWidgetManager *)self _withLock:v9];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v8 = v11;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule state did change", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HDSPSleepWidgetManager_sleepScheduleStateDidChange_previousState_reason___block_invoke;
  v9[3] = &unk_279C7B740;
  v9[4] = self;
  v9[5] = change;
  [(HDSPSleepWidgetManager *)self _withLock:v9];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v9 = v12;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode did change", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HDSPSleepWidgetManager_sleepModeDidChange_previousMode_reason___block_invoke;
  v10[3] = &unk_279C7B650;
  v10[4] = self;
  v10[5] = change;
  v10[6] = reason;
  [(HDSPSleepWidgetManager *)self _withLock:v10];
}

uint64_t __65__HDSPSleepWidgetManager_sleepModeDidChange_previousMode_reason___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 16);
  v3 = HKSPSleepModeChangeReasonTreatedAsUserRequested();

  return [v2 sleepModeDidChange:v1 isUserRequested:v3];
}

- (void)significantTimeChangeDetected:(id)detected
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] significantTimeChangeDetected", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDSPSleepWidgetManager_significantTimeChangeDetected___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v6];
}

- (void)timeZoneChangeDetected:(id)detected
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] timeZoneChangeDetected", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDSPSleepWidgetManager_timeZoneChangeDetected___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v6];
}

- (void)sleepWidgetStateDidChange:(int64_t)change previousState:(int64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  if (change != state)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = NSStringFromHKSPSleepWidgetState();
      environment = [(HDSPSleepWidgetManager *)self environment];
      currentContext = [environment currentContext];
      source = [currentContext source];
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = source;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepWidgetStateDidChange: %{public}@ (%{public}@)", &v12, 0x20u);
    }

    [(HKSPThrottler *)self->_reloadThrottler execute];
    [(HKSPSleepWidgetManager *)self->_widgetManager invalidateRelevances];
  }
}

- (void)sleepWidgetShouldReload
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    environment = [(HDSPSleepWidgetManager *)self environment];
    currentContext = [environment currentContext];
    source = [currentContext source];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = source;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepWidgetShouldReload (%{public}@)", &v9, 0x16u);
  }

  [(HKSPThrottler *)self->_reloadThrottler execute];
}

- (void)scheduleStateExpiration
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] telling scheduler we have events to schedule", &v6, 0xCu);
  }

  sleepEventDelegate = [(HDSPSleepWidgetManager *)self sleepEventDelegate];
  [sleepEventDelegate eventProviderHasUpcomingEvents:self];
}

- (void)unscheduleStateExpiration
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] telling scheduler we no longer have events to schedule", &v6, 0xCu);
  }

  sleepEventDelegate = [(HDSPSleepWidgetManager *)self sleepEventDelegate];
  [sleepEventDelegate eventProviderCancelledEvents:self];
}

- (NAScheduler)callbackScheduler
{
  environment = [(HDSPSleepWidgetManager *)self environment];
  defaultCallbackScheduler = [environment defaultCallbackScheduler];

  return defaultCallbackScheduler;
}

- (NSDate)currentDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [WeakRetained currentDateProvider];
  v4 = currentDateProvider[2]();

  return v4;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  return sleepScheduleModel;
}

- (unint64_t)sleepScheduleState
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepCoordinator = [WeakRetained sleepCoordinator];
  currentSleepScheduleState = [sleepCoordinator currentSleepScheduleState];

  return currentSleepScheduleState;
}

- (BOOL)inUnscheduledSleepMode
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepModeManager = [WeakRetained sleepModeManager];
  inUnscheduledSleepMode = [sleepModeManager inUnscheduledSleepMode];

  return inUnscheduledSleepMode;
}

- (BOOL)isOnboarded
{
  sleepScheduleModel = [(HDSPSleepWidgetManager *)self sleepScheduleModel];
  sleepEventRecord = [sleepScheduleModel sleepEventRecord];
  isAnySleepCoachingOnboardingCompleted = [sleepEventRecord isAnySleepCoachingOnboardingCompleted];

  return isAnySleepCoachingOnboardingCompleted;
}

- (void)sleepEventIsDue:(id)due
{
  v16 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    identifier = [dueCopy identifier];
    *buf = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = identifier;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ expired", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HDSPSleepWidgetManager_sleepEventIsDue___block_invoke;
  v10[3] = &unk_279C7B2D0;
  v10[4] = self;
  v11 = dueCopy;
  v9 = dueCopy;
  [(HDSPSleepWidgetManager *)self _withLock:v10];
}

void __42__HDSPSleepWidgetManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) identifier];
  [v1 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E08 != -1)
  {
    dispatch_once(&qword_2814C0E08, block);
  }

  return _MergedGlobals_11;
}

void __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3;
  v9 = __Block_byref_object_dispose__3;
  v10 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke_296;
  v4[3] = &unk_279C7B678;
  v4[4] = v1;
  v4[5] = &v5;
  [v1 _withLock:v4];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v6[5]];
  v3 = _MergedGlobals_11;
  _MergedGlobals_11 = v2;

  _Block_object_dispose(&v5, 8);
}

uint64_t __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke_296(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) scheduledExpirationStateIdentifiers];

  return MEMORY[0x2821F96F8]();
}

- (NSString)providerIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)upcomingEventsDueAfterDate:(id)date
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = MEMORY[0x277CBEBF8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HDSPSleepWidgetManager_upcomingEventsDueAfterDate___block_invoke;
  v12[3] = &unk_279C7B6C8;
  v12[4] = self;
  v5 = dateCopy;
  v13 = v5;
  v14 = &v15;
  [(HDSPSleepWidgetManager *)self _withLock:v12];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v16[5];
    *buf = 138543618;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v9 = v7;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] scheduling expiration of %{public}@", buf, 0x16u);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __53__HDSPSleepWidgetManager_upcomingEventsDueAfterDate___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 16) currentStateExpirationDate];
  if ([v2 hksp_isAfterDate:a1[5]])
  {
    v3 = MEMORY[0x277D624D0];
    v4 = [*(a1[4] + 16) currentStateIdentifier];
    v5 = [v3 sleepEventWithIdentifier:v4 dueDate:v2];

    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)overrideWidgetState:(int64_t)state
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDSPSleepWidgetManager_overrideWidgetState___block_invoke;
  v4[3] = &unk_279C7B740;
  v4[4] = self;
  v4[5] = state;
  [(HDSPSleepWidgetManager *)self _withLock:v4];
  [(HKSPThrottler *)self->_reloadThrottler execute];
}

uint64_t __46__HDSPSleepWidgetManager_overrideWidgetState___block_invoke(uint64_t result)
{
  *(*(result + 32) + 48) = *(result + 40);
  *(*(result + 32) + 40) = 1;
  return result;
}

- (void)clearWidgetOverrideState
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HDSPSleepWidgetManager_clearWidgetOverrideState__block_invoke;
  v3[3] = &unk_279C7B108;
  v3[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v3];
  [(HKSPThrottler *)self->_reloadThrottler execute];
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  [(HDSPSleepWidgetManager *)self currentSleepWidgetState];
  v3 = NSStringFromHKSPSleepWidgetState();
  v4 = [v2 stringWithFormat:@"Current State: %@", v3];

  return v4;
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