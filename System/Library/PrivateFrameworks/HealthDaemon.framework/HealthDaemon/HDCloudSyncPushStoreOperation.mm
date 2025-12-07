@interface HDCloudSyncPushStoreOperation
+ (id)operationTagDependencies;
- (HDCloudSyncCompoundOperation)_operationForNewSequenceRecord:(void *)record replacingSequence:(uint64_t)sequence isRebaseline:;
- (HDCloudSyncPushSequenceOperation)_operationForExistingSequenceRecord:(void *)record includedChildSyncIdentites:;
- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target;
- (HDCloudSyncTarget)target;
- (id)_validatedSequenceRecordOperationsForPushWithError:(uint64_t)error;
- (id)analyticsDictionary;
- (void)_recordCurrentSequenceEpochs;
- (void)_recordExcludedSyncIdentitiesFromPushSequenceOperations:(void *)operations;
- (void)main;
- (void)setTarget:(id)target;
@end

@implementation HDCloudSyncPushStoreOperation

+ (id)operationTagDependencies
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v4[1] = @"compute-pull-targets";
  v4[2] = @"update-anchors";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target
{
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPushStoreOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_target, target);
    v11->_lock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (HDCloudSyncTarget)target
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_target;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTarget:(id)target
{
  targetCopy = target;
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncPushStoreOperation.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_copy(targetCopy);

  target = self->_target;
  self->_target = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  v38 = *MEMORY[0x277D85DE8];
  target = self->_target;
  if (target)
  {
    store = [(HDCloudSyncTarget *)target store];
    v36 = 0;
    v5 = [store persistedStateWithError:&v36];
    v6 = v36;
    storeState = self->_storeState;
    self->_storeState = v5;

    if (self->_storeState)
    {
      self->_rebaseReason = -1;
      v8 = [HDCloudSyncCompoundOperation alloc];
      configuration = [(HDCloudSyncOperation *)self configuration];
      cloudState = [(HDCloudSyncOperation *)self cloudState];
      v11 = [(HDCloudSyncCompoundOperation *)v8 initWithConfiguration:configuration cloudState:cloudState name:@"Push Sequences" continueOnSubOperationError:1];

      v35 = 0;
      v12 = [(HDCloudSyncPushStoreOperation *)self _validatedSequenceRecordOperationsForPushWithError:?];
      v13 = v35;
      if (v12)
      {
        [(HDCloudSyncPushStoreOperation *)self _recordCurrentSequenceEpochs];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [(HDCloudSyncCompoundOperation *)v11 addOperation:*(*(&v31 + 1) + 8 * i) transitionHandler:0];
            }

            v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v16);
        }

        v19 = [(HDCloudSyncCompoundOperation *)v11 operationsOfType:objc_opt_class()];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __37__HDCloudSyncPushStoreOperation_main__block_invoke;
        v30[3] = &unk_278613088;
        v30[4] = self;
        [(HDCloudSyncOperation *)v11 setOnError:v30];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __37__HDCloudSyncPushStoreOperation_main__block_invoke_2;
        v28[3] = &unk_278614BA8;
        v28[4] = self;
        v29 = v19;
        v20 = v19;
        [(HDCloudSyncOperation *)v11 setOnSuccess:v28];
        progress = [(HDCloudSyncOperation *)v11 progress];
        totalUnitCount = [progress totalUnitCount];
        progress2 = [(HDCloudSyncOperation *)self progress];
        [progress2 setTotalUnitCount:totalUnitCount];

        progress3 = [(HDCloudSyncOperation *)self progress];
        progress4 = [(HDCloudSyncOperation *)v11 progress];
        progress5 = [(HDCloudSyncOperation *)v11 progress];
        [progress3 addChild:progress4 withPendingUnitCount:{objc_msgSend(progress5, "totalUnitCount")}];

        [(HDCloudSyncCompoundOperation *)v11 start];
      }

      else
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v13];
      }
    }

    else
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v6];
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"No target set when beginning push."];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:?];
  }
}

- (id)_validatedSequenceRecordOperationsForPushWithError:(uint64_t)error
{
  v224 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    v202 = 0;
    goto LABEL_142;
  }

  storeRecord = [*(error + 104) storeRecord];
  syncIdentity = [storeRecord syncIdentity];

  if (!syncIdentity)
  {
    obj = [MEMORY[0x277CBEB58] set];
    goto LABEL_56;
  }

  storeRecord2 = [*(error + 104) storeRecord];
  isChild = [storeRecord2 isChild];

  if (isChild)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB58]);
    storeRecord3 = [*(error + 104) storeRecord];
    syncIdentity2 = [storeRecord3 syncIdentity];
    obj = [v6 initWithObjects:{syncIdentity2, 0}];

    goto LABEL_56;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  storeRecord4 = [*(error + 104) storeRecord];
  syncIdentity3 = [storeRecord4 syncIdentity];

  if (syncIdentity3)
  {
    storeRecord5 = [*(error + 104) storeRecord];
    syncIdentity4 = [storeRecord5 syncIdentity];
    [v9 addObject:syncIdentity4];
  }

  storeRecord6 = [*(error + 104) storeRecord];
  currentSequenceHeaderRecord = [storeRecord6 currentSequenceHeaderRecord];
  includedSyncIdentities = [currentSequenceHeaderRecord includedSyncIdentities];

  if (includedSyncIdentities)
  {
    storeRecord7 = [*(error + 104) storeRecord];
    currentSequenceHeaderRecord2 = [storeRecord7 currentSequenceHeaderRecord];
    includedSyncIdentities2 = [currentSequenceHeaderRecord2 includedSyncIdentities];
    [v9 unionSet:includedSyncIdentities2];
  }

  profile = [error profile];
  syncIdentityManager = [profile syncIdentityManager];
  v203[0] = MEMORY[0x277D85DD0];
  v203[1] = 3221225472;
  v203[2] = __77__HDCloudSyncPushStoreOperation__currentOwnedSyncIdentitiesForPushWithError___block_invoke;
  v203[3] = &unk_27861EC18;
  v201 = v9;
  v204 = v201;
  v22 = [syncIdentityManager enumerateConcreteIdentitiesError:a2 enumerationHandler:v203];

  if (!v22)
  {
    obj = 0;
    goto LABEL_55;
  }

  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  configuration = [error configuration];
  computedState = [configuration computedState];
  obja = [computedState targets];

  v25 = [obja countByEnumeratingWithState:&v209 objects:v217 count:16];
  if (!v25)
  {
    goto LABEL_39;
  }

  v26 = *v210;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v210 != v26)
      {
        objc_enumerationMutation(obja);
      }

      v28 = *(*(&v209 + 1) + 8 * i);
      if ([v28 purpose])
      {
        v29 = 1;
      }

      else
      {
        v29 = ([v28 options] & 4) == 0;
      }

      if (([v28 options] & 2) != 0 || !v29)
      {
        storeRecord8 = [*(error + 104) storeRecord];
        sequenceRecord = [storeRecord8 sequenceRecord];
        includedChildSyncIdentities = [sequenceRecord includedChildSyncIdentities];
        storeRecord9 = [v28 storeRecord];
        syncIdentity5 = [storeRecord9 syncIdentity];
        v36 = [includedChildSyncIdentities containsObject:syncIdentity5];

        if (v36)
        {
          _HKInitializeLogging();
          v37 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            storeRecord10 = [v28 storeRecord];
            syncIdentity6 = [storeRecord10 syncIdentity];
            *buf = 138543618;
            *&buf[4] = error;
            *&buf[12] = 2114;
            *&buf[14] = syncIdentity6;
            _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding seized target that is your own child %{public}@", buf, 0x16u);
          }

          storeRecord11 = [v28 storeRecord];
          syncIdentity7 = [storeRecord11 syncIdentity];
          [v201 removeObject:syncIdentity7];
          goto LABEL_35;
        }

        storeRecord12 = [v28 storeRecord];
        storeRecord11 = [storeRecord12 sequenceRecord];

        if (storeRecord11)
        {
          includedSyncIdentities3 = [storeRecord11 includedSyncIdentities];
          v45 = [includedSyncIdentities3 count] == 0;

          if (!v45)
          {
            _HKInitializeLogging();
            v46 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
              includedSyncIdentities4 = [storeRecord11 includedSyncIdentities];
              *buf = 138543618;
              *&buf[4] = error;
              *&buf[12] = 2114;
              *&buf[14] = includedSyncIdentities4;
              _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding includedSyncIdentities of seized target %{public}@", buf, 0x16u);
            }
          }

          includedSyncIdentities5 = [storeRecord11 includedSyncIdentities];
          [v201 unionSet:includedSyncIdentities5];

          includedChildSyncIdentities2 = [storeRecord11 includedChildSyncIdentities];
          v51 = [includedChildSyncIdentities2 count] == 0;

          if (!v51)
          {
            _HKInitializeLogging();
            v52 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
              includedChildSyncIdentities3 = [storeRecord11 includedChildSyncIdentities];
              *buf = 138543618;
              *&buf[4] = error;
              *&buf[12] = 2114;
              *&buf[14] = includedChildSyncIdentities3;
              _os_log_impl(&dword_228986000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding includedChildSyncIdentities of seized target %{public}@", buf, 0x16u);
            }
          }

          syncIdentity7 = [storeRecord11 includedChildSyncIdentities];
          [v201 unionSet:syncIdentity7];
LABEL_35:
        }

        continue;
      }
    }

    v25 = [obja countByEnumeratingWithState:&v209 objects:v217 count:16];
  }

  while (v25);
LABEL_39:

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  configuration2 = [error configuration];
  computedState2 = [configuration2 computedState];
  targets = [computedState2 targets];

  v58 = [targets countByEnumeratingWithState:&v205 objects:buf count:16];
  if (v58)
  {
    v59 = *v206;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v206 != v59)
        {
          objc_enumerationMutation(targets);
        }

        v61 = *(*(&v205 + 1) + 8 * j);
        if ([v61 purpose] == 1 && (objc_msgSend(v61, "options") & 2) == 0)
        {
          storeRecord13 = [v61 storeRecord];
          sequenceRecord2 = [storeRecord13 sequenceRecord];

          if (sequenceRecord2)
          {
            includedSyncIdentities6 = [sequenceRecord2 includedSyncIdentities];
            [v201 minusSet:includedSyncIdentities6];

            includedChildSyncIdentities4 = [sequenceRecord2 includedChildSyncIdentities];
            [v201 minusSet:includedChildSyncIdentities4];
          }
        }
      }

      v58 = [targets countByEnumeratingWithState:&v205 objects:buf count:16];
    }

    while (v58);
  }

  profile2 = [error profile];
  daemon = [profile2 daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    profile3 = [error profile];
    syncIdentityManager2 = [profile3 syncIdentityManager];
    legacySyncIdentity = [syncIdentityManager2 legacySyncIdentity];
    identity = [legacySyncIdentity identity];

    [v201 removeObject:identity];
  }

  profile4 = [error profile];
  syncIdentityManager3 = [profile4 syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager3 currentSyncIdentity];
  identity2 = [currentSyncIdentity identity];
  [v201 addObject:identity2];

  obj = v201;
LABEL_55:

LABEL_56:
  if (obj)
  {
    *v217 = 0;
    *&v217[8] = v217;
    *&v217[16] = 0x3032000000;
    v218 = __Block_byref_object_copy__91;
    *v219 = __Block_byref_object_dispose__91;
    *&v219[8] = objc_alloc_init(MEMORY[0x277CBEB98]);
    storeRecord14 = [*(error + 104) storeRecord];
    isChild2 = [storeRecord14 isChild];

    if (isChild2 || ([error profile], v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v80, "database"), v81 = objc_claimAutoreleasedReturnValue(), *buf = MEMORY[0x277D85DD0], *&buf[8] = 3221225472, *&buf[16] = __82__HDCloudSyncPushStoreOperation__currentOwnedChildSyncIdentitiesForPushWithError___block_invoke, v214 = &unk_278614110, v215 = error, v216 = v217, v82 = +[HDHealthEntity performReadTransactionWithHealthDatabase:error:block:](HDSyncIdentityEntity, "performReadTransactionWithHealthDatabase:error:block:", v81, a2, buf), v81, v80, v82))
    {
      v83 = *(*&v217[8] + 40);
    }

    else
    {
      v83 = 0;
    }

    v197 = v83;
    _Block_object_dispose(v217, 8);

    v84 = v197;
    if (v197)
    {
      [obj minusSet:?];
      v85 = objc_alloc_init(MEMORY[0x277CBEB58]);
      store = [*(error + 104) store];
      storeIdentifier = [store storeIdentifier];
      [v85 addObject:storeIdentifier];

      storeRecord15 = [*(error + 104) storeRecord];
      currentSequenceHeaderRecord3 = [storeRecord15 currentSequenceHeaderRecord];
      includedIdentifiers = [currentSequenceHeaderRecord3 includedIdentifiers];
      [v85 unionSet:includedIdentifiers];

      storeRecord16 = [*(error + 104) storeRecord];
      LOBYTE(storeRecord15) = [storeRecord16 isChild];

      if ((storeRecord15 & 1) == 0)
      {
        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
        configuration3 = [error configuration];
        computedState3 = [configuration3 computedState];
        targets2 = [computedState3 targets];

        v95 = [targets2 countByEnumeratingWithState:&v209 objects:v217 count:16];
        if (v95)
        {
          v96 = *v210;
          do
          {
            for (k = 0; k != v95; ++k)
            {
              if (*v210 != v96)
              {
                objc_enumerationMutation(targets2);
              }

              v98 = *(*(&v209 + 1) + 8 * k);
              if ([v98 purpose])
              {
                v99 = 1;
              }

              else
              {
                v99 = ([v98 options] & 4) == 0;
              }

              if (([v98 options] & 2) != 0 || !v99)
              {
                storeRecord17 = [v98 storeRecord];
                sequenceRecord3 = [storeRecord17 sequenceRecord];

                if (sequenceRecord3)
                {
                  includedIdentifiers2 = [sequenceRecord3 includedIdentifiers];
                  [v85 unionSet:includedIdentifiers2];
                }
              }
            }

            v95 = [targets2 countByEnumeratingWithState:&v209 objects:v217 count:16];
          }

          while (v95);
        }

        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        configuration4 = [error configuration];
        computedState4 = [configuration4 computedState];
        targets3 = [computedState4 targets];

        v107 = [targets3 countByEnumeratingWithState:&v205 objects:buf count:16];
        if (v107)
        {
          v108 = *v206;
          do
          {
            for (m = 0; m != v107; ++m)
            {
              if (*v206 != v108)
              {
                objc_enumerationMutation(targets3);
              }

              v110 = *(*(&v205 + 1) + 8 * m);
              if ([v110 purpose] == 1 && (objc_msgSend(v110, "options") & 2) == 0)
              {
                storeRecord18 = [v110 storeRecord];
                sequenceRecord4 = [storeRecord18 sequenceRecord];

                if (sequenceRecord4)
                {
                  includedIdentifiers3 = [sequenceRecord4 includedIdentifiers];
                  [v85 minusSet:includedIdentifiers3];
                }
              }
            }

            v107 = [targets3 countByEnumeratingWithState:&v205 objects:buf count:16];
          }

          while (v107);
        }
      }

      v202 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v194 = objc_alloc_init(MEMORY[0x277CBEB18]);
      configuration5 = [error configuration];
      context = [configuration5 context];
      options = [context options];

      if ((options & 0x100) != 0)
      {
        storeRecord19 = [*(error + 104) storeRecord];
        tombstoneSequenceRecord = [storeRecord19 tombstoneSequenceRecord];

        if (tombstoneSequenceRecord)
        {
          v119 = [(HDCloudSyncPushStoreOperation *)error _operationForExistingSequenceRecord:tombstoneSequenceRecord includedChildSyncIdentites:v197];
          [v202 addObject:v119];
        }

        else
        {
          _HKInitializeLogging();
          v120 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *v217 = 138543362;
            *&v217[4] = error;
            _os_log_impl(&dword_228986000, v120, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync options require separate tombstones but no tombstone sequence record exists. Creating it now.", v217, 0xCu);
          }

          storeRecord20 = [*(error + 104) storeRecord];
          tombstoneSequenceRecord = [storeRecord20 addNewTombstoneSequenceHeaderRecordWithIncludedIdentifiers:v85 includedSyncIdentities:obj includedChildSyncIdentities:v197];

          v122 = [(HDCloudSyncPushStoreOperation *)error _operationForNewSequenceRecord:tombstoneSequenceRecord replacingSequence:0 isRebaseline:0];
          [v202 addObject:v122];
        }

        [v194 addObject:@"tombstone"];
      }

      storeRecord21 = [*(error + 104) storeRecord];
      activeSequenceHeaderRecord = [storeRecord21 activeSequenceHeaderRecord];

      if (activeSequenceHeaderRecord)
      {
        v124 = [(HDCloudSyncPushStoreOperation *)error _operationForExistingSequenceRecord:activeSequenceHeaderRecord includedChildSyncIdentites:v197];
        [v202 addObject:v124];

        [v194 addObject:@"active"];
      }

      v196 = v85;
      v192 = obj;
      v193 = v197;
      storeRecord22 = [*(error + 104) storeRecord];
      activeSequenceHeaderRecord2 = [storeRecord22 activeSequenceHeaderRecord];

      storeRecord23 = [*(error + 104) storeRecord];
      pendingSequenceHeaderRecord = [storeRecord23 pendingSequenceHeaderRecord];

      storeRecord24 = [*(error + 104) storeRecord];
      currentSequenceHeaderRecord4 = [storeRecord24 currentSequenceHeaderRecord];

      if (!(activeSequenceHeaderRecord2 | pendingSequenceHeaderRecord))
      {
        _HKInitializeLogging();
        v131 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v217 = 138543362;
          *&v217[4] = error;
          _os_log_impl(&dword_228986000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@: No current or active sequence; creating a new one and syncing.", v217, 0xCu);
        }

        storeRecord25 = [*(error + 104) storeRecord];
        v133 = objc_alloc_init(HDSyncAnchorMap);
        v134 = [storeRecord25 addNewSequenceHeaderRecordWithSyncAnchorMap:v133 includedIdentifiers:v196 includedSyncIdentities:v192 includedChildSyncIdentities:v193];

        v189 = [(HDCloudSyncPushStoreOperation *)error _operationForNewSequenceRecord:v134 replacingSequence:0 isRebaseline:1];

        goto LABEL_130;
      }

      configuration6 = [error configuration];
      if ([configuration6 rebaseProhibited])
      {

        errorCopy3 = error;
LABEL_119:
        if (pendingSequenceHeaderRecord)
        {
          *(errorCopy3 + 128) = 9;
          _HKInitializeLogging();
          v150 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *v217 = 138543362;
            *&v217[4] = error;
            _os_log_impl(&dword_228986000, v150, OS_LOG_TYPE_DEFAULT, "%{public}@: Pushing to existing incomplete sequence.", v217, 0xCu);
          }

          configuration7 = [error configuration];
          computedState5 = [configuration7 computedState];
          [computedState5 setCountOfRebaselineOperations:{objc_msgSend(computedState5, "countOfRebaselineOperations") + 1}];

          v189 = [(HDCloudSyncPushStoreOperation *)error _operationForExistingSequenceRecord:pendingSequenceHeaderRecord includedChildSyncIdentites:v193];
        }

        else
        {
          v189 = 0;
        }
      }

      else
      {
        store2 = [*(error + 104) store];
        supportsRebase = [store2 supportsRebase];

        errorCopy3 = error;
        if (!supportsRebase)
        {
          goto LABEL_119;
        }

        configuration8 = [error configuration];
        context2 = [configuration8 context];
        options2 = [context2 options];

        options3 = [*(error + 104) options];
        includedIdentifiers4 = [currentSequenceHeaderRecord4 includedIdentifiers];
        v144 = [includedIdentifiers4 isEqualToSet:v196];

        includedSyncIdentities7 = [currentSequenceHeaderRecord4 includedSyncIdentities];
        v146 = [includedSyncIdentities7 isEqualToSet:v192];

        v147 = options3 & 1;
        errorCopy3 = error;
        if ((options2 >> 3))
        {
          *(error + 128) = 8;
        }

        if (options3)
        {
          *(error + 128) = 10;
        }

        v148 = v144 ^ 1;
        if ((v144 & 1) == 0)
        {
          *(error + 128) = 6;
        }

        v149 = options2 & 8;
        if (v146)
        {
          if (!(((v149 | v147) != 0) | v148 & 1 | (v146 ^ 1) & 1))
          {
            goto LABEL_119;
          }
        }

        else
        {
          *(error + 128) = 7;
        }

        _HKInitializeLogging();
        v153 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v217 = 138544386;
          *&v217[4] = error;
          *&v217[12] = 1024;
          *&v217[14] = v149 >> 3;
          *&v217[18] = 1024;
          *&v217[20] = v147;
          LOWORD(v218) = 1024;
          *(&v218 + 2) = v146 ^ 1;
          HIWORD(v218) = 1024;
          *v219 = v148;
          _os_log_impl(&dword_228986000, v153, OS_LOG_TYPE_DEFAULT, "%{public}@: Rebasing and pushing to new sequence record (requested: %{BOOL}d, target: %{BOOL}d, mismatch identities: %{BOOL}d, mismatch identifiers: %{BOOL}d).", v217, 0x24u);
        }

        v154 = *(error + 104);
        v155 = v193;
        v156 = v192;
        v157 = v196;
        storeRecord26 = [v154 storeRecord];
        pendingSequenceHeaderRecord2 = [storeRecord26 pendingSequenceHeaderRecord];

        if (pendingSequenceHeaderRecord2)
        {
          storeRecord27 = [*(error + 104) storeRecord];
          clearPendingSequenceHeaderRecord = [storeRecord27 clearPendingSequenceHeaderRecord];
        }

        storeRecord28 = [*(error + 104) storeRecord];
        v162 = objc_alloc_init(HDSyncAnchorMap);
        v163 = [storeRecord28 addNewSequenceHeaderRecordWithSyncAnchorMap:v162 includedIdentifiers:v157 includedSyncIdentities:v156 includedChildSyncIdentities:v155];

        v189 = [(HDCloudSyncPushStoreOperation *)error _operationForNewSequenceRecord:v163 replacingSequence:pendingSequenceHeaderRecord isRebaseline:1];
      }

LABEL_130:

      if (v189)
      {
        [v202 addObject:v189];
        [v194 addObject:@"current"];
      }

      _HKInitializeLogging();
      v164 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v165 = *(error + 104);
        v166 = v164;
        store3 = [v165 store];
        storeRecord29 = [*(error + 104) storeRecord];
        *v217 = 138543874;
        *&v217[4] = error;
        *&v217[12] = 2114;
        *&v217[14] = store3;
        *&v217[22] = 2114;
        v218 = storeRecord29;
        _os_log_impl(&dword_228986000, v166, OS_LOG_TYPE_DEFAULT, "%{public}@: Pushing to store: %{public}@ with storeRecord: %{public}@", v217, 0x20u);
      }

      _HKInitializeLogging();
      v169 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v170 = *(error + 104);
        v171 = v169;
        store4 = [v170 store];
        v173 = [v194 componentsJoinedByString:{@", "}];
        v174 = [v196 count];
        allObjects = [v196 allObjects];
        v176 = [allObjects componentsJoinedByString:{@", "}];
        v177 = [v192 count];
        allObjects2 = [v192 allObjects];
        v179 = [allObjects2 componentsJoinedByString:{@", "}];
        *v217 = 138544898;
        *&v217[4] = error;
        *&v217[12] = 2114;
        *&v217[14] = store4;
        *&v217[22] = 2114;
        v218 = v173;
        *v219 = 2048;
        *&v219[2] = v174;
        *&v219[10] = 2114;
        *&v219[12] = v176;
        v220 = 2048;
        v221 = v177;
        v222 = 2114;
        v223 = v179;
        _os_log_impl(&dword_228986000, v171, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Pushing to sequences (%{public}@) with %ld included sync identifiers: %{public}@ and %ld included sync identities: %{public}@", v217, 0x48u);
      }

      if ([v193 count])
      {
        _HKInitializeLogging();
        v180 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v181 = *(error + 104);
          v182 = v180;
          store5 = [v181 store];
          v184 = [v194 componentsJoinedByString:{@", "}];
          v185 = [v193 count];
          allObjects3 = [v193 allObjects];
          v187 = [allObjects3 componentsJoinedByString:{@", "}];
          *v217 = 138544386;
          *&v217[4] = error;
          *&v217[12] = 2114;
          *&v217[14] = store5;
          *&v217[22] = 2114;
          v218 = v184;
          *v219 = 2048;
          *&v219[2] = v185;
          *&v219[10] = 2114;
          *&v219[12] = v187;
          _os_log_impl(&dword_228986000, v182, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Pushing to sequences (%{public}@) with %ld included child sync identities: %{public}@", v217, 0x34u);
        }
      }

      v84 = v197;
    }

    else
    {
      v202 = 0;
    }
  }

  else
  {
    v202 = 0;
  }

LABEL_142:

  return v202;
}

- (void)_recordCurrentSequenceEpochs
{
  v34 = *MEMORY[0x277D85DE8];
  if (self)
  {
    target = [self target];
    storeRecord = [target storeRecord];

    if (storeRecord)
    {
      target2 = [self target];
      storeRecord2 = [target2 storeRecord];
      activeSequenceHeaderRecord = [storeRecord2 activeSequenceHeaderRecord];

      v28 = activeSequenceHeaderRecord;
      if (activeSequenceHeaderRecord)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(activeSequenceHeaderRecord, "baselineEpoch")}];
      }

      else
      {
        v7 = 0;
      }

      target3 = [self target];
      storeRecord3 = [target3 storeRecord];
      pendingSequenceHeaderRecord = [storeRecord3 pendingSequenceHeaderRecord];

      if (pendingSequenceHeaderRecord)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(pendingSequenceHeaderRecord, "baselineEpoch")}];
      }

      else
      {
        v12 = 0;
      }

      target4 = [self target];
      storeRecord4 = [target4 storeRecord];
      tombstoneSequenceRecord = [storeRecord4 tombstoneSequenceRecord];

      v26 = pendingSequenceHeaderRecord;
      if (tombstoneSequenceRecord)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(tombstoneSequenceRecord, "baselineEpoch")}];
      }

      else
      {
        v16 = 0;
      }

      v27 = v7;
      v25 = v12;
      v17 = [[HDCloudSyncCachedStoreEpochs alloc] initWithActiveEpoch:v7 pendingEpoch:v12 tombstoneEpoch:v16];
      target5 = [self target];
      storeRecord5 = [target5 storeRecord];
      storeIdentifier = [storeRecord5 storeIdentifier];
      profile = [self profile];
      v29 = 0;
      v22 = [HDCloudSyncStoreEntity cacheEpochs:v17 storeIdentifier:storeIdentifier profile:profile error:&v29];
      v23 = v29;

      if (!v22)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v32 = 2114;
          v33 = v23;
          _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache sequence epochs with error: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache sequence epochs because store record is not set.", buf, 0xCu);
      }
    }
  }
}

void __37__HDCloudSyncPushStoreOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [(HDCloudSyncPushStoreOperation *)v4 _recordCurrentSequenceEpochs];
  [(HDCloudSyncPushStoreOperation *)*(a1 + 32) _recordExcludedSyncIdentitiesFromPushSequenceOperations:?];
  [*(a1 + 32) finishWithSuccess:0 error:v5];
}

- (void)_recordExcludedSyncIdentitiesFromPushSequenceOperations:(void *)operations
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (!operations)
  {
    goto LABEL_34;
  }

  target = [operations target];
  store = [target store];

  if (store)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      v27 = v4;
      v9 = 0;
      v10 = *v30;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            excludedSyncIdentities = [v13 excludedSyncIdentities];
            v15 = excludedSyncIdentities;
            if (v9)
            {
              v16 = excludedSyncIdentities;
              if (!excludedSyncIdentities)
              {
                v2 = [MEMORY[0x277CBEB98] set];
                v16 = v2;
              }

              v17 = [v9 hk_intersection:v16];

              if (!v15)
              {
              }
            }

            else
            {
              if (excludedSyncIdentities)
              {
                v18 = excludedSyncIdentities;
              }

              else
              {
                v18 = [MEMORY[0x277CBEB98] set];
              }

              v17 = v18;
            }

            v9 = v17;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v8);

      if (!v9)
      {
        v8 = 0;
        v4 = v27;
        goto LABEL_30;
      }

      v4 = v27;
      if ([v9 count])
      {
        v8 = [MEMORY[0x277CBEB98] setWithSet:v9];
      }

      else
      {
        v8 = 0;
      }

      v7 = v9;
    }

LABEL_30:
    target2 = [operations target];
    store2 = [target2 store];
    storeIdentifier = [store2 storeIdentifier];
    profile = [operations profile];
    v28 = 0;
    v24 = [HDCloudSyncStoreEntity cacheExcludedSyncIdentities:v8 storeIdentifier:storeIdentifier profile:profile error:&v28];
    v25 = v28;

    if (!v24)
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        operationsCopy2 = operations;
        v35 = 2114;
        v36 = v25;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache excluded sync identities with error: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_34;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    operationsCopy2 = operations;
    _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache excluded sync identities because store is not set.", buf, 0xCu);
  }

LABEL_34:
}

void __37__HDCloudSyncPushStoreOperation_main__block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  [(HDCloudSyncPushStoreOperation *)*(a1 + 32) _recordCurrentSequenceEpochs];
  [(HDCloudSyncPushStoreOperation *)*(a1 + 32) _recordExcludedSyncIdentitiesFromPushSequenceOperations:?];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2[13] storeRecord];
    v4 = [v3 oldSequenceHeaderRecord];

    v5 = [v2[13] storeRecord];
    v6 = [v5 currentSequenceHeaderRecord];
    v7 = [v6 isActive];

    if (v7)
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      [v2 finishWithSuccess:1 error:0];
    }

    else
    {
      v9 = [HDCloudSyncDeleteSequenceOperation alloc];
      v10 = [v2 configuration];
      v15 = v4;
      v16[0] = v2[13];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [(HDCloudSyncDeleteSequenceOperation *)v9 initWithConfiguration:v10 targetsBySequence:v11];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __69__HDCloudSyncPushStoreOperation__sequencePushesDidFinishSuccessfully__block_invoke;
      v14[3] = &unk_278613088;
      v14[4] = v2;
      [(HDCloudSyncOperation *)v12 setOnError:v14];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __69__HDCloudSyncPushStoreOperation__sequencePushesDidFinishSuccessfully__block_invoke_2;
      v13[3] = &unk_278613060;
      v13[4] = v2;
      [(HDCloudSyncOperation *)v12 setOnSuccess:v13];
      [(HDCloudSyncOperation *)v12 start];
    }
  }
}

uint64_t __77__HDCloudSyncPushStoreOperation__currentOwnedSyncIdentitiesForPushWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identity];
  [v2 addObject:v3];

  return 1;
}

uint64_t __82__HDCloudSyncPushStoreOperation__currentOwnedChildSyncIdentitiesForPushWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [v7 syncIdentityManager];
  v19 = 0;
  v9 = [v8 childIdentitiesForCurrentSyncIdentityWithTransaction:v6 error:&v19];

  v10 = v19;
  if (v9)
  {
    v11 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
LABEL_3:
    v14 = 1;
    goto LABEL_4;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    *buf = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get child sync identities from local storage: %{public}@", buf, 0x16u);
  }

  v13 = v10;
  if (!v13)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    v17 = v13;
    v14 = 0;
    *a3 = v13;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

LABEL_4:

  return v14;
}

- (HDCloudSyncCompoundOperation)_operationForNewSequenceRecord:(void *)record replacingSequence:(uint64_t)sequence isRebaseline:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  recordCopy = record;
  configuration = [self configuration];
  computedState = [configuration computedState];
  [computedState setCountOfRebaselineOperations:{objc_msgSend(computedState, "countOfRebaselineOperations") + sequence}];

  v11 = [HDCloudSyncCompoundOperation alloc];
  configuration2 = [self configuration];
  cloudState = [self cloudState];
  v14 = [(HDCloudSyncCompoundOperation *)v11 initWithConfiguration:configuration2 cloudState:cloudState name:@"Setup & Push" continueOnSubOperationError:0];

  recordID = [recordCopy recordID];
  recordID2 = [v7 recordID];
  v17 = [recordID isEqual:recordID2];

  if (v17)
  {
    v18 = [HDCloudSyncModifyRecordsOperation alloc];
    configuration3 = [self configuration];
    container = [self[13] container];
    recordID3 = [recordCopy recordID];
    v33[0] = recordID3;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v23 = [(HDCloudSyncModifyRecordsOperation *)v18 initWithConfiguration:configuration3 container:container recordsToSave:0 recordIDsToDelete:v22];

    [(HDCloudSyncCompoundOperation *)v14 addOperation:v23 transitionHandler:0];
    recordCopy = 0;
  }

  v24 = [HDCloudSyncStartSequenceOperation alloc];
  configuration4 = [self configuration];
  cloudState2 = [self cloudState];
  v27 = [(HDCloudSyncStartSequenceOperation *)v24 initWithConfiguration:configuration4 cloudState:cloudState2 target:self[13] sequence:v7 replacingSequence:recordCopy shouldClearRebaselineDeadline:sequence];

  v28 = [HDCloudSyncPushSequenceOperation alloc];
  configuration5 = [self configuration];
  cloudState3 = [self cloudState];
  v31 = [(HDCloudSyncPushSequenceOperation *)v28 initWithConfiguration:configuration5 cloudState:cloudState3 target:self[13] sequence:v7];

  [(HDCloudSyncCompoundOperation *)v14 addOperation:v27 transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v14 addOperation:v31 transitionHandler:&__block_literal_global_98];

  return v14;
}

void __95__HDCloudSyncPushStoreOperation__operationForNewSequenceRecord_replacingSequence_isRebaseline___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sequenceState];
  [v4 setSequenceState:v5];
}

- (HDCloudSyncPushSequenceOperation)_operationForExistingSequenceRecord:(void *)record includedChildSyncIdentites:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  recordCopy = record;
  includedChildSyncIdentities = [v5 includedChildSyncIdentities];
  v8 = [includedChildSyncIdentities isEqualToSet:recordCopy];

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      allObjects = [recordCopy allObjects];
      v12 = [allObjects componentsJoinedByString:{@", "}];
      v18 = 138543618;
      selfCopy = self;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating sequence record to include child sync identities: %{public}@.", &v18, 0x16u);
    }

    [v5 setIncludedChildSyncIdentities:recordCopy];
  }

  v13 = [HDCloudSyncPushSequenceOperation alloc];
  configuration = [self configuration];
  cloudState = [self cloudState];
  v16 = [(HDCloudSyncPushSequenceOperation *)v13 initWithConfiguration:configuration cloudState:cloudState target:self[13] sequence:v5];

  return v16;
}

uint64_t __69__HDCloudSyncPushStoreOperation__sequencePushesDidFinishSuccessfully__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v3];

  v4 = *(a1 + 32);

  return [v4 finishWithSuccess:1 error:0];
}

- (id)analyticsDictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncPushStoreOperation;
  analyticsDictionary = [(HDCloudSyncOperation *)&v8 analyticsDictionary];
  if (self->_rebaseReason != -1)
  {
    v9 = @"rebaseReason";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v5 hk_dictionaryByAddingEntriesFromDictionary:analyticsDictionary];

    analyticsDictionary = v6;
  }

  return analyticsDictionary;
}

@end