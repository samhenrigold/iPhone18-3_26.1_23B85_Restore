@interface HDSPSleepLockScreenManager
- (BOOL)inUnscheduledSleepMode;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPSleepLockScreenManager)initWithEnvironment:(id)environment;
- (HDSPSleepLockScreenManager)initWithEnvironment:(id)environment assertionManager:(id)manager;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (NSString)providerIdentifier;
- (id)_currentState;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)date;
- (int64_t)_lock_resolvedLockScreenState;
- (int64_t)currentLockScreenState;
- (int64_t)sleepMode;
- (void)_lock_updateLockScreenAssertion;
- (void)dismissAlertForGoodMorning;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)lockScreenDidConnect;
- (void)overrideLockScreenState:(int64_t)state userInfo:(id)info;
- (void)presentAlertForGoodMorning;
- (void)scheduleStateExpiration;
- (void)sensitiveUIStateChanged;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepEventIsDue:(id)due;
- (void)sleepLockScreenStateDidChange:(int64_t)change previousState:(int64_t)state;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSettings:(id)settings;
- (void)timeZoneChangeDetected:(id)detected;
- (void)unscheduleStateExpiration;
@end

@implementation HDSPSleepLockScreenManager

- (HDSPSleepLockScreenManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [[HDSPSleepLockScreenAssertionManager alloc] initWithEnvironment:environmentCopy];
  v6 = [(HDSPSleepLockScreenManager *)self initWithEnvironment:environmentCopy assertionManager:v5];

  return v6;
}

- (HDSPSleepLockScreenManager)initWithEnvironment:(id)environment assertionManager:(id)manager
{
  v31 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = HDSPSleepLockScreenManager;
  v8 = [(HDSPSleepLockScreenManager *)&v26 init];
  if (v8)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v28 = v10;
      v29 = 2048;
      v30 = v8;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v8->_assertionManager, manager);
    [(HDSPSleepLockScreenAssertionManager *)v8->_assertionManager setDelegate:v8];
    mutexGenerator = [environmentCopy mutexGenerator];
    v13 = mutexGenerator[2]();
    mutexProvider = v8->_mutexProvider;
    v8->_mutexProvider = v13;

    v15 = [HDSPSleepLockScreenStateMachine alloc];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_alloc(MEMORY[0x277D62558]);
    userDefaults = [environmentCopy userDefaults];
    v20 = [v18 initWithUserDefaults:userDefaults];
    currentDateProvider = [environmentCopy currentDateProvider];
    v22 = [(HDSPSleepLockScreenStateMachine *)v15 initWithIdentifier:v17 persistence:v20 delegate:v8 infoProvider:v8 currentDateProvider:currentDateProvider];
    stateMachine = v8->_stateMachine;
    v8->_stateMachine = v22;

    v24 = v8;
  }

  return v8;
}

- (void)environmentWillBecomeReady:(id)ready
{
  v17 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v15, 0xCu);
  }

  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  goodMorningAlertManager = [readyCopy goodMorningAlertManager];
  [goodMorningAlertManager addObserver:self];

  diagnostics = [readyCopy diagnostics];
  [diagnostics addProvider:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  sleepScheduler2 = [readyCopy sleepScheduler];
  [sleepScheduler2 addEventProvider:self];

  sensitiveUIMonitor = [readyCopy sensitiveUIMonitor];

  [sensitiveUIMonitor addObserver:self];
}

- (void)environmentDidBecomeReady:(id)ready
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDSPSleepLockScreenManager_environmentDidBecomeReady___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v6];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKSPSleepMode();
    v12 = NSStringFromHKSPSleepModeChangeReason();
    *buf = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode did change: %{public}@ (%{public}@)", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HDSPSleepLockScreenManager_sleepModeDidChange_previousMode_reason___block_invoke;
  v13[3] = &unk_279C7B650;
  v13[4] = self;
  v13[5] = change;
  v13[6] = reason;
  [(HDSPSleepLockScreenManager *)self _withLock:v13];
}

void __69__HDSPSleepLockScreenManager_sleepModeDidChange_previousMode_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 sleepModeDidChange:*(a1 + 40) reason:*(a1 + 48)];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSettings:(id)settings
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings did change", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HDSPSleepLockScreenManager_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v7];
}

void __79__HDSPSleepLockScreenManager_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 updateState];
}

- (void)presentAlertForGoodMorning
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] present the good morning alert", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__HDSPSleepLockScreenManager_presentAlertForGoodMorning__block_invoke;
  v5[3] = &unk_279C7B108;
  v5[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v5];
}

void __56__HDSPSleepLockScreenManager_presentAlertForGoodMorning__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 presentAlertForGoodMorning];
}

- (void)dismissAlertForGoodMorning
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] dismiss the good morning alert", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__HDSPSleepLockScreenManager_dismissAlertForGoodMorning__block_invoke;
  v5[3] = &unk_279C7B108;
  v5[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v5];
}

void __56__HDSPSleepLockScreenManager_dismissAlertForGoodMorning__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 dismissAlertForGoodMorning];
}

- (void)sleepLockScreenStateDidChange:(int64_t)change previousState:(int64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = objc_opt_class();
    v11 = 2048;
    changeCopy = change;
    v13 = 2048;
    stateCopy = state;
    v8 = v10;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepLockScreenStateDidChange: %ld previousState: %ld", &v9, 0x20u);
  }

  self->_state = change;
  [(HDSPSleepLockScreenManager *)self _lock_updateLockScreenAssertion];
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

  sleepEventDelegate = [(HDSPSleepLockScreenManager *)self sleepEventDelegate];
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

  sleepEventDelegate = [(HDSPSleepLockScreenManager *)self sleepEventDelegate];
  [sleepEventDelegate eventProviderCancelledEvents:self];
}

- (void)_lock_updateLockScreenAssertion
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepSettings = [sleepScheduleModelManager sleepSettings];
  sleepModeOptions = [sleepSettings sleepModeOptions];

  v7 = objc_loadWeakRetained(&self->_environment);
  sleepModeManager = [v7 sleepModeManager];
  sleepMode = [sleepModeManager sleepMode];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CCABB0];
    v13 = v11;
    v14 = [v12 numberWithBool:(sleepModeOptions >> 14) & 1];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:sleepMode != 0];
    v22 = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating assertion, sleep screen enabled: %@, sleep mode on: %@", &v22, 0x20u);
  }

  _lock_resolvedLockScreenState = [(HDSPSleepLockScreenManager *)self _lock_resolvedLockScreenState];
  if ([(HDSPSleepLockScreenManager *)self _lock_overridingLockScreenState])
  {
    overrideUserInfo = self->_overrideUserInfo;
  }

  else
  {
    overrideUserInfo = 0;
  }

  v18 = overrideUserInfo;
  v19 = [(HDSPSleepLockScreenManager *)self _lock_shouldShowLockScreenForState:_lock_resolvedLockScreenState];
  assertionManager = self->_assertionManager;
  if (v19)
  {
    [(HDSPSleepLockScreenAssertionManager *)assertionManager takeAssertionIfNeeded];
    [(HDSPSleepLockScreenAssertionManager *)self->_assertionManager sendLockScreenState:_lock_resolvedLockScreenState userInfo:v18];
  }

  else
  {
    [(HDSPSleepLockScreenAssertionManager *)assertionManager invalidateAssertion];
  }

  didUpdateAlertAssertion = self->_didUpdateAlertAssertion;
  if (didUpdateAlertAssertion)
  {
    didUpdateAlertAssertion[2](didUpdateAlertAssertion, _lock_resolvedLockScreenState);
  }
}

- (int64_t)_lock_resolvedLockScreenState
{
  _lock_overridingLockScreenState = [(HDSPSleepLockScreenManager *)self _lock_overridingLockScreenState];
  v4 = 8;
  if (_lock_overridingLockScreenState)
  {
    v4 = 16;
  }

  return *(&self->super.isa + v4);
}

- (void)sensitiveUIStateChanged
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__HDSPSleepLockScreenManager_sensitiveUIStateChanged__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v2];
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
  v6[2] = __60__HDSPSleepLockScreenManager_significantTimeChangeDetected___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v6];
}

void __60__HDSPSleepLockScreenManager_significantTimeChangeDetected___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 updateState];
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
  v6[2] = __53__HDSPSleepLockScreenManager_timeZoneChangeDetected___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v6];
}

void __53__HDSPSleepLockScreenManager_timeZoneChangeDetected___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 updateState];
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

- (int64_t)sleepMode
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepModeManager = [WeakRetained sleepModeManager];
  sleepMode = [sleepModeManager sleepMode];

  return sleepMode;
}

- (BOOL)inUnscheduledSleepMode
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepModeManager = [WeakRetained sleepModeManager];
  inUnscheduledSleepMode = [sleepModeManager inUnscheduledSleepMode];

  return inUnscheduledSleepMode;
}

- (int64_t)currentLockScreenState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HDSPSleepLockScreenManager_currentLockScreenState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepLockScreenManager *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__52__HDSPSleepLockScreenManager_currentLockScreenState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_resolvedLockScreenState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)overrideLockScreenState:(int64_t)state userInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepLockScreenState();
    *buf = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] overriding lock screen state: %@ (userInfo: %@)", buf, 0x20u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HDSPSleepLockScreenManager_overrideLockScreenState_userInfo___block_invoke;
  v12[3] = &unk_279C7B6A0;
  v13 = infoCopy;
  stateCopy = state;
  v12[4] = self;
  v11 = infoCopy;
  [(HDSPSleepLockScreenManager *)self _withLock:v12];
}

uint64_t __63__HDSPSleepLockScreenManager_overrideLockScreenState_userInfo___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 48);
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);

  return [v5 _lock_updateLockScreenAssertion];
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
  v10[2] = __46__HDSPSleepLockScreenManager_sleepEventIsDue___block_invoke;
  v10[3] = &unk_279C7B2D0;
  v10[4] = self;
  v11 = dueCopy;
  v9 = dueCopy;
  [(HDSPSleepLockScreenManager *)self _withLock:v10];
}

void __46__HDSPSleepLockScreenManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [*(a1 + 40) identifier];
  [v3 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0DF8 != -1)
  {
    dispatch_once(&qword_2814C0DF8, block);
  }

  return _MergedGlobals_10;
}

void __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke_296;
  v4[3] = &unk_279C7B678;
  v4[4] = v1;
  v4[5] = &v5;
  [v1 _withLock:v4];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v6[5]];
  v3 = _MergedGlobals_10;
  _MergedGlobals_10 = v2;

  _Block_object_dispose(&v5, 8);
}

void __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke_296(uint64_t a1)
{
  v5 = [*(a1 + 32) stateMachine];
  v2 = [v5 scheduledExpirationStateIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
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
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = MEMORY[0x277CBEBF8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HDSPSleepLockScreenManager_upcomingEventsDueAfterDate___block_invoke;
  v12[3] = &unk_279C7B6C8;
  v12[4] = self;
  v5 = dateCopy;
  v13 = v5;
  v14 = &v15;
  [(HDSPSleepLockScreenManager *)self _withLock:v12];
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

void __57__HDSPSleepLockScreenManager_upcomingEventsDueAfterDate___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stateMachine];
  v3 = [v2 currentStateExpirationDate];

  if ([v3 hksp_isAfterDate:*(a1 + 40)])
  {
    v4 = MEMORY[0x277D624D0];
    v5 = [*(a1 + 32) stateMachine];
    v6 = [v5 currentStateIdentifier];
    v7 = [v4 sleepEventWithIdentifier:v6 dueDate:v3];

    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)lockScreenDidConnect
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__HDSPSleepLockScreenManager_lockScreenDidConnect__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v2];
}

- (id)_currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HDSPSleepLockScreenManager__currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepLockScreenManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __43__HDSPSleepLockScreenManager__currentState__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 56) currentState];

  return MEMORY[0x2821F96F8]();
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  _currentState = [(HDSPSleepLockScreenManager *)self _currentState];
  v4 = [v2 stringWithFormat:@"Current State: %@", _currentState];

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