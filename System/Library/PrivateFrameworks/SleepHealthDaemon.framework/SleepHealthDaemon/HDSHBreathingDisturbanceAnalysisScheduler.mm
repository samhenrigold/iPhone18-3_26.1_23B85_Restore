@interface HDSHBreathingDisturbanceAnalysisScheduler
- (BOOL)_areNotificationsEnabled;
- (BOOL)_isFeatureOnboardedWithFeatureOnboardingRecord:(id)record;
- (BOOL)_writeDateOfMostRecentSuccessfulAnalysisAttempt;
- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider;
- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider protectedDataOperation:(id)operation profileDidBecomeReadyBlock:(id)block;
- (id)_getEarliestOnboardingDate;
- (void)_requestBreathingDisturbanceAnalysisIfNeeded;
- (void)_runCompletionIfExistsWithResult:(int64_t)result retryInterval:(double)interval shouldUpdateActivityCriteria:(BOOL)criteria;
- (void)_updateActivityCriteriaAndResetActivity;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)overrideAnalysisTimeIntervalAndResetActivityWithTimeInterval:(double)interval;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDSHBreathingDisturbanceAnalysisScheduler

- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider
{
  v10 = MEMORY[0x277D10800];
  dateProviderCopy = dateProvider;
  providingCopy = providing;
  providerCopy = provider;
  profileCopy = profile;
  v15 = [[v10 alloc] initWithProfile:profileCopy debugIdentifier:@"BreathingDisturbanceAnalysisProtectedDataOperation" delegate:self];
  v16 = [(HDSHBreathingDisturbanceAnalysisScheduler *)self initWithProfile:profileCopy featureStatusProvider:providerCopy featureAvailabilityProviding:providingCopy currentDateProvider:dateProviderCopy protectedDataOperation:v15 profileDidBecomeReadyBlock:0];

  return v16;
}

- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider protectedDataOperation:(id)operation profileDidBecomeReadyBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  providerCopy = provider;
  providingCopy = providing;
  dateProviderCopy = dateProvider;
  operationCopy = operation;
  blockCopy = block;
  v42.receiver = self;
  v42.super_class = HDSHBreathingDisturbanceAnalysisScheduler;
  v19 = [(HDSHBreathingDisturbanceAnalysisScheduler *)&v42 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_profile, profileCopy);
    objc_storeStrong(&v20->_featureStatusProvider, provider);
    v21 = objc_alloc(MEMORY[0x277D10718]);
    v22 = [v21 initWithCategory:102 domainName:*MEMORY[0x277D62650] profile:{profileCopy, providerCopy}];
    keyValueDomain = v20->_keyValueDomain;
    v20->_keyValueDomain = v22;

    v24 = [dateProviderCopy copy];
    currentDateProvider = v20->_currentDateProvider;
    v20->_currentDateProvider = v24;

    v20->_analysisTimeInterval = *MEMORY[0x277D86298];
    v26 = HKCreateSerialUtilityDispatchQueue();
    queue = v20->_queue;
    v20->_queue = v26;

    objc_storeStrong(&v20->_featureAvailabilityProviding, providing);
    [(HKFeatureAvailabilityProviding *)v20->_featureAvailabilityProviding registerObserver:v20 queue:v20->_queue];
    v20->_useTimeIntervalOverride = 0;
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    cachedCalendar = v20->_cachedCalendar;
    v20->_cachedCalendar = hk_gregorianCalendar;

    v30 = [blockCopy copy];
    unitTesting_profileDidBecomeReadyBlock = v20->_unitTesting_profileDidBecomeReadyBlock;
    v20->_unitTesting_profileDidBecomeReadyBlock = v30;

    WeakRetained = objc_loadWeakRetained(&v20->_profile);
    [WeakRetained registerProfileReadyObserver:v20 queue:0];

    v20->_periodicActivityCompletionLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_protectedDataOperation, operation);
    protectedDataOperation = v20->_protectedDataOperation;
    v41 = 0;
    LOBYTE(WeakRetained) = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v41];
    v34 = v41;
    if ((WeakRetained & 1) == 0)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
      {
        v37 = v35;
        v38 = objc_opt_class();
        *buf = 138543618;
        v44 = v38;
        v45 = 2112;
        v46 = v34;
        v39 = v38;
        _os_log_error_impl(&dword_269C02000, v37, OS_LOG_TYPE_ERROR, "[%{public}@] Request was not processed with error: %@", buf, 0x16u);
      }
    }
  }

  return v20;
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  debugIdentifier = [operation debugIdentifier];
  v10 = [debugIdentifier isEqualToString:@"BreathingDisturbanceAnalysisProtectedDataOperation"];

  if (v10)
  {
    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _requestBreathingDisturbanceAnalysisIfNeeded];
    completionCopy[2](completionCopy);
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v14 = 138543362;
      v15 = objc_opt_class();
      v13 = v15;
      _os_log_impl(&dword_269C02000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unexpected operation received; not performing operation.", &v14, 0xCu);
    }
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  v4 = objc_alloc(MEMORY[0x277D107E8]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [v4 initWithProfile:WeakRetained name:@"com.apple.healthd.sleep.breathingdisturbanceanalysisactivity" interval:self delegate:*MEMORY[0x277CCC320] loggingCategory:self->_analysisTimeInterval];
  activity = self->_activity;
  self->_activity = v6;

  unitTesting_profileDidBecomeReadyBlock = self->_unitTesting_profileDidBecomeReadyBlock;
  if (unitTesting_profileDidBecomeReadyBlock)
  {
    v9 = *(unitTesting_profileDidBecomeReadyBlock + 2);

    v9();
  }
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v6 = *&v7[4];
    _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding record has updated. Recalculating activity criteria.", v7, 0xCu);
  }

  [(HDSHBreathingDisturbanceAnalysisScheduler *)self _updateActivityCriteriaAndResetActivity:*v7];
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  activityCopy = activity;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC320];
  v9 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543362;
    v36 = objc_opt_class();
    v11 = v36;
    _os_log_impl(&dword_269C02000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Periodic activity interval has been met.", buf, 0xCu);
  }

  name = [activityCopy name];

  os_unfair_lock_lock(&self->_periodicActivityCompletionLock);
  if (self->_periodicActivityCompletion)
  {
    _HKInitializeLogging();
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
    {
      v25 = v13;
      v26 = objc_opt_class();
      *buf = 138543362;
      v36 = v26;
      v27 = v26;
      _os_log_fault_impl(&dword_269C02000, v25, OS_LOG_TYPE_FAULT, "[%{public}@] performPeriodicActivity called, but we already have a completion from a previous call; overwriting with a new one.", buf, 0xCu);
    }
  }

  v14 = [completionCopy copy];
  periodicActivityCompletion = self->_periodicActivityCompletion;
  self->_periodicActivityCompletion = v14;

  os_unfair_lock_unlock(&self->_periodicActivityCompletionLock);
  if ([name isEqualToString:@"com.apple.healthd.sleep.breathingdisturbanceanalysisactivity"])
  {
    protectedDataOperation = self->_protectedDataOperation;
    v34 = 0;
    v17 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v34];
    v18 = v34;
    _HKInitializeLogging();
    v19 = *v8;
    v20 = *v8;
    if (v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v19;
        v22 = objc_opt_class();
        *buf = 138543362;
        v36 = v22;
        v23 = v22;
        _os_log_impl(&dword_269C02000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request was processed, completion will be called when request is complete.", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v31 = v19;
        v32 = objc_opt_class();
        *buf = 138543618;
        v36 = v32;
        v37 = 2112;
        v38 = v18;
        v33 = v32;
        _os_log_error_impl(&dword_269C02000, v31, OS_LOG_TYPE_ERROR, "[%{public}@] Request was not processed with error: %@\nWill try analysis again in a day.", buf, 0x16u);
      }

      [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:2 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
    }
  }

  else
  {
    _HKInitializeLogging();
    v24 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v28 = v24;
      v29 = objc_opt_class();
      *buf = 138543362;
      v36 = v29;
      v30 = v29;
      _os_log_error_impl(&dword_269C02000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected activity received; not performing activity.", buf, 0xCu);
    }

    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:1 retryInterval:0 shouldUpdateActivityCriteria:0.0];
  }
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v22 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  name = [activity name];
  if ([name isEqualToString:@"com.apple.healthd.sleep.breathingdisturbanceanalysisactivity"])
  {
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86360], 1);
    if (self->_useTimeIntervalOverride)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = objc_opt_class();
        analysisTimeInterval = self->_analysisTimeInterval;
        v18 = 138543618;
        v19 = v10;
        v20 = 2048;
        v21 = analysisTimeInterval;
        v12 = v10;
        _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using time interval override of %f.", &v18, 0x16u);
      }

      v13 = *MEMORY[0x277D86288];
      v14 = self->_analysisTimeInterval;
    }

    else
    {
      v13 = *MEMORY[0x277D86288];
      v14 = *MEMORY[0x277D86298];
    }

    xpc_dictionary_set_int64(criteriaCopy, v13, v14);
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v18 = 138543362;
      v19 = objc_opt_class();
      v17 = v19;
      _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unexpected activity received; not setting activity criteria.", &v18, 0xCu);
    }
  }
}

- (void)overrideAnalysisTimeIntervalAndResetActivityWithTimeInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    analysisTimeInterval = self->_analysisTimeInterval;
    *v10 = 138543874;
    *&v10[4] = v7;
    *&v10[12] = 2048;
    *&v10[14] = analysisTimeInterval;
    *&v10[22] = 2048;
    intervalCopy = interval;
    v9 = v7;
    _os_log_impl(&dword_269C02000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Overriding old time interval of %f with new time interval of %f.", v10, 0x20u);
  }

  self->_analysisTimeInterval = interval;
  self->_useTimeIntervalOverride = 1;
  [(HDSHBreathingDisturbanceAnalysisScheduler *)self _updateActivityCriteriaAndResetActivity:*v10];
}

- (void)_runCompletionIfExistsWithResult:(int64_t)result retryInterval:(double)interval shouldUpdateActivityCriteria:(BOOL)criteria
{
  criteriaCopy = criteria;
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_periodicActivityCompletionLock);
  v9 = [self->_periodicActivityCompletion copy];
  periodicActivityCompletion = self->_periodicActivityCompletion;
  self->_periodicActivityCompletion = 0;

  os_unfair_lock_unlock(&self->_periodicActivityCompletionLock);
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC320];
  v12 = os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v13 = v11;
      v14 = objc_opt_class();
      v15 = v14;
      v16 = HDStringFromPeriodicActivityResult();
      v19 = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      v23 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_269C02000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calling completion with task result: %@, retry interval %f", &v19, 0x20u);
    }

    v9[2](v9, result, 0, interval);
  }

  else if (v12)
  {
    v17 = v11;
    v19 = 138543362;
    v20 = objc_opt_class();
    v18 = v20;
    _os_log_impl(&dword_269C02000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] nil completion block; unless healthd has just launched, this is unexpected.", &v19, 0xCu);
  }

  if (criteriaCopy)
  {
    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _updateActivityCriteriaAndResetActivity];
  }
}

- (BOOL)_writeDateOfMostRecentSuccessfulAnalysisAttempt
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = (*(self->_currentDateProvider + 2))();
  keyValueDomain = self->_keyValueDomain;
  v5 = *MEMORY[0x277D62638];
  v15 = 0;
  v6 = [(HDKeyValueDomain *)keyValueDomain setDate:v3 forKey:v5 error:&v15];
  v7 = v15;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  v9 = *MEMORY[0x277CCC320];
  if ((v6 & 1) == 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    v10 = v8;
    v14 = objc_opt_class();
    *buf = 138543618;
    v17 = v14;
    v18 = 2112;
    v19 = v7;
    v12 = v14;
    _os_log_fault_impl(&dword_269C02000, v10, OS_LOG_TYPE_FAULT, "[%{public}@] Could not write date of last analysis attempt with error %@", buf, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
    v11 = objc_opt_class();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v3;
    v12 = v11;
    _os_log_impl(&dword_269C02000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Wrote date of last analysis attempt: %@", buf, 0x16u);
LABEL_4:
  }

LABEL_6:

  return v6;
}

- (BOOL)_areNotificationsEnabled
{
  v18 = *MEMORY[0x277D85DE8];
  featureStatusProvider = self->_featureStatusProvider;
  v13 = 0;
  v3 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v13];
  v4 = v13;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC320];
    areAllRequirementsSatisfied = 0;
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
      v8 = objc_opt_class();
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      v9 = v8;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error getting feature status: %@", buf, 0x16u);

      areAllRequirementsSatisfied = 0;
    }
  }

  else
  {
    requirementsEvaluationByContext = [v3 requirementsEvaluationByContext];
    v11 = [requirementsEvaluationByContext objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    areAllRequirementsSatisfied = [v11 areAllRequirementsSatisfied];
  }

  return areAllRequirementsSatisfied;
}

- (BOOL)_isFeatureOnboardedWithFeatureOnboardingRecord:(id)record
{
  v14 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v12 = 138543362;
      v13 = objc_opt_class();
      v8 = v13;
      v9 = "[%{public}@] Received nil onboarding record. Will assume feature is not onboarded.";
LABEL_8:
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if ([recordCopy onboardingState] != 2)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v10;
      v12 = 138543362;
      v13 = objc_opt_class();
      v8 = v13;
      v9 = "[%{public}@] User is not onboarded in a supported region.";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

- (id)_getEarliestOnboardingDate
{
  v17 = *MEMORY[0x277D85DE8];
  featureAvailabilityProviding = self->_featureAvailabilityProviding;
  v12 = 0;
  v4 = [(HKFeatureAvailabilityProviding *)featureAvailabilityProviding featureOnboardingRecordWithError:&v12];
  v5 = v12;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      v9 = v8;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error fetching onboarding record: %@\nReturning nil onboarding date.", buf, 0x16u);
    }
  }

  else if ([(HDSHBreathingDisturbanceAnalysisScheduler *)self _isFeatureOnboardedWithFeatureOnboardingRecord:v4])
  {
    earliestDateOfAnyOnboardingCompletion = [v4 earliestDateOfAnyOnboardingCompletion];
    goto LABEL_7;
  }

  earliestDateOfAnyOnboardingCompletion = 0;
LABEL_7:

  return earliestDateOfAnyOnboardingCompletion;
}

- (void)_requestBreathingDisturbanceAnalysisIfNeeded
{
  v72 = *MEMORY[0x277D85DE8];
  if ([(HDSHBreathingDisturbanceAnalysisScheduler *)self _areNotificationsEnabled])
  {
    _getEarliestOnboardingDate = [(HDSHBreathingDisturbanceAnalysisScheduler *)self _getEarliestOnboardingDate];
    if (_getEarliestOnboardingDate)
    {
      keyValueDomain = self->_keyValueDomain;
      v5 = *MEMORY[0x277D62640];
      v67 = 0;
      v6 = [(HDKeyValueDomain *)keyValueDomain numberForKey:v5 error:&v67];
      v7 = v67;
      integerValue = [v6 integerValue];

      _HKInitializeLogging();
      v9 = MEMORY[0x277CCC320];
      v10 = *MEMORY[0x277CCC320];
      v11 = os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v11)
        {
          v12 = v10;
          v13 = objc_opt_class();
          *buf = 138543618;
          v69 = v13;
          v70 = 2112;
          v71 = v7;
          v14 = v13;
          _os_log_impl(&dword_269C02000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error fetching number of analysis attempts: %@.", buf, 0x16u);
        }

        [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:2 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
      }

      else
      {
        if (v11)
        {
          v21 = v10;
          v22 = objc_opt_class();
          *buf = 138543618;
          v69 = v22;
          v70 = 2048;
          v71 = integerValue;
          v23 = v22;
          _os_log_impl(&dword_269C02000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of analysis attempts: %ld.", buf, 0x16u);
        }

        v24 = [HDSHBreathingDisturbanceAnalyzer endDateFromMostRecentlyAnalyzedDateIntervalWithDate:_getEarliestOnboardingDate numberOfAnalysisAttempts:integerValue calendar:self->_cachedCalendar];
        v64 = (*(self->_currentDateProvider + 2))();
        v65 = [HDSHBreathingDisturbanceAnalyzer numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:"numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:referenceDate:calendar:" referenceDate:_getEarliestOnboardingDate calendar:?];
        _HKInitializeLogging();
        v25 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = objc_opt_class();
          *buf = 138543618;
          v69 = v27;
          v70 = 2048;
          v71 = integerValue;
          v28 = v27;
          _os_log_impl(&dword_269C02000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of expected analysis attempts: %ld", buf, 0x16u);
        }

        v29 = [HDSHBreathingDisturbanceAnalyzer isAnalysisNeededWithAnchorDate:v24 referenceDate:v64 calendar:self->_cachedCalendar];
        _HKInitializeLogging();
        v30 = *v9;
        v31 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          v63 = v24;
          if (v31)
          {
            v32 = v30;
            v33 = objc_opt_class();
            *buf = 138543362;
            v69 = v33;
            v34 = v33;
            _os_log_impl(&dword_269C02000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis is needed. Analyzing over date intervals that have not been analyzed.", buf, 0xCu);
          }

          v35 = [HDSHBreathingDisturbanceAnalyzer alloc];
          WeakRetained = objc_loadWeakRetained(&self->_profile);
          v37 = [(HDSHBreathingDisturbanceAnalyzer *)v35 initWithProfile:WeakRetained];

          if (integerValue >= v65)
          {
LABEL_29:
            v52 = 0;
LABEL_39:
            v24 = v63;
          }

          else
          {
            while (1)
            {
              v38 = [(HDSHBreathingDisturbanceAnalyzer *)v37 performBreathingDisturbanceAnalysisWithIsForced:0 date:_getEarliestOnboardingDate numberOfAnalysisAttempts:integerValue];
              _HKInitializeLogging();
              v39 = *v9;
              v40 = *v9;
              if (!v38)
              {
                break;
              }

              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = v39;
                v42 = objc_opt_class();
                *buf = 138543362;
                v69 = v42;
                v43 = v42;
                _os_log_impl(&dword_269C02000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully performed analysis! Attempting to update count.", buf, 0xCu);
              }

              ++integerValue;
              v44 = self->_keyValueDomain;
              v45 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
              v66 = 0;
              v46 = [(HDKeyValueDomain *)v44 setNumber:v45 forKey:v5 error:&v66];
              v47 = v66;

              if ((v46 & 1) == 0)
              {
                _HKInitializeLogging();
                v56 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                {
                  v60 = v56;
                  v61 = objc_opt_class();
                  *buf = 138543618;
                  v69 = v61;
                  v70 = 2112;
                  v71 = v47;
                  v62 = v61;
                  _os_log_error_impl(&dword_269C02000, v60, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to write updated count of analysis attempts with error: %@\nWill retry this window in one day.", buf, 0x16u);
                }

                v52 = 2;
                goto LABEL_39;
              }

              if (![(HDSHBreathingDisturbanceAnalysisScheduler *)self _writeDateOfMostRecentSuccessfulAnalysisAttempt])
              {
                _HKInitializeLogging();
                v48 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = v48;
                  v50 = objc_opt_class();
                  *buf = 138543362;
                  v69 = v50;
                  v51 = v50;
                  _os_log_impl(&dword_269C02000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Date write failed while performing analysis.", buf, 0xCu);
                }
              }

              if (v65 == integerValue)
              {
                goto LABEL_29;
              }
            }

            v24 = v63;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v57 = v39;
              v58 = objc_opt_class();
              *buf = 138543362;
              v69 = v58;
              v59 = v58;
              _os_log_error_impl(&dword_269C02000, v57, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to perform successful analysis.\nWill retry in one day.", buf, 0xCu);
            }

            v52 = 2;
          }

          [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:v52 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
        }

        else
        {
          if (v31)
          {
            v53 = v30;
            v54 = objc_opt_class();
            *buf = 138543362;
            v69 = v54;
            v55 = v54;
            _os_log_impl(&dword_269C02000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis is not needed.", buf, 0xCu);
          }

          [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:0 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        *buf = 138543362;
        v69 = objc_opt_class();
        v20 = v69;
        _os_log_impl(&dword_269C02000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got nil onboarding date, not checking if analysis is overdue.", buf, 0xCu);
      }

      [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:2 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      *buf = 138543362;
      v69 = objc_opt_class();
      v17 = v69;
      _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature is disabled; not going to check if analysis is overdue.", buf, 0xCu);
    }

    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:0 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
  }
}

- (void)_updateActivityCriteriaAndResetActivity
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v6 = 138543362;
    *&v6[4] = objc_opt_class();
    v5 = *&v6[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activity criteria will be updated and reset.", v6, 0xCu);
  }

  [(HDPeriodicActivity *)self->_activity resetInterval:*v6];
}

@end