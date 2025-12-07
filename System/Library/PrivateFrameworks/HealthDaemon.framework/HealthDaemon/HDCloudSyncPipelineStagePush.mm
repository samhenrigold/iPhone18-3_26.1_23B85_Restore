@interface HDCloudSyncPipelineStagePush
+ (id)operationTagDependencies;
- (HDCloudSyncCompoundOperation)_computePushAndCleanupOperationForPushStores:(uint64_t)stores error:;
- (HDCloudSyncPipelineStagePush)initWithConfiguration:(id)configuration cloudState:(id)state;
- (void)_analytics_operationFinishedWithSuccess:(void *)success;
- (void)main;
@end

@implementation HDCloudSyncPipelineStagePush

+ (id)operationTagDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (HDCloudSyncPipelineStagePush)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v8.receiver = self;
  v8.super_class = HDCloudSyncPipelineStagePush;
  v4 = [(HDCloudSyncPipelineStage *)&v8 initWithConfiguration:configuration cloudState:state];
  v5 = v4;
  if (v4)
  {
    [(HDCloudSyncPipelineStage *)v4 setExpectedSendSize:2];
    v6 = objc_alloc_init(HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage);
    [(HDCloudSyncPipelineStagePush *)v5 setFullSyncMetricsStorage:v6];
  }

  return v5;
}

- (void)main
{
  v84 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  context = [configuration context];
  options = [context options];

  if ((options & 4) == 0)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration2 repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];
    v77 = 0;
    v10 = HDUpgradedToSyncIdentity(legacyRepositoryProfile, &v77);
    v11 = v77;

    if (v11)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v11];
LABEL_35:

      return;
    }

    if (v10)
    {
      profile2 = [(HDCloudSyncOperation *)self profile];
      syncIdentityManager = [profile2 syncIdentityManager];
      currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
      identity = [currentSyncIdentity identity];
      currentSyncIdentity = self->_currentSyncIdentity;
      self->_currentSyncIdentity = identity;
    }

    else if (!self)
    {
      v42 = 0;
LABEL_31:
      v76 = 0;
      v61 = [(HDCloudSyncPipelineStagePush *)self _computePushAndCleanupOperationForPushStores:v42 error:&v76];
      v11 = v76;
      if (v61)
      {
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        repository2 = [configuration3 repository];
        profile3 = [repository2 profile];
        legacyRepositoryProfile2 = [profile3 legacyRepositoryProfile];
        HDUpdateOldestSampleStartDateForProfile(legacyRepositoryProfile2);

        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __36__HDCloudSyncPipelineStagePush_main__block_invoke;
        v73[3] = &unk_278614BA8;
        v74 = v42;
        selfCopy = self;
        [v61 setOnSuccess:v73];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __36__HDCloudSyncPipelineStagePush_main__block_invoke_304;
        v72[3] = &unk_278613088;
        v72[4] = self;
        [v61 setOnError:v72];
        progress = [v61 progress];
        totalUnitCount = [progress totalUnitCount];

        progress2 = [(HDCloudSyncOperation *)self progress];
        [progress2 setTotalUnitCount:{objc_msgSend(progress2, "totalUnitCount") + totalUnitCount}];

        progress3 = [(HDCloudSyncOperation *)self progress];
        progress4 = [v61 progress];
        [progress3 addChild:progress4 withPendingUnitCount:totalUnitCount];

        [v61 start];
      }

      else
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v11];
      }

      goto LABEL_35;
    }

    configuration4 = [(HDCloudSyncOperation *)self configuration];
    computedState = [configuration4 computedState];
    pushTargets = [computedState pushTargets];
    v21 = [pushTargets hk_map:&__block_literal_global_354];

    v22 = v21;
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration5 repository];
    primaryCKContainer = [repository3 primaryCKContainer];

    configuration6 = [(HDCloudSyncOperation *)self configuration];
    repository4 = [configuration6 repository];
    v28 = [repository4 cachedOwnerIdentifierForContainer:primaryCKContainer];
    string = [v28 string];

    profile4 = [(HDCloudSyncOperation *)self profile];
    configuration7 = [(HDCloudSyncOperation *)self configuration];
    syncDate = [configuration7 syncDate];
    containerIdentifier = [primaryCKContainer containerIdentifier];
    v34 = self->_currentSyncIdentity;
    v79 = 0;
    v35 = [HDCloudSyncStore createOrUpdateShardStoresForProfile:profile4 throughDate:syncDate ownerIdentifier:string containerIdentifier:containerIdentifier syncIdentity:v34 error:&v79];
    v36 = v79;

    if (v35)
    {
      if ([v35 count])
      {
        v37 = [v22 hk_mapToSet:&__block_literal_global_352];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __66__HDCloudSyncPipelineStagePush__pushStoresByAddingShardsToStores___block_invoke_2;
        v82 = &unk_278614CA8;
        v83 = v37;
        v38 = v37;
        v39 = [v35 hk_filter:buf];
        v40 = [v22 arrayByAddingObjectsFromArray:v39];

LABEL_16:
        if ([v40 count])
        {
          v42 = v40;
        }

        else
        {
          v71 = v22;
          configuration8 = [(HDCloudSyncOperation *)self configuration];
          configuration9 = [(HDCloudSyncOperation *)self configuration];
          repository5 = [configuration9 repository];
          primaryCKContainer2 = [repository5 primaryCKContainer];
          v79 = 0;
          v47 = [configuration8 pushStoresForContainer:primaryCKContainer2 error:&v79];
          v48 = v79;
          firstObject = [v47 firstObject];
          storeIdentifier = [firstObject storeIdentifier];

          if (storeIdentifier)
          {
            uUID = storeIdentifier;
          }

          else
          {
            if (v48)
            {
              _HKInitializeLogging();
              v52 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v48;
                _os_log_error_impl(&dword_228986000, v52, OS_LOG_TYPE_ERROR, "Failed to compute sync store identifier: %{public}@", buf, 0xCu);
              }
            }

            uUID = [MEMORY[0x277CCAD78] UUID];
          }

          v53 = uUID;

          configuration10 = [(HDCloudSyncOperation *)self configuration];
          configuration11 = [(HDCloudSyncOperation *)self configuration];
          repository6 = [configuration11 repository];
          primaryCKContainer3 = [repository6 primaryCKContainer];
          v78 = 0;
          v58 = [configuration10 pushStoreWithIdentifier:v53 container:primaryCKContainer3 error:&v78];
          v59 = v78;

          if (v58)
          {
            v80 = v58;
            v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
            v22 = v71;
          }

          else
          {
            _HKInitializeLogging();
            v60 = *MEMORY[0x277CCC328];
            v22 = v71;
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v53;
              *&buf[12] = 2114;
              *&buf[14] = v59;
              _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "Failed to create sync store with ID: %{public}@ error:%{public}@", buf, 0x16u);
            }

            v42 = MEMORY[0x277CBEBF8];
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      _HKInitializeLogging();
      v41 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v36;
        _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Failed to lookup look up shards during push store computation: %{public}@", buf, 0xCu);
      }
    }

    v40 = v22;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping due to pipeline options.", buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
}

- (HDCloudSyncCompoundOperation)_computePushAndCleanupOperationForPushStores:(uint64_t)stores error:
{
  v244 = *MEMORY[0x277D85DE8];
  v4 = a2;
  selfCopy = self;
  v196 = v4;
  if (self)
  {
    v5 = [v4 hk_firstObjectPassingTest:&__block_literal_global_333];
    configuration = [self configuration];
    computedState = [configuration computedState];
    pushTargets = [computedState pushTargets];
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 3221225472;
    v213[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2;
    v213[3] = &unk_278614BF0;
    v9 = v5;
    v214 = v9;
    v195 = [pushTargets hk_firstObjectPassingTest:v213];

    v198 = v9;
    v199 = v196;
    configuration2 = [selfCopy configuration];
    computedState2 = [configuration2 computedState];
    pushTargets2 = [computedState2 pushTargets];
    v13 = [pushTargets2 count] == 0;

    if (v13)
    {
      _HKInitializeLogging();
      v66 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *v240 = 138543362;
        *&v240[4] = selfCopy;
        _os_log_impl(&dword_228986000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; no push targets found", v240, 0xCu);
      }

      v67 = 0;
      configuration19 = 1;
      v68 = 2;
    }

    else
    {
      configuration3 = [selfCopy configuration];
      context = [configuration3 context];
      v16 = ([context options] & 8) == 0;

      if (v16)
      {
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v17 = v199;
        v18 = [v17 countByEnumeratingWithState:&v221 objects:v240 count:16];
        if (v18)
        {
          v19 = *v222;
          v20 = MEMORY[0x277CCE2B8];
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v222 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v221 + 1) + 8 * i);
              v23 = [v22 persistedStateWithError:stores];
              if (!v23)
              {
                v192 = 0;
                v67 = 0;
                configuration19 = 0;
LABEL_42:

                goto LABEL_65;
              }

              storeIdentifier = [v22 storeIdentifier];
              storeIdentifier2 = [v198 storeIdentifier];
              v26 = [storeIdentifier isEqual:storeIdentifier2];

              if ((v26 & 1) == 0)
              {
                rebaseDeadline = [v23 rebaseDeadline];
                v28 = rebaseDeadline == 0;

                if (!v28)
                {
                  rebaseDeadline2 = [v23 rebaseDeadline];
                  configuration4 = [selfCopy configuration];
                  syncDate = [configuration4 syncDate];
                  [rebaseDeadline2 timeIntervalSinceDate:syncDate];
                  v33 = v32;

                  if (v33 < *v20)
                  {
                    shardPredicate = [v22 shardPredicate];
                    v67 = [shardPredicate description];
                    v70 = v67;

                    configuration19 = 1;
                    v192 = 4;
                    goto LABEL_42;
                  }
                }
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v221 objects:v240 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        obj = v17;
        v34 = [obj countByEnumeratingWithState:&v217 objects:&v236 count:16];
        if (v34)
        {
          v35 = *v218;
          while (2)
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v218 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v217 + 1) + 8 * j);
              v38 = [v37 persistedStateWithError:stores];
              if (!v38)
              {
                v192 = 0;
                v67 = 0;
                configuration19 = 0;
LABEL_53:

                goto LABEL_65;
              }

              storeIdentifier3 = [v37 storeIdentifier];
              storeIdentifier4 = [v198 storeIdentifier];
              v41 = [storeIdentifier3 isEqual:storeIdentifier4];

              if ((v41 & 1) == 0)
              {
                lastSyncDate = [v38 lastSyncDate];
                if (!lastSyncDate || ([v38 lastSyncDate], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selfCopy, "configuration"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "syncDate"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "timeIntervalSinceDate:", v45), v47 = v46 < -1814400.0, v45, v44, v43, lastSyncDate, v47))
                {
                  _HKInitializeLogging();
                  v71 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v72 = v71;
                    lastSyncDate2 = [v38 lastSyncDate];
                    *v230 = 138544130;
                    *&v230[4] = selfCopy;
                    *&v230[12] = 2114;
                    *&v230[14] = v37;
                    *&v230[22] = 2114;
                    v231 = lastSyncDate2;
                    LOWORD(v232) = 2114;
                    *(&v232 + 2) = v37;
                    _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; %{public}@ last sync date (%{public}@) is too old for %{public}@", v230, 0x2Au);
                  }

                  shardPredicate2 = [v37 shardPredicate];
                  v67 = [shardPredicate2 description];
                  v75 = v67;

                  configuration19 = 1;
                  v192 = 5;
                  goto LABEL_53;
                }

                if ([v38 pendingFullSync])
                {
                  _HKInitializeLogging();
                  v77 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    *v230 = 138543362;
                    *&v230[4] = selfCopy;
                    _os_log_impl(&dword_228986000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; continuing interrupted full sync", v230, 0xCu);
                  }

                  v192 = 0;
                  v67 = 0;
                  configuration19 = 1;
                  goto LABEL_53;
                }
              }
            }

            v34 = [obj countByEnumeratingWithState:&v217 objects:&v236 count:16];
            if (v34)
            {
              continue;
            }

            break;
          }
        }

        if (!v198)
        {
          _HKInitializeLogging();
          v76 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *v230 = 138543362;
            *&v230[4] = selfCopy;
            _os_log_impl(&dword_228986000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; no staging store found", v230, 0xCu);
          }

          v67 = 0;
          v192 = 1;
          configuration19 = 1;
LABEL_65:

          v82 = v67;
          v83 = configuration19;
          if (!configuration19)
          {
            v203 = 0;
LABEL_120:

            goto LABEL_121;
          }

          v191 = v82;
          if (configuration19 == 1)
          {
            v84 = v199;
            v85 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
            configuration5 = [selfCopy configuration];
            accessibilityAssertion = [configuration5 accessibilityAssertion];
            v88 = [v85 contextWithAccessibilityAssertion:accessibilityAssertion];

            configuration6 = [selfCopy configuration];
            repository = [configuration6 repository];
            profile = [repository profile];
            database = [profile database];
            *v240 = MEMORY[0x277D85DD0];
            *&v240[8] = 3221225472;
            *&v240[16] = __82__HDCloudSyncPipelineStagePush__performPrerequisitesForFullSync_withReason_error___block_invoke;
            v241 = &unk_278614698;
            v243 = v192;
            *&v242 = selfCopy;
            v93 = v84;
            *(&v242 + 1) = v93;
            v94 = [database performTransactionWithContext:v88 error:stores block:v240 inaccessibilityHandler:0];

            v83 = 1;
            if (!v94)
            {
              v203 = 0;
LABEL_119:
              v82 = v191;
              goto LABEL_120;
            }
          }

          v95 = v83 == 1;
          v212[0] = MEMORY[0x277D85DD0];
          v212[1] = 3221225472;
          v212[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_3;
          v212[3] = &unk_278614CA8;
          v212[4] = selfCopy;
          v190 = [v199 hk_filter:v212];
          if (v95)
          {
            v96 = v190;
          }

          else
          {
            v225 = v198;
            v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v225 count:1];
          }

          obja = v96;
          v97 = [HDCloudSyncCompoundOperation alloc];
          configuration7 = [selfCopy configuration];
          v203 = [(HDCloudSyncCompoundOperation *)v97 initWithConfiguration:configuration7 cloudState:0 name:@"Push Stores" continueOnSubOperationError:1];

          configuration8 = [selfCopy configuration];
          context2 = [configuration8 context];
          v101 = ([context2 options] & 0x80) == 0;

          if (v101)
          {
            [(HDCloudSyncCompoundOperation *)v203 addOperationOfClass:objc_opt_class() transitionHandler:0];
          }

          v200 = [obja sortedArrayUsingComparator:&__block_literal_global_11];
          v238 = 0u;
          v239 = 0u;
          v236 = 0u;
          v237 = 0u;
          v102 = [v200 countByEnumeratingWithState:&v236 objects:v240 count:16];
          if (v102)
          {
            v103 = *v237;
            do
            {
              for (k = 0; k != v102; ++k)
              {
                if (*v237 != v103)
                {
                  objc_enumerationMutation(v200);
                }

                v105 = *(*(&v236 + 1) + 8 * k);
                v106 = [HDCloudSyncCompoundOperation alloc];
                configuration9 = [selfCopy configuration];
                v108 = [(HDCloudSyncCompoundOperation *)v106 initWithConfiguration:configuration9 cloudState:0 name:@"Prepare & Push" continueOnSubOperationError:0];

                v109 = [HDCloudSyncPreparePushZoneForStoreOperation alloc];
                configuration10 = [selfCopy configuration];
                v111 = [(HDCloudSyncPreparePushZoneForStoreOperation *)v109 initWithConfiguration:configuration10 cloudState:0 store:v105];

                [(HDCloudSyncCompoundOperation *)v108 addOperation:v111 transitionHandler:0];
                v112 = [HDCloudSyncPushStoreOperation alloc];
                configuration11 = [selfCopy configuration];
                cloudState = [selfCopy cloudState];
                v115 = [(HDCloudSyncPushStoreOperation *)v112 initWithConfiguration:configuration11 cloudState:cloudState target:0];

                *&v221 = MEMORY[0x277D85DD0];
                *(&v221 + 1) = 3221225472;
                *&v222 = __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke;
                *(&v222 + 1) = &unk_278614D48;
                v116 = v115;
                *&v223 = v116;
                v117 = v111;
                *(&v223 + 1) = v117;
                [(HDCloudSyncCompoundOperation *)v108 addOperation:v116 transitionHandler:&v221];
                shardPredicate3 = [v105 shardPredicate];
                LOBYTE(cloudState) = [shardPredicate3 type] == 2;

                if ((cloudState & 1) == 0)
                {
                  v119 = [HDCloudSyncBlockOperation alloc];
                  configuration12 = [selfCopy configuration];
                  cloudState2 = [selfCopy cloudState];
                  *&v217 = MEMORY[0x277D85DD0];
                  *(&v217 + 1) = 3221225472;
                  *&v218 = __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke_2;
                  *(&v218 + 1) = &unk_278614D20;
                  *&v219 = selfCopy;
                  *(&v219 + 1) = v105;
                  v122 = [(HDCloudSyncBlockOperation *)v119 initWithConfiguration:configuration12 cloudState:cloudState2 synchronousBlock:&v217];

                  [(HDCloudSyncCompoundOperation *)v108 addOperation:v122 transitionHandler:0];
                }

                [(HDCloudSyncCompoundOperation *)v203 addOperation:v108 transitionHandler:0];
              }

              v102 = [v200 countByEnumeratingWithState:&v236 objects:v240 count:16];
            }

            while (v102);
          }

          configuration13 = [selfCopy configuration];
          repository2 = [configuration13 repository];
          profile2 = [repository2 profile];
          cloudSyncManager = [profile2 cloudSyncManager];
          if ([cloudSyncManager supportsRebase])
          {
            configuration14 = [selfCopy configuration];
            context3 = [configuration14 context];
            v129 = ([context3 options] & 0x40) == 0;

            if (!v129)
            {
              v201 = MEMORY[0x277CBEBF8];
LABEL_90:
              if (configuration19 == 1)
              {
                _HKInitializeLogging();
                v130 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v131 = v130;
                  v132 = [v190 count];
                  *v240 = 138543618;
                  *&v240[4] = selfCopy;
                  *&v240[12] = 2050;
                  *&v240[14] = v132;
                  _os_log_impl(&dword_228986000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@: Stores pending full sync %{public}lu", v240, 0x16u);
                }

                v211[0] = MEMORY[0x277D85DD0];
                v211[1] = 3221225472;
                v211[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_334;
                v211[3] = &unk_278614CD0;
                v211[4] = selfCopy;
                [v190 enumerateObjectsUsingBlock:v211];
                storeRecord = [v195 storeRecord];
                v134 = storeRecord == 0;

                if (!v134)
                {
                  storeRecord2 = [v195 storeRecord];
                  v136 = [v201 arrayByAddingObject:storeRecord2];

                  v201 = v136;
                }
              }

              if ([v201 count])
              {
                v137 = [HDCloudSyncDeleteStoresOperation alloc];
                configuration15 = [selfCopy configuration];
                cloudState3 = [selfCopy cloudState];
                v140 = [(HDCloudSyncDeleteStoresOperation *)v137 initWithConfiguration:configuration15 cloudState:cloudState3 storeRecordsToDelete:v201];
                v209[0] = MEMORY[0x277D85DD0];
                v209[1] = 3221225472;
                v209[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_337;
                v209[3] = &unk_278614CF8;
                v141 = v203;
                v210 = v141;
                v142 = [(HDCloudSyncOperation *)v140 operationWithRunCondition:v209];

                [(HDCloudSyncCompoundOperation *)v141 addOperation:v142 transitionHandler:0];
              }

              if (v198 && configuration19 == 1)
              {
                v143 = [HDCloudSyncBlockOperation alloc];
                configuration16 = [selfCopy configuration];
                cloudState4 = [selfCopy cloudState];
                v207[0] = MEMORY[0x277D85DD0];
                v207[1] = 3221225472;
                v207[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2_340;
                v207[3] = &unk_278614D20;
                v207[4] = selfCopy;
                v208 = v198;
                v146 = [(HDCloudSyncBlockOperation *)v143 initWithConfiguration:configuration16 cloudState:cloudState4 synchronousBlock:v207];
                v205[0] = MEMORY[0x277D85DD0];
                v205[1] = 3221225472;
                v205[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_3_342;
                v205[3] = &unk_278614CF8;
                v147 = v203;
                v206 = v147;
                v148 = [(HDCloudSyncOperation *)v146 operationWithRunCondition:v205];

                [(HDCloudSyncCompoundOperation *)v147 addOperation:v148 transitionHandler:0];
              }

              v149 = v191;
              Current = CFAbsoluteTimeGetCurrent();
              fullSyncMetricsStorage = [selfCopy fullSyncMetricsStorage];
              [fullSyncMetricsStorage setCurrentRunStartTime:Current];

              fullSyncMetricsStorage2 = [selfCopy fullSyncMetricsStorage];
              ongoingSyncMetrics = [fullSyncMetricsStorage2 ongoingSyncMetrics];

              fullSyncMetricsStorage3 = [selfCopy fullSyncMetricsStorage];
              [fullSyncMetricsStorage3 startTime];
              v156 = v155;

              fullSyncMetricsStorage4 = [selfCopy fullSyncMetricsStorage];
              [fullSyncMetricsStorage4 activeDuration];
              v159 = v158;

              fullSyncMetricsStorage5 = [selfCopy fullSyncMetricsStorage];
              numberOfRuns = [fullSyncMetricsStorage5 numberOfRuns];

              if (ongoingSyncMetrics)
              {
                _HKInitializeLogging();
                v162 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v163 = v162;
                  v164 = [ongoingSyncMetrics objectForKeyedSubscript:@"fullSyncReason"];
                  v165 = [MEMORY[0x277CCABB0] numberWithDouble:v156];
                  v166 = [MEMORY[0x277CCABB0] numberWithDouble:v159];
                  v167 = [MEMORY[0x277CCABB0] numberWithLongLong:numberOfRuns];
                  *v240 = 138413058;
                  *&v240[4] = v164;
                  *&v240[12] = 2112;
                  *&v240[14] = v165;
                  *&v240[22] = 2112;
                  v241 = v166;
                  LOWORD(v242) = 2112;
                  *(&v242 + 2) = v167;
                  _os_log_impl(&dword_228986000, v163, OS_LOG_TYPE_DEFAULT, "Ongoing Full Sync started with reason: %@, startTime: %@, actively spent time: %@, number of runs completed %@  ", v240, 0x2Au);
                }
              }

              if (!v192)
              {
                v171 = ongoingSyncMetrics;
LABEL_118:

                goto LABEL_119;
              }

              v168 = HKCloudSyncFullSyncReasonToString();
              if (ongoingSyncMetrics)
              {
                v169 = [ongoingSyncMetrics objectForKeyedSubscript:@"fullSyncReason"];
                v170 = [v168 isEqualToString:v169];

                if (v170)
                {
                  v171 = ongoingSyncMetrics;
LABEL_117:

                  goto LABEL_118;
                }

                _HKInitializeLogging();
                v172 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  *v240 = 138412290;
                  *&v240[4] = v168;
                  _os_log_impl(&dword_228986000, v172, OS_LOG_TYPE_DEFAULT, "Full Sync was ongoing, but restarted with new reason: %@", v240, 0xCu);
                }

                configuration17 = [selfCopy configuration];
                repository3 = [configuration17 repository];
                profile3 = [repository3 profile];
                daemon = [profile3 daemon];
                analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];

                v178 = [ongoingSyncMetrics objectForKeyedSubscript:@"fullSyncReason"];
                v179 = [ongoingSyncMetrics objectForKeyedSubscript:@"shardResponsible"];
                v180 = [ongoingSyncMetrics objectForKeyedSubscript:@"daysSincePreviousFullSync"];
                v181 = [MEMORY[0x277CCABB0] numberWithLongLong:numberOfRuns];
                [analyticsSubmissionCoordinator cloudSync_reportFullSyncMetricsWithReason:v178 shard:v179 daysSincePreviousFullSync:v180 totalDuration:v181 activeDuration:1 numberOfRuns:Current - v156 incomplete:v159];
              }

              if (v156 <= 0.0)
              {
                v182 = -1;
              }

              else
              {
                v182 = llround((Current - v156) / 86400.0);
              }

              *&v236 = @"fullSyncReason";
              *(&v236 + 1) = @"shardResponsible";
              v183 = @"none";
              if (v149)
              {
                v183 = v149;
              }

              *v240 = v168;
              *&v240[8] = v183;
              *&v237 = @"daysSincePreviousFullSync";
              v184 = [MEMORY[0x277CCABB0] numberWithInteger:v182];
              *&v240[16] = v184;
              v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v240 forKeys:&v236 count:3];

              fullSyncMetricsStorage6 = [selfCopy fullSyncMetricsStorage];
              [fullSyncMetricsStorage6 setStartTime:Current];

              fullSyncMetricsStorage7 = [selfCopy fullSyncMetricsStorage];
              [fullSyncMetricsStorage7 setOngoingSyncMetrics:v171];

              fullSyncMetricsStorage8 = [selfCopy fullSyncMetricsStorage];
              [fullSyncMetricsStorage8 setActiveDuration:0.0];

              fullSyncMetricsStorage9 = [selfCopy fullSyncMetricsStorage];
              [fullSyncMetricsStorage9 setNumberOfRuns:0];

              goto LABEL_117;
            }

            configuration13 = [selfCopy configuration];
            repository2 = [configuration13 computedState];
            profile2 = [repository2 pushTargets];
            v201 = [profile2 hk_map:&__block_literal_global_317_0];
          }

          else
          {

            v201 = MEMORY[0x277CBEBF8];
          }

          goto LABEL_90;
        }

        configuration18 = [selfCopy configuration];
        computedState3 = [configuration18 computedState];
        pushTargets3 = [computedState3 pushTargets];
        v215[0] = MEMORY[0x277D85DD0];
        v215[1] = 3221225472;
        v215[2] = __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke;
        v215[3] = &unk_278614BF0;
        v51 = v198;
        v216 = v51;
        v52 = [pushTargets3 hk_firstObjectPassingTest:v215];

        if (v52)
        {
          configuration19 = [selfCopy configuration];
          cachedCloudState = [configuration19 cachedCloudState];
          storeRecord3 = [v52 storeRecord];
          recordID = [storeRecord3 recordID];
          configuration20 = [selfCopy configuration];
          repository4 = [configuration20 repository];
          primaryCKContainer = [repository4 primaryCKContainer];
          containerIdentifier = [primaryCKContainer containerIdentifier];
          v60 = [cachedCloudState zoneForRecordID:recordID containerIdentifier:containerIdentifier error:stores];

          if (!v60)
          {
            v192 = 0;
            configuration19 = 0;
LABEL_64:

            v67 = 0;
            goto LABEL_65;
          }

          *&v233 = 0;
          *(&v233 + 1) = &v233;
          v234 = 0x2020000000;
          v235 = 0;
          v61 = objc_opt_class();
          *v230 = MEMORY[0x277D85DD0];
          *&v230[8] = 3221225472;
          *&v230[16] = __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke_2;
          v231 = &unk_278614C18;
          *&v232 = v51;
          *(&v232 + 1) = &v233;
          v62 = [v60 recordsForClass:v61 error:stores filter:v230];
          if (v62)
          {
            if (*(*(&v233 + 1) + 24) < 400)
            {
              v192 = 0;
              v65 = 1;
            }

            else
            {
              _HKInitializeLogging();
              v63 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v64 = *(*(&v233 + 1) + 24);
                *buf = 138543618;
                v227 = selfCopy;
                v228 = 2048;
                v229 = v64;
                _os_log_impl(&dword_228986000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; staging store has too many change records (%ld)", buf, 0x16u);
              }

              v65 = 0;
              configuration19 = 1;
              v192 = 6;
            }
          }

          else
          {
            v192 = 0;
            v65 = 0;
            configuration19 = 0;
          }

          _Block_object_dispose(&v233, 8);
          if (!v65)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v192 = 0;
        }

        configuration21 = [selfCopy configuration];
        context4 = [configuration21 context];
        v80 = ([context4 options] & 0x2000) == 0;

        if (v80)
        {
          configuration19 = 2;
        }

        else
        {
          _HKInitializeLogging();
          v81 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v233) = 138543362;
            *(&v233 + 4) = selfCopy;
            _os_log_impl(&dword_228986000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync requested", &v233, 0xCu);
          }

          configuration19 = 1;
          v192 = 7;
        }

        goto LABEL_64;
      }

      v67 = 0;
      configuration19 = 1;
      v68 = 3;
    }

    v192 = v68;
    goto LABEL_65;
  }

  v203 = 0;
LABEL_121:

  return v203;
}

void __36__HDCloudSyncPipelineStagePush_main__block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) configuration];
  v4 = [v3 repository];
  v5 = [v4 profile];
  v6 = [v5 legacyRepositoryProfile];
  v51 = 0;
  v7 = [HDCloudSyncStoreEntity resetLastSyncDateExcludingStores:v2 profile:v6 error:&v51];
  v8 = v51;

  v9 = MEMORY[0x277CCC328];
  if (!v7)
  {
    _HKInitializeLogging();
    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 40);
      *buf = 138543618;
      v57 = v46;
      v58 = 2114;
      v59 = v8;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to reset last sync dates, %{public}@", buf, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [*(a1 + 40) configuration];
    v13 = [v12 syncDate];

    v14 = [v11 configuration];
    v15 = [v14 repository];

    v16 = [v15 profile];
    v17 = [v16 legacyRepositoryProfile];

    v50 = HDCloudSyncKeyValueDomainWithProfile(v17);
    v18 = [v15 primaryCKContainer];
    v19 = [v18 containerIdentifier];
    v49 = HDCloudSyncLastSuccessfulPushKeyForContainerIdentifier(v19);

    v20 = [v15 primaryCKContainer];
    v21 = [v20 containerIdentifier];
    v47 = HDCloudSyncLastSuccessfulLitePushKeyForContainerIdentifier(v21);

    v22 = [v11 configuration];
    v23 = [v22 context];
    v24 = [v23 options];

    _HKInitializeLogging();
    v25 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = @"lite ";
      if ((v24 & 0x80) == 0)
      {
        v26 = &stru_283BF39C8;
      }

      *buf = 138543618;
      v57 = v11;
      v58 = 2114;
      v59 = v26;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Recording successful cloud sync %{public}@push", buf, 0x16u);
    }

    if (v24 < 0)
    {
      v27 = v47;
    }

    else
    {
      v27 = v49;
    }

    v55 = 0;
    v28 = [v50 setDate:v13 forKey:v27 error:{&v55, v47}];
    v29 = v55;
    v30 = v8;
    if (v28)
    {
      v31 = [v11 profile];
      v32 = [v31 cloudSyncManager];
      v33 = v32;
      if (v24 < 0)
      {
        [v32 didCompleteSuccessfulLitePushWithDate:v13];
      }

      else
      {
        [v32 didCompleteSuccessfulPushWithDate:v13];
      }
    }

    else
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v35 = @"Lite ";
        if ((v24 & 0x80) == 0)
        {
          v35 = &stru_283BF39C8;
        }

        *buf = 138543618;
        v57 = v29;
        v58 = 2114;
        v59 = v35;
        _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "Failed to record successful %{public}@push: %{public}@.", buf, 0x16u);
      }
    }

    v54 = v29;
    v36 = HDUpgradedToSyncIdentity(v17, &v54);
    v37 = v54;

    if (v36)
    {
      v53 = v37;
      v38 = HDSetCompletedTransitionToSyncIdentity(1, v17, &v53);
      v39 = v53;

      if ((v38 & 1) == 0)
      {
        _HKInitializeLogging();
        v40 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v57 = v39;
          _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "Failed to record completion of transition to sync identity: %{public}@.", buf, 0xCu);
        }
      }
    }

    else
    {
      v39 = v37;
    }

    v8 = v30;
    v52 = v39;
    v41 = HDSetUpgradedToSyncIdentity(1, v17, &v52);
    v42 = v52;

    v43 = MEMORY[0x277CCC328];
    if ((v41 & 1) == 0)
    {
      _HKInitializeLogging();
      v44 = *v43;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v57 = v42;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Failed to record has upgraded to sync identity based stores: %{public}@.", buf, 0xCu);
      }
    }

    HDSetCloudSyncLastSuccessfulPushDateForCoordinatedSync(v13, v17);
    [(HDCloudSyncPipelineStagePush *)v11 _analytics_operationFinishedWithSuccess:?];

    v45 = *(a1 + 40);
  }

  else
  {
    v45 = 0;
  }

  [v45 finishWithSuccess:1 error:0];
}

void __36__HDCloudSyncPipelineStagePush_main__block_invoke_304(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [(HDCloudSyncPipelineStagePush *)v4 _analytics_operationFinishedWithSuccess:?];
  [*(a1 + 32) finishWithSuccess:0 error:v5];
}

- (void)_analytics_operationFinishedWithSuccess:(void *)success
{
  v45 = *MEMORY[0x277D85DE8];
  if (success)
  {
    fullSyncMetricsStorage = [success fullSyncMetricsStorage];
    ongoingSyncMetrics = [fullSyncMetricsStorage ongoingSyncMetrics];

    if (ongoingSyncMetrics)
    {
      Current = CFAbsoluteTimeGetCurrent();
      fullSyncMetricsStorage2 = [success fullSyncMetricsStorage];
      [fullSyncMetricsStorage2 activeDuration];
      v9 = v8;

      fullSyncMetricsStorage3 = [success fullSyncMetricsStorage];
      [fullSyncMetricsStorage3 currentRunStartTime];
      v12 = v9 + Current - v11;

      fullSyncMetricsStorage4 = [success fullSyncMetricsStorage];
      numberOfRuns = [fullSyncMetricsStorage4 numberOfRuns];

      fullSyncMetricsStorage5 = [success fullSyncMetricsStorage];
      v16 = fullSyncMetricsStorage5;
      if (a2)
      {
        [fullSyncMetricsStorage5 startTime];
        v18 = v17;

        v19 = Current - v18;
        configuration = [success configuration];
        repository = [configuration repository];
        profile = [repository profile];
        daemon = [profile daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];

        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [ongoingSyncMetrics objectForKeyedSubscript:@"fullSyncReason"];
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
          v29 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
          v30 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfRuns + 1];
          v37 = 138413058;
          v38 = v27;
          v39 = 2112;
          v40 = v28;
          v41 = 2112;
          v42 = v29;
          v43 = 2112;
          v44 = v30;
          _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Full Sync Completed with following stats: reason: %@, startTime: %@, actively spent time: %@, number of runs completed %@  ", &v37, 0x2Au);
        }

        v31 = [ongoingSyncMetrics objectForKeyedSubscript:@"fullSyncReason"];
        v32 = [ongoingSyncMetrics objectForKeyedSubscript:@"shardResponsible"];
        v33 = [ongoingSyncMetrics objectForKeyedSubscript:@"daysSincePreviousFullSync"];
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfRuns + 1];
        [analyticsSubmissionCoordinator cloudSync_reportFullSyncMetricsWithReason:v31 shard:v32 daysSincePreviousFullSync:v33 totalDuration:v34 activeDuration:0 numberOfRuns:v19 incomplete:v12];

        fullSyncMetricsStorage6 = [success fullSyncMetricsStorage];
        [fullSyncMetricsStorage6 reset];
      }

      else
      {
        [fullSyncMetricsStorage5 setActiveDuration:v12];

        fullSyncMetricsStorage7 = [success fullSyncMetricsStorage];
        [fullSyncMetricsStorage7 setNumberOfRuns:numberOfRuns + 1];
      }
    }
  }
}

uint64_t __64__HDCloudSyncPipelineStagePush__combinedPushOperationForStores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 shardPredicate];
  v7 = [v5 shardPredicate];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (!v7)
  {
    v9 = -1;
    goto LABEL_6;
  }

  v9 = [v6 compare:v7];
  if (!v9)
  {
LABEL_4:
    v10 = [v4 storeIdentifier];
    v11 = [v5 storeIdentifier];
    v9 = [v10 compare:v11];
  }

LABEL_6:

  return v9;
}

uint64_t __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 store];
  v4 = [v3 storeIdentifier];
  v5 = [*(a1 + 32) storeIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

uint64_t __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 storeIdentifier];
  v5 = [*(a1 + 32) storeIdentifier];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = [v3 childRecordCount];
    if (v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    *(*(*(a1 + 40) + 8) + 24) = v9;
  }

  return 0;
}

id __63__HDCloudSyncPipelineStagePush__obsoleteStoreRecordsForCleanup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 purpose] && (objc_msgSend(v2, "options") & 4) != 0)
  {
    v3 = [v2 storeRecord];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __68__HDCloudSyncPipelineStagePush__anyPushStoreRequiresFullSync_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 persistedStateWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [v5 pendingFullSync];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get persistable state for store %@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

BOOL __83__HDCloudSyncPipelineStagePush__unpredicatedSyncAnchorRangeMapForPushStores_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 shardPredicate];
  v3 = [v2 type] == 2;

  return v3;
}

uint64_t __82__HDCloudSyncPipelineStagePush__performPrerequisitesForFullSync_withReason_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v114 = *MEMORY[0x277D85DE8];
  v91 = a2;
  if (*(a1 + 48) != 3)
  {
    v32 = *(a1 + 32);
    v33 = a1;
    v34 = *(a1 + 40);
    v35 = v34;
    if (v32)
    {
      *v110 = 0;
      *&v110[8] = v110;
      *&v110[16] = 0x3032000000;
      v111 = __Block_byref_object_copy__10;
      v112 = __Block_byref_object_dispose__10;
      v113 = 0;
      *&v97 = MEMORY[0x277D85DD0];
      *(&v97 + 1) = 3221225472;
      *&v98 = __68__HDCloudSyncPipelineStagePush__anyPushStoreRequiresFullSync_error___block_invoke;
      *(&v98 + 1) = &unk_278614C60;
      *&v99 = v32;
      *(&v99 + 1) = v110;
      v36 = [v34 hk_containsObjectPassingTest:&v97];
      v37 = *(*&v110[8] + 40);
      if (v37)
      {

        LOBYTE(v32) = 0;
      }

      else
      {
        LOBYTE(v32) = v36;
      }

      _Block_object_dispose(v110, 8);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    if (v38)
    {
      v39 = v38;
      if (a3)
      {
        v40 = v38;
        *a3 = v39;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_89;
    }

    a1 = v33;
    if (v32)
    {
      if (*(v33 + 48) != 4)
      {
        goto LABEL_85;
      }

      v41 = *(v33 + 32);
      v5 = *(a1 + 40);
      if (v41)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v42 = v5;
        v43 = [v42 countByEnumeratingWithState:&v97 objects:v110 count:16];
        if (!v43)
        {
LABEL_51:

          goto LABEL_85;
        }

        v44 = *v98;
LABEL_35:
        v45 = 0;
        while (1)
        {
          if (*v98 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v97 + 1) + 8 * v45);
          v47 = [v46 persistedStateWithError:a3];
          v48 = v47;
          if (!v47)
          {
            goto LABEL_88;
          }

          v49 = [v47 rebaseDeadline];
          v50 = [v41 configuration];
          v51 = [v50 syncDate];
          [v49 timeIntervalSinceDate:v51];
          v53 = v52;

          v54 = [v48 rebaseDeadline];
          v55 = v53 >= *MEMORY[0x277CCE2B8] || v54 == 0;
          v56 = !v55;

          if (v56)
          {
            _HKInitializeLogging();
            v57 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v58 = v57;
              v59 = [v48 rebaseDeadline];
              v60 = *MEMORY[0x277CCE2B8];
              *buf = 138544386;
              *&buf[4] = v41;
              v102 = 2114;
              v103 = v46;
              v104 = 2114;
              v105 = v59;
              v106 = 2048;
              v107 = v60;
              v108 = 2048;
              v109 = v53;
              _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; %{public}@ near rebase deadline of %{public}@ (trigger threshold is %0.1lfs, remaining interval is %0.1lfs)", buf, 0x34u);
            }

            v61 = [v48 stateWithPendingFullSync:1];
            v62 = [v46 persistState:v61 error:a3];

            if ((v62 & 1) == 0)
            {
              break;
            }
          }

          if (v43 == ++v45)
          {
            v43 = [v42 countByEnumeratingWithState:&v97 objects:v110 count:16];
            if (!v43)
            {
              goto LABEL_51;
            }

            goto LABEL_35;
          }
        }

        _HKInitializeLogging();
        v86 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v41;
          v102 = 2112;
          v103 = v46;
          _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "%{public}@: Unable to set pending full sync for %@", buf, 0x16u);
        }

LABEL_88:

LABEL_89:
        v85 = 0;
        goto LABEL_90;
      }

LABEL_91:

      goto LABEL_89;
    }
  }

  v4 = *(a1 + 32);
  obj = a1;
  v5 = *(a1 + 40);
  v89 = v4;
  if (!v4)
  {
    goto LABEL_91;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *v98;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v98 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v97 + 1) + 8 * i);
      v96 = 0;
      v11 = [v10 persistedStateWithError:&v96];
      v12 = v96;
      if (!v11)
      {
        _HKInitializeLogging();
        v63 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v89;
          v102 = 2112;
          v103 = v10;
          _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get persistable state for store %@", buf, 0x16u);
        }

        v64 = v12;
        v11 = v64;
        if (v64)
        {
          if (a3)
          {
            v65 = v64;
            *a3 = v11;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v68 = v11;
        goto LABEL_81;
      }

      v13 = [v11 stateWithPendingFullSync:1];
      v95 = v12;
      v14 = [v10 persistState:v13 error:&v95];
      v15 = v95;

      if ((v14 & 1) == 0)
      {
        _HKInitializeLogging();
        v66 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v89;
          v102 = 2112;
          v103 = v10;
          _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "%{public}@: Unable to set pending full sync for %@", buf, 0x16u);
        }

        v67 = v15;
        v68 = v67;
        if (v67)
        {
          if (a3)
          {
            v69 = v67;
            *a3 = v68;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_81:
        goto LABEL_89;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v16 = *(obj + 32);
  if (!v16)
  {
    goto LABEL_89;
  }

  v90 = *(obj + 40);
  v17 = [v16 profile];
  v88 = HDCloudSyncKeyValueDomainWithProfile(v17);

  *buf = 0;
  v18 = [v90 hk_firstObjectPassingTest:&__block_literal_global_324];
  v19 = objc_alloc_init(HDSyncAnchorRangeMap);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obja = [v18 orderedSyncEntities];
  v20 = [obja countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v20)
  {
    v21 = *v98;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v98 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v97 + 1) + 8 * j);
        v24 = [v23 syncEntityIdentifier];
        v25 = v18;
        v26 = [(HDSyncSession *)[HDCloudSyncSession alloc] initWithSyncStore:v25 reason:@"Unpredicated max anchor" delegate:v16];

        v27 = [v16 profile];
        v28 = [v23 nextSyncAnchorWithSession:v26 startSyncAnchor:0 profile:v27 error:buf];

        if (v28 < 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:buf code:1400 format:@"Final anchor is invalid."];

          v31 = 0;
          goto LABEL_63;
        }

        v29 = HDSyncAnchorRangeMake(0, v28);
        [(HDSyncAnchorRangeMap *)v19 setAnchorRange:v29 forSyncEntityIdentifier:v30, v24];
      }

      v20 = [obja countByEnumeratingWithState:&v97 objects:v110 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v31 = v19;
LABEL_63:

  v70 = *buf;
  if (![(HDSyncAnchorRangeMap *)v31 anchorRangeCount])
  {
    v80 = v70;
    goto LABEL_71;
  }

  v71 = [v16 profile];
  v72 = [v71 syncIdentityManager];
  v73 = [v72 currentSyncIdentity];
  v74 = [v73 identity];
  v75 = [v74 identityString];

  v76 = [(HDSyncAnchorRangeMap *)v31 codableSyncAnchorRangeMap];
  v77 = [v76 data];
  v78 = HDCloudSyncFullSyncAnchorMapLimitKey(v75);
  v96 = v70;
  v79 = [v88 setData:v77 forKey:v78 error:&v96];
  v80 = v96;

  _HKInitializeLogging();
  v81 = *MEMORY[0x277CCC328];
  v82 = *MEMORY[0x277CCC328];
  if (v79)
  {
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *v110 = 138543618;
      *&v110[4] = v16;
      *&v110[12] = 2112;
      *&v110[14] = v31;
      _os_log_impl(&dword_228986000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@: Persisted unpredicated sync anchor map to set the anchor range limits for full sync %@", v110, 0x16u);
    }

LABEL_71:
    LOBYTE(v95) = 1;
  }

  else
  {
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *v110 = 138543618;
      *&v110[4] = v16;
      *&v110[12] = 2114;
      *&v110[14] = v80;
      _os_log_error_impl(&dword_228986000, v81, OS_LOG_TYPE_ERROR, "%{public}@: Error persisting the anchor map for staging sync. Samples added during full sync might be missed. Error: %{public}@", v110, 0x16u);
    }

    v83 = v80;
    v80 = v83;
    if (v83)
    {
      if (a3)
      {
        v84 = v83;
        *a3 = v80;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    LOBYTE(v95) = 0;
  }

  if ((v95 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_85:
  v85 = 1;
LABEL_90:

  return v85;
}

uint64_t __75__HDCloudSyncPipelineStagePush__performClearFullSyncForStagingStore_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v22 = 0;
  v3 = [v2 persistedStateWithError:&v22];
  v4 = v22;
  v5 = v4;
  if (v3)
  {
    v6 = *(a1 + 40);
    v21 = v4;
    if (v6)
    {
      v7 = [v6 profile];
      v8 = HDCloudSyncKeyValueDomainWithProfile(v7);

      v9 = [v6 profile];
      v10 = [v9 syncIdentityManager];
      v11 = [v10 currentSyncIdentity];
      v12 = [v11 identity];
      v13 = [v12 identityString];

      v14 = HDCloudSyncFullSyncAnchorMapLimitKey(v13);
      LODWORD(v10) = [v8 setData:0 forKey:v14 error:&v21];

      v15 = v21;
      if (!v10)
      {
        v18 = 0;
        v5 = v15;
        goto LABEL_8;
      }

      v16 = *(a1 + 32);
      v17 = [v3 stateWithPendingFullSync:0];
      v20 = v15;
      v18 = [v16 persistState:v17 error:&v20];
      v5 = v20;
    }

    else
    {
      v17 = v4;
      v18 = 0;
      v5 = v17;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_8:

  return v18;
}

BOOL __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 shardPredicate];
  v3 = [v2 type] == 2;

  return v3;
}

uint64_t __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 store];
  v4 = [v3 storeIdentifier];
  v5 = [*(a1 + 32) storeIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

uint64_t __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 shardPredicate];
  v5 = [v4 type];
  v6 = v5 != 2;

  v13 = 0;
  v7 = [v3 persistedStateWithError:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [v7 pendingFullSync];
    if (v5 == 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v9;
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get persistable state for store %@", buf, 0x16u);
    }
  }

  return v6;
}

void __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_334(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v6, 0x16u);
  }
}

uint64_t __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2_340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = +[HDMutableDatabaseTransactionContext contextForWriting];
    v7 = [v4 configuration];
    v8 = [v7 accessibilityAssertion];
    v9 = [v6 contextWithAccessibilityAssertion:v8];

    v10 = [v4 configuration];
    v11 = [v10 repository];
    v12 = [v11 profile];
    v13 = [v12 database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__HDCloudSyncPipelineStagePush__performClearFullSyncForStagingStore_error___block_invoke;
    v16[3] = &unk_278613218;
    v17 = v5;
    v18 = v4;
    v14 = [v13 performTransactionWithContext:v9 error:a3 block:v16 inaccessibilityHandler:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) pushTarget];
  [*(a1 + 32) setTarget:v2];
}

uint64_t __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v5;
  if (v4)
  {
    v7 = [v5 persistedStateWithError:a3];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 stateWithPendingFullSync:0];
      v10 = [v6 persistState:v9 error:a3];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __66__HDCloudSyncPipelineStagePush__pushStoresByAddingShardsToStores___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id __43__HDCloudSyncPipelineStagePush__pushStores__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 options] & 4) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 store];
  }

  return v3;
}

@end