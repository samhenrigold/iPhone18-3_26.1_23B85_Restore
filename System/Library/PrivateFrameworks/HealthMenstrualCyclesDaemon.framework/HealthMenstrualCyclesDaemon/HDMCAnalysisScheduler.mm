@interface HDMCAnalysisScheduler
- (HDMCAnalysisScheduler)initWithDaemon:(id)daemon analysisManager:(id)manager settingsManager:(id)settingsManager;
- (double)_delayUntilNextAnalysisSchedulingWindowStartDateAfterDate:(id)date;
- (void)_handleActivity:(id)activity forceRescheduleOnCheckIn:(BOOL)in;
- (void)_registerActivityAfterCompletion:(BOOL)completion;
- (void)_runAnalysis;
- (void)daemonReady:(id)ready;
- (void)dealloc;
@end

@implementation HDMCAnalysisScheduler

- (HDMCAnalysisScheduler)initWithDaemon:(id)daemon analysisManager:(id)manager settingsManager:(id)settingsManager
{
  daemonCopy = daemon;
  managerCopy = manager;
  settingsManagerCopy = settingsManager;
  v14.receiver = self;
  v14.super_class = HDMCAnalysisScheduler;
  v11 = [(HDMCAnalysisScheduler *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_analysisManager, manager);
    objc_storeStrong(&v12->_settingsManager, settingsManager);
    [daemonCopy registerDaemonReadyObserver:v12 queue:0];
  }

  return v12;
}

- (void)dealloc
{
  xpc_activity_unregister("com.apple.Health.menstrualcycles.analysisupdates");
  v3.receiver = self;
  v3.super_class = HDMCAnalysisScheduler;
  [(HDMCAnalysisScheduler *)&v3 dealloc];
}

- (void)_registerActivityAfterCompletion:(BOOL)completion
{
  objc_initWeak(&location, self);
  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__HDMCAnalysisScheduler__registerActivityAfterCompletion___block_invoke;
  handler[3] = &unk_27865AE58;
  objc_copyWeak(&v6, &location);
  completionCopy = completion;
  xpc_activity_register("com.apple.Health.menstrualcycles.analysisupdates", v4, handler);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__HDMCAnalysisScheduler__registerActivityAfterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleActivity:v3 forceRescheduleOnCheckIn:*(a1 + 40)];
}

- (void)_handleActivity:(id)activity forceRescheduleOnCheckIn:(BOOL)in
{
  inCopy = in;
  v33 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  state = xpc_activity_get_state(activityCopy);
  if (state == 2)
  {
    [(HDMCAnalysisScheduler *)self _runAnalysis];
    if ((xpc_activity_set_completion_status() & 1) == 0)
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisScheduler _handleActivity:v18 forceRescheduleOnCheckIn:self];
      }
    }

    [(HDMCAnalysisScheduler *)self _registerActivityAfterCompletion:1];
  }

  else
  {
    v8 = state;
    if (!state)
    {
      v9 = xpc_activity_copy_criteria(activityCopy);
      v10 = v9;
      v11 = MEMORY[0x277D86250];
      if (v9)
      {
        int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D86250]);
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC2E8];
        v14 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_INFO);
        if (int64)
        {
          if (!inCopy)
          {
            if (v14)
            {
              v24 = v13;
              v25 = objc_opt_class();
              v26 = MEMORY[0x277CCABB0];
              v27 = v25;
              v28 = [v26 numberWithLongLong:int64];
              v29 = 138543618;
              v30 = v25;
              v31 = 2112;
              v32 = v28;
              _os_log_impl(&dword_2293D1000, v24, OS_LOG_TYPE_INFO, "[%{public}@] Found existing valid criteria; not rescheduling. Delay: %@", &v29, 0x16u);
            }

            goto LABEL_20;
          }

          if (v14)
          {
            v15 = v13;
            v29 = 138543362;
            v30 = objc_opt_class();
            v16 = v30;
            v17 = "[%{public}@] Rescheduling for completed activity";
LABEL_18:
            _os_log_impl(&dword_2293D1000, v15, OS_LOG_TYPE_INFO, v17, &v29, 0xCu);
          }
        }

        else if (v14)
        {
          v15 = v13;
          v29 = 138543362;
          v30 = objc_opt_class();
          v16 = v30;
          v17 = "[%{public}@] No delay found in existing criteria";
          goto LABEL_18;
        }
      }

      else
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_INFO))
        {
          v15 = v20;
          v29 = 138543362;
          v30 = objc_opt_class();
          v16 = v30;
          v17 = "[%{public}@] No existing criteria found";
          goto LABEL_18;
        }
      }

      v21 = xpc_dictionary_create(0, 0, 0);

      xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86370], 1);
      xpc_dictionary_set_string(v21, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86230], 1);
      xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86360], 0);
      date = [MEMORY[0x277CBEAA8] date];
      [(HDMCAnalysisScheduler *)self _delayUntilNextAnalysisSchedulingWindowStartDateAfterDate:date];
      xpc_dictionary_set_int64(v21, *v11, v23);
      xpc_dictionary_set_int64(v21, *MEMORY[0x277D86270], 3600);
      xpc_activity_set_criteria(activityCopy, v21);

      v10 = v21;
LABEL_20:

      goto LABEL_21;
    }

    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HDMCAnalysisScheduler *)v19 _handleActivity:v8 forceRescheduleOnCheckIn:?];
    }
  }

LABEL_21:
}

- (double)_delayUntilNextAnalysisSchedulingWindowStartDateAfterDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [(HKMCSettingsManager *)self->_settingsManager hdmc_nextAnalysisSchedulingWindowStartDateAfterDate:dateCopy calendar:currentCalendar];
  v7 = v6;
  if (v6)
  {
    [v6 timeIntervalSinceDate:dateCopy];
    v9 = v8;
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E8];
    v9 = 86400.0;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = dateCopy;
      v18 = 2114;
      v19 = currentCalendar;
      v13 = v15;
      _os_log_fault_impl(&dword_2293D1000, v12, OS_LOG_TYPE_FAULT, "[%{public}@] Next date to schedule analysis after %{public}@ should not be nil, calendar: %{public}@", &v14, 0x20u);
    }
  }

  return v9;
}

- (void)_runAnalysis
{
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error running analysis from XPC activity: %{public}@", v7, v8, v9, v10);
}

- (void)daemonReady:(id)ready
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v6 = *&v7[4];
    _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Daemon ready, scheduling activity", v7, 0xCu);
  }

  [(HDMCAnalysisScheduler *)self _registerActivityAfterCompletion:0, *v7, *&v7[8]];
}

- (void)_handleActivity:(void *)a1 forceRescheduleOnCheckIn:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_2293D1000, v2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to update completion state", &v4, 0xCu);
}

- (void)_handleActivity:(uint64_t)a3 forceRescheduleOnCheckIn:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CCABB0];
  v7 = v5;
  v8 = [v6 numberWithLong:a3];
  v9 = 138543618;
  v10 = v5;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&dword_2293D1000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected activity registration state: %@", &v9, 0x16u);
}

@end