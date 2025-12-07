@interface HDUserDomainConceptProcessingManager
+ (id)_maximumSyncAnchorForUserDomainConceptsWithTransaction:(void *)transaction error:;
- (HDProfile)profile;
- (HDUserDomainConceptProcessingManager)init;
- (HDUserDomainConceptProcessingManager)initWithProfile:(id)profile;
- (uint64_t)_processUserDomainConceptsWithReason:(void *)reason accessibilityAssertion:;
- (void)_scheduleProcessingOperationIfEnabledWithReason:(uint64_t)reason;
- (void)_scheduleProcessingOperationWithReason:(uint64_t)reason;
- (void)contentDatabaseDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)setUnitTesting_userDomainConceptProcessingManagerDidFinishProcessing:(id)processing;
@end

@implementation HDUserDomainConceptProcessingManager

- (HDUserDomainConceptProcessingManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDUserDomainConceptProcessingManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDUserDomainConceptProcessingManager;
  v5 = [(HDUserDomainConceptProcessingManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_hasScheduledProcessing = 0;
    *&v6->_batchSize = vdupq_n_s64(0x32uLL);
    databaseAssertion = v6->_databaseAssertion;
    v6->_databaseAssertion = 0;

    atomic_store(0, &v6->_isDisabledForHealthDaemonLifetime);
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  internalContentDatabaseManager = [readyCopy internalContentDatabaseManager];
  [internalContentDatabaseManager addContentDatabaseAvailabilityObserver:self];

  internalContentDatabaseManager2 = [readyCopy internalContentDatabaseManager];
  [internalContentDatabaseManager2 addOntologyShardImportObserver:self];

  userDomainConceptManager = [readyCopy userDomainConceptManager];
  [userDomainConceptManager addUserDomainConceptObserver:self queue:0];

  internalContentDatabaseManager3 = [readyCopy internalContentDatabaseManager];

  LODWORD(readyCopy) = [internalContentDatabaseManager3 contentDatabaseIsAvailable];
  if (readyCopy)
  {

    [(HDUserDomainConceptProcessingManager *)self contentDatabaseDidBecomeAvailable:1];
  }
}

- (void)contentDatabaseDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    [(HDUserDomainConceptProcessingManager *)self _scheduleProcessingOperationIfEnabledWithReason:?];
  }
}

- (void)_scheduleProcessingOperationIfEnabledWithReason:(uint64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = a2;
  if (reason)
  {
    WeakRetained = objc_loadWeakRetained((reason + 64));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    healthAppNotInstalled = [behavior healthAppNotInstalled];

    v7 = atomic_load((reason + 56));
    v8 = objc_loadWeakRetained((reason + 64));
    daemon2 = [v8 daemon];
    behavior2 = [daemon2 behavior];
    if ([behavior2 performsAutomaticUserDomainConceptProcessing] && ((*(reason + 57) | healthAppNotInstalled) & 1) == 0)
    {

      if ((v7 & 1) == 0)
      {
        [(HDUserDomainConceptProcessingManager *)reason _scheduleProcessingOperationWithReason:v19];
        goto LABEL_8;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HKStringFromBool();
      v13 = objc_loadWeakRetained((reason + 64));
      daemon3 = [v13 daemon];
      behavior3 = [daemon3 behavior];
      [behavior3 performsAutomaticUserDomainConceptProcessing];
      v16 = HKStringFromBool();
      v17 = HKStringFromBool();
      v18 = HKStringFromBool();
      *buf = 138544386;
      reasonCopy = reason;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot automatically schedule UDC processing. Health App Installed %{public}@, performsAutomaticUserDomainConceptProcessing %{public}@, ignoresAutomaticProcessingTriggers %{public}@, _isDisabledForHealthDaemonLifetime %{public}@", buf, 0x34u);
    }
  }

LABEL_8:
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  databaseAssertion = self->_databaseAssertion;
  if (databaseAssertion)
  {
    [(HDAssertion *)databaseAssertion invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = HDUserDomainConceptProcessingManager;
  [(HDUserDomainConceptProcessingManager *)&v4 dealloc];
}

- (void)_scheduleProcessingOperationWithReason:(uint64_t)reason
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (reason)
  {
    os_unfair_lock_lock((reason + 8));
    if (*(reason + 32) == 1)
    {
      _HKInitializeLogging();
      v4 = HKLogHealthOntology();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

      if (v5)
      {
        v6 = HKLogHealthOntology();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          CFAbsoluteTimeGetCurrent();
          v7 = HKDiagnosticStringFromDuration();
          *buf = 138543618;
          reasonCopy3 = reason;
          v37 = 2114;
          v38 = v7;
          _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: Already scheduled processing %{public}@ ago", buf, 0x16u);
        }
      }

      os_unfair_lock_unlock((reason + 8));
    }

    else
    {
      *(reason + 32) = 1;
      *(reason + 40) = CFAbsoluteTimeGetCurrent();
      os_unfair_lock_unlock((reason + 8));
      os_unfair_lock_lock((reason + 8));
      v8 = *(reason + 48);
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v15 = [v10 stringWithFormat:@"%@-%@", v12, uUIDString];

        WeakRetained = objc_loadWeakRetained((reason + 64));
        database = [WeakRetained database];
        v34 = 0;
        v18 = [database takeAccessibilityAssertionWithOwnerIdentifier:v15 timeout:&v34 error:300.0];
        v9 = v34;
        v19 = *(reason + 48);
        *(reason + 48) = v18;

        v8 = *(reason + 48);
      }

      v20 = v8;
      os_unfair_lock_unlock((reason + 8));
      if (v20)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __79__HDUserDomainConceptProcessingManager__scheduleProcessingOperationWithReason___block_invoke;
        v31[3] = &unk_27861F330;
        v31[4] = reason;
        v21 = v3;
        v32 = v21;
        v33 = v20;
        v22 = [HDMaintenanceOperation maintenanceOperationWithName:v21 asynchronousBlock:v31];
        _HKInitializeLogging();
        v23 = HKLogHealthOntology();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          reasonCopy3 = reason;
          v37 = 2114;
          v38 = v21;
          _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling User Domain Concept processing on maintenance coordinator with reason: %{public}@", buf, 0x16u);
        }

        v24 = objc_loadWeakRetained((reason + 64));
        daemon = [v24 daemon];
        maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
        [maintenanceWorkCoordinator enqueueMaintenanceOperation:v22];
      }

      else
      {
        _HKInitializeLogging();
        v27 = HKLogHealthOntology();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);

        if (v28)
        {
          v29 = HKLogHealthOntology();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            localizedDescription = [v9 localizedDescription];
            *buf = 138543618;
            reasonCopy3 = reason;
            v37 = 2114;
            v38 = localizedDescription;
            _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_INFO, "%{public}@: unable to take accessibility assertion with error: %{public}@.", buf, 0x16u);
          }
        }

        os_unfair_lock_lock((reason + 8));
        *(reason + 32) = 0;
        os_unfair_lock_unlock((reason + 8));
      }
    }
  }
}

void __79__HDUserDomainConceptProcessingManager__scheduleProcessingOperationWithReason___block_invoke(void *a1, void *a2)
{
  v7 = a2;
  v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:a1[4] activityName:@"processing"];
  if (([(HDUserDomainConceptProcessingManager *)a1[4] _processUserDomainConceptsWithReason:a1[6] accessibilityAssertion:?]& 1) == 0)
  {
    v4 = a1[4];
    if (v4)
    {
      os_unfair_lock_lock((v4 + 8));
      *(v4 + 32) = 0;
      os_unfair_lock_unlock((v4 + 8));
    }
  }

  v7[2]();
  os_unfair_lock_lock((a1[4] + 8));
  [*(a1[4] + 48) invalidate];
  v5 = a1[4];
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;

  os_unfair_lock_unlock((a1[4] + 8));
  [v3 invalidate];
}

- (uint64_t)_processUserDomainConceptsWithReason:(void *)reason accessibilityAssertion:
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  reasonCopy = reason;
  if (self)
  {
    v7 = atomic_load((self + 56));
    if (v7)
    {
      _HKInitializeLogging();
      v8 = HKLogHealthOntology();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: User Domain Concept Processing has been disabled for the reamining lifecycle of healthd, since we detected a non-terminating condition while processing in a previous run.", buf, 0xCu);
      }

      v9 = _Block_copy(*(self + 72));
      v10 = v9;
      if (v9)
      {
        (v9->super._cacheScope)(v9, 1, 0, 0);
      }

      v11 = 1;
    }

    else
    {
      v10 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      [(HDMutableDatabaseTransactionContext *)v10 setCacheScope:1];
      if (reasonCopy)
      {
        [(HDMutableDatabaseTransactionContext *)v10 addAccessibilityAssertion:reasonCopy];
      }

      _HKInitializeLogging();
      v12 = HKLogHealthOntology();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v47 = 2114;
        v48 = v5;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning processing of user domain concepts with reason: %{public}@.", buf, 0x16u);
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      Current = CFAbsoluteTimeGetCurrent();
      profile = [self profile];
      userDomainConceptManager = [profile userDomainConceptManager];
      [userDomainConceptManager openObserverTransaction];

      WeakRetained = objc_loadWeakRetained((self + 64));
      database = [WeakRetained database];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __100__HDUserDomainConceptProcessingManager__processUserDomainConceptsWithReason_accessibilityAssertion___block_invoke;
      v35[3] = &unk_27861F358;
      v35[4] = self;
      v35[5] = &v41;
      v35[6] = &v37;
      v36 = 0;
      v11 = [database performWithTransactionContext:v10 error:&v36 block:v35];
      v18 = v36;

      if (*(v38 + 24) == 1)
      {
        _HKInitializeLogging();
        v19 = HKLogHealthOntology();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy4 = self;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: While performing UDC procesing, detected an infinite processing loop. Disabling UDC Processing for the remainder of healthd's lifecycle.", buf, 0xCu);
        }

        atomic_store(1u, (self + 56));
      }

      v20 = v42[3];
      v21 = *(self + 16);
      if (v20 % v21 <= 0)
      {
        v22 = v20 / v21;
      }

      else
      {
        v22 = v20 / v21 + 1;
      }

      _HKInitializeLogging();
      v23 = HKLogHealthOntology();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v34 = reasonCopy;
        v24 = v5;
        if (v11)
        {
          v25 = @"Success";
        }

        else
        {
          v25 = @"Failure";
        }

        v26 = v42[3];
        v27 = CFAbsoluteTimeGetCurrent();
        localizedDescription = [v18 localizedDescription];
        *buf = 138544898;
        selfCopy4 = self;
        v47 = 2114;
        v48 = v25;
        v49 = 2048;
        v50 = v26;
        v51 = 2048;
        v52 = v22;
        v53 = 2114;
        v5 = v24;
        v54 = v24;
        v55 = 2048;
        v56 = v27 - Current;
        v57 = 2114;
        v58 = localizedDescription;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ processing %ld user domain concepts in %ld batches with reason %{public}@, duration: %.3f seconds, Error: %{public}@", buf, 0x48u);

        reasonCopy = v34;
      }

      profile2 = [self profile];
      userDomainConceptManager2 = [profile2 userDomainConceptManager];
      [userDomainConceptManager2 closeObserverTransaction];

      v31 = _Block_copy(*(self + 72));
      v32 = v31;
      if (v31)
      {
        (*(v31 + 2))(v31, v11, v42[3], v18);
      }

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __100__HDUserDomainConceptProcessingManager__processUserDomainConceptsWithReason_accessibilityAssertion___block_invoke(void *a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v27 = *(a1[6] + 8);
  v28 = *(a1[5] + 8);
  v6 = objc_loadWeakRetained((v3 + 64));
  v31 = objc_opt_self();
  v32 = v6;
  v7 = [v6 userDomainConceptManager];
  v30 = [v7 keyValueDomain];

  v8 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = -1;
  while (1)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v10 = [v32 database];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __169__HDUserDomainConceptProcessingManager__performUserDomainConceptProcessingOperationWithBatchSize_batchLimit_outNumberOfConceptsProcessed_outDidDetectLoop_profile_error___block_invoke;
    v33[3] = &unk_27861F380;
    v36 = &v46;
    v11 = v30;
    v39 = v31;
    v34 = v11;
    v37 = v45;
    v12 = v32;
    v40 = v5;
    v35 = v12;
    v38 = &v41;
    v13 = [(HDHealthEntity *)HDUserDomainConceptEntity performWriteTransactionWithHealthDatabase:v10 error:a2 block:v33];

    if (!v13)
    {
      *(v28 + 24) = v8;

      _Block_object_dispose(&v41, 8);
      goto LABEL_13;
    }

    v14 = v42[3];
    _HKInitializeLogging();
    v15 = HKLogHealthOntology();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v8;
      v16 = v13;
      v17 = v11;
      v18 = v12;
      v19 = v4;
      v20 = a2;
      v21 = v47[3];
      v22 = v42[3];
      v23 = CFAbsoluteTimeGetCurrent();
      *buf = 138544386;
      v51 = v31;
      v52 = 2048;
      v53 = v21;
      v54 = 2048;
      v55 = v22;
      v56 = 2048;
      v57 = v5;
      v58 = 2048;
      v59 = v23 - Current;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished batch %ld of size %ld / %lld. Duration: %.3f seconds", buf, 0x34u);
      a2 = v20;
      v4 = v19;
      v12 = v18;
      v11 = v17;
      v13 = v16;
      v8 = v29;
    }

    v8 += v14;
    v24 = v47[3] >= v4 && v14 >= v5;
    if (v24)
    {
      break;
    }

    _Block_object_dispose(&v41, 8);
    if (v14 < v5)
    {
      goto LABEL_12;
    }
  }

  _HKInitializeLogging();
  v25 = HKLogHealthOntology();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v51 = v31;
    _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "%{public}@: Reached batch limit during UDC Processing. This usually happens during an infinite processing loop.", buf, 0xCu);
  }

  _Block_object_dispose(&v41, 8);
LABEL_12:
  *(v27 + 24) = v24;
  *(v28 + 24) = v8;
LABEL_13:
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v46, 8);

  return v13;
}

uint64_t __169__HDUserDomainConceptProcessingManager__performUserDomainConceptProcessingOperationWithBatchSize_batchLimit_outNumberOfConceptsProcessed_outDidDetectLoop_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v8 = [HDUserDomainConceptProcessingState fetchFromKeyValueDomain:*(a1 + 32) error:a3];
  if (v8)
  {
    v9 = v8;
    _HKInitializeLogging();
    v10 = HKLogHealthOntology();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      v12 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 138543874;
      *&buf[4] = v11;
      v33 = 2048;
      v34 = v12;
      v35 = 2114;
      v36 = v9;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Start batch %ld, current state %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = [v9 anchor];
    v13 = [*(a1 + 40) internalContentDatabaseManager];
    v14 = [v13 ontologyContentVersionWithError:a3];

    if (!v14)
    {
      v18 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v15 = [(HDUserDomainConceptProcessingManager *)*(a1 + 72) _maximumSyncAnchorForUserDomainConceptsWithTransaction:v7 error:a3];
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = [v9 ontologyVersion];
    if (v14 != v16)
    {
      v17 = [v9 ontologyVersion];
      if (!v17)
      {
        goto LABEL_16;
      }

      v3 = v17;
      v4 = [v9 ontologyVersion];
      if (![v14 isEqual:v4])
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (*(*(*(a1 + 56) + 8) + 24) != -1 && [v9 maximumPropertyType] >= 184000)
    {
      v29 = [v15 longLongValue];
      v30 = *(*(*(a1 + 56) + 8) + 24);
      v31 = v29;
      if (v14 != v16)
      {
      }

      if (v31 >= v30)
      {
LABEL_18:
        *buf = *(*(*(a1 + 56) + 8) + 24);
        if ([HDUserDomainConceptProcessor processUserDomainConceptsAfter:"processUserDomainConceptsAfter:transactionLimit:outAnchor:outProcessedConceptsCount:profile:transaction:error:" transactionLimit:a3 outAnchor:? outProcessedConceptsCount:? profile:? transaction:? error:?])
        {
          if (*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 80))
          {
            v28 = [v9 copyByUpdatingAnchor:*buf];

            v18 = [v28 persistInKeyValueDomain:*(a1 + 32) error:a3];
            v9 = v28;
          }

          else
          {
            v20 = [*(a1 + 40) userDomainConceptManager];
            v21 = [v20 processingManager];
            v22 = *(a1 + 32);
            v9 = v9;
            v23 = v22;
            if (v21)
            {
              v24 = v7;
              os_unfair_lock_lock((v21 + 8));
              *(v21 + 32) = 0;
              os_unfair_lock_unlock((v21 + 8));
              v25 = [HDUserDomainConceptProcessingManager _maximumSyncAnchorForUserDomainConceptsWithTransaction:v24 error:a3];

              if (v25)
              {
                v26 = [v9 copyByUpdatingAnchor:{objc_msgSend(v25, "longLongValue")}];
                v18 = [v26 persistInKeyValueDomain:v23 error:a3];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          goto LABEL_24;
        }

LABEL_23:
        v18 = 0;
LABEL_24:

        goto LABEL_25;
      }

LABEL_17:
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v19 = [[HDUserDomainConceptProcessingState alloc] initWithAnchor:0 ontologyVersion:v14 maximumPropertyType:184000];

      v9 = v19;
      goto LABEL_18;
    }

    if (v14 != v16)
    {
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  v18 = 0;
LABEL_26:

  return v18;
}

+ (id)_maximumSyncAnchorForUserDomainConceptsWithTransaction:(void *)transaction error:
{
  v4 = a2;
  objc_opt_self();
  protectedDatabase = [v4 protectedDatabase];

  v10 = 0;
  v6 = [(HDSQLiteEntity *)HDUserDomainConceptEntity maxValueForProperty:@"sync_anchor" predicate:0 database:protectedDatabase error:&v10];
  v7 = v10;

  if (!v6)
  {
    if (v7)
    {
      if (transaction)
      {
        v9 = v7;
        v6 = 0;
        *transaction = v7;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = &unk_283CB1FE0;
    }
  }

  return v6;
}

- (void)setUnitTesting_userDomainConceptProcessingManagerDidFinishProcessing:(id)processing
{
  v4 = objc_msgSend_copy(processing, a2);
  unitTesting_userDomainConceptProcessingManagerDidFinishProcessing = self->_unitTesting_userDomainConceptProcessingManagerDidFinishProcessing;
  self->_unitTesting_userDomainConceptProcessingManagerDidFinishProcessing = v4;

  MEMORY[0x2821F96F8](v4, unitTesting_userDomainConceptProcessingManagerDidFinishProcessing);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end