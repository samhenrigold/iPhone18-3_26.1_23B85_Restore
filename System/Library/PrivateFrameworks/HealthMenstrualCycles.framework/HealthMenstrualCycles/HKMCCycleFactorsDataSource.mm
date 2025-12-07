@interface HKMCCycleFactorsDataSource
- (HKMCCycleFactorsDataSource)initWithHealthStore:(id)store pregnancyModelProvider:(id)provider queue:(id)queue;
- (HKMCCycleFactorsDataSourceDelegate)delegate;
- (void)_handleCycleFactorsAdded:(void *)added deletedObjects:;
- (void)_startPregnancyModelObservationIfNeeded;
- (void)dealloc;
- (void)pregnancyModelDidUpdate:(id)update;
- (void)startObservingCycleFactorsInDayIndexRange:(id)range;
- (void)stopObserving;
@end

@implementation HKMCCycleFactorsDataSource

- (HKMCCycleFactorsDataSource)initWithHealthStore:(id)store pregnancyModelProvider:(id)provider queue:(id)queue
{
  v30 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  providerCopy = provider;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = HKMCCycleFactorsDataSource;
  v12 = [(HKMCCycleFactorsDataSource *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, store);
    objc_storeStrong(&v13->_queue, queue);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    cycleFactors = v13->_cycleFactors;
    v13->_cycleFactors = v14;

    if (providerCopy)
    {
      v16 = providerCopy;
      pregnancyModelProvider = v13->_pregnancyModelProvider;
      v13->_pregnancyModelProvider = v16;
      v18 = 1;
    }

    else
    {
      v19 = [[HKMCPregnancyModelProvider alloc] initWithHealthStore:storeCopy startQueryImmediately:0];
      v18 = 0;
      pregnancyModelProvider = v13->_pregnancyModelProvider;
      v13->_pregnancyModelProvider = v19;
    }

    v13->_pregnancyQueryHasStarted = v18;
    v13->_isRegisteredForPregnancyModelUpdates = 0;
  }

  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = objc_opt_class();
    *buf = 138543618;
    v27 = v22;
    v28 = 2048;
    v29 = v13;
    v23 = v22;
    _os_log_impl(&dword_2518FC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Initializing", buf, 0x16u);
  }

  return v13;
}

- (void)startObservingCycleFactorsInDayIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v50 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCC2E8];
  if (!self->_observerQuery)
  {
LABEL_19:
    self->_currentDayIndexRange.start = var0 - 150;
    self->_currentDayIndexRange.duration = var1 + 150;
    _HKInitializeLogging();
    v24 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v24;
      v27 = objc_opt_class();
      v28 = v27;
      v29 = NSStringFromHKDayIndexRange();
      *buf = 138543874;
      v45 = v27;
      v46 = 2048;
      selfCopy5 = self;
      v48 = 2112;
      v49 = v29;
      _os_log_impl(&dword_2518FC000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Starting cycle factors fetch for range: %@", buf, 0x20u);
    }

    [(HKMCCycleFactorsDataSource *)self _startPregnancyModelObservationIfNeeded];
    v30 = [MEMORY[0x277CCAC30] hk_predicateForSamplesInDayIndexRange:{self->_currentDayIndexRange.start, self->_currentDayIndexRange.duration}];
    v31 = MEMORY[0x277CCD848];
    v32 = HKMCCycleFactorsTypes();
    v33 = [v31 hkmc_descriptorsForTypes:v32 predicate:v30];

    objc_initWeak(buf, self);
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke;
    v41 = &unk_2796D52E8;
    selfCopy2 = self;
    objc_copyWeak(&v43, buf);
    v34 = MEMORY[0x253087260](&v38);
    v35 = [objc_alloc(MEMORY[0x277CCCFF0]) initWithQueryDescriptors:v33 anchor:0 limit:0 resultsHandler:v34];
    observerQuery = self->_observerQuery;
    self->_observerQuery = v35;

    selfCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p Cycle Factors Query>", objc_opt_class(), self, v38, v39, v40, v41, selfCopy2];
    [(HKAnchoredObjectQuery *)self->_observerQuery setDebugIdentifier:selfCopy2];

    [(HKAnchoredObjectQuery *)self->_observerQuery setUpdateHandler:v34];
    [(HKHealthStore *)self->_healthStore executeQuery:self->_observerQuery];

    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);

    return;
  }

  _HKInitializeLogging();
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 138543618;
    v45 = objc_opt_class();
    v46 = 2048;
    selfCopy5 = self;
    v9 = v45;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] We're already running a cycle factors query", buf, 0x16u);
  }

  start = self->_currentDayIndexRange.start;
  duration = self->_currentDayIndexRange.duration;
  if (var0 != start || duration != var1)
  {
    if (var0 >= start && var0 - start < duration)
    {
      v13 = var1 + var0 - 1;
      if (var1 <= 0)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v14 = __OFSUB__(v13, start);
      v15 = v13 - start;
      if (v15 < 0 == v14 && v15 < duration)
      {
        _HKInitializeLogging();
        v16 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = objc_opt_class();
          *buf = 138543618;
          v45 = v18;
          v46 = 2048;
          selfCopy5 = self;
          v19 = v18;
          _os_log_impl(&dword_2518FC000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping restarting query, new dayIndexRange is already covered", buf, 0x16u);
        }

        return;
      }
    }

    [(HKMCCycleFactorsDataSource *)self stopObserving];
    goto LABEL_19;
  }

  _HKInitializeLogging();
  v20 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = objc_opt_class();
    *buf = 138543618;
    v45 = v22;
    v46 = 2048;
    selfCopy5 = self;
    v23 = v22;
    _os_log_impl(&dword_2518FC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping restarting query, due to identical day index ranges", buf, 0x16u);
  }
}

void __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v9 && v10)
  {
    if ([v9 count] || objc_msgSend(v10, "count"))
    {
      v12 = *(*(a1 + 32) + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_2;
      block[3] = &unk_2796D52C0;
      objc_copyWeak(&v18, (a1 + 40));
      v16 = v9;
      v17 = v10;
      dispatch_async(v12, block);

      objc_destroyWeak(&v18);
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_cold_1(a1, v13, v11);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained stopObserving];
  }
}

void __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(HKMCCycleFactorsDataSource *)WeakRetained _handleCycleFactorsAdded:a1[5] deletedObjects:?];
}

uint64_t __70__HKMCCycleFactorsDataSource__handleCycleFactorsAdded_deletedObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUID];
  v5 = [v3 UUID];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)pregnancyModelDidUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2048;
      selfCopy2 = self;
      v7 = v18;
      _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received pregnancy model update", buf, 0x16u);
    }
  }

  if (self->_pregnancyModel == updateCopy)
  {
    if (HKShowSensitiveLogItems())
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = objc_opt_class();
        *buf = 138543618;
        v18 = v11;
        v19 = 2048;
        selfCopy2 = self;
        v12 = v11;
        _os_log_impl(&dword_2518FC000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping notifying delegate due to identical pregnancy model", buf, 0x16u);
      }
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke;
    block[3] = &unk_2796D4BD0;
    block[4] = self;
    v16 = updateCopy;
    dispatch_async(queue, block);
  }

  v13 = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke_305;
  v14[3] = &unk_2796D4CE8;
  v14[4] = self;
  dispatch_async(v13, v14);
}

void __54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = objc_opt_class();
      v5 = *(a1 + 32);
      v8 = 138543618;
      v9 = v4;
      v10 = 2048;
      v11 = v5;
      v6 = v4;
      _os_log_impl(&dword_2518FC000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Notifying delegate of pregnancy model update", &v8, 0x16u);
    }
  }

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained cycleFactorsDataSource:*(a1 + 32) didUpdatePregnancyModel:*(a1 + 40)];
}

void *__54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke_305(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[4])
  {
    return [result startObservingCycleFactorsInDayIndexRange:{result[7], result[8]}];
  }

  return result;
}

- (void)stopObserving
{
  if (self->_observerQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    observerQuery = self->_observerQuery;
    self->_observerQuery = 0;

    pregnancyModelProvider = self->_pregnancyModelProvider;

    [(HKMCPregnancyModelProviding *)pregnancyModelProvider unregisterObserver:self];
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v5 = v8;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Dealloc", buf, 0x16u);
  }

  [(HKMCCycleFactorsDataSource *)self stopObserving];
  v6.receiver = self;
  v6.super_class = HKMCCycleFactorsDataSource;
  [(HKMCCycleFactorsDataSource *)&v6 dealloc];
}

- (HKMCCycleFactorsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_startPregnancyModelObservationIfNeeded
{
  if (!self)
  {
    return;
  }

  if (*(self + 72) != 1)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    showSensitiveLogItems = [mEMORY[0x277CCDD30] showSensitiveLogItems];

    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2E8];
    v27 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
    if (showSensitiveLogItems)
    {
      if (v27)
      {
        v28 = v26;
        v29 = OUTLINED_FUNCTION_3_1();
        v36 = OUTLINED_FUNCTION_0_4(v29);
        v37 = "[%{public}@:%p] Starting pregnancy model query";
LABEL_14:
        OUTLINED_FUNCTION_1_3(&dword_2518FC000, v30, v31, v37, v32, v33, v34, v35);
      }
    }

    else if (v27)
    {
      v38 = v26;
      v39 = OUTLINED_FUNCTION_3_1();
      v36 = OUTLINED_FUNCTION_0_4(v39);
      v37 = "[%{public}@:%p] Starting model query";
      goto LABEL_14;
    }

    v40 = *(self + 80);
    [v40 startQuery];
    [*(self + 80) registerObserver:self isUserInitiated:1];
    *(self + 72) = 257;

    return;
  }

  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC2E8];
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_3_1();
    v7 = OUTLINED_FUNCTION_0_4(v6);
    OUTLINED_FUNCTION_1_3(&dword_2518FC000, v8, v9, "[%{public}@:%p] Skipping starting query", v10, v11, v12, v13);
  }

  if ((*(self + 73) & 1) == 0)
  {
    _HKInitializeLogging();
    v14 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = OUTLINED_FUNCTION_3_1();
      v17 = OUTLINED_FUNCTION_0_4(v16);
      OUTLINED_FUNCTION_1_3(&dword_2518FC000, v18, v19, "[%{public}@:%p] Registering for updates", v20, v21, v22, v23);
    }

    [*(self + 80) registerObserver:self isUserInitiated:1];
    *(self + 73) = 1;
  }
}

- (void)_handleCycleFactorsAdded:(void *)added deletedObjects:
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  addedCopy = added;
  if (self)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      log = v6;
      v7 = objc_opt_class();
      v8 = MEMORY[0x277CCABB0];
      v33 = v7;
      v9 = [v8 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v10 = HKSensitiveLogItem();
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(addedCopy, "count")}];
      v12 = v11 = v5;
      v13 = HKSensitiveLogItem();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(self + 40), "count")}];
      v15 = HKSensitiveLogItem();
      *buf = 138544386;
      v47 = v7;
      v48 = 2048;
      selfCopy = self;
      v50 = 2112;
      v51 = v10;
      v52 = 2112;
      v53 = v13;
      v54 = 2112;
      v55 = v15;
      _os_log_impl(&dword_2518FC000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Factors did update, added: %@ | deleted: %@ | currently cached: %@", buf, 0x34u);

      v5 = v11;
    }

    v16 = v5;
    if ([*(self + 40) count])
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(self + 40) addObject:{*(*(&v40 + 1) + 8 * i), log}];
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v16];
      v17 = *(self + 40);
      *(self + 40) = v22;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = addedCopy;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v36 + 1) + 8 * j);
          v29 = *(self + 40);
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __70__HKMCCycleFactorsDataSource__handleCycleFactorsAdded_deletedObjects___block_invoke;
          v35[3] = &unk_2796D5310;
          v35[4] = v28;
          [v29 hk_removeObjectsPassingTest:{v35, log}];
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v25);
    }

    WeakRetained = objc_loadWeakRetained((self + 8));
    allObjects = [*(self + 40) allObjects];
    [WeakRetained cycleFactorsDataSource:self didFetchCycleFactors:allObjects];
  }
}

void __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a1 + 32);
  v9 = 138543874;
  v10 = v6;
  v11 = 2048;
  v12 = v7;
  v13 = 2114;
  v14 = a3;
  v8 = v6;
  _os_log_error_impl(&dword_2518FC000, v5, OS_LOG_TYPE_ERROR, "[%{public}@:%p] Factors query failed with error: %{public}@", &v9, 0x20u);
}

@end