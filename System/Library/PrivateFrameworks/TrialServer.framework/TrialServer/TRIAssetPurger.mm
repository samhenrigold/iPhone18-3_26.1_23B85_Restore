@interface TRIAssetPurger
- (TRIAssetPurger)initWithPaths:(id)paths assetStore:(id)store purgeableNamespacesProvider:(id)provider purgeableFactorPacksEnumerator:(id)enumerator purgeableExperimentAndRolloutProvider:(id)rolloutProvider taskQueue:(id)queue loggingClient:(id)client;
- (unint64_t)purgeAssetsForPurgeabilityLevel:(int)level requestedPurgeAmount:(int64_t)amount;
- (unint64_t)purgeableAssetSizeForPurgeabilityLevel:(int)level;
- (void)_enumeratePurgeCandidatesForPurgeableConstructs:(id)constructs block:(id)block;
- (void)_logDeactivationsMetricWithConcludedInTime:(BOOL)time;
@end

@implementation TRIAssetPurger

- (TRIAssetPurger)initWithPaths:(id)paths assetStore:(id)store purgeableNamespacesProvider:(id)provider purgeableFactorPacksEnumerator:(id)enumerator purgeableExperimentAndRolloutProvider:(id)rolloutProvider taskQueue:(id)queue loggingClient:(id)client
{
  pathsCopy = paths;
  storeCopy = store;
  providerCopy = provider;
  enumeratorCopy = enumerator;
  rolloutProviderCopy = rolloutProvider;
  queueCopy = queue;
  clientCopy = client;
  v26.receiver = self;
  v26.super_class = TRIAssetPurger;
  v18 = [(TRIAssetPurger *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_paths, paths);
    objc_storeStrong(&v19->_assetStore, store);
    objc_storeStrong(&v19->_purgeableNamespacesProvider, provider);
    objc_storeStrong(&v19->_purgeableFactorPacksEnumerator, enumerator);
    objc_storeStrong(&v19->_purgeableExperimentAndRolloutProvider, rolloutProvider);
    objc_storeStrong(&v19->_taskQueue, queue);
    objc_storeStrong(&v19->_loggingClient, client);
  }

  return v19;
}

- (unint64_t)purgeableAssetSizeForPurgeabilityLevel:(int)level
{
  v3 = *&level;
  v5 = objc_opt_new();
  v6 = [[TRIPurgeableConstructs alloc] initWithPurgeabilityLevel:v3 purgeableNamespacesProvider:self->_purgeableNamespacesProvider paths:self->_paths];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke;
  v32[3] = &unk_279DDFD38;
  v7 = v5;
  v33 = v7;
  v8 = MEMORY[0x2743948D0](v32);
  [(TRIAssetPurger *)self _enumeratePurgeCandidatesForPurgeableConstructs:v6 block:v8];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Looking for regular purgeable factors.", buf, 2u);
  }

  purgeableExperimentAndRolloutProvider = self->_purgeableExperimentAndRolloutProvider;
  namespaceNamesPurgeableAtNamespaceLevel = [(TRIPurgeableConstructs *)v6 namespaceNamesPurgeableAtNamespaceLevel];
  eagerPurgeableFactorsByNamespaceName = [(TRIPurgeableConstructs *)v6 eagerPurgeableFactorsByNamespaceName];
  cacheDeleteableFactorsByNamespaceName = [(TRIPurgeableConstructs *)v6 cacheDeleteableFactorsByNamespaceName];
  v14 = [(TRIPurgeableExperimentAndRolloutProviding *)purgeableExperimentAndRolloutProvider purgeableExperimentAssetsFromNamespaces:namespaceNamesPurgeableAtNamespaceLevel eagerFactors:eagerPurgeableFactorsByNamespaceName overriddenFactors:cacheDeleteableFactorsByNamespaceName];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke_119;
  v29[3] = &unk_279DDFD60;
  v15 = v7;
  v30 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:v29];

  v16 = self->_purgeableExperimentAndRolloutProvider;
  namespaceNamesPurgeableAtNamespaceLevel2 = [(TRIPurgeableConstructs *)v6 namespaceNamesPurgeableAtNamespaceLevel];
  eagerPurgeableFactorsByNamespaceName2 = [(TRIPurgeableConstructs *)v6 eagerPurgeableFactorsByNamespaceName];
  cacheDeleteableFactorsByNamespaceName2 = [(TRIPurgeableConstructs *)v6 cacheDeleteableFactorsByNamespaceName];
  v20 = [(TRIPurgeableExperimentAndRolloutProviding *)v16 purgeableRolloutAssetsFromNamespaces:namespaceNamesPurgeableAtNamespaceLevel2 eagerFactors:eagerPurgeableFactorsByNamespaceName2 overriddenFactors:cacheDeleteableFactorsByNamespaceName2];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke_2;
  v27 = &unk_279DDFD60;
  v28 = v15;
  v21 = v15;
  [v20 enumerateKeysAndObjectsUsingBlock:&v24];

  v22 = [(TRIAssetStore *)self->_assetStore removableAssetsSizeOlderThanNumScans:0 includedCacheDeletableAssetIds:v21, v24, v25, v26, v27];
  return v22;
}

void __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v9];
        if (v11)
        {
          [*(a1 + 32) setObject:v11 forKeyedSubscript:v9];
        }

        else
        {
          v12 = objc_opt_new();
          [*(a1 + 32) setObject:v12 forKeyedSubscript:v9];
        }

        v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
        [v13 unionSet:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v10];
  }

  else
  {
    v8 = objc_opt_new();
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v10];
  [v9 unionSet:v6];
}

void __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v10];
  }

  else
  {
    v8 = objc_opt_new();
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v10];
  [v9 unionSet:v6];
}

- (unint64_t)purgeAssetsForPurgeabilityLevel:(int)level requestedPurgeAmount:(int64_t)amount
{
  v84 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  if (amount)
  {
    v5 = *&level;
    if (level == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v73 = 0;
    [(TRIAssetStore *)self->_assetStore collectGarbageOlderThanNumScans:0 deletedAssetSize:&v73];
    v8 = v75[3] + v73;
    v75[3] = v8;
    if (v8 < amount)
    {
      v58 = [[TRIPurgeableConstructs alloc] initWithPurgeabilityLevel:v5 purgeableNamespacesProvider:self->_purgeableNamespacesProvider paths:self->_paths];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke;
      v71[3] = &unk_279DDFD88;
      v72 = v7;
      v71[4] = self;
      v71[5] = &v74;
      v71[6] = amount;
      v57 = MEMORY[0x2743948D0](v71);
      [(TRIAssetPurger *)self _enumeratePurgeCandidatesForPurgeableConstructs:v58 block:v57];
      if (v75[3] >= amount)
      {
        v45 = TRILogCategory_Server();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v75[3];
          *buf = 134218240;
          v81 = v46;
          v82 = 2048;
          amountCopy = amount;
          _os_log_impl(&dword_26F567000, v45, OS_LOG_TYPE_DEFAULT, "Found %llu bytes to purge. Cache delete only requested %llu so no need to look for regular assets to purge.", buf, 0x16u);
        }

        v8 = v75[3];
        goto LABEL_47;
      }

      purgeableExperimentAndRolloutProvider = self->_purgeableExperimentAndRolloutProvider;
      namespaceNamesPurgeableAtNamespaceLevel = [(TRIPurgeableConstructs *)v58 namespaceNamesPurgeableAtNamespaceLevel];
      eagerPurgeableFactorsByNamespaceName = [(TRIPurgeableConstructs *)v58 eagerPurgeableFactorsByNamespaceName];
      cacheDeleteableFactorsByNamespaceName = [(TRIPurgeableConstructs *)v58 cacheDeleteableFactorsByNamespaceName];
      v56 = [(TRIPurgeableExperimentAndRolloutProviding *)purgeableExperimentAndRolloutProvider purgeableExperimentsFromNamespaces:namespaceNamesPurgeableAtNamespaceLevel eagerFactors:eagerPurgeableFactorsByNamespaceName overriddenFactors:cacheDeleteableFactorsByNamespaceName];

      v13 = self->_purgeableExperimentAndRolloutProvider;
      namespaceNamesPurgeableAtNamespaceLevel2 = [(TRIPurgeableConstructs *)v58 namespaceNamesPurgeableAtNamespaceLevel];
      eagerPurgeableFactorsByNamespaceName2 = [(TRIPurgeableConstructs *)v58 eagerPurgeableFactorsByNamespaceName];
      cacheDeleteableFactorsByNamespaceName2 = [(TRIPurgeableConstructs *)v58 cacheDeleteableFactorsByNamespaceName];
      v55 = [(TRIPurgeableExperimentAndRolloutProviding *)v13 purgeableRolloutsFromNamespaces:namespaceNamesPurgeableAtNamespaceLevel2 eagerFactors:eagerPurgeableFactorsByNamespaceName2 overriddenFactors:cacheDeleteableFactorsByNamespaceName2];

      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v56 count];
        v19 = [v55 count];
        *buf = 134218240;
        v81 = v18;
        v82 = 2048;
        amountCopy = v19;
        _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Found %lu experiments and %lu rollouts to deactivate in response to cache delete request.", buf, 0x16u);
      }

      if ([v56 count] || objc_msgSend(v55, "count"))
      {
        v20 = +[TRISequenceTask task];
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        v67 = 0u;
        v21 = v56;
        v22 = [v21 countByEnumeratingWithState:&v67 objects:v79 count:16];
        if (v22)
        {
          v23 = *v68;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v68 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v67 + 1) + 8 * i);
              experimentId = [v25 experimentId];
              v27 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", experimentId, [v25 deploymentId], 1, 24, 0);

              [v20 addTaskToEndOfSequence:v27];
            }

            v22 = [v21 countByEnumeratingWithState:&v67 objects:v79 count:16];
          }

          while (v22);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v28 = v55;
        v29 = [v28 countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v29)
        {
          v30 = *v64;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v64 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = [TRIDisenrollRolloutTask taskWithRolloutId:*(*(&v63 + 1) + 8 * j) triggerEvent:1];
              [v20 addTaskToEndOfSequence:v32];
            }

            v29 = [v28 countByEnumeratingWithState:&v63 objects:v78 count:16];
          }

          while (v29);
        }

        v33 = +[TRIMaintenanceTask task];
        [v20 addTaskToEndOfSequence:v33];

        v34 = dispatch_semaphore_create(0);
        if (qword_2815976D0 != -1)
        {
          dispatch_once(&qword_2815976D0, &__block_literal_global_4);
        }

        v35 = _MergedGlobals_30;
        out_token = 0;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke_2;
        handler[3] = &unk_279DDFDB0;
        v36 = v34;
        v61 = v36;
        notify_register_dispatch("com.apple.trial.TaskQueueComplete", &out_token, v35, handler);
        taskQueue = self->_taskQueue;
        v38 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
        v39 = [(TRITaskQueuing *)taskQueue addTask:v20 options:v38];

        if (v39 == 2)
        {
          v40 = TRILogCategory_Server();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "Failed to queue cache delete deactivation tasks.", buf, 2u);
          }
        }

        v41 = self->_taskQueue;
        v42 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:0];
        [(TRITaskQueuing *)v41 resumeWithXPCActivityDescriptor:v42 executeWhenSuspended:0];

        LODWORD(v42) = [MEMORY[0x277D425A0] waitForSemaphore:v36 timeoutSeconds:30.0];
        v43 = TRILogCategory_Server();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        if (v42)
        {
          if (v44)
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Timeout while waiting for cache delete deactivation tasks to be completed.", buf, 2u);
          }

          [(TRIAssetPurger *)self _logDeactivationsMetricWithConcludedInTime:0];
        }

        else
        {
          if (v44)
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Cache delete deactivation tasks completed successfuly. Starting garbage collection to remove newly unreferenced assets.", buf, 2u);
          }

          v59 = 0;
          [(TRIAssetStore *)self->_assetStore collectGarbageOlderThanNumScans:0 deletedAssetSize:&v59];
          v47 = TRILogCategory_Server();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v81 = v59;
            _os_log_impl(&dword_26F567000, v47, OS_LOG_TYPE_DEFAULT, "Cache delete update: Purged %llu bytes from regular factors.", buf, 0xCu);
          }

          [(TRIAssetPurger *)self _logDeactivationsMetricWithConcludedInTime:1];
          v75[3] += v59;
        }
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_46;
        }

        v49 = TRILogCategory_Server();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Queuing maintenance task with no experiments or rollouts to deactivate.", buf, 2u);
        }

        v50 = self->_taskQueue;
        v51 = objc_opt_new();
        v52 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
        LOBYTE(v50) = [(TRITaskQueuing *)v50 addTask:v51 options:v52];

        if (v50 == 2)
        {
          v53 = TRILogCategory_Server();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_26F567000, v53, OS_LOG_TYPE_ERROR, "Failed to queue maintenance task.", buf, 2u);
          }
        }

        v54 = self->_taskQueue;
        v20 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:0];
        [(TRITaskQueuing *)v54 resumeWithXPCActivityDescriptor:v20 executeWhenSuspended:0];
      }

LABEL_46:
      v8 = v75[3];

LABEL_47:
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v74, 8);
  return v8;
}

void __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 factorPackId];
  v8 = @"factor pack";
  if (!v7)
  {
    v8 = @"treatment";
  }

  v9 = v8;

  v10 = [v6 factorPackId];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v6 treatmentId];
  }

  v13 = v12;

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 namespaceName];
    v16 = [v6 purgeableAssetFactorNames];
    *buf = 138413058;
    v63 = v9;
    v64 = 2114;
    v65 = v13;
    v66 = 2114;
    v67 = v15;
    v68 = 2048;
    v69 = [v16 count];
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Found purgeable %@ %{public}@ for namespace %{public}@ with %lu purgeable factors", buf, 0x2Au);
  }

  v17 = [v6 purgeableAssetFactorNames];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [v6 factorPackId];

    if (v19)
    {
      v60 = v13;
      v20 = [[TRIFactorPackStorage alloc] initWithPaths:*(*(a1 + 32) + 8)];
      v21 = [v6 factorPackId];
      v22 = [v6 namespaceName];
      v23 = [v6 purgeableAssetFactorNames];
      v24 = [(TRIFactorPackStorage *)v20 updateSavedFactorPackWithId:v21 namespaceName:v22 deletingAssetsWithFactorNames:v23 inUseAssetBehavior:*(a1 + 56)];

      if (_os_feature_enabled_impl())
      {
        v59 = v9;
        v25 = [v6 factorPackId];
        v26 = [v6 namespaceName];
        v27 = [(TRIFactorPackStorage *)v20 pathForFactorPackWithId:v25 namespaceName:v26];

        v28 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = [v27 stringByAppendingPathComponent:@"factorPack.fb"];
        if ([v28 fileExistsAtPath:v29])
        {
          v57 = v27;
          v58 = a4;
          v30 = [[TRIFBFactorPackStorage alloc] initWithPaths:*(*(a1 + 32) + 8)];
          v31 = [v6 factorPackId];
          v32 = [v6 namespaceName];
          v33 = [v6 purgeableAssetFactorNames];
          v56 = v30;
          LOBYTE(v30) = [(TRIFBFactorPackStorage *)v30 updateSavedFactorLevelsWithFactorPackId:v31 namespaceName:v32 deletingAssetsWithFactorNames:v33 inUseAssetBehavior:*(a1 + 56)];

          if ((v30 & 1) == 0)
          {
            v34 = TRILogCategory_Server();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v55 = [v6 factorPackId];
              *buf = 138412290;
              v63 = v55;
              _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Flatbuffer Factor Storage: Not able to delete assets in FactorPack %@", buf, 0xCu);
            }
          }

          v27 = v57;
          a4 = v58;
        }

        v9 = v59;
      }

      v35 = a4;

      v13 = v60;
    }

    else
    {
      v35 = a4;
      v24 = 1;
    }

    v36 = [v6 treatmentId];

    if (v36)
    {
      v37 = [[TRIClientTreatmentStorage alloc] initWithPaths:*(*(a1 + 32) + 8)];
      v38 = [v6 treatmentId];
      v39 = [v6 purgeableAssetFactorNames];
      v40 = [v6 namespaceName];
      v41 = [(TRIClientTreatmentStorage *)v37 updateSavedTreatmentWithTreatmentId:v38 deletingAssetsWithFactorNames:v39 forNamespaceName:v40 inUseAssetDeletionBehavior:*(a1 + 56)];
      if (!v41)
      {
        LOBYTE(v24) = 0;
      }

      if (v24)
      {
        goto LABEL_24;
      }
    }

    else if (v24)
    {
LABEL_24:
      v42 = TRILogCategory_Server();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v6 purgeableAssetFactorNames];
        v44 = [v43 count];
        *buf = 134218498;
        v63 = v44;
        v64 = 2112;
        v65 = v9;
        v66 = 2114;
        v67 = v13;
        _os_log_impl(&dword_26F567000, v42, OS_LOG_TYPE_DEFAULT, "Successfully removed %lu factors from %@ %{public}@", buf, 0x20u);
      }

      v45 = MEMORY[0x277D73790];
      v46 = [v6 namespaceName];
      [v45 notifyUpdateForNamespaceName:v46];

      v61 = 0;
      [*(*(a1 + 32) + 48) collectGarbageOlderThanNumScans:0 deletedAssetSize:&v61];
      v47 = v61;
      if (!v61)
      {
        v48 = TRILogCategory_Server();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v48, OS_LOG_TYPE_ERROR, "Running garbage collection after removing factors from factor pack did not result in any purged assets", buf, 2u);
        }

        v47 = v61;
      }

      *(*(*(a1 + 40) + 8) + 24) += v47;
      v49 = TRILogCategory_Server();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 134217984;
        v63 = v50;
        _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Cache delete update: Purged %llu bytes so far", buf, 0xCu);
      }

      if (*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 48))
      {
        v51 = TRILogCategory_Server();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 48);
          v53 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 134218240;
          v63 = v53;
          v64 = 2048;
          v65 = v52;
          _os_log_impl(&dword_26F567000, v51, OS_LOG_TYPE_DEFAULT, "Found %llu bytes to purge. Cache delete only requested %llu so no need to continue purging.", buf, 0x16u);
        }

        *v35 = 1;
      }

      goto LABEL_40;
    }

    v54 = TRILogCategory_Server();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v63 = v9;
      v64 = 2112;
      v65 = v13;
      _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "Not able to delete assets in %@ %@, moving on to next object", buf, 0x16u);
    }
  }

LABEL_40:
}

void __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke_141()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.status" qosClass:17];
  v2 = _MergedGlobals_30;
  _MergedGlobals_30 = v1;

  objc_autoreleasePoolPop(v0);
}

intptr_t __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke_2(uint64_t a1)
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "Task queue completion notification received for cache delete deactivation tasks.", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_logDeactivationsMetricWithConcludedInTime:(BOOL)time
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D73B40] metricWithName:@"cache_delete_deactivations_concluded_in_time" integerValue:time];
  logger = [(TRIClient *)self->_loggingClient logger];
  trackingId = [(TRIClient *)self->_loggingClient trackingId];
  v8[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [logger logWithTrackingId:trackingId metrics:v7 dimensions:0 trialSystemTelemetry:0];
}

- (void)_enumeratePurgeCandidatesForPurgeableConstructs:(id)constructs block:(id)block
{
  constructsCopy = constructs;
  blockCopy = block;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke;
  v26[3] = &unk_279DDFDD8;
  v27 = blockCopy;
  v8 = blockCopy;
  v9 = MEMORY[0x2743948D0](v26);
  v10 = MEMORY[0x277CBEB98];
  eagerPurgeableFactorsByNamespaceName = [constructsCopy eagerPurgeableFactorsByNamespaceName];
  allKeys = [eagerPurgeableFactorsByNamespaceName allKeys];
  v13 = [v10 setWithArray:allKeys];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_2;
  v24[3] = &unk_279DDFE00;
  v14 = constructsCopy;
  v25 = v14;
  v15 = MEMORY[0x2743948D0](v24);
  [(TRIPurgeableOnDemandFactorsEnumerating *)self->_purgeableFactorPacksEnumerator enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:v13 purgeableFactorFilterBlock:v15 block:v9];
  [(TRIPurgeableOnDemandFactorsEnumerating *)self->_purgeableFactorPacksEnumerator enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:v13 purgeableFactorFilterBlock:v15 block:v9];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_3;
  v22[3] = &unk_279DDFE00;
  v23 = v14;
  v16 = v14;
  v17 = MEMORY[0x2743948D0](v22);
  purgeableFactorPacksEnumerator = self->_purgeableFactorPacksEnumerator;
  namespaceNamesPurgeableAtNamespaceLevel = [v16 namespaceNamesPurgeableAtNamespaceLevel];
  [(TRIPurgeableOnDemandFactorsEnumerating *)purgeableFactorPacksEnumerator enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:namespaceNamesPurgeableAtNamespaceLevel purgeableFactorFilterBlock:v17 block:v9];

  v20 = self->_purgeableFactorPacksEnumerator;
  namespaceNamesPurgeableAtNamespaceLevel2 = [v16 namespaceNamesPurgeableAtNamespaceLevel];
  [(TRIPurgeableOnDemandFactorsEnumerating *)v20 enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:namespaceNamesPurgeableAtNamespaceLevel2 purgeableFactorFilterBlock:v17 block:v9];
}

uint64_t __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 eagerPurgeableFactorsByNamespaceName];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [v8 containsObject:v6];
  return v9;
}

uint64_t __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 cacheDeleteableFactorsByNamespaceName];
  v8 = [v7 objectForKeyedSubscript:v5];

  LODWORD(v5) = [v8 containsObject:v6];
  return v5 ^ 1;
}

@end