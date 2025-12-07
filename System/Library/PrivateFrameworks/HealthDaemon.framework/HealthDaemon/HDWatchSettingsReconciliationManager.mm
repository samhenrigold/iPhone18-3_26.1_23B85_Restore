@interface HDWatchSettingsReconciliationManager
- (HDWatchSettingsReconciliationManager)initWithProfile:(id)profile userDefaults:(id)defaults managedKeys:(id)keys debugIdentifier:(id)identifier loggingCategory:(id)category;
- (HDWatchSettingsReconciliationManagerDelegate)delegate;
- (id)_queue_settingValuesForSettingKeys:(id)keys error:(id *)error;
- (void)_queue_applyReconciledValueFromSettingValues:(id)values forSettingKeys:(id)keys completion:(id)completion;
- (void)_queue_reconcileValuesForAllKeys;
- (void)_queue_reconcileValuesForKeys:(id)keys;
- (void)_startKeyValueObserving;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDWatchSettingsReconciliationManager

- (HDWatchSettingsReconciliationManager)initWithProfile:(id)profile userDefaults:(id)defaults managedKeys:(id)keys debugIdentifier:(id)identifier loggingCategory:(id)category
{
  profileCopy = profile;
  defaultsCopy = defaults;
  keysCopy = keys;
  identifierCopy = identifier;
  categoryCopy = category;
  v24.receiver = self;
  v24.super_class = HDWatchSettingsReconciliationManager;
  v17 = [(HDWatchSettingsReconciliationManager *)&v24 init];
  if (v17)
  {
    if ([profileCopy profileType] != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v17 file:@"HDWatchSettingsReconciliationManager.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"profile.profileType == HKProfileTypePrimary"}];
    }

    objc_storeWeak(&v17->_profile, profileCopy);
    v18 = HKCreateSerialDispatchQueue();
    queue = v17->_queue;
    v17->_queue = v18;

    objc_storeStrong(&v17->_userDefaults, defaults);
    objc_storeStrong(&v17->_managedKeys, keys);
    objc_storeStrong(&v17->_debugIdentifier, identifier);
    objc_storeStrong(&v17->_loggingCategory, category);
    [(HDWatchSettingsReconciliationManager *)v17 _startKeyValueObserving];
    WeakRetained = objc_loadWeakRetained(&v17->_profile);
    [WeakRetained registerProfileReadyObserver:v17 queue:v17->_queue];
  }

  return v17;
}

- (void)_startKeyValueObserving
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_managedKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        userDefaults = self->_userDefaults;
        defaultsEnabledKey = [*(*(&v10 + 1) + 8 * v7) defaultsEnabledKey];
        [(NSUserDefaults *)userDefaults addObserver:self forKeyPath:defaultsEnabledKey options:3 context:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_managedKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        featureSettingsManager = [WeakRetained featureSettingsManager];
        featureIdentifier = [v8 featureIdentifier];
        [featureSettingsManager unregisterObserver:self featureIdentifier:featureIdentifier];

        userDefaults = self->_userDefaults;
        defaultsEnabledKey = [v8 defaultsEnabledKey];
        [(NSUserDefaults *)userDefaults removeObserver:self forKeyPath:defaultsEnabledKey];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14.receiver = self;
  v14.super_class = HDWatchSettingsReconciliationManager;
  [(HDWatchSettingsReconciliationManager *)&v14 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  v20 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_managedKeys;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        featureSettingsManager = [WeakRetained featureSettingsManager];
        featureIdentifier = [v10 featureIdentifier];
        [featureSettingsManager registerObserver:self featureIdentifier:featureIdentifier queue:self->_queue];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  daemon = [readyCopy daemon];
  [daemon registerDaemonReadyObserver:self queue:self->_queue];
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDWatchSettingsReconciliationManager_daemonReady___block_invoke;
  v7[3] = &unk_278613968;
  v7[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

void __52__HDWatchSettingsReconciliationManager_daemonReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 maintenanceWorkCoordinator];
  v5 = [*(a1 + 32) description];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HDWatchSettingsReconciliationManager_daemonReady___block_invoke_2;
  v9[3] = &unk_278613968;
  v9[4] = v6;
  v8 = [HDMaintenanceOperation maintenanceOperationWithName:v5 queue:v7 synchronousBlock:v9];
  [v4 enqueueMaintenanceOperation:v8];
}

- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notified of update to settings for %{public}@", buf, 0x16u);
  }

  managedKeys = self->_managedKeys;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__HDWatchSettingsReconciliationManager_featureSettingsManager_didUpdateSettingsForFeatureIdentifier___block_invoke;
  v10[3] = &unk_278629FF8;
  v11 = identifierCopy;
  v8 = identifierCopy;
  v9 = [(NSArray *)managedKeys hk_firstObjectPassingTest:v10];
  if (v9)
  {
    [(HDWatchSettingsReconciliationManager *)self _queue_reconcileValuesForKeys:v9];
  }
}

uint64_t __101__HDWatchSettingsReconciliationManager_featureSettingsManager_didUpdateSettingsForFeatureIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 featureIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *MEMORY[0x277CCA300];
    v15 = loggingCategory;
    v16 = [changeCopy objectForKeyedSubscript:v14];
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    *buf = 138544130;
    selfCopy = self;
    v31 = 2114;
    v32 = pathCopy;
    v33 = 2114;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ changed: %{public}@ -> %{public}@", buf, 0x2Au);
  }

  managedKeys = self->_managedKeys;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __87__HDWatchSettingsReconciliationManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v27[3] = &unk_278629FF8;
  v19 = pathCopy;
  v28 = v19;
  v20 = [(NSArray *)managedKeys hk_firstObjectPassingTest:v27];
  if (v20)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    queue = self->_queue;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __87__HDWatchSettingsReconciliationManager_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v25[3] = &unk_278613920;
    v25[4] = self;
    v26 = v20;
    [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v25];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HDWatchSettingsReconciliationManager;
    [(HDWatchSettingsReconciliationManager *)&v24 observeValueForKeyPath:v19 ofObject:objectCopy change:changeCopy context:context];
  }
}

uint64_t __87__HDWatchSettingsReconciliationManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 defaultsEnabledKey];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_queue_reconcileValuesForAllKeys
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_managedKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(HDWatchSettingsReconciliationManager *)self _queue_reconcileValuesForKeys:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_queue_reconcileValuesForKeys:(id)keys
{
  v18 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = keysCopy;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning reconciliation for %{public}@", buf, 0x16u);
  }

  v11 = 0;
  v6 = [(HDWatchSettingsReconciliationManager *)self _queue_settingValuesForSettingKeys:keysCopy error:&v11];
  v7 = v11;
  if (v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__HDWatchSettingsReconciliationManager__queue_reconcileValuesForKeys___block_invoke;
    v9[3] = &unk_27862A020;
    v9[4] = self;
    v10 = v6;
    [(HDWatchSettingsReconciliationManager *)self _queue_applyReconciledValueFromSettingValues:v10 forSettingKeys:keysCopy completion:v9];
  }

  else
  {
    _HKInitializeLogging();
    v8 = self->_loggingCategory;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v14 = 2114;
      v15 = keysCopy;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving settings values for %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

void __70__HDWatchSettingsReconciliationManager__queue_reconcileValuesForKeys___block_invoke(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained watchSettingsReconciliationManager:*(a1 + 32) didReconcileValuesForKeys:v11 didUpdateFeatureSetting:a3 didUpdateUserDefault:a4];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      v19 = 138544130;
      v20 = v14;
      v21 = 2114;
      v22 = v18;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Error applying reconciled values: %{public}@ for %{public}@: %{public}@", &v19, 0x2Au);
    }
  }

  _HKInitializeLogging();
  v16 = *(a1 + 32);
  v17 = *(v16 + 48);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = v16;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed reconciliation for %{public}@", &v19, 0x16u);
  }
}

- (id)_queue_settingValuesForSettingKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  featureIdentifier = [keysCopy featureIdentifier];
  v28 = 0;
  v10 = [featureSettingsManager featureSettingsForFeatureIdentifier:featureIdentifier error:&v28];
  v11 = v28;

  if (v10)
  {
    featureSettingEnabledKey = [keysCopy featureSettingEnabledKey];
    v13 = [v10 numberForKey:featureSettingEnabledKey];

    userDefaults = self->_userDefaults;
    defaultsEnabledKey = [keysCopy defaultsEnabledKey];
    v27 = v11;
    v16 = [(NSUserDefaults *)userDefaults hk_safeNumberIfExistsForKeyPath:defaultsEnabledKey error:&v27];
    v17 = v27;

    if (v17)
    {
      if (error)
      {
        v18 = v17;
        v19 = 0;
        *error = v17;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }

    else
    {
      v21 = self->_userDefaults;
      lastReconciledEnabledKey = [keysCopy lastReconciledEnabledKey];
      v26 = 0;
      v23 = [(NSUserDefaults *)v21 hk_safeNumberIfExistsForKeyPath:lastReconciledEnabledKey error:&v26];
      v17 = v26;

      if (v17)
      {
        if (error)
        {
          v24 = v17;
          v19 = 0;
          *error = v17;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }
      }

      else
      {
        v19 = [[HDWatchSettingValues alloc] initWithFeatureSettingEnabledValue:v13 defaultsEnabledValue:v16 lastReconciledEnabledValue:v23];
      }
    }
  }

  else
  {
    v13 = v11;
    if (v13)
    {
      if (error)
      {
        v20 = v13;
        v19 = 0;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }

      v17 = v13;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }
  }

  return v19;
}

- (void)_queue_applyReconciledValueFromSettingValues:(id)values forSettingKeys:(id)keys completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  keysCopy = keys;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  reconciledEnabledValue = [valuesCopy reconciledEnabledValue];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  v13 = os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT);
  if (reconciledEnabledValue)
  {
    if (v13)
    {
      *buf = 138544130;
      selfCopy3 = self;
      v40 = 2114;
      v41 = reconciledEnabledValue;
      v42 = 2114;
      v43 = valuesCopy;
      v44 = 2114;
      v45 = keysCopy;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Applying reconciled value %{public}@ from %{public}@ for %{public}@", buf, 0x2Au);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke;
    aBlock[3] = &unk_27862A048;
    v14 = reconciledEnabledValue;
    v33 = v14;
    v15 = valuesCopy;
    v34 = v15;
    selfCopy2 = self;
    v16 = keysCopy;
    v36 = v16;
    v25 = completionCopy;
    v17 = completionCopy;
    v37 = v17;
    v18 = _Block_copy(aBlock);
    featureSettingEnabledValue = [v15 featureSettingEnabledValue];
    v20 = [v14 isEqual:featureSettingEnabledValue];

    if (v20)
    {
      v18[2](v18, 0);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      database = [WeakRetained database];
      v22 = +[HDDatabaseTransactionContext contextForWriting];
      v31 = 0;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_2;
      v26[3] = &unk_27862A098;
      v29 = v18;
      v26[4] = self;
      v30 = v17;
      v27 = v16;
      v28 = v14;
      [database performTransactionWithContext:v22 error:&v31 block:v26 inaccessibilityHandler:0];
      v23 = v31;
    }

    completionCopy = v25;
  }

  else
  {
    if (v13)
    {
      *buf = 138543874;
      selfCopy3 = self;
      v40 = 2114;
      v41 = valuesCopy;
      v42 = 2114;
      v43 = keysCopy;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to reconcile from %{public}@ for %{public}@", buf, 0x20u);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0, 0, keysCopy, 0);
  }
}

uint64_t __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastReconciledEnabledValue];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    v4 = *(*(a1 + 48) + 24);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 56) lastReconciledEnabledKey];
    [v4 setObject:v5 forKey:v6];
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) defaultsEnabledValue];
  LOBYTE(v7) = [v7 isEqual:v8];

  if ((v7 & 1) == 0)
  {
    v9 = *(*(a1 + 48) + 24);
    v10 = *(a1 + 32);
    v11 = [*(a1 + 56) defaultsEnabledKey];
    [v9 setObject:v10 forKey:v11];
  }

  v12 = *(*(a1 + 64) + 16);

  return v12();
}

uint64_t __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_3;
  v20[3] = &unk_278613658;
  v21 = *(a1 + 56);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_4;
  v16 = &unk_27862A070;
  v17 = *(a1 + 32);
  v19 = *(a1 + 64);
  v18 = *(a1 + 40);
  [a2 onCommit:v20 orRollback:&v13];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained featureSettingsManager];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) featureSettingEnabledKey];
  v10 = [*(a1 + 40) featureIdentifier];
  v11 = [v7 setFeatureSettingsNumber:v8 forKey:v9 featureIdentifier:v10 suppressNotificationsToObserver:*(a1 + 32) error:a3];

  return v11;
}

void __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Rolled back feature settings changes, not updating user defaults: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (HDWatchSettingsReconciliationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end