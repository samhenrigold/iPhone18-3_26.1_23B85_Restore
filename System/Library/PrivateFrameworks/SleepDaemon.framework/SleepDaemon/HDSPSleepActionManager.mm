@interface HDSPSleepActionManager
+ (BOOL)_isValidSnoozeDate:(id)date;
+ (id)_latestDateInAlarms:(id)alarms dateBlock:(id)block;
- (HDSPEnvironment)environment;
- (HDSPSleepActionManager)initWithEnvironment:(id)environment;
- (NSString)sourceIdentifier;
- (void)confirmWakeUp:(BOOL)up;
- (void)confirmWakeUp:(BOOL)up date:(id)date;
- (void)confirmWakeUp:(BOOL)up date:(id)date confirmUntilDate:(id)untilDate;
- (void)dismissGoodMorning;
- (void)dismissGoodMorningOnDate:(id)date;
- (void)dismissSleepLock;
- (void)sleepAlarmDismissedOnDate:(id)date source:(unint64_t)source;
- (void)sleepAlarmSnoozedUntilDate:(id)date source:(unint64_t)source;
- (void)sleepAlarmWasModified;
@end

@implementation HDSPSleepActionManager

- (HDSPSleepActionManager)initWithEnvironment:(id)environment
{
  v20 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = HDSPSleepActionManager;
  v5 = [(HDSPSleepActionManager *)&v15 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v17 = v7;
      v18 = 2048;
      v19 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v5->_environment, environmentCopy);
    v9 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v11 = [v9 initWithCallbackScheduler:defaultCallbackScheduler];
    observers = v5->_observers;
    v5->_observers = v11;

    v13 = v5;
  }

  return v5;
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)confirmWakeUp:(BOOL)up
{
  upCopy = up;
  *&v21[13] = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    environment = [(HDSPSleepActionManager *)self environment];
    currentSource = [environment currentSource];
    v18 = 138543874;
    v19 = v6;
    v20 = 1024;
    *v21 = upCopy;
    v21[2] = 2114;
    *&v21[3] = currentSource;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up early confirmed (wasExplicitConfirmation: %d, %{public}@)", &v18, 0x1Cu);
  }

  environment2 = [(HDSPSleepActionManager *)self environment];
  sleepCoordinator = [environment2 sleepCoordinator];
  [sleepCoordinator currentSleepScheduleState];

  if (HKSPSleepScheduleStateIsForBedtime() & 1) != 0 || (HKSPSleepScheduleStateIsForWindDown())
  {
    environment3 = [(HDSPSleepActionManager *)self environment];
    currentDateProvider = [environment3 currentDateProvider];
    v14 = currentDateProvider[2]();

    [(HDSPSleepActionManager *)self confirmWakeUp:upCopy date:v14];
  }

  else
  {
    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromHKSPSleepScheduleState();
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      *v21 = v17;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring request to confirm wake up due to state %{public}@", &v18, 0x16u);
    }
  }
}

- (void)confirmWakeUp:(BOOL)up date:(id)date
{
  upCopy = up;
  dateCopy = date;
  environment = [(HDSPSleepActionManager *)self environment];
  sleepScheduleModelManager = [environment sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];
  v9 = [sleepScheduleModel computeConfirmedWakeUpUntilDateForEarlyWakeUpDate:dateCopy];

  [(HDSPSleepActionManager *)self confirmWakeUp:upCopy date:dateCopy confirmUntilDate:v9];
}

- (void)confirmWakeUp:(BOOL)up date:(id)date confirmUntilDate:(id)untilDate
{
  upCopy = up;
  v43 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  untilDateCopy = untilDate;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    source = [currentContext source];
    *buf = 138544386;
    v34 = v13;
    v35 = 2114;
    v36 = dateCopy;
    v37 = 2114;
    v38 = untilDateCopy;
    v39 = 1024;
    v40 = upCopy;
    v41 = 2114;
    v42 = source;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up notification confirmed at %{public}@, until %{public}@, (wasExplicitConfirmation: %d, %{public}@)", buf, 0x30u);
  }

  environment2 = [(HDSPSleepActionManager *)self environment];
  sleepScheduleModelManager = [environment2 sleepScheduleModelManager];
  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
  v19 = [sleepEventRecord mutableCopy];

  [v19 setWakeUpEarlyNotificationConfirmedDate:dateCopy];
  [v19 setWakeUpConfirmedUntilDate:untilDateCopy];
  environment3 = [(HDSPSleepActionManager *)self environment];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke;
  v27[3] = &unk_279C7CC40;
  v28 = sleepScheduleModelManager;
  v29 = v19;
  v32 = upCopy;
  selfCopy = self;
  v31 = currentContext;
  v21 = currentContext;
  v22 = v19;
  v23 = sleepScheduleModelManager;
  source2 = [v21 source];
  sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
  v26 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
  [environment3 perform:v27 withSource:v26];
}

void __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v11 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_2;
  v8[3] = &unk_279C7CC18;
  v3 = *(a1 + 56);
  v8[4] = *(a1 + 48);
  v10 = *(a1 + 64);
  v9 = v3;
  LOBYTE(v2) = [v1 saveSleepEventRecord:v2 error:&v11 preNotifyBlock:v8];
  v4 = v11;
  if ((v2 & 1) == 0)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      *buf = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v4;
      v7 = v6;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }
}

id __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_3;
  v5[3] = &unk_279C7CBF0;
  v5[4] = v1;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  v3 = [v2 enumerateObserversWithFutureBlock:v5];

  return v3;
}

id __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_4;
    v10 = &unk_279C7CAC8;
    v11 = v3;
    v12 = *(a1 + 48);
    [v4 perform:&v7 withContext:*(a1 + 40)];
  }

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v5;
}

- (void)dismissGoodMorning
{
  environment = [(HDSPSleepActionManager *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v5 = currentDateProvider[2]();

  [(HDSPSleepActionManager *)self dismissGoodMorningOnDate:v5];
}

- (void)dismissGoodMorningOnDate:(id)date
{
  v35 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    source = [currentContext source];
    *buf = 138543618;
    v32 = v8;
    v33 = 2114;
    v34 = source;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing good morning (%{public}@)", buf, 0x16u);
  }

  environment2 = [(HDSPSleepActionManager *)self environment];
  sleepScheduleModelManager = [environment2 sleepScheduleModelManager];

  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
  v14 = [sleepEventRecord mutableCopy];

  [v14 setGoodMorningDismissedDate:dateCopy];
  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    goodMorningDismissedDate = [v14 goodMorningDismissedDate];
    *buf = 138543618;
    v32 = v16;
    v33 = 2114;
    v34 = goodMorningDismissedDate;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Good morning was dismissed %{public}@", buf, 0x16u);
  }

  environment3 = [(HDSPSleepActionManager *)self environment];
  v26 = MEMORY[0x277D85DD0];
  v27 = sleepScheduleModelManager;
  v28 = v14;
  selfCopy = self;
  v30 = currentContext;
  v20 = currentContext;
  v21 = v14;
  v22 = sleepScheduleModelManager;
  source2 = [v20 source];
  sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
  v25 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
  [environment3 perform:&v26 withSource:v25];
}

void __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_2;
  v8[3] = &unk_279C7CC90;
  v3 = a1[7];
  v8[4] = a1[6];
  v9 = v3;
  LOBYTE(v2) = [v1 saveSleepEventRecord:v2 error:&v10 preNotifyBlock:v8];
  v4 = v10;
  if ((v2 & 1) == 0)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      *buf = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v4;
      v7 = v6;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }
}

id __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_3;
  v6[3] = &unk_279C7CC68;
  v6[4] = v2;
  v7 = v1;
  v4 = [v3 enumerateObserversWithFutureBlock:v6];

  return v4;
}

id __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_4;
    v7[3] = &unk_279C7B108;
    v8 = v3;
    [v4 perform:v7 withContext:*(a1 + 40)];
  }

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v5;
}

- (void)dismissSleepLock
{
  v17 = *MEMORY[0x277D85DE8];
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    source = [currentContext source];
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = source;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissed sleep lock (%{public}@)", buf, 0x16u);
  }

  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HDSPSleepActionManager_dismissSleepLock__block_invoke;
  v11[3] = &unk_279C7CCE0;
  v11[4] = self;
  v12 = currentContext;
  v10 = currentContext;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v11];
}

void __42__HDSPSleepActionManager_dismissSleepLock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__HDSPSleepActionManager_dismissSleepLock__block_invoke_2;
    v5[3] = &unk_279C7B108;
    v6 = v3;
    [v4 perform:v5 withContext:*(a1 + 40)];
  }
}

- (void)sleepAlarmDismissedOnDate:(id)date source:(unint64_t)source
{
  v54 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    source = [currentContext source];
    *buf = 138543874;
    v49 = v10;
    v50 = 2114;
    v51 = dateCopy;
    v52 = 2114;
    v53 = source;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm did dismiss: %{public}@ (%{public}@)", buf, 0x20u);
  }

  if (dateCopy)
  {
    environment2 = [(HDSPSleepActionManager *)self environment];
    currentDateProvider = [environment2 currentDateProvider];
    v15 = currentDateProvider[2]();

    [dateCopy timeIntervalSinceDate:v15];
    if (fabs(v16) > 86400.0)
    {
      sleepScheduleModelManager = HKSPLogForCategory();
      if (os_log_type_enabled(sleepScheduleModelManager, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138543618;
        v49 = v18;
        v50 = 2114;
        v51 = dateCopy;
        v19 = v18;
        _os_log_error_impl(&dword_269B11000, sleepScheduleModelManager, OS_LOG_TYPE_ERROR, "[%{public}@] ignoring sleepAlarm with old dismiss date: %{public}@", buf, 0x16u);
      }

      goto LABEL_19;
    }

    environment3 = [(HDSPSleepActionManager *)self environment];
    sleepScheduleModelManager = [environment3 sleepScheduleModelManager];

    environment4 = [(HDSPSleepActionManager *)self environment];
    sleepCoordinator = [environment4 sleepCoordinator];
    currentSleepScheduleState = [sleepCoordinator currentSleepScheduleState];

    if (currentSleepScheduleState != 6)
    {
      sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];
      v27 = [sleepScheduleModel closestEventWithIdentifier:*MEMORY[0x277D621E0] dueAroundDate:v15];
      if (([v27 hksp_isWithinInterval:dateCopy ofDate:60.0] & 1) == 0)
      {
        v37 = HKSPLogForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = objc_opt_class();
          v39 = v38;
          v40 = NSStringFromHKSPSleepScheduleState();
          *buf = 138543618;
          v49 = v38;
          v50 = 2114;
          v51 = v40;
          _os_log_impl(&dword_269B11000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring sleepAlarm dismissed outside of allowed window during %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }
    }

    sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
    v29 = [sleepEventRecord mutableCopy];

    [v29 setWakeUpAlarmDismissedDate:dateCopy];
    v30 = HKSPLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v41 = v31;
      wakeUpAlarmDismissedDate = [v29 wakeUpAlarmDismissedDate];
      *buf = 138543618;
      v49 = v31;
      v50 = 2114;
      v51 = wakeUpAlarmDismissedDate;
      _os_log_impl(&dword_269B11000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm dismissed at %{public}@", buf, 0x16u);
    }

    environment5 = [(HDSPSleepActionManager *)self environment];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke;
    v42[3] = &unk_279C7CD58;
    v43 = sleepScheduleModelManager;
    v44 = v29;
    selfCopy = self;
    sourceCopy = source;
    v46 = currentContext;
    sleepScheduleModel = v29;
    source2 = [v46 source];
    sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
    v36 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
    [environment5 perform:v42 withSource:v36];

    v27 = v43;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v20 = objc_opt_class();
    *buf = 138543362;
    v49 = v20;
    v21 = v20;
    _os_log_fault_impl(&dword_269B11000, v15, OS_LOG_TYPE_FAULT, "[%{public}@] sleepAlarm has nil dismiss date", buf, 0xCu);
  }

LABEL_20:
}

void __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_2;
  v9[3] = &unk_279C7CD30;
  v4 = a1[7];
  v3 = a1[8];
  v9[4] = a1[6];
  v11 = v3;
  v12 = 0;
  v10 = v4;
  LOBYTE(v2) = [v1 saveSleepEventRecord:v2 error:&v12 preNotifyBlock:v9];
  v5 = v12;
  if ((v2 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      v8 = v7;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }
}

id __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_3;
  v7[3] = &unk_279C7CD08;
  v4 = a1[5];
  v3 = a1[6];
  v7[4] = v1;
  v9 = v3;
  v8 = v4;
  v5 = [v2 enumerateObserversWithFutureBlock:v7];

  return v5;
}

id __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_4;
    v13 = &unk_279C7B740;
    v5 = v3;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = v5;
    v15 = v7;
    [v4 perform:&v10 withContext:v6];
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

- (void)sleepAlarmSnoozedUntilDate:(id)date source:(unint64_t)source
{
  v40 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    source = [currentContext source];
    *buf = 138543874;
    v35 = v10;
    v36 = 2114;
    v37 = dateCopy;
    v38 = 2114;
    v39 = source;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm did snooze: %{public}@ (%{public}@)", buf, 0x20u);
  }

  environment2 = [(HDSPSleepActionManager *)self environment];
  sleepScheduleModelManager = [environment2 sleepScheduleModelManager];

  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
  v16 = [sleepEventRecord mutableCopy];

  [v16 setWakeUpAlarmSnoozedUntilDate:dateCopy];
  v17 = HKSPLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = v18;
    wakeUpAlarmSnoozedUntilDate = [v16 wakeUpAlarmSnoozedUntilDate];
    *buf = 138543618;
    v35 = v18;
    v36 = 2114;
    v37 = wakeUpAlarmSnoozedUntilDate;
    _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm snoozed until %{public}@", buf, 0x16u);
  }

  environment3 = [(HDSPSleepActionManager *)self environment];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke;
  v28[3] = &unk_279C7CD58;
  v29 = sleepScheduleModelManager;
  v30 = v16;
  v32 = currentContext;
  sourceCopy = source;
  selfCopy = self;
  v22 = currentContext;
  v23 = v16;
  v24 = sleepScheduleModelManager;
  source2 = [v22 source];
  sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
  v27 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
  [environment3 perform:v28 withSource:v27];
}

void __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_2;
  v9[3] = &unk_279C7CD30;
  v4 = a1[7];
  v3 = a1[8];
  v9[4] = a1[6];
  v11 = v3;
  v12 = 0;
  v10 = v4;
  LOBYTE(v2) = [v1 saveSleepEventRecord:v2 error:&v12 preNotifyBlock:v9];
  v5 = v12;
  if ((v2 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      v8 = v7;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }
}

id __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_3;
  v7[3] = &unk_279C7CD08;
  v4 = a1[5];
  v3 = a1[6];
  v7[4] = v1;
  v9 = v3;
  v8 = v4;
  v5 = [v2 enumerateObserversWithFutureBlock:v7];

  return v5;
}

id __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_4;
    v13 = &unk_279C7B740;
    v5 = v3;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = v5;
    v15 = v7;
    [v4 perform:&v10 withContext:v6];
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

+ (id)_latestDateInAlarms:(id)alarms dateBlock:(id)block
{
  alarmsCopy = alarms;
  blockCopy = block;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDSPSleepActionManager__latestDateInAlarms_dateBlock___block_invoke;
  v10[3] = &unk_279C7CD80;
  v7 = blockCopy;
  v11 = v7;
  v12 = &v13;
  [alarmsCopy na_each:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __56__HDSPSleepActionManager__latestDateInAlarms_dateBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = v2;
  v4 = *(*(a1 + 40) + 8);
  obj = v2;
  if (*(v4 + 40))
  {
    if (![v2 hksp_isAfterDate:?])
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 40) + 8);
    v3 = obj;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

+ (BOOL)_isValidSnoozeDate:(id)date
{
  if (!date)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  distantPast = [v3 distantPast];
  LOBYTE(v3) = [dateCopy isEqualToDate:distantPast];

  v6 = v3 ^ 1;
  return v6;
}

- (void)sleepAlarmWasModified
{
  environment = [(HDSPSleepActionManager *)self environment];
  sleepAlarmManager = [environment sleepAlarmManager];
  currentSleepAlarms = [sleepAlarmManager currentSleepAlarms];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke;
  v7[3] = &unk_279C7B280;
  v7[4] = self;
  v6 = [currentSleepAlarms addCompletionBlock:v7];
}

void __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPNilify();
  v6 = v5;
  if (v4)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v42 = objc_opt_class();
      v43 = 2114;
      v44 = v4;
      v8 = v42;
      v9 = "[%{public}@] fetch alarms failed with error: %{public}@";
      v10 = v7;
      v11 = 22;
LABEL_4:
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    }
  }

  else
  {
    if (![v5 count])
    {
      v7 = HKSPLogForCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 138543362;
      v42 = objc_opt_class();
      v8 = v42;
      v9 = "[%{public}@] no sleep alarms found";
      v10 = v7;
      v11 = 12;
      goto LABEL_4;
    }

    v12 = [*(a1 + 32) environment];
    v7 = [v12 currentContext];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [v7 source];
      *buf = 138543618;
      v42 = v14;
      v43 = 2114;
      v44 = v16;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarms modified (%{public}@)", buf, 0x16u);
    }

    v17 = [objc_opt_class() _latestDateInAlarms:v6 dateBlock:&__block_literal_global_24];
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v42 = v19;
      v43 = 2114;
      v44 = v17;
      v20 = v19;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] latest sleep alarm modified date: %{public}@", buf, 0x16u);
    }

    v21 = [objc_opt_class() _latestDateInAlarms:v6 dateBlock:&__block_literal_global_313_0];
    v22 = HKSPLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *buf = 138543618;
      v42 = v23;
      v43 = 2114;
      v44 = v21;
      v24 = v23;
      _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] latest sleep alarm snooze date: %{public}@", buf, 0x16u);
    }

    v25 = [*(a1 + 32) environment];
    v26 = [v25 sleepScheduleModelManager];

    v27 = [v26 sleepEventRecord];
    v28 = [v27 mutableCopy];

    if (([objc_opt_class() _isValidSnoozeDate:v21] & 1) == 0)
    {
      v29 = objc_opt_class();
      v30 = [v28 wakeUpAlarmSnoozedUntilDate];
      LODWORD(v29) = [v29 _isValidSnoozeDate:v30];

      if (v29)
      {
        v31 = HKSPLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          *buf = 138543362;
          v42 = v32;
          v33 = v32;
          _os_log_impl(&dword_269B11000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] snooze date was reset", buf, 0xCu);
        }

        [v28 setWakeUpAlarmSnoozedUntilDate:0];
        v34 = [*(a1 + 32) environment];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke_314;
        v37[3] = &unk_279C7C050;
        v38 = v26;
        v35 = v28;
        v36 = *(a1 + 32);
        v39 = v35;
        v40 = v36;
        [v34 perform:v37 withSource:?];
      }
    }
  }

LABEL_19:
}

void __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke_314(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 saveSleepEventRecord:v3 error:&v9];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      v8 = v7;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end