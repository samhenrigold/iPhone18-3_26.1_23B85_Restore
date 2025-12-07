@interface HDMCWatchSettingsCompatibilityManager
- (HDMCWatchSettingsCompatibilityManager)initWithProfile:(id)profile userDefaults:(id)defaults;
- (HDMCWatchSettingsCompatibilityManagerDelegate)delegate;
- (void)_queue_computeAndApplyChangesForAllFeatures;
- (void)_queue_computeAndApplyChangesForFeature:(id)feature;
- (void)daemonReady:(id)ready;
- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDMCWatchSettingsCompatibilityManager

- (HDMCWatchSettingsCompatibilityManager)initWithProfile:(id)profile userDefaults:(id)defaults
{
  v19[2] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  defaultsCopy = defaults;
  v18.receiver = self;
  v18.super_class = HDMCWatchSettingsCompatibilityManager;
  v9 = [(HDMCWatchSettingsCompatibilityManager *)&v18 init];
  if (v9)
  {
    if ([profileCopy profileType] != 1)
    {
      [HDMCWatchSettingsCompatibilityManager initWithProfile:a2 userDefaults:v9];
    }

    objc_storeWeak(&v9->_profile, profileCopy);
    objc_storeStrong(&v9->_userDefaults, defaults);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = +[HDMCWatchFeatureSettings algorithmicProjectionsSettings];
    v19[0] = v12;
    v13 = +[HDMCWatchFeatureSettings hiddenLoggingRowsSettings];
    v19[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    managedFeatures = v9->_managedFeatures;
    v9->_managedFeatures = v14;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    [WeakRetained registerProfileReadyObserver:v9 queue:v9->_queue];
  }

  return v9;
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
  v5 = self->_managedFeatures;
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
  v7[2] = __53__HDMCWatchSettingsCompatibilityManager_daemonReady___block_invoke;
  v7[3] = &unk_27865A830;
  v7[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

void __53__HDMCWatchSettingsCompatibilityManager_daemonReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 maintenanceWorkCoordinator];
  v5 = MEMORY[0x277D10748];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HDMCWatchSettingsCompatibilityManager_daemonReady___block_invoke_2;
  v11[3] = &unk_27865A830;
  v11[4] = v8;
  v10 = [v5 maintenanceOperationWithName:v7 queue:v9 synchronousBlock:v11];
  [v4 enqueueMaintenanceOperation:v10];
}

- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v23 = objc_opt_class();
    v24 = 2114;
    v25 = identifierCopy;
    v8 = v23;
    _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notified of update to settings for %{public}@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_managedFeatures;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        featureIdentifier = [v14 featureIdentifier];
        v16 = [featureIdentifier isEqualToString:identifierCopy];

        if (v16)
        {
          [(HDMCWatchSettingsCompatibilityManager *)self _queue_computeAndApplyChangesForFeature:v14];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)_queue_computeAndApplyChangesForAllFeatures
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_managedFeatures;
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

        [(HDMCWatchSettingsCompatibilityManager *)self _queue_computeAndApplyChangesForFeature:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_queue_computeAndApplyChangesForFeature:(id)feature
{
  v30 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  featureIdentifier = [featureCopy featureIdentifier];
  v23 = 0;
  v8 = [featureSettingsManager featureSettingsForFeatureIdentifier:featureIdentifier error:&v23];
  v9 = v23;

  if (v8)
  {
    v10 = [featureCopy userDefaultsChangesFromFeatureSettings:v8 currentUserDefaults:self->_userDefaults];
    [(NSUserDefaults *)self->_userDefaults setValuesForKeysWithDictionary:v10];
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = v13;
      featureIdentifier2 = [featureCopy featureIdentifier];
      *buf = 138543874;
      v25 = v13;
      v26 = 2114;
      v27 = featureIdentifier2;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Applied changes for %{public}@: %{public}@", buf, 0x20u);
    }

    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = MEMORY[0x277CBEB98];
    allKeys = [v10 allKeys];
    v19 = [v17 setWithArray:allKeys];
    [v16 watchSettingsCompatibilityManager:self didChangeUserDefaultsKeys:v19];
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2E8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = v20;
    v21 = objc_opt_class();
    v16 = v21;
    featureIdentifier3 = [featureCopy featureIdentifier];
    *buf = 138543874;
    v25 = v21;
    v26 = 2114;
    v27 = featureIdentifier3;
    v28 = 2114;
    v29 = v9;
    _os_log_error_impl(&dword_2293D1000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@ feature settings: %{public}@", buf, 0x20u);
  }

LABEL_7:
}

- (HDMCWatchSettingsCompatibilityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithProfile:(uint64_t)a1 userDefaults:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCWatchSettingsCompatibilityManager.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"profile.profileType == HKProfileTypePrimary"}];
}

@end