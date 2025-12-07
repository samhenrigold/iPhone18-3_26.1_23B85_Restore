@interface HDConceptIndexManager
- (BOOL)_computeIsEnabled;
- (BOOL)_updateConceptIndexWithReason:(id)reason;
- (BOOL)unitTest_hasScheduledIndexing;
- (HDConceptIndexManager)init;
- (HDConceptIndexManager)initWithConceptIndexerClass:(Class)class batchSize:(unint64_t)size profile:(id)profile;
- (HDConceptIndexManager)initWithProfile:(id)profile;
- (id)_takeAssertionWithError:(uint64_t)error;
- (uint64_t)_canAutomaticallyScheduleConceptIndexing;
- (unint64_t)currentExecutionState;
- (void)_clearHasScheduledIndexing;
- (void)_dispatchDelayedOperationWithReason:(uint64_t)reason;
- (void)_setObservationForDataManager:(uint64_t)manager;
- (void)accountExistenceNotifier:(id)notifier didChangeHealthRecordAccountExistence:(BOOL)existence;
- (void)addObserver:(id)observer;
- (void)contentDatabaseDidBecomeAvailable:(BOOL)available;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)didImportOntologyShard;
- (void)invalidateAndWait;
- (void)profileDidBecomeReady:(id)ready;
- (void)resetWithReindex;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)unitTest_setHasScheduledIndexing:(BOOL)indexing;
@end

@implementation HDConceptIndexManager

- (HDConceptIndexManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDConceptIndexManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [(HDConceptIndexManager *)self initWithConceptIndexerClass:objc_opt_class() batchSize:20 profile:profileCopy];

  return v5;
}

- (HDConceptIndexManager)initWithConceptIndexerClass:(Class)class batchSize:(unint64_t)size profile:(id)profile
{
  profileCopy = profile;
  v10 = profileCopy;
  if (size)
  {
    if (profileCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDConceptIndexManager.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"batchSize"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDConceptIndexManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"profile"}];

LABEL_3:
  v31.receiver = self;
  v31.super_class = HDConceptIndexManager;
  v11 = [(HDConceptIndexManager *)&v31 init];
  v12 = v11;
  if (v11)
  {
    atomic_store(0, &v11->_isInvalidated);
    *&v11->_hasScheduledIndexing = 0;
    v11->_stateLock._os_unfair_lock_opaque = 0;
    v13 = HKCreateSerialDispatchQueue();
    delayedOperationQueue = v12->_delayedOperationQueue;
    v12->_delayedOperationQueue = v13;

    objc_storeWeak(&v12->_profile, v10);
    v12->_conceptIndexerClass = class;
    v12->_batchSize = size;
    v15 = objc_alloc(MEMORY[0x277CCD738]);
    v16 = [v15 initWithName:@"concept-index-scheduler-observers" loggingCategory:*MEMORY[0x277CCC2B0]];
    observerSet = v12->_observerSet;
    v12->_observerSet = v16;

    v12->_conceptIndexUpdateDebounceIntervalOverride = 0.25;
    v18 = objc_alloc_init(MEMORY[0x277CCA940]);
    cachedReasonsForReindex = v12->_cachedReasonsForReindex;
    v12->_cachedReasonsForReindex = v18;

    objc_initWeak(&location, v12);
    v20 = objc_alloc(MEMORY[0x277CCDD98]);
    v21 = v12->_delayedOperationQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__HDConceptIndexManager_initWithConceptIndexerClass_batchSize_profile___block_invoke;
    v28[3] = &unk_278616F38;
    objc_copyWeak(&v29, &location);
    v22 = [v20 initWithMode:1 queue:v21 delay:v28 block:2.0];
    updateIndexOperation = v12->_updateIndexOperation;
    v12->_updateIndexOperation = v22;

    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v12;
}

uint64_t __71__HDConceptIndexManager_initWithConceptIndexerClass_batchSize_profile___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v31 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained[8]);
    v3 = *(v31 + 72);
    v4 = [v3 count];
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = v5;
    if (v4 >= 2)
    {
      [v5 appendString:@"["];
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __HDStringForIndexTriggerReasons_block_invoke;
    v40 = &unk_278623460;
    v7 = v3;
    v41 = v7;
    [v6 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v7, buf}];
    if (v4 >= 2)
    {
      [v6 appendString:@"]"];
    }

    [*(v31 + 72) removeAllObjects];
    v8 = v6;
    dispatch_assert_queue_V2(*(v31 + 64));
    v9 = v31;
    if (*(v31 + 61) == 1)
    {
      _HKInitializeLogging();
      v10 = HKLogConceptIndex();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v31;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting concept index.", buf, 0xCu);
      }

      v11 = *(v31 + 48);
      v12 = objc_loadWeakRetained((v31 + 16));
      v34 = 0;
      v13 = [v11 resetIndexManagerStateForProfile:v12 withError:&v34];
      v14 = v34;

      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v17 = HKLogConceptIndex();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset concept index with error :%{public}@", buf, 0x16u);
        }

        goto LABEL_20;
      }

      *(v31 + 61) = 0;

      v9 = v31;
    }

    if ([(HDConceptIndexManager *)v9 _computeIsEnabled])
    {
      os_unfair_lock_lock((v31 + 56));
      if (*(v31 + 60) == 1)
      {
        os_unfair_lock_unlock((v31 + 56));
        _HKInitializeLogging();
        v15 = HKLogConceptIndex();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (!v16)
        {
LABEL_29:

          v2 = v31;
          goto LABEL_30;
        }

        v14 = HKLogConceptIndex();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v31;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "%{public}@: Skipping scheduling of indexing operation, we already have a scheduled operation.", buf, 0xCu);
        }
      }

      else
      {
        *(v31 + 60) = 1;
        os_unfair_lock_unlock((v31 + 56));
        [*(v31 + 32) invalidate];
        v33 = 0;
        v18 = [(HDConceptIndexManager *)v31 _takeAssertionWithError:?];
        v14 = v33;
        v19 = *(v31 + 32);
        *(v31 + 32) = v18;

        v20 = v31;
        if (!*(v31 + 32))
        {
          _HKInitializeLogging();
          v21 = HKLogConceptIndex();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v29 = [v14 localizedDescription];
            *buf = 138543618;
            *&buf[4] = v31;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Was not able to take out initial acessibility assertion with error %{public}@. Proceeding to schedule indexing work, and try to take assertion later.", buf, 0x16u);
          }

          v20 = v31;
        }

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Indexing operation with reason %@", v20, v8];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke;
        v40 = &unk_278623410;
        v41 = v31;
        v23 = v8;
        v42 = v23;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke_2;
        v32[3] = &unk_278614DB0;
        v32[4] = v31;
        v24 = [HDMaintenanceOperation maintenanceOperationWithName:v22 asynchronousBlock:buf canceledBlock:v32];

        _HKInitializeLogging();
        v25 = HKLogConceptIndex();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v35 = 138543618;
          v36 = v31;
          v37 = 2114;
          v38 = v23;
          _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling Indexing operation on maintenance coordinator with reason: %{public}@", v35, 0x16u);
        }

        v26 = objc_loadWeakRetained((v31 + 16));
        v27 = [v26 daemon];
        v28 = [v27 maintenanceWorkCoordinator];
        [v28 enqueueMaintenanceOperation:v24];
      }

LABEL_28:

      goto LABEL_29;
    }

    v14 = _Block_copy(*(v31 + 104));
    if (!v14)
    {
      goto LABEL_28;
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:119 format:@"Concept Index manager is not enabled and wont perform any work."];
    (v14[2].isa)(v14, 0, 0, v17);
LABEL_20:

    goto LABEL_28;
  }

LABEL_30:

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)resetWithReindex
{
  delayedOperationQueue = self->_delayedOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HDConceptIndexManager_resetWithReindex__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(delayedOperationQueue, block);
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {
    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

uint64_t __41__HDConceptIndexManager_resetWithReindex__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 61) & 1) == 0)
  {
    *(v1 + 61) = 1;
  }

  return result;
}

- (uint64_t)_canAutomaticallyScheduleConceptIndexing
{
  v25 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 16));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    healthAppNotInstalled = [behavior healthAppNotInstalled];

    v6 = objc_loadWeakRetained((v1 + 16));
    daemon2 = [v6 daemon];
    behavior2 = [daemon2 behavior];
    if ([behavior2 performsAutomaticConceptIndexing])
    {
      v9 = *(v1 + 96) | healthAppNotInstalled;

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v10 = HKLogConceptIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HKStringFromBool();
      v12 = objc_loadWeakRetained((v1 + 16));
      daemon3 = [v12 daemon];
      behavior3 = [daemon3 behavior];
      [behavior3 performsAutomaticConceptIndexing];
      v15 = HKStringFromBool();
      v16 = HKStringFromBool();
      v17 = 138544130;
      v18 = v1;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot automatically schedule concept indexing. Health App Installed %{public}@, performsAutomaticConceptIndexing %{public}@, ignoresAutomaticProcessingTriggers %{public}@", &v17, 0x2Au);
    }

    return 0;
  }

  return result;
}

- (void)_dispatchDelayedOperationWithReason:(uint64_t)reason
{
  v3 = a2;
  v4 = v3;
  if (reason)
  {
    v5 = *(reason + 64);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__HDConceptIndexManager__dispatchDelayedOperationWithReason___block_invoke;
    v6[3] = &unk_278613920;
    v6[4] = reason;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)invalidateAndWait
{
  atomic_store(1u, &self->_isInvalidated);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  internalContentDatabaseManager = [WeakRetained internalContentDatabaseManager];
  [internalContentDatabaseManager removeOntologyShardImportObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  internalContentDatabaseManager2 = [v6 internalContentDatabaseManager];
  [internalContentDatabaseManager2 removeContentDatabaseAvailabilityObserver:self];
}

- (unint64_t)currentExecutionState
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_hasScheduledIndexing)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (void)dealloc
{
  [(HDConceptIndexManager *)self _setObservationForDataManager:?];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  [(_HKDelayedOperation *)self->_updateIndexOperation invalidate];
  [(HDAssertion *)self->_preparedDatabaseAccessibilityAssertion invalidate];
  v5.receiver = self;
  v5.super_class = HDConceptIndexManager;
  [(HDConceptIndexManager *)&v5 dealloc];
}

- (void)_setObservationForDataManager:(uint64_t)manager
{
  v22 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    WeakRetained = objc_loadWeakRetained((manager + 16));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    if ([behavior futureMigrationsEnabled])
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [MEMORY[0x277CCD8D8] medicalRecordTypesWithOptions:{v7, 0}];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = objc_loadWeakRetained((manager + 16));
          dataManager = [v14 dataManager];
          v16 = dataManager;
          if (a2)
          {
            [dataManager addObserver:manager forDataType:v13];
          }

          else
          {
            [dataManager removeObserver:manager forDataType:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerSet = self->_observerSet;
  observerCopy = observer;
  [(HKObserverSet *)observerSet registerObserver:observerCopy];
  v6 = self->_observerSet;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HDConceptIndexManager_addObserver___block_invoke;
  v7[3] = &unk_2786233C8;
  v7[4] = self;
  [(HKObserverSet *)v6 notifyObserver:observerCopy handler:v7];
}

void __37__HDConceptIndexManager_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 conceptIndexManagerDidChangeExecutionState:{objc_msgSend(v2, "currentExecutionState")}];
}

- (BOOL)_computeIsEnabled
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v2 = atomic_load((self + 40));
  if ((v2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    supportsOntology = [behavior supportsOntology];

    if (supportsOntology)
    {
      daemon2 = [WeakRetained daemon];
      behavior2 = [daemon2 behavior];
      ontologyIndexingEnabled = [behavior2 ontologyIndexingEnabled];

      _HKInitializeLogging();
      if (ontologyIndexingEnabled)
      {
        v13 = HKLogHealthOntology();
        v6 = 1;
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

        if (v14)
        {
          v15 = HKLogHealthOntology();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v20 = 138543362;
            selfCopy4 = self;
            _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "%{public}@: Concept Indexing Is Enabled", &v20, 0xCu);
          }

          goto LABEL_21;
        }

LABEL_22:

        return v6;
      }

      v18 = HKLogConceptIndex();
      v6 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

      if (!v6)
      {
        goto LABEL_22;
      }

      v15 = HKLogConceptIndex();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = 138543362;
        selfCopy4 = self;
        v17 = "%{public}@: Indexing not enabled: behavior for indexing disabled";
        goto LABEL_19;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = HKLogConceptIndex();
      v6 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

      if (!v6)
      {
        goto LABEL_22;
      }

      v15 = HKLogConceptIndex();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = 138543362;
        selfCopy4 = self;
        v17 = "%{public}@: Indexing not enabled: behavior does not support ontology";
LABEL_19:
        _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, v17, &v20, 0xCu);
      }
    }

    v6 = 0;
LABEL_21:

    goto LABEL_22;
  }

  _HKInitializeLogging();
  v3 = HKLogConceptIndex();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

  if (v4)
  {
    WeakRetained = HKLogConceptIndex();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      v20 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_228986000, WeakRetained, OS_LOG_TYPE_INFO, "%{public}@: Indexing is not enabled: either ontology is currently updating, or the index manager has been invalidated.", &v20, 0xCu);
    }

    v6 = 0;
    goto LABEL_22;
  }

  return 0;
}

- (id)_takeAssertionWithError:(uint64_t)error
{
  v25 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v9 = [v4 stringWithFormat:@"%@-%@", v6, uUIDString];

    WeakRetained = objc_loadWeakRetained((error + 16));
    database = [WeakRetained database];
    v20 = 0;
    v12 = [database takeAccessibilityAssertionWithOwnerIdentifier:v9 timeout:&v20 error:300.0];
    v13 = v20;

    if (!v12)
    {
      _HKInitializeLogging();
      v14 = HKLogHealthOntology();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

      if (v15)
      {
        v16 = HKLogHealthOntology();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v13 localizedDescription];
          *buf = 138543618;
          errorCopy = error;
          v23 = 2114;
          v24 = localizedDescription;
          _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "%{public}@: unable to take accessibility assertion with error: %{public}@.", buf, 0x16u);
        }
      }
    }

    if (a2)
    {
      v18 = v13;
      *a2 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:*(a1 + 32) activityName:@"indexing"];
  if (([*(a1 + 32) _updateConceptIndexWithReason:*(a1 + 40)] & 1) == 0)
  {
    [(HDConceptIndexManager *)*(a1 + 32) _clearHasScheduledIndexing];
    v4 = _Block_copy(*(*(a1 + 32) + 112));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }

  v6[2]();
  [*(*(a1 + 32) + 32) invalidate];
  [v3 invalidate];
}

- (void)_clearHasScheduledIndexing
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    *(self + 60) = 0;

    os_unfair_lock_unlock((self + 56));
  }
}

void __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = a2;
  [v2 invalidate];
  v3[2]();
}

- (BOOL)_updateConceptIndexWithReason:(id)reason
{
  v52 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = self->_preparedDatabaseAccessibilityAssertion;
  preparedDatabaseAccessibilityAssertion = self->_preparedDatabaseAccessibilityAssertion;
  self->_preparedDatabaseAccessibilityAssertion = 0;

  if (v5)
  {
    v7 = 0;
LABEL_4:
    observerSet = self->_observerSet;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __60__HDConceptIndexManager__notifyObserversWithExecutionState___block_invoke;
    v46 = &__block_descriptor_40_e41_v16__0___HDConceptIndexManagerObserver__8l;
    *v47 = 2;
    [(HKObserverSet *)observerSet notifyObservers:buf];
    v9 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v9 setCacheScope:1];
    [(HDMutableDatabaseTransactionContext *)v9 addAccessibilityAssertion:v5];
    _HKInitializeLogging();
    v10 = HKLogConceptIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = reasonCopy;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning concept indexing with reason: %{public}@.", buf, 0x16u);
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke;
    v37[3] = &unk_27861A148;
    v37[4] = self;
    v37[5] = &v39;
    v38 = v7;
    v14 = [database performWithTransactionContext:v9 error:&v38 block:v37];
    v15 = v38;

    v16 = v40[3];
    batchSize = self->_batchSize;
    if (v16 % batchSize)
    {
      v18 = v16 / batchSize + 1;
    }

    else
    {
      v18 = v16 / batchSize;
    }

    _HKInitializeLogging();
    v19 = HKLogConceptIndex();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v5;
      v20 = v9;
      v21 = v14;
      v22 = reasonCopy;
      v23 = v21;
      if (v21)
      {
        v24 = @"Success";
      }

      else
      {
        v24 = @"Failure";
      }

      v25 = v40[3];
      v26 = CFAbsoluteTimeGetCurrent();
      localizedDescription = [v15 localizedDescription];
      *buf = 138544898;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      *&buf[22] = 2048;
      v46 = v25;
      *v47 = 2048;
      *&v47[2] = v18;
      *&v47[10] = 2114;
      reasonCopy = v22;
      *&v47[12] = v22;
      v48 = 2048;
      v49 = v26 - Current;
      v50 = 2114;
      v51 = localizedDescription;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ indexing %ld records in %ld batches with reason %{public}@, duration: %.3f seconds, Error: %{public}@", buf, 0x48u);

      v14 = v23;
      v9 = v20;
      v5 = v36;
    }

    v28 = v40[3];
    v7 = v15;
    v29 = _Block_copy(self->_unitTesting_conceptIndexManagerDidFinish);
    v30 = v29;
    if (v29)
    {
      (*(v29 + 2))(v29, v14, v28, v7);
    }

    v31 = self->_observerSet;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __90__HDConceptIndexManager__notifyObserversBecameIdleWithSampleProcessedCount_success_error___block_invoke;
    v46 = &unk_278623438;
    *v47 = self;
    *&v47[8] = v28;
    [(HKObserverSet *)v31 notifyObservers:buf, v36];
    v32 = self->_observerSet;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __60__HDConceptIndexManager__notifyObserversWithExecutionState___block_invoke;
    v44[3] = &__block_descriptor_40_e41_v16__0___HDConceptIndexManagerObserver__8l;
    v44[4] = 1;
    [(HKObserverSet *)v32 notifyObservers:v44];

    [(HDAssertion *)v5 invalidate];
    _Block_object_dispose(&v39, 8);
    goto LABEL_17;
  }

  v43 = 0;
  v5 = [(HDConceptIndexManager *)self _takeAssertionWithError:?];
  v7 = v43;
  if (v5)
  {
    goto LABEL_4;
  }

  v34 = _Block_copy(self->_unitTesting_conceptIndexManagerDidFinish);
  v5 = v34;
  if (v34)
  {
    (v34->_state)(v34, 0, 0, v7);
  }

  _HKInitializeLogging();
  v9 = HKLogConceptIndex();
  if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
  {
    localizedDescription2 = [v7 localizedDescription];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = localizedDescription2;
    _os_log_error_impl(&dword_228986000, &v9->super.super, OS_LOG_TYPE_ERROR, "%{public}@: Was not able to take out inner acessibility assertion with error %{public}@. Cannot perform concept index work.", buf, 0x16u);
  }

  LOBYTE(v14) = 0;
LABEL_17:

  return v14;
}

uint64_t __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = [WeakRetained database];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke_2;
  v30[3] = &unk_278614110;
  v30[4] = *(a1 + 32);
  v30[5] = &v31;
  v6 = [(HDHealthEntity *)HDMedicalRecordEntity performReadTransactionWithHealthDatabase:v5 error:a2 block:v30];

  if (v6)
  {
    if (v32[3])
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 48);
      v9 = *(v7 + 8);
      v10 = objc_loadWeakRetained((v7 + 16));
      v28 = *(*(a1 + 40) + 8);
      v11 = v10;
      v29 = objc_opt_self();
      v12 = 0;
      for (i = 0; ; i = (i + 1))
      {
        v35 = 0;
        Current = CFAbsoluteTimeGetCurrent();
        _HKInitializeLogging();
        v15 = HKLogConceptIndex();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (v16)
        {
          v17 = HKLogConceptIndex();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v37 = v29;
            v38 = 2048;
            v39 = i;
            _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "%{public}@: Start concept indexing batch %ld", buf, 0x16u);
          }
        }

        v18 = [v8 indexSamplesForProfile:v11 limit:v9 outIndexedSamplesCount:&v35 error:a2];
        v19 = v35;
        _HKInitializeLogging();
        v20 = HKLogConceptIndex();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

        if (v21)
        {
          v22 = HKLogConceptIndex();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = v35;
            v24 = CFAbsoluteTimeGetCurrent();
            v25 = @"Failure";
            if (v18)
            {
              v25 = @"Success";
            }

            *buf = 138544386;
            v37 = v29;
            v38 = 2112;
            v39 = v25;
            v40 = 2048;
            v41 = i;
            v42 = 2048;
            v43 = v23;
            v44 = 2048;
            v45 = v24 - Current;
            _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_INFO, "%{public}@: %@ concept indexing batch %ld (%ld) in %0.3f", buf, 0x34u);
          }
        }

        v12 += v19;
        if ((v18 & 1) == 0)
        {
          break;
        }

        if (v35 < v9)
        {
          v26 = [v11 conceptIndexManager];
          [(HDConceptIndexManager *)v26 _clearHasScheduledIndexing];

          break;
        }
      }

      *(v28 + 24) = v12;
    }

    else
    {
      [(HDConceptIndexManager *)*(a1 + 32) _clearHasScheduledIndexing];
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v31, 8);
  return v18;
}

BOOL __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke_2(uint64_t a1, void *a2, NSObject **a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 16));
  v8 = v6;
  v9 = WeakRetained;
  v10 = objc_opt_self();
  v11 = [v9 conceptIndexManager];

  v12 = [(HDConceptIndexManager *)v11 _computeIsEnabled];
  if (v12)
  {
    v13 = [v8 protectedDatabase];
    v22 = 0;
    v14 = [(HDDataEntity *)HDMedicalRecordEntity anyInDatabase:v13 predicate:0 error:&v22];
    v15 = v22;

    if (v14)
    {
      v16 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v18 = HKLogConceptIndex();
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v21 = [v15 localizedDescription];
          *buf = 138543618;
          v24 = v10;
          v25 = 2112;
          v26 = v21;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Error when determining if concept index manager should schedule work: %@", buf, 0x16u);
        }

        if (a3)
        {
          v20 = v15;
          v16 = 0;
          *a3 = v15;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v10;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Should not proceed with updating concept index because there are no medical records in the database", buf, 0xCu);
        }

        v16 = 2;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogConceptIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Should not proceed with updating concept index because index manager is not enabled", buf, 0xCu);
    }

    v16 = 2;
  }

  if (v16 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v16 != 0;
}

uint64_t __61__HDConceptIndexManager__dispatchDelayedOperationWithReason___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (_HDIsUnitTesting)
  {
    v4 = *(v2 + 88);
  }

  else
  {
    v4 = 2.0;
  }

  return [v3 executeWithDelay:v4];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available && [(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)accountExistenceNotifier:(id)notifier didChangeHealthRecordAccountExistence:(BOOL)existence
{
  if (existence && [(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  internalContentDatabaseManager = [v6 internalContentDatabaseManager];
  [internalContentDatabaseManager addContentDatabaseAvailabilityObserver:self];

  v8 = objc_loadWeakRetained(&self->_profile);
  internalContentDatabaseManager2 = [v8 internalContentDatabaseManager];
  [internalContentDatabaseManager2 addContentDatabaseAvailabilityObserver:self];

  v10 = objc_loadWeakRetained(&self->_profile);
  healthRecordsAccountExistenceNotifier = [v10 healthRecordsAccountExistenceNotifier];
  [healthRecordsAccountExistenceNotifier addAccountExistenceObserver:self];

  [(HDConceptIndexManager *)self _setObservationForDataManager:?];
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)contentDatabaseDidBecomeAvailable:(BOOL)available
{
  if (available && [(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)didImportOntologyShard
{
  v6 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogConceptIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Request reset concept index due to importing a new ontology shard", &v4, 0xCu);
  }

  [(HDConceptIndexManager *)self resetWithReindex];
}

- (void)unitTest_setHasScheduledIndexing:(BOOL)indexing
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_hasScheduledIndexing = indexing;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)unitTest_hasScheduledIndexing
{
  os_unfair_lock_lock(&self->_stateLock);
  hasScheduledIndexing = self->_hasScheduledIndexing;
  os_unfair_lock_unlock(&self->_stateLock);
  return hasScheduledIndexing;
}

@end