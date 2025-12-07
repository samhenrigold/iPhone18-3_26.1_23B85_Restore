@interface HDMedicationPeriodicScheduler
- (HDMedicationPeriodicScheduler)init;
- (HDMedicationPeriodicScheduler)initWithDaemon:(id)daemon;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDMedicationPeriodicScheduler

- (HDMedicationPeriodicScheduler)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationPeriodicScheduler)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v10.receiver = self;
  v10.super_class = HDMedicationPeriodicScheduler;
  v5 = [(HDMedicationPeriodicScheduler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_daemon, daemonCopy);
    primaryProfile = [daemonCopy primaryProfile];
    [primaryProfile registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  v4 = *MEMORY[0x277D86298];
  v5 = objc_alloc(MEMORY[0x277D107E8]);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  v7 = HKLogMedication();
  v8 = [v5 initWithProfile:primaryProfile name:@"com.apple.healthd.medications.scheduler" interval:self delegate:v7 loggingCategory:v4];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v8;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  criteriaCopy = criteria;
  name = [activityCopy name];
  v9 = [name isEqualToString:@"com.apple.healthd.medications.scheduler"];

  _HKInitializeLogging();
  v10 = HKLogMedication();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [activityCopy name];
      v13 = 138543618;
      selfCopy = self;
      v15 = 2114;
      v16 = name2;
      _os_log_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: configuring periodic activity %{public}@", &v13, 0x16u);
    }

    xpc_dictionary_set_string(criteriaCopy, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D863A0], 1);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86378], 1);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationPeriodicScheduler *)self periodicActivity:activityCopy configureXPCActivityCriteria:v11];
    }
  }
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  name = [activity name];
  if ([name isEqualToString:@"com.apple.healthd.medications.scheduler"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    primaryProfile = [WeakRetained primaryProfile];

    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [v10 stringWithFormat:@"%@-%@", v12, uUIDString];

    database = [primaryProfile database];
    v38 = 0;
    v17 = [database takeAccessibilityAssertionWithOwnerIdentifier:v15 timeout:&v38 error:300.0];
    v18 = v38;

    if (!v17)
    {
      _HKInitializeLogging();
      v19 = HKLogMedication();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

      if (v20)
      {
        v21 = HKLogMedication();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          selfCopy = self;
          v41 = 2114;
          v42 = v18;
          _os_log_impl(&dword_25181C000, v21, OS_LOG_TYPE_INFO, "[%{public}@]: unable to take accessibility assertion: %{public}@", buf, 0x16u);
        }
      }
    }

    v22 = MEMORY[0x277D10748];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke;
    v33[3] = &unk_2796CE4D8;
    v33[4] = self;
    v34 = name;
    v35 = v17;
    v36 = primaryProfile;
    v37 = completionCopy;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_2;
    v31[3] = &unk_2796CE500;
    v32 = v35;
    v25 = v35;
    v26 = primaryProfile;
    v27 = [v22 maintenanceOperationWithName:v24 asynchronousBlock:v33 canceledBlock:v31];

    v28 = objc_loadWeakRetained(&self->_daemon);
    maintenanceWorkCoordinator = [v28 maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v27];
  }

  else
  {
    _HKInitializeLogging();
    v30 = HKLogMedication();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationPeriodicScheduler *)self performPeriodicActivity:name completion:v30];
    }

    (*(completionCopy + 2))(completionCopy, 1, 0, 0.0);
  }
}

void __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_25181C000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: performing periodic activity %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D10788]);
  [v7 setCacheScope:1];
  if (*(a1 + 48))
  {
    [v7 addAccessibilityAssertion:?];
  }

  v8 = [*(a1 + 56) database];
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_339;
  v15 = &unk_2796CD798;
  v16 = *(a1 + 56);
  v9 = [v8 performWithTransactionContext:v7 error:&v17 block:&v12];
  v10 = v17;

  [*(a1 + 48) invalidate];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v11, v10, 0.0);
  v3[2](v3);
}

uint64_t __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_339(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) healthMedicationsProfileExtension];
  v4 = [v3 medicationScheduleManager];

  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 startOfDayForDate:v6];

  if ([v4 rescheduleMedicationsWithError:a2])
  {
    v8 = [v4 pruneAllScheduleItemsBeforeDate:v7 createDoseEvents:1 error:a2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 invalidate];
  v3[2]();
}

- (void)periodicActivity:(NSObject *)a3 configureXPCActivityCriteria:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 name];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_25181C000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: periodic activity %{public}@ is not an expected activity, not configuring", &v6, 0x16u);
}

- (void)performPeriodicActivity:(os_log_t)log completion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_25181C000, log, OS_LOG_TYPE_ERROR, "[%{public}@]: periodic activity %{public}@ is not an expected activity, not performing", &v3, 0x16u);
}

@end