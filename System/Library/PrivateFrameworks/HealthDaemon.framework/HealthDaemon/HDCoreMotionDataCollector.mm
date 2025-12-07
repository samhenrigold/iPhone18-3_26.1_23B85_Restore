@interface HDCoreMotionDataCollector
- (Class)coreMotionDatumClass;
- (HDCoreMotionDataCollector)initWithProfile:(id)profile;
- (HDProfile)profile;
- (double)queue_differenceFromDatum:(id)datum toDatum:(id)toDatum type:(id)type;
- (id)_queue_coreMotionDatumFromSensorDatum:(void *)datum;
- (id)collectedTypes;
- (id)diagnosticDescription;
- (id)persistentIdentifier;
- (id)queue_newDataSource;
- (unint64_t)queue_targetCollectionTypeForRequestedCollectionType:(unint64_t)type;
- (void)_accessToFitnessDataDidChange:(id)change;
- (void)_queue_updateCollectionType:(uint64_t)type;
- (void)beginCollectionForDataAggregator:(id)aggregator lastPersistedSensorDatum:(id)datum;
- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)queue_recomputeCurrentState;
- (void)registerWithAggregators;
- (void)unitTest_unregisterWithAggregators;
@end

@implementation HDCoreMotionDataCollector

- (HDCoreMotionDataCollector)initWithProfile:(id)profile
{
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = HDCoreMotionDataCollector;
  v5 = [(HDCoreMotionDataCollector *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    state = v6->_state;
    v6->_state = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastCMDatumByType = v6->_lastCMDatumByType;
    v6->_lastCMDatumByType = v11;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__accessToFitnessDataDidChange_ name:@"HDDataCollectionAccessToFitnessDataDidChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"HDDataCollectionAccessToFitnessDataDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = HDCoreMotionDataCollector;
  [(HDCoreMotionDataCollector *)&v4 dealloc];
}

- (void)registerWithAggregators
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDCoreMotionDataCollector_registerWithAggregators__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__HDCoreMotionDataCollector_registerWithAggregators__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectedTypes];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [HDDataCollectorMultiplexer alloc];
  v6 = *(a1 + 32);
  v7 = [v6 persistentIdentifier];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v9 = [(HDDataCollectorMultiplexer *)v5 initForCollector:v6 identifier:v7 profile:WeakRetained types:*(*(a1 + 32) + 8)];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  v14 = *(v12 + 40);

  return [v13 registerForCollectionWithState:v14];
}

- (void)queue_recomputeCurrentState
{
  v99 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = MEMORY[0x277CCD288];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[HDCoreMotionDataCollector queue_recomputeCurrentState]"];
  v69 = [v3 transactionWithOwner:self activityName:v4];

  mergedConfiguration = [(HDDataCollectorMultiplexer *)self->_multiplexer mergedConfiguration];
  v5 = -[HDCoreMotionDataCollector queue_targetCollectionTypeForRequestedCollectionType:](self, "queue_targetCollectionTypeForRequestedCollectionType:", [mergedConfiguration collectionType]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataCollectionManager = [WeakRetained dataCollectionManager];
  hasAccessToFitnessData = [dataCollectionManager hasAccessToFitnessData];

  if (!hasAccessToFitnessData)
  {
    v5 = 0;
  }

  v68 = v5;
  if (v5 == [(HKDataCollectorState *)self->_state collectionType])
  {
    [v69 invalidate];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
    {
      v59 = v9;
      diagnosticDescription = [(HDCoreMotionDataCollector *)self diagnosticDescription];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = diagnosticDescription;
      _os_log_debug_impl(&dword_228986000, v59, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
    {
      multiplexer = self->_multiplexer;
      v62 = v10;
      diagnosticDescription2 = [(HDDataCollectorMultiplexer *)multiplexer diagnosticDescription];
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = multiplexer;
      *&buf[22] = 2114;
      v89 = diagnosticDescription2;
      _os_log_debug_impl(&dword_228986000, v62, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ %{public}@", buf, 0x20u);
    }

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      v13 = v11;
      [(HKDataCollectorState *)state collectionType];
      v14 = HKDataCollectionTypeToString();
      v15 = HKDataCollectionTypeToString();
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2114;
      v89 = v15;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Transitioning collection type from %{public}@ -> %{public}@", buf, 0x20u);
    }

    if (v68)
    {
      dispatch_assert_queue_V2(self->_queue);
      if (self->_errorCount < 3)
      {
        if (self->_dataSource || ([(HDCoreMotionDataCollector *)self queue_newDataSource], v18 = objc_claimAutoreleasedReturnValue(), v19 = self->_dataSource, self->_dataSource = v18, v19, self->_dataSource))
        {
          dispatch_assert_queue_V2(self->_queue);
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          obj = self->_quantityTypes;
          v76 = [(NSSet *)obj countByEnumeratingWithState:&v77 objects:buf count:16];
          if (v76)
          {
            v75 = *v78;
            v73 = *MEMORY[0x277CCC960];
            v72 = *MEMORY[0x277CCC918];
            v71 = *MEMORY[0x277CCCC70];
            v67 = *MEMORY[0x277CCCC10];
            v66 = *MEMORY[0x277CCCB40];
            v65 = *MEMORY[0x277CCCB70];
            do
            {
              v20 = 0;
              do
              {
                if (*v78 != v75)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v77 + 1) + 8 * v20);
                v22 = [(NSMutableDictionary *)self->_lastCMDatumByType objectForKeyedSubscript:v21];
                if (!v22)
                {
                  v23 = v21;
                  dispatch_assert_queue_V2(self->_queue);
                  v24 = [(HDDataCollectorMultiplexer *)self->_multiplexer lastDatumForType:v23];
                  v25 = [(HDCoreMotionDataCollector *)self _queue_coreMotionDatumFromSensorDatum:v24];

                  if (v25)
                  {
                    v22 = v25;
                  }

                  else
                  {
                    v81 = 0;
                    v26 = v23;
                    dispatch_assert_queue_V2(self->_queue);
                    v27 = v26;
                    identifier = [v27 identifier];
                    v29 = [identifier isEqualToString:v73];

                    v30 = @"BASAL_ENERGY_INGESTION";
                    if (v29 & 1) != 0 || ([v27 identifier], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqualToString:", v72), v31, v30 = @"ACTIVE_ENERGY_INGESTION", (v32) || (objc_msgSend(v27, "identifier"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isEqualToString:", v71), v33, v30 = @"STEP_INGESTION", (v34) || (objc_msgSend(v27, "identifier"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", v67), v35, v30 = @"VULCAN_INGESTION", (v36) || (objc_msgSend(v27, "identifier"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isEqualToString:", v66), v37, v30 = @"DISTANCE_INGESTION", (v38) || (objc_msgSend(v27, "identifier"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", v65), v39, v30 = @"FLIGHTS_INGESTION", v40))
                    {

                      canonicalUnit = [v27 canonicalUnit];
                      v82 = 0;
                      v83 = &v82;
                      v84 = 0x3032000000;
                      v85 = __Block_byref_object_copy__92;
                      v86 = __Block_byref_object_dispose__92;
                      v87 = 0;
                      v42 = objc_loadWeakRetained(&self->_profile);
                      database = [v42 database];
                      *v92 = MEMORY[0x277D85DD0];
                      *&v92[8] = 3221225472;
                      *&v92[16] = __78__HDCoreMotionDataCollector__queue_migrateDataCollectionContextForType_error___block_invoke;
                      v93 = &unk_278620A18;
                      v94 = v30;
                      selfCopy = self;
                      v44 = canonicalUnit;
                      v96 = v44;
                      v98 = &v82;
                      v97 = v27;
                      v45 = [(HDHealthEntity *)HDUnprotectedKeyValueEntity performWriteTransactionWithHealthDatabase:database error:&v81 block:v92];

                      if (v45)
                      {
                        v46 = v83[5];
                      }

                      else
                      {
                        v46 = 0;
                      }

                      v47 = v46;

                      _Block_object_dispose(&v82, 8);
                    }

                    else
                    {
                      v47 = 0;
                      v44 = v27;
                    }

                    v48 = v81;
                    v49 = [(HDCoreMotionDataCollector *)self _queue_coreMotionDatumFromSensorDatum:v47];

                    if (v49)
                    {
                      _HKInitializeLogging();
                      v50 = *MEMORY[0x277CCC298];
                      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
                      {
                        *v92 = 138543618;
                        *&v92[4] = self;
                        *&v92[12] = 2114;
                        *&v92[14] = v27;
                        _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully migrated data collection context for %{public}@", v92, 0x16u);
                      }
                    }

                    else if (v48)
                    {
                      _HKInitializeLogging();
                      v51 = *MEMORY[0x277CCC298];
                      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
                      {
                        *v92 = 138543874;
                        *&v92[4] = self;
                        *&v92[12] = 2114;
                        *&v92[14] = v27;
                        *&v92[22] = 2114;
                        v93 = v48;
                        _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "%{public}@: Failed to migrate data collection context for %{public}@: %{public}@", v92, 0x20u);
                      }
                    }

                    v22 = v49;
                  }

                  if (v22)
                  {
                    [(NSMutableDictionary *)self->_lastCMDatumByType setObject:v22 forKeyedSubscript:v23];
                  }
                }

                ++v20;
              }

              while (v76 != v20);
              v52 = [(NSSet *)obj countByEnumeratingWithState:&v77 objects:buf count:16];
              v76 = v52;
            }

            while (v52);
          }

          allValues = [(NSMutableDictionary *)self->_lastCMDatumByType allValues];
          v54 = [allValues hk_firstSortedObjectWithComparison:&__block_literal_global_319];

          _HKInitializeLogging();
          v55 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
          {
            errorCount = self->_errorCount;
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v54;
            *&buf[22] = 2048;
            v89 = errorCount;
            _os_log_impl(&dword_228986000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning CM streaming with last datum %@ (current error count: %ld).", buf, 0x20u);
          }

          objc_initWeak(v92, self);
          [(HDCoreMotionDataCollector *)self _queue_updateCollectionType:v68];
          dataSource = self->_dataSource;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __73__HDCoreMotionDataCollector__queue_beginUpdatesWithTargetCollectionType___block_invoke_320;
          v89 = &unk_2786209F0;
          objc_copyWeak(v91, v92);
          v58 = v54;
          v90 = v58;
          [(HDCoreMotionDataSource *)dataSource hd_beginStreamingFromDatum:v58 handler:buf];

          objc_destroyWeak(v91);
          objc_destroyWeak(v92);
        }

        else
        {
          _HKInitializeLogging();
          v64 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&dword_228986000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to create a new data source; will not begin updates.", buf, 0xCu);
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v16 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          v17 = self->_errorCount;
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Reached retry limit of %ld while attempting to begin streaming; will try again on next configuration change.", buf, 0x16u);
        }

        [(HDCoreMotionDataCollector *)self unitTest_retriesExhausted];
      }
    }

    else
    {
      [(HDCoreMotionDataSource *)self->_dataSource hd_stopStreaming];
      [(HDCoreMotionDataCollector *)self _queue_updateCollectionType:?];
    }

    [v69 invalidate];
  }
}

- (void)_queue_updateCollectionType:(uint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  if (type)
  {
    dispatch_assert_queue_V2(*(type + 56));
    if ([*(type + 40) collectionType] != a2)
    {
      v4 = [*(type + 40) cloneWithNewType:a2];
      v5 = *(type + 40);
      *(type + 40) = v4;

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = *(type + 8);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(type + 16) aggregatorForType:{*(*(&v12 + 1) + 8 * v10), v12}];
            [v11 dataCollector:type didChangeState:*(type + 40)];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }
}

- (id)_queue_coreMotionDatumFromSensorDatum:(void *)datum
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = datum[7];
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  resumeContext = [v4 resumeContext];

  if (resumeContext)
  {
    v10 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_msgSend(datum fromData:"coreMotionDatumClass") error:{resumeContext, &v10}];
    v7 = v10;
    if (!v6)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        datumCopy = datum;
        v13 = 2114;
        v14 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode datum resume context: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __66__HDCoreMotionDataCollector__queue_forwardCoreMotionData_forType___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hd_sourceID];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v4 == v6)
  {

    goto LABEL_6;
  }

  if (v6)
  {
    v7 = [v3 hd_sourceID];
    v8 = [v7 isEqual:*(a1 + 32)];

    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v9 = [v3 hd_compare:*(a1 + 40)] == 1;
    goto LABEL_11;
  }

LABEL_8:
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1 + 40;
    v11 = *(a1 + 40);
    v12 = *(v13 + 8);
    v14 = v10;
    v15 = [v11 hd_sourceID];
    v16 = [v3 hd_sourceID];
    v18 = 138543874;
    v19 = v12;
    v20 = 2114;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: CM database reset detected (Source ID %{public}@ -> %{public}@", &v18, 0x20u);
  }

  v9 = 1;
LABEL_11:

  return v9;
}

double __66__HDCoreMotionDataCollector__queue_forwardCoreMotionData_forType___block_invoke_309(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) queue_differenceFromDatum:v5 toDatum:v6 type:*(a1 + 40)];
  v8 = v7;
  v9 = [v6 hd_datestamp];
  v10 = [v5 hd_datestamp];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12 <= 14400.0)
  {
    v14 = v8;
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC298];
    v14 = 0.0;
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = v13;
      v17 = [v5 hd_datestamp];
      v18 = [v6 hd_datestamp];
      v20 = 138544386;
      v21 = v15;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v12;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Dropping value %lf covering unexpectedly long gap (%lfs from %{public}@ to %{public}@)", &v20, 0x34u);
    }
  }

  return v14;
}

id __66__HDCoreMotionDataCollector__queue_forwardCoreMotionData_forType___block_invoke_311(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 hd_datestamp];
  v7 = [v5 hd_datestamp];
  v8 = [v6 hk_isBeforeOrEqualToDate:v7];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    v10 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Received out-of-date-order samples %@, %@; creating instantaneous datum to account for adjustment.", &v16, 0x16u);
    }

    v9 = objc_alloc(MEMORY[0x277CCA970]);
    v10 = v5;
  }

  v12 = [v10 hd_datestamp];
  v13 = [v5 hd_datestamp];
  v14 = [v9 initWithStartDate:v12 endDate:v13];

  return v14;
}

void __75__HDCoreMotionDataCollector__didReceiveCoreMotionData_startingDatum_error___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v34 = [*(a1 + 48) domain];
    if ([v34 isEqualToString:*MEMORY[0x277CC1BC0]])
    {
      v35 = [*(a1 + 48) code];

      if (v35 == 107)
      {
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 40);
          *buf = 138543362;
          v80 = v37;
          _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: Received invalid parameter error", buf, 0xCu);
        }

        *(*(a1 + 40) + 48) = 0;
        v38 = *(*(a1 + 40) + 24);
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __75__HDCoreMotionDataCollector__didReceiveCoreMotionData_startingDatum_error___block_invoke_315;
        v63[3] = &unk_2786209A8;
        v64 = *(a1 + 56);
        v39 = [v38 keysOfEntriesPassingTest:v63];
        v40 = *(*(a1 + 40) + 24);
        v41 = [v39 allObjects];
        [v40 removeObjectsForKeys:v41];

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v42 = v39;
        v43 = [v42 countByEnumeratingWithState:&v59 objects:v78 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v60;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v60 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(a1 + 40) + 16);
              v48 = [v47 aggregatorForType:*(*(&v59 + 1) + 8 * i)];
              [v47 setLastSensorDatum:0 forAggregator:v48];
            }

            v44 = [v42 countByEnumeratingWithState:&v59 objects:v78 count:16];
          }

          while (v44);
        }

LABEL_50:
        [*(*(a1 + 40) + 32) hd_stopStreaming];
        v50 = *(a1 + 40);
        v51 = *(v50 + 32);
        *(v50 + 32) = 0;

        [(HDCoreMotionDataCollector *)*(a1 + 40) _queue_updateCollectionType:?];
        [*(a1 + 40) queue_recomputeCurrentState];
        return;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v49 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v52 = *(a1 + 40);
      v53 = *(a1 + 48);
      *buf = 138543618;
      v80 = v52;
      v81 = 2114;
      v82 = v53;
      _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@: Received error: %{public}@", buf, 0x16u);
    }

    ++*(*(a1 + 40) + 48);
    goto LABEL_50;
  }

  v3 = *(a1 + 40);
  v4 = v2;
  if (v3)
  {
    dispatch_assert_queue_V2(*(v3 + 56));
    if ([v4 count])
    {
      v55 = v4;
      _HKInitializeLogging();
      v5 = MEMORY[0x277CCC298];
      v6 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        *buf = 138543618;
        v80 = v3;
        v81 = 2048;
        v82 = [v55 count];
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Received %ld core motion datums", buf, 0x16u);
      }

      v8 = _HKLogSignpostIDGenerate();
      _HKInitializeLogging();
      v9 = *v5;
      if (os_signpost_enabled(*v5))
      {
        v10 = v9;
        v11 = v10;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          v12 = [v55 count];
          v13 = *(v3 + 8);
          *buf = 134218242;
          v80 = v12;
          v81 = 2114;
          v82 = v13;
          _os_signpost_emit_with_name_impl(&dword_228986000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "core-motion-data-unpack", "count=%ld, types=%{public}@", buf, 0x16u);
        }
      }

      v54 = v8;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = *(v3 + 8);
      v14 = v55;
      v58 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
      if (v58)
      {
        v57 = *v66;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v66 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v65 + 1) + 8 * j);
            v17 = v14;
            v18 = v16;
            dispatch_assert_queue_V2(*(v3 + 56));
            if ([v17 count])
            {
              v19 = [*(v3 + 24) objectForKeyedSubscript:v18];
              if (!v19)
              {
                v20 = [*(v3 + 16) lastDatumForType:v18];
                v19 = [(HDCoreMotionDataCollector *)v3 _queue_coreMotionDatumFromSensorDatum:v20];
              }

              v21 = [v17 firstObject];
              v22 = [v21 hd_unitForType:v18];

              if (v19)
              {
                v23 = [v19 hd_sourceID];
                *v71 = MEMORY[0x277D85DD0];
                v72 = 3221225472;
                v73 = __66__HDCoreMotionDataCollector__queue_forwardCoreMotionData_forType___block_invoke;
                v74 = &unk_278620938;
                v75 = v23;
                v76 = v19;
                v77 = v3;
                v24 = v23;
                v25 = [v17 hk_filter:v71];

                v17 = v25;
              }

              if ([v17 count])
              {
                v69[0] = MEMORY[0x277D85DD0];
                v69[1] = 3221225472;
                v69[2] = __66__HDCoreMotionDataCollector__queue_forwardCoreMotionData_forType___block_invoke_309;
                v69[3] = &unk_278620960;
                v69[4] = v3;
                v26 = v18;
                v70 = v26;
                v27 = [HDQuantityDatum quantityDataForDifferencesInData:v17 baseDatum:v19 unit:v22 differenceHandler:v69 intervalHandler:&__block_literal_global_99];
                if ([v27 count])
                {
                  v28 = [*(v3 + 16) aggregatorForType:v26];
                  v29 = [MEMORY[0x277CCD2E8] localDevice];
                  [v28 dataCollector:v3 didCollectSensorData:v27 device:v29 options:0];

                  v14 = v55;
                }

                v30 = [v17 lastObject];
                [*(v3 + 24) setObject:v30 forKeyedSubscript:v26];
              }
            }
          }

          v58 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
        }

        while (v58);
      }

      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC298];
      v4 = v14;
      if (os_signpost_enabled(*MEMORY[0x277CCC298]))
      {
        v32 = v31;
        v33 = v32;
        if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *v71 = 0;
          _os_signpost_emit_with_name_impl(&dword_228986000, v33, OS_SIGNPOST_INTERVAL_END, v54, "core-motion-data-unpack", "", v71, 2u);
        }

        v4 = v55;
      }
    }
  }
}

void __73__HDCoreMotionDataCollector__queue_beginUpdatesWithTargetCollectionType___block_invoke_320(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;
  if (WeakRetained)
  {
    v11 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HDCoreMotionDataCollector__didReceiveCoreMotionData_startingDatum_error___block_invoke;
    block[3] = &unk_278616D68;
    v14 = v8;
    v15 = WeakRetained;
    v16 = v10;
    v17 = v9;
    dispatch_async(v11, block);
  }
}

- (void)_accessToFitnessDataDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDCoreMotionDataCollector__accessToFitnessDataDidChange___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (Class)coreMotionDatumClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)collectedTypes
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v2 = MEMORY[0x277CBEB98];

  return [v2 set];
}

- (id)queue_newDataSource
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (double)queue_differenceFromDatum:(id)datum toDatum:(id)toDatum type:(id)type
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (id)persistentIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)queue_targetCollectionTypeForRequestedCollectionType:(unint64_t)type
{
  dispatch_assert_queue_V2(self->_queue);
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_22916CF68[type];
  }
}

- (void)beginCollectionForDataAggregator:(id)aggregator lastPersistedSensorDatum:(id)datum
{
  aggregatorCopy = aggregator;
  datumCopy = datum;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HDCoreMotionDataCollector_beginCollectionForDataAggregator_lastPersistedSensorDatum___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = datumCopy;
  v13 = aggregatorCopy;
  v9 = aggregatorCopy;
  v10 = datumCopy;
  dispatch_async(queue, block);
}

uint64_t __87__HDCoreMotionDataCollector_beginCollectionForDataAggregator_lastPersistedSensorDatum___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138543874;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Received last sensor datum %@ from %{public}@", &v7, 0x20u);
  }

  [*(*(a1 + 32) + 16) setLastSensorDatum:*(a1 + 40) forAggregator:*(a1 + 48)];
  return [*(a1 + 32) queue_recomputeCurrentState];
}

- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration
{
  aggregatorCopy = aggregator;
  configurationCopy = configuration;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HDCoreMotionDataCollector_dataAggregator_wantsCollectionWithConfiguration___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = configurationCopy;
  v13 = aggregatorCopy;
  v9 = aggregatorCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

uint64_t __77__HDCoreMotionDataCollector_dataAggregator_wantsCollectionWithConfiguration___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCC298];
  if (*(*(a1 + 32) + 48) >= 1)
  {
    _HKInitializeLogging();
    v3 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting error count on configuration change.", &v10, 0xCu);
    }

    *(*(a1 + 32) + 48) = 0;
  }

  _HKInitializeLogging();
  v5 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received updated configuration %{public}@ from %{public}@", &v10, 0x20u);
  }

  [*(*(a1 + 32) + 16) setConfiguration:*(a1 + 40) forAggregator:*(a1 + 48)];
  return [*(a1 + 32) queue_recomputeCurrentState];
}

- (id)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendString:@"Diagnostic Description:\n"];
  [v3 appendFormat:@"\tstate: %@\n", self->_state];
  [v3 appendFormat:@"\terrorCount: %ld\n", self->_errorCount];
  [v3 appendFormat:@"\tdataSource: %@\n", self->_dataSource];
  [v3 appendFormat:@"\tquantityTypes: %@\n", self->_quantityTypes];
  [v3 appendFormat:@"\tlastCMDatumByType: %@\n", self->_lastCMDatumByType];

  return v3;
}

- (void)unitTest_unregisterWithAggregators
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDCoreMotionDataCollector_unitTest_unregisterWithAggregators__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __78__HDCoreMotionDataCollector__queue_migrateDataCollectionContextForType_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [HDKeyValueDomain alloc];
  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
  v8 = [(HDKeyValueDomain *)v5 initWithCategory:0 domainName:v6 profile:WeakRetained];

  v36 = 0;
  v9 = [(HDKeyValueDomain *)v8 dataForKey:@"context" error:&v36];
  v10 = v36;
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      v31 = 1;
      goto LABEL_10;
    }

    if (a3)
    {
      v32 = v10;
      v31 = 0;
      *a3 = v11;
      goto LABEL_10;
    }

    _HKLogDroppedError();
LABEL_9:
    v31 = 0;
    goto LABEL_10;
  }

  if (![(HDKeyValueDomain *)v8 setData:0 forKey:@"context" error:a3])
  {
    goto LABEL_9;
  }

  v35 = [MEMORY[0x277CCD7E8] quantityWithUnit:*(a1 + 48) doubleValue:0.0];
  v12 = [HDQuantityDatum alloc];
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = objc_alloc(MEMORY[0x277CCA970]);
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 initWithStartDate:v15 duration:0.0];
  v17 = [(HDQuantityDatum *)v12 initWithIdentifier:v13 dateInterval:v16 resumeContext:v9 quantity:v35];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v21 = [objc_alloc(MEMORY[0x277CCAAB0]) initForWritingWithMutableData:v20];
  [v21 encodeObject:*(*(*(a1 + 64) + 8) + 40) forKey:@"sensor_datum"];
  [v21 finishEncoding];
  v22 = [HDKeyValueDomain alloc];
  v23 = MEMORY[0x277CCACA8];
  [*(a1 + 56) identifier];
  v24 = v34 = a3;
  v25 = [v23 stringWithFormat:@"DATA_AGGREGATION-%@", v24];
  v26 = objc_loadWeakRetained((*(a1 + 40) + 64));
  v27 = [(HDKeyValueDomain *)v22 initWithCategory:0 domainName:v25 profile:v26];

  v28 = *(a1 + 40);
  v29 = [v28[2] aggregatorForType:*(a1 + 56)];
  v30 = [v28 identifierForDataAggregator:v29];

  v31 = [(HDKeyValueDomain *)v27 setData:v20 forKey:v30 error:v34];
LABEL_10:

  return v31;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end