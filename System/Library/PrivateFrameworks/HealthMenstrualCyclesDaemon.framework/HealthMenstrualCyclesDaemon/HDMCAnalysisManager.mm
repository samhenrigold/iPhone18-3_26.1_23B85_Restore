@interface HDMCAnalysisManager
- (BOOL)_hasHealthAppDevicesWithHigherAlgorithmVersions;
- (BOOL)initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:(id)assertion error:(id *)error;
- (HDProfile)profile;
- (HKMCAnalysis)currentAnalysis;
- (id)_analysisWithAlgorithmsAnalysis:(id)analysis algorithmsCycles:(id)cycles recentSymptoms:(unint64_t)symptoms mostRecentBasalBodyTemperature:(id)temperature lastLoggedDayIndex:(id)index lastMenstrualFlowDayIndex:(id)dayIndex numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)days numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)self0 featureSettings:(id)self1 useHeartRateInput:(BOOL)self2 useWristTemperatureInput:(BOOL)self3 deviationsFeatureSettings:(id)self4;
- (id)_analyzeWithForceIncludeCycles:(BOOL)cycles forceAnalyzeCompleteHistory:(BOOL)history error:(id *)error;
- (id)_initWithProfile:(id)profile settingsManager:(id)manager featureAvailabilityManager:(id)availabilityManager heartRateAvailabilityManager:(id)rateAvailabilityManager wristTemperatureAvailabilityManager:(id)temperatureAvailabilityManager deviationsAvailabilityManager:(id)deviationsAvailabilityManager deviceScopedStorageManager:(id)storageManager calendarCache:(id)self0 dayStreamProcessorProvider:(id)self1 historicalAnalyzerProvider:(id)self2;
- (id)_processorConfigurationForTodayIndex:(int64_t)index deviationsFeatureStatus:(id)status calendar:(id)calendar;
- (id)_queue_analyzeNowWithForceIncludeCycles:(BOOL)cycles forceAnalyzeCompleteHistory:(BOOL)history error:(id *)error;
- (id)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(id)assertion forceIncludeCycles:(BOOL)cycles forceAnalyzeCompleteHistory:(BOOL)history error:(id *)error;
- (id)_takeAccessibilityAssertion;
- (void)_calendarDayDidChange:(id)change;
- (void)_forceDisablePredictionsFromOngoingCycleFactors:(id)factors menstruationProjectionsEnabled:(BOOL)enabled fertileWindowProjectionsEnabled:(BOOL)projectionsEnabled useHeartRateInput:(BOOL)input useWristTemperatureInput:(BOOL)temperatureInput;
- (void)_hasHealthAppDevicesWithHigherAlgorithmVersions;
- (void)_queue_analyzeIfNeeded;
- (void)_queue_enqueueMaintenanceOperationIfNeeded;
- (void)_queue_runMaintenanceOperation;
- (void)_startObserving;
- (void)_takeAccessibilityAssertion;
- (void)_userCharacteristicsDidChange:(id)change;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)registerObserver:(id)observer queue:(id)queue userInitiated:(BOOL)initiated;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)settingsManagerDidUpdateAlgorithmVersionMismatchSettings:(id)settings;
- (void)settingsManagerDidUpdateAnalysisSettings:(id)settings;
- (void)unregisterObserver:(id)observer;
@end

@implementation HDMCAnalysisManager

id __218__HDMCAnalysisManager_initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0FC90];
  v3 = a2;
  v4 = [[v2 alloc] initWithConfig:v3];

  return v4;
}

id __218__HDMCAnalysisManager_initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277D0FCC0]);

  return v0;
}

- (id)_initWithProfile:(id)profile settingsManager:(id)manager featureAvailabilityManager:(id)availabilityManager heartRateAvailabilityManager:(id)rateAvailabilityManager wristTemperatureAvailabilityManager:(id)temperatureAvailabilityManager deviationsAvailabilityManager:(id)deviationsAvailabilityManager deviceScopedStorageManager:(id)storageManager calendarCache:(id)self0 dayStreamProcessorProvider:(id)self1 historicalAnalyzerProvider:(id)self2
{
  profileCopy = profile;
  obj = manager;
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  rateAvailabilityManagerCopy = rateAvailabilityManager;
  temperatureAvailabilityManagerCopy = temperatureAvailabilityManager;
  deviationsAvailabilityManagerCopy = deviationsAvailabilityManager;
  storageManagerCopy = storageManager;
  cacheCopy = cache;
  providerCopy = provider;
  analyzerProviderCopy = analyzerProvider;
  v64.receiver = self;
  v64.super_class = HDMCAnalysisManager;
  v23 = [(HDMCAnalysisManager *)&v64 init];
  v24 = v23;
  if (v23)
  {
    aBlock = analyzerProviderCopy;
    objc_storeWeak(&v23->_profile, profileCopy);
    v24->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v24->_settingsManager, obj);
    objc_storeStrong(&v24->_featureAvailabilityManager, availabilityManager);
    v25 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:rateAvailabilityManagerCopy healthDataSource:profileCopy];
    heartRateFeatureStatusManager = v24->_heartRateFeatureStatusManager;
    v24->_heartRateFeatureStatusManager = v25;

    v27 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:temperatureAvailabilityManagerCopy healthDataSource:profileCopy];
    wristTemperatureFeatureStatusManager = v24->_wristTemperatureFeatureStatusManager;
    v24->_wristTemperatureFeatureStatusManager = v27;

    if (deviationsAvailabilityManagerCopy)
    {
      v29 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:deviationsAvailabilityManagerCopy healthDataSource:profileCopy];
    }

    else
    {
      v29 = 0;
    }

    deviationsFeatureStatusManager = v24->_deviationsFeatureStatusManager;
    v24->_deviationsFeatureStatusManager = v29;

    objc_storeStrong(&v24->_deviceScopedStorageManager, storageManager);
    v31 = [HDMCDeviationInputManager alloc];
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    v33 = [(HDMCDeviationInputManager *)v31 initWithProfile:WeakRetained];
    deviationInputManager = v24->_deviationInputManager;
    v24->_deviationInputManager = v33;

    v35 = objc_alloc(MEMORY[0x277CCD738]);
    v36 = MEMORY[0x277CCC2E8];
    v37 = [v35 initWithName:@"HKMCAnalysisManagerObservers" loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v24->_observers;
    v24->_observers = v37;

    v39 = [objc_alloc(MEMORY[0x277CCD738]) initWithName:@"HKMCAnalysisManagerUserInitiatedObservers" loggingCategory:*v36];
    userInitiatedObservers = v24->_userInitiatedObservers;
    v24->_userInitiatedObservers = v39;

    v41 = HKCreateSerialDispatchQueue();
    queue = v24->_queue;
    v24->_queue = v41;

    objc_storeStrong(&v24->_calendarCache, cache);
    v43 = _Block_copy(providerCopy);
    dayStreamProcessorProvider = v24->_dayStreamProcessorProvider;
    v24->_dayStreamProcessorProvider = v43;

    v45 = _Block_copy(analyzerProviderCopy);
    historicalAnalyzerProvider = v24->_historicalAnalyzerProvider;
    v24->_historicalAnalyzerProvider = v45;

    objc_initWeak(&location, v24);
    v47 = objc_alloc(MEMORY[0x277CCDD98]);
    v48 = v24->_queue;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __273__HDMCAnalysisManager__initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache_dayStreamProcessorProvider_historicalAnalyzerProvider___block_invoke;
    v61[3] = &unk_27865A750;
    objc_copyWeak(&v62, &location);
    v49 = [v47 initWithMode:0 clock:1 queue:v48 delay:v61 block:0.25];
    analyzeOperation = v24->_analyzeOperation;
    v24->_analyzeOperation = v49;

    v51 = objc_loadWeakRetained(&v24->_profile);
    database = [v51 database];
    [database addProtectedDataObserver:v24 queue:v24->_queue];

    [(HDMCAnalysisManager *)v24 _startObserving];
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
    analyzerProviderCopy = aBlock;
  }

  return v24;
}

void __273__HDMCAnalysisManager__initWithProfile_settingsManager_featureAvailabilityManager_heartRateAvailabilityManager_wristTemperatureAvailabilityManager_deviationsAvailabilityManager_deviceScopedStorageManager_calendarCache_dayStreamProcessorProvider_historicalAnalyzerProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _queue_analyzeNowWithForceIncludeCycles:0 forceAnalyzeCompleteHistory:0 error:0];
}

- (void)dealloc
{
  v45 = *MEMORY[0x277D85DE8];
  [(HKMCSettingsManager *)self->_settingsManager removeObserver:self];
  [(HDFeatureAvailabilityManager *)self->_featureAvailabilityManager unregisterObserver:self];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = HKMCDaySummarySampleTypes();
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        dataManager = [WeakRetained dataManager];
        [dataManager removeObserver:self forDataType:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v5);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = HKMCCycleFactorsTypes();
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        v17 = objc_loadWeakRetained(&self->_profile);
        dataManager2 = [v17 dataManager];
        [dataManager2 removeObserver:self forDataType:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = HKMCDeviationSampleTypes();
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * v23);
        v25 = objc_loadWeakRetained(&self->_profile);
        dataManager3 = [v25 dataManager];
        [dataManager3 removeObserver:self forDataType:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v21);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D104E8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CBE580] object:0];

  v29.receiver = self;
  v29.super_class = HDMCAnalysisManager;
  [(HDMCAnalysisManager *)&v29 dealloc];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_needsMaintenanceAnalysis)
  {

    [(HDMCAnalysisManager *)self _queue_enqueueMaintenanceOperationIfNeeded];
  }
}

- (void)_startObserving
{
  v44 = *MEMORY[0x277D85DE8];
  [(HKMCSettingsManager *)self->_settingsManager addObserver:self queue:self->_queue];
  [(HDFeatureAvailabilityManager *)self->_featureAvailabilityManager registerObserver:self queue:self->_queue];
  [(HKFeatureStatusManager *)self->_heartRateFeatureStatusManager registerObserver:self queue:self->_queue];
  [(HKFeatureStatusManager *)self->_wristTemperatureFeatureStatusManager registerObserver:self queue:self->_queue];
  [(HKFeatureStatusManager *)self->_deviationsFeatureStatusManager registerObserver:self queue:self->_queue];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = HKMCDaySummarySampleTypes();
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        dataManager = [WeakRetained dataManager];
        [dataManager addObserver:self forDataType:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = HKMCCycleFactorsTypes();
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        v17 = objc_loadWeakRetained(&self->_profile);
        dataManager2 = [v17 dataManager];
        [dataManager2 addObserver:self forDataType:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v13);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = HKMCDeviationSampleTypes();
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * v23);
        v25 = objc_loadWeakRetained(&self->_profile);
        dataManager3 = [v25 dataManager];
        [dataManager3 addObserver:self forDataType:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v21);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__userCharacteristicsDidChange_ name:*MEMORY[0x277D104E8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__calendarDayDidChange_ name:*MEMORY[0x277CBE580] object:0];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HDMCAnalysisManager_samplesAdded_anchor___block_invoke;
  v8[3] = &unk_27865A778;
  v8[4] = self;
  v9 = addedCopy;
  v7 = addedCopy;
  dispatch_async(queue, v8);
}

uint64_t __43__HDMCAnalysisManager_samplesAdded_anchor___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = v5;
    v7 = HKSensitiveLogItem();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to samples added: %@", &v9, 0x16u);
  }

  return [*(a1 + 32) _queue_analyzeIfNeeded];
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  removedCopy = removed;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDMCAnalysisManager_samplesOfTypesWereRemoved_anchor___block_invoke;
  v8[3] = &unk_27865A778;
  v8[4] = self;
  v9 = removedCopy;
  v7 = removedCopy;
  dispatch_async(queue, v8);
}

uint64_t __56__HDMCAnalysisManager_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = v5;
    v7 = HKSensitiveLogItem();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to samples removed of types: %@", &v9, 0x16u);
  }

  return [*(a1 + 32) _queue_analyzeIfNeeded];
}

- (id)_takeAccessibilityAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = 0;
  v6 = [database takeAccessibilityAssertionWithOwnerIdentifier:v5 timeout:&v9 error:300.0];
  v7 = v9;

  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCAnalysisManager _takeAccessibilityAssertion];
    }
  }

  return v6;
}

- (void)settingsManagerDidUpdateAnalysisSettings:(id)settings
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDMCAnalysisManager_settingsManagerDidUpdateAnalysisSettings___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __64__HDMCAnalysisManager_settingsManagerDidUpdateAnalysisSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to settings update", v7, 0xCu);
  }

  return [*(a1 + 32) _queue_analyzeIfNeeded];
}

- (void)settingsManagerDidUpdateAlgorithmVersionMismatchSettings:(id)settings
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HDMCAnalysisManager_settingsManagerDidUpdateAlgorithmVersionMismatchSettings___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __80__HDMCAnalysisManager_settingsManagerDidUpdateAlgorithmVersionMismatchSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to algorithm version mismatch settings update", v7, 0xCu);
  }

  return [*(a1 + 32) _queue_analyzeIfNeeded];
}

- (void)_userCharacteristicsDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HDMCAnalysisManager__userCharacteristicsDidChange___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __53__HDMCAnalysisManager__userCharacteristicsDidChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to user characteristics change", v7, 0xCu);
  }

  return [*(a1 + 32) _queue_analyzeIfNeeded];
}

- (void)_calendarDayDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDMCAnalysisManager__calendarDayDidChange___block_invoke;
  block[3] = &unk_27865A830;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __45__HDMCAnalysisManager__calendarDayDidChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to calendar day change", v7, 0xCu);
  }

  return [*(a1 + 32) _queue_analyzeIfNeeded];
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  v15 = *MEMORY[0x277D85DE8];
  providingCopy = providing;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    featureIdentifier = [providingCopy featureIdentifier];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = featureIdentifier;
    _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received feature status update for %{public}@", &v11, 0x16u);
  }

  [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v6 = *&v7[4];
    _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to onboarding state changing", v7, 0xCu);
  }

  [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded:*v7];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings
{
  v26 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  dispatch_assert_queue_V2(self->_queue);
  p_queue_lastFeatureSettings = &self->_queue_lastFeatureSettings;
  if (self->_queue_lastFeatureSettings)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    featureSettingsManager = [WeakRetained featureSettingsManager];
    featureIdentifier = [settingsCopy featureIdentifier];
    v23 = 0;
    v9 = [featureSettingsManager featureSettingsForFeatureIdentifier:featureIdentifier error:&v23];
    v10 = v23;

    if (v9)
    {
      v11 = [v9 projectionsEnabledSettingsHaveChangedFromFeatureSettings:*p_queue_lastFeatureSettings];
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2E8];
      v13 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v14 = v12;
          v15 = objc_opt_class();
          *buf = 138543362;
          v25 = v15;
          v16 = v15;
          _os_log_impl(&dword_2293D1000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings changed: projections enabled changed, analyzing", buf, 0xCu);
        }

        [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded];
      }

      else if (v13)
      {
        v20 = v12;
        v21 = objc_opt_class();
        *buf = 138543362;
        v25 = v21;
        v22 = v21;
        _os_log_impl(&dword_2293D1000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings changed, not affecting projections enabled", buf, 0xCu);
      }

      objc_storeStrong(p_queue_lastFeatureSettings, v9);
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager featureAvailabilityProvidingDidUpdateSettings:];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      *buf = 138543362;
      v25 = objc_opt_class();
      v19 = v25;
      _os_log_impl(&dword_2293D1000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings changed: no cached settings, analyzing", buf, 0xCu);
    }

    [(HDMCAnalysisManager *)self _queue_analyzeIfNeeded];
  }
}

- (HKMCAnalysis)currentAnalysis
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKMCAnalysis *)self->_lock_currentAnalysis copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_analyzeWithForceIncludeCycles:(BOOL)cycles forceAnalyzeCompleteHistory:(BOOL)history error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HDMCAnalysisManager__analyzeWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke;
  v12[3] = &unk_27865A858;
  v12[4] = self;
  v12[5] = &v21;
  cyclesCopy = cycles;
  historyCopy = history;
  v12[6] = &v15;
  dispatch_sync(queue, v12);
  v7 = v16[5];
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v10;
}

void __88__HDMCAnalysisManager__analyzeWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _queue_analyzeNowWithForceIncludeCycles:v3 forceAnalyzeCompleteHistory:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)_queue_analyzeIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKObserverSet *)self->_userInitiatedObservers count])
  {
    analyzeOperation = self->_analyzeOperation;

    [(_HKDelayedOperation *)analyzeOperation execute];
  }

  else if ([(HKObserverSet *)self->_observers count])
  {

    [(HDMCAnalysisManager *)self _queue_enqueueMaintenanceOperationIfNeeded];
  }
}

- (void)_queue_enqueueMaintenanceOperationIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_queue_maintenanceOperationQueued)
  {
    *&self->_queue_needsMaintenanceAnalysis = 257;
    v3 = MEMORY[0x277D10748];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__HDMCAnalysisManager__queue_enqueueMaintenanceOperationIfNeeded__block_invoke;
    v15[3] = &unk_27865A830;
    v15[4] = self;
    v7 = [v3 maintenanceOperationWithName:v5 queue:queue synchronousBlock:v15];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v7];

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      *buf = 138543362;
      v17 = v13;
      v14 = v13;
      _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enqueued maintenance operation for analysis", buf, 0xCu);
    }
  }
}

- (void)_queue_runMaintenanceOperation
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_needsMaintenanceAnalysis)
  {
    v3 = [(HDMCAnalysisManager *)self _queue_analyzeNowWithForceIncludeCycles:0 forceAnalyzeCompleteHistory:0 error:0];
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v7 = 138543362;
      v8 = objc_opt_class();
      v6 = v8;
      _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping maintenance operation for analysis since no longer needed", &v7, 0xCu);
    }
  }

  self->_queue_maintenanceOperationQueued = 0;
}

- (id)_queue_analyzeNowWithForceIncludeCycles:(BOOL)cycles forceAnalyzeCompleteHistory:(BOOL)history error:(id *)error
{
  dispatch_assert_queue_V2(self->_queue);
  v9 = [MEMORY[0x277CCD288] transactionWithOwner:self activityName:@"analyzeNowWithForceIncludeCycles"];
  _takeAccessibilityAssertion = [(HDMCAnalysisManager *)self _takeAccessibilityAssertion];
  v11 = [MEMORY[0x277D10788] contextForAccessibilityAssertion:_takeAccessibilityAssertion];
  [v11 setCacheScope:1];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __97__HDMCAnalysisManager__queue_analyzeNowWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke;
  v21 = &unk_27865A880;
  v24 = &v27;
  selfCopy = self;
  v14 = _takeAccessibilityAssertion;
  v23 = v14;
  cyclesCopy = cycles;
  historyCopy = history;
  LODWORD(error) = [database performWithTransactionContext:v11 error:error block:&v18];

  if (error && v28[5])
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_currentAnalysis, v28[5]);
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  self->_queue_needsMaintenanceAnalysis = v15;
  [v14 invalidate];
  [v9 invalidate];
  v16 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v16;
}

BOOL __97__HDMCAnalysisManager__queue_analyzeNowWithForceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _queue_computeAnalysisWithDatabaseAccessibilityAssertion:*(a1 + 40) forceIncludeCycles:*(a1 + 56) forceAnalyzeCompleteHistory:*(a1 + 57) error:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(id)assertion forceIncludeCycles:(BOOL)cycles forceAnalyzeCompleteHistory:(BOOL)history error:(id *)error
{
  historyCopy = history;
  cyclesCopy = cycles;
  v377 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  if (self->_test_analysis)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      test_analysis = self->_test_analysis;
      *buf = 138543618;
      v361 = v13;
      v362 = 2112;
      v363 = test_analysis;
      v15 = v13;
      _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning test analysis: %@", buf, 0x16u);
    }

    observers = self->_observers;
    v356[0] = MEMORY[0x277D85DD0];
    v356[1] = 3221225472;
    v356[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke;
    v356[3] = &unk_27865A8A8;
    v356[4] = self;
    [(HKObserverSet *)observers notifyObservers:v356];
    v17 = self->_test_analysis;
    goto LABEL_226;
  }

  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  tinkerModeEnabled = [behavior tinkerModeEnabled];

  if (!tinkerModeEnabled)
  {
    v28 = selfCopy;
    if ([(HKObserverSet *)selfCopy->_userInitiatedObservers count])
    {
      v249 = 1;
    }

    else
    {
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      v249 = [mEMORY[0x277CCDD30] isAppleWatch] | cyclesCopy;

      v28 = selfCopy;
    }

    currentCalendar = [(HKCalendarCache *)v28->_calendarCache currentCalendar];
    v30 = HKMCTodayIndex();
    v31 = objc_loadWeakRetained(&selfCopy->_profile);
    featureSettingsManager = [v31 featureSettingsManager];
    v33 = *MEMORY[0x277CCC090];
    v355 = 0;
    obj = [featureSettingsManager featureSettingsForFeatureIdentifier:v33 error:&v355];
    v34 = v355;

    if (!obj)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v55 = v34;
      if (v55)
      {
        v56 = v55;
        if (errorCopy)
        {
          v57 = v55;
          v17 = 0;
          v55 = v56;
          *errorCopy = v56;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v55 = v56;
        }

        v64 = v56;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_225;
    }

    heartRateFeatureStatusManager = selfCopy->_heartRateFeatureStatusManager;
    v354 = v34;
    v251 = [(HKFeatureStatusManager *)heartRateFeatureStatusManager featureStatusWithError:&v354];
    v36 = v354;

    if (!v251)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v58 = v36;
      if (v58)
      {
        v59 = v58;
        if (errorCopy)
        {
          v60 = v58;
          v17 = 0;
          v58 = v59;
          *errorCopy = v59;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v58 = v59;
        }

        v64 = v59;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_224;
    }

    v37 = *MEMORY[0x277CCBEA0];
    v38 = [(NSArray *)v251 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    areAllRequirementsSatisfied = [v38 areAllRequirementsSatisfied];

    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v41 = v40;
      v42 = @"NO";
      if (areAllRequirementsSatisfied)
      {
        v42 = @"YES";
      }

      *buf = 138543618;
      v361 = v40;
      v362 = 2112;
      v363 = v42;
      _os_log_impl(&dword_2293D1000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Use heart rate input: %@", buf, 0x16u);
    }

    wristTemperatureFeatureStatusManager = selfCopy->_wristTemperatureFeatureStatusManager;
    v353 = v36;
    v250 = [(HKFeatureStatusManager *)wristTemperatureFeatureStatusManager featureStatusWithError:&v353];
    v44 = v353;

    if (!v250)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v61 = v44;
      if (v61)
      {
        v62 = v61;
        if (errorCopy)
        {
          v63 = v61;
          v17 = 0;
          v61 = v62;
          *errorCopy = v62;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v61 = v62;
        }

        v64 = v62;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_223;
    }

    v45 = [(NSArray *)v250 objectForKeyedSubscript:v37];
    areAllRequirementsSatisfied2 = [v45 areAllRequirementsSatisfied];

    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = objc_opt_class();
      v48 = v47;
      v49 = @"NO";
      if (areAllRequirementsSatisfied2)
      {
        v49 = @"YES";
      }

      *buf = 138543618;
      v361 = v47;
      v362 = 2112;
      v363 = v49;
      _os_log_impl(&dword_2293D1000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Use wrist temperature input: %@", buf, 0x16u);
    }

    deviationsFeatureStatusManager = selfCopy->_deviationsFeatureStatusManager;
    v352 = v44;
    v248 = [(HKFeatureStatusManager *)deviationsFeatureStatusManager featureStatusWithError:&v352];
    v51 = v352;

    if (selfCopy->_deviationsFeatureStatusManager && !v248)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v52 = v51;
      if (v52)
      {
        v53 = v52;
        if (errorCopy)
        {
          v54 = v52;
          v17 = 0;
          v52 = v53;
          *errorCopy = v53;
        }

        else
        {
          _HKLogDroppedError();
          v17 = 0;
          v52 = v53;
        }

        v64 = v53;
      }

      else
      {
        v17 = 0;
        v64 = 0;
      }

      goto LABEL_222;
    }

    v243 = [(HDMCAnalysisManager *)selfCopy _processorConfigurationForTodayIndex:v30 deviationsFeatureStatus:v248 calendar:currentCalendar];
    v257 = (*(selfCopy->_dayStreamProcessorProvider + 2))();
    v241 = (*(selfCopy->_historicalAnalyzerProvider + 2))();
    if (!v257)
    {
      [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:a2 forceIncludeCycles:selfCopy forceAnalyzeCompleteHistory:? error:?];
    }

    if (!v241)
    {
      [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:a2 forceIncludeCycles:selfCopy forceAnalyzeCompleteHistory:? error:?];
    }

    v240 = [[HDMCSymptomHistoryBuilder alloc] initWithCurrentDayIndex:v30];
    v346 = 0;
    v347 = &v346;
    v348 = 0x3032000000;
    v349 = __Block_byref_object_copy__1;
    v350 = __Block_byref_object_dispose__1;
    v351 = 0;
    v342 = 0;
    v343 = &v342;
    v344 = 0x2020000000;
    v345 = 0;
    v338 = 0;
    v339 = &v338;
    v340 = 0x2020000000;
    v341 = 0;
    v332 = 0;
    v333 = &v332;
    v334 = 0x3032000000;
    v335 = __Block_byref_object_copy__1;
    v336 = __Block_byref_object_dispose__1;
    v337 = 0;
    v326 = 0;
    v327 = &v326;
    v328 = 0x3032000000;
    v329 = __Block_byref_object_copy__1;
    v330 = __Block_byref_object_dispose__1;
    v331 = 0;
    v320 = 0;
    v321 = &v320;
    v322 = 0x3032000000;
    v323 = __Block_byref_object_copy__1;
    v324 = __Block_byref_object_dispose__1;
    v325 = 0;
    v65 = _HKLogPersistedSignposts();
    spid = _HKLogSignpostIDGenerate();

    _HKInitializeLogging();
    v66 = _HKLogPersistedSignposts();
    v67 = os_signpost_enabled(v66);

    if (v67)
    {
      v68 = _HKLogPersistedSignposts();
      v69 = v68;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
      {
        v70 = [MEMORY[0x277CCABB0] numberWithBool:areAllRequirementsSatisfied];
        *buf = 138412290;
        v361 = v70;
        _os_signpost_emit_with_name_impl(&dword_2293D1000, v69, OS_SIGNPOST_INTERVAL_BEGIN, spid, "menstrual-cycles-analysis", "useHeartRateInput=%@", buf, 0xCu);
      }
    }

    if ([(HKObserverSet *)selfCopy->_userInitiatedObservers count])
    {
      v71 = 1;
    }

    else
    {
      v71 = historyCopy;
    }

    v72 = v71 == 0;
    v237 = *MEMORY[0x277CCCEF8] + 1;
    if (v71)
    {
      v73 = *(MEMORY[0x277CCBBF8] + 8);
    }

    else
    {
      v73 = *MEMORY[0x277CCCEF8] + 1;
    }

    v254 = v73;
    v74 = v30 - *MEMORY[0x277CCCEF8] + 1;
    if (v72)
    {
      v75 = v30 - *MEMORY[0x277CCCEF8] + 1;
    }

    else
    {
      v75 = *MEMORY[0x277CCBBF8];
    }

    v245 = v75;
    date = [MEMORY[0x277CBEAA8] date];
    v77 = [date hk_morningIndexWithCalendar:currentCalendar];

    v78 = MEMORY[0x277D105E8];
    v79 = objc_loadWeakRetained(&selfCopy->_profile);
    calendarCache = selfCopy->_calendarCache;
    v319 = v51;
    v244 = [v78 hdmc_ongoingFactorsOnDayIndex:v74 profile:v79 calendarCache:calendarCache error:&v319];
    v81 = v319;

    _HKInitializeLogging();
    v82 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = objc_opt_class();
      v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v244, "count")}];
      *buf = 138543618;
      v361 = v83;
      v362 = 2112;
      v363 = v84;
      _os_log_impl(&dword_2293D1000, v82, OS_LOG_TYPE_DEFAULT, "[%{public}@] Total ongoing cycle factors that overlap time range: %@", buf, 0x16u);
    }

    if (v244)
    {
      v318 = v81;
      v85 = [(HDMCAnalysisManager *)selfCopy initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:assertionCopy error:&v318];
      v86 = v318;

      if (v85)
      {
        v316 = 0u;
        v317 = 0u;
        v314 = 0u;
        v315 = 0u;
        v87 = v244;
        v88 = [v87 countByEnumeratingWithState:&v314 objects:v376 count:16];
        if (v88)
        {
          v89 = *v315;
          do
          {
            for (i = 0; i != v88; ++i)
            {
              if (*v315 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = *(*(&v314 + 1) + 8 * i);
              [v91 hkmc_cycleFactor];
              v92 = HAMenstrualAlgorithmsPhaseFromHKMCCycleFactor();
              startDate = [v91 startDate];
              [v257 beginPhase:v92 onJulianDay:{objc_msgSend(startDate, "hk_dayIndexWithCalendar:", currentCalendar)}];
            }

            v88 = [v87 countByEnumeratingWithState:&v314 objects:v376 count:16];
          }

          while (v88);
        }

        v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v310 = 0;
        v311 = &v310;
        v312 = 0x2020000000;
        v313 = 0;
        v306 = 0;
        v307 = &v306;
        v308 = 0x2020000000;
        v309 = 0;
        if (areAllRequirementsSatisfied)
        {
          v95 = [HDMCHeartStatisticsEnumerator alloc];
          v96 = objc_loadWeakRetained(&selfCopy->_profile);
          assertionCopy = [(HDMCHeartStatisticsEnumerator *)v95 initWithProfile:v96 calendarCache:selfCopy->_calendarCache dayIndexRange:v77 - 100 databaseAccessibilityAssertion:100, assertionCopy];

          _HKInitializeLogging();
          v98 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v99 = objc_opt_class();
            *buf = 138543362;
            v361 = v99;
            _os_log_impl(&dword_2293D1000, v98, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating heart rate statistics", buf, 0xCu);
          }

          v305 = v86;
          v301[0] = MEMORY[0x277D85DD0];
          v301[1] = 3221225472;
          v301[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_356;
          v301[3] = &unk_27865A8D0;
          v302 = v94;
          v303 = &v310;
          v304 = &v306;
          v100 = [(HDMCHeartStatisticsEnumerator *)assertionCopy enumerateWithError:&v305 handler:v301];
          v101 = v305;

          if (!v100)
          {
            _HKInitializeLogging();
            v102 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              objc_opt_class();
              [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
            }
          }
        }

        else
        {
          v101 = v86;
        }

        v110 = [HDMCDaySummaryEnumerator alloc];
        v111 = objc_loadWeakRetained(&selfCopy->_profile);
        LOBYTE(v228) = areAllRequirementsSatisfied2;
        v228 = [(HDMCDaySummaryEnumerator *)v110 initWithProfile:v111 calendarCache:selfCopy->_calendarCache dayIndexRange:v245 ascending:v254 includeFactors:1 includeWristTemperature:1, v228];

        _HKInitializeLogging();
        v112 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          v113 = objc_opt_class();
          *buf = 138543362;
          v361 = v113;
          _os_log_impl(&dword_2293D1000, v112, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating day summaries", buf, 0xCu);
        }

        v297 = 0;
        v298 = &v297;
        v299 = 0x2020000000;
        v300 = v77 - 101;
        v296 = v101;
        v279[0] = MEMORY[0x277D85DD0];
        v279[1] = 3221225472;
        v279[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_359;
        v279[3] = &unk_27865A8F8;
        v291 = v74;
        v292 = v237;
        v279[4] = selfCopy;
        v284 = &v342;
        v114 = v257;
        v294 = areAllRequirementsSatisfied;
        v280 = v114;
        v285 = &v297;
        v246 = v94;
        v281 = v246;
        v293 = v30;
        v231 = v240;
        v282 = v231;
        v286 = &v346;
        v287 = &v332;
        v288 = &v326;
        v295 = v249;
        v289 = &v320;
        v290 = &v338;
        v230 = v241;
        v283 = v230;
        v115 = [(HDMCDaySummaryEnumerator *)v228 enumerateWithError:&v296 handler:v279];
        v238 = v296;

        if (areAllRequirementsSatisfied)
        {
          v116 = v298[3];
          if (v116 < v77 - 1)
          {
            v117 = v116 + 1;
            do
            {
              v118 = [MEMORY[0x277CCABB0] numberWithInteger:v117];
              v119 = [(NSArray *)v246 objectForKeyedSubscript:v118];
              v120 = v119 == 0;

              if (!v120)
              {
                v121 = MEMORY[0x277D0FC88];
                v122 = [MEMORY[0x277CCABB0] numberWithInteger:v117];
                v123 = [(NSArray *)v246 objectForKeyedSubscript:v122];
                v124 = [v121 hkmc_dayInputWithHeartStatistics:v123];
                [v114 appendDay:v124];
              }

              v298[3] = v117++;
            }

            while (v77 != v117);
          }
        }

        _HKInitializeLogging();
        v125 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v126 = objc_opt_class();
          v233 = [MEMORY[0x277CCABB0] numberWithInteger:v343[3]];
          birthDateComponents = [(NSArray *)v243 birthDateComponents];
          hk_dayIndexDateDescription = [birthDateComponents hk_dayIndexDateDescription];
          v127 = HKSensitiveLogItem();
          userReportedCycleLength = [(NSArray *)v243 userReportedCycleLength];
          julianDayOfUserReportedCycleLength = [(NSArray *)v243 julianDayOfUserReportedCycleLength];
          userReportedMenstruationLength = [(NSArray *)v243 userReportedMenstruationLength];
          julianDayOfUserReportedMenstruationLength = [(NSArray *)v243 julianDayOfUserReportedMenstruationLength];
          v131 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCSettingsManager dayStreamProcessorAlgorithmVersion](selfCopy->_settingsManager, "dayStreamProcessorAlgorithmVersion")}];
          *buf = 138545154;
          v361 = v126;
          v362 = 2112;
          v363 = v233;
          v364 = 2112;
          v365 = v127;
          v366 = 2112;
          v367 = userReportedCycleLength;
          v368 = 2112;
          v369 = julianDayOfUserReportedCycleLength;
          v370 = 2112;
          v371 = userReportedMenstruationLength;
          v372 = 2112;
          v373 = julianDayOfUserReportedMenstruationLength;
          v374 = 2112;
          v375 = v131;
          _os_log_impl(&dword_2293D1000, v125, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing %@ summaries with user entered birthdate: %@, cycle length: %@ (%@), period length: %@ (%@) alg version %@", buf, 0x52u);
        }

        if (v249)
        {
          _HKInitializeLogging();
          v132 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            v133 = objc_opt_class();
            v134 = [MEMORY[0x277CCABB0] numberWithInteger:v339[3]];
            *buf = 138543618;
            v361 = v133;
            v362 = 2112;
            v363 = v134;
            _os_log_impl(&dword_2293D1000, v132, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing %@ summaries for cycles", buf, 0x16u);
          }
        }

        else
        {
          _HKInitializeLogging();
          v132 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            v135 = objc_opt_class();
            *buf = 138543362;
            v361 = v135;
            _os_log_impl(&dword_2293D1000, v132, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not analyzing for cycles", buf, 0xCu);
          }
        }

        if (v115)
        {
          test_algorithmsAnalysis = selfCopy->_test_algorithmsAnalysis;
          if (test_algorithmsAnalysis)
          {
            v137 = test_algorithmsAnalysis;
            goto LABEL_142;
          }

          integerValue = [v321[5] integerValue];
          v278 = v238;
          v149 = [v114 analyzeWithMostRecentMenstrualFlowJulianDayUpdated:integerValue error:&v278];
          v150 = v278;

          v137 = v149;
          if (v137)
          {
            v238 = v150;
LABEL_142:
            _HKInitializeLogging();
            v235 = v137;
            v151 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
            {
              v152 = objc_opt_class();
              hkmc_description = [(HAMenstrualAlgorithmsAnalysis *)v137 hkmc_description];
              v154 = HKSensitiveLogItem();
              *buf = 138543618;
              v361 = v152;
              v362 = 2112;
              v363 = v154;
              _os_log_impl(&dword_2293D1000, v151, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received analysis from algorithms: %@", buf, 0x16u);
            }

            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            menstruationPredictions = [(HAMenstrualAlgorithmsAnalysis *)v235 menstruationPredictions];
            v156 = [menstruationPredictions countByEnumeratingWithState:&v274 objects:v359 count:16];
            if (v156)
            {
              v157 = *v275;
              do
              {
                for (j = 0; j != v156; ++j)
                {
                  if (*v275 != v157)
                  {
                    objc_enumerationMutation(menstruationPredictions);
                  }

                  v159 = *(*(&v274 + 1) + 8 * j);
                  _HKInitializeLogging();
                  v160 = *MEMORY[0x277CCC2E8];
                  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
                  {
                    v161 = objc_opt_class();
                    hkmc_description2 = [v159 hkmc_description];
                    v163 = HKSensitiveLogItem();
                    *buf = 138543618;
                    v361 = v161;
                    v362 = 2112;
                    v363 = v163;
                    _os_log_impl(&dword_2293D1000, v160, OS_LOG_TYPE_DEFAULT, "[%{public}@] Menstruation prediction: %@", buf, 0x16u);
                  }
                }

                v156 = [menstruationPredictions countByEnumeratingWithState:&v274 objects:v359 count:16];
              }

              while (v156);
            }

            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            fertilityPredictions = [(HAMenstrualAlgorithmsAnalysis *)v235 fertilityPredictions];
            v165 = [fertilityPredictions countByEnumeratingWithState:&v270 objects:v358 count:16];
            if (v165)
            {
              v166 = *v271;
              do
              {
                for (k = 0; k != v165; ++k)
                {
                  if (*v271 != v166)
                  {
                    objc_enumerationMutation(fertilityPredictions);
                  }

                  v168 = *(*(&v270 + 1) + 8 * k);
                  _HKInitializeLogging();
                  v169 = *MEMORY[0x277CCC2E8];
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                  {
                    v170 = objc_opt_class();
                    hkmc_description3 = [v168 hkmc_description];
                    v172 = HKSensitiveLogItem();
                    *buf = 138543618;
                    v361 = v170;
                    v362 = 2112;
                    v363 = v172;
                    _os_log_impl(&dword_2293D1000, v169, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fertility prediction: %@", buf, 0x16u);
                  }
                }

                v165 = [fertilityPredictions countByEnumeratingWithState:&v270 objects:v358 count:16];
              }

              while (v165);
            }

            if (!v249)
            {
              v175 = 0;
              goto LABEL_184;
            }

            test_algorithmsCycles = selfCopy->_test_algorithmsCycles;
            if (test_algorithmsCycles)
            {
              v174 = test_algorithmsCycles;
LABEL_170:
              _HKInitializeLogging();
              v178 = *MEMORY[0x277CCC2E8];
              if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
              {
                v179 = objc_opt_class();
                v180 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v174, "count")}];
                *buf = 138543618;
                v361 = v179;
                v362 = 2112;
                v363 = v180;
                _os_log_impl(&dword_2293D1000, v178, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %@ cycles from historical analyzer", buf, 0x16u);
              }

              v267 = 0u;
              v268 = 0u;
              v265 = 0u;
              v266 = 0u;
              v175 = v174;
              v181 = [(NSArray *)v175 countByEnumeratingWithState:&v265 objects:v357 count:16];
              if (v181)
              {
                v182 = *v266;
                do
                {
                  for (m = 0; m != v181; ++m)
                  {
                    if (*v266 != v182)
                    {
                      objc_enumerationMutation(v175);
                    }

                    v184 = *(*(&v265 + 1) + 8 * m);
                    _HKInitializeLogging();
                    v185 = *MEMORY[0x277CCC2E8];
                    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
                    {
                      v186 = v185;
                      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
                      {
                        v187 = objc_opt_class();
                        hkmc_description4 = [v184 hkmc_description];
                        *buf = 138543618;
                        v361 = v187;
                        v362 = 2112;
                        v363 = hkmc_description4;
                        _os_log_debug_impl(&dword_2293D1000, v186, OS_LOG_TYPE_DEBUG, "[%{public}@] Cycle: %@", buf, 0x16u);
                      }
                    }
                  }

                  v181 = [(NSArray *)v175 countByEnumeratingWithState:&v265 objects:v357 count:16];
                }

                while (v181);
              }

LABEL_184:
              _HKInitializeLogging();
              v189 = _HKLogPersistedSignposts();
              v190 = os_signpost_enabled(v189);

              if (v190)
              {
                v191 = _HKLogPersistedSignposts();
                v192 = v191;
                if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v191))
                {
                  v193 = [MEMORY[0x277CCABB0] numberWithBool:areAllRequirementsSatisfied];
                  *buf = 138412290;
                  v361 = v193;
                  _os_signpost_emit_with_name_impl(&dword_2293D1000, v192, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-analysis", "useHeartRateInput=%@", buf, 0xCu);
                }
              }

              recentSymptoms = [(HDMCSymptomHistoryBuilder *)v231 recentSymptoms];
              v195 = v347[5];
              v196 = v333[5];
              v197 = v327[5];
              v198 = v311[3];
              v199 = v307[3];
              onboardingRecord = [(NSArray *)v248 onboardingRecord];
              featureSettings = [onboardingRecord featureSettings];
              BYTE1(v229) = areAllRequirementsSatisfied2;
              LOBYTE(v229) = areAllRequirementsSatisfied;
              v202 = [(HDMCAnalysisManager *)selfCopy _analysisWithAlgorithmsAnalysis:v235 algorithmsCycles:v175 recentSymptoms:recentSymptoms mostRecentBasalBodyTemperature:v195 lastLoggedDayIndex:v196 lastMenstrualFlowDayIndex:v197 numberOfDailySleepHeartRateStatisticsForPast100Days:v198 numberOfDailyAwakeHeartRateStatisticsForPast100Days:v199 featureSettings:obj useHeartRateInput:v229 useWristTemperatureInput:featureSettings deviationsFeatureSettings:?];

              _HKInitializeLogging();
              v203 = *MEMORY[0x277CCC2E8];
              if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
              {
                v204 = v203;
                if (os_signpost_enabled(v204))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_2293D1000, v204, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "hdmc_analysisSampleInfo", "", buf, 2u);
                }
              }

              v205 = MEMORY[0x277D10848];
              v264 = 0;
              v206 = objc_loadWeakRetained(&selfCopy->_profile);
              v263 = v238;
              LOBYTE(v205) = [v205 hdmc_analysisSampleInfo:&v264 forProfile:v206 error:&v263];
              v207 = v264;
              v64 = v263;

              if (v205)
              {
                [v202 setLatestSampleInfo:v207];
                _HKInitializeLogging();
                v208 = *MEMORY[0x277CCC2E8];
                if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
                {
                  v209 = v208;
                  if (os_signpost_enabled(v209))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_2293D1000, v209, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "hdmc_analysisSampleInfo", "", buf, 2u);
                  }
                }

                _HKInitializeLogging();
                v210 = *MEMORY[0x277CCC2E8];
                if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                {
                  v211 = objc_opt_class();
                  v212 = HKSensitiveLogItem();
                  *buf = 138543618;
                  v361 = v211;
                  v362 = 2112;
                  v363 = v212;
                  _os_log_impl(&dword_2293D1000, v210, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did update analysis: %@", buf, 0x16u);
                }

                objc_storeStrong(&selfCopy->_queue_lastFeatureSettings, obj);
                v213 = selfCopy->_observers;
                v260[0] = MEMORY[0x277D85DD0];
                v260[1] = 3221225472;
                v260[2] = __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_363;
                v260[3] = &unk_27865A8A8;
                v214 = v202;
                v261 = v214;
                [(HKObserverSet *)v213 notifyObservers:v260];
                v17 = v214;
                v215 = v261;
              }

              else
              {
                _HKInitializeLogging();
                v216 = *MEMORY[0x277CCC2E8];
                if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
                {
                  objc_opt_class();
                  [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
                }

                v217 = v64;
                v218 = v217;
                if (v217)
                {
                  if (errorCopy)
                  {
                    v219 = v217;
                    *errorCopy = v218;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                _HKInitializeLogging();
                v223 = *MEMORY[0x277CCC2E8];
                if (!os_signpost_enabled(*MEMORY[0x277CCC2E8]))
                {
                  v17 = 0;
                  goto LABEL_218;
                }

                v215 = v223;
                if (os_signpost_enabled(v215))
                {
                  *v262 = 0;
                  _os_signpost_emit_with_name_impl(&dword_2293D1000, v215, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "hdmc_analysisSampleInfo", "", v262, 2u);
                }

                v17 = 0;
              }

LABEL_218:
LABEL_219:

              v145 = v235;
              goto LABEL_220;
            }

            v269 = v238;
            v176 = [v230 analyzeWithError:&v269];
            v177 = v269;

            v174 = v176;
            if (v174)
            {
              v238 = v177;
              goto LABEL_170;
            }

            _HKInitializeLogging();
            v225 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
            {
              objc_opt_class();
              [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
            }

            v226 = v177;
            v175 = v226;
            if (v226)
            {
              if (errorCopy)
              {
                v227 = v226;
                v17 = 0;
                *errorCopy = v175;
LABEL_237:
                v64 = v175;
                goto LABEL_219;
              }

              _HKLogDroppedError();
            }

            v17 = 0;
            goto LABEL_237;
          }

          _HKInitializeLogging();
          v220 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
          {
            objc_opt_class();
            [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
          }

          v221 = v150;
          v145 = v221;
          if (v221)
          {
            if (errorCopy)
            {
              v146 = v221;
              v222 = v221;
              goto LABEL_136;
            }

            _HKLogDroppedError();
          }
        }

        else
        {
          _HKInitializeLogging();
          v138 = _HKLogPersistedSignposts();
          v139 = os_signpost_enabled(v138);

          if (v139)
          {
            v140 = _HKLogPersistedSignposts();
            v141 = v140;
            if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v140))
            {
              v142 = [MEMORY[0x277CCABB0] numberWithBool:areAllRequirementsSatisfied];
              *buf = 138412290;
              v361 = v142;
              _os_signpost_emit_with_name_impl(&dword_2293D1000, v141, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-analysis", "useHeartRateInput=%@", buf, 0xCu);
            }
          }

          _HKInitializeLogging();
          v143 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            objc_opt_class();
            [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
          }

          v144 = v238;
          v145 = v144;
          if (v144)
          {
            if (errorCopy)
            {
              v146 = v144;
              v147 = v144;
LABEL_136:
              v17 = 0;
              v145 = v146;
              *errorCopy = v146;
              v64 = v146;
LABEL_220:

              _Block_object_dispose(&v297, 8);
              _Block_object_dispose(&v306, 8);
              _Block_object_dispose(&v310, 8);
              v105 = v246;
              goto LABEL_221;
            }

            _HKLogDroppedError();
          }
        }

        v17 = 0;
        v64 = v145;
        goto LABEL_220;
      }

      v108 = v86;
      v105 = v108;
      if (v108)
      {
        if (errorCopy)
        {
          v106 = v108;
          v109 = v108;
          goto LABEL_102;
        }

        _HKLogDroppedError();
      }
    }

    else
    {
      _HKInitializeLogging();
      v103 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        [HDMCAnalysisManager _queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:];
      }

      v104 = v81;
      v105 = v104;
      if (v104)
      {
        if (errorCopy)
        {
          v106 = v104;
          v107 = v104;
LABEL_102:
          v17 = 0;
          v105 = v106;
          *errorCopy = v106;
          v64 = v106;
LABEL_221:

          _Block_object_dispose(&v320, 8);
          _Block_object_dispose(&v326, 8);

          _Block_object_dispose(&v332, 8);
          _Block_object_dispose(&v338, 8);
          _Block_object_dispose(&v342, 8);
          _Block_object_dispose(&v346, 8);

          v52 = v243;
LABEL_222:

          v61 = v248;
LABEL_223:

          v58 = v250;
LABEL_224:

          v55 = v251;
LABEL_225:

          goto LABEL_226;
        }

        _HKLogDroppedError();
      }
    }

    v17 = 0;
    v64 = v105;
    goto LABEL_221;
  }

  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    *buf = 138543362;
    v361 = objc_opt_class();
    v24 = v361;
    _os_log_impl(&dword_2293D1000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping analysis since this is not a primary profile", buf, 0xCu);
  }

  hk_featureUnavailableForProfileError = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
  v26 = hk_featureUnavailableForProfileError;
  if (hk_featureUnavailableForProfileError)
  {
    if (errorCopy)
    {
      v27 = hk_featureUnavailableForProfileError;
      *errorCopy = v26;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v17 = 0;
LABEL_226:

  return v17;
}

void __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_356(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "dayIndex")}];
  [v3 setObject:v5 forKeyedSubscript:v6];

  v7 = [v5 tenthPercentileAsleepHeartRateStatistics];

  if (v7)
  {
    ++*(*(a1[5] + 8) + 24);
  }

  v8 = [v5 tenthPercentileAwakeHeartRateStatistics];

  if (v8)
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

void __133__HDMCAnalysisManager__queue_computeAnalysisWithDatabaseAccessibilityAssertion_forceIncludeCycles_forceAnalyzeCompleteHistory_error___block_invoke_359(uint64_t a1, void *a2)
{
  v45 = a2;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v3 = [v45 _daySummaryWithOverrideSourceIDBySourceID:0 ignoreCycleFactors:objc_msgSend(*(*(a1 + 32) + 48) ignoreOvulationTestResults:{"internalCycleFactorsOverrideEnabled"), objc_msgSend(*(*(a1 + 32) + 48), "internalIgnoreOvulationTestResultsEnabled")}];

    v4 = v3;
  }

  else
  {
    v4 = v45;
  }

  v46 = v4;
  v5 = [v4 dayIndex];
  v6 = [MEMORY[0x277D0FC88] hkmc_dayInputWithDaySummary:v46];
  v7 = *(a1 + 128);
  if (v5 >= v7 && v5 - v7 < *(a1 + 136))
  {
    if (!*(*(*(a1 + 72) + 8) + 24))
    {
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x277D0FC88] hkmc_emptyDayInputWithDayIndex:v7 - 10];
      [v9 appendDay:v10];
    }

    if (*(a1 + 152) == 1)
    {
      v11 = *(*(*(a1 + 80) + 8) + 24) + 1;
      if (v11 < v5)
      {
        do
        {
          v12 = *(a1 + 48);
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = MEMORY[0x277D0FC88];
            v16 = *(a1 + 40);
            v17 = *(a1 + 48);
            v18 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
            v19 = [v17 objectForKeyedSubscript:v18];
            v20 = [v15 hkmc_dayInputWithHeartStatistics:v19];
            [v16 appendDay:v20];
          }

          ++v11;
        }

        while (v5 != v11);
      }

      v21 = *(a1 + 48);
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v23 = [v21 objectForKeyedSubscript:v22];

      if (v23)
      {
        v24 = *(a1 + 48);
        v25 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
        v26 = [v24 objectForKeyedSubscript:v25];
        [v6 hkmc_updateWithHeartStatistics:v26];
      }

      *(*(*(a1 + 80) + 8) + 24) = v5;
    }

    [*(a1 + 40) appendDay:v6];
    [*(a1 + 56) addSymptoms:objc_msgSend(v46 forDayIndex:{"symptoms"), v5}];
    v27 = [v46 basalBodyTemperature];
    if (v27)
    {
      v28 = *(a1 + 144) - 14;

      if (v5 > v28)
      {
        v29 = [v46 basalBodyTemperature];
        v30 = *(*(a1 + 88) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;
      }
    }

    if ([v46 isDataLogged])
    {
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v33 = *(*(a1 + 96) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;
    }

    else
    {
      v35 = *(*(a1 + 96) + 8);
      v36 = *(v35 + 40);
      v34 = *(v35 + 40);
      *(v35 + 40) = v36;
    }

    if ([v46 menstrualFlow])
    {
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v46, "dayIndex")}];
      v38 = *(*(a1 + 104) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v46, "menstrualFlowModificationDayIndex")}];
      v41 = *(*(a1 + 112) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = v40;
    }

    HKMCAppendCycleFactorsPhaseFromDaySummary();
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  if (*(a1 + 153) == 1)
  {
    if (!*(*(*(a1 + 120) + 8) + 24))
    {
      v43 = *(a1 + 64);
      v44 = [MEMORY[0x277D0FC88] hkmc_emptyDayInputWithDayIndex:v5 - 10];
      [v43 appendDay:v44];
    }

    HKMCAppendCycleFactorsPhaseFromDaySummary();
    [*(a1 + 64) appendDay:v6];
    ++*(*(*(a1 + 120) + 8) + 24);
  }
}

- (void)_forceDisablePredictionsFromOngoingCycleFactors:(id)factors menstruationProjectionsEnabled:(BOOL)enabled fertileWindowProjectionsEnabled:(BOOL)projectionsEnabled useHeartRateInput:(BOOL)input useWristTemperatureInput:(BOOL)temperatureInput
{
  temperatureInputCopy = temperatureInput;
  inputCopy = input;
  projectionsEnabledCopy = projectionsEnabled;
  enabledCopy = enabled;
  factorsCopy = factors;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  isCompanionCapable = [behavior isCompanionCapable];

  if (isCompanionCapable)
  {
    [(HKMCSettingsManager *)self->_settingsManager forceDisableProjectionsFromOngoingCycleFactors:factorsCopy menstruationProjectionsEnabled:enabledCopy fertileWindowProjectionsEnabled:projectionsEnabledCopy useHeartRateInput:inputCopy useWristTemperatureInput:temperatureInputCopy];
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_profile);
    daemon2 = [v16 daemon];
    behavior2 = [daemon2 behavior];
    isAppleWatch = [behavior2 isAppleWatch];

    if (isAppleWatch)
    {
      [(HKMCSettingsManager *)self->_settingsManager setProjectionAttributesOnWatchFromUseHeartRateInput:inputCopy useWristTemperatureInput:temperatureInputCopy];
    }
  }
}

- (id)_analysisWithAlgorithmsAnalysis:(id)analysis algorithmsCycles:(id)cycles recentSymptoms:(unint64_t)symptoms mostRecentBasalBodyTemperature:(id)temperature lastLoggedDayIndex:(id)index lastMenstrualFlowDayIndex:(id)dayIndex numberOfDailySleepHeartRateStatisticsForPast100Days:(int64_t)days numberOfDailyAwakeHeartRateStatisticsForPast100Days:(int64_t)self0 featureSettings:(id)self1 useHeartRateInput:(BOOL)self2 useWristTemperatureInput:(BOOL)self3 deviationsFeatureSettings:(id)self4
{
  v132 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  cyclesCopy = cycles;
  temperatureCopy = temperature;
  indexCopy = index;
  dayIndexCopy = dayIndex;
  settingsCopy = settings;
  featureSettingsCopy = featureSettings;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = HKMCCycleFactorsTypes();
  v19 = [obj countByEnumeratingWithState:&v121 objects:v131 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v122;
    v23 = *MEMORY[0x277D10C08];
    do
    {
      v24 = 0;
      v25 = v21;
      do
      {
        if (*v122 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v121 + 1) + 8 * v24);
        v27 = MEMORY[0x277D10848];
        WeakRetained = objc_loadWeakRetained(&selfCopy->_profile);
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
        v30 = HDSampleEntityPredicateForEndDate();
        v120 = v25;
        v31 = [v27 samplesWithType:v26 profile:WeakRetained encodingOptions:0 predicate:v30 limit:v23 anchor:0 error:&v120];
        v21 = v120;

        [v110 addObjectsFromArray:v31];
        ++v24;
        v25 = v21;
      }

      while (v20 != v24);
      v20 = [obj countByEnumeratingWithState:&v121 objects:v131 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  menstruationProjectionsEnabled = [settingsCopy menstruationProjectionsEnabled];
  fertileWindowProjectionsEnabled = [settingsCopy fertileWindowProjectionsEnabled];
  v34 = [v110 copy];
  obja = fertileWindowProjectionsEnabled;
  [(HDMCAnalysisManager *)selfCopy _forceDisablePredictionsFromOngoingCycleFactors:v34 menstruationProjectionsEnabled:menstruationProjectionsEnabled fertileWindowProjectionsEnabled:fertileWindowProjectionsEnabled useHeartRateInput:input useWristTemperatureInput:temperatureInput];

  v35 = analysisCopy;
  hkmc_statistics = [analysisCopy hkmc_statistics];
  cycleLengthMedian = [hkmc_statistics cycleLengthMedian];

  v38 = MEMORY[0x277CCC2E8];
  if (!cycleLengthMedian)
  {
    v39 = objc_loadWeakRetained(&selfCopy->_profile);
    v40 = _UserCharacteristicOfType(v39, *MEMORY[0x277CCDEE8]);

    _HKInitializeLogging();
    v41 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = objc_opt_class();
      v44 = v43;
      v45 = HKSensitiveLogItem();
      *buf = 138543618;
      v126 = v43;
      v127 = 2112;
      v128 = v45;
      _os_log_impl(&dword_2293D1000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing statistics cycle length with user entered cycle length: %@", buf, 0x16u);

      v35 = analysisCopy;
    }

    if (v40)
    {
      v46 = MEMORY[0x277CCABB0];
      dayUnit = [MEMORY[0x277CCDAB0] dayUnit];
      [v40 doubleValueForUnit:dayUnit];
      v48 = [v46 numberWithDouble:?];

      [hkmc_statistics setCycleLengthMedian:v48];
    }
  }

  menstruationLengthMedian = [hkmc_statistics menstruationLengthMedian];

  if (!menstruationLengthMedian)
  {
    v50 = objc_loadWeakRetained(&selfCopy->_profile);
    v51 = _UserCharacteristicOfType(v50, *MEMORY[0x277CCDEF0]);

    _HKInitializeLogging();
    v52 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = objc_opt_class();
      v55 = v54;
      v56 = HKSensitiveLogItem();
      *buf = 138543618;
      v126 = v54;
      v127 = 2112;
      v128 = v56;
      _os_log_impl(&dword_2293D1000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing statistics period length with user entered period length: %@", buf, 0x16u);

      v35 = analysisCopy;
    }

    if (v51)
    {
      v57 = MEMORY[0x277CCABB0];
      dayUnit2 = [MEMORY[0x277CCDAB0] dayUnit];
      [v51 doubleValueForUnit:dayUnit2];
      v59 = [v57 numberWithDouble:?];

      [hkmc_statistics setMenstruationLengthMedian:v59];
    }
  }

  if (temperatureInput)
  {
    dayStreamProcessorPredictionPrimarySourceOverride = [(HKMCSettingsManager *)selfCopy->_settingsManager dayStreamProcessorPredictionPrimarySourceOverride];
    if (!menstruationProjectionsEnabled)
    {
LABEL_24:
      areAllMenstruationPredictionAlgorithmAttributesSupported = 0;
      goto LABEL_27;
    }
  }

  else
  {
    dayStreamProcessorPredictionPrimarySourceOverride = 0;
    if (!menstruationProjectionsEnabled)
    {
      goto LABEL_24;
    }
  }

  areAllMenstruationPredictionAlgorithmAttributesSupported = [(HKMCSettingsManager *)selfCopy->_settingsManager areAllMenstruationPredictionAlgorithmAttributesSupported];
LABEL_27:
  if (obja)
  {
    areAllFertileWindowPredictionAlgorithmAttributesSupported = [(HKMCSettingsManager *)selfCopy->_settingsManager areAllFertileWindowPredictionAlgorithmAttributesSupported];
  }

  else
  {
    areAllFertileWindowPredictionAlgorithmAttributesSupported = 0;
  }

  _HKInitializeLogging();
  v62 = *v38;
  if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
  {
    v63 = v62;
    v64 = objc_opt_class();
    v65 = @"OFF";
    if (areAllMenstruationPredictionAlgorithmAttributesSupported)
    {
      v66 = @"ON";
    }

    else
    {
      v66 = @"OFF";
    }

    *buf = 138543874;
    v126 = v64;
    v128 = v66;
    v127 = 2112;
    if (areAllFertileWindowPredictionAlgorithmAttributesSupported)
    {
      v65 = @"ON";
    }

    v129 = 2112;
    v130 = v65;
    v67 = v64;
    _os_log_impl(&dword_2293D1000, v63, OS_LOG_TYPE_DEFAULT, "[%{public}@] Surfacing analysis with period predictions: %@, fertility predictions: %@", buf, 0x20u);
  }

  if (areAllMenstruationPredictionAlgorithmAttributesSupported)
  {
    hkmc_menstruationProjections = [v35 hkmc_menstruationProjections];
    if (!areAllFertileWindowPredictionAlgorithmAttributesSupported)
    {
LABEL_39:
      v68 = MEMORY[0x277CBEBF8];
      goto LABEL_42;
    }
  }

  else
  {
    hkmc_menstruationProjections = MEMORY[0x277CBEBF8];
    if (!areAllFertileWindowPredictionAlgorithmAttributesSupported)
    {
      goto LABEL_39;
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [(HKCalendarCache *)selfCopy->_calendarCache currentCalendar];
  v68 = [v35 hkmc_fertileWindowProjectionsWithOverridePredictionPrimarySource:dayStreamProcessorPredictionPrimarySourceOverride currentDayIndex:{objc_msgSend(date, "hk_dayIndexWithCalendar:", currentCalendar)}];

LABEL_42:
  v94 = [v68 subarrayWithRange:{0, objc_msgSend(v68, "count") != 0}];

  if (cyclesCopy)
  {
    v71 = [cyclesCopy count];
    v72 = [MEMORY[0x277CBEB18] arrayWithCapacity:v71];
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke;
    v115[3] = &unk_27865A920;
    v116 = v72;
    v117 = v71;
    temperatureInputCopy = temperatureInput;
    v115[4] = selfCopy;
    v119 = obja;
    v73 = v72;
    [cyclesCopy enumerateObjectsWithOptions:2 usingBlock:v115];
    v93 = [v73 copy];
  }

  else
  {
    v93 = 0;
  }

  v98 = menstruationProjectionsEnabled;
  v107 = hkmc_statistics;
  hkmc_deviations = [v35 hkmc_deviations];
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke_2;
  v113[3] = &unk_27865A948;
  v97 = featureSettingsCopy;
  v114 = v97;
  v75 = [(__CFString *)hkmc_deviations hk_filter:v113];
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v76 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v77 = v76;
      v78 = objc_opt_class();
      *buf = 138543618;
      v126 = v78;
      v127 = 2112;
      v128 = hkmc_deviations;
      v79 = v78;
      _os_log_impl(&dword_2293D1000, v77, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviations detected (all): %@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v80 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      v81 = v80;
      v82 = objc_opt_class();
      *buf = 138543618;
      v126 = v82;
      v127 = 2112;
      v128 = v75;
      v83 = v82;
      _os_log_impl(&dword_2293D1000, v81, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviations detected (enabled): %@", buf, 0x16u);
    }
  }

  v84 = objc_alloc(MEMORY[0x277D11960]);
  v85 = objc_loadWeakRetained(&selfCopy->_profile);
  v86 = [HDMCRecentBasalBodyTemperatureRangeQuery recentRangeForAnalysisWithProfile:v85];
  v87 = [v86 recentBasalBodyTemperatureWithMostRecentQuantity:temperatureCopy];
  isUserInactive = [v35 isUserInactive];
  v89 = [v110 copy];
  LOBYTE(v92) = [(HDMCAnalysisManager *)selfCopy _hasHealthAppDevicesWithHigherAlgorithmVersions];
  LOBYTE(v91) = isUserInactive;
  v112 = [v84 initWithStatistics:v107 menstruationProjections:hkmc_menstruationProjections fertileWindowProjections:v94 menstruationProjectionsEnabled:v98 fertileWindowProjectionsEnabled:obja cycles:v93 deviations:v75 recentSymptoms:symptoms recentBasalBodyTemperature:v87 lastLoggedDayIndex:indexCopy lastMenstrualFlowDayIndex:dayIndexCopy isPeriodLogLate:v91 ongoingCycleFactors:v89 numberOfDailySleepHeartRateStatisticsForPast100Days:days numberOfDailyAwakeHeartRateStatisticsForPast100Days:past100Days hasHealthAppDevicesWithHigherAlgorithmVersions:v92];

  return v112;
}

void __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 48) + ~a3;
  if (*(a1 + 56) == 1)
  {
    v7 = [*(*(a1 + 32) + 48) historicalAnalyzerPredictionPrimarySourceOverrideForCycleAtReverseChronologicalIndex:*(a1 + 48) + ~a3];
    v8 = [*(*(a1 + 32) + 48) historicalAnalyzerOvulationConfirmationFailureOverrideForCycleAtReverseChronologicalIndex:v6];
    v9 = [*(*(a1 + 32) + 48) historicalAnalyzerDailyEligibleWristTemperatureCountOverrideForCycleAtReverseChronologicalIndex:v6];
    if (v6)
    {
LABEL_3:
      v10 = [*(a1 + 40) lastObject];
      v11 = [v10 menstruationSegment];
      v12 = [v11 days];

      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12 - 1];
      v14 = [v15 hkmc_cycleWithLastDayIndex:v13 includeFertileWindow:*(a1 + 57) overridePredictionPrimarySource:v7 overrideOvulationConfirmationFailure:v8 overrideDailyEligibleWristTemperatureCount:v9 useWristTemperatureInput:*(a1 + 56)];

      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v14 = [v15 hkmc_cycleWithLastDayIndex:0 includeFertileWindow:*(a1 + 57) overridePredictionPrimarySource:v7 overrideOvulationConfirmationFailure:v8 overrideDailyEligibleWristTemperatureCount:v9 useWristTemperatureInput:*(a1 + 56)];
LABEL_6:
  [*(a1 + 40) addObject:v14];

  objc_autoreleasePoolPop(v5);
}

uint64_t __352__HDMCAnalysisManager__analysisWithAlgorithmsAnalysis_algorithmsCycles_recentSymptoms_mostRecentBasalBodyTemperature_lastLoggedDayIndex_lastMenstrualFlowDayIndex_numberOfDailySleepHeartRateStatisticsForPast100Days_numberOfDailyAwakeHeartRateStatisticsForPast100Days_featureSettings_useHeartRateInput_useWristTemperatureInput_deviationsFeatureSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 type];

  return [v2 deviationDetectionEnabledForType:v3];
}

- (id)_processorConfigurationForTodayIndex:(int64_t)index deviationsFeatureStatus:(id)status calendar:(id)calendar
{
  v58 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  calendarCopy = calendar;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = _UserCharacteristicOfType(WeakRetained, *MEMORY[0x277CCBB18]);

  v12 = objc_loadWeakRetained(&self->_profile);
  v13 = *MEMORY[0x277CCDEE8];
  v14 = _UserCharacteristicOfType(v12, *MEMORY[0x277CCDEE8]);

  v15 = objc_loadWeakRetained(&self->_profile);
  v16 = _UserCharacteristicModificationDayOfType(v15, v13, calendarCopy);

  v17 = objc_loadWeakRetained(&self->_profile);
  v18 = *MEMORY[0x277CCDEF0];
  v19 = _UserCharacteristicOfType(v17, *MEMORY[0x277CCDEF0]);

  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = _UserCharacteristicModificationDayOfType(v20, v18, calendarCopy);

  v22 = [(HKMCSettingsManager *)self->_settingsManager cycleLengthModificationDayIndexOverriding:v16];
  v23 = [(HKMCSettingsManager *)self->_settingsManager periodLengthModificationDayIndexOverriding:v21];
  v24 = [MEMORY[0x277D0FC98] hkmc_configurationWithBirthDateComponents:v11 userReportedCycleLength:v14 onDayIndex:v22 userReportedMenstruationLength:v19 onDayIndex:v23];
  [v24 setTodayAsJulianDay:index];
  if (statusCopy)
  {
    v51 = v14;
    v52 = v11;
    v25 = *MEMORY[0x277CCBEA0];
    v26 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    areAllRequirementsSatisfied = [v26 areAllRequirementsSatisfied];

    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = objc_opt_class();
      v31 = @"NO";
      if (areAllRequirementsSatisfied)
      {
        v31 = @"YES";
      }

      *buf = 138543618;
      v55 = v30;
      v56 = 2112;
      v57 = v31;
      v32 = v30;
      _os_log_impl(&dword_2293D1000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviation detection meets usage requirements: %@", buf, 0x16u);
    }

    onboardingRecord = [statusCopy onboardingRecord];
    featureSettings = [onboardingRecord featureSettings];

    deviationInputManager = self->_deviationInputManager;
    v53 = 0;
    LOBYTE(onboardingRecord) = [(HDMCDeviationInputManager *)deviationInputManager clearStateIfNecessaryFromSettings:featureSettings usageRequirementsSatisfied:areAllRequirementsSatisfied error:&v53];
    v36 = v53;
    if ((onboardingRecord & 1) == 0 && (_HKInitializeLogging(), os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR)))
    {
      [HDMCAnalysisManager _processorConfigurationForTodayIndex:deviationsFeatureStatus:calendar:];
      if (areAllRequirementsSatisfied)
      {
        goto LABEL_9;
      }
    }

    else if (areAllRequirementsSatisfied)
    {
LABEL_9:
      deviationDetectionEnabledSetExplicitlyForAnyType = [featureSettings deviationDetectionEnabledSetExplicitlyForAnyType];
      v38 = MEMORY[0x277D0FCB0];
      v39 = objc_loadWeakRetained(&self->_profile);
      v40 = [v38 hdmc_deviationInputWithProfile:v39 enabledSetExplicitly:deviationDetectionEnabledSetExplicitlyForAnyType calendar:calendarCopy];
      [v24 setDeviationInput:v40];

LABEL_15:
      v14 = v51;
      v11 = v52;
      goto LABEL_16;
    }

    _HKInitializeLogging();
    v44 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
      v46 = objc_opt_class();
      v50 = v46;
      v47 = [statusCopy objectForKeyedSubscript:v25];
      unsatisfiedRequirementIdentifiers = [v47 unsatisfiedRequirementIdentifiers];
      *buf = 138543618;
      v55 = v46;
      v56 = 2112;
      v57 = unsatisfiedRequirementIdentifiers;
      _os_log_impl(&dword_2293D1000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviation detection unsatisfied usage requirements: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  _HKInitializeLogging();
  v41 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v42 = v41;
    *buf = 138543362;
    v55 = objc_opt_class();
    v43 = v55;
    _os_log_impl(&dword_2293D1000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deviation detection suppressed on watch", buf, 0xCu);
  }

LABEL_16:

  return v24;
}

- (BOOL)_hasHealthAppDevicesWithHigherAlgorithmVersions
{
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC2E8];
  v4 = *MEMORY[0x277CCC2E8];
  if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2293D1000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "hasHealthAppDevicesWithHigherAlgorithmVersions", "", buf, 2u);
  }

  deviceScopedStorageManager = self->_deviceScopedStorageManager;
  v12 = 0;
  v6 = [(HDMCDeviceScopedStorageManager *)deviceScopedStorageManager accountDevicesInfoWithError:&v12];
  v7 = v12;
  if (v6)
  {
    hasHealthAppDevicesWithHigherAlgorithmVersions = [v6 hasHealthAppDevicesWithHigherAlgorithmVersions];
    _HKInitializeLogging();
    v9 = *v3;
    if (os_signpost_enabled(v9))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_2293D1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "hasHealthAppDevicesWithHigherAlgorithmVersions", "", v11, 2u);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      [HDMCAnalysisManager _hasHealthAppDevicesWithHigherAlgorithmVersions];
    }

    hasHealthAppDevicesWithHigherAlgorithmVersions = 0;
  }

  return hasHealthAppDevicesWithHigherAlgorithmVersions;
}

- (void)registerObserver:(id)observer queue:(id)queue userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  queueCopy = queue;
  [(HKObserverSet *)self->_observers registerObserver:observerCopy queue:queueCopy];
  if (initiatedCopy)
  {
    [(HKObserverSet *)self->_userInitiatedObservers registerObserver:observerCopy queue:queueCopy];
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = observerCopy;
      v12 = v16;
      _os_log_impl(&dword_2293D1000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyze if needed due to user-initiated observer add: %{public}@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HDMCAnalysisManager_registerObserver_queue_userInitiated___block_invoke;
    block[3] = &unk_27865A830;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  observerCopy = observer;
  [(HKObserverSet *)observers unregisterObserver:observerCopy];
  [(HKObserverSet *)self->_userInitiatedObservers unregisterObserver:observerCopy];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (BOOL)initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:(id)assertion error:(id *)error
{
  assertionCopy = assertion;
  profile = [(HDMCAnalysisManager *)self profile];
  v8 = profile;
  if (profile)
  {
    onboardingCompletionManager = [profile onboardingCompletionManager];
    v10 = *MEMORY[0x277CCC090];
    v27 = 0;
    v11 = [onboardingCompletionManager onboardingCompletionsForHighestVersionOfFeatureIdentifier:v10 error:&v27];
    v12 = v27;

    v13 = v11 != 0;
    if (!v11)
    {
      v20 = v12;
      if (v20)
      {
        if (error)
        {
          v21 = v20;
          *error = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisManager(CycleFactorsAutomaticUpgrade) initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion:v22 error:self];
      }

      goto LABEL_17;
    }

    firstObject = [v11 firstObject];
    v15 = firstObject;
    if (firstObject && [firstObject version] <= 1)
    {
      v16 = [assertionCopy cloneWithOwnerIdentifier:@"HDMCAnalysisManager+CycleFactorsAutomaticUpgrade"];
      queue = [(HDMCAnalysisManager *)self queue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke;
      v24[3] = &unk_27865AA30;
      v24[4] = self;
      v25 = v16;
      v26 = v8;
      _test_didNotUpgradeOnboardingRecord2 = v16;
      dispatch_async(queue, v24);
    }

    else
    {
      _test_didNotUpgradeOnboardingRecord = [(HDMCAnalysisManager *)self _test_didNotUpgradeOnboardingRecord];

      if (!_test_didNotUpgradeOnboardingRecord)
      {
LABEL_10:

LABEL_17:
        goto LABEL_18;
      }

      _test_didNotUpgradeOnboardingRecord2 = [(HDMCAnalysisManager *)self _test_didNotUpgradeOnboardingRecord];
      _test_didNotUpgradeOnboardingRecord2[2]();
    }

    goto LABEL_10;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:1 description:@"Profile is going away"];
  v13 = 0;
LABEL_18:

  return v13;
}

void __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC2E8];
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Writing a Cycle Factors onboarding record for backwards compatibility", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D10788] contextForAccessibilityAssertion:*(a1 + 40)];
  [v7 setCacheScope:1];
  v8 = [*(a1 + 48) database];
  v14 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_302;
  v12[3] = &unk_27865B4A8;
  v13 = *(a1 + 48);
  v9 = [v8 performWithTransactionContext:v7 error:&v14 block:v12];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_cold_1(a1, v11);
    }
  }
}

uint64_t __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_302(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CCD740]);
  v5 = *MEMORY[0x277CCC090];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 initWithFeatureIdentifier:v5 version:3 completionDate:v6 countryCode:0 countryCodeProvenance:0];

  v8 = [*(a1 + 32) onboardingCompletionManager];
  v9 = [v8 insertOnboardingCompletion:v7 error:a2];

  return v9;
}

- (void)_takeAccessibilityAssertion
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Unable to take an accessibility assertion: %{public}@", v7, v8, v9, v10);
}

- (void)featureAvailabilityProvidingDidUpdateSettings:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Settings change: unable to read new settings: %{public}@", v7, v8, v9, v10);
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(uint64_t)a1 forceIncludeCycles:(uint64_t)a2 forceAnalyzeCompleteHistory:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCAnalysisManager.m" lineNumber:502 description:{@"Invalid parameter not satisfying: %@", @"processor"}];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:(uint64_t)a1 forceIncludeCycles:(uint64_t)a2 forceAnalyzeCompleteHistory:error:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCAnalysisManager.m" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"historicalAnalyzer"}];
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_7(v1, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v2, v3, "[%{public}@] Error retrieving heart statistics: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.4()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error enumerating day summaries: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.5()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  OUTLINED_FUNCTION_7(v1, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v2, v3, "[%{public}@] Error retrieving analysis sample info: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.6()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error analyzing historical cycles: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.7()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error analyzing predictions with most recent menstrual flow julian day updated: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.8()
{
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_2_1(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving initial factors: %{public}@");
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.9()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature status for deviations: %{public}@", v6, v7, v8, v9);
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.10()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature status for wrist temperature input: %{public}@", v6, v7, v8, v9);
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.11()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature status for heart rate input: %{public}@", v6, v7, v8, v9);
}

- (void)_queue_computeAnalysisWithDatabaseAccessibilityAssertion:forceIncludeCycles:forceAnalyzeCompleteHistory:error:.cold.12()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  OUTLINED_FUNCTION_4(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving feature settings: %{public}@", v6, v7, v8, v9);
}

- (void)_processorConfigurationForTodayIndex:deviationsFeatureStatus:calendar:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Unable to clear state for deviation input: %{public}@", v7, v8, v9, v10);
}

- (void)_hasHealthAppDevicesWithHigherAlgorithmVersions
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to retrieve account device info: %{public}@", v7, v8, v9, v10);
}

void __130__HDMCAnalysisManager_CycleFactorsAutomaticUpgrade__initiateCycleFactorsAutomaticUpgradeWithDatabaseAccessibilityAssertion_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error writing a Cycle Factors onboarding record for backwards compatibility: %{public}@", v7, v8, v9, v10);
}

@end