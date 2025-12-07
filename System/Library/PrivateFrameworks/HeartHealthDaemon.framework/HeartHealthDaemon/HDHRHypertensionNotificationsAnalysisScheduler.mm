@interface HDHRHypertensionNotificationsAnalysisScheduler
- (HDHRHypertensionNotificationsAnalysisScheduler)init;
- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider keyValueDomain:(id)domain analysisWindowInterval:(double)interval analysisWindowGraceInterval:(double)graceInterval analysisCadenceInterval:(double)cadenceInterval analysisRetryInterval:(double)retryInterval pregnancyStateProvider:(id)self0 measurementAnalyzer:(id)self1;
- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider pregnancyStateProvider:(id)stateProvider measurementAnalyzer:(id)analyzer;
- (dispatch_queue_t)_queue_resetActivityInterval;
- (id)_lastAnalysisWindowEndDateOrOnboardingDateWithFeatureStatus:(id)status error:(id *)error;
- (id)_takeAccessibilityAssertion;
- (void)_enqueueSchedulingOnMaintenanceOperationWithCompletion:(uint64_t)completion;
- (void)_queue_performAnalysisIfNeededWithDatabaseTransactionContext:(void *)context completion:;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDHRHypertensionNotificationsAnalysisScheduler

- (HDHRHypertensionNotificationsAnalysisScheduler)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider keyValueDomain:(id)domain analysisWindowInterval:(double)interval analysisWindowGraceInterval:(double)graceInterval analysisCadenceInterval:(double)cadenceInterval analysisRetryInterval:(double)retryInterval pregnancyStateProvider:(id)self0 measurementAnalyzer:(id)self1
{
  v38 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  providerCopy = provider;
  domainCopy = domain;
  stateProviderCopy = stateProvider;
  analyzerCopy = analyzer;
  v35.receiver = self;
  v35.super_class = HDHRHypertensionNotificationsAnalysisScheduler;
  v24 = [(HDHRHypertensionNotificationsAnalysisScheduler *)&v35 init];
  if (v24)
  {
    _HKInitializeLogging();
    v25 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v24;
      _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v24->_profile, profileCopy);
    objc_storeStrong(&v24->_featureStatusManager, provider);
    v24->_analysisWindowInterval = interval;
    v24->_analysisWindowGraceInterval = graceInterval;
    v24->_analysisCadenceInterval = cadenceInterval;
    v24->_analysisRetryInterval = retryInterval;
    objc_storeStrong(&v24->_analyzer, analyzer);
    objc_storeStrong(&v24->_pregnancyStateProvider, stateProvider);
    v26 = HKCreateSerialDispatchQueue();
    queue = v24->_queue;
    v24->_queue = v26;

    objc_storeStrong(&v24->_syncedKeyValueDomain, domain);
    v28 = objc_alloc(MEMORY[0x277D107E8]);
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    v30 = [v28 initWithProfile:WeakRetained name:@"com.apple.healthd.heart.hypertension-measurement-analysis" interval:v24 delegate:*MEMORY[0x277CCC2D0] loggingCategory:v24->_analysisCadenceInterval];
    periodicActivity = v24->_periodicActivity;
    v24->_periodicActivity = v30;

    v32 = objc_loadWeakRetained(&v24->_profile);
    [v32 registerProfileReadyObserver:v24 queue:0];
  }

  return v24;
}

- (HDHRHypertensionNotificationsAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider pregnancyStateProvider:(id)stateProvider measurementAnalyzer:(id)analyzer
{
  v10 = MEMORY[0x277D10718];
  analyzerCopy = analyzer;
  stateProviderCopy = stateProvider;
  providerCopy = provider;
  profileCopy = profile;
  v15 = [v10 hdhr_hypertensionNotificationsSyncedDomainForProfile:profileCopy];
  v16 = HDHRHypertensionNotificationsAnalysisWindowIntervalRespectingOverride();
  v17 = HDHRHypertensionNotificationsAnalysisWindowGraceIntervalRespectingOverride();
  v18 = HDHRHypertensionNotificationsAnalysisCadenceIntervalRespectingOverride();
  v19 = [(HDHRHypertensionNotificationsAnalysisScheduler *)self initWithProfile:profileCopy featureStatusProvider:providerCopy keyValueDomain:v15 analysisWindowInterval:stateProviderCopy analysisWindowGraceInterval:analyzerCopy analysisCadenceInterval:v16 analysisRetryInterval:v17 pregnancyStateProvider:v18 measurementAnalyzer:HDHRHypertensionNotificationsAnalysisSchedulerRetryIntervalRespectingOverride()];

  return v19;
}

uint64_t __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_319(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (id)_lastAnalysisWindowEndDateOrOnboardingDateWithFeatureStatus:(id)status error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  syncedKeyValueDomain = self->_syncedKeyValueDomain;
  v8 = *MEMORY[0x277D12F08];
  v25 = 0;
  v9 = [(HDKeyValueDomain *)syncedKeyValueDomain dateForKey:v8 error:&v25];
  v10 = v25;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
    goto LABEL_3;
  }

  if (!v10)
  {
    onboardingRecord = [statusCopy onboardingRecord];
    featureSettings = [onboardingRecord featureSettings];
    v12 = [featureSettings dateForKey:*MEMORY[0x277CCC138]];

    if (v12)
    {
LABEL_10:
      _HKInitializeLogging();
      v17 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last analysis window end data is missing, using onboarding acknowledged date %@", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_25;
    }

    onboardingRecord2 = [statusCopy onboardingRecord];
    featureSettings2 = [onboardingRecord2 featureSettings];
    v20 = *MEMORY[0x277CCC130];
    v21 = [featureSettings2 numberForKey:*MEMORY[0x277CCC130]];

    if (v21 && ([v21 BOOLValue] & 1) != 0)
    {
      onboardingRecord3 = [statusCopy onboardingRecord];
      featureSettings3 = [onboardingRecord3 featureSettings];
      v12 = [featureSettings3 modificationDateForKey:v20];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Onboarding acknowledged date is missing."];
    if (v17)
    {
      if (error)
      {
        v24 = v17;
        v12 = 0;
        *error = v17;
LABEL_24:
        v11 = v17;
LABEL_25:

        goto LABEL_3;
      }

      _HKLogDroppedError();
    }

    v12 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    v14 = v10;
    v12 = 0;
    *error = v11;
  }

  else
  {
    _HKLogDroppedError();
    v12 = 0;
  }

LABEL_3:

  return v12;
}

- (void)profileDidBecomeReady:(id)ready
{
  database = [ready database];
  [database addProtectedDataObserver:self];

  featureStatusManager = self->_featureStatusManager;

  [(HKFeatureStatusProviding *)featureStatusManager registerObserver:self queue:0];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    v6[5] = v4;
    v6[6] = v5;
    [HDHRHypertensionNotificationsAnalysisScheduler database:v6 protectedDataDidBecomeAvailable:?];
  }
}

dispatch_queue_t *__91__HDHRHypertensionNotificationsAnalysisScheduler_database_protectedDataDidBecomeAvailable___block_invoke(dispatch_queue_t *result, uint64_t a2)
{
  if (!a2)
  {
    return [(HDHRHypertensionNotificationsAnalysisScheduler *)result[4] _queue_resetActivityInterval];
  }

  return result;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v16 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  name = [activity name];
  if ([name isEqualToString:@"com.apple.healthd.heart.hypertension-measurement-analysis"])
  {
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86360], 1);
    analysisCadenceInterval = self->_analysisCadenceInterval;
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:analysisCadenceInterval];
      v12 = 138543618;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Configuring periodic activity with a time interval: %@", &v12, 0x16u);
    }

    xpc_dictionary_set_int64(criteriaCopy, *MEMORY[0x277D86288], analysisCadenceInterval);
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unexpected activity received; not setting activity criteria.", &v12, 0xCu);
    }
  }
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  statusCopy = status;
  v6 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBDF8]];
  if ([v6 areAllRequirementsSatisfied])
  {
    [HDHRHypertensionNotificationsAnalysisScheduler featureStatusProviding:v9 didUpdateFeatureStatus:self];
  }

  unitTest_featureStatusUpdateBlock = [(HDHRHypertensionNotificationsAnalysisScheduler *)self unitTest_featureStatusUpdateBlock];

  if (unitTest_featureStatusUpdateBlock)
  {
    unitTest_featureStatusUpdateBlock2 = [(HDHRHypertensionNotificationsAnalysisScheduler *)self unitTest_featureStatusUpdateBlock];
    (unitTest_featureStatusUpdateBlock2)[2](unitTest_featureStatusUpdateBlock2, statusCopy);
  }
}

dispatch_queue_t *__96__HDHRHypertensionNotificationsAnalysisScheduler_featureStatusProviding_didUpdateFeatureStatus___block_invoke(dispatch_queue_t *result, uint64_t a2)
{
  if (!a2)
  {
    return [(HDHRHypertensionNotificationsAnalysisScheduler *)result[4] _queue_resetActivityInterval];
  }

  return result;
}

- (void)_queue_performAnalysisIfNeededWithDatabaseTransactionContext:(void *)context completion:
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = a2;
  contextCopy = context;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v7 = *(self + 24);
    v88 = 0;
    v8 = [v7 featureStatusWithError:&v88];
    v9 = v88;
    v10 = v9;
    if (!v8)
    {
      if (v9)
      {
        _HKInitializeLogging();
        v22 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_0_7();
          v92 = v10;
          _os_log_error_impl(&dword_229486000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Could not get feature status with error %@", buf, 0x16u);
        }
      }

      v29 = OUTLINED_FUNCTION_1_6();
      v30(v29);
      goto LABEL_40;
    }

    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCBDF8]];
    if (([v11 areAllRequirementsSatisfied] & 1) == 0)
    {
      v23 = MEMORY[0x277CCACA8];
      unsatisfiedRequirementIdentifiersDescription = [v11 unsatisfiedRequirementIdentifiersDescription];
      v25 = [v23 stringWithFormat:@"Not eligible for analysis with unsatisfied requirements: %@", unsatisfiedRequirementIdentifiersDescription];

      _HKInitializeLogging();
      v26 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0_7();
        v92 = v25;
        _os_log_impl(&dword_229486000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);
      }

      v27 = OUTLINED_FUNCTION_1_6();
      v28(v27, 0, 0);

      goto LABEL_39;
    }

    v87 = 0;
    v12 = [self _lastAnalysisWindowEndDateOrOnboardingDateWithFeatureStatus:v8 error:&v87];
    v13 = v87;
    v10 = v13;
    if (!v12)
    {
      _HKInitializeLogging();
      v31 = HKLogHeartRateCategory();
      v32 = v31;
      if (v10)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_0_7();
          v92 = v10;
          OUTLINED_FUNCTION_3_2(&dword_229486000, v54, v55, "[%{public}@] Could not load last analysis date with error %@", v56, v57, v58, v59, v66, v67, v69, v71, v72, v74, v77, v78, v79, v80, selfCopy3, v82, v83, v84, v85, v86, v87, v88);
        }

        v33 = OUTLINED_FUNCTION_1_6();
        v35 = 2;
      }

      else
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy4 = self;
          v91 = 2112;
          v92 = @"Last analysis window end date is nil";
          _os_log_impl(&dword_229486000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);
        }

        v10 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Last analysis window end date is nil"];
        v33 = OUTLINED_FUNCTION_1_6();
        v35 = 1;
      }

      v34(v33, v35, v10);
      goto LABEL_39;
    }

    v14 = *(self + 72);
    v86 = 0;
    v15 = [v14 latestWashoutEndDateWithError:&v86];
    v16 = v86;
    v10 = v16;
    if (v15)
    {
      if ([(__CFString *)v12 hk_isBeforeDate:v15])
      {
        v75 = v15;

        _HKInitializeLogging();
        v17 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = HKSensitiveLogItem();
          v19 = HKSensitiveLogItem();
          OUTLINED_FUNCTION_0_7();
          v92 = v18;
          v93 = v20;
          v94 = v21;
          _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting next analysis date to %@: %@", buf, 0x20u);
        }

        v12 = v75;
      }
    }

    else if (v16)
    {
      _HKInitializeLogging();
      v36 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_7();
        v92 = v10;
        OUTLINED_FUNCTION_3_2(&dword_229486000, v60, v61, "[%{public}@] Could not get latest washout end date with error %@", v62, v63, v64, v65, v66, v67, v69, v71, v72, v74, v77, v78, v79, v80, selfCopy3, v82, v83, v84, v85, v86, v87, v88);
      }

      v37 = OUTLINED_FUNCTION_1_6();
      v38(v37, 2, v10);
      goto LABEL_34;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v12];
    v41 = v40;
    v42 = *(self + 40) + *(self + 48);
    _HKInitializeLogging();
    v43 = HKLogHeartRateCategory();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    if (v42 <= v41)
    {
      v70 = v5;
      v73 = date;
      if (v44)
      {
        v48 = [MEMORY[0x277CCABB0] numberWithDouble:*(self + 40)];
        v49 = [MEMORY[0x277CCABB0] numberWithDouble:*(self + 48)];
        *buf = 138544386;
        selfCopy4 = self;
        v91 = 2114;
        v92 = v12;
        v93 = 2114;
        v94 = v73;
        v95 = 2114;
        v96 = v48;
        v97 = 2114;
        v98 = v49;
        _os_log_impl(&dword_229486000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing analysis operation with date range ([%{public}@] - [%{public}@]), with an analysis window timeinterval: [%{public}@], grace time interval: [%{public}@]", buf, 0x34u);
      }

      [self setUnitTest_latestAnalysisStartDate:v12];
      [self setUnitTest_analysisOperationEnqueued:1];
      WeakRetained = objc_loadWeakRetained((self + 8));
      database = [WeakRetained database];
      v85 = v10;
      v77 = MEMORY[0x277D85DD0];
      v78 = 3221225472;
      v79 = __122__HDHRHypertensionNotificationsAnalysisScheduler__queue_performAnalysisIfNeededWithDatabaseTransactionContext_completion___block_invoke;
      v80 = &unk_278660240;
      selfCopy3 = self;
      v82 = v12;
      date = v73;
      v83 = v73;
      v5 = v70;
      v84 = v70;
      [database performWithTransactionContext:v84 error:&v85 block:&v77];
      v76 = v12;
      v51 = v85;

      v52 = OUTLINED_FUNCTION_1_6();
      v53(v52);

      v10 = v51;
      v12 = v76;
    }

    else
    {
      if (v44)
      {
        *buf = 138543362;
        selfCopy4 = self;
        OUTLINED_FUNCTION_4_0(&dword_229486000, v43, v45, "[%{public}@] Time interval since last window end date is less than analysis window time interval + grace period", buf);
      }

      v46 = OUTLINED_FUNCTION_1_6();
      v47(v46, 0, 0);
    }

LABEL_34:
LABEL_39:

LABEL_40:
  }
}

- (dispatch_queue_t)_queue_resetActivityInterval
{
  v6 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(result[2]);
    _HKInitializeLogging();
    v2 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v1;
      OUTLINED_FUNCTION_4_0(&dword_229486000, v2, v3, "[%{public}@] Resetting periodic activity", &v4);
    }

    return [v1[12] resetInterval];
  }

  return result;
}

- (void)_enqueueSchedulingOnMaintenanceOperationWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    dispatch_assert_queue_not_V2(*(completion + 16));
    WeakRetained = objc_loadWeakRetained((completion + 8));
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    v7 = MEMORY[0x277D10748];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(completion + 16);
    OUTLINED_FUNCTION_2_3();
    v12[1] = 3221225472;
    v12[2] = __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke;
    v12[3] = &unk_278660290;
    v12[4] = completion;
    v13 = v3;
    v11 = [v7 maintenanceOperationWithName:v9 queue:v10 synchronousBlock:v12];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v11];
  }
}

void __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v14 = 138543362;
    v15 = v5;
    OUTLINED_FUNCTION_4_0(&dword_229486000, v3, v4, "[%{public}@] Executing maintenance operation", &v14);
  }

  v6 = [(HDHRHypertensionNotificationsAnalysisScheduler *)*(a1 + 32) _takeAccessibilityAssertion];
  v7 = [MEMORY[0x277D10788] contextForAccessibilityAssertion:v6];
  [v7 setCacheScope:1];
  OUTLINED_FUNCTION_2_3();
  v11[1] = 3221225472;
  v11[2] = __105__HDHRHypertensionNotificationsAnalysisScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_319;
  v11[3] = &unk_278660268;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v6;
  v13 = v9;
  v10 = v6;
  [(HDHRHypertensionNotificationsAnalysisScheduler *)v8 _queue_performAnalysisIfNeededWithDatabaseTransactionContext:v7 completion:v11];
}

- (id)_takeAccessibilityAssertion
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v10 = 0;
    v6 = [database takeAccessibilityAssertionWithOwnerIdentifier:v5 timeout:&v10 error:300.0];
    v7 = v10;

    if (!v6)
    {
      _HKInitializeLogging();
      v8 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v13 = 2114;
        v14 = v7;
        _os_log_error_impl(&dword_229486000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to take an accessibility assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    OUTLINED_FUNCTION_4_0(&dword_229486000, v6, v7, "[%{public}@] Performing periodic activity", &v8);
  }

  [(HDHRHypertensionNotificationsAnalysisScheduler *)self _enqueueSchedulingOnMaintenanceOperationWithCompletion:completionCopy];
}

- (void)database:(uint64_t)a1 protectedDataDidBecomeAvailable:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = [WeakRetained database];
  [v5 removeProtectedDataObserver:a1];

  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __91__HDHRHypertensionNotificationsAnalysisScheduler_database_protectedDataDidBecomeAvailable___block_invoke;
  a2[3] = &unk_2786602B8;
  a2[4] = a1;
  [(HDHRHypertensionNotificationsAnalysisScheduler *)a1 _enqueueSchedulingOnMaintenanceOperationWithCompletion:a2];
}

- (void)featureStatusProviding:(void *)a1 didUpdateFeatureStatus:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D85DD0];
  a1[1] = 3221225472;
  a1[2] = __96__HDHRHypertensionNotificationsAnalysisScheduler_featureStatusProviding_didUpdateFeatureStatus___block_invoke;
  a1[3] = &unk_2786602B8;
  a1[4] = a2;
  [(HDHRHypertensionNotificationsAnalysisScheduler *)a2 _enqueueSchedulingOnMaintenanceOperationWithCompletion:a1];
}

@end