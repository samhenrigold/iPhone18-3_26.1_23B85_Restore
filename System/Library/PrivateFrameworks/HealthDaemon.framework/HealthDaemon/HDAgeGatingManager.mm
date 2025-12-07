@interface HDAgeGatingManager
- (HDAgeGatingManager)initWithProfile:(id)profile;
- (HDAgeGatingManager)initWithProfile:(id)profile userDefaults:(id)defaults queue:(id)queue;
- (id)ageInYearsWithError:(id *)error;
- (void)_queue_updateAgeGating;
- (void)_updateAgeGatingOnQueue;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)didReceiveDayChangeNotification:(id)notification;
- (void)profileDidBecomeReady:(id)ready;
- (void)unitTesting_updateAgeGates;
@end

@implementation HDAgeGatingManager

- (HDAgeGatingManager)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277CBEBD0];
  profileCopy = profile;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE228]];
  v8 = HKCreateSerialDispatchQueue();
  v9 = [(HDAgeGatingManager *)self initWithProfile:profileCopy userDefaults:v7 queue:v8];

  return v9;
}

- (HDAgeGatingManager)initWithProfile:(id)profile userDefaults:(id)defaults queue:(id)queue
{
  profileCopy = profile;
  defaultsCopy = defaults;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = HDAgeGatingManager;
  v12 = [(HDAgeGatingManager *)&v16 init];
  if (v12)
  {
    if (!profileCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v12 file:@"HDAgeGatingManager.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
    }

    objc_storeWeak(&v12->_profile, profileCopy);
    objc_storeStrong(&v12->_userDefaults, defaults);
    objc_storeStrong(&v12->_queue, queue);
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:0];
  }

  return v12;
}

- (void)dealloc
{
  if (self)
  {
    if (notify_is_valid_token(self->_significantTimeChangeNotificationToken))
    {
      notify_cancel(self->_significantTimeChangeNotificationToken);
    }

    if (notify_is_valid_token(self->_userCharacteristicsDidChangeNotificationToken))
    {
      notify_cancel(self->_userCharacteristicsDidChangeNotificationToken);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CBE580] object:0];
  }

  v4.receiver = self;
  v4.super_class = HDAgeGatingManager;
  [(HDAgeGatingManager *)&v4 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  if (self)
  {
    objc_initWeak(&location, self);
    v4 = objc_opt_class();
    queue = self->_queue;
    handler = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __47__HDAgeGatingManager__registerForNotifications__block_invoke;
    v20 = &unk_2786250D8;
    v21[1] = v4;
    objc_copyWeak(v21, &location);
    notify_register_dispatch("SignificantTimeChangeNotification", &self->_significantTimeChangeNotificationToken, queue, &handler);
    v6 = *MEMORY[0x277CCE580];
    v7 = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__HDAgeGatingManager__registerForNotifications__block_invoke_312;
    v15[3] = &unk_2786250D8;
    v16[1] = v4;
    objc_copyWeak(v16, &location);
    notify_register_dispatch(v6, &self->_userCharacteristicsDidChangeNotificationToken, v7, v15);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_didReceiveDayChangeNotification_ name:*MEMORY[0x277CBE580] object:0];

    objc_destroyWeak(v16);
    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
    v9 = [MEMORY[0x277CCACA8] stringWithCString:"-[HDAgeGatingManager _updateAgeGatingViaMaintenanceWorkCoordinator]" encoding:4];
    v10 = self->_queue;
    handler = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __67__HDAgeGatingManager__updateAgeGatingViaMaintenanceWorkCoordinator__block_invoke;
    v20 = &unk_278613968;
    v21[0] = self;
    v11 = [HDMaintenanceOperation maintenanceOperationWithName:v9 queue:v10 synchronousBlock:&handler];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v11];
  }
}

- (void)didReceiveDayChangeNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2082;
    v9 = "[HDAgeGatingManager didReceiveDayChangeNotification:]";
    v5 = v7;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] received day change notification", &v6, 0x16u);
  }

  [(HDAgeGatingManager *)self _updateAgeGatingOnQueue];
}

- (void)_updateAgeGatingOnQueue
{
  if (self)
  {
    v1 = *(self + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HDAgeGatingManager__updateAgeGatingOnQueue__block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

- (void)unitTesting_updateAgeGates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HDAgeGatingManager_unitTesting_updateAgeGates__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_updateAgeGating
{
  v66[12] = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v46 = 0;
    v2 = [self ageInYearsWithError:&v46];
    v3 = v46;
    v4 = v3;
    v45 = v2;
    if (v2 || !v3)
    {
      v42 = v3;
      WeakRetained = objc_loadWeakRetained((self + 8));
      database = [WeakRetained database];
      [database removeProtectedDataObserver:self];

      v44 = v45;
      v65[0] = *MEMORY[0x277CCE238];
      v43 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE290]];
      v66[0] = v43;
      v65[1] = *MEMORY[0x277CCE248];
      v41 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE418]];
      v66[1] = v41;
      v65[2] = *MEMORY[0x277CCE250];
      v40 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE4F0]];
      v66[2] = v40;
      v65[3] = *MEMORY[0x277CCE240];
      v39 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE298]];
      v66[3] = v39;
      v65[4] = *MEMORY[0x277CCC220];
      v38 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE348]];
      v66[4] = v38;
      v65[5] = *MEMORY[0x277CCC238];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE4F8]];
      v66[5] = v13;
      v65[6] = *MEMORY[0x277CCE260];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE560]];
      v66[6] = v14;
      v65[7] = *MEMORY[0x277CCE268];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE568]];
      v66[7] = v15;
      v65[8] = *MEMORY[0x277CCE230];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE208]];
      v66[8] = v16;
      v65[9] = *MEMORY[0x277CCE270];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE588]];
      v66[9] = v17;
      v65[10] = *MEMORY[0x277CCE258];
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE520]];
      v66[10] = v18;
      v65[11] = *MEMORY[0x277CCC258];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE5D8]];
      v66[11] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:12];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v47 objects:buf count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v48;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v48 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v47 + 1) + 8 * i);
            v27 = [v21 objectForKeyedSubscript:v26];
            if (v45)
            {
              integerValue = [v44 integerValue];
              v29 = integerValue < [v27 integerValue];
            }

            else
            {
              v29 = 0;
            }

            [*(self + 32) setBool:v29 forKey:v26];
            _HKInitializeLogging();
            v30 = HKLogInfrastructure();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = objc_opt_class();
              *v51 = 138544130;
              v52 = v31;
              v53 = 2082;
              v54 = "[HDAgeGatingManager _updateUserDefaultsWithAge:]";
              v55 = 2114;
              v56 = v26;
              v57 = 1026;
              v58 = v29;
              v32 = v31;
              _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] %{public}@ age gating enabled: %{public}d", v51, 0x26u);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v47 objects:buf count:16];
        }

        while (v23);
      }

      _HKInitializeLogging();
      v6 = HKLogInfrastructure();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        *buf = 138543618;
        v60 = v33;
        v61 = 2082;
        v62 = "[HDAgeGatingManager _queue_updateAgeGating]";
        v34 = v33;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] processed", buf, 0x16u);
      }

      v4 = v42;
    }

    else
    {
      hk_isDatabaseAccessibilityError = [v3 hk_isDatabaseAccessibilityError];
      _HKInitializeLogging();
      v6 = HKLogInfrastructure();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (hk_isDatabaseAccessibilityError)
      {
        if (v7)
        {
          v8 = objc_opt_class();
          *buf = 138543618;
          v60 = v8;
          v61 = 2082;
          v62 = "[HDAgeGatingManager _queue_updateAgeGating]";
          v9 = v8;
          _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] Protected data not accessible. Adding observer.", buf, 0x16u);
        }

        v6 = objc_loadWeakRetained((self + 8));
        database2 = [v6 database];
        [database2 addProtectedDataObserver:self];
      }

      else if (v7)
      {
        v35 = objc_opt_class();
        v36 = v35;
        localizedDescription = [v4 localizedDescription];
        *buf = 138543874;
        v60 = v35;
        v61 = 2082;
        v62 = "[HDAgeGatingManager _queue_updateAgeGating]";
        v63 = 2114;
        v64 = localizedDescription;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] While fetching date of birth components, received error: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (id)ageInYearsWithError:(id *)error
{
  v5 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v20 = 0;
  v8 = [userCharacteristicsManager userCharacteristicForType:v5 error:&v20];
  v9 = v20;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    v11 = 0;
    if (self && v8)
    {
      v12 = MEMORY[0x277CBEA80];
      v13 = v8;
      hk_gregorianCalendarWithLocalTimeZone = [v12 hk_gregorianCalendarWithLocalTimeZone];
      date = [MEMORY[0x277CBEAA8] date];
      v16 = [hk_gregorianCalendarWithLocalTimeZone hk_dateOfBirthDateComponentsWithDate:date];

      v17 = [hk_gregorianCalendarWithLocalTimeZone components:4 fromDateComponents:v13 toDateComponents:v16 options:0];

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "year")}];
    }
  }

  else if (error)
  {
    v18 = v9;
    v11 = 0;
    *error = v9;
  }

  else
  {
    _HKLogDroppedError();
    v11 = 0;
  }

  return v11;
}

void __47__HDAgeGatingManager__registerForNotifications__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating age gating due to significant time change.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDAgeGatingManager *)WeakRetained _updateAgeGatingOnQueue];
}

void __47__HDAgeGatingManager__registerForNotifications__block_invoke_312(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating age gating due to user characteristics change.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDAgeGatingManager *)WeakRetained _updateAgeGatingOnQueue];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    [(HDAgeGatingManager *)self _updateAgeGatingOnQueue];
  }
}

@end