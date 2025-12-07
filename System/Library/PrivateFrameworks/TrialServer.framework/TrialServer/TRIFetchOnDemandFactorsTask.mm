@interface TRIFetchOnDemandFactorsTask
+ (id)parseFromData:(id)data;
+ (id)taskWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1;
- ($A5A652246548B43F8BC05201A1C72A70)_saveIndexedAssetURLs:(id)ls withTreatmentId:(id)id usingAssetMetadata:(id)metadata downloadOptions:(id)options paths:(id)paths downloadSize:(unint64_t *)size error:(id *)error;
- ($A5A652246548B43F8BC05201A1C72A70)_saveNamedAssetURLs:(id)ls usingAssetMetadata:(id)metadata downloadOptions:(id)options downloadSize:(unint64_t *)size paths:(id)paths error:(id *)error;
- (BOOL)_updateFactorPacksByMergingAssets:(id)assets context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSArray)tags;
- (NSString)description;
- (TRIFetchOnDemandFactorsTask)initWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1;
- (TRIFetchOnDemandFactorsTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)_assetIdsFromKeysInDictionary:(id)dictionary;
- (id)_currentTaskStatus;
- (id)_fetchDiffsFromAssetDiffRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options;
- (id)_fetchOptionsWithDownloadOptions:(id)options paths:(id)paths;
- (id)_planForFetchingAssetDiffsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress nonDiffableAssetIds:(id *)ids unlinkedMAAssetsOnDisk:(id *)disk;
- (id)_planForFetchingAssetsFromFactorPacksWithContext:(id)context assetDiffFetchPlan:(id)plan requiredAssetIds:(id)ids downloadOptions:(id)options updatingAggregateProgress:(id)progress;
- (id)_planForFetchingAssetsFromTreatmentRecordsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress;
- (id)_telemetryForFactorPackIds:(id)ids rolloutDeployment:(id)deployment treatmentIds:(id)treatmentIds experimentId:(id)id namespaceName:(id)name taskAttributing:(id)attributing;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)_requiredDiskSpaceForPlan:(id)plan;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addDimension:(id)dimension;
- (void)_addMetric:(id)metric;
- (void)_addMetricForFetchOnDemandFactorsTaskError:(int)error;
- (void)_asyncFetchAssetsFromTreatmentRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size downloadOptions:(id)options group:(id)group;
- (void)_asyncFetchCKAssetsFromAssetRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group;
- (void)_asyncFetchMAAssetsFromFactorPacksWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group;
- (void)_completeTaskWithStatus:(int)status earliestRetryDate:(id)date error:(id)error aggregateProgress:(id)progress context:(id)context;
- (void)_logOnDemandFactor:(id)factor metricName:(id)name namespaceName:(id)namespaceName client:(id)client error:(id)error;
- (void)encodeWithCoder:(id)coder;
- (void)removeDownloadableFactorNames:(id)names;
@end

@implementation TRIFetchOnDemandFactorsTask

- (TRIFetchOnDemandFactorsTask)initWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1
{
  v52 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  obj = id;
  idCopy = id;
  packCopy = pack;
  packCopy2 = pack;
  namesCopy = names;
  namesCopy2 = names;
  deploymentCopy = deployment;
  nameCopy = name;
  nameCopy2 = name;
  attributingCopy = attributing;
  keyCopy = key;
  modifierCopy = modifier;
  v49.receiver = self;
  v49.super_class = TRIFetchOnDemandFactorsTask;
  v21 = [(TRIFetchOnDemandFactorsTask *)&v49 init];
  v22 = v21;
  if (v21)
  {
    v43 = treatmentCopy;
    objc_storeStrong(&v21->_assetIndexesByTreatment, treatment);
    objc_storeStrong(&v22->_experimentId, obj);
    objc_storeStrong(&v22->_assetIdsByFactorPack, packCopy);
    objc_storeStrong(&v22->_rolloutFactorNames, namesCopy);
    objc_storeStrong(&v22->_deployment, deployment);
    objc_storeStrong(&v22->_namespaceName, nameCopy);
    objc_storeStrong(&v22->_taskAttributing, attributing);
    v22->_retryCount = 0;
    objc_storeStrong(&v22->_notificationKey, key);
    objc_storeStrong(&v22->_capabilityModifier, modifier);
    atomic_store(0, &v22->_isCurrentlyExecuting);
    allKeys = [packCopy2 allKeys];
    if ([allKeys count] >= 2)
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = allKeys;
        _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "On-demand factor fetch was initiated for >1 factor pack and will be excluded from telemetry. Got %{public}@", buf, 0xCu);
      }
    }

    allKeys2 = [v43 allKeys];
    v26 = [(TRIFetchOnDemandFactorsTask *)v22 _telemetryForFactorPackIds:allKeys rolloutDeployment:deploymentCopy treatmentIds:allKeys2 experimentId:idCopy namespaceName:nameCopy2 taskAttributing:attributingCopy];
    trialSystemTelemetry = v22->_trialSystemTelemetry;
    v22->_trialSystemTelemetry = v26;

    v28 = objc_opt_new();
    v29 = objc_opt_new();
    v30 = *(v28 + 8);
    *(v28 + 8) = v29;

    *(v28 + 16) = 0;
    v31 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v22->_rolloutFactorNames];
    v32 = *(v28 + 40);
    *(v28 + 40) = v31;

    v33 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v28];
    lock = v22->_lock;
    v22->_lock = v33;

    v35 = objc_opt_new();
    factorNameByAssetId = v22->_factorNameByAssetId;
    v22->_factorNameByAssetId = v35;

    treatmentCopy = v43;
  }

  return v22;
}

+ (id)taskWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1
{
  modifierCopy = modifier;
  keyCopy = key;
  attributingCopy = attributing;
  nameCopy = name;
  deploymentCopy = deployment;
  namesCopy = names;
  packCopy = pack;
  idCopy = id;
  treatmentCopy = treatment;
  v27 = [[self alloc] initWithAssetIndexesByTreatment:treatmentCopy experimentId:idCopy assetIdsByFactorPack:packCopy rolloutFactorNames:namesCopy rolloutDeployment:deploymentCopy namespaceName:nameCopy taskAttributing:attributingCopy notificationKey:keyCopy capabilityModifier:modifierCopy];

  return v27;
}

- (id)_telemetryForFactorPackIds:(id)ids rolloutDeployment:(id)deployment treatmentIds:(id)treatmentIds experimentId:(id)id namespaceName:(id)name taskAttributing:(id)attributing
{
  idsCopy = ids;
  deploymentCopy = deployment;
  treatmentIdsCopy = treatmentIds;
  idCopy = id;
  attributingCopy = attributing;
  nameCopy = name;
  v19 = objc_opt_new();
  networkOptions = [attributingCopy networkOptions];
  [v19 setFieldsForDownloadOptions:networkOptions];

  ensureFactorFields = [v19 ensureFactorFields];
  [ensureFactorFields setNamespaceName:nameCopy];

  if ([idsCopy count] == 1)
  {
    firstObject = [idsCopy firstObject];
    ensureFactorFields2 = [v19 ensureFactorFields];
    [ensureFactorFields2 setClientFactorPackId:firstObject];
  }

  if (deploymentCopy)
  {
    [v19 setFieldsForRolloutDeployment:deploymentCopy];
  }

  if (idCopy)
  {
    ensureExperimentFields = [v19 ensureExperimentFields];
    [ensureExperimentFields setClientExperimentId:idCopy];
  }

  if ([treatmentIdsCopy count] == 1)
  {
    firstObject2 = [treatmentIdsCopy firstObject];
    ensureExperimentFields2 = [v19 ensureExperimentFields];
    [ensureExperimentFields2 setClientTreatmentId:firstObject2];
  }

  v27 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:attributingCopy];
  [v19 mergeFrom:v27];

  return v19;
}

- (NSArray)tags
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_notificationKey)
  {
    v4[0] = self->_notificationKey;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- ($A5A652246548B43F8BC05201A1C72A70)_saveIndexedAssetURLs:(id)ls withTreatmentId:(id)id usingAssetMetadata:(id)metadata downloadOptions:(id)options paths:(id)paths downloadSize:(unint64_t *)size error:(id *)error
{
  lsCopy = ls;
  idCopy = id;
  metadataCopy = metadata;
  optionsCopy = options;
  pathsCopy = paths;
  v20 = [TRIAssetStore alloc];
  activity = [optionsCopy activity];
  v22 = [(TRIAssetStore *)v20 initWithPaths:pathsCopy monitoredActivity:activity];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2810000000;
  v46 = &unk_26F7089E2;
  v47 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__50;
  v41 = __Block_byref_object_dispose__50;
  v42 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __129__TRIFetchOnDemandFactorsTask__saveIndexedAssetURLs_withTreatmentId_usingAssetMetadata_downloadOptions_paths_downloadSize_error___block_invoke;
  v29[3] = &unk_279DE4340;
  v35 = a2;
  v29[4] = self;
  v23 = idCopy;
  v30 = v23;
  v24 = lsCopy;
  v31 = v24;
  v25 = v22;
  v32 = v25;
  v33 = &v37;
  v34 = &v43;
  sizeCopy = size;
  [metadataCopy enumerateKeysAndObjectsUsingBlock:v29];
  if (error)
  {
    *error = v38[5];
  }

  v26.var0 = *(v44 + 32);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v26;
}

void __129__TRIFetchOnDemandFactorsTask__saveIndexedAssetURLs_withTreatmentId_usingAssetMetadata_downloadOptions_paths_downloadSize_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 treatmentIndex];
  if (!v9)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:302 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
  }

  v10 = *(a1 + 40);
  v11 = [v9 treatmentId];
  LODWORD(v10) = [v10 isEqualToString:v11];

  if (v10)
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "index")}];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = *(a1 + 56);
      v16 = *(*(a1 + 64) + 8);
      obj = *(v16 + 40);
      v17 = [v15 saveAssetWithIdentifier:v7 assetURL:v14 metadata:v8 error:&obj];
      objc_storeStrong((v16 + 40), obj);
      if (v17 == 1)
      {
        **(a1 + 88) += [v8 downloadSize];
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 32) = v17;
        *a4 = 1;
      }
    }
  }
}

- ($A5A652246548B43F8BC05201A1C72A70)_saveNamedAssetURLs:(id)ls usingAssetMetadata:(id)metadata downloadOptions:(id)options downloadSize:(unint64_t *)size paths:(id)paths error:(id *)error
{
  lsCopy = ls;
  metadataCopy = metadata;
  optionsCopy = options;
  pathsCopy = paths;
  v18 = [TRIAssetStore alloc];
  activity = [optionsCopy activity];
  v20 = [(TRIAssetStore *)v18 initWithPaths:pathsCopy monitoredActivity:activity];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2810000000;
  v43 = &unk_26F7089E2;
  v44 = 1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__50;
  v38 = __Block_byref_object_dispose__50;
  v39 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __111__TRIFetchOnDemandFactorsTask__saveNamedAssetURLs_usingAssetMetadata_downloadOptions_downloadSize_paths_error___block_invoke;
  v26[3] = &unk_279DE4368;
  v21 = metadataCopy;
  v32 = a2;
  v27 = v21;
  selfCopy = self;
  v22 = v20;
  v29 = v22;
  v30 = &v34;
  v31 = &v40;
  sizeCopy = size;
  [lsCopy enumerateKeysAndObjectsUsingBlock:v26];
  if (error)
  {
    *error = v35[5];
  }

  v23.var0 = *(v41 + 32);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v23;
}

void __111__TRIFetchOnDemandFactorsTask__saveNamedAssetURLs_usingAssetMetadata_downloadOptions_downloadSize_paths_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 objectForKeyedSubscript:v9];
  if (!v10)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:343 description:{@"Expression was unexpectedly nil/false: %@", @"assetMetadata[assetId]"}];
  }

  v11 = *(a1 + 48);
  v12 = *(*(a1 + 56) + 8);
  obj = *(v12 + 40);
  v13 = [v11 saveAssetWithIdentifier:v9 assetURL:v8 metadata:v10 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  if (v13 == 1)
  {
    **(a1 + 80) += [v10 downloadSize];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 32) = v13;
    *a4 = 1;
  }
}

- (BOOL)_updateFactorPacksByMergingAssets:(id)assets context:(id)context
{
  assetsCopy = assets;
  contextCopy = context;
  v8 = [TRIFactorPackStorage alloc];
  paths = [contextCopy paths];
  v10 = [(TRIFactorPackStorage *)v8 initWithPaths:paths];

  LOBYTE(v8) = _os_feature_enabled_impl();
  LOBYTE(paths) = _os_feature_enabled_impl();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  assetIdsByFactorPack = self->_assetIdsByFactorPack;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke;
  v16[3] = &unk_279DE4390;
  v12 = assetsCopy;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  selfCopy = self;
  v21 = &v24;
  v22 = paths;
  v14 = contextCopy;
  v20 = v14;
  v23 = v8;
  [(NSDictionary *)assetIdsByFactorPack enumerateKeysAndObjectsUsingBlock:v16];
  LOBYTE(contextCopy) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return contextCopy;
}

void __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) cloudKit];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_2;
  v33[3] = &unk_279DE3F30;
  v9 = v7;
  v34 = v9;
  [v8 enumerateObjectsUsingBlock:v33];

  v10 = [*(a1 + 32) mobileAsset];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_3;
  v31[3] = &unk_279DE3F58;
  v11 = v9;
  v32 = v11;
  [v10 enumerateObjectsUsingBlock:v31];

  v12 = [*(a1 + 40) loadFactorPackWithId:v6 namespaceName:*(*(a1 + 48) + 48)];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 selectedNamespace];
    v15 = [v14 hasName];

    if (v15)
    {
      v16 = [v13 selectedNamespace];
      v17 = [v16 name];
      v18 = [TRIClientFactorPackUtils aliasesInNamespace:v17];
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v28 = [v13 factorPackId];
        *buf = 138543362;
        v36 = v28;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has missing namespace name.", buf, 0xCu);
      }

      v18 = 0;
    }

    if ([*(a1 + 40) updateSavedFactorPackWithId:v6 namespaceName:*(*(a1 + 48) + 48) populatingAssetsForFactorNames:v11 aliasToUnaliasMap:v18])
    {
      if (*(a1 + 72) == 1)
      {
        v20 = [*(a1 + 40) pathForFactorPackWithId:v6 namespaceName:*(*(a1 + 48) + 48)];
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [v20 stringByAppendingPathComponent:@"factorPack.fb"];
        v30 = v21;
        if ([v21 fileExistsAtPath:v22])
        {
          v29 = v20;
          v23 = [TRIFBFactorPackStorage alloc];
          v24 = [*(a1 + 56) paths];
          v25 = [(TRIFBFactorPackStorage *)v23 initWithPaths:v24];

          if (([v25 updateSavedFactorLevelsWithFactorPackId:v6 namespaceName:*(*(a1 + 48) + 48) populatingAssetsForFactorNames:v11 aliasToUnaliasMap:v18]& 1) != 0)
          {
            v20 = v29;
          }

          else
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v6;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Could not update factor levels storage for factor pack id: %@", buf, 0xCu);
            }

            v20 = v29;
            if (*(a1 + 73) == 1)
            {
              *(*(*(a1 + 64) + 8) + 24) = 0;
              *a4 = 1;
            }
          }
        }

        else
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = *(*(a1 + 48) + 48);
            *buf = 138412546;
            v36 = v6;
            v37 = 2112;
            v38 = v26;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Could not update factor levels for factor pack id: %@ because the flatbuffer file was absent for namespace name: %@", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v6;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Unexpected failure to load factor pack: %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 factorName];
  [v2 addObject:v3];
}

void __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 factorName];
  [v2 addObject:v3];
}

- (id)_assetIdsFromKeysInDictionary:(id)dictionary
{
  v16 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_fetchOptionsWithDownloadOptions:(id)options paths:(id)paths
{
  v6 = MEMORY[0x277D73688];
  pathsCopy = paths;
  optionsCopy = options;
  v9 = [[v6 alloc] initWithPaths:pathsCopy];
  v10 = [objc_alloc(MEMORY[0x277D737B0]) initWithPaths:pathsCopy namespaceMetadataStorage:v9];

  v11 = [v10 availableSpaceClassForFactorNames:self->_rolloutFactorNames namespaceName:self->_namespaceName];
  v12 = [TRIFetchOptions alloc];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v14 = [(TRIFetchOptions *)v12 initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:v13];

  return v14;
}

- (void)removeDownloadableFactorNames:(id)names
{
  namesCopy = names;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TRIFetchOnDemandFactorsTask_removeDownloadableFactorNames___block_invoke;
  v7[3] = &unk_279DE43B8;
  v8 = namesCopy;
  v6 = namesCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __61__TRIFetchOnDemandFactorsTask_removeDownloadableFactorNames___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3[5] containsObject:*(a1 + 32)])
  {
    [v3[5] removeObject:*(a1 + 32)];
  }

  else
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Missing TRIFactorName %@ in downloadableFactorNames", &v6, 0xCu);
    }
  }
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v114 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v88 = os_transaction_create();
  atomic_store(1u, &self->_isCurrentlyExecuting);
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke;
  v105[3] = &unk_279DDF7A0;
  v105[4] = self;
  v7 = contextCopy;
  v106 = v7;
  v89 = MEMORY[0x2743948D0](v105);
  keyValueStore = [v7 keyValueStore];
  v91 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

  namespaceDatabase = [v7 namespaceDatabase];
  paths = [v7 paths];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v90 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

  applicationBundleIdentifier = [(TRITaskAttributing *)self->_taskAttributing applicationBundleIdentifier];
  v13 = objc_autoreleasePoolPush();
  v14 = MEMORY[0x277D73750];
  namespaceName = self->_namespaceName;
  paths2 = [v7 paths];
  namespaceDescriptorsDefaultDir2 = [paths2 namespaceDescriptorsDefaultDir];
  v18 = [v14 loadWithNamespaceName:namespaceName fromDirectory:namespaceDescriptorsDefaultDir2];

  resourceAttributionIdentifier = [v18 resourceAttributionIdentifier];
  v20 = resourceAttributionIdentifier;
  if (resourceAttributionIdentifier)
  {
    v21 = resourceAttributionIdentifier;
  }

  else
  {
    v21 = applicationBundleIdentifier;
  }

  v22 = v21;

  expensiveNetworkingAllowed = [v18 expensiveNetworkingAllowed];
  v23 = TRILogCategory_Server();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = self->_namespaceName;
    *buf = 138543618;
    *&buf[4] = v24;
    v108 = 2114;
    v109 = v22;
    _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_INFO, "attributing on-demand factors fetch for %{public}@ to %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  deployment = [(TRIFetchOnDemandFactorsTask *)self deployment];

  if (deployment)
  {
    rolloutDatabase = [v7 rolloutDatabase];
    deployment2 = [(TRIFetchOnDemandFactorsTask *)self deployment];
    v28 = [rolloutDatabase recordWithDeployment:deployment2 usingTransaction:0];

    if (v28)
    {
      rampId = [v28 rampId];

      if (!rampId)
      {
LABEL_13:

        goto LABEL_14;
      }

      v30 = objc_opt_new();
      rampId2 = [v28 rampId];
      ensureRolloutFields = [v30 ensureRolloutFields];
      [ensureRolloutFields setClientRampId:rampId2];

      [(TRITrialSystemTelemetry *)self->_trialSystemTelemetry mergeFrom:v30];
    }

    else
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        deployment3 = [(TRIFetchOnDemandFactorsTask *)self deployment];
        shortDesc = [deployment3 shortDesc];
        *buf = 138543362;
        *&buf[4] = shortDesc;
        _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Warning: unable to find TRIRolloutRecord for deployment %{public}@; issuing incomplete telemetry.", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  triCloudKitContainer = [(TRITaskAttributing *)self->_taskAttributing triCloudKitContainer];
  teamIdentifier = [(TRITaskAttributing *)self->_taskAttributing teamIdentifier];
  v37 = [TRICKNativeArtifactProvider providerForContainer:triCloudKitContainer teamId:teamIdentifier bundleId:v22 dateProvider:v91 namespaceDescriptorProvider:v90 serverContext:v7];
  artifactProvider = self->_artifactProvider;
  self->_artifactProvider = v37;

  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_39];
  networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  if (![networkOptions discretionaryBehavior])
  {
    goto LABEL_25;
  }

  stateProvider = [(TRIBaseTask *)self stateProvider];
  v41 = [stateProvider activeActivityDescriptorGrantingCapability:16];
  activity = [v41 activity];
  if (!activity)
  {
    v67 = TRILogCategory_Server();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v67, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
    }

    [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:1 earliestRetryDate:0 error:0 aggregateProgress:0 context:v7];
    [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:3];
    _currentTaskStatus = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
    goto LABEL_48;
  }

  [networkOptions setActivity:activity];
  v43 = [stateProvider activeActivityDescriptorGrantingCapability:1];

  allowsCellularAccess = [networkOptions allowsCellularAccess];
  if (v43)
  {
    v45 = 0;
  }

  else
  {
    v45 = allowsCellularAccess;
  }

  if (v45 == 1 && (!v22 || (([v22 length] != 0) & expensiveNetworkingAllowed) == 0))
  {
    v69 = TRILogCategory_Server();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v74 = self->_namespaceName;
      anyObject = [(NSSet *)self->_rolloutFactorNames anyObject];
      v76 = anyObject;
      v77 = @"NO";
      *buf = 138544130;
      *&buf[4] = v74;
      v108 = 2114;
      if (expensiveNetworkingAllowed)
      {
        v77 = @"YES";
      }

      v109 = anyObject;
      v110 = 2114;
      v111 = v22;
      v112 = 2114;
      v113 = v77;
      _os_log_error_impl(&dword_26F567000, v69, OS_LOG_TYPE_ERROR, "preventing fetch for (%{public}@, %{public}@) on cellular, resourceAttributionBundleIdentifier: %{public}@ expensiveNetworkingAllowed: %{public}@", buf, 0x2Au);
    }

    [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:1 earliestRetryDate:0 error:0 aggregateProgress:0 context:v7];
    [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:23];
    _currentTaskStatus = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_48:
    _currentTaskStatus2 = _currentTaskStatus;

    goto LABEL_63;
  }

  if ([networkOptions allowsCellularAccess])
  {
    v46 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(networkOptions, "allowsCellularAccess")}];
    [(TRIFetchOnDemandFactorsTask *)self _addMetric:v46];
  }

LABEL_25:
  v47 = [TRIAggregateFetchRecordsProgress alloc];
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_455;
  v104[3] = &unk_279DE4428;
  v104[4] = self;
  v48 = [(TRIAggregateFetchRecordsProgress *)v47 initWithProgressBlock:v104];
  v49 = [(TRIFetchOnDemandFactorsTask *)self _planForFetchingAssetsFromTreatmentRecordsWithContext:v7 downloadOptions:networkOptions updatingAggregateProgress:v48];
  if (v49)
  {
    *buf = 0;
    v103 = 0;
    v50 = [(TRIFetchOnDemandFactorsTask *)self _planForFetchingAssetDiffsWithContext:v7 downloadOptions:networkOptions updatingAggregateProgress:v48 nonDiffableAssetIds:buf unlinkedMAAssetsOnDisk:&v103];
    if (!v50)
    {
      goto LABEL_41;
    }

    if (!*buf)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:602 description:{@"Invalid parameter not satisfying: %@", @"requiredNonDiffableAssetIds"}];
    }

    v51 = [TRIFetchOnDemandFactorsTask _planForFetchingAssetsFromFactorPacksWithContext:"_planForFetchingAssetsFromFactorPacksWithContext:assetDiffFetchPlan:requiredAssetIds:downloadOptions:updatingAggregateProgress:" assetDiffFetchPlan:v7 requiredAssetIds:v50 downloadOptions:? updatingAggregateProgress:?];

    if (!v51)
    {
LABEL_41:
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:4];
      _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_61:

      goto LABEL_62;
    }

    if (![TRICacheDeleteUtils hasSufficientDiskSpaceForDownload:[(TRIFetchOnDemandFactorsTask *)self _requiredDiskSpaceForPlan:v51]])
    {
      v70 = TRILogCategory_Server();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *v102 = 0;
        _os_log_error_impl(&dword_26F567000, v70, OS_LOG_TYPE_ERROR, "Insufficient disk space for on-demand factor fetch. Stopping the task before starting the download", v102, 2u);
      }

      [MEMORY[0x277D73698] notifyDownloadFailedForKey:self->_notificationKey withError:4];
      [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:v48 context:v7];
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:24];
      _currentTaskStatus3 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
      goto LABEL_52;
    }

    paths3 = [v7 paths];
    v84 = [(TRIFetchOnDemandFactorsTask *)self _fetchOptionsWithDownloadOptions:networkOptions paths:paths3];

    v53 = dispatch_group_create();
    *v102 = 0;
    v54 = [(TRIFetchOnDemandFactorsTask *)self _fetchDiffsFromAssetDiffRecordsWithContext:v7 plan:v51 aggregateProgress:v48 downloadSize:v102 options:v84];
    v86 = v54;
    if (v54)
    {
      if (![v54 count])
      {
LABEL_36:
        *v101 = 0;
        [(TRIFetchOnDemandFactorsTask *)self _asyncFetchCKAssetsFromAssetRecordsWithContext:v7 plan:v51 aggregateProgress:v48 downloadSize:v101 options:v84 group:v53];
        v100 = 0;
        v59 = v53;
        [(TRIFetchOnDemandFactorsTask *)self _asyncFetchMAAssetsFromFactorPacksWithContext:v7 plan:v51 aggregateProgress:v48 downloadSize:&v100 options:v84 group:v53];
        v60 = dispatch_group_create();
        v99 = 0;
        [(TRIFetchOnDemandFactorsTask *)self _asyncFetchAssetsFromTreatmentRecordsWithContext:v7 plan:v49 aggregateProgress:v48 downloadSize:&v99 downloadOptions:networkOptions group:v60];
        dispatch_group_enter(v60);
        v61 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_465;
        block[3] = &unk_279DE4450;
        block[4] = self;
        v51 = v51;
        v94 = v51;
        v95 = v103;
        v82 = v7;
        v96 = v82;
        v80 = v48;
        v97 = v80;
        v62 = v60;
        v98 = v62;
        dispatch_group_notify(v59, v61, block);

        v63 = TRILogCategory_Server();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 0;
          _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask waiting for group completion.", v92, 2u);
        }

        [MEMORY[0x277D425A0] waitForGroup:v62];
        v64 = TRILogCategory_Server();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 0;
          _os_log_impl(&dword_26F567000, v64, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask group complete.", v92, 2u);
        }

        [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:2 earliestRetryDate:0 error:0 aggregateProgress:v80 context:v82];
        _currentTaskStatus3 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_52:
        _currentTaskStatus2 = _currentTaskStatus3;
LABEL_60:

        goto LABEL_61;
      }

      v55 = [*buf setByAddingObjectsFromSet:v86];
      v79 = [(TRIFetchOnDemandFactorsTask *)self _planForFetchingAssetsFromFactorPacksWithContext:v7 assetDiffFetchPlan:v51 requiredAssetIds:v55 downloadOptions:networkOptions updatingAggregateProgress:v48];
      v81 = v53;

      if (!v79)
      {
        [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:4];
        _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_59:

        v51 = v84;
        goto LABEL_60;
      }

      dictionary = [MEMORY[0x277CBEAC0] dictionary];
      v57 = [v79 copyWithReplacementRecordIdsForDiffableAssetIds:dictionary];
      v58 = [(TRIFetchOnDemandFactorsTask *)self _requiredDiskSpaceForPlan:v57];

      if ([TRICacheDeleteUtils hasSufficientDiskSpaceForDownload:v58])
      {
        v51 = v79;
        v53 = v81;
        goto LABEL_36;
      }

      v71 = TRILogCategory_Server();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *v101 = 0;
        _os_log_error_impl(&dword_26F567000, v71, OS_LOG_TYPE_ERROR, "Fetch plan was changed due to incomplete diff download. We now have insufficient disk space for on-demand factor fetch. Stopping the task early.", v101, 2u);
      }

      [MEMORY[0x277D73698] notifyDownloadFailedForKey:self->_notificationKey withError:4];
      [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:v48 context:v7];
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:24];
      _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
      v51 = v79;
    }

    else
    {
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:10];
      _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
      v81 = v53;
    }

    goto LABEL_59;
  }

  [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:6];
  _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_62:

LABEL_63:
  v72 = v89;
  if (v89)
  {
    (*(v89 + 2))();
    v72 = v89;
  }

  return _currentTaskStatus2;
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  atomic_store(0, (*(a1 + 32) + 88));
  v2 = objc_alloc(MEMORY[0x277CCA9B8]);
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"on_demand_requested_factor_failed_to_download_without_asset_fetch";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v4 = [v2 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v3];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 128);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_2;
  v9[3] = &unk_279DE43E0;
  v9[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  [v7 runWithLockAcquired:v9];
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a2 + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (v8)
        {
          v9 = *(a1 + 32);
          v10 = v9[6];
          v11 = [*(a1 + 40) client];
          [v9 _logOnDemandFactor:v8 metricName:@"on_demand_factor_failed_to_download_by_request" namespaceName:v10 client:v11 error:*(a1 + 48)];
        }

        else
        {
          v11 = TRILogCategory_Server();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            *buf = 138412290;
            v19 = v13;
            _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Missing factorname in %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_446(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  v2 = *(a2 + 24);
  *(a2 + 24) = 0;
  v3 = a2;

  v4 = v3[4];
  v3[4] = 0;
}

void *__61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_455(void *result, double a2)
{
  v2 = *(result[4] + 72);
  if (v2)
  {
    return [MEMORY[0x277D73698] notifyDownloadProgressForKey:v2 withProgress:(a2 * 99.0)];
  }

  return result;
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_465(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentTaskStatus];
  v3 = [v2 runStatus];

  if (!v3)
  {
    v4 = [*(a1 + 40) metadataForRequestedUnlinkedAssets];
    v5 = [v4 mobileAsset];
    v6 = [v5 mutableCopy];

    v7 = [*(a1 + 48) allObjects];
    [v6 addObjectsFromArray:v7];

    v8 = [*(a1 + 40) metadataForRequestedUnlinkedAssets];
    v9 = [v8 copyWithReplacementMobileAsset:v6];

    if (([*(a1 + 32) _updateFactorPacksByMergingAssets:v9 context:*(a1 + 56)] & 1) == 0)
    {
      [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 64) context:*(a1 + 56)];
      [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:14];
    }
  }

  v10 = *(a1 + 72);

  dispatch_group_leave(v10);
}

- (unint64_t)_requiredDiskSpaceForPlan:(id)plan
{
  planCopy = plan;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  recordIdsForDiffableAssetIds = [planCopy recordIdsForDiffableAssetIds];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke;
  v12[3] = &unk_279DE4478;
  v12[4] = &v13;
  [recordIdsForDiffableAssetIds enumerateKeysAndObjectsUsingBlock:v12];

  recordIdsForNonDiffableAssetIds = [planCopy recordIdsForNonDiffableAssetIds];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_2;
  v11[3] = &unk_279DE4478;
  v11[4] = &v13;
  [recordIdsForNonDiffableAssetIds enumerateKeysAndObjectsUsingBlock:v11];

  metadataForRequestedUnlinkedAssets = [planCopy metadataForRequestedUnlinkedAssets];
  mobileAsset = [metadataForRequestedUnlinkedAssets mobileAsset];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_3;
  v10[3] = &unk_279DE44A0;
  v10[4] = &v13;
  [mobileAsset enumerateObjectsUsingBlock:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 downloadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 downloadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  *(*(*(a1 + 32) + 8) + 24) += [v3 downloadSize];
}

- (void)_completeTaskWithStatus:(int)status earliestRetryDate:(id)date error:(id)error aggregateProgress:(id)progress context:(id)context
{
  dateCopy = date;
  errorCopy = error;
  progressCopy = progress;
  lock = self->_lock;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__TRIFetchOnDemandFactorsTask__completeTaskWithStatus_earliestRetryDate_error_aggregateProgress_context___block_invoke;
  v18[3] = &unk_279DE44C8;
  statusCopy = status;
  v18[4] = self;
  v19 = errorCopy;
  v20 = dateCopy;
  v21 = progressCopy;
  v15 = progressCopy;
  v16 = dateCopy;
  v17 = errorCopy;
  [(_PASLock *)lock runWithLockAcquired:v18];
}

void __105__TRIFetchOnDemandFactorsTask__completeTaskWithStatus_earliestRetryDate_error_aggregateProgress_context___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 64);
  if (v4 == 2)
  {
    goto LABEL_16;
  }

  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Early termination of TRIFetchOnDemandFactorsTask. Cancelling remaining fetch operations", buf, 2u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v3[1];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v26 + 1) + 8 * i) cancel];
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 32);
  if (*(v11 + 144))
  {
    v12 = 1;
  }

  else
  {
    v12 = [TRICKNativeArtifactProvider isActivityDeferralError:*(a1 + 40)];
    v11 = *(a1 + 32);
  }

  *(v11 + 144) = v12;
  v4 = *(a1 + 64);
  if (v4 != 3 || *(v3 + 4) == 3)
  {
LABEL_16:
    if (!*(v3 + 4))
    {
      v13 = v3[3];
      *(v3 + 4) = v4;
      if (!v13)
      {
        objc_storeStrong(v3 + 3, *(a1 + 48));
      }

      if (!v3[4])
      {
        objc_storeStrong(v3 + 4, *(a1 + 40));
      }

      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138543618;
        v31 = v15;
        v32 = 2114;
        v33 = v3;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ complete with %{public}@", buf, 0x16u);
      }

      v16 = *(a1 + 64);
      if (v16 == 2)
      {
        [MEMORY[0x277D73790] notifyUpdateForNamespaceName:*(*(a1 + 32) + 48)];
        v17 = *(*(a1 + 32) + 72);
        if (v17)
        {
          [MEMORY[0x277D73698] notifyDownloadProgressForKey:v17 withProgress:100];
          [MEMORY[0x277D73698] notifyDownloadCompletedForKey:*(*(a1 + 32) + 72)];
        }

        v16 = *(a1 + 64);
      }

      if (v16 == 4)
      {
        v18 = *(*(a1 + 32) + 72);
        if (!v18)
        {
          goto LABEL_17;
        }

        [MEMORY[0x277D73698] notifyDownloadFailedForKey:v18 withError:3];
        v16 = *(a1 + 64);
      }

      if (v16 == 1)
      {
        v19 = *(*(a1 + 32) + 72);
        if (v19)
        {
          v20 = *(a1 + 56);
          if (v20)
          {
            [v20 fractionCompleted];
            v22 = (v21 * 100.0);
            v19 = *(*(a1 + 32) + 72);
          }

          else
          {
            v22 = 0;
          }

          [MEMORY[0x277D73698] notifyDownloadStalledForKey:v19 withProgress:{v22, v26}];
        }
      }
    }
  }

  else
  {
    *(v3 + 4) = 3;
    objc_storeStrong(v3 + 3, *(a1 + 48));
    objc_storeStrong(v3 + 4, *(a1 + 40));
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      *buf = 138543618;
      v31 = v24;
      v32 = 2114;
      v33 = v3;
      _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ failed with %{public}@", buf, 0x16u);
    }

    v25 = *(*(a1 + 32) + 72);
    if (v25)
    {
      [MEMORY[0x277D73698] notifyDownloadFailedForKey:v25 withError:0];
    }
  }

LABEL_17:
}

- (id)_currentTaskStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TRIFetchOnDemandFactorsTask__currentTaskStatus__block_invoke;
  v5[3] = &unk_279DE44F0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__TRIFetchOnDemandFactorsTask__currentTaskStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TRITaskRunResult alloc];
  v5 = *(v3 + 4);
  v6 = v3[3];

  *(*(*(a1 + 32) + 8) + 40) = [(TRITaskRunResult *)v4 initWithRunStatus:v5 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:v6];

  return MEMORY[0x2821F96F8]();
}

- (id)_planForFetchingAssetsFromTreatmentRecordsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress
{
  v131 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionsCopy = options;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Beginning plan for fetching assets from treatment records.", buf, 2u);
  }

  v73 = dispatch_group_create();
  v8 = objc_alloc(MEMORY[0x277D425F8]);
  v9 = objc_opt_new();
  v75 = [v8 initWithGuardedData:v9];

  v72 = [[TRIFetchOptions alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:&unk_287FC4CF0];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = self->_assetIndexesByTreatment;
  v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v116 objects:v130 count:16];
  if (v10)
  {
    v11 = *v117;
    v12 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v117 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v116 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        dispatch_group_enter(v73);
        artifactProvider = self->_artifactProvider;
        v109[0] = v12;
        v109[1] = 3221225472;
        v109[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke;
        v109[3] = &unk_279DE4540;
        v109[4] = self;
        v110 = progressCopy;
        v111 = contextCopy;
        v115 = a2;
        v112 = v75;
        v113 = v14;
        v114 = v73;
        v17 = [(TRIArtifactProvider *)artifactProvider fetchTreatmentWithId:v14 options:v72 completion:v109];
        lock = self->_lock;
        v107[0] = v12;
        v107[1] = 3221225472;
        v107[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_476;
        v107[3] = &unk_279DE43B8;
        v108 = v17;
        v19 = v17;
        [(_PASLock *)lock runWithLockAcquired:v107];

        objc_autoreleasePoolPop(v15);
      }

      v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v116 objects:v130 count:16];
    }

    while (v10);
  }

  [MEMORY[0x277D425A0] waitForGroup:v73];
  _currentTaskStatus = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
  v21 = [_currentTaskStatus runStatus] == 0;

  if (v21)
  {
    v69 = objc_opt_new();
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v23 = self->_assetIndexesByTreatment;
    v24 = [(NSDictionary *)v23 countByEnumeratingWithState:&v103 objects:v129 count:16];
    if (v24)
    {
      v25 = *v104;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v104 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v103 + 1) + 8 * j);
          v28 = objc_autoreleasePoolPush();
          v29 = [TRIClientTreatmentStorage alloc];
          paths = [contextCopy paths];
          v31 = [(TRIClientTreatmentStorage *)v29 initWithPaths:paths];

          v32 = [(TRIClientTreatmentStorage *)v31 loadTreatmentWithTreatmentId:v27 isFilePresent:0];
          v33 = v32;
          if (!v32)
          {
            [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:progressCopy context:contextCopy];
            [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:13];

            objc_autoreleasePoolPop(v28);
LABEL_39:
            v22 = 0;
            goto LABEL_44;
          }

          unlinkedOnDemandAssets = [v32 unlinkedOnDemandAssets];
          if (unlinkedOnDemandAssets)
          {
            v35 = [(NSDictionary *)self->_assetIndexesByTreatment objectForKeyedSubscript:v27];
            if (!v35)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:932 description:{@"Expression was unexpectedly nil/false: %@", @"self->_assetIndexesByTreatment[treatmentId]", context}];
            }

            v99[0] = MEMORY[0x277D85DD0];
            v99[1] = 3221225472;
            v99[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_2_481;
            v99[3] = &unk_279DE4568;
            v102 = a2;
            v99[4] = self;
            v100 = v35;
            v101 = v69;
            v36 = v35;
            [unlinkedOnDemandAssets enumerateKeysAndObjectsUsingBlock:v99];
          }

          else
          {
            [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:progressCopy context:contextCopy];
            [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:12];
          }

          objc_autoreleasePoolPop(v28);
          if (!unlinkedOnDemandAssets)
          {
            goto LABEL_39;
          }
        }

        v24 = [(NSDictionary *)v23 countByEnumeratingWithState:&v103 objects:v129 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v37 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSDictionary count](self->_assetIndexesByTreatment, "count")}];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v38 = self->_assetIndexesByTreatment;
    obja = [(NSDictionary *)v38 countByEnumeratingWithState:&v95 objects:v128 count:16];
    if (obja)
    {
      v39 = 0;
      v68 = *v96;
      do
      {
        for (k = 0; k != obja; k = k + 1)
        {
          if (*v96 != v68)
          {
            objc_enumerationMutation(v38);
          }

          v41 = *(*(&v95 + 1) + 8 * k);
          v42 = objc_autoreleasePoolPush();
          v43 = objc_opt_new();
          v44 = [TRIAssetStore alloc];
          paths2 = [contextCopy paths];
          v46 = [(TRIAssetStore *)v44 initWithPaths:paths2];

          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_3;
          v90[3] = &unk_279DE4568;
          v91 = v46;
          v47 = v43;
          v92 = v47;
          selfCopy = self;
          v94 = a2;
          v48 = v46;
          [v69 enumerateKeysAndObjectsUsingBlock:v90];
          v49 = v47;

          if ([v49 count])
          {
            unsafeGuardedData = [v75 unsafeGuardedData];
            v51 = [unsafeGuardedData objectForKeyedSubscript:v41];

            if (!v51)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:959 description:{@"Expression was unexpectedly nil/false: %@", @"[guardedRecordIdForTreatment unsafeGuardedData][treatmentId]"}];
            }

            v52 = [[TRITreatmentRecordFetchPlan alloc] initWithRecordId:v51 assetIndexes:v49];
            [v37 setObject:v52 forKeyedSubscript:v41];
          }

          v53 = [v49 count];

          objc_autoreleasePoolPop(v42);
          v39 += v53;
        }

        obja = [(NSDictionary *)v38 countByEnumeratingWithState:&v95 objects:v128 count:16];
      }

      while (obja);
    }

    else
    {
      v39 = 0;
    }

    v55 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v37, "count")}];
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_4;
    v81[3] = &unk_279DE4590;
    v85 = a2;
    v81[4] = self;
    v23 = v37;
    v82 = v23;
    v56 = v55;
    v83 = v56;
    v84 = &v86;
    [v69 enumerateKeysAndObjectsUsingBlock:v81];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_490;
    v79[3] = &unk_279DE45B8;
    v80 = progressCopy;
    [v56 enumerateKeysAndObjectsUsingBlock:v79];
    v57 = TRILogCategory_Server();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [v69 count];
      v59 = [(NSDictionary *)self->_assetIndexesByTreatment count];
      v60 = v87[3];
      *buf = 134218752;
      v121 = v58;
      v122 = 2048;
      v123 = v59;
      v124 = 2048;
      v125 = v39;
      v126 = 2048;
      v127 = v60 / 1000000.0;
      _os_log_impl(&dword_26F567000, v57, OS_LOG_TYPE_DEFAULT, "Treatment fetch planning phase complete.  On-demand fetch task will result in linking %tu assets into %tu treatment(s); %tu assets require download.  Total download size for Treatment record assets: %.2f MB", buf, 0x2Au);
    }

    v61 = [TRIGenericUniqueRequiredAssets alloc];
    v62 = objc_opt_new();
    v63 = [(TRIGenericUniqueRequiredAssets *)v61 initWithCloudKit:v69 mobileAsset:v62];

    v22 = [[TRITreatmentAssetFetchPlan alloc] initWithMetadataForRequestedUnlinkedAssets:v63 fetchPlansForTreatmentIds:v23];
    _Block_object_dispose(&v86, 8);

LABEL_44:
  }

  else
  {
    v22 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v22;
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_15;
      }

      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = 4;
      v21 = 0;
      v22 = 0;
LABEL_14:
      [v17 _completeTaskWithStatus:v20 earliestRetryDate:v21 error:v22 aggregateProgress:v18 context:v19];
      goto LABEL_15;
    }

    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = 3;
    v21 = 0;
LABEL_13:
    v22 = v15;
    goto LABEL_14;
  }

  switch(a2)
  {
    case 2:
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = 1;
      v21 = v14;
      goto LABEL_13;
    case 3:
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:859 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      if (v12)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_2;
        v26[3] = &unk_279DE4518;
        v16 = *(a1 + 56);
        v26[4] = *(a1 + 64);
        v27 = v12;
        [v16 runWithLockAcquired:v26];
      }

      else
      {
        v24 = TRILogCategory_Server();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 64);
          *buf = 138412290;
          v29 = v25;
          _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "CloudKit fetch succeeded, but a valid treatment artifact was not obtained for treatment %@.", buf, 0xCu);
        }

        [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
        [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:25];
      }

      break;
  }

LABEL_15:
  dispatch_group_leave(*(a1 + 72));
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_2_481(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 treatmentIndex];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:934 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
  }

  v7 = [v6 index];

  if ([*(a1 + 40) containsIndex:v7])
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v9];
  }
}

uint64_t __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if (([*(a1 + 32) hasAssetWithIdentifier:a2 type:0] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [v9 treatmentIndex];
    if (!v6)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:953 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
    }

    [v5 addIndex:{objc_msgSend(v6, "index")}];
  }

  return MEMORY[0x2821F96F8]();
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v4 = [v17 treatmentIndex];
  if (!v4)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a1[8] object:a1[4] file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:973 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
  }

  v5 = a1[5];
  v6 = [v4 treatmentId];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 assetIndexes];
    v9 = [v8 containsIndex:{objc_msgSend(v4, "index")}];

    if (v9)
    {
      v10 = a1[6];
      v11 = [v7 recordId];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (!v12)
      {
        v12 = &unk_287FC4D08;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v17, "downloadSize") + objc_msgSend(v12, "unsignedLongLongValue")}];
      v14 = a1[6];
      v15 = [v7 recordId];
      [v14 setObject:v13 forKeyedSubscript:v15];

      *(*(a1[7] + 8) + 24) += [v17 downloadSize];
    }
  }
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_490(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 registerRecordId:v5 withExpectedSize:{objc_msgSend(a3, "unsignedLongLongValue")}];
}

- (id)_planForFetchingAssetDiffsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress nonDiffableAssetIds:(id *)ids unlinkedMAAssetsOnDisk:(id *)disk
{
  v116 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionsCopy = options;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v12 = [TRIAssetStore alloc];
  paths = [contextCopy paths];
  v14 = [(TRIAssetStore *)v12 initWithPaths:paths];

  v15 = objc_opt_new();
  v16 = [TRIFactorPackStorage alloc];
  paths2 = [contextCopy paths];
  v18 = [(TRIFactorPackStorage *)v16 initWithPaths:paths2];

  v19 = [TRIFBFactorPackStorage alloc];
  paths3 = [contextCopy paths];
  v21 = [(TRIFBFactorPackStorage *)v19 initWithPaths:paths3];

  LOBYTE(paths3) = _os_feature_enabled_impl();
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__50;
  v110 = __Block_byref_object_dispose__50;
  v111 = objc_opt_new();
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__50;
  v104 = __Block_byref_object_dispose__50;
  v105 = objc_opt_new();
  assetIdsByFactorPack = self->_assetIdsByFactorPack;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke;
  v89[3] = &unk_279DE4658;
  v89[4] = self;
  v99 = paths3;
  v54 = v21;
  v90 = v54;
  v96 = &v106;
  v53 = v18;
  v91 = v53;
  v60 = contextCopy;
  v92 = v60;
  v59 = v14;
  v93 = v59;
  v52 = v15;
  v94 = v52;
  diskCopy = disk;
  v23 = progressCopy;
  v95 = v23;
  v97 = &v100;
  [(NSDictionary *)assetIdsByFactorPack enumerateKeysAndObjectsUsingBlock:v89];
  if (v107[5])
  {
    v24 = objc_opt_new();
    v25 = objc_opt_new();
    v26 = v107[5];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3;
    v85[3] = &unk_279DE4680;
    v27 = v59;
    v86 = v27;
    v28 = v24;
    v87 = v28;
    v51 = v25;
    v88 = v51;
    [v26 enumerateObjectsUsingBlock:v85];
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Beginning plan for fetching asset diffs from AssetDiff records for use in factor packs.", buf, 2u);
    }

    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_499;
    v83[3] = &unk_279DE28B0;
    v84 = v27;
    v57 = MEMORY[0x2743948D0](v83);
    v30 = [[TRIFetchOptions alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:&unk_287FC4D20];
    *buf = 0;
    v78 = buf;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__50;
    v81 = __Block_byref_object_dispose__50;
    v82 = 0;
    v31 = dispatch_semaphore_create(0);
    artifactProvider = self->_artifactProvider;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_503;
    v71[3] = &unk_279DE46A8;
    v71[4] = self;
    v33 = v23;
    v72 = v33;
    v75 = buf;
    v76 = a2;
    v73 = v60;
    v34 = v31;
    v74 = v34;
    v35 = [(TRIArtifactProvider *)artifactProvider fetchDiffSourceRecordIdsWithTargetAssetIds:v51 isAcceptableSourceAssetId:v57 options:v30 completion:v71];
    lock = self->_lock;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2_505;
    v69[3] = &unk_279DE43B8;
    v37 = v35;
    v70 = v37;
    [(_PASLock *)lock runWithLockAcquired:v69];
    [MEMORY[0x277D425A0] waitForSemaphore:v34];
    if (*(v78 + 5))
    {
      v38 = [v28 mutableCopy];
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      v39 = *(v78 + 5);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3_506;
      v61[3] = &unk_279DE46D0;
      v40 = v38;
      v62 = v40;
      v63 = v33;
      v64 = &v65;
      [v39 enumerateKeysAndObjectsUsingBlock:v61];
      v41 = TRILogCategory_Server();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [*(v78 + 5) count];
        v43 = v66[3] / 1000000.0;
        *v112 = 134218240;
        v113 = v42;
        v114 = 2048;
        v115 = v43;
        _os_log_impl(&dword_26F567000, v41, OS_LOG_TYPE_DEFAULT, "Factor pack asset diff fetch planning phase complete.  On-demand fetch task will construct %tu assets from asset diffs.  Total factor pack asset diff download size: %.2f MB", v112, 0x16u);
      }

      objc_storeStrong(ids, v38);
      v44 = [TRIGenericRequiredAssets alloc];
      v45 = [(TRIGenericRequiredAssets *)v44 initWithCloudKit:v107[5] mobileAsset:v101[5]];
      v46 = [TRIFactorPackAssetFetchPlan alloc];
      v47 = [(TRIFactorPackAssetFetchPlan *)v46 initWithMetadataForRequestedUnlinkedAssets:v45 recordIdsForDiffableAssetIds:*(v78 + 5) recordIdsForNonDiffableAssetIds:MEMORY[0x277CBEC10]];

      _Block_object_dispose(&v65, 8);
    }

    else
    {
      v47 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:v23 context:v60];
    [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:11];
    v47 = 0;
  }

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v106, 8);

  objc_autoreleasePoolPop(context);

  return v47;
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2;
  v52[3] = &unk_279DE45E0;
  v9 = v8;
  v10 = *(a1 + 32);
  v53 = v9;
  v54 = v10;
  [v7 enumerateObjectsUsingBlock:v52];

  v45 = [TRIClientFactorPackUtils aliasesInNamespace:*(*(a1 + 32) + 48)];
  if (*(a1 + 112) != 1)
  {
    goto LABEL_14;
  }

  v11 = [*(a1 + 40) pathForFactorLevelsWithFactorPackId:v6 namespaceName:*(*(a1 + 32) + 48)];
  if (!v11)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v41 = *(*(a1 + 32) + 48);
      *buf = 138412546;
      v56 = v41;
      v57 = 2112;
      v58 = v6;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Could not find path for flatbuffers for namespace:%@ and factorpackId:%@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 stringByAppendingPathComponent:@"factorPack.fb"];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (!v15)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v42 = *(*(a1 + 32) + 48);
      *buf = 138412290;
      v56 = v42;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "flatbuffer file missing for namespace name:%@", buf, 0xCu);
    }

LABEL_13:
LABEL_14:
    v16 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  v16 = v12;
  v17 = [*(a1 + 40) loadFactorLevelsWithDir:v16 bufferSize:0];
  if (!v17)
  {
    v39 = *(*(a1 + 88) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = 0;

    *a4 = 1;
    v18 = v16;
    goto LABEL_30;
  }

  v18 = v17;

  if (*(a1 + 112))
  {
    v43 = v9;
    v13 = 0;
    goto LABEL_21;
  }

LABEL_15:
  v20 = v16;
  v16 = [*(a1 + 48) pathForFactorPackWithId:v6 namespaceName:*(*(a1 + 32) + 48)];

  v21 = [*(a1 + 48) loadFactorPackWithId:v6 namespaceName:*(*(a1 + 32) + 48)];
  v13 = v21;
  if (v16)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = *(*(a1 + 88) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;

    *a4 = 1;
    goto LABEL_30;
  }

  v43 = v9;
LABEL_21:
  v25 = [*(a1 + 56) keyValueStore];
  v26 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:v25];

  if (v26)
  {
    v27 = [v26 subscribedFactorsForNamespaceName:*(*(a1 + 32) + 48)];
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = [TRIClientFactorPackUtils unlinkedOnDemandAssetsWithFactorPack:v13 flatbufferFactorLevels:v18 factorPackPath:v16 assetStore:*(a1 + 64) maProvider:*(a1 + 72) aliasToUnaliasMap:v45 subscribedFactors:v27 unlinkedMAAssetsOnDisk:*(a1 + 104)];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 cloudKit];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_497;
    v49[3] = &unk_279DE4608;
    v31 = v43;
    v32 = *(a1 + 88);
    v50 = v31;
    v51 = v32;
    [v30 enumerateObjectsUsingBlock:v49];

    v33 = [v29 mobileAsset];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2_498;
    v46[3] = &unk_279DE4630;
    v34 = v31;
    v35 = *(a1 + 96);
    v47 = v34;
    v48 = v35;
    [v33 enumerateObjectsUsingBlock:v46];
  }

  else
  {
    v36 = TRILogCategory_Server();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Failed to enumerate unlinked on-demand assets", buf, 2u);
    }

    [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 80) context:*(a1 + 56)];
    [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:8];
    v37 = *(*(a1 + 88) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = 0;

    *a4 = 1;
  }

  v9 = v43;
LABEL_30:
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 factorName];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 factorName];
    [v5 addObject:v6];

    v7 = *(*(a1 + 40) + 136);
    v8 = [v3 assetId];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9 && ([v3 factorName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, (v11 & 1) == 0))
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 assetId];
        v17 = [v3 factorName];
        v18 = 138543874;
        v19 = v16;
        v20 = 2114;
        v21 = v9;
        v22 = 2114;
        v23 = v17;
        _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Warning:same assetId %{public}@ with different factor names %{public}@ and %{public}@; ignoring the latter", &v18, 0x20u);
      }
    }

    else
    {
      v12 = [v3 factorName];
      v13 = *(*(a1 + 40) + 136);
      v14 = [v3 assetId];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }
  }
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_497(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 factorName];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2_498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 factorName];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v11 = v3;
  v5 = [v3 assetId];
  LOBYTE(v4) = [v4 hasAssetWithIdentifier:v5 type:0];

  if ((v4 & 1) == 0)
  {
    v6 = a1[5];
    v7 = [v11 assetId];
    [v6 addObject:v7];

    v8 = [v11 metadata];
    LODWORD(v7) = [v8 type];

    if (v7 == 1)
    {
      v9 = a1[6];
      v10 = [v11 assetId];
      [v9 addObject:v10];
    }
  }
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_503(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = a3;
  v9 = a4;
  v10 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_17;
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = 4;
      v16 = 0;
      v17 = 0;
      goto LABEL_16;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = 3;
    v16 = 0;
LABEL_15:
    v17 = v10;
LABEL_16:
    [v12 _completeTaskWithStatus:v15 earliestRetryDate:v16 error:v17 aggregateProgress:v13 context:v14];
    goto LABEL_17;
  }

  switch(a2)
  {
    case 2:
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = 1;
      v16 = v9;
      goto LABEL_15;
    case 3:
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1182 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        v11 = MEMORY[0x277CBEC10];
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
      break;
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 56));
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3_506(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  [v5 removeObject:a2];
  v7 = a1[5];
  v8 = [v6 recordId];
  [v7 registerRecordId:v8 withExpectedSize:{objc_msgSend(v6, "downloadSize")}];

  v9 = [v6 downloadSize];
  *(*(a1[6] + 8) + 24) += v9;
}

- (id)_planForFetchingAssetsFromFactorPacksWithContext:(id)context assetDiffFetchPlan:(id)plan requiredAssetIds:(id)ids downloadOptions:(id)options updatingAggregateProgress:(id)progress
{
  v109 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  planCopy = plan;
  idsCopy = ids;
  optionsCopy = options;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Beginning plan for fetching assets from Asset records for use in factor packs.", buf, 2u);
  }

  v57 = [[TRIFetchOptions alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:&unk_287FC4D20];
  v15 = dispatch_semaphore_create(0);
  *buf = 0;
  v95 = buf;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__50;
  v98 = __Block_byref_object_dispose__50;
  v99 = 0;
  artifactProvider = self->_artifactProvider;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke;
  v87[3] = &unk_279DE46F8;
  v87[4] = self;
  v56 = progressCopy;
  v88 = v56;
  v55 = contextCopy;
  v89 = v55;
  v93 = a2;
  v90 = idsCopy;
  v92 = buf;
  v17 = v15;
  v91 = v17;
  v60 = v90;
  v18 = [(TRIArtifactProvider *)artifactProvider fetchRecordIdsForAssetsWithIds:v90 options:v57 completion:v87];
  lock = self->_lock;
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_2;
  v85[3] = &unk_279DE43B8;
  v20 = v18;
  v86 = v20;
  [(_PASLock *)lock runWithLockAcquired:v85];
  [MEMORY[0x277D425A0] waitForSemaphore:v17];
  v51 = v17;
  v53 = v20;
  if (*(v95 + 5))
  {
    metadataForRequestedUnlinkedAssets = [planCopy metadataForRequestedUnlinkedAssets];
    v64 = [TRIClientFactorPackUtils uniqueAssets:metadataForRequestedUnlinkedAssets];

    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v60, "count")}];
    v63 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v60, "count")}];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v60;
    v23 = [obj countByEnumeratingWithState:&v77 objects:v108 count:16];
    if (v23)
    {
      v24 = *v78;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v78 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v77 + 1) + 8 * i);
          v27 = [*(v95 + 5) objectForKeyedSubscript:v26];
          if (!v27)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1282 description:{@"Expression was unexpectedly nil/false: %@", @"recordIdsForAssetIds[assetId]"}];
          }

          v28 = [v22 objectForKeyedSubscript:v27];
          if (v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = &unk_287FC4D08;
          }

          cloudKit = [v64 cloudKit];
          v31 = [cloudKit objectForKeyedSubscript:v26];

          if (!v31)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1287 description:{@"Expression was unexpectedly nil/false: %@", @"uniquePlannedAssets.cloudKit[assetId]"}];
          }

          downloadSize = [v31 downloadSize];

          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v29, "unsignedLongLongValue") + downloadSize}];
          [v22 setObject:v33 forKeyedSubscript:v27];
          v34 = [[TRISizedCKRecordID alloc] initWithRecordId:v27 downloadSize:downloadSize];
          [v63 setObject:v34 forKeyedSubscript:v26];

          v82[3] += downloadSize;
        }

        v23 = [obj countByEnumeratingWithState:&v77 objects:v108 count:16];
      }

      while (v23);
    }

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_3;
    v75[3] = &unk_279DE45B8;
    v37 = v56;
    v76 = v37;
    [v22 enumerateKeysAndObjectsUsingBlock:v75];
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 1;
    mobileAsset = [v64 mobileAsset];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_4;
    v65[3] = &unk_279DE4720;
    v69 = &v81;
    v66 = v37;
    selfCopy = self;
    v68 = v55;
    v70 = &v71;
    [mobileAsset enumerateKeysAndObjectsUsingBlock:v65];

    if (v72[3])
    {
      v39 = TRILogCategory_Server();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        metadataForRequestedUnlinkedAssets2 = [planCopy metadataForRequestedUnlinkedAssets];
        cloudKit2 = [metadataForRequestedUnlinkedAssets2 cloudKit];
        v42 = [cloudKit2 count];
        metadataForRequestedUnlinkedAssets3 = [planCopy metadataForRequestedUnlinkedAssets];
        mobileAsset2 = [metadataForRequestedUnlinkedAssets3 mobileAsset];
        v45 = [mobileAsset2 count];
        v46 = [(NSDictionary *)self->_assetIdsByFactorPack count];
        v47 = [obj count];
        v48 = v82[3];
        *v100 = 134218752;
        v101 = v45 + v42;
        v102 = 2048;
        v103 = v46;
        v104 = 2048;
        v105 = v47;
        v106 = 2048;
        v107 = v48 / 1000000.0;
        _os_log_impl(&dword_26F567000, v39, OS_LOG_TYPE_DEFAULT, "Factor pack asset fetch planning phase complete.  On-demand fetch task will result in linking %lu assets into %tu factor pack(s); %tu assets require full (unpatched) asset download.  Total factor pack unpatched asset download size: %.2f MB", v100, 0x2Au);
      }

      v49 = [planCopy copyWithReplacementRecordIdsForNonDiffableAssetIds:v63];
    }

    else
    {
      v49 = 0;
    }

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v81, 8);
  }

  else
  {
    v49 = 0;
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(context);

  return v49;
}

void __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v23 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = 4;
      v18 = 0;
      v19 = 0;
      goto LABEL_17;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = 3;
    v18 = 0;
LABEL_16:
    v19 = v11;
LABEL_17:
    [v14 _completeTaskWithStatus:v17 earliestRetryDate:v18 error:v19 aggregateProgress:v15 context:v16];
    goto LABEL_18;
  }

  switch(a2)
  {
    case 2:
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = 1;
      v18 = v10;
      goto LABEL_16;
    case 3:
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1250 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      v12 = v23;
      if (!v23)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1254 description:{@"Invalid parameter not satisfying: %@", @"innerRecordIdsForAssetIds"}];

        v12 = 0;
      }

      v13 = [v12 count];
      if (v13 != [*(a1 + 56) count])
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1255 description:{@"Invalid parameter not satisfying: %@", @"innerRecordIdsForAssetIds.count == requiredAssetIds.count"}];
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
      break;
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 64));
}

void __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  [v5 unregisterRecordId:v9];
  v7 = *(a1 + 32);
  v8 = [v6 unsignedLongLongValue];

  [v7 registerRecordId:v9 withExpectedSize:v8];
}

void __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a3 downloadSize];
  if (!v8)
  {
    location = 0;
    v11 = objc_opt_new();
    v12 = [v11 createAutoAssetWithId:v7 decryptionKey:0 error:&location];
    if (!v12)
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = location;
        _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to instantiate MAAutoAsset: %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) _completeTaskWithStatus:3 earliestRetryDate:0 error:location aggregateProgress:*(a1 + 32) context:*(a1 + 48)];
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
      goto LABEL_25;
    }

    v13 = v12;
    v14 = location;
    location = 0;

    obj = location;
    v33 = 0;
    v15 = [v13 determineIfAvailableSync:@"determine Trial asset availability" withTimeout:30 discoveredAttributes:&v33 error:&obj];
    v16 = v33;
    objc_storeStrong(&location, obj);
    if (v15)
    {
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D28908]];
      [*(a1 + 32) registerMAAsset:v7 withExpectedSize:{objc_msgSend(v17, "unsignedLongLongValue")}];
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 unsignedLongLongValue];
        *buf = 134218242;
        v36 = v19;
        v37 = 2112;
        v38 = v7;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Registering MA asset with size: %llu for assetId: %@", buf, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) += [v17 unsignedLongLongValue];
      goto LABEL_24;
    }

    if (location)
    {
      v21 = [location domain];
      if ([v21 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
      {
        v22 = [location code];

        if (v22 == 6105)
        {
          v23 = TRILogCategory_Server();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v36 = v13;
            _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Timeout while checking availability of MAAutoAsset %{public}@", buf, 0xCu);
          }

          v24 = location;
          v26 = *(a1 + 32);
          v25 = *(a1 + 40);
          v27 = *(a1 + 48);
          v28 = 1;
LABEL_23:
          [v25 _completeTaskWithStatus:v28 earliestRetryDate:0 error:v24 aggregateProgress:v26 context:v27];
          *(*(*(a1 + 64) + 8) + 24) = 0;
          *a4 = 1;
LABEL_24:

LABEL_25:
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [*(*(a1 + 40) + 32) allKeys];
      v31 = [v30 firstObject];
      *buf = 138543618;
      v36 = v31;
      v37 = 2114;
      v38 = v13;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ requires unavailable MAAutoAsset: %{public}@", buf, 0x16u);
    }

    v24 = location;
    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 3;
    goto LABEL_23;
  }

  v9 = v8;
  [*(a1 + 32) registerMAAsset:v7 withExpectedSize:v8];
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v36 = v9;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Registering MA asset with size: %llu for assetId: %@", buf, 0x16u);
  }

  *(*(*(a1 + 56) + 8) + 24) += v9;
LABEL_26:
}

- (void)_asyncFetchAssetsFromTreatmentRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size downloadOptions:(id)options group:(id)group
{
  contextCopy = context;
  planCopy = plan;
  progressCopy = progress;
  optionsCopy = options;
  groupCopy = group;
  v19 = dispatch_group_create();
  *size = 0;
  fetchPlansForTreatmentIds = [planCopy fetchPlansForTreatmentIds];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke;
  v37[3] = &unk_279DE4798;
  v38 = v19;
  v39 = optionsCopy;
  selfCopy = self;
  v21 = progressCopy;
  v41 = v21;
  v22 = contextCopy;
  v42 = v22;
  v44 = a2;
  v23 = planCopy;
  v43 = v23;
  sizeCopy = size;
  v24 = optionsCopy;
  v25 = v19;
  [fetchPlansForTreatmentIds enumerateKeysAndObjectsUsingBlock:v37];

  dispatch_group_enter(groupCopy);
  v26 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2_531;
  block[3] = &unk_279DE47C0;
  block[4] = self;
  v33 = v22;
  v34 = v23;
  v35 = v21;
  v36 = groupCopy;
  v27 = groupCopy;
  v28 = v21;
  v29 = v23;
  v30 = v22;
  dispatch_group_notify(v25, v26, block);
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v7 = [[TRIFetchOptions alloc] initWithDownloadOptions:*(a1 + 40) cacheDeleteAvailableSpaceClass:&unk_287FC4CF0];
  v8 = *(*(a1 + 48) + 120);
  v9 = [v6 assetIndexes];
  v10 = [v6 recordId];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2;
  v31[3] = &unk_279DE4748;
  v32 = *(a1 + 56);
  v33 = v6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_3;
  v21[3] = &unk_279DE4770;
  v11 = *(a1 + 56);
  v21[4] = *(a1 + 48);
  v22 = v11;
  v23 = *(a1 + 64);
  v24 = v33;
  v12 = *(a1 + 72);
  v29 = *(a1 + 80);
  v25 = v5;
  v26 = v12;
  v27 = v7;
  v30 = *(a1 + 88);
  v28 = *(a1 + 32);
  v13 = v7;
  v14 = v5;
  v15 = v33;
  v16 = [v8 fetchAssetsWithIndexes:v9 fromTreatmentWithRecordId:v10 options:v13 progress:v31 completion:v21];

  v17 = *(*(a1 + 48) + 128);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_529;
  v19[3] = &unk_279DE43B8;
  v20 = v16;
  v18 = v16;
  [v17 runWithLockAcquired:v19];
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) recordId];
  [v3 setFractionCompleted:v4 forRecordId:a2];
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        [v23 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1410 description:{@"Unexpected TRIFetchStatus %tu", 3}];
LABEL_15:

        goto LABEL_23;
      }

      if (a2 == 4)
      {
        if (v9)
        {
          v12 = [v9 count];
          v13 = [*(a1 + 56) assetIndexes];
          v14 = [v13 count];

          if (v12 == v14)
          {
            v15 = *(a1 + 32);
            v16 = *(a1 + 64);
            v17 = [*(a1 + 72) metadataForRequestedUnlinkedAssets];
            v18 = [v17 cloudKit];
            v19 = [*(a1 + 80) downloadOptions];
            v20 = [*(a1 + 48) paths];
            v21 = *(a1 + 104);
            v34 = 0;
            v22 = [v15 _saveIndexedAssetURLs:v9 withTreatmentId:v16 usingAssetMetadata:v18 downloadOptions:v19 paths:v20 downloadSize:v21 error:&v34];
            v23 = v34;

            if (v22 != 1)
            {
              if (v22 == 2)
              {
                v24 = 1;
                [*(a1 + 32) setWasDeferred:1];
              }

              else
              {
                v24 = 3;
              }

              [*(a1 + 32) _completeTaskWithStatus:v24 earliestRetryDate:0 error:v23 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
            }

            goto LABEL_15;
          }
        }

        v31 = TRILogCategory_Server();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = *(*(a1 + 32) + 48);
          v33 = *(a1 + 64);
          *buf = 138543618;
          v36 = v32;
          v37 = 2112;
          v38 = v33;
          _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "No assets received after fetching on-demand factors for namespace %{public}@, treatment %@", buf, 0x16u);
        }

        v25 = *(a1 + 32);
        v26 = *(a1 + 40);
        v27 = *(a1 + 48);
        v28 = 3;
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 1;
    v29 = v10;
LABEL_17:
    v30 = v11;
LABEL_22:
    [v25 _completeTaskWithStatus:v28 earliestRetryDate:v29 error:v30 aggregateProgress:v26 context:v27];
    goto LABEL_23;
  }

  if (!a2)
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 3;
    v29 = 0;
    goto LABEL_17;
  }

  if (a2 == 1)
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 4;
LABEL_21:
    v29 = 0;
    v30 = 0;
    goto LABEL_22;
  }

LABEL_23:
  dispatch_group_leave(*(a1 + 88));
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2_531(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _currentTaskStatus];
  v3 = [v2 runStatus];

  if (!v3)
  {
    v4 = [TRIClientTreatmentStorage alloc];
    v5 = [*(a1 + 40) paths];
    v19 = [(TRIClientTreatmentStorage *)v4 initWithPaths:v5];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(*(a1 + 32) + 24);
    v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = *(a1 + 32);
          v12 = [*(a1 + 48) metadataForRequestedUnlinkedAssets];
          v13 = [v12 cloudKit];
          v14 = [v11 _assetIdsFromKeysInDictionary:v13];
          v15 = objc_autoreleasePoolPush();
          v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{*(*(a1 + 32) + 48), 0}];
          objc_autoreleasePoolPop(v15);
          v17 = [(TRIClientTreatmentStorage *)v19 updateSavedTreatmentWithTreatmentId:v10 linkingNewAssetIds:v14 forNamespaceNames:v16];

          if (!v17)
          {
            [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 56) context:*(a1 + 40)];
            [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:22];
            goto LABEL_12;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  dispatch_group_leave(*(a1 + 64));
}

- (id)_fetchDiffsFromAssetDiffRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options
{
  contextCopy = context;
  planCopy = plan;
  progressCopy = progress;
  optionsCopy = options;
  v32 = dispatch_semaphore_create(0);
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__50;
  v64 = __Block_byref_object_dispose__50;
  v15 = objc_alloc(MEMORY[0x277CBEB58]);
  recordIdsForDiffableAssetIds = [planCopy recordIdsForDiffableAssetIds];
  v65 = [v15 initWithCapacity:{objc_msgSend(recordIdsForDiffableAssetIds, "count")}];

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  artifactProvider = self->_artifactProvider;
  recordIdsForDiffableAssetIds2 = [planCopy recordIdsForDiffableAssetIds];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke;
  v54[3] = &unk_279DE47E8;
  v55 = progressCopy;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2;
  v51[3] = &unk_279DE4070;
  v52 = planCopy;
  selfCopy = self;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_535;
  v47[3] = &unk_279DE40C0;
  v48 = v52;
  selfCopy2 = self;
  v50 = contextCopy;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_538;
  v37[3] = &unk_279DE4860;
  v37[4] = self;
  v19 = v55;
  v38 = v19;
  v20 = v50;
  v45 = a2;
  v39 = v20;
  v43 = &v56;
  v21 = v48;
  v40 = v21;
  v22 = optionsCopy;
  sizeCopy = size;
  v41 = v22;
  v44 = &v60;
  v23 = v32;
  v42 = v23;
  v24 = [(TRIArtifactProvider *)artifactProvider fetchDiffsWithRecordIds:recordIdsForDiffableAssetIds2 options:v22 perRecordProgress:v54 perRecordCompletionBlockOnSuccess:v51 perRecordCompletionBlockOnError:v47 completion:v37];

  lock = self->_lock;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_548;
  v35[3] = &unk_279DE43B8;
  v26 = v24;
  v36 = v26;
  [(_PASLock *)lock runWithLockAcquired:v35];
  [MEMORY[0x277D425A0] waitForSemaphore:v23];
  if (v57[3])
  {
    v27 = objc_alloc(MEMORY[0x277CBEB58]);
    recordIdsForDiffableAssetIds3 = [v21 recordIdsForDiffableAssetIds];
    allKeys = [recordIdsForDiffableAssetIds3 allKeys];
    v30 = [v27 initWithArray:allKeys];

    [v30 minusSet:v61[5]];
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  return v30;
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) recordIdsForDiffableAssetIds];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_3;
  v8[3] = &unk_279DE4048;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v7;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Missing factorname for diffable assetId %{public}@", &v12, 0xCu);
      }
    }

    *a4 = 1;
  }
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_535(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) recordIdsForDiffableAssetIds];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_536;
  v13[3] = &unk_279DE4098;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v6;
  v15 = v9;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_536(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = v11[6];
      v13 = [*(a1 + 48) client];
      [v11 _logOnDemandFactor:v10 metricName:@"on_demand_factor_failed_to_download_by_request" namespaceName:v12 client:v13 error:*(a1 + 56)];

      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v7;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Missing factorname for diffable assetId %{public}@", &v15, 0xCu);
      }
    }

    *a4 = 1;
  }
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_538(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_16;
      }

      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v27 = 4;
      v28 = 0;
      v29 = 0;
LABEL_15:
      [v24 _completeTaskWithStatus:v27 earliestRetryDate:v28 error:v29 aggregateProgress:v25 context:v26];
      goto LABEL_16;
    }

    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = 3;
    v28 = 0;
LABEL_14:
    v29 = v11;
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = 1;
    v28 = v10;
    goto LABEL_14;
  }

  if (a2 == 3)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1535 description:{@"Unexpected TRIFetchStatus %tu", 3}];

    goto LABEL_16;
  }

  if (a2 != 4)
  {
LABEL_16:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v44 = 1;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_547;
    v36[3] = &unk_279DE4838;
    v36[4] = buf;
    [v9 enumerateKeysAndObjectsUsingBlock:v36];
    dispatch_semaphore_signal(*(a1 + 72));
    _Block_object_dispose(buf, 8);
    goto LABEL_17;
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
  if (v9)
  {
    v12 = [v9 count];
    v13 = [*(a1 + 56) recordIdsForDiffableAssetIds];
    v14 = [v13 count];

    if (v12 == v14)
    {
      v15 = [TRIAssetStore alloc];
      v16 = [*(a1 + 48) paths];
      v17 = [*(a1 + 64) downloadOptions];
      v18 = [v17 activity];
      v19 = [(TRIAssetStore *)v15 initWithPaths:v16 monitoredActivity:v18];

      v20 = [*(a1 + 56) metadataForRequestedUnlinkedAssets];
      v21 = [TRIClientFactorPackUtils uniqueAssets:v20];

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_539;
      v37[3] = &unk_279DE4810;
      v38 = v21;
      v39 = v19;
      v40 = *(a1 + 32);
      v42 = *(a1 + 104);
      v41 = *(a1 + 88);
      v22 = v19;
      v23 = v21;
      [v9 enumerateKeysAndObjectsUsingBlock:v37];

      goto LABEL_16;
    }
  }

  v31 = TRILogCategory_Server();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = *(a1 + 32);
    v33 = *(v32 + 48);
    v34 = [*(v32 + 32) allKeys];
    v35 = [v34 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    *&buf[4] = v33;
    *&buf[12] = 2114;
    *&buf[14] = v35;
    _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "No diffs received after fetching asset diffs for on-demand factors for namespace %{public}@, factor packs [%{public}@]", buf, 0x16u);
  }

LABEL_17:
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_539(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) cloudKit];
  v6 = [v4 destAssetId];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v17 = 0;
    v8 = *(a1 + 40);
    v9 = [v4 destAssetId];
    v10 = [v4 sourceAssetId];
    v11 = [v4 diff];
    v12 = [v11 path];

    if (!v12)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1552 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.diff.path"}];
    }

    v13 = [v8 saveAssetWithIdentifier:v9 builtFromAssetWithIdentifier:v10 patchFilename:v12 metadata:v7 error:&v17];

    if (v13)
    {
      **(a1 + 72) += [v4 diffSize];
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v15 = [v4 destAssetId];
      [v14 addObject:v15];
    }
  }
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_547(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 diff];
  v16 = 0;
  v7 = [v5 removeItemAtURL:v6 error:&v16];
  v8 = v16;

  if ((v7 & 1) == 0)
  {
    v9 = [v8 domain];
    v10 = v9;
    if (v9 != *MEMORY[0x277CCA050])
    {

      goto LABEL_5;
    }

    v11 = [v8 code];

    if (v11 != 4)
    {
LABEL_5:
      v12 = *(*(*(a1 + 32) + 8) + 24);
      v13 = TRILogCategory_Server();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v12 == 1)
      {
        if (v14)
        {
          goto LABEL_11;
        }
      }

      else if (v14)
      {
LABEL_11:
        v15 = [v4 diff];
        *buf = 138412546;
        v18 = v15;
        v19 = 2114;
        v20 = v8;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to clean up CK cached asset %@: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

- (void)_asyncFetchCKAssetsFromAssetRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group
{
  contextCopy = context;
  planCopy = plan;
  progressCopy = progress;
  optionsCopy = options;
  groupCopy = group;
  dispatch_group_enter(groupCopy);
  *size = 0;
  artifactProvider = self->_artifactProvider;
  recordIdsForNonDiffableAssetIds = [planCopy recordIdsForNonDiffableAssetIds];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke;
  v47[3] = &unk_279DE47E8;
  v48 = progressCopy;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2;
  v44[3] = &unk_279DE4070;
  v45 = planCopy;
  selfCopy = self;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_549;
  v40[3] = &unk_279DE40C0;
  v41 = v45;
  selfCopy2 = self;
  v43 = contextCopy;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_551;
  v32[3] = &unk_279DE4888;
  v32[4] = self;
  v33 = v48;
  v34 = v43;
  v35 = v41;
  v38 = a2;
  sizeCopy = size;
  v36 = optionsCopy;
  v37 = groupCopy;
  v22 = groupCopy;
  v23 = optionsCopy;
  v24 = v41;
  v25 = v43;
  v26 = v48;
  v27 = [(TRIArtifactProvider *)artifactProvider fetchAssetsWithRecordIds:recordIdsForNonDiffableAssetIds options:v23 perRecordProgress:v47 perRecordCompletionBlockOnSuccess:v44 perRecordCompletionBlockOnError:v40 completion:v32];

  lock = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_553;
  v30[3] = &unk_279DE43B8;
  v31 = v27;
  v29 = v27;
  [(_PASLock *)lock runWithLockAcquired:v30];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) recordIdsForNonDiffableAssetIds];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_3;
  v8[3] = &unk_279DE4048;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v7;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Missing factorname for assetId %{public}@", &v12, 0xCu);
      }
    }

    *a4 = 1;
  }
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_549(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) recordIdsForNonDiffableAssetIds];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2_550;
  v13[3] = &unk_279DE4098;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v6;
  v15 = v9;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2_550(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = v11[6];
      v13 = [*(a1 + 48) client];
      [v11 _logOnDemandFactor:v10 metricName:@"on_demand_factor_failed_to_download_by_request" namespaceName:v12 client:v13 error:*(a1 + 56)];

      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v7;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Missing factorname for assetId %{public}@", &v15, 0xCu);
      }
    }

    *a4 = 1;
  }
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_551(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = 4;
      v29 = 0;
      v30 = 0;
LABEL_17:
      [v25 _completeTaskWithStatus:v28 earliestRetryDate:v29 error:v30 aggregateProgress:v26 context:v27];
      goto LABEL_18;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 3;
    v29 = 0;
LABEL_16:
    v30 = v11;
    goto LABEL_17;
  }

  switch(a2)
  {
    case 2:
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = 1;
      v29 = v10;
      goto LABEL_16;
    case 3:
      v31 = [MEMORY[0x277CCA890] currentHandler];
      [v31 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1654 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      if (v9 && (v12 = [v9 count], objc_msgSend(*(a1 + 56), "recordIdsForNonDiffableAssetIds"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12 == v14))
      {
        v15 = [*(a1 + 56) metadataForRequestedUnlinkedAssets];
        v16 = [TRIClientFactorPackUtils uniqueAssets:v15];

        v17 = *(a1 + 32);
        v18 = [v16 cloudKit];
        v19 = [*(a1 + 64) downloadOptions];
        v20 = *(a1 + 88);
        v21 = [*(a1 + 48) paths];
        v38 = 0;
        v22 = [v17 _saveNamedAssetURLs:v9 usingAssetMetadata:v18 downloadOptions:v19 downloadSize:v20 paths:v21 error:&v38];
        v23 = v38;

        if (v22 != 1)
        {
          if (v22 == 2)
          {
            [*(a1 + 32) setWasDeferred:1];
            v24 = 1;
          }

          else
          {
            v24 = 3;
          }

          [*(a1 + 32) _completeTaskWithStatus:v24 earliestRetryDate:0 error:v23 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
        }
      }

      else
      {
        v32 = TRILogCategory_Server();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 32);
          v34 = *(v33 + 48);
          v35 = [*(v33 + 32) allKeys];
          v36 = [v35 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v36;
          _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "No assets received after fetching on-demand factors for namespace %{public}@, factor packs [%{public}@]", buf, 0x16u);
        }

        [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
      }

      break;
  }

LABEL_18:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v40 = 1;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_552;
  v37[3] = &unk_279DE4138;
  v37[4] = buf;
  [v9 enumerateKeysAndObjectsUsingBlock:v37];
  dispatch_group_leave(*(a1 + 72));
  _Block_object_dispose(buf, 8);
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_552(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v14];
  v7 = v14;

  if ((v6 & 1) == 0)
  {
    v8 = [v7 domain];
    v9 = v8;
    if (v8 != *MEMORY[0x277CCA050])
    {

      goto LABEL_5;
    }

    v10 = [v7 code];

    if (v10 != 4)
    {
LABEL_5:
      v11 = *(*(*(a1 + 32) + 8) + 24);
      v12 = TRILogCategory_Server();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v11 == 1)
      {
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else if (v13)
      {
LABEL_11:
        *buf = 138412546;
        v16 = v4;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to clean up CK cached asset %@: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

- (void)_asyncFetchMAAssetsFromFactorPacksWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group
{
  contextCopy = context;
  progressCopy = progress;
  groupCopy = group;
  *size = 0;
  metadataForRequestedUnlinkedAssets = [plan metadataForRequestedUnlinkedAssets];
  v17 = [TRIClientFactorPackUtils uniqueAssets:metadataForRequestedUnlinkedAssets];

  mobileAsset = [v17 mobileAsset];
  v19 = [mobileAsset count];

  if (v19)
  {
    v20 = objc_opt_new();
    mobileAsset2 = [v17 mobileAsset];
    taskAttributing = self->_taskAttributing;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __127__TRIFetchOnDemandFactorsTask__asyncFetchMAAssetsFromFactorPacksWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke;
    v27[3] = &unk_279DE48B0;
    v27[4] = self;
    v28 = progressCopy;
    v29 = contextCopy;
    v23 = [v20 downloadAssets:mobileAsset2 attribution:taskAttributing aggregateProgress:v28 group:groupCopy completion:v27];

    if (v23)
    {
      lock = self->_lock;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __127__TRIFetchOnDemandFactorsTask__asyncFetchMAAssetsFromFactorPacksWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2;
      v25[3] = &unk_279DE43B8;
      v26 = v23;
      [(_PASLock *)lock runWithLockAcquired:v25];
    }
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Fetch plan includes no MAAutoAssets.", buf, 2u);
    }
  }
}

void __127__TRIFetchOnDemandFactorsTask__asyncFetchMAAssetsFromFactorPacksWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v10 = a4;
  v9 = a5;
  if (a3)
  {
    [*(a1 + 32) setWasDeferred:1];
  }

  if (a2 != 2)
  {
    [*(a1 + 32) _completeTaskWithStatus:a2 earliestRetryDate:v10 error:v9 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
  }
}

void __70__TRIFetchOnDemandFactorsTask_willBeCancelledByTaskQueue_withContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a2 + 8);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_addMetricForFetchOnDemandFactorsTaskError:(int)error
{
  v4 = MEMORY[0x277D73B40];
  v5 = fetchTaskErrorAsString(error);
  v6 = [v4 metricWithName:@"fetchondemandfactorstask_error" categoricalValue:v5];

  [(TRIFetchOnDemandFactorsTask *)self _addMetric:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = TRIFetchOnDemandFactorsTask;
  if ([(TRIBaseTask *)&v16 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (![(NSDictionary *)self->_assetIndexesByTreatment isEqualToDictionary:*(v5 + 3)])
    {
      goto LABEL_27;
    }

    v6 = self->_experimentId;
    v7 = *(v5 + 20);
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v11 = [(NSString *)v6 isEqualToString:v7];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    if (![(NSDictionary *)self->_assetIdsByFactorPack isEqualToDictionary:*(v5 + 4)]|| ![(NSSet *)self->_rolloutFactorNames isEqual:*(v5 + 5)])
    {
      goto LABEL_27;
    }

    v6 = self->_deployment;
    v12 = *(v5 + 19);
    v8 = v12;
    if (v6 == v12)
    {

      goto LABEL_22;
    }

    v10 = 0;
    if (v6 && v12)
    {
      v13 = [(NSString *)v6 isEqualToDeployment:v12];

      if ((v13 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_22:
      if ([(NSString *)self->_namespaceName isEqualToString:*(v5 + 6)])
      {
        v6 = self->_notificationKey;
        v14 = *(v5 + 9);
        v8 = v14;
        if (v6 == v14)
        {
          v10 = 1;
        }

        else
        {
          v10 = 0;
          if (v6 && v14)
          {
            v10 = [(NSString *)v6 isEqualToString:v14];
          }
        }

        goto LABEL_10;
      }

LABEL_27:
      v10 = 0;
      goto LABEL_28;
    }

LABEL_10:

LABEL_28:
    goto LABEL_29;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_assetIndexesByTreatment hash];
  v4 = [(NSDictionary *)self->_assetIdsByFactorPack hash]+ 37 * v3;
  v5 = [(NSSet *)self->_rolloutFactorNames hash]+ 37 * v4;
  v6 = [(NSString *)self->_namespaceName hash]+ 37 * v5;
  return [(NSString *)self->_notificationKey hash]+ 37 * v6;
}

- (void)_addMetric:(id)metric
{
  metricCopy = metric;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metrics = selfCopy->_metrics;
  if (!metrics)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_metrics;
    selfCopy->_metrics = v6;

    metrics = selfCopy->_metrics;
  }

  [(NSMutableArray *)metrics addObject:metricCopy];
  objc_sync_exit(selfCopy);
}

- (void)_addDimension:(id)dimension
{
  dimensionCopy = dimension;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dimensions = selfCopy->_dimensions;
  if (!dimensions)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_dimensions;
    selfCopy->_dimensions = v6;

    dimensions = selfCopy->_dimensions;
  }

  [(NSMutableArray *)dimensions addObject:dimensionCopy];
  objc_sync_exit(selfCopy);
}

- (id)metrics
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask gather metrics", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_metrics)
  {
    [v5 addObjectsFromArray:?];
  }

  objc_sync_exit(selfCopy);

  lock = selfCopy->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__TRIFetchOnDemandFactorsTask_metrics__block_invoke;
  v13[3] = &unk_279DE43B8;
  v8 = v5;
  v14 = v8;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask metrics: %@", buf, 0xCu);
  }

  if ([v8 count])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_autoreleasePoolPop(v4);

  return v11;
}

void __38__TRIFetchOnDemandFactorsTask_metrics__block_invoke(uint64_t a1, void *a2)
{
  if (a2[4])
  {
    v4 = a2;
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask gather metrics for fetchError", v8, 2u);
    }

    v6 = a2[4];
    v7 = TRIFetchErrorParseToMetrics(v6);
    if (v7)
    {
      [*(a1 + 32) addObjectsFromArray:v7];
    }
  }
}

- (id)dimensions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_dimensions copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_logOnDemandFactor:(id)factor metricName:(id)name namespaceName:(id)namespaceName client:(id)client error:(id)error
{
  factorCopy = factor;
  nameCopy = name;
  namespaceNameCopy = namespaceName;
  clientCopy = client;
  errorCopy = error;
  if (clientCopy && [clientCopy shouldLogAtLevel:20])
  {
    context = objc_autoreleasePoolPush();
    v16 = [MEMORY[0x277D73B40] metricWithName:nameCopy];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v16, 0}];
    if (errorCopy)
    {
      v18 = TRIFetchErrorParseToMetrics(errorCopy);
      if (v18)
      {
        [v17 addObjectsFromArray:v18];
      }

      else
      {
        v19 = MEMORY[0x277D73B40];
        localizedDescription = [errorCopy localizedDescription];
        v21 = [v19 metricWithName:localizedDescription];
        [v17 addObject:v21];
      }
    }

    trialSystemTelemetry = [(TRIFetchOnDemandFactorsTask *)self trialSystemTelemetry];
    v23 = [trialSystemTelemetry copy];

    ensureOnDemandFactorFields = [v23 ensureOnDemandFactorFields];
    [ensureOnDemandFactorFields setFactorName:factorCopy];

    ensureOnDemandFactorFields2 = [v23 ensureOnDemandFactorFields];
    [ensureOnDemandFactorFields2 setNamespaceName:namespaceNameCopy];

    logger = [clientCopy logger];
    trackingId = [clientCopy trackingId];
    dimensions = [(TRIFetchOnDemandFactorsTask *)self dimensions];
    [logger logWithTrackingId:trackingId metrics:v17 dimensions:dimensions trialSystemTelemetry:v23];

    objc_autoreleasePoolPop(context);
  }
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  assetIndexesByTreatment = self->_assetIndexesByTreatment;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke;
  v21[3] = &unk_279DE48D8;
  v6 = v4;
  v22 = v6;
  [(NSDictionary *)assetIndexesByTreatment enumerateKeysAndObjectsUsingBlock:v21];
  [v3 setTreatmentAssetIndexesArray:v6];
  v7 = objc_opt_new();
  assetIdsByFactorPack = self->_assetIdsByFactorPack;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_3;
  v19 = &unk_279DE4900;
  v9 = v7;
  v20 = v9;
  [(NSDictionary *)assetIdsByFactorPack enumerateKeysAndObjectsUsingBlock:&v16];
  [v3 setFactorPackAssetIdsArray:{v9, v16, v17, v18, v19}];
  v10 = [(NSSet *)self->_rolloutFactorNames mutableCopy];
  [v3 setRolloutFactorNamesArray:v10];

  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  [v3 setNamespaceName:self->_namespaceName];
  [v3 setRetryCount:self->_retryCount];
  if (self->_notificationKey)
  {
    [v3 setNotificationKey:?];
  }

  if (self->_experimentId)
  {
    [v3 setExperimentId:?];
  }

  deployment = self->_deployment;
  if (deployment)
  {
    rolloutId = [(TRIRolloutDeployment *)deployment rolloutId];
    [v3 setRolloutId:rolloutId];

    [v3 setDeploymentId:{-[TRIRolloutDeployment deploymentId](self->_deployment, "deploymentId")}];
  }

  asPersistedModifier = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:asPersistedModifier];

  return v3;
}

void __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  [v8 setTreatmentId:v5];
  v9 = [objc_alloc(MEMORY[0x277D73B90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_2;
  v11[3] = &unk_279DE0C98;
  v12 = v9;
  v10 = v9;
  [v6 enumerateIndexesUsingBlock:v11];
  [v8 setIndexArray:v10];
  [*(a1 + 32) addObject:v8];

  objc_autoreleasePoolPop(v7);
}

void __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  [v7 setFactorPackId:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_4;
  v9[3] = &unk_279DE0FE8;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(a1 + 32) addObject:v8];
}

void __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_opt_new();
  v4 = [v3 assetId];
  [v7 setAssetId:v4];

  v5 = [v3 factorName];

  [v7 setFactorName:v5];
  v6 = [*(a1 + 32) assetIdFactorNameArray];
  [v6 addObject:v7];
}

- (id)serialize
{
  _asPersistedTask = [(TRIFetchOnDemandFactorsTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1973 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v126 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v119 = 0;
  v4 = [(TRIPBMessage *)TRIFetchOnDemandFactorsPersistedTask parseFromData:dataCopy error:&v119];
  v5 = v119;
  if (!v4)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v125 = v5;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIFetchOnDemandFactorsPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_65;
  }

  if (([v4 hasNamespaceName] & 1) == 0)
  {
    v64 = TRILogCategory_Server();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v74 = objc_opt_class();
      v75 = NSStringFromClass(v74);
      *buf = 138412290;
      v125 = v75;
      _os_log_error_impl(&dword_26F567000, v64, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: namespaceName", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    *buf = 138412290;
    v125 = v66;
    v67 = "Cannot decode message of type %@ with missing field: namespaceName";
    goto LABEL_64;
  }

  namespaceName = [v4 namespaceName];
  v7 = [namespaceName length];

  if (!v7)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v68 = objc_opt_class();
      v66 = NSStringFromClass(v68);
      *buf = 138412290;
      v125 = v66;
      v67 = "Cannot decode message of type %@ with field of length 0: namespaceName";
LABEL_64:
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v67, buf, 0xCu);
    }

LABEL_65:
    v70 = 0;
    goto LABEL_66;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_opt_class();
      v66 = NSStringFromClass(v69);
      *buf = 138412290;
      v125 = v66;
      v67 = "Cannot decode message of type %@ with missing field: taskAttribution";
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v97 = dataCopy;
  v8 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = [v4 treatmentAssetIndexesArray];
  v9 = [obj countByEnumeratingWithState:&v115 objects:v123 count:16];
  v99 = v5;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v116;
  v95 = v4;
LABEL_7:
  v12 = 0;
  while (1)
  {
    if (*v116 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v115 + 1) + 8 * v12);
    v14 = objc_autoreleasePoolPush();
    treatmentId = [v13 treatmentId];
    v16 = [treatmentId length];

    if (!v16)
    {
      break;
    }

    if (![v13 indexArray_Count])
    {
      v72 = TRILogCategory_Server();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v73 = "TRIFetchOnDemandFactorsPersistedTask contains empty index array";
LABEL_99:
        _os_log_error_impl(&dword_26F567000, v72, OS_LOG_TYPE_ERROR, v73, buf, 2u);
      }

      goto LABEL_72;
    }

    treatmentId2 = [v13 treatmentId];
    v18 = [v8 objectForKeyedSubscript:treatmentId2];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_opt_new();
    }

    v21 = v20;

    indexArray = [v13 indexArray];
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __45__TRIFetchOnDemandFactorsTask_parseFromData___block_invoke;
    v113[3] = &unk_279DDF630;
    v114 = v21;
    v23 = v21;
    [indexArray enumerateValuesWithBlock:v113];

    treatmentId3 = [v13 treatmentId];
    [v8 setObject:v23 forKeyedSubscript:treatmentId3];

    objc_autoreleasePoolPop(v14);
    if (v10 == ++v12)
    {
      v10 = [obj countByEnumeratingWithState:&v115 objects:v123 count:16];
      v4 = v95;
      v5 = v99;
      if (!v10)
      {
LABEL_17:

        obj = objc_opt_new();
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        factorPackAssetIdsArray = [v4 factorPackAssetIdsArray];
        v26 = [factorPackAssetIdsArray countByEnumeratingWithState:&v109 objects:v122 count:16];
        if (!v26)
        {
LABEL_51:

          v59 = MEMORY[0x277CBEB98];
          rolloutFactorNamesArray = [v4 rolloutFactorNamesArray];
          v30 = [v59 setWithArray:rolloutFactorNamesArray];

          taskAttribution = [v4 taskAttribution];
          v62 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

          if (v62)
          {
            if ([v4 hasExperimentId])
            {
              experimentId = [v4 experimentId];
            }

            else
            {
              experimentId = 0;
            }

            dataCopy = v97;
            v94 = experimentId;
            if ([v4 hasRolloutId] && objc_msgSend(v4, "hasDeploymentId"))
            {
              v77 = objc_alloc(MEMORY[0x277D737C8]);
              rolloutId = [v4 rolloutId];
              v98 = [v77 initWithRolloutId:rolloutId deploymentId:{objc_msgSend(v4, "deploymentId")}];
            }

            else
            {
              v98 = 0;
            }

            if ([v4 hasNotificationKey])
            {
              notificationKey = [v4 notificationKey];
            }

            else
            {
              notificationKey = 0;
            }

            if ([v4 hasCapabilityModifier])
            {
              v80 = [TRITaskCapabilityModifier alloc];
              capabilityModifier = [v4 capabilityModifier];
              v82 = [capabilityModifier add];
              capabilityModifier2 = [v4 capabilityModifier];
              v84 = -[TRITaskCapabilityModifier initWithAdd:remove:](v80, "initWithAdd:remove:", v82, [capabilityModifier2 remove]);
            }

            else
            {
              v84 = objc_opt_new();
            }

            namespaceName2 = [v4 namespaceName];
            v76 = v94;
            v70 = [TRIFetchOnDemandFactorsTask taskWithAssetIndexesByTreatment:v8 experimentId:v94 assetIdsByFactorPack:obj rolloutFactorNames:v30 rolloutDeployment:v98 namespaceName:namespaceName2 taskAttributing:v62 notificationKey:notificationKey capabilityModifier:v84];

            hasRetryCount = [v4 hasRetryCount];
            if (hasRetryCount)
            {
              hasRetryCount = [v4 retryCount];
            }

            v70[16] = hasRetryCount;

            v5 = v99;
          }

          else
          {
            v76 = TRILogCategory_Server();
            dataCopy = v97;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_26F567000, v76, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
            }

            v70 = 0;
          }

LABEL_96:
          goto LABEL_97;
        }

        v27 = v26;
        v28 = *v110;
        v89 = factorPackAssetIdsArray;
        v91 = *v110;
        while (2)
        {
          v29 = 0;
          dataCopy = v97;
          v88 = v27;
LABEL_20:
          if (*v110 != v28)
          {
            objc_enumerationMutation(factorPackAssetIdsArray);
          }

          v30 = factorPackAssetIdsArray;
          v90 = v29;
          v31 = *(*(&v109 + 1) + 8 * v29);
          v32 = objc_autoreleasePoolPush();
          factorPackId = [v31 factorPackId];
          v34 = TRIValidateFactorPackId();

          if (!v34)
          {
            goto LABEL_77;
          }

          v93 = v34;
          v35 = [obj objectForKeyedSubscript:v34];
          v36 = v35;
          context = v32;
          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = objc_opt_new();
          }

          v38 = v37;
          v28 = v91;

          if ([v31 assetIdFactorNameArray_Count])
          {
            assetIdFactorNameArray_Count = [v31 assetIdFactorNameArray_Count];
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            assetIdFactorNameArray = [v31 assetIdFactorNameArray];
            v41 = [assetIdFactorNameArray countByEnumeratingWithState:&v105 objects:v121 count:16];
            if (v41)
            {
              v42 = v41;
              v87 = assetIdFactorNameArray_Count;
              v96 = v4;
              v43 = *v106;
              while (2)
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v106 != v43)
                  {
                    objc_enumerationMutation(assetIdFactorNameArray);
                  }

                  v45 = *(*(&v105 + 1) + 8 * i);
                  assetId = [v45 assetId];
                  v47 = TRIValidateAssetId();

                  if (!v47)
                  {
                    v4 = v96;
                    goto LABEL_75;
                  }

                  v48 = objc_alloc(MEMORY[0x277D73658]);
                  factorName = [v45 factorName];
                  v50 = [v48 initWithAssetId:v47 factorName:factorName];
                  [v38 addObject:v50];
                }

                v42 = [assetIdFactorNameArray countByEnumeratingWithState:&v105 objects:v121 count:16];
                if (v42)
                {
                  continue;
                }

                break;
              }

              v4 = v96;
              goto LABEL_46;
            }

LABEL_47:
            factorPackAssetIdsArray = v30;
          }

          else
          {
            factorPackAssetIdsArray = v30;
            if (![v31 assetIdArray_Count])
            {
              goto LABEL_100;
            }

            assetIdFactorNameArray_Count = [v31 assetIdArray_Count];
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            assetIdFactorNameArray = [v31 assetIdArray];
            v51 = [assetIdFactorNameArray countByEnumeratingWithState:&v101 objects:v120 count:16];
            if (!v51)
            {
              goto LABEL_47;
            }

            v52 = v51;
            v87 = assetIdFactorNameArray_Count;
            v53 = v4;
            v54 = *v102;
            while (2)
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v102 != v54)
                {
                  objc_enumerationMutation(assetIdFactorNameArray);
                }

                v56 = TRIValidateAssetId();
                if (!v56)
                {
                  v4 = v53;
LABEL_75:
                  v5 = v99;
                  v30 = v89;
                  goto LABEL_76;
                }

                v57 = v56;
                v58 = [objc_alloc(MEMORY[0x277D73658]) initWithAssetId:v56 factorName:0];
                [v38 addObject:v58];
              }

              v52 = [assetIdFactorNameArray countByEnumeratingWithState:&v101 objects:v120 count:16];
              if (v52)
              {
                continue;
              }

              break;
            }

            v4 = v53;
LABEL_46:
            v5 = v99;
            factorPackAssetIdsArray = v89;
            v28 = v91;
            assetIdFactorNameArray_Count = v87;
          }

          if (!assetIdFactorNameArray_Count)
          {
LABEL_100:
            v30 = factorPackAssetIdsArray;
            assetIdFactorNameArray = TRILogCategory_Server();
            if (os_log_type_enabled(assetIdFactorNameArray, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_26F567000, assetIdFactorNameArray, OS_LOG_TYPE_ERROR, "TRIFetchOnDemandFactorsPersistedTask contains empty asset index array", buf, 2u);
            }

LABEL_76:
            v32 = context;

LABEL_77:
            objc_autoreleasePoolPop(v32);
            v70 = 0;
            goto LABEL_96;
          }

          [obj setObject:v38 forKeyedSubscript:v93];

          objc_autoreleasePoolPop(context);
          v29 = v90 + 1;
          if (v90 + 1 == v88)
          {
            v27 = [factorPackAssetIdsArray countByEnumeratingWithState:&v109 objects:v122 count:16];
            if (v27)
            {
              continue;
            }

            goto LABEL_51;
          }

          goto LABEL_20;
        }
      }

      goto LABEL_7;
    }
  }

  v72 = TRILogCategory_Server();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v73 = "TRIFetchOnDemandFactorsPersistedTask contains empty treatmentId";
    goto LABEL_99;
  }

LABEL_72:
  v4 = v95;
  dataCopy = v97;
  v5 = v99;

  objc_autoreleasePoolPop(v14);
  v70 = 0;
LABEL_97:

LABEL_66:

  return v70;
}

- (unint64_t)requiredCapabilities
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  requiredCapability = [networkOptions requiredCapability];
  v7.receiver = self;
  v7.super_class = TRIFetchOnDemandFactorsTask;
  v5 = [(TRIBaseTask *)&v7 requiredCapabilities]| requiredCapability | (4 * (self->_retryCount > 0));

  return [(TRITaskCapabilityModifier *)self->_capabilityModifier updateCapability:v5];
}

- (NSString)description
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  discretionaryBehavior = [networkOptions discretionaryBehavior];
  v5 = @"disc";
  if (!discretionaryBehavior)
  {
    v5 = @"non-disc";
  }

  v6 = v5;

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  namespaceName = self->_namespaceName;
  notificationKey = self->_notificationKey;
  applicationBundleIdentifier = [(TRITaskAttributing *)self->_taskAttributing applicationBundleIdentifier];
  anyObject = [(NSSet *)self->_rolloutFactorNames anyObject];
  v13 = [v7 stringWithFormat:@"<%@:%@, %@, a:%@, d:%@, f:%@, r:%d>", v8, namespaceName, notificationKey, applicationBundleIdentifier, v6, anyObject, -[TRIFetchOnDemandFactorsTask retryCount](self, "retryCount")];

  return v13;
}

- (TRIFetchOnDemandFactorsTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIFetchOnDemandFactorsTask;
  v5 = [(TRIFetchOnDemandFactorsTask *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
    if (v6)
    {
      v7 = [objc_opt_class() parseFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:2098 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIFetchOnDemandFactorsTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end