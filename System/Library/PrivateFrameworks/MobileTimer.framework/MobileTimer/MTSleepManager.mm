@interface MTSleepManager
+ (id)nextSleepAlarm;
+ (void)nextSleepAlarm;
- (BOOL)_didCompleteSleepOnboarding;
- (BOOL)watchSleepFeaturesEnabled;
- (MTSleepManager)initWithAlarmStorage:(id)storage;
- (MTSleepManager)initWithAlarmStorage:(id)storage sleepStoreProvider:(id)provider featureStoreProvider:(id)storeProvider healthStore:(id)store persistence:(id)persistence;
- (id)sourceIdentifier;
- (void)markSleepMigrationComplete;
- (void)resetSleepAlarmSnoozeState;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action;
- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action;
- (void)source:(id)source didUpdateAlarms:(id)alarms;
- (void)updateSleepAlarms;
@end

@implementation MTSleepManager

- (MTSleepManager)initWithAlarmStorage:(id)storage
{
  storageCopy = storage;
  getHKHealthStoreClass();
  v5 = objc_opt_new();
  v6 = +[MTUserDefaults sharedUserDefaults];
  v7 = [(MTSleepManager *)self initWithAlarmStorage:storageCopy sleepStoreProvider:&__block_literal_global_48 featureStoreProvider:&__block_literal_global_301 healthStore:v5 persistence:v6];

  return v7;
}

id __39__MTSleepManager_initWithAlarmStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69D3690];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithIdentifier:v6 healthStore:v5];

  return v7;
}

id __39__MTSleepManager_initWithAlarmStorage___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E69D3688]);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr;
  v11 = getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr;
  if (!getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr)
  {
    v5 = HealthKitLibrary_1();
    v9[3] = dlsym(v5, "HKFeatureIdentifierSleepCoaching");
    getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    __39__MTSleepManager_initWithAlarmStorage___block_invoke_2_cold_1();
  }

  v6 = [v3 initWithFeatureIdentifier:*v4 sleepStore:v2];

  return v6;
}

- (MTSleepManager)initWithAlarmStorage:(id)storage sleepStoreProvider:(id)provider featureStoreProvider:(id)storeProvider healthStore:(id)store persistence:(id)persistence
{
  v34 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  providerCopy = provider;
  storeProviderCopy = storeProvider;
  storeCopy = store;
  persistenceCopy = persistence;
  v31.receiver = self;
  v31.super_class = MTSleepManager;
  v18 = [(MTSleepManager *)&v31 init];
  if (v18)
  {
    v19 = MTLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v18;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep manager initialized", buf, 0xCu);
    }

    objc_storeStrong(&v18->_alarmStorage, storage);
    [(MTAlarmStorage *)v18->_alarmStorage registerObserver:v18];
    [(MTSleepManager *)v18 setHealthStore:storeCopy];
    v20 = [providerCopy copy];
    [(MTSleepManager *)v18 setSleepStoreProvider:v20];

    sleepStoreProvider = [(MTSleepManager *)v18 sleepStoreProvider];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    healthStore = [(MTSleepManager *)v18 healthStore];
    v25 = (sleepStoreProvider)[2](sleepStoreProvider, v23, healthStore);
    [(MTSleepManager *)v18 setSleepStore:v25];

    sleepStore = [(MTSleepManager *)v18 sleepStore];
    [sleepStore addObserver:v18];

    sleepStore2 = [(MTSleepManager *)v18 sleepStore];
    v28 = storeProviderCopy[2](storeProviderCopy, sleepStore2);
    [(MTSleepManager *)v18 setFeatureStore:v28];

    [(MTSleepManager *)v18 setPersistence:persistenceCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel_updateSleepAlarms name:@"com.apple.MTAlarmStorage.updateSleepAlarms" object:0];
  }

  return v18;
}

- (void)updateSleepAlarms
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ updateSleepAlarms", buf, 0xCu);
  }

  if (MTShouldHandleForEucalyptus())
  {
    [(MTSleepManager *)self markSleepMigrationComplete];
    v4 = MTLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy7 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieving sleep schedule model", buf, 0xCu);
    }

    sleepStoreProvider = [(MTSleepManager *)self sleepStoreProvider];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@-updateSleepAlarms", v8];
    v10 = (sleepStoreProvider)[2](sleepStoreProvider, v9, 0);

    v29 = 0;
    v11 = [v10 sleepScheduleModelWithError:&v29];
    v12 = v29;
    v13 = MTLogForCategory(7);
    v14 = v13;
    if (!v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MTSleepManager updateSleepAlarms];
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy7 = self;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved sleep schedule model: %{public}@", buf, 0x16u);
    }

    sleepSchedule = [v11 sleepSchedule];
    v14 = sleepSchedule;
    if (sleepSchedule)
    {
      occurrences = [sleepSchedule occurrences];
      sleepEventRecord = [v11 sleepEventRecord];
      v18 = MTLogForCategory(7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy7 = self;
        _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ mapping sleep model to alarms", buf, 0xCu);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __35__MTSleepManager_updateSleepAlarms__block_invoke;
      v26[3] = &unk_1E7B0FBF0;
      v14 = v14;
      v27 = v14;
      v28 = sleepEventRecord;
      v19 = sleepEventRecord;
      v20 = [occurrences na_map:v26];
      v21 = MTLogForCategory(7);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy7 = self;
        _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ setting mapped alarms to storage", buf, 0xCu);
      }

      [(MTAlarmStorage *)self->_alarmStorage updateSleepAlarms:v20 source:self];
      goto LABEL_24;
    }

    _didCompleteSleepOnboarding = [(MTSleepManager *)self _didCompleteSleepOnboarding];
    v23 = MTLogForCategory(7);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (_didCompleteSleepOnboarding)
    {
      if (v24)
      {
        *buf = 138543362;
        selfCopy7 = self;
        v25 = "%{public}@ sleep schedule is nil after completing onboarding.";
LABEL_22:
        _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
      }
    }

    else if (v24)
    {
      *buf = 138543362;
      selfCopy7 = self;
      v25 = "%{public}@ sleep schedule is nil before completing onboarding";
      goto LABEL_22;
    }

    [(MTAlarmStorage *)self->_alarmStorage updateSleepAlarms:MEMORY[0x1E695E0F0] source:self];
LABEL_24:
  }
}

id __35__MTSleepManager_updateSleepAlarms__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 isEnabled];
  v6 = [*(a1 + 40) wakeUpConfirmedUntilDate];
  v7 = [MTSleepUtilities alarmFromSleepOccurrence:v4 scheduleEnabled:v5 keepOffUntilDate:v6];

  return v7;
}

- (BOOL)_didCompleteSleepOnboarding
{
  v16 = *MEMORY[0x1E69E9840];
  featureStore = [(MTSleepManager *)self featureStore];
  v9 = 0;
  v4 = [featureStore isCurrentOnboardingVersionCompletedWithError:&v9];
  v5 = v9;

  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ completed sleep onboarding check with result: %{public}@, error: %{public}@ ", buf, 0x20u);
  }

  if (v5)
  {
    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v4 BOOLValue];
  }

  return bOOLValue;
}

- (void)resetSleepAlarmSnoozeState
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resetSleepAlarmSnoozeState", &v4, 0xCu);
  }

  if (MTShouldHandleForEucalyptus())
  {
    [(MTAlarmStorage *)self->_alarmStorage updateSleepAlarmsWithBlock:&__block_literal_global_315 source:self];
  }
}

- (BOOL)watchSleepFeaturesEnabled
{
  v18 = *MEMORY[0x1E69E9840];
  persistence = [(MTSleepManager *)self persistence];
  v4 = [persistence objectForKey:@"MTNeedsSleepMigration"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = MTLogForCategory(7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, "%{public}@ needs sleep migration, fetching watchSleepFeaturesEnabled async", buf, 0xCu);
    }

    sleepStore = [(MTSleepManager *)self sleepStore];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke;
    v15[3] = &unk_1E7B0FC38;
    v15[4] = self;
    [sleepStore currentSleepSettingsWithCompletion:v15];

    return 0;
  }

  else
  {
    sleepStore2 = [(MTSleepManager *)self sleepStore];
    v14 = 0;
    v10 = [sleepStore2 currentSleepSettingsWithError:&v14];
    v11 = v14;
    watchSleepFeaturesEnabled = [v10 watchSleepFeaturesEnabled];

    if (v11)
    {
      v12 = MTLogForCategory(7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MTSleepManager watchSleepFeaturesEnabled];
      }
    }
  }

  return watchSleepFeaturesEnabled;
}

void __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = MTLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke_cold_1(a1, v4, v5);
    }
  }

  else
  {
    [*(a1 + 32) markSleepMigrationComplete];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:MTSleepManagerSettingsDidChange object:0];
  }
}

- (void)markSleepMigrationComplete
{
  persistence = [(MTSleepManager *)self persistence];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [persistence setObject:v2 forKey:@"MTNeedsSleepMigration"];
}

- (id)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:MTSleepManagerSettingsDidChange object:0];
}

+ (id)nextSleepAlarm
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching sleep alarm from health", buf, 0xCu);
  }

  getHKHealthStoreClass();
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x1E69D3690]) initWithHealthStore:v4];
  mtNow = [MEMORY[0x1E695DF00] mtNow];
  v14 = 0;
  v7 = [v5 upcomingScheduleOccurrenceAfterDate:mtNow error:&v14];
  v8 = v14;

  if (v8)
  {
    v9 = MTLogForCategory(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[MTSleepManager nextSleepAlarm];
    }

    goto LABEL_10;
  }

  v13 = 0;
  v9 = [v5 currentSleepScheduleWithError:&v13];
  v8 = v13;
  if (v8)
  {
    v10 = MTLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[MTSleepManager nextSleepAlarm];
    }

LABEL_9:

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (!v7)
  {
    v10 = MTLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[(MTSleepManager *)self];
    }

    goto LABEL_9;
  }

  v11 = [MTSleepUtilities alarmFromSleepOccurrence:v7 scheduleEnabled:v9 != 0 keepOffUntilDate:0];
LABEL_11:

  return v11;
}

- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action
{
  v30 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  alarmCopy = alarm;
  if ([alarmCopy isSleepAlarm])
  {
    if (action <= 0xB && ((1 << action) & 0x8E0) != 0)
    {
      v10 = MTLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        alarmIDString = [alarmCopy alarmIDString];
        dismissedDate = [alarmCopy dismissedDate];
        v13 = MTDismissAlarmActionDescription(action);
        *buf = 138544130;
        selfCopy2 = self;
        v24 = 2114;
        v25 = alarmIDString;
        v26 = 2114;
        v27 = dismissedDate;
        v28 = 2114;
        v29 = v13;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ informing sleep store of alarm dismiss: %{public}@, dismiss date:%{public}@ action: %{public}@", buf, 0x2Au);
      }

      if (objc_opt_respondsToSelector())
      {
        isFromOtherDevice = [sourceCopy isFromOtherDevice];
      }

      else
      {
        isFromOtherDevice = 0;
      }

      sleepStore = [(MTSleepManager *)self sleepStore];
      dismissedDate2 = [alarmCopy dismissedDate];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __55__MTSleepManager_source_didDismissAlarm_dismissAction___block_invoke;
      v20[3] = &unk_1E7B0FC60;
      v20[4] = self;
      v21 = alarmCopy;
      [sleepStore sleepAlarmWasDismissedOnDate:dismissedDate2 source:isFromOtherDevice completion:v20];
    }

    else
    {
      v17 = MTLogForCategory(7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        alarmIDString2 = [alarmCopy alarmIDString];
        v19 = MTDismissAlarmActionDescription(action);
        *buf = 138543874;
        selfCopy2 = self;
        v24 = 2114;
        v25 = alarmIDString2;
        v26 = 2114;
        v27 = v19;
        _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ not informing sleep store of alarm dismiss: %{public}@, action: %{public}@", buf, 0x20u);
      }
    }
  }
}

void __55__MTSleepManager_source_didDismissAlarm_dismissAction___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) alarmIDString];
    v9 = 138544130;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep store sleepAlarmWasDismissedOnDate completed for alarm id: %{public}@ with status: %d, error: %{public}@", &v9, 0x26u);
  }
}

- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action
{
  sourceCopy = source;
  alarmCopy = alarm;
  if ([alarmCopy isSleepAlarm])
  {
    if (objc_opt_respondsToSelector())
    {
      isFromOtherDevice = [sourceCopy isFromOtherDevice];
    }

    else
    {
      isFromOtherDevice = 0;
    }

    sleepStore = [(MTSleepManager *)self sleepStore];
    snoozeFireDate = [alarmCopy snoozeFireDate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__MTSleepManager_source_didSnoozeAlarm_snoozeAction___block_invoke;
    v12[3] = &unk_1E7B0FC60;
    v12[4] = self;
    v13 = alarmCopy;
    [sleepStore sleepAlarmWasSnoozedUntilDate:snoozeFireDate source:isFromOtherDevice completion:v12];
  }
}

void __53__MTSleepManager_source_didSnoozeAlarm_snoozeAction___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) alarmIDString];
    v9 = 138544130;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep store sleepAlarmWasSnoozedUntilDate completed for alarm id: %{public}@ with status: %d, error: %{public}@", &v9, 0x26u);
  }
}

- (void)source:(id)source didUpdateAlarms:(id)alarms
{
  sourceCopy = source;
  if ([alarms na_any:&__block_literal_global_324])
  {
    if (objc_opt_respondsToSelector())
    {
      isFromOtherDevice = [sourceCopy isFromOtherDevice];
    }

    else
    {
      isFromOtherDevice = 0;
    }

    sleepStore = [(MTSleepManager *)self sleepStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__MTSleepManager_source_didUpdateAlarms___block_invoke_2;
    v9[3] = &unk_1E7B0FC88;
    v9[4] = self;
    [sleepStore sleepAlarmWasModifiedFromSource:isFromOtherDevice completion:v9];
  }
}

void __41__MTSleepManager_source_didUpdateAlarms___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep store sleepAlarmWasModified completed with status: %d, error: %{public}@", &v8, 0x1Cu);
  }
}

void __39__MTSleepManager_initWithAlarmStorage___block_invoke_2_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKFeatureIdentifier getHKFeatureIdentifierSleepCoaching(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepManager.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

void __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, a2, a3, "%{public}@ failed to get sleep settings, error: %{public}@ ", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

+ (void)nextSleepAlarm
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ no upcoming sleep schedule occurrence", &v2, 0xCu);
}

@end