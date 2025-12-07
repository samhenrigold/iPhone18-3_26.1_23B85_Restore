@interface HDSPSleepScheduleStateCoordinator
- (BOOL)_updateEventRecordHelper:(id)helper sleepScheduleState:(unint64_t)state context:(id)context;
- (BOOL)isAppleWatch;
- (BOOL)sleepFeaturesEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepScheduleStateCoordinator)initWithEnvironment:(id)environment;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepScheduleOccurrence)previousOccurrence;
- (NSDate)currentDate;
- (NSString)sourceIdentifier;
- (id)currentState;
- (id)diagnosticDescription;
- (id)diagnosticInfo;
- (unint64_t)currentSleepScheduleState;
- (void)_updateEventRecordForSleepScheduleState:(unint64_t)state context:(id)context notifyBlock:(id)block;
- (void)_updateSleepScheduleState;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepEventIsDue:(id)due;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state context:(id)context;
- (void)snoozeFireDateShouldBeReset;
- (void)timeZoneChangeDetected:(id)detected;
- (void)wakeUpAlarmWasDismissedFromSource:(unint64_t)source;
- (void)wakeUpWasConfirmed:(BOOL)confirmed;
@end

@implementation HDSPSleepScheduleStateCoordinator

- (HDSPSleepScheduleStateCoordinator)initWithEnvironment:(id)environment
{
  v32 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v27.receiver = self;
  v27.super_class = HDSPSleepScheduleStateCoordinator;
  v5 = [(HDSPSleepScheduleStateCoordinator *)&v27 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v29 = v7;
      v30 = 2048;
      v31 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v5->_environment, environmentCopy);
    v9 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v11 = [v9 initWithCallbackScheduler:defaultCallbackScheduler];
    observers = v5->_observers;
    v5->_observers = v11;

    mutexGenerator = [environmentCopy mutexGenerator];
    v14 = mutexGenerator[2]();
    mutexProvider = v5->_mutexProvider;
    v5->_mutexProvider = v14;

    v16 = [HDSPSleepScheduleStateCoordinatorStateMachine alloc];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = objc_alloc(MEMORY[0x277D62558]);
    userDefaults = [environmentCopy userDefaults];
    v21 = [v19 initWithUserDefaults:userDefaults];
    currentDateProvider = [environmentCopy currentDateProvider];
    v23 = [(HDSPSleepScheduleStateCoordinatorStateMachine *)v16 initWithIdentifier:v18 persistence:v21 delegate:v5 infoProvider:v5 currentDateProvider:currentDateProvider];
    stateMachine = v5->_stateMachine;
    v5->_stateMachine = v23;

    v25 = v5;
  }

  return v5;
}

- (void)_updateSleepScheduleState
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _updateSleepScheduleState", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HDSPSleepScheduleStateCoordinator__updateSleepScheduleState__block_invoke;
  v5[3] = &unk_279C7B108;
  v5[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v5];
}

- (void)environmentWillBecomeReady:(id)ready
{
  v14 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v12, 0xCu);
  }

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  actionManager = [readyCopy actionManager];
  [actionManager addObserver:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  diagnostics = [readyCopy diagnostics];

  [diagnostics addProvider:self];
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
  v6[2] = __63__HDSPSleepScheduleStateCoordinator_environmentDidBecomeReady___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v6];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  environment = [(HDSPSleepScheduleStateCoordinator *)self environment];
  currentContext = [environment currentContext];

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v19 = v12;
    v13 = NSStringFromHKSPSleepScheduleState();
    v14 = NSStringFromHKSPSleepScheduleState();
    [contextCopy reason];
    v15 = NSStringFromHKSPSleepScheduleStateChangeReason();
    *buf = 138544130;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying observers for sleepScheduleStateDidChange from %{public}@ to %{public}@ with reason %{public}@", buf, 0x2Au);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke;
  v20[3] = &unk_279C7CA78;
  changeCopy = change;
  stateCopy = state;
  v20[4] = self;
  v21 = contextCopy;
  v22 = currentContext;
  v16 = currentContext;
  v17 = contextCopy;
  v18 = MEMORY[0x26D64B6C0](v20);
  [(HDSPSleepScheduleStateCoordinator *)self _updateEventRecordForSleepScheduleState:change context:v17 notifyBlock:v18];
}

id __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_2;
  v7[3] = &unk_279C7CA50;
  v7[4] = v3;
  v10 = *(a1 + 56);
  v8 = v2;
  v9 = *(a1 + 48);
  v5 = [v4 enumerateObserversWithFutureBlock:v7];

  return v5;
}

id __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_3;
  v12 = &unk_279C7CA28;
  v13 = v3;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v3;
  [v4 perform:&v9 withContext:v5];

  v7 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v7;
}

uint64_t __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) reason];

  return [v3 sleepScheduleStateDidChange:v1 previousState:v2 reason:v4];
}

- (void)_updateEventRecordForSleepScheduleState:(unint64_t)state context:(id)context notifyBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  sleepScheduleModel = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  sleepEventRecord = [sleepScheduleModel sleepEventRecord];
  v12 = [sleepEventRecord mutableCopy];

  LODWORD(state) = [(HDSPSleepScheduleStateCoordinator *)self _updateEventRecordHelper:v12 sleepScheduleState:state context:contextCopy];
  if (state)
  {
    environment = [(HDSPSleepScheduleStateCoordinator *)self environment];
    sleepScheduleModelManager = [environment sleepScheduleModelManager];

    environment2 = [(HDSPSleepScheduleStateCoordinator *)self environment];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__HDSPSleepScheduleStateCoordinator__updateEventRecordForSleepScheduleState_context_notifyBlock___block_invoke;
    v18[3] = &unk_279C7CAA0;
    v19 = sleepScheduleModelManager;
    v20 = v12;
    selfCopy = self;
    v22 = blockCopy;
    v16 = sleepScheduleModelManager;
    [environment2 perform:v18 withSource:self];
  }

  else
  {
    v17 = blockCopy[2](blockCopy);
  }
}

void __97__HDSPSleepScheduleStateCoordinator__updateEventRecordForSleepScheduleState_context_notifyBlock___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 saveSleepEventRecord:v3 error:&v9 preNotifyBlock:a1[7]];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      v8 = v7;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }
}

- (BOOL)_updateEventRecordHelper:(id)helper sleepScheduleState:(unint64_t)state context:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  if (state == 1 && [context isForAlarmTurnedOffWhileFiring])
  {
    currentDate = [(HDSPSleepScheduleStateCoordinator *)self currentDate];
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = currentDate;
      v11 = v15;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting wakeUpAlarmDismissedDate to %{public}@", &v14, 0x16u);
    }

    [helperCopy setWakeUpAlarmDismissedDate:currentDate];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)snoozeFireDateShouldBeReset
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = objc_opt_class();
    v4 = v19;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] snoozeFireDateShouldBeReset", buf, 0xCu);
  }

  sleepScheduleModel = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  sleepEventRecord = [sleepScheduleModel sleepEventRecord];
  v7 = [sleepEventRecord mutableCopy];

  [v7 setWakeUpAlarmSnoozedUntilDate:0];
  environment = [(HDSPSleepScheduleStateCoordinator *)self environment];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __64__HDSPSleepScheduleStateCoordinator_snoozeFireDateShouldBeReset__block_invoke;
  v15 = &unk_279C7B2D0;
  selfCopy = self;
  v17 = v7;
  v9 = v7;
  [environment perform:&v12 withSource:self];

  v10 = [(HDSPSleepScheduleStateCoordinator *)self environment:v12];
  sleepAlarmManager = [v10 sleepAlarmManager];
  [sleepAlarmManager resetSleepAlarmSnoozeState];
}

void __64__HDSPSleepScheduleStateCoordinator_snoozeFireDateShouldBeReset__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) environment];
  v3 = [v2 sleepScheduleModelManager];
  v4 = *(a1 + 40);
  v10 = 0;
  v5 = [v3 saveSleepEventRecord:v4 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      *buf = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      v9 = v8;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }
}

- (unint64_t)currentSleepScheduleState
{
  currentState = [(HDSPSleepScheduleStateCoordinator *)self currentState];
  scheduleState = [currentState scheduleState];

  return scheduleState;
}

- (BOOL)isAppleWatch
{
  environment = [(HDSPSleepScheduleStateCoordinator *)self environment];
  behavior = [environment behavior];
  isAppleWatch = [behavior isAppleWatch];

  return isAppleWatch;
}

- (BOOL)sleepFeaturesEnabled
{
  sleepScheduleModel = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  sleepSettings = [sleepScheduleModel sleepSettings];
  watchSleepFeaturesEnabled = [sleepSettings watchSleepFeaturesEnabled];

  return watchSleepFeaturesEnabled;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  environment = [(HDSPSleepScheduleStateCoordinator *)self environment];
  sleepScheduleModelManager = [environment sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  return sleepScheduleModel;
}

- (NSDate)currentDate
{
  environment = [(HDSPSleepScheduleStateCoordinator *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v4 = currentDateProvider[2]();

  return v4;
}

- (HKSPSleepScheduleOccurrence)previousOccurrence
{
  sleepScheduleModel = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  currentDate = [(HDSPSleepScheduleStateCoordinator *)self currentDate];
  v5 = [sleepScheduleModel previousOccurrenceBeforeDate:currentDate];

  return v5;
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v17 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = modelCopy;
    v7 = v14;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", buf, 0x16u);
  }

  environment = [(HDSPSleepScheduleStateCoordinator *)self environment];
  currentContext = [environment currentContext];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HDSPSleepScheduleStateCoordinator_sleepScheduleModelManager_didUpdateSleepScheduleModel___block_invoke;
  v11[3] = &unk_279C7B2D0;
  v11[4] = self;
  v12 = currentContext;
  v10 = currentContext;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v11];
}

void __91__HDSPSleepScheduleStateCoordinator_sleepScheduleModelManager_didUpdateSleepScheduleModel___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) changeEvaluation];
  [v1 scheduleModelChanged:v2];
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
  v6[2] = __67__HDSPSleepScheduleStateCoordinator_significantTimeChangeDetected___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v6];
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
  v6[2] = __60__HDSPSleepScheduleStateCoordinator_timeZoneChangeDetected___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v6];
}

- (void)sleepEventIsDue:(id)due
{
  v31 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = objc_opt_class();
    v29 = 2114;
    v30 = dueCopy;
    v6 = v28;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepEventIsDue: %{public}@", buf, 0x16u);
  }

  identifier = [dueCopy identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x277D621E0]];

  if (v8)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543362;
      v28 = v10;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeTimeReached", buf, 0xCu);
    }

    v12 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v13 = __53__HDSPSleepScheduleStateCoordinator_sleepEventIsDue___block_invoke;
LABEL_15:
    v12[2] = v13;
    v12[3] = &unk_279C7B108;
    v12[4] = self;
    [(HDSPSleepScheduleStateCoordinator *)self _withLock:?];
    goto LABEL_16;
  }

  identifier2 = [dueCopy identifier];
  v15 = [identifier2 isEqualToString:*MEMORY[0x277D621B8]];

  if (v15)
  {
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543362;
      v28 = v17;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] bedtimeReached", buf, 0xCu);
    }

    v12 = v25;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v13 = __53__HDSPSleepScheduleStateCoordinator_sleepEventIsDue___block_invoke_298;
    goto LABEL_15;
  }

  identifier3 = [dueCopy identifier];
  v20 = [identifier3 isEqualToString:*MEMORY[0x277D621F0]];

  if (v20)
  {
    v21 = HKSPLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138543362;
      v28 = v22;
      v23 = v22;
      _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] windDownReached", buf, 0xCu);
    }

    v12 = v24;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v13 = __53__HDSPSleepScheduleStateCoordinator_sleepEventIsDue___block_invoke_299;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)wakeUpWasConfirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  v13 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = confirmedCopy;
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeUpWasConfirmed (wasExplicitConfirmation: %d)", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDSPSleepScheduleStateCoordinator_wakeUpWasConfirmed___block_invoke;
  v7[3] = &unk_279C7CAC8;
  v7[4] = self;
  v8 = confirmedCopy;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v7];
}

- (void)wakeUpAlarmWasDismissedFromSource:(unint64_t)source
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeUpAlarmWasDismissed", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDSPSleepScheduleStateCoordinator_wakeUpAlarmWasDismissedFromSource___block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v6];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepScheduleStateCoordinator_currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __49__HDSPSleepScheduleStateCoordinator_currentState__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 24) currentState];

  return MEMORY[0x2821F96F8]();
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  currentState = [(HDSPSleepScheduleStateCoordinator *)self currentState];
  v4 = [v2 stringWithFormat:@"Current State: %@", currentState];

  return v4;
}

- (id)diagnosticInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Current State";
  currentState = [(HDSPSleepScheduleStateCoordinator *)self currentState];
  stateName = [currentState stateName];
  v7[0] = stateName;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end