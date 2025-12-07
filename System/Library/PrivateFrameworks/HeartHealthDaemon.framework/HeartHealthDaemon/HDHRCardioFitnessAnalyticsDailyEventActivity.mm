@interface HDHRCardioFitnessAnalyticsDailyEventActivity
- (HDHRCardioFitnessAnalyticsDailyEventActivity)initWithProfile:(id)profile;
- (HDProfile)profile;
- (void)_queue_submitAnalyticsWithActivityCompletion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
@end

@implementation HDHRCardioFitnessAnalyticsDailyEventActivity

- (HDHRCardioFitnessAnalyticsDailyEventActivity)initWithProfile:(id)profile
{
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = HDHRCardioFitnessAnalyticsDailyEventActivity;
  v5 = [(HDHRCardioFitnessAnalyticsDailyEventActivity *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = *MEMORY[0x277D862A0];
    v6->_calculationPeriod = *MEMORY[0x277D86298];
    v6->_retryPeriod = v7;
    v8 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = [[HDHRCardioFitnessAnalyticsSignalSource alloc] initWithProfile:profileCopy];
    v11 = [objc_alloc(MEMORY[0x277D12F98]) initWithSignalSource:v10];
    analyticsManager = v6->_analyticsManager;
    v6->_analyticsManager = v11;

    v13 = [[HDHRCardioFitnessAnalyticsDailyEventDataSource alloc] initWithProfile:profileCopy];
    dataSource = v6->_dataSource;
    v6->_dataSource = v13;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  [(HDAssertion *)self->_preparedDatabaseAccessibilityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDHRCardioFitnessAnalyticsDailyEventActivity;
  [(HDHRCardioFitnessAnalyticsDailyEventActivity *)&v3 dealloc];
}

- (void)daemonReady:(id)ready
{
  v4 = objc_alloc(MEMORY[0x277D107E8]);
  profile = [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self profile];
  [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self calculationPeriod];
  v5 = [v4 initWithProfile:profile name:@"com.apple.healthd.cardiofitness.HDHRCardioFitnessAnalyticsDailyEventActivity" interval:self delegate:*MEMORY[0x277CCC2D0] loggingCategory:?];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v5;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v4 = *MEMORY[0x277D86230];
  xdict = criteria;
  xpc_dictionary_set_BOOL(xdict, v4, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86378], 1);
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = objc_opt_class();
      v9 = selfCopy;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Received periodic activity trigger.", buf, 0xCu);
    }
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke;
  block[3] = &unk_27865FD90;
  block[4] = self;
  dispatch_sync(queue, block);
  _HKInitializeLogging();
  v11 = HKLogHeartRateCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

  if (v12)
  {
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_INFO, "[%{public}@] maintenance operation enqueued", buf, 0xCu);
    }
  }

  v14 = MEMORY[0x277D10748];
  selfCopy2 = self;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_311;
  v28 = &unk_278660DC0;
  selfCopy3 = self;
  v30 = completionCopy;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_315;
  v23 = &unk_278660738;
  v15 = completionCopy;
  v16 = [v14 maintenanceOperationWithName:@"HDHRCardioFitnessAnalyticsDailyEventActivity" asynchronousBlock:&v25 canceledBlock:&v20];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v16];
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) invalidate];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained database];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v12 = 0;
  v6 = [v3 takeAccessibilityAssertionWithOwnerIdentifier:v5 timeout:&v12 error:300.0];
  v7 = v12;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v6;

  if (!*(*(a1 + 32) + 8))
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] unable to get accessibilityAssertion before enqueing maintenance operation: %{public}@", buf, 0x16u);
    }
  }
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_311(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_INFO, "[%{public}@] maintenance operation running", buf, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_312;
  block[3] = &unk_278660D98;
  block[4] = v9;
  v13 = v3;
  v14 = v8;
  v11 = v3;
  dispatch_sync(v10, block);
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_312(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_2;
  v4[3] = &unk_278660D70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 _queue_submitAnalyticsWithActivityCompletion:v4];
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_2(void *a1, double a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a1[5];
  v7 = *(v6 + 16);
  v8 = a4;
  v7(v6);
  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    v11 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a1[4];
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_INFO, "[%{public}@] maintenance operation finished", &v15, 0xCu);
    }
  }

  [*(a1[4] + 8) invalidate];
  v13 = a1[4];
  v14 = *(v13 + 8);
  *(v13 + 8) = 0;

  (*(a1[6] + 16))(a2);
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_315(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  [v2 invalidate];
  v3[2]();
}

- (void)_queue_submitAnalyticsWithActivityCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v35 = objc_opt_class();
      v8 = v35;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Attempting to send daily event.", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  deviceContextManager = [WeakRetained deviceContextManager];
  v33 = 0;
  v11 = [deviceContextManager numberOfDeviceContextsPerDeviceType:&v33];
  v12 = v33;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543618;
      v35 = v14;
      v36 = 2112;
      v37 = v12;
      v15 = v14;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device contexts found with error %@", buf, 0x16u);
    }

    v16 = [objc_alloc(MEMORY[0x277D12FA0]) initWithStatus:1 error:v12];
  }

  else
  {
    v16 = [(HKHRCardioFitnessAnalyticsManager *)self->_analyticsManager submitDailyEventWithSource:self->_dataSource deviceContextsDict:v11];
  }

  v17 = v16;
  status = [v16 status];
  switch(status)
  {
    case 2:
      _HKInitializeLogging();
      v28 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        *buf = 138543362;
        v35 = v29;
        v30 = v29;
        _os_log_impl(&dword_229486000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should not send daily event, will ignore.", buf, 0xCu);
      }

      [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self retryPeriod];
      v32 = v31;
      error = [v17 error];
      completionCopy[2](completionCopy, 1, error, v32);
      goto LABEL_22;
    case 1:
      _HKInitializeLogging();
      v22 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v35 = v23;
        v24 = v23;
        _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unsuccessfully sent daily event will request retry.", buf, 0xCu);
      }

      [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self retryPeriod];
      v26 = v25;
      error = [v17 error];
      completionCopy[2](completionCopy, 2, error, v26);
LABEL_22:

      break;
    case 0:
      _HKInitializeLogging();
      v19 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138543362;
        v35 = v20;
        v21 = v20;
        _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully sent daily event.", buf, 0xCu);
      }

      [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self retryPeriod];
      (completionCopy[2])(completionCopy, 0, 0);
      break;
  }
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end