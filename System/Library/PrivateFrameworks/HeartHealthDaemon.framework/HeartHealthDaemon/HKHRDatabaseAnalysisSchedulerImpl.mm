@interface HKHRDatabaseAnalysisSchedulerImpl
- (BOOL)_enterStateIfPossible:(unint64_t)possible;
- (HKHRDatabaseAnalysisSchedulerDelegate)delegate;
- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager;
- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager gatedActivityFactory:(id)factory persistentStateDefaults:(id)self0 operation:(id)self1;
- (id)_activityCompletion;
- (id)_gatedActivity;
- (void)_maybeRetryLater;
- (void)_requestGatedActivityRunWithDelay:(double)delay;
- (void)_resetRetryCounter;
- (void)_runActivity:(id)activity withCompletion:(id)completion;
- (void)_setActivityCompletion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)forceAnalysis;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)scheduleAnalysis;
@end

@implementation HKHRDatabaseAnalysisSchedulerImpl

- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager
{
  managerCopy = manager;
  categoryCopy = category;
  identifierCopy = identifier;
  profileCopy = profile;
  v18 = [[HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl alloc] initWithIdentifier:identifierCopy loggingCategory:categoryCopy];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [objc_alloc(MEMORY[0x277D10800]) initWithProfile:profileCopy debugIdentifier:@"HKHRDatabaseAnalysisSchedulerOperation" delegate:self];
  v21 = [(HKHRDatabaseAnalysisSchedulerImpl *)self initWithProfile:profileCopy identifier:identifierCopy loggingCategory:categoryCopy maximumDelay:managerCopy retryDelay:v18 breadcrumbManager:standardUserDefaults gatedActivityFactory:delay persistentStateDefaults:retryDelay operation:v20];

  return v21;
}

- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager gatedActivityFactory:(id)factory persistentStateDefaults:(id)self0 operation:(id)self1
{
  profileCopy = profile;
  identifierCopy = identifier;
  categoryCopy = category;
  managerCopy = manager;
  factoryCopy = factory;
  defaultsCopy = defaults;
  operationCopy = operation;
  v33.receiver = self;
  v33.super_class = HKHRDatabaseAnalysisSchedulerImpl;
  v23 = [(HKHRDatabaseAnalysisSchedulerImpl *)&v33 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_profile, profileCopy);
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    objc_storeStrong(&v24->_loggingCategory, category);
    v24->_maximumDelay = delay;
    v24->_retryDelay = retryDelay;
    objc_storeStrong(&v24->_breadcrumbManager, manager);
    objc_storeStrong(&v24->_gatedActivityFactory, factory);
    v24->_lock._os_unfair_lock_opaque = 0;
    v24->_state = 0;
    objc_storeStrong(&v24->_persistentStateDefaults, defaults);
    objc_storeStrong(&v24->_operation, operation);
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v24 queue:0];
  }

  return v24;
}

- (void)scheduleAnalysis
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138543618;
    selfCopy = self;
    v7 = 2114;
    v8 = identifier;
    _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Told to schedule analysis", &v5, 0x16u);
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _requestGatedActivityRunWithDelay:self->_maximumDelay];
}

- (void)forceAnalysis
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifier;
    _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Told to force analysis", buf, 0x16u);
  }

  _gatedActivity = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HKHRDatabaseAnalysisSchedulerImpl_forceAnalysis__block_invoke;
  v6[3] = &unk_27865FFB8;
  v6[4] = self;
  [_gatedActivity runUngatedWithCompletion:v6];
}

void __50__HKHRDatabaseAnalysisSchedulerImpl_forceAnalysis__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9 = 138544130;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2050;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity completed with result %{public}ld and error %{public}@", &v9, 0x2Au);
  }
}

- (id)_gatedActivity
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_gatedActivity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setActivityCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x22AACDB50](completionCopy);

  lock_activityCompletion = self->_lock_activityCompletion;
  self->_lock_activityCompletion = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_activityCompletion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x22AACDB50](self->_lock_activityCompletion);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x22AACDB50](v3);

  return v4;
}

- (void)daemonReady:(id)ready
{
  v16 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = identifier;
    _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Daemon ready", buf, 0x16u);
  }

  if ([(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1])
  {
    os_unfair_lock_lock(&self->_lock);
    objc_initWeak(buf, self);
    gatedActivityFactory = self->_gatedActivityFactory;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__HKHRDatabaseAnalysisSchedulerImpl_daemonReady___block_invoke;
    v10[3] = &unk_27865FFE0;
    objc_copyWeak(&v11, buf);
    v8 = [(HKHRDatabaseAnalysisSchedulerGatedActivityFactory *)gatedActivityFactory makeGatedActivityWithHandler:v10];
    lock_gatedActivity = self->_lock_gatedActivity;
    self->_lock_gatedActivity = v8;

    os_unfair_lock_unlock(&self->_lock);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_FAULT))
    {
      [HKHRDatabaseAnalysisSchedulerImpl daemonReady:];
    }
  }
}

void __49__HKHRDatabaseAnalysisSchedulerImpl_daemonReady___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runActivity:v7 withCompletion:v6];
}

- (void)_requestGatedActivityRunWithDelay:(double)delay
{
  _gatedActivity = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HKHRDatabaseAnalysisSchedulerImpl__requestGatedActivityRunWithDelay___block_invoke;
  v6[3] = &unk_278660008;
  v6[4] = self;
  *&v6[5] = delay;
  [_gatedActivity requestRunWithMaximumDelay:v6 completion:delay];
}

void __71__HKHRDatabaseAnalysisSchedulerImpl__requestGatedActivityRunWithDelay___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v7 + 16);
    v10 = 138544386;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2050;
    v15 = v8;
    v16 = 2050;
    v17 = a2;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity (with %{public}f delay) completed with result %{public}ld and error %{public}@", &v10, 0x34u);
  }
}

- (void)_maybeRetryLater
{
  v22 = *MEMORY[0x277D85DE8];
  retryCountKey = [(HKHRDatabaseAnalysisSchedulerImpl *)self retryCountKey];
  v4 = [(NSUserDefaults *)self->_persistentStateDefaults hk_keyExists:retryCountKey];
  persistentStateDefaults = self->_persistentStateDefaults;
  if (v4)
  {
    v6 = [(NSUserDefaults *)persistentStateDefaults integerForKey:retryCountKey];
    v7 = v6 + 1;
    [(NSUserDefaults *)self->_persistentStateDefaults setInteger:v6 + 1 forKey:retryCountKey];
    if (v6 >= 4)
    {
      [(NSUserDefaults *)self->_persistentStateDefaults removeObjectForKey:retryCountKey];
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        v14 = 138543874;
        selfCopy2 = self;
        v16 = 2114;
        v17 = identifier;
        v18 = 2050;
        v19 = 4;
        _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Reached maximum number of retries (%{public}ld), giving up", &v14, 0x20u);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 1;
    [(NSUserDefaults *)persistentStateDefaults setInteger:1 forKey:retryCountKey];
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _retryDelayGivenRetryCount:v7];
  v11 = v10;
  _HKInitializeLogging();
  v12 = self->_loggingCategory;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_identifier;
    v14 = 138544130;
    selfCopy2 = self;
    v16 = 2114;
    v17 = v13;
    v18 = 2050;
    v19 = v7;
    v20 = 2050;
    v21 = v11;
    _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Retry attempt %{public}ld, retrying in %{public}f seconds", &v14, 0x2Au);
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _retryDelayGivenRetryCount:v7];
  [(HKHRDatabaseAnalysisSchedulerImpl *)self _requestGatedActivityRunWithDelay:?];
LABEL_9:
}

- (BOOL)_enterStateIfPossible:(unint64_t)possible
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  v6 = state - 1;
  if (state > 1)
  {
    if (state != 2)
    {
      if (state == 3 && possible != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    if (((possible - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
    {
      if (v6 > 2)
      {
        v17 = @"WaitingForDaemonReady";
      }

      else
      {
        v17 = off_278660050[v6];
      }

      identifier = self->_identifier;
      if (possible - 1 > 2)
      {
        v19 = @"WaitingForDaemonReady";
      }

      else
      {
        v19 = off_278660050[possible - 1];
      }

      v21 = 138544130;
      selfCopy2 = self;
      v23 = 2114;
      v24 = identifier;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v19;
      v20 = loggingCategory;
      _os_log_error_impl(&dword_229486000, v20, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Invalid attempt to change state from %{public}@ to %{public}@", &v21, 0x2Au);
    }

    v12 = 0;
    goto LABEL_28;
  }

  if (!state)
  {
    if (possible == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (state == 1 && possible != 2)
  {
    goto LABEL_20;
  }

LABEL_14:
  _HKInitializeLogging();
  v9 = self->_loggingCategory;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 > 2)
    {
      v10 = @"WaitingForDaemonReady";
    }

    else
    {
      v10 = off_278660050[v6];
    }

    v13 = self->_identifier;
    if (possible - 1 > 2)
    {
      v14 = @"WaitingForDaemonReady";
    }

    else
    {
      v14 = off_278660050[possible - 1];
    }

    v21 = 138544130;
    selfCopy2 = self;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v14;
    v15 = v9;
    _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] State will change from %{public}@ to %{public}@", &v21, 0x2Au);
  }

  self->_state = possible;
  v12 = 1;
LABEL_28:
  os_unfair_lock_unlock(&self->_lock);
  return v12;
}

- (void)_resetRetryCounter
{
  persistentStateDefaults = self->_persistentStateDefaults;
  retryCountKey = [(HKHRDatabaseAnalysisSchedulerImpl *)self retryCountKey];
  [(NSUserDefaults *)persistentStateDefaults removeObjectForKey:retryCountKey];
}

- (void)_runActivity:(id)activity withCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  breadcrumbManager = self->_breadcrumbManager;
  activityCopy = activity;
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropBreadcrumb:1];
  LODWORD(breadcrumbManager) = [activityCopy shouldDefer];

  if (breadcrumbManager)
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = identifier;
      _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but immediately deferred, deferring", buf, 0x16u);
    }

    [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"XPC activity deferred before maintenance"];
    completionCopy[2](completionCopy, 2, 0);
  }

  else if ([(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:2])
  {
    [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:completionCopy];
    operation = self->_operation;
    v14 = 0;
    v12 = [(HDProtectedDataOperation *)operation requestWorkWithPriority:2 error:&v14];
    v13 = v14;
    if ((v12 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_ERROR))
      {
        [HKHRDatabaseAnalysisSchedulerImpl _runActivity:withCompletion:];
      }

      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
      (completionCopy)[2](completionCopy, 1, v13);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_FAULT))
    {
      [HKHRDatabaseAnalysisSchedulerImpl _runActivity:withCompletion:];
    }

    [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Unable to transition to waiting for maintenance operation"];
    completionCopy[2](completionCopy, 1, 0);
    [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
  }
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  completionCopy = completion;
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropBreadcrumb:2];
  _activityCompletion = [(HKHRDatabaseAnalysisSchedulerImpl *)self _activityCompletion];

  if (_activityCompletion)
  {
    _activityCompletion2 = [(HKHRDatabaseAnalysisSchedulerImpl *)self _activityCompletion];
    _gatedActivity = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
    shouldDefer = [_gatedActivity shouldDefer];

    if (shouldDefer)
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        *buf = 138543618;
        selfCopy4 = self;
        v30 = 2114;
        v31 = identifier;
        _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but deferred after maintenance operation, deferring", buf, 0x16u);
      }

      [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"XPC activity deferred after maintenance"];
      _activityCompletion2[2](_activityCompletion2, 2, 0);
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
    }

    else
    {
      if (assertionCopy)
      {
        if ([assertionCopy state] == 3)
        {
          _HKInitializeLogging();
          v18 = self->_loggingCategory;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = self->_identifier;
            *buf = 138543618;
            selfCopy4 = self;
            v30 = 2114;
            v31 = v19;
            _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but assertion invalidated, attempting retry later", buf, 0x16u);
          }

          [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
          breadcrumbManager = self->_breadcrumbManager;
          v21 = @"Assertion expired after maintenance";
        }

        else
        {
          if ([(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:3])
          {
            WeakRetained = objc_loadWeakRetained(&self->delegate);
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __111__HKHRDatabaseAnalysisSchedulerImpl_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke;
            v25[3] = &unk_278660030;
            v25[4] = self;
            v26 = _activityCompletion2;
            v27 = completionCopy;
            [WeakRetained analysisSchedulerDidFire:self completion:v25];

LABEL_24:
            goto LABEL_25;
          }

          _HKInitializeLogging();
          if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_FAULT))
          {
            [HKHRDatabaseAnalysisSchedulerImpl performWorkForOperation:profile:databaseAccessibilityAssertion:completion:];
          }

          [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
          breadcrumbManager = self->_breadcrumbManager;
          v21 = @"Unable to transition to waiting for activity";
        }
      }

      else
      {
        _HKInitializeLogging();
        v22 = self->_loggingCategory;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->_identifier;
          *buf = 138543618;
          selfCopy4 = self;
          v30 = 2114;
          v31 = v23;
          _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but assertion returned nil, attempting retry later", buf, 0x16u);
        }

        [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
        breadcrumbManager = self->_breadcrumbManager;
        v21 = @"Unable to take assertion after maintenance";
      }

      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropAnalysisResultBreadcrumbWithContext:v21];
      _activityCompletion2[2](_activityCompletion2, 1, 0);
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
    }

    completionCopy[2](completionCopy);
    goto LABEL_24;
  }

  _HKInitializeLogging();
  v16 = self->_loggingCategory;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_identifier;
    *buf = 138543618;
    selfCopy4 = self;
    v30 = 2114;
    v31 = v17;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity closure missing, attempting retry later", buf, 0x16u);
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Activity closure found nil. Fail to return activity result state"];
  [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
  completionCopy[2](completionCopy);
LABEL_25:
}

uint64_t __111__HKHRDatabaseAnalysisSchedulerImpl_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _enterStateIfPossible:1];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      (*(*(a1 + 40) + 16))();
      [*(*(a1 + 32) + 48) dropBreadcrumb:6];
      [*(a1 + 32) _maybeRetryLater];
      goto LABEL_7;
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) _resetRetryCounter];
  (*(*(a1 + 40) + 16))();
LABEL_7:
  [*(a1 + 32) _setActivityCompletion:0];
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (HKHRDatabaseAnalysisSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)daemonReady:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_229486000, v0, v1, "[%{public}@:%{public}@] Unable to transition to waiting for activity.", v2, v3, v4, v5);
}

- (void)_runActivity:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_229486000, v0, v1, "[%{public}@:%{public}@] Unable to transition to waiting for maintenance operation state, attempting retry later", v2, v3, v4, v5);
}

- (void)_runActivity:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_229486000, v2, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Unable to request work with error: %{public}@.", v3, 0x20u);
}

- (void)performWorkForOperation:profile:databaseAccessibilityAssertion:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_229486000, v0, v1, "[%{public}@:%{public}@] Unable to transition to triggered state, attempting retry later", v2, v3, v4, v5);
}

@end