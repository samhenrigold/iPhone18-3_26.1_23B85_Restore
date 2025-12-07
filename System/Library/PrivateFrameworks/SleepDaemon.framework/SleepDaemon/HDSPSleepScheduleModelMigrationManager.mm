@interface HDSPSleepScheduleModelMigrationManager
- (BOOL)needDataMigration;
- (HDSPEnvironment)environment;
- (HDSPSleepScheduleModelMigrationManager)initWithEnvironment:(id)environment;
- (NSString)sourceIdentifier;
- (id)_migrateHomeScreenPage;
- (id)_migrateOnboardingSettings;
- (id)_migrateSleepFocus;
- (id)_migrateSleepScheduleFromMobileTimer;
- (id)_migrateToCloudKit;
- (id)performDataMigration;
@end

@implementation HDSPSleepScheduleModelMigrationManager

- (HDSPSleepScheduleModelMigrationManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPSleepScheduleModelMigrationManager;
  v5 = [(HDSPSleepScheduleModelMigrationManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
}

- (BOOL)needDataMigration
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepStorage = [WeakRetained sleepStorage];
  needsMigration = [sleepStorage needsMigration];

  return needsMigration;
}

- (id)performDataMigration
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _migrateToCloudKit = [(HDSPSleepScheduleModelMigrationManager *)self _migrateToCloudKit];
  [v3 addObject:_migrateToCloudKit];

  _migrateSleepScheduleFromMobileTimer = [(HDSPSleepScheduleModelMigrationManager *)self _migrateSleepScheduleFromMobileTimer];
  [v3 addObject:_migrateSleepScheduleFromMobileTimer];

  _migrateSleepFocus = [(HDSPSleepScheduleModelMigrationManager *)self _migrateSleepFocus];
  [v3 addObject:_migrateSleepFocus];

  _migrateOnboardingSettings = [(HDSPSleepScheduleModelMigrationManager *)self _migrateOnboardingSettings];
  [v3 addObject:_migrateOnboardingSettings];

  _migrateHomeScreenPage = [(HDSPSleepScheduleModelMigrationManager *)self _migrateHomeScreenPage];
  [v3 addObject:_migrateHomeScreenPage];

  v9 = [MEMORY[0x277D2C900] chainFutures:v3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HDSPSleepScheduleModelMigrationManager_performDataMigration__block_invoke;
  v12[3] = &unk_279C7C0A0;
  v12[4] = self;
  v10 = [v9 addSuccessBlock:v12];

  return v10;
}

void __62__HDSPSleepScheduleModelMigrationManager_performDataMigration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v1 = [v2 sleepStorage];
  [v1 saveDataVersion];
}

- (id)_migrateToCloudKit
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke;
  v7[3] = &unk_279C7C0F0;
  v7[4] = self;
  v3 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_2;
  v6[3] = &unk_279C7C118;
  v6[4] = self;
  v4 = [v3 recover:v6];

  return v4;
}

void __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained behavior];
  v6 = [v5 features];
  v7 = [v6 sleepCloudKitSync];

  if ((v7 & 1) == 0)
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = objc_opt_class();
      v14 = v19;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping CloudKit migration because feature is disabled", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = [WeakRetained sleepStorage];
  v9 = [v8 cloudStorageDataVersion];

  if (v9)
  {
LABEL_9:
    v15 = NAEmptyResult();
    [v3 finishWithResult:v15];

    goto LABEL_10;
  }

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = objc_opt_class();
    v11 = v19;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing CloudKit migration", buf, 0xCu);
  }

  v12 = [WeakRetained sleepStorage];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_294;
  v16[3] = &unk_279C7C0C8;
  v17 = v3;
  [v12 performInitialSyncWithCompletion:v16];

LABEL_10:
}

void __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_294(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];
}

id __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = HKSPLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_error_impl(&dword_269B11000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] initial sync failed, continuing anyway", &v5, 0xCu);
  }

  v2 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v2;
}

- (id)_migrateSleepScheduleFromMobileTimer
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 dataVersion];

  if (v6)
  {
LABEL_9:
    v19 = NAEmptyResult();
    [v3 finishWithResult:v19];

    goto LABEL_10;
  }

  v7 = [WeakRetained behavior];
  v8 = [v7 hksp_supportsLegacySleepAlarms];

  if ((v8 & 1) == 0)
  {
    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = objc_opt_class();
      v18 = v25;
      _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping MobileTimer migration because this device doesn't support legacy alarms", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = objc_opt_class();
    v10 = v25;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating from MobileTimer", buf, 0xCu);
  }

  v11 = [WeakRetained sleepAlarmManager];
  v12 = [v11 sleepAlarmProvider];

  v13 = [v12 sleepAlarmsFuture];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke_298;
  v20[3] = &unk_279C7C140;
  v14 = v3;
  v15 = *(a1 + 32);
  v21 = v14;
  v22 = v15;
  v23 = WeakRetained;
  v16 = [v13 addCompletionBlock:v20];

LABEL_10:
}

void __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke_298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = HKSPNilify();
    v6 = [v5 firstObject];
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v6;
      v8 = v16;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating from sleep alarm %{public}@", buf, 0x16u);
    }

    v9 = [HDSPMobileTimerBridge sleepScheduleModelFromSleepAlarm:v6];
    v10 = [*(a1 + 48) sleepStorage];
    v14 = 0;
    [v10 saveSleepScheduleModel:v9 error:&v14];
    v11 = v14;

    v12 = *(a1 + 32);
    v13 = NAEmptyResult();
    [v12 finishWithResult:v13 error:v11];
  }
}

- (id)_migrateOnboardingSettings
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__HDSPSleepScheduleModelMigrationManager__migrateOnboardingSettings__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __68__HDSPSleepScheduleModelMigrationManager__migrateOnboardingSettings__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 dataVersion];

  if (v6 < 8)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = objc_opt_class();
      v9 = v30;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating settings based on onboarding", buf, 0xCu);
    }

    v10 = [WeakRetained sleepStorage];
    v28 = 0;
    v11 = [v10 loadSleepEventRecord:&v28];
    v12 = v28;

    if (v11)
    {
      v13 = [WeakRetained sleepStorage];
      v27 = v12;
      v14 = [v13 loadSleepSettings:&v27];
      v15 = v27;

      v16 = [v14 mutableCopy];
      if (v16)
      {
        if ([v11 isAnySleepCoachingOnboardingCompleted])
        {
          v17 = HKSPLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_opt_class();
            *buf = 138543362;
            v30 = v18;
            v19 = v18;
            _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep coaching completed, enabling dnd during wind down", buf, 0xCu);
          }

          [v16 setSleepModeOptions:{objc_msgSend(v16, "sleepModeOptions") | 0x840}];
        }

        if ([v11 isAnySleepTrackingOnboardingCompleted])
        {
          v20 = HKSPLogForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            *buf = 138543362;
            v30 = v21;
            v22 = v21;
            _os_log_impl(&dword_269B11000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep tracking completed, enabling watch face", buf, 0xCu);
          }

          [v16 setSleepModeOptions:{objc_msgSend(v16, "sleepModeOptions") | 4}];
        }

        v23 = [WeakRetained sleepStorage];
        v26 = v15;
        [v23 saveSleepSettings:v16 error:&v26];
        v24 = v26;

        v15 = v24;
      }

      v25 = NAEmptyResult();
      [v3 finishWithResult:v25 error:v15];

      v12 = v15;
    }

    else
    {
      v16 = NAEmptyResult();
      [v3 finishWithResult:v16 error:v12];
    }
  }

  else
  {
    v7 = NAEmptyResult();
    [v3 finishWithResult:v7];
  }
}

- (id)_migrateSleepFocus
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateSleepFocus__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __60__HDSPSleepScheduleModelMigrationManager__migrateSleepFocus__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 dataVersion];

  if (v6 < 6)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = objc_opt_class();
      v9 = v32;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating sleep focus", buf, 0xCu);
    }

    v10 = [WeakRetained sleepStorage];
    v30 = 0;
    v11 = [v10 loadSleepEventRecord:&v30];
    v12 = v30;

    if (!v11)
    {
      v14 = NAEmptyResult();
      [v3 finishWithResult:v14 error:v12];
      v15 = v12;
LABEL_22:

      goto LABEL_23;
    }

    v13 = [WeakRetained sleepStorage];
    v29 = v12;
    v14 = [v13 loadSleepSettings:&v29];
    v15 = v29;

    if (!v14)
    {
      v21 = NAEmptyResult();
      [v3 finishWithResult:v21 error:v15];
LABEL_21:

      goto LABEL_22;
    }

    if (([v11 isAnySleepCoachingOnboardingCompleted] & 1) != 0 || objc_msgSend(v14, "scheduledSleepMode"))
    {
      v16 = HKSPLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        *buf = 138543362;
        v32 = v17;
        v18 = v17;
        _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating sleep focus because we've already onboarded or enabled scheduledSleepMode", buf, 0xCu);
      }

      v19 = [WeakRetained sleepModeManager];
      v28 = 0;
      v20 = [v19 createFocusModeInState:objc_msgSend(MEMORY[0x277D624E8] error:{"defaultConfigurationState"), &v28}];
      v21 = v28;

      if (v20)
      {
        goto LABEL_20;
      }

      v22 = HKSPLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v32 = v23;
        v24 = v23;
        _os_log_error_impl(&dword_269B11000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] failed to migrate sleep focus", buf, 0xCu);
      }
    }

    else
    {
      v22 = HKSPLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        *buf = 138543362;
        v32 = v25;
        v26 = v25;
        _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping focus creation", buf, 0xCu);
      }

      v21 = 0;
    }

LABEL_20:
    v27 = NAEmptyResult();
    [v3 finishWithResult:v27 error:v21];

    goto LABEL_21;
  }

  v7 = NAEmptyResult();
  [v3 finishWithResult:v7];

LABEL_23:
}

- (id)_migrateHomeScreenPage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 localDataVersion];

  if (v6)
  {
    [v3 finishWithNoResult];
  }

  else
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = objc_opt_class();
      v8 = v33;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating home screen", buf, 0xCu);
    }

    v9 = [WeakRetained sleepStorage];
    v31 = 0;
    v10 = [v9 loadSleepEventRecord:&v31];
    v11 = v31;

    if (v10)
    {
      v12 = [WeakRetained sleepStorage];
      v30 = v11;
      v13 = [v12 loadSleepSettings:&v30];
      v14 = v30;

      v15 = [v13 mutableCopy];
      if (v15)
      {
        if ([v10 isAnySleepWindDownShortcutsOnboardingCompleted] && (objc_msgSend(MEMORY[0x277CBEBD0], "hksp_springBoardUserDefaults"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hksp_BOOLForKey:", *MEMORY[0x277D62028]), v16, v17))
        {
          v18 = HKSPLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *buf = 138543362;
            v33 = v19;
            v20 = v19;
            _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating home screen page because we've already onboarded shortcuts", buf, 0xCu);
          }

          v21 = [WeakRetained sleepModeManager];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke_303;
          v26[3] = &unk_279C7C168;
          v26[4] = *(a1 + 32);
          v27 = v3;
          v15 = v15;
          v28 = v15;
          v29 = WeakRetained;
          [v21 createHomeScreenPageWithCompletion:v26];
        }

        else
        {
          v22 = HKSPLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            *buf = 138543362;
            v33 = v23;
            v24 = v23;
            _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping home screen page creation because we haven't onboarded shortcuts", buf, 0xCu);
          }

          [v3 finishWithNoResult];
        }
      }

      else
      {
        v25 = NAEmptyResult();
        [v3 finishWithResult:v25 error:v14];
      }
    }

    else
    {
      v15 = NAEmptyResult();
      [v3 finishWithResult:v15 error:v11];
      v14 = v11;
    }
  }
}

void __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke_303(id *a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      v10 = v13;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to migrate home screen: %{public}@", buf, 0x16u);
    }

    [a1[5] finishWithError:v6];
  }

  else
  {
    if (a2)
    {
      [a1[6] setSpringBoardSuggestedPageCreated:1];
      v8 = [a1[7] sleepStorage];
      v9 = a1[6];
      v11 = 0;
      [v8 saveSleepSettings:v9 error:&v11];
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }

    [a1[5] finishWithNoResult];
  }
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end