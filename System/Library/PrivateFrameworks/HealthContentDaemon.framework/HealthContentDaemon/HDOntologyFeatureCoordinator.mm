@interface HDOntologyFeatureCoordinator
+ (BOOL)_markNotCurrentEntriesAsNotRequiredForItem:(void *)item transaction:(uint64_t)transaction error:;
+ (BOOL)unitTesting_processRequiredShardItemWithIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error;
+ (uint64_t)_processRequiredShardItems:(void *)items profile:(void *)profile transaction:(uint64_t *)transaction error:;
+ (void)_logTriggeredOntologyUpdateResultsWithSuccess:(void *)success error:;
- (BOOL)_insertEntry:(void *)entry transaction:(uint64_t)transaction error:;
- (BOOL)_updateDesiredStateDateForEntry:(void *)entry transaction:(uint64_t)transaction error:;
- (BOOL)markShardsWithIdentifiers:(id)identifiers options:(unint64_t)options error:(id *)error;
- (HDOntologyFeatureCoordinator)init;
- (HDOntologyFeatureCoordinator)initWithOntologyUpdateCoordinator:(id)coordinator;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (NSDictionary)shardRequirementStatuses;
- (dispatch_queue_t)_observationQueue_isPrimaryProfileReady;
- (double)_minimumTimeToLiveForEntry:(uint64_t)entry;
- (id)_markShardsWithIdentifiers:(uint64_t)identifiers options:(uint64_t)options error:;
- (id)_metadataKeyForFirstLauchWithEntry:(uint64_t)entry;
- (id)_observationQueue_requireShardByIdentifier;
- (id)_performOrJournalFeatureCoordinatorRequireOperationForItems:(uint64_t)items error:;
- (id)_persistedEntryWithIdentifier:(uint64_t)identifier entryOut:(void *)out transaction:(uint64_t)transaction error:;
- (uint64_t)_canMakeFeatureRequestForShardWithIdentifier:(char)identifier options:(uint64_t)options error:;
- (uint64_t)_createOrUpdateEntryForItem:(void *)item transaction:(uint64_t)transaction error:;
- (uint64_t)_hasTimeToLiveExpiredForEntry:(uint64_t)entry;
- (uint64_t)_insertNewEntryForItem:(uint64_t)item transaction:(void *)transaction error:(void *)error;
- (uint64_t)_markFirstLaunchRequestForEntry:(void *)entry transaction:(uint64_t)transaction error:;
- (uint64_t)_updateDesiredIfRequiredForEntry:(char)entry options:(uint64_t)options newDesiredState:(void *)state transaction:(uint64_t)transaction error:;
- (uint64_t)_updateDesiredStateIfRequiredForEntry:(uint64_t)entry options:(void *)options transaction:(uint64_t)transaction error:;
- (void)_callDidInsertEntryTestHookForEntry:(void *)entry transaction:;
- (void)_featureEvaluatorForIdentifier:(void *)identifier;
- (void)_loadFeatureEvaluators;
- (void)_logRequiredShardsByIdentifier:(uint64_t)identifier;
- (void)_markEntriesOrLogErrorForItems:(id *)items;
- (void)_observationQueue_evaluteRequiredFeaturesWithReason:(uint64_t)reason;
- (void)_observationQueue_registerProfileReadyObservers;
- (void)_registerObserversForProfile:(uint64_t)profile;
- (void)_triggerGatedOntologyUpdate;
- (void)daemonReady:(id)ready;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)evaluteRequiredShardsForEvalulator:(id)evalulator reason:(id)reason;
- (void)profileDidBecomeReady:(id)ready;
- (void)profileListDidChange;
- (void)setShardRequirementStatuses:(uint64_t)statuses;
@end

@implementation HDOntologyFeatureCoordinator

- (dispatch_queue_t)_observationQueue_isPrimaryProfileReady
{
  if (result)
  {
    v2 = result;
    dispatch_assert_queue_V2(result[1]);
    WeakRetained = objc_loadWeakRetained(v2 + 8);
    profile = [WeakRetained profile];
    [profile profileIdentifier];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:v1];
    bOOLValue = [v5 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (id)_observationQueue_requireShardByIdentifier
{
  v41 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    dispatch_assert_queue_V2(*(self + 8));
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    WeakRetained = objc_loadWeakRetained(selfCopy + 8);
    daemon = [WeakRetained daemon];
    profileManager = [daemon profileManager];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [profileManager allProfileIdentifiers];
    v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      v26 = profileManager;
      v27 = selfCopy;
      v25 = *v36;
      do
      {
        v9 = 0;
        v28 = v7;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * v9);
          v11 = [profileManager profileForIdentifier:{v10, v25, v26, v27}];
          if (v11)
          {
            v12 = [selfCopy[2] objectForKeyedSubscript:v10];
            bOOLValue = [v12 BOOLValue];

            if (bOOLValue)
            {
              v30 = v9;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v14 = selfCopy[3];
              v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
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

                    v19 = *(*(&v31 + 1) + 8 * i);
                    featureIdentifier = [v19 featureIdentifier];
                    v21 = [v2 objectForKeyedSubscript:featureIdentifier];
                    if (!v21)
                    {
                      v21 = &unk_286374658;
                      [v2 setObject:&unk_286374658 forKeyedSubscript:featureIdentifier];
                    }

                    if ([v21 integerValue] != 1)
                    {
                      v22 = [OUTLINED_FUNCTION_1_3() requiresFeatureShardForProfile:v11];
                      if (v22 == 1 || (!bOOLValue ? (v23 = v22 == 2) : (v23 = 0), v23))
                      {
                        [MEMORY[0x277CCABB0] numberWithInteger:v22];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_5() setObject:v19 forKeyedSubscript:featureIdentifier];
                      }
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
                }

                while (v16);
              }

              profileManager = v26;
              selfCopy = v27;
              v8 = v25;
              v7 = v28;
              v9 = v30;
            }
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v7);
    }

    [(HDOntologyFeatureCoordinator *)selfCopy setShardRequirementStatuses:v2];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (HDOntologyFeatureCoordinator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyFeatureCoordinator)initWithOntologyUpdateCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = HDOntologyFeatureCoordinator;
  v5 = [(HDOntologyFeatureCoordinator *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, coordinatorCopy);
    v7 = HKCreateSerialDispatchQueue();
    observationQueue = v6->_observationQueue;
    v6->_observationQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observationQueue_isProfileReady = v6->_observationQueue_isProfileReady;
    v6->_observationQueue_isProfileReady = v9;

    v6->_lock._os_unfair_lock_opaque = 0;
    lock_shardRequirementStatuses = v6->_lock_shardRequirementStatuses;
    v6->_lock_shardRequirementStatuses = MEMORY[0x277CBEC10];

    v6->_unitTesting_minimumTimeToLive = -1.0;
    WeakRetained = objc_loadWeakRetained(&v6->_updateCoordinator);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v6 queue:v6->_observationQueue];
  }

  return v6;
}

- (BOOL)markShardsWithIdentifiers:(id)identifiers options:(unint64_t)options error:(id *)error
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v9 = [(HDOntologyFeatureCoordinator *)self _markShardsWithIdentifiers:identifiersCopy options:options error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)evaluteRequiredShardsForEvalulator:(id)evalulator reason:(id)reason
{
  reason = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", evalulator, reason];
  [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:reason];
}

- (NSDictionary)shardRequirementStatuses
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_lock_shardRequirementStatuses copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_observationQueue);
  if (availableCopy)
  {

    [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:?];
  }
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_observationQueue);
  [(HDOntologyFeatureCoordinator *)self _loadFeatureEvaluators];
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);
  daemon = [WeakRetained daemon];
  profileManager = [daemon profileManager];
  [profileManager addProfileManagerObserver:self queue:self->_observationQueue];

  v8 = objc_loadWeakRetained(&self->_updateCoordinator);
  profile = [v8 profile];
  [profile registerProfileReadyObserver:self queue:self->_observationQueue];
}

+ (uint64_t)_processRequiredShardItems:(void *)items profile:(void *)profile transaction:(uint64_t *)transaction error:
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a2;
  itemsCopy = items;
  profileCopy = profile;
  v11 = objc_opt_self();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  daemon = [itemsCopy daemon];
  ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];

  featureCoordinator = [ontologyUpdateCoordinator featureCoordinator];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__HDOntologyFeatureCoordinator__processRequiredShardItems_profile_transaction_error___block_invoke;
  v24[3] = &unk_2796B95A8;
  v15 = v8;
  v25 = v15;
  v28 = v11;
  v16 = featureCoordinator;
  v26 = v16;
  v27 = &v29;
  v17 = [ontologyUpdateCoordinator performOntologyTransactionForWrite:1 databaseTransaction:profileCopy error:transaction transactionHandler:v24];
  _HKInitializeLogging();
  v18 = HKLogHealthOntology();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HKStringFromBool();
    *buf = 138543618;
    v34 = v11;
    v35 = 2114;
    v36 = v19;
    _os_log_impl(&dword_2514A1000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: has new required shards %{public}@", buf, 0x16u);
  }

  if (*(v30 + 24) == 1)
  {
    [(HDOntologyFeatureCoordinator *)v16 _triggerGatedOntologyUpdate];
  }

  _HKInitializeLogging();
  v20 = HKLogHealthOntology();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HKStringFromBool();
    v22 = *transaction;
    *buf = 138543874;
    v34 = v11;
    v35 = 2112;
    v36 = v21;
    v37 = 2112;
    v38 = v22;
    _os_log_impl(&dword_2514A1000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: _processRequiredShardItems success %@: %@", buf, 0x20u);
  }

  _Block_object_dispose(&v29, 8);
  return v17;
}

uint64_t __85__HDOntologyFeatureCoordinator__processRequiredShardItems_profile_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  v8 = 1;
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        if (HKIsKnownOntologyShardIdentifier())
        {
          v14 = [(HDOntologyFeatureCoordinator *)*(a1 + 40) _createOrUpdateEntryForItem:v12 transaction:v5 error:a3];
          if (v14 == 1)
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }

          else if (!v14)
          {
            v8 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          _HKInitializeLogging();
          v13 = HKLogHealthOntology();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            if (v12)
            {
              v15 = v12[1];
            }

            else
            {
              v15 = 0;
            }

            v16 = *(a1 + 56);
            *buf = 138543618;
            v24 = v16;
            v25 = 2114;
            v26 = v15;
            _os_log_fault_impl(&dword_2514A1000, v13, OS_LOG_TYPE_FAULT, "[%{public}@] Processed an unknown shard identifier: %{public}@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v17 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v9 = v17;
    }

    while (v17);
    v8 = 1;
  }

LABEL_21:

  return v8;
}

uint64_t __54__HDOntologyFeatureCoordinator__loadFeatureEvaluators__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 featureIdentifier];
  v5 = [v3 featureIdentifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __93__HDOntologyFeatureCoordinator__markNotCurrentEntriesAsNotRequiredForItem_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x253077AD0](a2, @"desired_state", 1);
  CFAbsoluteTimeGetCurrent();

  JUMPOUT(0x253077AB0);
}

void __82__HDOntologyFeatureCoordinator__updateDesiredStateDateForEntry_transaction_error___block_invoke()
{
  CFAbsoluteTimeGetCurrent();

  JUMPOUT(0x253077AB0);
}

uint64_t __63__HDOntologyFeatureCoordinator__featureEvaluatorForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 featureIdentifier];
  if (v4 == v5)
  {
    v9 = 1;
  }

  else
  {
    v6 = [v3 featureIdentifier];
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v3 featureIdentifier];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)_logTriggeredOntologyUpdateResultsWithSuccess:(void *)success error:
{
  v15 = *MEMORY[0x277D85DE8];
  successCopy = success;
  v5 = objc_opt_self();
  _HKInitializeLogging();
  v6 = HKLogHealthOntology();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v11 = 138543362;
      v12 = v5;
      v8 = "%{public}@: Success triggered ontology update";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = successCopy;
    v8 = "%{public}@: Failure triggered ontology update: %{public}@";
    v9 = v6;
    v10 = 22;
    goto LABEL_6;
  }
}

id __63__HDOntologyFeatureCoordinator__logRequiredShardsByIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 integerValue];
  v6 = HKStringFromOptionalBooleanResult();
  v7 = [v2 stringWithFormat:@"(%@, %@)", v4, v6];

  return v7;
}

uint64_t __105__HDOntologyFeatureCoordinator_unitTesting_processRequiredShardItemWithIdentifier_options_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v6 = MEMORY[0x277CBEA60];
  v7 = a2;
  v8 = [v6 arrayWithObjects:v11 count:1];
  v9 = [(HDOntologyFeatureCoordinator *)v5 _processRequiredShardItems:v8 profile:*(a1 + 40) transaction:v7 error:a3];

  return v9;
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (id)_markShardsWithIdentifiers:(uint64_t)identifiers options:(uint64_t)options error:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (self)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 componentsJoinedByString:{@", "}];
      v10 = HKStringFromOntologyFeatureRequestOptions();
      *buf = 138543874;
      selfCopy = self;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: mark shards with identifiers %{public}@ with options %{public}@", buf, 0x20u);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = v7;
    OUTLINED_FUNCTION_3_1();
    v14 = [v13 countByEnumeratingWithState:0 objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(8 * i);
          if (![(HDOntologyFeatureCoordinator *)self _canMakeFeatureRequestForShardWithIdentifier:v18 options:identifiers error:options])
          {

            v20 = 0;
            goto LABEL_14;
          }

          v19 = [[_HDRequiredShardItem alloc] initWithShardIdentfier:v18 options:identifiers];
          [v11 addObject:v19];
        }

        OUTLINED_FUNCTION_3_1();
        v15 = [v12 countByEnumeratingWithState:? objects:? count:?];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = [(HDOntologyFeatureCoordinator *)self _performOrJournalFeatureCoordinatorRequireOperationForItems:v11 error:options];
LABEL_14:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_observationQueue_evaluteRequiredFeaturesWithReason:(uint64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (reason)
  {
    dispatch_assert_queue_V2(*(reason + 8));
    WeakRetained = objc_loadWeakRetained((reason + 64));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    supportsOntologyFeatureEvaluation = [behavior supportsOntologyFeatureEvaluation];

    if (supportsOntologyFeatureEvaluation)
    {
      if ([(HDOntologyFeatureCoordinator *)reason _observationQueue_isPrimaryProfileReady])
      {
        _HKInitializeLogging();
        v8 = HKLogHealthOntology();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          reasonCopy2 = reason;
          v28 = 2114;
          v29 = v3;
          _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Re-evaluate required features due to %{public}@", buf, 0x16u);
        }

        v19 = v3;

        [(HDOntologyFeatureCoordinator *)reason _observationQueue_requireShardByIdentifier];
        objc_claimAutoreleasedReturnValue();
        v9 = OUTLINED_FUNCTION_4_1();
        [(HDOntologyFeatureCoordinator *)v9 _logRequiredShardsByIdentifier:v8];
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * i);
              if (HKIsKnownOntologyShardIdentifier())
              {
                v16 = [v10 objectForKeyedSubscript:v15];
                integerValue = [v16 integerValue];

                if (integerValue == 2)
                {
                  continue;
                }

                v18 = [[_HDRequiredShardItem alloc] initWithShardIdentfier:v15 options:integerValue == 1];
                [v20 addObject:v18];
              }

              else
              {
                _HKInitializeLogging();
                v18 = HKLogHealthOntology();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  reasonCopy2 = reason;
                  v28 = 2112;
                  v29 = v15;
                  _os_log_impl(&dword_2514A1000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot mark shard with identifier %@ because it's unknown", buf, 0x16u);
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v12);
        }

        [(HDOntologyFeatureCoordinator *)reason _markEntriesOrLogErrorForItems:v20];
        v3 = v19;
      }
    }
  }
}

- (void)setShardRequirementStatuses:(uint64_t)statuses
{
  v4 = a2;
  if (statuses)
  {
    os_unfair_lock_lock((statuses + 32));
    objc_storeStrong((statuses + 40), a2);
    os_unfair_lock_unlock((statuses + 32));
  }
}

- (void)_loadFeatureEvaluators
{
  v47[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v4 = [HDOntologyCHRFeatureEvaluator alloc];
    objc_loadWeakRetained((self + 64));
    v5 = [OUTLINED_FUNCTION_1_3() initWithOntologyUpdateCoordinator:v1];
    v47[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v7 = [v3 initWithArray:v6];

    WeakRetained = objc_loadWeakRetained((self + 64));
    daemon = [WeakRetained daemon];

    pluginManager = [daemon pluginManager];
    v11 = [pluginManager pluginsConformingToProtocol:&unk_286387828];
    allValues = [v11 allValues];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = allValues;
    v29 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v29)
    {
      v28 = *v38;
      do
      {
        v13 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v37 + 1) + 8 * v13);
          v31 = v13;
          v14 = [v30 ontologyFeatureEvaluatorsForDaemon:daemon];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v34;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v34 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v33 + 1) + 8 * i);
                v32[0] = MEMORY[0x277D85DD0];
                v32[1] = 3221225472;
                v32[2] = __54__HDOntologyFeatureCoordinator__loadFeatureEvaluators__block_invoke;
                v32[3] = &unk_2796B95D0;
                v32[4] = v19;
                v20 = [v7 hk_firstObjectPassingTest:v32];
                if (v20)
                {
                  currentHandler = [MEMORY[0x277CCA890] currentHandler];
                  featureIdentifier = [v19 featureIdentifier];
                  [currentHandler handleFailureInMethod:sel__loadFeatureEvaluators object:self file:@"HDOntologyFeatureCoordinator.m" lineNumber:234 description:{@"%@ is attemping to register as evaluator for %@, but %@ is already registered.", v30, featureIdentifier, v20}];
                }

                [v7 addObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
            }

            while (v16);
          }

          v13 = v31 + 1;
        }

        while (v31 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v29);
    }

    _HKInitializeLogging();
    v21 = HKLogHealthOntology();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v7 hk_map:&__block_literal_global_4];
      *buf = 138543618;
      selfCopy = self;
      v43 = 2112;
      v44 = v22;
      _os_log_impl(&dword_2514A1000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: loaded feature evaluators: %@", buf, 0x16u);
    }

    v23 = [v7 copy];
    v24 = *(self + 24);
    *(self + 24) = v23;
  }
}

- (void)profileListDidChange
{
  dispatch_assert_queue_V2(self->_observationQueue);
  [(HDOntologyFeatureCoordinator *)self _observationQueue_registerProfileReadyObservers];

  [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:?];
}

- (void)_observationQueue_registerProfileReadyObservers
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    WeakRetained = objc_loadWeakRetained((self + 64));
    daemon = [WeakRetained daemon];
    profileManager = [daemon profileManager];

    allProfileIdentifiers = [profileManager allProfileIdentifiers];
    OUTLINED_FUNCTION_3_1();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(allProfileIdentifiers);
          }

          v11 = [profileManager profileForIdentifier:*(8 * i)];
          v12 = v11;
          if (v11)
          {
            v13 = *(self + 16);
            profileIdentifier = [v11 profileIdentifier];
            v15 = [v13 objectForKeyedSubscript:profileIdentifier];
            bOOLValue = [v15 BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              [v12 registerProfileReadyObserver:self queue:*(self + 8)];
            }
          }
        }

        OUTLINED_FUNCTION_3_1();
        v8 = [allProfileIdentifiers countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  v6 = OUTLINED_FUNCTION_1_3();
  dispatch_assert_queue_V2(v6);
  observationQueue_isProfileReady = self->_observationQueue_isProfileReady;
  profileIdentifier = [v3 profileIdentifier];
  [(NSMutableDictionary *)observationQueue_isProfileReady setObject:MEMORY[0x277CBEC38] forKeyedSubscript:profileIdentifier];

  [(HDOntologyFeatureCoordinator *)self _registerObserversForProfile:v3];

  [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:?];
}

- (void)_registerObserversForProfile:(uint64_t)profile
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (profile)
  {
    database = [v3 database];
    [database addProtectedDataObserver:profile queue:*(profile + 8)];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = *(profile + 24);
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) registerRequiredObserversForProfile:v4 queue:{*(profile + 8), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (uint64_t)_createOrUpdateEntryForItem:(void *)item transaction:(uint64_t)transaction error:
{
  v7 = a2;
  itemCopy = item;
  if (self && (OUTLINED_FUNCTION_2_2(), [(HDOntologyFeatureCoordinator *)v9 _markNotCurrentEntriesAsNotRequiredForItem:v10 transaction:v11 error:v12]))
  {
    if (v7)
    {
      v15 = v7[1];
    }

    else
    {
      v15 = 0;
    }

    v24 = 0;
    v16 = v15;
    v17 = [(HDOntologyFeatureCoordinator *)self _persistedEntryWithIdentifier:v16 entryOut:&v24 transaction:itemCopy error:transaction];
    v18 = v24;

    v13 = 0;
    if (v17)
    {
      if (v18)
      {
        if (v7)
        {
          v23 = v7[2];
        }

        else
        {
          v23 = 0;
        }

        v22 = [(HDOntologyFeatureCoordinator *)self _updateDesiredStateIfRequiredForEntry:v18 options:v23 transaction:itemCopy error:transaction];
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        v22 = [HDOntologyFeatureCoordinator _insertNewEntryForItem:v19 transaction:v20 error:v21];
      }

      v13 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_triggerGatedOntologyUpdate
{
  v6 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = HKLogHealthOntology();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_2514A1000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Trigger gated ontology update", &v4, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((self + 64));
    [WeakRetained triggerGatedUpdateWithMaximumDelay:&__block_literal_global_366 completion:5.0];
  }
}

+ (BOOL)_markNotCurrentEntriesAsNotRequiredForItem:(void *)item transaction:(uint64_t)transaction error:
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  itemCopy = item;
  objc_opt_self();
  v7 = HKOntologyShardSchemaTypeForShardIdentifier();
  v8 = HKCurrentSchemaVersionForShardIdentifier();
  if (v5)
  {
    v9 = v5[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"identifier" equalToValue:v9];
  v11 = MEMORY[0x277D10B20];
  v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" notEqualToValue:v7];
  v26[0] = v12;
  v13 = MEMORY[0x277D10B18];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v15 = [v13 predicateWithProperty:@"schema_version" notEqualToValue:v14];
  v26[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v17 = [v11 predicateMatchingAnyPredicates:v16];

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v10 otherPredicate:v17];
  v25[0] = @"desired_state";
  v25[1] = @"desired_state_date";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  graphDatabase = [itemCopy graphDatabase];

  underlyingDatabase = [graphDatabase underlyingDatabase];
  v22 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity updateProperties:v19 predicate:v18 database:underlyingDatabase error:transaction bindingHandler:&__block_literal_global_340_0];

  return v22;
}

- (id)_persistedEntryWithIdentifier:(uint64_t)identifier entryOut:(void *)out transaction:(uint64_t)transaction error:
{
  if (result)
  {
    v8 = result;
    outCopy = out;
    v10 = a2;
    v11 = HKOntologyShardSchemaTypeForShardIdentifier();
    v12 = HKCurrentSchemaVersionForShardIdentifier();
    WeakRetained = objc_loadWeakRetained(v8 + 8);
    shardRegistry = [WeakRetained shardRegistry];
    v15 = [shardRegistry entryWithIdentifier:v10 schemaType:v11 schemaVersion:v12 entryOut:identifier transaction:outCopy error:transaction];

    return v15;
  }

  return result;
}

- (uint64_t)_updateDesiredStateIfRequiredForEntry:(uint64_t)entry options:(void *)options transaction:(uint64_t)transaction error:
{
  entryCopy = entry;
  v9 = a2;
  optionsCopy = options;
  if (!self)
  {
    goto LABEL_14;
  }

  if (entryCopy)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if ([v9 desiredState] != v11)
  {
    v12 = [(HDOntologyFeatureCoordinator *)self _updateDesiredIfRequiredForEntry:v9 options:entryCopy newDesiredState:v11 transaction:optionsCopy error:transaction];
    goto LABEL_8;
  }

  if ((~entryCopy & 5) != 0)
  {
    v12 = 2;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_2();
  if (![(HDOntologyFeatureCoordinator *)v14 _updateDesiredStateDateForEntry:v15 transaction:v16 error:v17])
  {
LABEL_14:
    v12 = 0;
    goto LABEL_8;
  }

  if ([v9 currentVersion] < 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

LABEL_8:

  return v12;
}

- (uint64_t)_insertNewEntryForItem:(uint64_t)item transaction:(void *)transaction error:(void *)error
{
  transactionCopy = transaction;
  errorCopy = error;
  if (!item)
  {
    v21 = 0;
    goto LABEL_19;
  }

  v7 = HKOntologyShardSchemaTypeForShardIdentifier();
  v8 = HKCurrentSchemaVersionForShardIdentifier();
  if (transactionCopy)
  {
    v9 = transactionCopy[2];
    v10 = objc_alloc(MEMORY[0x277CCD760]);
    v11 = (v9 & 1) == 0;
    if (v9)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = transactionCopy[1];
    v14 = (v9 & 2) == 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCD760]);
    v13 = 0;
    v12 = 1;
    v11 = 1;
    v14 = 1;
  }

  v15 = [v10 initWithIdentifier:v13 schemaType:v7 schemaVersion:v8 desiredState:v12];
  if (v11)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v11 || v14)
  {
    goto LABEL_15;
  }

  v17 = OUTLINED_FUNCTION_6_1();
  if ([(HDOntologyFeatureCoordinator *)v17 _markFirstLaunchRequestForEntry:v18 transaction:v19 error:v20])
  {
    v16 = 1;
LABEL_15:
    v22 = OUTLINED_FUNCTION_6_1();
    if ([(HDOntologyFeatureCoordinator *)v22 _insertEntry:v23 transaction:v24 error:v25])
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_18;
  }

  v21 = 0;
LABEL_18:

LABEL_19:
  return v21;
}

- (uint64_t)_markFirstLaunchRequestForEntry:(void *)entry transaction:(uint64_t)transaction error:
{
  entryCopy = entry;
  if (self)
  {
    [(HDOntologyFeatureCoordinator *)self _metadataKeyForFirstLauchWithEntry:a2];
    objc_claimAutoreleasedReturnValue();
    graphDatabase = [OUTLINED_FUNCTION_5() graphDatabase];
    v16 = 0;
    v9 = [graphDatabase metadataValueForKey:a2 valueOut:&v16 error:transaction];
    v10 = v16;

    self = 0;
    if (v9)
    {
      if (v10)
      {
        self = 2;
      }

      else
      {
        graphDatabase2 = [entryCopy graphDatabase];
        date = [MEMORY[0x277CBEAA8] date];
        v13 = HKDiagnosticStringFromDate();
        v14 = [graphDatabase2 setMetadataValue:v13 forKey:a2 error:transaction];

        self = v14;
      }
    }
  }

  return self;
}

- (BOOL)_insertEntry:(void *)entry transaction:(uint64_t)transaction error:
{
  if (result)
  {
    entryCopy = entry;
    v7 = a2;
    v8 = OUTLINED_FUNCTION_1_3();
    [(HDOntologyFeatureCoordinator *)v8 _callDidInsertEntryTestHookForEntry:a2 transaction:entryCopy];
    v9 = [HDOntologyShardRegistry insertEntry:a2 transaction:entryCopy error:transaction];

    return v9;
  }

  return result;
}

- (uint64_t)_updateDesiredIfRequiredForEntry:(char)entry options:(uint64_t)options newDesiredState:(void *)state transaction:(uint64_t)transaction error:
{
  v11 = a2;
  stateCopy = state;
  if (!self)
  {
    v14 = 0;
    goto LABEL_14;
  }

  if ((~entry & 3) != 0)
  {
    if ((entry & 5) == 0 && ![(HDOntologyFeatureCoordinator *)self _hasTimeToLiveExpiredForEntry:v11])
    {
      v14 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = [(HDOntologyFeatureCoordinator *)self _markFirstLaunchRequestForEntry:v11 transaction:stateCopy error:transaction];
    if (v13 != 1)
    {
      v14 = v13;
      goto LABEL_14;
    }
  }

  v15 = [v11 copyWithDesiredState:options];

  v16 = [(HDOntologyFeatureCoordinator *)self _insertEntry:v15 transaction:stateCopy error:transaction];
  v17 = 1;
  if ((entry & 1) == 0)
  {
    v17 = 2;
  }

  if (v16)
  {
    v14 = v17;
  }

  else
  {
    v14 = 0;
  }

  v11 = v15;
LABEL_14:

  return v14;
}

- (BOOL)_updateDesiredStateDateForEntry:(void *)entry transaction:(uint64_t)transaction error:
{
  v27[3] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v24 = MEMORY[0x277D10B20];
  v5 = MEMORY[0x277D10B18];
  entryCopy = entry;
  v7 = a2;
  identifier = [v7 identifier];
  v9 = [v5 predicateWithProperty:@"identifier" equalToValue:identifier];
  v27[0] = v9;
  v10 = MEMORY[0x277D10B18];
  schemaType = [v7 schemaType];
  v12 = [v10 predicateWithProperty:@"schema_type" equalToValue:schemaType];
  v27[1] = v12;
  v13 = MEMORY[0x277D10B18];
  v14 = MEMORY[0x277CCABB0];
  schemaVersion = [v7 schemaVersion];

  v16 = [v14 numberWithInteger:schemaVersion];
  v17 = [v13 predicateWithProperty:@"schema_version" equalToValue:v16];
  v27[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v19 = [v24 predicateMatchingAllPredicates:v18];

  v26 = @"desired_state_date";
  [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  objc_claimAutoreleasedReturnValue();
  graphDatabase = [OUTLINED_FUNCTION_1_3() graphDatabase];

  underlyingDatabase = [graphDatabase underlyingDatabase];
  v22 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity updateProperties:identifier predicate:v19 database:underlyingDatabase error:transaction bindingHandler:&__block_literal_global_350];

  return v22;
}

- (uint64_t)_hasTimeToLiveExpiredForEntry:(uint64_t)entry
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (entry)
  {
    v4 = [(HDOntologyFeatureCoordinator *)entry _minimumTimeToLiveForEntry:v3];
    Current = CFAbsoluteTimeGetCurrent();
    desiredStateDate = [v3 desiredStateDate];
    [desiredStateDate timeIntervalSinceReferenceDate];
    v8 = v4 + v7;

    if (Current <= v8)
    {
      entry = 0;
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        desiredStateDate2 = [v3 desiredStateDate];
        v11 = HKDiagnosticStringFromDate();
        v12 = HKDiagnosticStringFromDuration();
        v14 = 138544130;
        entryCopy = entry;
        v16 = 2114;
        v17 = v3;
        v18 = 2114;
        v19 = v11;
        v20 = 2114;
        v21 = v12;
        _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ TTL has expired because %{public}@ is more than %{public}@ before now", &v14, 0x2Au);
      }

      entry = 1;
    }
  }

  return entry;
}

- (id)_metadataKeyForFirstLauchWithEntry:(uint64_t)entry
{
  if (entry)
  {
    v5 = a2;
    v6 = objc_alloc(OUTLINED_FUNCTION_5());
    [v2 identifier];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() schemaType];
    objc_claimAutoreleasedReturnValue();
    schemaVersion = [OUTLINED_FUNCTION_4_1() schemaVersion];

    v8 = [v6 initWithFormat:@"firstLaunch-%@:%@:%ld", v3, v4, schemaVersion];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_minimumTimeToLiveForEntry:(uint64_t)entry
{
  v4 = a2;
  v5 = v4;
  if (entry)
  {
    v6 = *(entry + 56);
    if (v6 < 0.0)
    {
      [v4 identifier];
      objc_claimAutoreleasedReturnValue();
      v8 = OUTLINED_FUNCTION_1_3();
      v9 = [(HDOntologyFeatureCoordinator *)v8 _featureEvaluatorForIdentifier:v2];

      if (v9 && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
      {
        [objc_opt_class() minimumTimeToLive];
        v6 = v10;
      }

      else if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
      {
        v6 = 604800.0;
      }

      else
      {
        v6 = 2592000.0;
      }
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)_featureEvaluatorForIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    v4 = identifier[3];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6_0();
    v7 = __63__HDOntologyFeatureCoordinator__featureEvaluatorForIdentifier___block_invoke;
    v8 = &unk_2796B95D0;
    v9 = v3;
    identifier = [v4 hk_firstObjectPassingTest:v6];
  }

  return identifier;
}

- (void)_callDidInsertEntryTestHookForEntry:(void *)entry transaction:
{
  v5 = a2;
  entryCopy = entry;
  if (self)
  {
    v7 = MEMORY[0x253078050](*(self + 48));
    if (v7)
    {
      graphDatabase = [entryCopy graphDatabase];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6_0();
      v10 = __80__HDOntologyFeatureCoordinator__callDidInsertEntryTestHookForEntry_transaction___block_invoke;
      v11 = &unk_2796B96A0;
      v14 = v7;
      selfCopy = self;
      v13 = v5;
      [graphDatabase onCommit:v9 orRollback:0];
    }
  }
}

- (void)_logRequiredShardsByIdentifier:(uint64_t)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (identifier)
  {
    [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"["];
    allKeys = [OUTLINED_FUNCTION_5() allKeys];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6_0();
    v8 = __63__HDOntologyFeatureCoordinator__logRequiredShardsByIdentifier___block_invoke;
    v9 = &unk_2796B9678;
    v10 = v4;
    [v2 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{allKeys, v7}];

    [v2 appendFormat:@"]"];
    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      identifierCopy = identifier;
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&dword_2514A1000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: underlying conditions require shards: %@", buf, 0x16u);
    }
  }
}

- (void)_markEntriesOrLogErrorForItems:(id *)items
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (items)
  {
    v9 = 0;
    v4 = [(HDOntologyFeatureCoordinator *)items _performOrJournalFeatureCoordinatorRequireOperationForItems:v3 error:&v9];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [v3 hk_map:&__block_literal_global_355];
      _HKInitializeLogging();
      v7 = HKLogHealthOntology();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        itemsCopy = items;
        v12 = 2114;
        v13 = v5;
        v14 = 2114;
        v15 = v8;
        _os_log_error_impl(&dword_2514A1000, v7, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Unable to mark [%{public}@]", buf, 0x20u);
      }
    }
  }
}

- (id)_performOrJournalFeatureCoordinatorRequireOperationForItems:(uint64_t)items error:
{
  if (result)
  {
    v5 = result;
    v6 = a2;
    v7 = objc_alloc(OUTLINED_FUNCTION_4_1());
    v8 = [(_HDOntologyFeatureCoordinatorRequireOperation *)v7 initWithItems:v3];

    WeakRetained = objc_loadWeakRetained(v5 + 8);
    [WeakRetained lockUpdateLock];

    v10 = objc_loadWeakRetained(v5 + 8);
    profile = [v10 profile];
    v12 = [v8 performOrJournalWithProfile:profile error:items];

    v13 = objc_loadWeakRetained(v5 + 8);
    [v13 unlockUpdateLock];

    return v12;
  }

  return result;
}

- (uint64_t)_canMakeFeatureRequestForShardWithIdentifier:(char)identifier options:(uint64_t)options error:
{
  v7 = a2;
  if (!self)
  {
    goto LABEL_6;
  }

  if ((HKIsKnownOntologyShardIdentifier() & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:options code:3 format:{@"%@ is not a known shard identifier", v7}];
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (identifier)
  {
    v10 = [(HDOntologyFeatureCoordinator *)self _featureEvaluatorForIdentifier:v7];
    v11 = v10;
    if (v10)
    {
      v8 = [v10 canRequireShardWithError:options];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_7:

  return v8;
}

+ (BOOL)unitTesting_processRequiredShardItemWithIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  v12 = [[_HDRequiredShardItem alloc] initWithShardIdentfier:identifierCopy options:options];

  contextForReadingProtectedData = [MEMORY[0x277D10788] contextForReadingProtectedData];
  database = [profileCopy database];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  v19 = __105__HDOntologyFeatureCoordinator_unitTesting_processRequiredShardItemWithIdentifier_options_profile_error___block_invoke;
  v20 = &unk_2796B96C8;
  v22 = profileCopy;
  selfCopy = self;
  v21 = v12;
  v15 = profileCopy;
  v16 = v12;
  LOBYTE(error) = [database performTransactionWithContext:contextForReadingProtectedData error:error block:v18 inaccessibilityHandler:0];

  return error;
}

@end