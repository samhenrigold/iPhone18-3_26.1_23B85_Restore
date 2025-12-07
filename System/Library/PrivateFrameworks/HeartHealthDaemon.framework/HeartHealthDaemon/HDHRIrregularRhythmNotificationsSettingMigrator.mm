@interface HDHRIrregularRhythmNotificationsSettingMigrator
- (HDHRIrregularRhythmNotificationsSettingMigrator)initWithV1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager;
- (void)_startObservingSettingChanges;
- (void)_syncSettingIfPossibleFromManager:(id)manager toManager:(id)toManager;
- (void)_syncSettingIfPossibleFromSource:(id)source;
@end

@implementation HDHRIrregularRhythmNotificationsSettingMigrator

- (HDHRIrregularRhythmNotificationsSettingMigrator)initWithV1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager
{
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  v14.receiver = self;
  v14.super_class = HDHRIrregularRhythmNotificationsSettingMigrator;
  v9 = [(HDHRIrregularRhythmNotificationsSettingMigrator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_v1FeatureAvailabilityManager, manager);
    objc_storeStrong(&v10->_v2FeatureAvailabilityManager, availabilityManager);
    v11 = HKCreateSerialDispatchQueue();
    queue = v10->_queue;
    v10->_queue = v11;

    [(HDHRIrregularRhythmNotificationsSettingMigrator *)v10 _startObservingSettingChanges];
  }

  return v10;
}

- (void)_startObservingSettingChanges
{
  [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager registerObserver:self queue:self->_queue];
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  queue = self->_queue;

  [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager registerObserver:self queue:queue];
}

- (void)_syncSettingIfPossibleFromSource:(id)source
{
  sourceCopy = source;
  featureIdentifier = [sourceCopy featureIdentifier];
  v5 = 8;
  if (featureIdentifier == *MEMORY[0x277CCC078])
  {
    v5 = 16;
  }

  v6 = *(&self->super.isa + v5);

  [(HDHRIrregularRhythmNotificationsSettingMigrator *)self _syncSettingIfPossibleFromManager:sourceCopy toManager:v6];
}

- (void)_syncSettingIfPossibleFromManager:(id)manager toManager:(id)toManager
{
  v72 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  toManagerCopy = toManager;
  v63 = 0;
  v8 = [managerCopy featureOnboardingRecordWithError:&v63];
  v9 = v63;
  v10 = v9;
  if (v8)
  {
    v62 = v9;
    v11 = [toManagerCopy featureOnboardingRecordWithError:&v62];
    v12 = v62;

    if (v11)
    {
      if ([v8 onboardingState] == 1)
      {
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          log = v13;
          v14 = objc_opt_class();
          v53 = v14;
          featureIdentifier = [managerCopy featureIdentifier];
          featureIdentifier2 = [toManagerCopy featureIdentifier];
          featureIdentifier3 = [managerCopy featureIdentifier];
          *buf = 138544130;
          v65 = v14;
          v66 = 2114;
          v67 = featureIdentifier;
          v68 = 2114;
          v69 = featureIdentifier2;
          v70 = 2114;
          v71 = featureIdentifier3;
LABEL_14:
          v20 = log;
          _os_log_impl(&dword_229486000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping setting sync from %{public}@ to %{public}@: %{public}@ is not onboarded", buf, 0x2Au);

LABEL_27:
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if ([v11 onboardingState] == 1)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          log = v24;
          v25 = objc_opt_class();
          v53 = v25;
          featureIdentifier = [managerCopy featureIdentifier];
          featureIdentifier2 = [toManagerCopy featureIdentifier];
          featureIdentifier3 = [toManagerCopy featureIdentifier];
          *buf = 138544130;
          v65 = v25;
          v66 = 2114;
          v67 = featureIdentifier;
          v68 = 2114;
          v69 = featureIdentifier2;
          v70 = 2114;
          v71 = featureIdentifier3;
          goto LABEL_14;
        }

LABEL_28:

        goto LABEL_29;
      }

      featureSettings = [v8 featureSettings];
      v27 = *MEMORY[0x277CCC120];
      v20 = [featureSettings numberForKey:*MEMORY[0x277CCC120]];

      featureSettings2 = [v11 featureSettings];
      v22 = [featureSettings2 numberForKey:v27];

      if (v20 == v22 || v22 && [v20 isEqual:v22])
      {
        _HKInitializeLogging();
        v29 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          v48 = v29;
          v30 = objc_opt_class();
          logb = v30;
          featureIdentifier4 = [managerCopy featureIdentifier];
          featureIdentifier5 = [toManagerCopy featureIdentifier];
          *buf = 138543874;
          v65 = v30;
          v66 = 2114;
          v67 = featureIdentifier4;
          v68 = 2114;
          v69 = featureIdentifier5;
          _os_log_impl(&dword_229486000, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping setting sync from %{public}@ to %{public}@: setting values already match", buf, 0x20u);
        }
      }

      else
      {
        featureIdentifier6 = [toManagerCopy featureIdentifier];
        v34 = v20;
        v35 = featureIdentifier6;
        v54 = v34;
        if (v34)
        {
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296;
          v55[3] = &unk_278660150;
          v55[4] = self;
          v36 = v34;
          v56 = v36;
          v37 = &v57;
          v57 = managerCopy;
          v58 = v35;
          v38 = v36;
          v39 = &v56;
          [toManagerCopy setFeatureSettingNumber:v38 forKey:v27 completion:v55];
        }

        else
        {
          loga = featureIdentifier6;
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC2D8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
          {
            v47 = v44;
            v45 = objc_opt_class();
            v49 = v45;
            featureIdentifier7 = [managerCopy featureIdentifier];
            *buf = 138543618;
            v65 = v45;
            v66 = 2114;
            v67 = featureIdentifier7;
            _os_log_impl(&dword_229486000, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detected removal of setting from %{public}@", buf, 0x16u);
          }

          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke;
          v59[3] = &unk_278660128;
          v59[4] = self;
          v39 = &v60;
          v60 = managerCopy;
          v37 = &v61;
          v35 = loga;
          v61 = loga;
          [toManagerCopy removeFeatureSettingValueForKey:v27 completion:v59];
        }

        v20 = v54;
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v20 = v19;
      v21 = objc_opt_class();
      v22 = v21;
      featureIdentifier8 = [toManagerCopy featureIdentifier];
      *buf = 138543874;
      v65 = v21;
      v66 = 2114;
      v67 = featureIdentifier8;
      v68 = 2114;
      v69 = v12;
      _os_log_error_impl(&dword_229486000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve onboarding record for %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_27;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    v40 = v18;
    v41 = objc_opt_class();
    v42 = v41;
    featureIdentifier9 = [managerCopy featureIdentifier];
    *buf = 138543874;
    v65 = v41;
    v66 = 2114;
    v67 = featureIdentifier9;
    v68 = 2114;
    v69 = v10;
    _os_log_error_impl(&dword_229486000, v40, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve onboarding record for %{public}@: %{public}@", buf, 0x20u);
  }

  v12 = v10;
LABEL_29:
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  v7 = *MEMORY[0x277CCC2D8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = objc_opt_class();
      v10 = a1[5];
      v11 = v9;
      v12 = [v10 featureIdentifier];
      v13 = a1[6];
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully synced setting (removal) from %{public}@ to %{public}@", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_cold_1(a1, v6);
  }
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296(void *a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  v7 = *MEMORY[0x277CCC2D8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = objc_opt_class();
      v11 = a1[5];
      v10 = a1[6];
      v12 = v9;
      v13 = [v10 featureIdentifier];
      v14 = a1[7];
      v15 = 138544130;
      v16 = v9;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully synced updated setting (%{public}@) from %{public}@ to %{public}@", &v15, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296_cold_1(a1, v6);
  }
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = v4;
  v7 = [v5 featureIdentifier];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5(&dword_229486000, v8, v9, "[%{public}@] Error syncing setting (removal) from %{public}@ to %{public}@: %{public}@", v10, v11, v12, v13);
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 48);
  v6 = v4;
  v7 = [v5 featureIdentifier];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5(&dword_229486000, v8, v9, "[%{public}@] Error syncing setting from %{public}@ to %{public}@: %{public}@", v10, v11, v12, v13);
}

@end