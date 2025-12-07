@interface HDDatabasePruningTask
+ (id)_maximumPruningAnchorWithRestrictionPredicates:(id)predicates;
- (HDDatabasePruningTask)initWithProfile:(id)profile;
- (id)_allEntityClasses;
- (id)_minimumFrozenAnchorMapForPruningDate:(id)date error:(id *)error;
- (id)_pruneObjectsForEntityClass:(void *)class frozenAnchor:(void *)anchor nowDate:(uint64_t)date limit:(uint64_t)limit error:;
- (int64_t)pruneDatabaseWithAccessibilityAssertion:(id)assertion nowDate:(id)date prunedObjectLimit:(unint64_t)limit prunedObjectTransactionLimit:(unint64_t)transactionLimit shouldDefer:(id)defer error:(id *)error;
- (uint64_t)_entityClassSupportsPruning:(uint64_t)pruning;
- (void)enqueueMaintenanceOperationOnCoordinator:(id)coordinator takeAccessibilityAssertion:(BOOL)assertion nowDate:(id)date completion:(id)completion;
- (void)enqueueMaintenanceOperationOnCoordinator:(id)coordinator takeAccessibilityAssertion:(BOOL)assertion nowDate:(id)date shouldDefer:(id)defer completion:(id)completion;
@end

@implementation HDDatabasePruningTask

- (HDDatabasePruningTask)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDDatabasePruningTask;
  v5 = [(HDDatabasePruningTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)enqueueMaintenanceOperationOnCoordinator:(id)coordinator takeAccessibilityAssertion:(BOOL)assertion nowDate:(id)date completion:(id)completion
{
  assertionCopy = assertion;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __112__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_completion___block_invoke;
  v12[3] = &unk_278614250;
  v13 = completionCopy;
  v11 = completionCopy;
  [(HDDatabasePruningTask *)self enqueueMaintenanceOperationOnCoordinator:coordinator takeAccessibilityAssertion:assertionCopy nowDate:date shouldDefer:0 completion:v12];
}

- (void)enqueueMaintenanceOperationOnCoordinator:(id)coordinator takeAccessibilityAssertion:(BOOL)assertion nowDate:(id)date shouldDefer:(id)defer completion:(id)completion
{
  assertionCopy = assertion;
  v51 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  dateCopy = date;
  deferCopy = defer;
  completionCopy = completion;
  v16 = 0x277CCA000uLL;
  if (assertionCopy)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v22 = [v17 stringWithFormat:@"%@-%@", v19, uUIDString];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v46 = 0;
    v25 = [database takeAccessibilityAssertionWithOwnerIdentifier:v22 timeout:&v46 error:600.0];
    v26 = v46;

    if (!v25)
    {
      _HKInitializeLogging();
      v27 = HKLogInfrastructure();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v49 = 2114;
        v50 = v26;
        _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: unable to take accessibility assertion: %{public}@", buf, 0x16u);
      }
    }

    v16 = 0x277CCA000;
  }

  else
  {
    v25 = 0;
  }

  v28 = *(v16 + 3240);
  v29 = objc_loadWeakRetained(&self->_profile);
  profileIdentifier = [v29 profileIdentifier];
  identifier = [profileIdentifier identifier];
  v32 = [v28 stringWithFormat:@"Database Pruning (%@)", identifier];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke;
  v41[3] = &unk_27862E520;
  v41[4] = self;
  v42 = v25;
  v43 = dateCopy;
  v44 = deferCopy;
  v45 = completionCopy;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke_2;
  v38[3] = &unk_278621600;
  v39 = v42;
  v40 = v45;
  v33 = v45;
  v34 = v42;
  v35 = deferCopy;
  v36 = dateCopy;
  v37 = [HDMaintenanceOperation maintenanceOperationWithName:v32 asynchronousBlock:v41 canceledBlock:v38];
  [coordinatorCopy enqueueMaintenanceOperation:v37];
}

void __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v10 = 0;
  if (v4)
  {
    [v4 pruneDatabaseWithAccessibilityAssertion:v5 nowDate:v6 prunedObjectLimit:20000 prunedObjectTransactionLimit:1000 shouldDefer:v7 error:&v10];
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [a1[5] invalidate];
  (*(a1[8] + 16))();

  v3[2](v3);
}

void __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
  v4[2]();
}

- (int64_t)pruneDatabaseWithAccessibilityAssertion:(id)assertion nowDate:(id)date prunedObjectLimit:(unint64_t)limit prunedObjectTransactionLimit:(unint64_t)transactionLimit shouldDefer:(id)defer error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  dateCopy = date;
  deferCopy = defer;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  databasePruningTaskShouldUseRestrictionPredicates = [features databasePruningTaskShouldUseRestrictionPredicates];
  if (!deferCopy || !databasePruningTaskShouldUseRestrictionPredicates)
  {

    goto LABEL_9;
  }

  v20 = deferCopy[2](deferCopy);

  if (!v20)
  {
LABEL_9:
    v23 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v23 setCacheScope:1];
    if (assertionCopy)
    {
      [(HDMutableDatabaseTransactionContext *)v23 addAccessibilityAssertion:assertionCopy];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __138__HDDatabasePruningTask_pruneDatabaseWithAccessibilityAssertion_nowDate_prunedObjectLimit_prunedObjectTransactionLimit_shouldDefer_error___block_invoke;
    v28[3] = &unk_27862E548;
    p_buf = &buf;
    v28[4] = self;
    v29 = dateCopy;
    transactionLimitCopy = transactionLimit;
    v30 = deferCopy;
    limitCopy = limit;
    [database performWithTransactionContext:v23 error:error block:v28];

    v24 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v21 = HKLogInfrastructure();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);

  if (!v22)
  {
    v24 = 2;
    goto LABEL_13;
  }

  v23 = HKLogInfrastructure();
  if (os_log_type_enabled(&v23->super.super, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_228986000, &v23->super.super, OS_LOG_TYPE_INFO, "%{public}@: Pruning activity was deferred.", &buf, 0xCu);
  }

  v24 = 2;
LABEL_12:

LABEL_13:
  return v24;
}

BOOL __138__HDDatabasePruningTask_pruneDatabaseWithAccessibilityAssertion_nowDate_prunedObjectLimit_prunedObjectTransactionLimit_shouldDefer_error___block_invoke(void *a1, void *a2)
{
  v115 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 features];
  v4 = [v3 databasePruningTaskShouldUseRestrictionPredicates];

  v6 = a1[4];
  v5 = a1[5];
  if (v4)
  {
    v74 = a1[8];
    v7 = a1[6];
    v8 = v5;
    v9 = v7;
    if (!v6)
    {
      v71 = 0;
      goto LABEL_79;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v11 = v6;
    WeakRetained = objc_loadWeakRetained((v6 + 8));
    v85 = 0;
    obj = [HDSyncStoreEntity activeStoresForRestrictionPredictePruningInProfile:WeakRetained referenceDate:v8 error:&v85];
    v77 = v85;

    if (v77)
    {
      if (a2)
      {
        v13 = v77;
        *a2 = v77;
      }

      else
      {
        _HKLogDroppedError();
      }

      v71 = 1;
      goto LABEL_78;
    }

    v35 = obj;
    *&v110 = 0;
    *(&v110 + 1) = &v110;
    v111 = 0x3032000000;
    v112 = __Block_byref_object_copy__196;
    v113 = __Block_byref_object_dispose__196;
    v114 = 0;
    v86 = MEMORY[0x277D85DD0];
    v87 = 3221225472;
    v88 = __56__HDDatabasePruningTask__instantiateActiveStores_error___block_invoke;
    v89 = &unk_27861EC68;
    v90 = v6;
    v91 = &v110;
    v36 = [v35 hk_map:&v86];
    v37 = v36;
    v38 = *(*(&v110 + 1) + 40);
    if (v38)
    {

      v67 = 0;
    }

    else
    {
      v67 = v36;
    }

    _Block_object_dispose(&v110, 8);
    v70 = v38;
    if (v38)
    {
      if (a2)
      {
        v39 = v70;
        *a2 = v70;
      }

      else
      {
        _HKLogDroppedError();
      }

      v71 = 1;
LABEL_77:

LABEL_78:
LABEL_79:

      *(*(a1[7] + 8) + 24) = v71;
      return *(*(a1[7] + 8) + 24) != 1;
    }

    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v80[3] = 0;
    v40 = [(HDDatabasePruningTask *)v11 _allEntityClasses];
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v66 = v40;
    v63 = [v66 countByEnumeratingWithState:&v98 objects:&v110 count:16];
    if (!v63)
    {
LABEL_66:

      _HKInitializeLogging();
      v51 = HKLogInfrastructure();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v82[3];
        v53 = CFAbsoluteTimeGetCurrent();
        *v106 = 138543874;
        *&v106[4] = v11;
        *&v106[12] = 2048;
        *&v106[14] = v52;
        *&v106[22] = 2048;
        v107 = v53 - Current;
        _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished pruning %ld objects in %0.2lfs", v106, 0x20u);
      }

      v71 = 0;
LABEL_76:

      _Block_object_dispose(v80, 8);
      _Block_object_dispose(&v81, 8);
      goto LABEL_77;
    }

    v64 = *v99;
    v62 = &v108;
    v61 = &buf[16];
    v71 = 1;
LABEL_46:
    v65 = 0;
    while (1)
    {
      if (*v99 != v64)
      {
        objc_enumerationMutation(v66);
      }

      v41 = *(*(&v98 + 1) + 8 * v65);
      if ([HDDatabasePruningTask _entityClassSupportsPruning:v41]& 1) != 0 || (objc_opt_respondsToSelector())
      {
        break;
      }

LABEL_64:
      if (++v65 == v63)
      {
        v63 = [v66 countByEnumeratingWithState:&v98 objects:&v110 count:16];
        if (v63)
        {
          goto LABEL_46;
        }

        goto LABEL_66;
      }
    }

    v42 = v67;
    if ([v41 conformsToProtocol:{&unk_283CCCD88, v61, v62}])
    {
      *v106 = 0;
      *&v106[8] = v106;
      *&v106[16] = 0x3032000000;
      v107 = COERCE_DOUBLE(__Block_byref_object_copy__196);
      v108 = __Block_byref_object_dispose__196;
      v109 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __81__HDDatabasePruningTask__pruningRestrictionPredicatesFromStores_forEntity_error___block_invoke;
      v103 = COERCE_DOUBLE(&unk_27862E598);
      v104 = v106;
      v105 = v41;
      v43 = [v42 hk_map:buf];
      v44 = *(*&v106[8] + 40);
      if (v44)
      {
        v45 = v44;
        v46 = v45;

        _Block_object_dispose(v106, 8);
        v47 = 0;
LABEL_57:

        v48 = v45;
        if (v48)
        {
          v58 = v48;
          v59 = v58;
          if (a2)
          {
            v60 = v58;
            *a2 = v59;
          }

          else
          {
            _HKLogDroppedError();
          }

          v71 = 1;
        }

        else
        {
          *v106 = 0;
          *&v106[8] = v106;
          *&v106[16] = 0x2020000000;
          LOBYTE(v107) = 0;
          while (!v9 || !v9[2](v9))
          {
            v86 = MEMORY[0x277D85DD0];
            v87 = 3221225472;
            v88 = __124__HDDatabasePruningTask__pruneDatabaseUsingRestrictionPredicatesWithNowDate_prunedObjectTransactionLimit_shouldDefer_error___block_invoke;
            v89 = &unk_27862E5C0;
            v93 = v80;
            v90 = v11;
            v96 = v74;
            v97 = v41;
            v49 = v47;
            v91 = v49;
            v92 = v8;
            v94 = v106;
            v95 = &v81;
            v50 = HKWithAutoreleasePool();

            if ((v50 & 1) == 0)
            {
              goto LABEL_74;
            }

            if ((*(*&v106[8] + 24) & 1) == 0)
            {
              _Block_object_dispose(v106, 8);

              goto LABEL_64;
            }
          }

          _HKInitializeLogging();
          v54 = HKLogInfrastructure();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = v82[3];
            v56 = CFAbsoluteTimeGetCurrent();
            *buf = 138543874;
            *&buf[4] = v11;
            *&buf[12] = 2048;
            *&buf[14] = v55;
            *&buf[22] = 2048;
            v103 = v56 - Current;
            _os_log_impl(&dword_228986000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: Pruning activity was deferred after pruning %ld objects in %0.2lfs", buf, 0x20u);
          }

          v71 = 2;
LABEL_74:
          _Block_object_dispose(v106, 8);
        }

        v51 = v66;
        goto LABEL_76;
      }

      _Block_object_dispose(v106, 8);
    }

    else
    {
      v43 = 0;
    }

    v43 = v43;
    v45 = 0;
    v47 = v43;
    goto LABEL_57;
  }

  v14 = a1[4];
  v15 = a1[8];
  v16 = a1[9];
  v17 = v5;
  v78 = v17;
  if (v6)
  {
    v18 = v17;
    v19 = CFAbsoluteTimeGetCurrent();
    v75 = [v6 _minimumFrozenAnchorMapForPruningDate:v18 error:a2];
    if (v75)
    {
      *v106 = 0;
      *&v106[8] = v106;
      *&v106[16] = 0x2020000000;
      v107 = 0.0;
      [(HDDatabasePruningTask *)v14 _allEntityClasses];
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      obja = v99 = 0u;
      v20 = [obja countByEnumeratingWithState:&v98 objects:&v110 count:16];
      if (v20)
      {
        v21 = *v99;
        v68 = *v99;
        while (2)
        {
          v22 = 0;
          v69 = v20;
          do
          {
            if (*v99 != v21)
            {
              objc_enumerationMutation(obja);
            }

            v23 = *(*(&v98 + 1) + 8 * v22);
            if (([HDDatabasePruningTask _entityClassSupportsPruning:v23]& 1) != 0)
            {
              if ([v23 conformsToProtocol:&unk_283CCCD88])
              {
                v24 = [v23 syncEntityIdentifier];
                v25 = [v75 anchorIfPresentForSyncEntityIdentifier:v24];
              }

              else
              {
                v25 = 0;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              LOBYTE(v103) = 0;
              v26 = MEMORY[0x277D85DD0];
              while (1)
              {
                v86 = v26;
                v87 = 3221225472;
                v88 = __118__HDDatabasePruningTask__pruneDatabaseUsingMinAnchorWithNowDate_prunedObjectLimit_prunedObjectTransactionLimit_error___block_invoke;
                v89 = &unk_27862E570;
                v95 = v16;
                v96 = v15;
                v93 = v106;
                v90 = v6;
                v97 = v23;
                v27 = v25;
                v91 = v27;
                v92 = v78;
                v94 = buf;
                v28 = HKWithAutoreleasePool();

                if ((v28 & 1) == 0)
                {
                  break;
                }

                if (*(*&buf[8] + 24) != 1 || *(*&v106[8] + 24) >= v16)
                {
                  _Block_object_dispose(buf, 8);

                  v21 = v68;
                  v20 = v69;
                  goto LABEL_22;
                }
              }

              _Block_object_dispose(buf, 8);

              v6 = 0;
              v29 = obja;
              goto LABEL_28;
            }

LABEL_22:
            ++v22;
          }

          while (v22 != v20);
          v20 = [obja countByEnumeratingWithState:&v98 objects:&v110 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      _HKInitializeLogging();
      v29 = HKLogInfrastructure();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*&v106[8] + 24);
        v31 = CFAbsoluteTimeGetCurrent();
        *buf = 138543874;
        *&buf[4] = v6;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        *&buf[22] = 2048;
        v103 = v31 - v19;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished pruning %ld objects in %0.2lfs", buf, 0x20u);
      }

      v6 = 1;
LABEL_28:

      _Block_object_dispose(v106, 8);
    }

    else
    {
      _HKInitializeLogging();
      v32 = HKLogInfrastructure();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

      if (v33)
      {
        v34 = HKLogInfrastructure();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          LODWORD(v110) = 138543362;
          *(&v110 + 4) = v6;
          _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_INFO, "%{public}@: Failed to determine minimum frozen anchors before pruning", &v110, 0xCu);
        }
      }

      v6 = 0;
    }
  }

  *(*(a1[7] + 8) + 24) = v6 ^ 1;
  return v6;
}

- (id)_allEntityClasses
{
  v31 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    v5 = [HDDatabase allEntityClassesWithBehavior:behavior];

    v6 = objc_loadWeakRetained((self + 8));
    syncEngine = [v6 syncEngine];
    allOrderedSyncEntities = [syncEngine allOrderedSyncEntities];
    v9 = [v5 arrayByAddingObjectsFromArray:allOrderedSyncEntities];

    v10 = objc_loadWeakRetained((self + 8));
    daemon2 = [v10 daemon];
    pluginManager = [daemon2 pluginManager];
    v13 = [pluginManager pluginsConformingToProtocol:&unk_283CCAD48];
    allValues = [v13 allValues];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = allValues;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v22 = [v21 databaseEntitiesForProtectionClass:{1, v26}];
          [v15 addObjectsFromArray:v22];

          v23 = [v21 databaseEntitiesForProtectionClass:2];
          [v15 addObjectsFromArray:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    v24 = [v9 arrayByAddingObjectsFromArray:v15];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (uint64_t)_entityClassSupportsPruning:(uint64_t)pruning
{
  if (objc_opt_respondsToSelector())
  {
    v1 = 1;
  }

  else
  {
    v1 = objc_opt_respondsToSelector();
  }

  return v1 & 1;
}

BOOL __118__HDDatabasePruningTask__pruneDatabaseUsingMinAnchorWithNowDate_prunedObjectLimit_prunedObjectTransactionLimit_error___block_invoke(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = a1[6];
  v6 = a1[9];
  if ((v6 - *(*(a1[7] + 8) + 24)) >= a1[10])
  {
    v7 = a1[10];
  }

  else
  {
    v7 = v6 - *(*(a1[7] + 8) + 24);
  }

  v8 = a1[11];
  v9 = a1[4];
  v10 = a1[5];
  v25 = 0;
  v11 = [(HDDatabasePruningTask *)v9 _pruneObjectsForEntityClass:v8 frozenAnchor:v10 nowDate:v5 limit:v7 error:&v25];
  v12 = v25;
  _HKInitializeLogging();
  v13 = HKLogInfrastructure();
  v14 = v13;
  if (v11)
  {
    v15 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v15)
    {
      v16 = HKLogInfrastructure();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = a1[4];
        v18 = a1[11];
        v19 = CFAbsoluteTimeGetCurrent();
        *buf = 138544130;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v11;
        v32 = 2048;
        v33 = v19 - Current;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ pruned %{public}@ objects in %0.2lfs", buf, 0x2Au);
      }
    }

    *(*(a1[8] + 8) + 24) = [v11 integerValue] == v7;
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      usleep(0x2710u);
    }

    if ([v11 integerValue] >= 1)
    {
      *(*(a1[7] + 8) + 24) += [v11 integerValue];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = a1[4];
      v24 = a1[11];
      *buf = 138543874;
      v27 = v23;
      v28 = 2114;
      v29 = v24;
      v30 = 2114;
      v31 = v12;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Pruning failed for %{public}@: %{public}@", buf, 0x20u);
    }

    v20 = v12;
    if (v20)
    {
      if (a2)
      {
        v21 = v20;
        *a2 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v11 != 0;
}

- (id)_pruneObjectsForEntityClass:(void *)class frozenAnchor:(void *)anchor nowDate:(uint64_t)date limit:(uint64_t)limit error:
{
  classCopy = class;
  anchorCopy = anchor;
  if (self)
  {
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      v14 = [a2 pruneSyncedObjectsThroughAnchor:classCopy limit:date nowDate:anchorCopy profile:WeakRetained error:limit];
LABEL_6:
      v15 = v14;

      goto LABEL_8;
    }

    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      v14 = [a2 pruneWithProfile:WeakRetained nowDate:anchorCopy limit:date error:limit];
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

id __56__HDDatabasePruningTask__instantiateActiveStores_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40) && (v7 = HDSyncStoreClassForSyncStoreType([v3 type])) != 0 && objc_msgSend(v7, "providesSamplePruningRestrictionPredicate"))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v9 = *(*(a1 + 40) + 8);
    obj = *(v9 + 40);
    v10 = HDInstantiateSyncStore(WeakRetained, v4, &obj);
    objc_storeStrong((v9 + 40), obj);

    if (v10 && [v10 providesSamplePruningRestrictionPredicate])
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __81__HDDatabasePruningTask__pruningRestrictionPredicatesFromStores_forEntity_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 40);
    obj = 0;
    v5 = [a2 samplePruningRestrictionPredicateForSyncEntity:v6 error:&obj];
    objc_storeStrong(v3, obj);
  }

  return v5;
}

BOOL __124__HDDatabasePruningTask__pruneDatabaseUsingRestrictionPredicatesWithNowDate_prunedObjectTransactionLimit_shouldDefer_error___block_invoke(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = a1[6];
  v6 = a1[11];
  v7 = a1[10] - *(*(a1[7] + 8) + 24);
  v9 = a1[4];
  v8 = a1[5];
  v27 = 0;
  v10 = v8;
  v11 = v5;
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((v9 + 8));
      [v6 pruneSyncedObjectsWithRestrictionPredicates:v10 limit:v7 nowDate:v11 profile:WeakRetained error:&v27];
    }

    else
    {
      WeakRetained = [objc_opt_class() _maximumPruningAnchorWithRestrictionPredicates:v10];
      [(HDDatabasePruningTask *)v9 _pruneObjectsForEntityClass:v6 frozenAnchor:WeakRetained nowDate:v11 limit:v7 error:&v27];
    }
    v13 = ;
  }

  else
  {
    v13 = 0;
  }

  v14 = v27;
  _HKInitializeLogging();
  v15 = HKLogInfrastructure();
  v16 = v15;
  if (v13)
  {
    v17 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v18 = HKLogInfrastructure();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = a1[4];
        v20 = a1[11];
        v21 = CFAbsoluteTimeGetCurrent();
        *buf = 138544130;
        v29 = v19;
        v30 = 2114;
        v31 = v20;
        v32 = 2114;
        v33 = v13;
        v34 = 2048;
        v35 = v21 - Current;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ pruned %{public}@ objects in %0.2lfs", buf, 0x2Au);
      }
    }

    *(*(a1[8] + 8) + 24) = [v13 integerValue] == v7;
    *(*(a1[9] + 8) + 24) += [v13 integerValue];
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      *(*(a1[7] + 8) + 24) = 0;
      usleep(0x2710u);
    }

    else
    {
      *(*(a1[7] + 8) + 24) += [v13 integerValue];
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      v26 = a1[11];
      *buf = 138543874;
      v29 = v25;
      v30 = 2114;
      v31 = v26;
      v32 = 2114;
      v33 = v14;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Pruning failed for %{public}@: %{public}@", buf, 0x20u);
    }

    v22 = v14;
    if (v22)
    {
      if (a2)
      {
        v23 = v22;
        *a2 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v13 != 0;
}

- (id)_minimumFrozenAnchorMapForPruningDate:(id)date error:(id *)error
{
  v6 = [date dateByAddingTimeInterval:-2419200.0];
  v7 = objc_alloc_init(HDSyncAnchorMap);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LODWORD(error) = [HDSyncAnchorEntity getMinimumSyncAnchorsOfType:2 anchorMap:v7 updatedSince:v6 profile:WeakRetained error:error];

  if (error)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (id)_maximumPruningAnchorWithRestrictionPredicates:(id)predicates
{
  v22 = *MEMORY[0x277D85DE8];
  predicatesCopy = predicates;
  v4 = predicatesCopy;
  if (predicatesCopy && [predicatesCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v9 = &unk_283CB4068;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          maximumAnchor = [v11 maximumAnchor];
          longLongValue = [maximumAnchor longLongValue];
          longLongValue2 = [v9 longLongValue];

          if (longLongValue < longLongValue2)
          {
            maximumAnchor2 = [v11 maximumAnchor];

            v9 = maximumAnchor2;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = &unk_283CB4068;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end