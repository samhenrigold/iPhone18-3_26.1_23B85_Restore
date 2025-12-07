@interface HDWorkoutBasicDataSource
- (HDWorkoutBasicDataSource)initWithConfiguration:(id)configuration client:(id)client;
- (NSSet)sampleTypesToCollect;
- (id)_takeHeartRateCollectionAssertion;
- (id)transactionalQuantityInsertHandlerForProfile:(id)profile journaled:(BOOL)journaled count:(int64_t)count;
- (void)_stopCollection;
- (void)_stopObservingSampleTypes:(uint64_t)types;
- (void)aggregator:(id)aggregator didCollectSensorData:(id)data objectType:(id)type device:(id)device;
- (void)dataCollectionObservationStateDidChangeForClient:(id)client;
- (void)dealloc;
- (void)setSampleTypesToCollect:(id)collect;
- (void)setSessionServer:(id)server;
- (void)stopCollectionOnConnectionInvalidation;
- (void)workoutDataDestination:(id)destination didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)workoutDataDestination:(id)destination didUpdateConfiguration:(id)configuration;
- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to;
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
@end

@implementation HDWorkoutBasicDataSource

- (HDWorkoutBasicDataSource)initWithConfiguration:(id)configuration client:(id)client
{
  configurationCopy = configuration;
  clientCopy = client;
  v27.receiver = self;
  v27.super_class = HDWorkoutBasicDataSource;
  v9 = [(HDWorkoutBasicDataSource *)&v27 init];
  if (v9)
  {
    profile = [clientCopy profile];
    objc_storeWeak(&v9->_profile, profile);

    objc_storeStrong(&v9->_client, client);
    objc_storeStrong(&v9->_workoutConfiguration, configuration);
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v9->_lock;
    v9->_lock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAD78]);
    workoutDataProcessorUUID = v9->_workoutDataProcessorUUID;
    v9->_workoutDataProcessorUUID = v13;

    _HKInitializeLogging();
    v15 = objc_alloc(MEMORY[0x277CCD2B0]);
    v16 = [v15 initWithProcessor:v9 sourceProtocol:&unk_283CBA250 destinationProtocol:&unk_283CD7C50 loggingCategory:*MEMORY[0x277CCC330]];
    workoutDataFlowLink = v9->_workoutDataFlowLink;
    v9->_workoutDataFlowLink = v16;

    v18 = [MEMORY[0x277CBEB98] set];
    sampleTypesToCollect = v9->_sampleTypesToCollect;
    v9->_sampleTypesToCollect = v18;

    v20 = [[HDClientDataCollectionObservationStateMonitor alloc] initWithClient:clientCopy delegate:v9];
    clientStateMonitor = v9->_clientStateMonitor;
    v9->_clientStateMonitor = v20;

    v9->_collectionStopped = 0;
    v22 = [HDWorkoutUtilities alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v24 = [(HDWorkoutUtilities *)v22 initWithProfile:WeakRetained];
    workoutUtilities = v9->_workoutUtilities;
    v9->_workoutUtilities = v24;
  }

  return v9;
}

- (void)stopCollectionOnConnectionInvalidation
{
  v6 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@:stopping collection on connection invalidation", &v4, 0xCu);
  }

  [(HDWorkoutBasicDataSource *)self _stopCollection];
}

- (void)_stopCollection
{
  if (result)
  {
    v1 = result[4];
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __43__HDWorkoutBasicDataSource__stopCollection__block_invoke;
    v2[3] = &unk_278613968;
    v2[4] = result;
    return [v1 hk_withLock:v2];
  }

  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    workoutDataProcessorUUID = [(HDWorkoutBasicDataSource *)self workoutDataProcessorUUID];
    *buf = 138412290;
    v8 = workoutDataProcessorUUID;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Basic data source deallocated: %@.", buf, 0xCu);
  }

  [(HDWorkoutBasicDataSource *)self _stopCollection];
  v6.receiver = self;
  v6.super_class = HDWorkoutBasicDataSource;
  [(HDWorkoutBasicDataSource *)&v6 dealloc];
}

void __43__HDWorkoutBasicDataSource__stopCollection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  v4 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to stop collection when it is already stopped", &v8, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Ending collection", &v8, 0xCu);
    }

    [(HDWorkoutBasicDataSource *)*(a1 + 32) _stopObservingSampleTypes:?];
    [*(*(a1 + 32) + 72) invalidate];
    [*(*(a1 + 32) + 80) invalidate];
    [*(*(a1 + 32) + 96) invalidate];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [WeakRetained removeObserver:*(a1 + 32)];

    *(*(a1 + 32) + 104) = 1;
  }
}

- (void)_stopObservingSampleTypes:(uint64_t)types
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (types)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      typesCopy = types;
      v25 = 2114;
      v26 = v3;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Ending observation of types: %{public}@", buf, 0x16u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            WeakRetained = objc_loadWeakRetained((types + 8));
            dataManager = [WeakRetained dataManager];
            quantitySeriesManager = [dataManager quantitySeriesManager];
            [quantitySeriesManager removeObserver:types forType:v10];

            v14 = objc_loadWeakRetained((types + 8));
            dataCollectionManager = [v14 dataCollectionManager];
            v16 = [dataCollectionManager aggregatorForType:v10];

            [v16 unregisterSensorDataObserver:types];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v3 = v17;
  }
}

- (void)setSampleTypesToCollect:(id)collect
{
  collectCopy = collect;
  [HDActiveDataCollectionObserverServer launchObservingProcessesForTypes:collectCopy];
  lock = self->_lock;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke;
  v17[3] = &unk_278613920;
  v17[4] = self;
  v18 = collectCopy;
  v6 = collectCopy;
  [(NSLock *)lock hk_withLock:v17];
  self->_sampleTypesContainHeartRate = 0;
  v7 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_416;
  v14[3] = &unk_27862A630;
  v15 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = [v6 hk_mapToDictionary:v14];
  v10 = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_2;
  v12[3] = &unk_278613920;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [(NSLock *)v10 hk_withLock:v12];
}

void __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 104) & 1) == 0)
  {
    v2 = a1;
    if (([*(a1 + 40) isEqual:*(v1 + 64)] & 1) == 0)
    {
      _HKInitializeLogging();
      v3 = MEMORY[0x277CCC330];
      v4 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v2 + 32);
        v6 = *(v2 + 40);
        v7 = *(v5 + 64);
        *buf = 138543874;
        v39 = v5;
        v40 = 2114;
        v41 = v7;
        v42 = 2114;
        v43 = v6;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Adjusting collected sample types: %{public}@ -> %{public}@", buf, 0x20u);
      }

      v8 = [*(v2 + 40) hk_minus:*(*(v2 + 32) + 64)];
      v9 = [*(*(v2 + 32) + 64) hk_minus:*(v2 + 40)];
      v10 = *(v2 + 32);
      v11 = v8;
      if (v10)
      {
        v31 = v9;
        v32 = v2;
        _HKInitializeLogging();
        v12 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v39 = v10;
          v40 = 2114;
          v41 = v11;
          _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning observation of types: %{public}@", buf, 0x16u);
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v34 objects:buf count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v35;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v34 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                WeakRetained = objc_loadWeakRetained((v10 + 8));
                v20 = [WeakRetained dataManager];
                v21 = [v20 quantitySeriesManager];
                [v21 addSynchronousObserver:v10 forType:v18];

                v22 = objc_loadWeakRetained((v10 + 8));
                v23 = [v22 dataCollectionManager];
                v24 = [v23 aggregatorForType:v18];

                [v24 registerSensorDataObserver:v10 queue:0];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v34 objects:buf count:16];
          }

          while (v15);
        }

        v25 = objc_loadWeakRetained((v10 + 8));
        v26 = [v25 dataCollectionManager];
        v27 = [MEMORY[0x277CBEAA8] date];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __55__HDWorkoutBasicDataSource__startObservingSampleTypes___block_invoke;
        v33[3] = &unk_2786130B0;
        v33[4] = v10;
        [v26 requestAggregationThroughDate:v27 types:v13 mode:0 options:1 completion:v33];

        v9 = v31;
        v2 = v32;
      }

      [(HDWorkoutBasicDataSource *)*(v2 + 32) _stopObservingSampleTypes:v9];
      v28 = objc_msgSend_copy(*(v2 + 40));
      v29 = *(v2 + 32);
      v30 = *(v29 + 64);
      *(v29 + 64) = v28;
    }
  }
}

void __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_416(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 isEqual:*(a1 + 32)])
  {
    *(*(a1 + 40) + 88) = 1;
  }

  else
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v11 code];
    v8 = v7 == 179 || v7 == 75;
    v9 = 60.0;
    if (!v8)
    {
      v9 = 0.5;
    }

    v10 = [v6 numberWithDouble:v9];
    v5[2](v5, v11, v10);
  }
}

void __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to take assertions and collection already ended", buf, 0xCu);
    }
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [*(v2 + 24) process];
    v7 = [v6 applicationIdentifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v21 = [v5 stringWithFormat:@"%@-%@", v7, v9];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v11 = [WeakRetained dataCollectionManager];
    v12 = *(a1 + 40);
    v13 = [*(*(a1 + 32) + 96) currentObserverState];
    v14 = [v11 takeCollectionAssertionWithOwnerIdentifier:v21 collectionIntervalsByType:v12 observerState:v13];

    v15 = [(HDWorkoutBasicDataSource *)*(a1 + 32) _takeHeartRateCollectionAssertion];
    [*(*(a1 + 32) + 72) invalidate];
    v16 = *(a1 + 32);
    v17 = *(v16 + 72);
    *(v16 + 72) = v14;
    v18 = v14;

    [*(*(a1 + 32) + 80) invalidate];
    v19 = *(a1 + 32);
    v20 = *(v19 + 80);
    *(v19 + 80) = v15;
  }
}

- (id)_takeHeartRateCollectionAssertion
{
  selfCopy = self;
  v20[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    if (*(selfCopy + 88) == 1)
    {
      v3 = MEMORY[0x277CCACA8];
      process = [selfCopy[3] process];
      applicationIdentifier = [process applicationIdentifier];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v3 stringWithFormat:@"%@-%@", applicationIdentifier, v7];

      WeakRetained = objc_loadWeakRetained(selfCopy + 1);
      dataCollectionManager = [WeakRetained dataCollectionManager];
      v19 = v2;
      v11 = MEMORY[0x277CCABB0];
      code = [v2 code];
      v13 = code == 179 || code == 75;
      v14 = 60.0;
      if (!v13)
      {
        v14 = 0.5;
      }

      v15 = [v11 numberWithDouble:v14];
      v20[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      currentObserverState = [selfCopy[12] currentObserverState];
      selfCopy = [dataCollectionManager takeCollectionAssertionWithOwnerIdentifier:v8 collectionIntervalsByType:v16 observerState:currentObserverState];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (NSSet)sampleTypesToCollect
{
  [(NSLock *)self->_lock lock];
  v3 = self->_sampleTypesToCollect;
  [(NSLock *)self->_lock unlock];

  return v3;
}

void __55__HDWorkoutBasicDataSource__startObservingSampleTypes___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: Completed initial aggregation request for newly observed types.", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Initial aggregation upon observation start failed: %{public}@", &v10, 0x16u);
  }
}

uint64_t __86__HDWorkoutBasicDataSource__enumerateSamplesOfType_from_to_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  return 1;
}

void __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addOtherSamples:v3 dataSource:*(a1 + 40)];
  }
}

uint64_t __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke_435(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = v3;
  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v16;
  }

  v7 = [v3 startDate];
  v8 = [v7 hk_isAfterDate:*(*(*(a1 + 40) + 8) + 40)];

  v10 = v16;
  if ((v8 & 1) == 0)
  {
LABEL_5:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v16];
    v9 = [*(*(*(a1 + 48) + 8) + 40) count];
    v10 = v16;
    if (v9 >= 0x190)
    {
      v11 = objc_autoreleasePoolPush();
      (*(*(a1 + 32) + 16))();
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      objc_autoreleasePoolPop(v11);
      v10 = v16;
    }
  }

  return MEMORY[0x2821F96F8](v9, v10);
}

void __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addQuantities:v3 dataSource:*(a1 + 40)];
  }
}

uint64_t __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v17;
  }

  v7 = [v3 hdw_dateInterval];
  v8 = [v7 startDate];
  v9 = [v8 hk_isAfterDate:*(*(*(a1 + 40) + 8) + 40)];

  v11 = v17;
  if ((v9 & 1) == 0)
  {
LABEL_5:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
    v10 = [*(*(*(a1 + 48) + 8) + 40) count];
    v11 = v17;
    if (v10 >= 0x190)
    {
      v12 = objc_autoreleasePoolPush();
      (*(*(a1 + 32) + 16))();
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      objc_autoreleasePoolPop(v12);
      v11 = v17;
    }
  }

  return MEMORY[0x2821F96F8](v10, v11);
}

- (void)setSessionServer:(id)server
{
  serverCopy = server;
  v4 = objc_storeWeak(&self->_sessionServer, serverCopy);
  [serverCopy addObserver:self queue:0];
}

- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to
{
  v55 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  fromCopy = from;
  toCopy = to;
  v11 = fromCopy;
  v12 = toCopy;
  v13 = v11;
  v40 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    v13 = [v14 dateByAddingTimeInterval:-86400.0];

    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy6 = self;
      v51 = 2114;
      v52 = v13;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Start date is nil. Updating start date to %{public}@", buf, 0x16u);
    }
  }

  v16 = v12;
  v17 = MEMORY[0x277CCC330];
  if (!v12)
  {
    v16 = [(HDWorkoutBasicDataSource *)v13 dateByAddingTimeInterval:3600.0];
    _HKInitializeLogging();
    v18 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy6 = self;
      v51 = 2114;
      v52 = v16;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: End date is nil. Updating end date to %{public}@", buf, 0x16u);
    }
  }

  v39 = v12;
  _HKInitializeLogging();
  v19 = *v17;
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy6 = self;
    v51 = 2114;
    v52 = v13;
    v53 = 2114;
    v54 = v16;
    _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching data from %{public}@ -> %{public}@", buf, 0x20u);
  }

  [(NSLock *)self->_lock lock];
  v20 = objc_msgSend_copy(self->_sampleTypesToCollect);
  [(NSLock *)self->_lock unlock];
  v21 = _HKLogSignpostIDGenerate();
  _HKInitializeLogging();
  v22 = *v17;
  if (os_signpost_enabled(*v17))
  {
    v23 = v22;
    v24 = v23;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 138543618;
      selfCopy6 = v13;
      v51 = 2114;
      v52 = v16;
      _os_signpost_emit_with_name_impl(&dword_228986000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "workout-basic-data-source", "request data from startDate=%{public}@ to endDate=%{public}@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v48 = 0;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __71__HDWorkoutBasicDataSource_workoutDataDestination_requestsDataFrom_to___block_invoke;
  v41[3] = &unk_278625F78;
  v27 = v20;
  v47 = v21;
  v42 = v27;
  selfCopy4 = self;
  v28 = destinationCopy;
  v44 = v28;
  v29 = v13;
  v45 = v29;
  v30 = v16;
  v46 = v30;
  v31 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:&v48 block:v41];
  v32 = v48;

  _HKInitializeLogging();
  v33 = MEMORY[0x277CCC330];
  v34 = *MEMORY[0x277CCC330];
  if (os_signpost_enabled(*MEMORY[0x277CCC330]))
  {
    v35 = v34;
    v36 = v35;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_228986000, v36, OS_SIGNPOST_INTERVAL_END, v21, "workout-basic-data-source", "", buf, 2u);
    }
  }

  _HKInitializeLogging();
  v37 = *v33;
  if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy6 = self;
    v51 = 2114;
    v52 = v29;
    v53 = 2114;
    v54 = v30;
    _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished fetching data for range %{public}@ -> %{public}@", buf, 0x20u);
  }

  if (!v31)
  {
    _HKInitializeLogging();
    v38 = *v33;
    if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy6 = self;
      v51 = 2114;
      v52 = v32;
      _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Read transaction handling data request failed: %{public}@", buf, 0x16u);
    }
  }
}

uint64_t __71__HDWorkoutBasicDataSource_workoutDataDestination_requestsDataFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v107[2] = *MEMORY[0x277D85DE8];
  v58 = a2;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v69 = a1;
  obj = *(a1 + 32);
  v59 = [obj countByEnumeratingWithState:&v71 objects:v95 count:16];
  if (v59)
  {
    v57 = *v72;
    do
    {
      v3 = 0;
      do
      {
        if (*v72 != v57)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v65 = v3;
        v5 = *(*(&v71 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        _HKInitializeLogging();
        v6 = *MEMORY[0x277CCC330];
        if (os_signpost_enabled(*MEMORY[0x277CCC330]))
        {
          v7 = v6;
          v8 = v7;
          v9 = v69[9];
          if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v5;
            _os_signpost_emit_with_name_impl(&dword_228986000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "workout-basic-data-source-enumeration", "beginning enumeration of %{public}@", &buf, 0xCu);
          }
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v12 = v69[5];
        v11 = v69[6];
        v14 = v69[7];
        v13 = v69[8];
        v70 = v12;
        if (isKindOfClass)
        {
          v67 = v11;
          v15 = v5;
          v16 = v14;
          v17 = v13;
          v18 = v58;
          if (v12)
          {
            aBlock = MEMORY[0x277D85DD0];
            v89 = 3221225472;
            v90 = __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke;
            v91 = &unk_27862A658;
            v92 = v67;
            v93 = v12;
            v19 = _Block_copy(&aBlock);
            v82 = 0;
            v83 = &v82;
            v84 = 0x3032000000;
            v85 = __Block_byref_object_copy__169;
            v86 = __Block_byref_object_dispose__169;
            v87 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
            v76 = 0;
            v77 = &v76;
            v78 = 0x3032000000;
            v79 = __Block_byref_object_copy__169;
            v80 = __Block_byref_object_dispose__169;
            v81 = 0;
            WeakRetained = objc_loadWeakRetained((v12 + 8));
            v107[0] = 0;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v97 = __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke_2;
            v98 = &unk_27862A6A8;
            v102 = v17 != 0;
            v100 = &v76;
            v101 = &v82;
            v21 = v19;
            v99 = v21;
            v22 = [HDWorkoutUtilities enumerateQuantitiesOfType:v15 from:v16 to:v17 transaction:v18 profile:WeakRetained error:v107 handler:&buf];
            v23 = v107[0];

            if (!v22)
            {
              _HKInitializeLogging();
              v24 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *v103 = 138543874;
                *&v103[4] = v12;
                *&v103[12] = 2114;
                *&v103[14] = v15;
                *&v103[22] = 2114;
                v104 = v23;
                _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate samples of type %{public}@: %{public}@", v103, 0x20u);
              }
            }

            (*(v21 + 2))(v21, v83[5]);

            _Block_object_dispose(&v76, 8);
            _Block_object_dispose(&v82, 8);
          }
        }

        else
        {
          v62 = v11;
          v60 = v5;
          v61 = v14;
          v68 = v13;
          v63 = v58;
          if (v12)
          {
            aBlock = MEMORY[0x277D85DD0];
            v89 = 3221225472;
            v90 = __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke;
            v91 = &unk_27862A658;
            v92 = v62;
            v93 = v12;
            v25 = _Block_copy(&aBlock);
            v82 = 0;
            v83 = &v82;
            v84 = 0x3032000000;
            v85 = __Block_byref_object_copy__169;
            v86 = __Block_byref_object_dispose__169;
            v87 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
            v76 = 0;
            v77 = &v76;
            v78 = 0x3032000000;
            v79 = __Block_byref_object_copy__169;
            v80 = __Block_byref_object_dispose__169;
            v81 = 0;
            v75 = 0;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v97 = __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke_435;
            v98 = &unk_27862A680;
            v102 = v68 != 0;
            v100 = &v76;
            v101 = &v82;
            v26 = v25;
            v99 = v26;
            v27 = v61;
            v28 = v68;
            v29 = &buf;
            v30 = v63;
            v64 = v60;
            v31 = objc_loadWeakRetained((v70 + 8));
            v32 = [HDSampleEntity entityEnumeratorWithType:v64 profile:v31];

            if (v28)
            {
              v33 = [MEMORY[0x277D10B18] predicateWithProperty:@"start_date" lessThanOrEqualToValue:v28];
              v34 = v33;
              if (v27)
              {
                v35 = MEMORY[0x277D10B18];
                v36 = [v27 dateByAddingTimeInterval:-86400.0];
                v37 = [v35 predicateWithProperty:@"start_date" greaterThanOrEqualToValue:v36];

                v38 = MEMORY[0x277D10B20];
                v107[0] = v34;
                v107[1] = v37;
                v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:2];
                v40 = [v38 predicateMatchingAllPredicates:v39];
              }

              else
              {
                v40 = v33;
              }
            }

            else
            {
              v40 = 0;
            }

            if (v27)
            {
              v41 = [MEMORY[0x277D10B18] predicateWithProperty:@"end_date" greaterThanOrEqualToValue:v27];
              v42 = v41;
              if (v40)
              {
                v43 = MEMORY[0x277D10B20];
                v106[0] = v40;
                v106[1] = v41;
                v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:2];
                v45 = [v43 predicateMatchingAllPredicates:v44];

                v40 = v45;
              }

              else
              {
                v40 = v41;
              }
            }

            [v32 setPredicate:v40];
            *v103 = MEMORY[0x277D85DD0];
            *&v103[8] = 3221225472;
            *&v103[16] = __86__HDWorkoutBasicDataSource__enumerateSamplesOfType_from_to_transaction_error_handler___block_invoke;
            v104 = &unk_278621698;
            v46 = v29;
            v105 = v46;
            v47 = [v32 enumerateInTransaction:v30 error:&v75 handler:v103];

            v94 = v47;
            v48 = v94;

            v49 = v75;
            if ((v48 & 1) == 0)
            {
              _HKInitializeLogging();
              v50 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *v103 = 138543874;
                *&v103[4] = v70;
                *&v103[12] = 2114;
                *&v103[14] = v64;
                *&v103[22] = 2114;
                v104 = v49;
                _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate samples of type %{public}@: %{public}@", v103, 0x20u);
              }
            }

            (*(v26 + 2))(v26, v83[5]);

            _Block_object_dispose(&v76, 8);
            _Block_object_dispose(&v82, 8);
          }
        }

        _HKInitializeLogging();
        v51 = *MEMORY[0x277CCC330];
        if (os_signpost_enabled(*MEMORY[0x277CCC330]))
        {
          v52 = v51;
          v53 = v52;
          v54 = v69[9];
          if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_228986000, v53, OS_SIGNPOST_INTERVAL_END, v54, "workout-basic-data-source-enumeration", "", &buf, 2u);
          }
        }

        objc_autoreleasePoolPop(context);
        v3 = v65 + 1;
      }

      while (v59 != v65 + 1);
      v59 = [obj countByEnumeratingWithState:&v71 objects:v95 count:16];
    }

    while (v59);
  }

  return 1;
}

- (void)workoutDataDestination:(id)destination didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (toState == 4 || toState == 2)
  {
    [(HDWorkoutBasicDataSource *)self _stopCollection];
  }
}

- (void)workoutDataDestination:(id)destination didUpdateConfiguration:(id)configuration
{
  v11 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  [(HDWorkoutBasicDataSource *)self setWorkoutConfiguration:configurationCopy];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = configurationCopy;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: Updated workout configuration : %{public}@", &v7, 0x16u);
  }
}

- (id)transactionalQuantityInsertHandlerForProfile:(id)profile journaled:(BOOL)journaled count:(int64_t)count
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__HDWorkoutBasicDataSource_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke;
  aBlock[3] = &unk_27862A6D0;
  journaledCopy = journaled;
  aBlock[4] = self;
  v12 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);

  return v9;
}

void __89__HDWorkoutBasicDataSource_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v22 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (*(a1 + 48) != 1 || [*(*(a1 + 32) + 112) shouldAllowWorkoutDatabaseAccessWhileLocked])
  {
    v17 = [[HDWorkoutSeriesQuantity alloc] initWithQuantity:v22 dateInterval:v14 series:v15];
    [*(a1 + 40) addObject:v17];
    if (a7)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = v19;
      if (v18)
      {
        v21 = *(v18 + 40);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __47__HDWorkoutBasicDataSource__forwardQuantities___block_invoke;
        v23[3] = &unk_278613880;
        v24 = v19;
        v25 = v18;
        [v21 sendToDestinationProcessors:v23];
      }
    }
  }
}

- (void)dataCollectionObservationStateDidChangeForClient:(id)client
{
  currentObserverState = [(HDClientDataCollectionObservationStateMonitor *)self->_clientStateMonitor currentObserverState];
  [(HDDataCollectionAssertion *)self->_collectionAssertion setObserverState:currentObserverState];

  currentObserverState2 = [(HDClientDataCollectionObservationStateMonitor *)self->_clientStateMonitor currentObserverState];
  [(HDDataCollectionAssertion *)self->_heartRateDataCollectionAssertion setObserverState:currentObserverState2];
}

- (void)aggregator:(id)aggregator didCollectSensorData:(id)data objectType:(id)type device:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifier = [type identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x277CCCB68]];

  if (v10)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = dataCopy;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      v14 = *MEMORY[0x277CCE110];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v14;
            v17 = v16;
            quantity = [v17 quantity];
            v31 = quantity;
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

            workoutDataFlowLink = self->_workoutDataFlowLink;
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __78__HDWorkoutBasicDataSource_aggregator_didCollectSensorData_objectType_device___block_invoke;
            v23[3] = &unk_2786138A8;
            v23[4] = self;
            v24 = v19;
            v25 = v17;
            v21 = v19;
            [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v23];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v12);
    }
  }
}

void __78__HDWorkoutBasicDataSource_aggregator_didCollectSensorData_objectType_device___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(*(a1 + 32) + 56) activityType] == 82)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 48) dateInterval];
      v5 = [v4 startDate];
      [v6 addMetadataToWorkoutActivity:v3 withSampleStartDate:v5 dataSource:*(a1 + 32)];
    }
  }

  else
  {
    [v6 addMetadata:*(a1 + 40) dataSource:*(a1 + 32)];
  }
}

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dateCopy = date;
  if (state == 10)
  {
    lock = self->_lock;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke_2;
    v18[3] = &unk_278613968;
    v18[4] = self;
    [(NSLock *)lock hk_withLock:v18];
  }

  else if (state == 7 && fromState == 10)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v12 = self->_lock;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke;
    v21[3] = &unk_278613990;
    v21[4] = self;
    v21[5] = &v22;
    [(NSLock *)v12 hk_withLock:v21];
    if (*(v23 + 24) == 1)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Entering running state and collection stopped. Will not take assertion.", buf, 0xCu);
      }
    }

    else
    {
      _takeHeartRateCollectionAssertion = [(HDWorkoutBasicDataSource *)&self->super.isa _takeHeartRateCollectionAssertion];
      v16 = self->_lock;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke_443;
      v19[3] = &unk_278613920;
      v19[4] = self;
      v17 = _takeHeartRateCollectionAssertion;
      v20 = v17;
      [(NSLock *)v16 hk_withLock:v19];
    }

    _Block_object_dispose(&v22, 8);
  }
}

void __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke_443(uint64_t a1)
{
  [*(*(a1 + 32) + 80) invalidate];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + 80);

  objc_storeStrong(v3, v2);
}

@end