@interface HDCloudSyncSeizeAbandonedStoresOperation
+ (id)operationTagDependencies;
- (id)anchorMapForTakeoverForTarget:(void *)target;
- (void)main;
@end

@implementation HDCloudSyncSeizeAbandonedStoresOperation

+ (id)operationTagDependencies
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v4[1] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)main
{
  v225 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  if ([configuration rebaseProhibited])
  {

LABEL_33:

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    return;
  }

  profile = [(HDCloudSyncOperation *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  canPerformOwnershipTakeover = [behavior canPerformOwnershipTakeover];

  if ((canPerformOwnershipTakeover & 1) == 0)
  {
    goto LABEL_33;
  }

  v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v7;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults objectForKey:*MEMORY[0x277CCB770]];
  v11 = v10;
  v12 = *MEMORY[0x277CCB750];
  if (v10)
  {
    [v10 doubleValue];
    if (v12 >= v13)
    {
      v12 = v13;
    }
  }

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  computedState = [configuration2 computedState];
  targets = [computedState targets];
  *v221 = MEMORY[0x277D85DD0];
  *&v221[8] = 3221225472;
  *&v221[16] = __69__HDCloudSyncSeizeAbandonedStoresOperation__computeTargetsForSeizure__block_invoke;
  v222 = &unk_278630098;
  selfCopy = self;
  v224 = v12;
  v17 = [targets hk_map:v221];

  v191 = 0;
  v18 = v17;
  v182 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = v18;
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  computedState2 = [configuration3 computedState];
  targets2 = [computedState2 targets];
  *&v202 = MEMORY[0x277D85DD0];
  *(&v202 + 1) = 3221225472;
  *&v203 = __76__HDCloudSyncSeizeAbandonedStoresOperation__computeAllActiveTargetsByChild___block_invoke;
  *(&v203 + 1) = &unk_278614BF0;
  v173 = v19;
  *&v204 = v173;
  v23 = [targets2 hk_filter:&v202];

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  obj = v23;
  v180 = [obj countByEnumeratingWithState:&v210 objects:v221 count:16];
  if (v180)
  {
    v179 = *v211;
    do
    {
      v25 = 0;
      do
      {
        if (*v211 != v179)
        {
          v26 = v25;
          objc_enumerationMutation(obj);
          v25 = v26;
        }

        v184 = v25;
        v27 = *(*(&v210 + 1) + 8 * v25);
        storeRecord = [v27 storeRecord];
        if (([storeRecord isChild] & 1) == 0)
        {
          storeRecord2 = [v27 storeRecord];
          sequenceRecord = [storeRecord2 sequenceRecord];
          includedChildSyncIdentities = [sequenceRecord includedChildSyncIdentities];
          v32 = [includedChildSyncIdentities count] == 0;

          if (v32)
          {
            goto LABEL_29;
          }

          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          storeRecord3 = [v27 storeRecord];
          sequenceRecord2 = [storeRecord3 sequenceRecord];
          storeRecord = [sequenceRecord2 includedChildSyncIdentities];

          v35 = [storeRecord countByEnumeratingWithState:&v206 objects:&v217 count:16];
          if (v35)
          {
            v36 = *v207;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v207 != v36)
                {
                  objc_enumerationMutation(storeRecord);
                }

                v38 = *(*(&v206 + 1) + 8 * i);
                v39 = [v24 objectForKeyedSubscript:v38];
                v40 = v39;
                if (v39)
                {
                  v41 = v39;
                }

                else
                {
                  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                v42 = v41;

                storeRecord4 = [v27 storeRecord];
                syncIdentity = [storeRecord4 syncIdentity];
                v45 = syncIdentity == 0;

                if (v45)
                {
                  _HKInitializeLogging();
                  v48 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    v49 = v48;
                    storeRecord5 = [v27 storeRecord];
                    *buf = 138543618;
                    *&buf[4] = self;
                    *&buf[12] = 2114;
                    *&buf[14] = storeRecord5;
                    _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@: StoreRecord has a nil sync identity %{public}@", buf, 0x16u);
                  }
                }

                else
                {
                  storeRecord6 = [v27 storeRecord];
                  syncIdentity2 = [storeRecord6 syncIdentity];
                  [v42 addObject:syncIdentity2];

                  [v24 setObject:v42 forKeyedSubscript:v38];
                }
              }

              v35 = [storeRecord countByEnumeratingWithState:&v206 objects:&v217 count:16];
            }

            while (v35);
          }
        }

LABEL_29:
        v25 = v184 + 1;
      }

      while (v184 + 1 != v180);
      v180 = [obj countByEnumeratingWithState:&v210 objects:v221 count:16];
    }

    while (v180);
  }

  *v221 = 0;
  *&v221[8] = v221;
  *&v221[16] = 0x3032000000;
  v222 = __Block_byref_object_copy__210;
  selfCopy = __Block_byref_object_dispose__210;
  v224 = 0.0;
  v51 = +[HDMutableDatabaseTransactionContext contextForReading];
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  accessibilityAssertion = [configuration4 accessibilityAssertion];
  v54 = [v51 contextWithAccessibilityAssertion:accessibilityAssertion];

  profile2 = [(HDCloudSyncOperation *)self profile];
  database = [profile2 database];
  *&v217 = MEMORY[0x277D85DD0];
  *(&v217 + 1) = 3221225472;
  *&v218 = __74__HDCloudSyncSeizeAbandonedStoresOperation__childSyncIdentitiesWithError___block_invoke;
  *(&v218 + 1) = &unk_278619398;
  *(&v219 + 1) = v221;
  *&v219 = self;
  LOBYTE(accessibilityAssertion) = [database performTransactionWithContext:v54 error:&v191 block:&v217 inaccessibilityHandler:0];

  if (accessibilityAssertion)
  {
    v175 = *(*&v221[8] + 40);
  }

  else
  {
    v175 = 0;
  }

  _Block_object_dispose(v221, 8);
  if (!v175)
  {
    goto LABEL_97;
  }

  v215 = 0u;
  v216 = 0u;
  memset(buf, 0, sizeof(buf));
  v185 = v173;
  v176 = [v185 countByEnumeratingWithState:buf objects:&v217 count:16];
  if (!v176)
  {
    goto LABEL_80;
  }

  v174 = **&buf[16];
  do
  {
    v57 = 0;
    do
    {
      if (**&buf[16] != v174)
      {
        v58 = v57;
        objc_enumerationMutation(v185);
        v57 = v58;
      }

      obja = v57;
      v59 = *(*&buf[8] + 8 * v57);
      storeRecord7 = [v59 storeRecord];
      isChild = [storeRecord7 isChild];

      storeRecord8 = [v59 storeRecord];
      syncIdentity3 = [storeRecord8 syncIdentity];
      v64 = [v175 containsObject:syncIdentity3];

      storeRecord9 = [v59 storeRecord];
      sequenceRecord3 = [storeRecord9 sequenceRecord];
      includedChildSyncIdentities2 = [sequenceRecord3 includedChildSyncIdentities];
      v68 = [includedChildSyncIdentities2 count];

      if (!isChild)
      {
        if (!v68)
        {
          goto LABEL_78;
        }

        v75 = v59;
        configuration5 = [(HDCloudSyncOperation *)self configuration];
        computedState3 = [configuration5 computedState];
        targets3 = [computedState3 targets];
        *v221 = MEMORY[0x277D85DD0];
        *&v221[8] = 3221225472;
        *&v221[16] = __80__HDCloudSyncSeizeAbandonedStoresOperation__childTargetBySyncIdentityForParent___block_invoke;
        v222 = &unk_2786300C0;
        v187 = v75;
        selfCopy = v187;
        v69 = [targets3 hk_mapToDictionary:v221];

        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v199 = 0u;
        storeRecord10 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v187 storeRecord];
        sequenceRecord4 = [storeRecord10 sequenceRecord];
        includedChildSyncIdentities3 = [sequenceRecord4 includedChildSyncIdentities];

        v81 = [includedChildSyncIdentities3 countByEnumeratingWithState:&v196 objects:&v210 count:16];
        if (v81)
        {
          v82 = *v197;
          while (2)
          {
            for (j = 0; j != v81; ++j)
            {
              if (*v197 != v82)
              {
                objc_enumerationMutation(includedChildSyncIdentities3);
              }

              v84 = *(*(&v196 + 1) + 8 * j);
              v85 = [v24 objectForKeyedSubscript:v84];
              if (!v85 || ([v24 objectForKeyedSubscript:v84], v86 = objc_claimAutoreleasedReturnValue(), v87 = v86 == 0, v86, v85, v87))
              {
                v92 = [v69 objectForKeyedSubscript:v84];
                v93 = v92 == 0;

                if (v93)
                {
                  _HKInitializeLogging();
                  v102 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v103 = v102;
                    store = [(HDCloudSyncSeizeAbandonedStoresOperation *)v187 store];
                    syncIdentity4 = [store syncIdentity];
                    *v221 = 138543874;
                    *&v221[4] = self;
                    *&v221[12] = 2114;
                    *&v221[14] = syncIdentity4;
                    *&v221[22] = 2114;
                    v222 = v84;
                    _os_log_impl(&dword_228986000, v103, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: Child does not exist as store, seize both candidate target (%{public}@) & child (%{public}@) ", v221, 0x20u);
                  }
                }

                else
                {
                  v94 = [v69 objectForKeyedSubscript:v84];
                  v95 = [v185 containsObject:v94];

                  _HKInitializeLogging();
                  v96 = *MEMORY[0x277CCC328];
                  v97 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
                  if (!v95)
                  {
                    if (v97)
                    {
                      v115 = v96;
                      store2 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v187 store];
                      syncIdentity5 = [store2 syncIdentity];
                      *v221 = 138543874;
                      *&v221[4] = self;
                      *&v221[12] = 2114;
                      *&v221[14] = v84;
                      *&v221[22] = 2114;
                      v222 = syncIdentity5;
                      _os_log_impl(&dword_228986000, v115, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: Child (%{public}@) is not ready to be seized and not owned by another active target, cannot seize candidate target (%{public}@) or any if itschildren.", v221, 0x20u);
                    }

                    allValues = [v69 allValues];
                    [v182 addObjectsFromArray:allValues];

                    [v182 addObject:v187];
                    goto LABEL_77;
                  }

                  if (v97)
                  {
                    v98 = v96;
                    store3 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v187 store];
                    syncIdentity6 = [store3 syncIdentity];
                    *v221 = 138543874;
                    *&v221[4] = self;
                    *&v221[12] = 2114;
                    *&v221[14] = syncIdentity6;
                    *&v221[22] = 2114;
                    v222 = v84;
                    _os_log_impl(&dword_228986000, v98, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: Child is also in seized targets, seize both candidate target (%{public}@) & child (%{public}@)", v221, 0x20u);
                  }

                  v101 = [v69 objectForKeyedSubscript:v84];
                  [v182 removeObject:v101];
                }
              }

              else
              {
                _HKInitializeLogging();
                v88 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v89 = v88;
                  store4 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v187 store];
                  syncIdentity7 = [store4 syncIdentity];
                  *v221 = 138543618;
                  *&v221[4] = self;
                  *&v221[12] = 2114;
                  *&v221[14] = syncIdentity7;
                  _os_log_impl(&dword_228986000, v89, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: An active target also owns this child, candidate target (%{public}@) can continue being seized", v221, 0x16u);
                }
              }
            }

            v81 = [includedChildSyncIdentities3 countByEnumeratingWithState:&v196 objects:&v210 count:16];
            if (v81)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_77;
      }

      v69 = v59;
      includedChildSyncIdentities3 = v24;
      if (v64)
      {
        _HKInitializeLogging();
        v71 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v72 = v71;
          store5 = [v69 store];
          syncIdentity8 = [store5 syncIdentity];
          *v221 = 138543618;
          *&v221[4] = self;
          *&v221[12] = 2114;
          *&v221[14] = syncIdentity8;
          _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: targetIsAChild: Candidate target is ownChild (%{public}@), continue seizing", v221, 0x16u);
        }

LABEL_77:

        goto LABEL_78;
      }

      storeRecord11 = [v69 storeRecord];
      syncIdentity9 = [storeRecord11 syncIdentity];
      v108 = [includedChildSyncIdentities3 objectForKeyedSubscript:syncIdentity9];
      v109 = [v108 count] == 0;

      _HKInitializeLogging();
      v110 = *MEMORY[0x277CCC328];
      v111 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
      if (v109)
      {
        if (v111)
        {
          v119 = v110;
          store6 = [v69 store];
          syncIdentity10 = [store6 syncIdentity];
          *v221 = 138543618;
          *&v221[4] = self;
          *&v221[12] = 2114;
          *&v221[14] = syncIdentity10;
          _os_log_impl(&dword_228986000, v119, OS_LOG_TYPE_DEFAULT, "%{public}@: targetIsAChild: Candidate target is not ownChild nor another active target's child, continue seizing (%{public}@)", v221, 0x16u);
        }

        goto LABEL_77;
      }

      if (v111)
      {
        v112 = v110;
        store7 = [v69 store];
        syncIdentity11 = [store7 syncIdentity];
        *v221 = 138543618;
        *&v221[4] = self;
        *&v221[12] = 2114;
        *&v221[14] = syncIdentity11;
        _os_log_impl(&dword_228986000, v112, OS_LOG_TYPE_DEFAULT, "%{public}@: targetIsAChild: Candidate target is another active target's child, do not seize target (%{public}@)", v221, 0x16u);
      }

      [v182 addObject:v69];
LABEL_78:
      v57 = obja + 1;
    }

    while (obja + 1 != v176);
    v176 = [v185 countByEnumeratingWithState:buf objects:&v217 count:16];
  }

  while (v176);
LABEL_80:

  v122 = [v185 mutableCopy];
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v123 = v182;
  v124 = [v123 countByEnumeratingWithState:&v192 objects:&v206 count:16];
  if (v124)
  {
    v125 = *v193;
    do
    {
      for (k = 0; k != v124; ++k)
      {
        if (*v193 != v125)
        {
          objc_enumerationMutation(v123);
        }

        [v122 removeObject:*(*(&v192 + 1) + 8 * k)];
      }

      v124 = [v123 countByEnumeratingWithState:&v192 objects:&v206 count:16];
    }

    while (v124);
  }

  v127 = v122;
  v128 = MEMORY[0x277CBEB98];
  configuration6 = [(HDCloudSyncOperation *)self configuration];
  computedState4 = [configuration6 computedState];
  targets4 = [computedState4 targets];
  v188 = [v128 setWithArray:targets4];

  v132 = [MEMORY[0x277CBEB98] setWithArray:v127];
  v133 = [v188 hk_minus:v132];

  v134 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v135 = v133;
  v136 = [v135 countByEnumeratingWithState:&v202 objects:v221 count:16];
  if (v136)
  {
    v137 = *v203;
    do
    {
      for (m = 0; m != v136; ++m)
      {
        if (*v203 != v137)
        {
          objc_enumerationMutation(v135);
        }

        v139 = *(*(&v202 + 1) + 8 * m);
        storeRecord12 = [v139 storeRecord];
        syncIdentity12 = [storeRecord12 syncIdentity];
        v142 = syncIdentity12 == 0;

        if (!v142)
        {
          storeRecord13 = [v139 storeRecord];
          syncIdentity13 = [storeRecord13 syncIdentity];
          [v134 addObject:syncIdentity13];
        }
      }

      v136 = [v135 countByEnumeratingWithState:&v202 objects:v221 count:16];
    }

    while (v136);
  }

  v200[0] = MEMORY[0x277D85DD0];
  v200[1] = 3221225472;
  v200[2] = __88__HDCloudSyncSeizeAbandonedStoresOperation__removeTargetsBasedOnUnseizedSyncIdentities___block_invoke;
  v200[3] = &unk_278614BF0;
  v201 = v134;
  v145 = v134;
  v146 = [v127 hk_filter:v200];

  configuration7 = [(HDCloudSyncOperation *)self configuration];
  computedState5 = [configuration7 computedState];
  [computedState5 replaceTargets:v146];

LABEL_97:
  v149 = v191;
  v181 = v149;
  if (v175)
  {
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    configuration8 = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration8 repository];
    allCKContainers = [repository allCKContainers];

    v189 = [allCKContainers countByEnumeratingWithState:&v217 objects:v221 count:16];
    if (v189)
    {
      v186 = *v218;
      do
      {
        for (n = 0; n != v189; ++n)
        {
          if (*v218 != v186)
          {
            objc_enumerationMutation(allCKContainers);
          }

          v153 = *(*(&v217 + 1) + 8 * n);
          configuration9 = [(HDCloudSyncOperation *)self configuration];
          repository2 = [configuration9 repository];
          v156 = [repository2 cachedOwnerIdentifierForContainer:v153];
          string = [v156 string];

          configuration10 = [(HDCloudSyncOperation *)self configuration];
          repository3 = [configuration10 repository];
          syncIdentityManager = [repository3 syncIdentityManager];
          currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
          identity = [currentSyncIdentity identity];

          configuration11 = [(HDCloudSyncOperation *)self configuration];
          computedState6 = [configuration11 computedState];
          targets5 = [computedState6 targets];
          *&v210 = MEMORY[0x277D85DD0];
          *(&v210 + 1) = 3221225472;
          *&v211 = __77__HDCloudSyncSeizeAbandonedStoresOperation__updatedStoreRecordsForContainer___block_invoke;
          *(&v211 + 1) = &unk_2786300E8;
          v166 = v153;
          *&v212 = v166;
          *(&v212 + 1) = string;
          *&v213 = identity;
          v167 = identity;
          v168 = string;
          v169 = [targets5 hk_map:&v210];

          if ([v169 count])
          {
            [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
            v170 = [HDCloudSyncModifyRecordsOperation alloc];
            configuration12 = [(HDCloudSyncOperation *)self configuration];
            v172 = [(HDCloudSyncModifyRecordsOperation *)v170 initWithConfiguration:configuration12 container:v166 recordsToSave:v169 recordIDsToDelete:0];

            *&v202 = MEMORY[0x277D85DD0];
            *(&v202 + 1) = 3221225472;
            *&v203 = __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke;
            *(&v203 + 1) = &unk_278613088;
            *&v204 = self;
            [(HDCloudSyncOperation *)v172 setOnError:&v202];
            *&v206 = MEMORY[0x277D85DD0];
            *(&v206 + 1) = 3221225472;
            *&v207 = __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke_314;
            *(&v207 + 1) = &unk_278614BA8;
            *&v208 = self;
            *(&v208 + 1) = v169;
            [(HDCloudSyncOperation *)v172 setOnSuccess:&v206];
            [(HDCloudSyncOperation *)v172 start];
          }
        }

        v189 = [allCKContainers countByEnumeratingWithState:&v217 objects:v221 count:16];
      }

      while (v189);
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }

  else
  {
    [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v149];
  }
}

id __69__HDCloudSyncSeizeAbandonedStoresOperation__computeTargetsForSeizure__block_invoke(uint64_t a1, void *a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 storeRecord];
  if (!v4 || [v3 purpose] != 1)
  {
    v17 = 0;
    goto LABEL_10;
  }

  v5 = [*(a1 + 32) configuration];
  v6 = [v5 repository];
  v7 = [v3 container];
  v8 = [v6 cachedOwnerIdentifierForContainer:v7];

  v9 = [*(a1 + 32) configuration];
  v10 = [v9 repository];
  v11 = [v10 syncIdentityManager];
  v12 = [v11 currentSyncIdentity];
  v13 = [v12 identity];

  v14 = [v3 storeRecord];
  v15 = [v14 pendingOwner];
  v16 = [v8 string];
  v111 = v13;
  if (![v15 isEqualToString:v16])
  {
    v18 = [v3 storeRecord];
    v19 = [v18 pendingSyncIdentity];
    v20 = [v19 isEqual:v13];

    if (v20)
    {
      goto LABEL_7;
    }

    v23 = [v4 record];
    v24 = [v23 modificationDate];
    v25 = [*(a1 + 32) configuration];
    v26 = [v25 syncDate];
    [v24 timeIntervalSinceDate:v26];
    v28 = fabs(v27);

    if (v28 < *(a1 + 40))
    {
      v17 = 0;
      goto LABEL_8;
    }

    v29 = [*(a1 + 32) configuration];
    v30 = [v29 syncDate];
    v31 = [v30 dateByAddingTimeInterval:-*(a1 + 40)];

    _HKInitializeLogging();
    v32 = MEMORY[0x277CCC328];
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      v35 = v33;
      v36 = [v4 storeIdentifier];
      v37 = [v4 record];
      v38 = [v37 modificationDate];
      *buf = 138544130;
      v116 = v34;
      v32 = MEMORY[0x277CCC328];
      v117 = 2114;
      v118 = v36;
      v119 = 2114;
      v120 = v38;
      v121 = 2114;
      v122 = v31;
      _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ was abandoned. lastModifiedDate:(%{public}@), timeoutDateForOwnershipTransfer:(%{public}@)", buf, 0x2Au);
    }

    if ([v4 hasSequenceWithFutureProtocolVersion])
    {
      _HKInitializeLogging();
      v39 = *v32;
      v21 = v111;
      if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 32);
        *buf = 138543618;
        v116 = v40;
        v117 = 2114;
        v118 = v4;
        _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ is abandoned, but is from the future and cannot be seized by this device.", buf, 0x16u);
      }

      v41 = 0;
      v17 = 0;
      goto LABEL_58;
    }

    if (_os_feature_enabled_impl())
    {
      v42 = [*(a1 + 32) profile];
      v43 = [v42 syncEngine];
      v44 = [v43 allSyncEntityVersionsByIdentifier];
      v45 = [v4 hasSequenceWithFutureSyncEntityVersions:v44];

      if (v45)
      {
        _HKInitializeLogging();
        v46 = *v32;
        if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
        {
          v47 = *(a1 + 32);
          *buf = 138543618;
          v116 = v47;
          v117 = 2114;
          v118 = v4;
          v48 = "%{public}@: store record: %{public}@ is abandoned, but has entities from the future and cannot be seized by this device.";
LABEL_30:
          _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    v49 = [v4 currentSequenceHeaderRecord];
    if (v49)
    {
    }

    else
    {
      v50 = [v4 record];
      v51 = [v50 modificationDate];
      v52 = [*(a1 + 32) configuration];
      v53 = [v52 syncDate];
      [v51 timeIntervalSinceDate:v53];
      v55 = fabs(v54);
      v56 = *MEMORY[0x277CCB778];

      if (v55 < v56)
      {
        _HKInitializeLogging();
        v46 = *v32;
        if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
        {
          v57 = *(a1 + 32);
          *buf = 138543618;
          v116 = v57;
          v117 = 2114;
          v118 = v4;
          v48 = "%{public}@: store record: %{public}@ is abandoned, but it has no sequence records, so we don't know if we can safely seize it";
          goto LABEL_30;
        }

LABEL_31:
        v41 = 0;
        v17 = 0;
        v21 = v111;
LABEL_58:

        goto LABEL_9;
      }
    }

    v110 = v31;
    v105 = [*(a1 + 32) configuration];
    v104 = [v105 repository];
    v102 = [v104 profile];
    v100 = [v102 legacyRepositoryProfile];
    v58 = [v4 storeIdentifier];
    v59 = [v4 ownerIdentifier];
    v60 = [v4 syncIdentity];
    v61 = [v3 zoneIdentifier];
    v62 = [v61 containerIdentifier];
    v114 = 0;
    v63 = [HDCloudSyncStore syncStoreForProfile:v100 storeIdentifier:v58 ownerIdentifier:v59 syncIdentity:v60 containerIdentifier:v62 error:&v114];
    log = v114;

    if (v63)
    {
      v113 = log;
      v64 = [v63 receivedSyncAnchorMapWithError:&v113];
      v41 = v113;

      v65 = [(HDCloudSyncSeizeAbandonedStoresOperation *)*(a1 + 32) anchorMapForTakeoverForTarget:v3];
      v66 = [v63 _syncAnchorMapByStrippingBlockedEntities:v65];

      if (v66 && (HDSyncAnchorMapIsSuperset(v66, v64) & 1) == 0)
      {
        v107 = v64;
        _HKInitializeLogging();
        v77 = MEMORY[0x277CCC328];
        v78 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v79 = v41;
          v80 = *(a1 + 32);
          loga = v78;
          v81 = [v4 storeIdentifier];
          *buf = 138543874;
          v116 = v80;
          v41 = v79;
          v117 = 2114;
          v118 = v81;
          v119 = 2114;
          v120 = v63;
          _os_log_impl(&dword_228986000, loga, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ has been abandoned, but the local anchor map in the local store: %{public}@ is less than the received anchor map.", buf, 0x20u);
        }

        _HKInitializeLogging();
        v82 = *v77;
        if (os_log_type_enabled(*v77, OS_LOG_TYPE_DEFAULT))
        {
          v83 = *(a1 + 32);
          *buf = 138543618;
          v116 = v83;
          v117 = 2114;
          v118 = v107;
          _os_log_impl(&dword_228986000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: Local anchor map: %{public}@", buf, 0x16u);
        }

        _HKInitializeLogging();
        v84 = *v77;
        if (os_log_type_enabled(*v77, OS_LOG_TYPE_DEFAULT))
        {
          v85 = *(a1 + 32);
          *buf = 138543618;
          v116 = v85;
          v117 = 2114;
          v118 = v66;
          _os_log_impl(&dword_228986000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@: Received anchor map: %{public}@", buf, 0x16u);
        }

        v17 = 0;
        v31 = v110;
        v21 = v111;
        goto LABEL_57;
      }

      v31 = v110;
      v21 = v111;
      v67 = MEMORY[0x277CCC328];
LABEL_54:

      _HKInitializeLogging();
      v98 = *v67;
      if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
      {
        v99 = *(a1 + 32);
        *buf = 138543618;
        v116 = v99;
        v117 = 2114;
        v118 = v4;
        _os_log_impl(&dword_228986000, v98, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ has been abandoned, and will be seized.", buf, 0x16u);
      }

      v17 = [v3 targetByAddingOptions:2];
LABEL_57:

      goto LABEL_58;
    }

    v101 = [v4 storeIdentifier];
    v68 = [*(a1 + 32) configuration];
    v69 = [v68 repository];
    v70 = [v69 profile];
    v71 = [v70 legacyRepositoryProfile];
    v112 = log;
    v72 = [HDCloudSyncStoreEntity persistedStateForStoreUUID:v101 profile:v71 error:&v112];
    v103 = v112;

    if (!v72)
    {
      _HKInitializeLogging();
      v86 = *MEMORY[0x277CCC328];
      v31 = v110;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v87 = *(a1 + 32);
        v88 = v86;
        v89 = [v4 storeIdentifier];
        *buf = 138543618;
        v116 = v87;
        v117 = 2114;
        v118 = v89;
        _os_log_impl(&dword_228986000, v88, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ was not found locally", buf, 0x16u);
      }

      v17 = 0;
      v21 = v111;
      v41 = v103;
      v63 = 0;
      goto LABEL_57;
    }

    [v72 ownerIdentifier];
    v74 = v73 = v72;
    v75 = [v4 ownerIdentifier];
    v76 = v75;
    v31 = v110;
    v21 = v111;
    v67 = MEMORY[0x277CCC328];
    v106 = v73;
    if (v74 == v75)
    {
      v90 = [v73 containerIdentifier];
      v91 = [v3 zoneIdentifier];
      v92 = [v91 containerIdentifier];

      v93 = v90 == v92;
      v67 = MEMORY[0x277CCC328];
      v21 = v111;
      if (v93)
      {
        v63 = 0;
LABEL_53:
        v41 = v103;
        v64 = v106;
        goto LABEL_54;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v94 = *v67;
    v63 = 0;
    if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *(a1 + 32);
      v96 = v94;
      v97 = [v4 storeIdentifier];
      *buf = 138543618;
      v116 = v95;
      v117 = 2114;
      v118 = v97;
      _os_log_impl(&dword_228986000, v96, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ is also present in another container. Seize this.", buf, 0x16u);

      v21 = v111;
    }

    goto LABEL_53;
  }

LABEL_7:
  v17 = [v3 targetByAddingOptions:2];
LABEL_8:
  v21 = v111;
LABEL_9:

LABEL_10:

  return v17;
}

- (id)anchorMapForTakeoverForTarget:(void *)target
{
  v3 = a2;
  v4 = v3;
  if (target)
  {
    storeRecord = [v3 storeRecord];
    shardPredicate = [storeRecord shardPredicate];
    type = [shardPredicate type];

    if (type == 2)
    {
      v8 = [HDCloudSyncCachedZone alloc];
      zoneIdentifier = [v4 zoneIdentifier];
      configuration = [target configuration];
      repository = [configuration repository];
      configuration2 = [target configuration];
      accessibilityAssertion = [configuration2 accessibilityAssertion];
      storeRecord2 = [(HDCloudSyncCachedZone *)v8 initForZoneIdentifier:zoneIdentifier repository:repository accessibilityAssertion:accessibilityAssertion];

      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__210;
      v28 = __Block_byref_object_dispose__210;
      v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = objc_opt_class();
      v23 = 0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke;
      v20[3] = &unk_278615E08;
      v21 = v4;
      v22 = &v24;
      [storeRecord2 recordsForClass:v15 epoch:0 error:&v23 enumerationHandler:v20];
      v16 = v23;
      syncAnchorMap = [HDSyncAnchorMap syncAnchorMapWithDictionary:v25[5]];

      _Block_object_dispose(&v24, 8);
    }

    else
    {
      storeRecord2 = [v4 storeRecord];
      sequenceRecord = [storeRecord2 sequenceRecord];
      syncAnchorMap = [sequenceRecord syncAnchorMap];
    }
  }

  else
  {
    syncAnchorMap = 0;
  }

  return syncAnchorMap;
}

uint64_t __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 record];
  v5 = [*(a1 + 32) storeRecord];
  v6 = [v5 sequenceRecord];
  v7 = [HDCloudSyncChangeRecord isChangeRecord:v4 inSequence:v6];

  if (v7)
  {
    v8 = [v3 decodedSyncAnchorRangeMap];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke_2;
    v10[3] = &unk_27862B7F8;
    v10[4] = *(a1 + 40);
    [v8 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v10];
  }

  return 1;
}

void __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = a2;
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 integerValue];

  if (a4 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a4;
  }

  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  [v11 setObject:v12 forKey:v7];
}

uint64_t __88__HDCloudSyncSeizeAbandonedStoresOperation__removeTargetsBasedOnUnseizedSyncIdentities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeRecord];
  v4 = [v3 syncIdentity];
  LODWORD(v2) = [v2 containsObject:v4];

  return v2 ^ 1;
}

BOOL __74__HDCloudSyncSeizeAbandonedStoresOperation__childSyncIdentitiesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [v7 syncIdentityManager];
  v19 = 0;
  v9 = [v8 childIdentitiesForCurrentSyncIdentityWithTransaction:v6 error:&v19];

  v10 = v19;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (!v13)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = v10;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read child sync identities: %{public}@", buf, 0x16u);
    }

    v15 = v10;
    if (v15)
    {
      if (a3)
      {
        v16 = v15;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v13 != 0;
}

void __80__HDCloudSyncSeizeAbandonedStoresOperation__childTargetBySyncIdentityForParent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) storeRecord];
  v7 = [v6 sequenceRecord];
  v8 = [v7 includedChildSyncIdentities];
  v9 = [v14 storeRecord];
  v10 = [v9 syncIdentity];
  v11 = [v8 containsObject:v10];

  if (v11)
  {
    v12 = [v14 storeRecord];
    v13 = [v12 syncIdentity];
    v5[2](v5, v13, v14);
  }
}

id __77__HDCloudSyncSeizeAbandonedStoresOperation__updatedStoreRecordsForContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 container];
  v5 = [v4 containerIdentifier];
  v6 = [*(a1 + 32) containerIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7 && ([v3 options] & 2) != 0 && (objc_msgSend(v3, "storeRecord"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "pendingOwner"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *(a1 + 40)), v9, v8, (v10 & 1) == 0) && (objc_msgSend(v3, "storeRecord"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "pendingSyncIdentity"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", *(a1 + 48)), v12, v11, (v13 & 1) == 0))
  {
    v16 = *(a1 + 40);
    v17 = [v3 storeRecord];
    [v17 setPendingOwner:v16];

    v18 = *(a1 + 48);
    v19 = [v3 storeRecord];
    [v19 setPendingSyncIdentity:v18];

    v20 = [v3 storeRecord];
    v14 = [v20 record];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to mark pending owner for store records: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

uint64_t __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke_314(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = [v3 count];
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Marked pending owner in %ld store records.", &v7, 0x16u);
  }

  return [*(*(a1 + 32) + 104) finishTask];
}

@end