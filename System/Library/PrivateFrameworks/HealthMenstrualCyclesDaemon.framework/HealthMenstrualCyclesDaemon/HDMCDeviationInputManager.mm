@interface HDMCDeviationInputManager
- (BOOL)clearStateIfNecessaryFromSettings:(id)settings usageRequirementsSatisfied:(BOOL)satisfied error:(id *)error;
- (HDMCDeviationInputManager)initWithProfile:(id)profile;
@end

@implementation HDMCDeviationInputManager

- (HDMCDeviationInputManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDMCDeviationInputManager;
  v5 = [(HDMCDeviationInputManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [MEMORY[0x277D10718] hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:profileCopy];
    keyValueDomain = v6->_keyValueDomain;
    v6->_keyValueDomain = v7;

    v9 = [MEMORY[0x277D10718] hdmc_deviationDetectionAnalyticsProtectedDomainWithProfile:profileCopy];
    analyticsKeyValueDomain = v6->_analyticsKeyValueDomain;
    v6->_analyticsKeyValueDomain = v9;
  }

  return v6;
}

- (BOOL)clearStateIfNecessaryFromSettings:(id)settings usageRequirementsSatisfied:(BOOL)satisfied error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  if ([settings deviationDetectionEnabledForAnyType] && satisfied)
  {
    return 1;
  }

  keyValueDomain = self->_keyValueDomain;
  v41 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain hdmc_unconfirmedDeviationDismissalDayIndexWithError:&v41];
  v11 = v41;

  if (v10)
  {

    v12 = self->_keyValueDomain;
    v40 = 0;
    v13 = [(HDKeyValueDomain *)v12 hdmc_setUnconfirmedDeviationDismissalDayIndex:0 error:&v40];
    v14 = v40;
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      cloudSyncManager = [WeakRetained cloudSyncManager];
      v17 = objc_alloc(MEMORY[0x277CCD140]);
      v18 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
      v19 = [v17 initWithChangesSyncRequest:v18];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke;
      v39[3] = &unk_27865A7A0;
      v39[4] = self;
      [cloudSyncManager syncWithRequest:v19 reason:v21 completion:v39];

      analyticsKeyValueDomain = self->_analyticsKeyValueDomain;
      v38 = v14;
      LOBYTE(cloudSyncManager) = [(HDKeyValueDomain *)analyticsKeyValueDomain setValueForAllKeys:0 error:&v38];
      v23 = v38;

      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC2E8];
      v25 = *MEMORY[0x277CCC2E8];
      if (cloudSyncManager)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v24;
          v27 = objc_opt_class();
          *buf = 138543362;
          v43 = v27;
          v28 = v27;
          _os_log_impl(&dword_2293D1000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleared key value domain of deviation detection analytics state", buf, 0xCu);
        }

        return 1;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [HDMCDeviationInputManager clearStateIfNecessaryFromSettings:v24 usageRequirementsSatisfied:self error:?];
      }

      v31 = v23;
    }

    else
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCDeviationInputManager clearStateIfNecessaryFromSettings:v30 usageRequirementsSatisfied:self error:?];
      }

      v31 = v14;
    }

    v32 = v31;
    if (v31)
    {
      if (error)
      {
        v33 = v31;
        *error = v32;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    if (!v11)
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        v36 = objc_opt_class();
        *buf = 138543362;
        v43 = v36;
        v37 = v36;
        _os_log_impl(&dword_2293D1000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to clear in key-value domain", buf, 0xCu);
      }

      return 1;
    }

    if (error)
    {
      v29 = v11;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

void __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v10 = 138543362;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_impl(&dword_2293D1000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke_cold_1(a1, v6);
  }
}

- (void)clearStateIfNecessaryFromSettings:(void *)a1 usageRequirementsSatisfied:(uint64_t)a2 error:.cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error clearing key value domain of dismissal day index state: %{public}@", v7, v8, v9, v10);
}

- (void)clearStateIfNecessaryFromSettings:(void *)a1 usageRequirementsSatisfied:(uint64_t)a2 error:.cold.2(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error clearing key value domain of deviation detection analytics state: %{public}@", v7, v8, v9, v10);
}

void __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Cloud sync request failed: %{public}@", v7, v8, v9, v10);
}

@end