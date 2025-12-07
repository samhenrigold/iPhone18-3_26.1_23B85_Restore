@interface TRIFetchTreatmentTask
+ (id)parseFromData:(id)data;
+ (id)taskWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing capabilityModifier:(id)modifier;
- (BOOL)_downloadAndSaveMAAssets:(id)assets options:(id)options downloadNotificationKey:(id)key context:(id)context errorResult:(id *)result fetchError:(id *)error;
- (NSArray)dependencies;
- (NSString)description;
- (TRIFetchTreatmentTask)initWithCoder:(id)coder;
- (TRIFetchTreatmentTask)initWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing capabilityModifier:(id)modifier;
- (id)_asPersistedTask;
- (id)_fetchAssetsWithArtifactProvider:(id)provider recordId:(id)id experimentRecord:(id)record assetIndexes:(id)indexes downloadOptions:(id)options context:(id)context assetURLs:(id *)ls treatmentFetchError:(id *)self0;
- (id)_fetchTreatmentWithArtifactProvider:(id)provider experimentRecord:(id)record downloadOptions:(id)options context:(id)context treatment:(id *)treatment recordId:(id *)id treatmentFetchError:(id *)error;
- (id)_namespaceDescriptorForNamespaceName:(id)name fromExperimentRecord:(id)record referencingFactorsURL:(id)l;
- (id)_nextTasksForRunStatusFailureWithDeactivationReason:(unint64_t)reason;
- (id)_saveTreatment:(id)treatment experimentRecord:(id)record assetURLs:(id)ls assetMetadata:(id)metadata context:(id)context paths:(id)paths downloadOptions:(id)options;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)requiredCapabilities;
- (unsigned)_ncvForNamespaceName:(id)name inExperimentRecord:(id)record;
- (void)_addMetricForFetchTreatmentTaskError:(int)error;
- (void)encodeWithCoder:(id)coder;
- (void)runDequeueHandlerUsingContext:(id)context;
- (void)runEnqueueHandlerUsingContext:(id)context;
@end

@implementation TRIFetchTreatmentTask

- (TRIFetchTreatmentTask)initWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing capabilityModifier:(id)modifier
{
  modifierCopy = modifier;
  v15.receiver = self;
  v15.super_class = TRIFetchTreatmentTask;
  v12 = [(TRITreatmentBaseTask *)&v15 initWithExperiment:experiment treatmentId:id taskAttributing:attributing];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_capabilityModifier, modifier);
    v13->retryCount = 0;
  }

  return v13;
}

+ (id)taskWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing capabilityModifier:(id)modifier
{
  modifierCopy = modifier;
  attributingCopy = attributing;
  idCopy = id;
  experimentCopy = experiment;
  v14 = [[self alloc] initWithExperiment:experimentCopy treatmentId:idCopy taskAttributing:attributingCopy capabilityModifier:modifierCopy];

  return v14;
}

- (NSArray)dependencies
{
  v8[1] = *MEMORY[0x277D85DE8];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  v5 = [TRIFetchExperimentTask taskWithExperimentDeployment:experiment taskAttributing:taskAttributing];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)runEnqueueHandlerUsingContext:(id)context
{
  contextCopy = context;
  v8 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:contextCopy];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  v6 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:treatmentId container:v8];

  contentTracker = [contextCopy contentTracker];

  [contentTracker addRefWithContentIdentifier:v6];
}

- (void)runDequeueHandlerUsingContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:contextCopy];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  v7 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:treatmentId container:v5];

  contentTracker = [contextCopy contentTracker];

  LOBYTE(contextCopy) = [contentTracker dropRefWithContentIdentifier:v7];
  if ((contextCopy & 1) == 0)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
      v11 = 138412290;
      v12 = treatmentId2;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for treatment %@.", &v11, 0xCu);
    }
  }
}

- (BOOL)_downloadAndSaveMAAssets:(id)assets options:(id)options downloadNotificationKey:(id)key context:(id)context errorResult:(id *)result fetchError:(id *)error
{
  assetsCopy = assets;
  optionsCopy = options;
  keyCopy = key;
  contextCopy = context;
  if ([assetsCopy count])
  {
    v30 = optionsCopy;
    v18 = objc_opt_new();
    ensureMobileAssetOriginFields = [v18 ensureMobileAssetOriginFields];
    [ensureMobileAssetOriginFields setIsMobileAsset:1];

    [(TRIExperimentBaseTask *)self mergeTelemetry:v18];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__53;
    v41 = __Block_byref_object_dispose__53;
    v20 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:3];
    v42 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v20 earliestRetryDate:0];

    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke;
    v35[3] = &unk_279DE3F58;
    v22 = v21;
    v36 = v22;
    [assetsCopy enumerateObjectsUsingBlock:v35];
    v23 = dispatch_semaphore_create(0);
    v24 = objc_opt_new();
    taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke_2;
    v31[3] = &unk_279DE4160;
    v31[4] = self;
    v33 = &v37;
    errorCopy = error;
    v26 = v23;
    v32 = v26;
    v27 = [v24 downloadAssets:v22 attribution:taskAttributing aggregateProgress:0 group:0 completion:v31];

    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    if (result)
    {
      objc_storeStrong(result, v38[5]);
    }

    v28 = [v38[5] runStatus] == 2;

    _Block_object_dispose(&v37, 8);
    optionsCopy = v30;
  }

  else
  {
    v28 = 1;
  }

  return v28;
}

void __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 metadata];
  v4 = [v3 fullAssetId];

  [v2 setObject:v5 forKey:v4];
}

void __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke_2(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v17 = a4;
  v9 = a5;
  if (a3)
  {
    [*(a1 + 32) setWasDeferred:1];
  }

  v10 = *(a1 + 56);
  v11 = *v10;
  *v10 = v9;
  v12 = v9;

  v13 = [TRITaskRunResult alloc];
  v14 = [(TRITaskRunResult *)v13 initWithRunStatus:a2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:v17];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_saveTreatment:(id)treatment experimentRecord:(id)record assetURLs:(id)ls assetMetadata:(id)metadata context:(id)context paths:(id)paths downloadOptions:(id)options
{
  optionsCopy = options;
  v140 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  recordCopy = record;
  lsCopy = ls;
  metadataCopy = metadata;
  contextCopy = context;
  pathsCopy = paths;
  optionsCopy2 = options;
  v109 = contextCopy;
  experimentDatabase = [contextCopy experimentDatabase];
  namespaceDatabase = [contextCopy namespaceDatabase];
  v101 = [[TRIUserCovariates alloc] initWithContext:contextCopy];
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke;
  v132[3] = &unk_279DE4AA0;
  v132[4] = self;
  v107 = MEMORY[0x2743948D0](v132);
  if (treatmentCopy)
  {
    if ([treatmentCopy hasTreatmentId])
    {
      treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
      treatmentId2 = [treatmentCopy treatmentId];
      v20 = [treatmentId isEqualToString:treatmentId2];

      if (v20)
      {
        if ([treatmentCopy factorLevelArray_Count])
        {
          v21 = objc_opt_new();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v138 = __Block_byref_object_copy__53;
          *v139 = __Block_byref_object_dispose__53;
          *&v139[8] = 0;
          v22 = TRILogCategory_Server();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            factorLevelArray_Count = [treatmentCopy factorLevelArray_Count];
            treatmentId3 = [(TRITreatmentBaseTask *)self treatmentId];
            experiment = [(TRIExperimentBaseTask *)self experiment];
            *v134 = 134218498;
            *&v134[4] = factorLevelArray_Count;
            *&v134[12] = 2112;
            *&v134[14] = treatmentId3;
            *&v134[22] = 2114;
            v135 = experiment;
            _os_log_debug_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEBUG, "got %lu factors defined in treatment %@ for experiment %{public}@", v134, 0x20u);
          }

          *v134 = 0;
          *&v134[8] = v134;
          *&v134[16] = 0x2020000000;
          LOBYTE(v135) = 1;
          factorLevelArray = [treatmentCopy factorLevelArray];
          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_330;
          v127[3] = &unk_279DE4AC8;
          v127[4] = self;
          v130 = v134;
          v24 = v21;
          v128 = v24;
          v129 = namespaceDatabase;
          v131 = buf;
          [factorLevelArray enumerateObjectsUsingBlock:v127];

          v25 = *(*&v134[8] + 24);
          if (v25)
          {
            if (*(*&buf[8] + 40))
            {
              v26 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_bundle_id" value:?];
              [(TRIExperimentBaseTask *)self addDimension:v26];
              v27 = [(TRIUserCovariates *)v101 tri_shortVersionStringForBundleId:*(*&buf[8] + 40)];
              v28 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_version" value:v27];
              [(TRIExperimentBaseTask *)self addDimension:v28];
            }

            allObjects = [v24 allObjects];
          }

          else
          {
            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:26];
            optionsCopy = v107[2](v107, 16);
            allObjects = 0;
          }

          _Block_object_dispose(v134, 8);
          _Block_object_dispose(buf, 8);

          if ((v25 & 1) == 0)
          {
            goto LABEL_86;
          }

          if (allObjects)
          {
            if ([allObjects count])
            {
              if ([recordCopy type] == 1)
              {
                experiment2 = [(TRIExperimentBaseTask *)self experiment];
                startDate = [recordCopy startDate];
                endDate = [recordCopy endDate];
                v39 = [experimentDatabase namespacesAreAvailableForExperiment:experiment2 startDate:startDate endDate:endDate namespaces:allObjects];

                if ((v39 & 1) == 0)
                {
                  v83 = TRILogCategory_Server();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                  {
                    treatmentId4 = [(TRITreatmentBaseTask *)self treatmentId];
                    experiment3 = [(TRIExperimentBaseTask *)self experiment];
                    shortDesc = [experiment3 shortDesc];
                    v96 = [allObjects componentsJoinedByString:{@", "}];
                    startDate2 = [recordCopy startDate];
                    endDate2 = [recordCopy endDate];
                    *buf = 138413314;
                    *&buf[4] = treatmentId4;
                    *&buf[12] = 2114;
                    *&buf[14] = shortDesc;
                    *&buf[22] = 2114;
                    v138 = v96;
                    *v139 = 2112;
                    *&v139[2] = startDate2;
                    *&v139[10] = 2112;
                    *&v139[12] = endDate2;
                    _os_log_error_impl(&dword_26F567000, v83, OS_LOG_TYPE_ERROR, "cannot install treatment %@ of experiment %{public}@ -- namespaces %{public}@ not available for experimentation during time from %@ to %@", buf, 0x34u);
                  }

                  [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:28];
                  optionsCopy = v107[2](v107, 17);
                  goto LABEL_86;
                }
              }

              v32 = 0;
LABEL_37:
              *v134 = 0;
              *&v134[8] = v134;
              *&v134[16] = 0x2810000000;
              v135 = &unk_26F7089E2;
              v136 = 1;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v138 = __Block_byref_object_copy__53;
              *v139 = __Block_byref_object_dispose__53;
              *&v139[8] = 0;
              v41 = [TRIAssetStore alloc];
              activity = [optionsCopy2 activity];
              v43 = [(TRIAssetStore *)v41 initWithPaths:pathsCopy monitoredActivity:activity];

              cloudKit = [metadataCopy cloudKit];
              v121[0] = MEMORY[0x277D85DD0];
              v121[1] = 3221225472;
              v121[2] = __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_337;
              v121[3] = &unk_279DE4AF0;
              v126 = a2;
              v121[4] = self;
              v122 = lsCopy;
              v124 = v134;
              v45 = v43;
              v123 = v45;
              v125 = buf;
              [cloudKit enumerateObjectsUsingBlock:v121];

              if (*(*&v134[8] + 32))
              {
                if (*(*&v134[8] + 32) != 2)
                {
                  v48 = 1;
                  goto LABEL_45;
                }

                [(TRIFetchTreatmentTask *)self setWasDeferred:1];
                [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:30];
                v46 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
                optionsCopy = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v46 earliestRetryDate:0];
              }

              else
              {
                v46 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:*(*&buf[8] + 40) options:optionsCopy2];
                if (v46)
                {
                  v47 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
                  optionsCopy = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v47 earliestRetryDate:v46];
                }

                else
                {
                  optionsCopy = v107[2](v107, 20);
                  v46 = 0;
                }
              }

              v48 = 0;
LABEL_45:

              _Block_object_dispose(buf, 8);
              _Block_object_dispose(v134, 8);
              if (!v48)
              {
LABEL_86:

                goto LABEL_13;
              }

              v112 = [[TRIClientTreatmentStorage alloc] initWithPaths:pathsCopy];
              v99 = [(TRIClientTreatmentStorage *)v112 saveTreatment:treatmentCopy];
              if (v99)
              {
                treatmentId5 = [recordCopy treatmentId];
                v50 = treatmentId5 == 0;

                if (!v50 || (-[TRITreatmentBaseTask treatmentId](self, "treatmentId"), v51 = objc_claimAutoreleasedReturnValue(), -[TRIExperimentBaseTask experiment](self, "experiment"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [experimentDatabase setTreatmentId:v51 forExperimentDeployment:v52 usingTransaction:0], v52, v51, (v53 & 1) != 0))
                {
                  v108 = objc_opt_new();
                  if ((v32 & 1) != 0 || ![allObjects count])
                  {
                    v54 = 2;
                  }

                  else
                  {
                    v119 = 0u;
                    v120 = 0u;
                    v117 = 0u;
                    v118 = 0u;
                    obj = allObjects;
                    v113 = [obj countByEnumeratingWithState:&v117 objects:v133 count:16];
                    if (v113)
                    {
                      v111 = *v118;
                      v54 = 2;
                      do
                      {
                        for (i = 0; i != v113; ++i)
                        {
                          if (*v118 != v111)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v56 = *(*(&v117 + 1) + 8 * i);
                          treatmentId6 = [(TRITreatmentBaseTask *)self treatmentId];
                          v58 = [(TRIClientTreatmentStorage *)v112 urlForFactorsWithTreatmentId:treatmentId6 namespaceName:v56];

                          experiment4 = [(TRIExperimentBaseTask *)self experiment];
                          v60 = [experimentDatabase setTreatmentURL:v58 forExperimentDeployment:experiment4 namespaceName:v56];

                          if ((v60 & 1) == 0)
                          {
                            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:21];
                            v54 = 3;
                          }

                          v61 = [objc_alloc(MEMORY[0x277D737F8]) initWithPaths:pathsCopy];
                          experiment5 = [(TRIExperimentBaseTask *)self experiment];
                          experimentId = [experiment5 experimentId];
                          [v61 setExperimentId:experimentId];

                          experiment6 = [(TRIExperimentBaseTask *)self experiment];
                          [v61 setDeploymentId:{objc_msgSend(experiment6, "deploymentId")}];

                          treatmentId7 = [(TRITreatmentBaseTask *)self treatmentId];
                          [v61 setTreatmentId:treatmentId7];

                          [v61 setNamespaceName:v56];
                          v66 = [v58 triPathAsOwner:0];
                          stringByDeletingLastPathComponent = [v66 stringByDeletingLastPathComponent];

                          if (!stringByDeletingLastPathComponent || ([v61 saveToDir:stringByDeletingLastPathComponent] & 1) == 0)
                          {
                            v68 = TRILogCategory_Server();
                            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                            {
                              treatmentId8 = [(TRITreatmentBaseTask *)self treatmentId];
                              experiment7 = [(TRIExperimentBaseTask *)self experiment];
                              *buf = 138412802;
                              *&buf[4] = treatmentId8;
                              *&buf[12] = 2114;
                              *&buf[14] = experiment7;
                              *&buf[22] = 2114;
                              v138 = v56;
                              _os_log_error_impl(&dword_26F567000, v68, OS_LOG_TYPE_ERROR, "failed to save info for treatment %@ of experiment %{public}@ with namespace %{public}@", buf, 0x20u);
                            }

                            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:18];
                            v54 = 3;
                          }

                          v69 = [(TRIFetchTreatmentTask *)self _namespaceDescriptorForNamespaceName:v56 fromExperimentRecord:recordCopy referencingFactorsURL:v58];
                          if (v69)
                          {
                            [v108 addObject:v69];
                          }

                          else
                          {
                            v70 = TRILogCategory_Server();
                            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                            {
                              treatmentId9 = [(TRITreatmentBaseTask *)self treatmentId];
                              experiment8 = [(TRIExperimentBaseTask *)self experiment];
                              *buf = 138412802;
                              *&buf[4] = treatmentId9;
                              *&buf[12] = 2114;
                              *&buf[14] = experiment8;
                              *&buf[22] = 2114;
                              v138 = v56;
                              _os_log_error_impl(&dword_26F567000, v70, OS_LOG_TYPE_ERROR, "failed to compute namespace descriptor set entry for treatment %@ of experiment %{public}@ with namespace %{public}@", buf, 0x20u);
                            }

                            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:7];
                            v54 = 3;
                          }
                        }

                        v113 = [obj countByEnumeratingWithState:&v117 objects:v133 count:16];
                      }

                      while (v113);
                    }

                    else
                    {
                      v54 = 2;
                    }
                  }

                  v87 = [[TRINamespaceDescriptorSetStorage alloc] initWithPaths:pathsCopy];
                  treatmentId10 = [(TRITreatmentBaseTask *)self treatmentId];
                  v89 = [(TRINamespaceDescriptorSetStorage *)v87 overwriteNamespaceDescriptors:v108 forTreatmentId:treatmentId10];

                  if (!v89)
                  {
                    [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:17];
                    v54 = 3;
                  }

                  v90 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:v54];
                  optionsCopy = [TRITaskRunResult resultWithRunStatus:v54 reportResultToServer:1 nextTasks:v90 earliestRetryDate:0];

                  goto LABEL_85;
                }

                v76 = TRILogCategory_Server();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                {
                  treatmentId11 = [(TRITreatmentBaseTask *)self treatmentId];
                  experiment9 = [(TRIExperimentBaseTask *)self experiment];
                  *buf = 138412546;
                  *&buf[4] = treatmentId11;
                  *&buf[12] = 2114;
                  *&buf[14] = experiment9;
                  _os_log_debug_impl(&dword_26F567000, v76, OS_LOG_TYPE_DEBUG, "failed to save treatment id %@ to database for experiment %{public}@", buf, 0x16u);
                }

                [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:19];
                v75 = v107[2](v107, 18);
              }

              else
              {
                [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:20];
                v75 = v107[2](v107, 18);
              }

              optionsCopy = v75;
LABEL_85:

              goto LABEL_86;
            }

            v32 = 0;
          }

          else
          {
            allObjects = 0;
            v32 = 1;
          }
        }

        else
        {
          v31 = TRILogCategory_Server();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            treatmentId12 = [(TRITreatmentBaseTask *)self treatmentId];
            experiment10 = [(TRIExperimentBaseTask *)self experiment];
            shortDesc2 = [experiment10 shortDesc];
            *buf = 138412546;
            *&buf[4] = treatmentId12;
            *&buf[12] = 2114;
            *&buf[14] = shortDesc2;
            _os_log_debug_impl(&dword_26F567000, v31, OS_LOG_TYPE_DEBUG, "no factors defined in treatment %@ for experiment %{public}@", buf, 0x16u);
          }

          allObjects = 0;
          v32 = 1;
        }

        v40 = TRILogCategory_Server();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          treatmentId13 = [(TRITreatmentBaseTask *)self treatmentId];
          experiment11 = [(TRIExperimentBaseTask *)self experiment];
          shortDesc3 = [experiment11 shortDesc];
          *buf = 138412546;
          *&buf[4] = treatmentId13;
          *&buf[12] = 2114;
          *&buf[14] = shortDesc3;
          _os_log_debug_impl(&dword_26F567000, v40, OS_LOG_TYPE_DEBUG, "no namespaces used in treatment %@ for experiment %{public}@", buf, 0x16u);
        }

        goto LABEL_37;
      }
    }
  }

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    treatmentId14 = [(TRITreatmentBaseTask *)self treatmentId];
    hasTreatmentId = [treatmentCopy hasTreatmentId];
    if (hasTreatmentId)
    {
      treatmentId15 = [treatmentCopy treatmentId];
    }

    else
    {
      treatmentId15 = @"(unset)";
    }

    *buf = 138412546;
    *&buf[4] = treatmentId14;
    *&buf[12] = 2112;
    *&buf[14] = treatmentId15;
    _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Mismatched treatmentId: (exp: %@, act: %@)", buf, 0x16u);
    if (hasTreatmentId)
    {
    }
  }

  [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:27];
  optionsCopy = v107[2](v107, 15);
LABEL_13:

  return optionsCopy;
}

id __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Saving treatment failed with reason: %lu", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) _nextTasksForRunStatusFailureWithDeactivationReason:a2];
  v6 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v5 earliestRetryDate:0];

  return v6;
}

void __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_330(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [a2 factor];
  v7 = [v6 namespaceString];

  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v8 = [*(a1 + 48) dynamicNamespaceRecordWithNamespaceName:v7];
    if (v8 && !*(*(*(a1 + 64) + 8) + 40))
    {
      v9 = [*(a1 + 32) taskAttributing];
      v10 = [v9 applicationBundleIdentifier];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) treatmentId];
      v15 = [*(a1 + 32) experiment];
      v16 = 138412546;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "factor message does not contain namespace field in treatment %@ of experiment %{public}@", &v16, 0x16u);
    }

    *a4 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_337(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 metadata];
  v8 = [v7 treatmentIndex];

  if (!v8)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"TRIFetchTreatmentTask.m" lineNumber:253 description:{@"Expression was unexpectedly nil/false: %@", @"ra.metadata.treatmentIndex"}];
  }

  v9 = [v8 index];

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = *(a1 + 48);
    v14 = [v6 assetId];
    v15 = [v6 metadata];
    v16 = *(*(a1 + 64) + 8);
    obj = *(v16 + 40);
    LOBYTE(v13) = [v13 saveAssetWithIdentifier:v14 assetURL:v12 metadata:v15 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 56) + 8) + 32) = v13;

    if (*(*(*(a1 + 56) + 8) + 32) == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v6 assetId];
      v19 = [*(a1 + 32) treatmentId];
      *buf = 138543874;
      v23 = v18;
      v24 = 1024;
      v25 = v9;
      v26 = 2112;
      v27 = v19;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unexpected missing assetURL for assetId %{public}@ at ck index %d in treatment %@.", buf, 0x1Cu);
    }

    *(*(*(a1 + 56) + 8) + 32) = 0;
  }

  *a4 = 1;
LABEL_10:
}

- (unsigned)_ncvForNamespaceName:(id)name inExperimentRecord:(id)record
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  namespaces = [record namespaces];
  v7 = [namespaces countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(namespaces);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        name = [v11 name];
        v13 = [nameCopy isEqualToString:name];

        if (v13)
        {
          compatibilityVersion = [v11 compatibilityVersion];
          goto LABEL_11;
        }
      }

      v8 = [namespaces countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  compatibilityVersion = -1;
LABEL_11:

  return compatibilityVersion;
}

- (id)_namespaceDescriptorForNamespaceName:(id)name fromExperimentRecord:(id)record referencingFactorsURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v10 = [(TRIFetchTreatmentTask *)self _ncvForNamespaceName:nameCopy inExperimentRecord:record];
  if (v10 == -1)
  {
    v13 = 0;
  }

  else
  {
    v11 = v10;
    v12 = objc_opt_new();
    [v12 setFactorsURL:lCopy];
    v13 = [objc_alloc(MEMORY[0x277D73750]) initWithNamespaceName:nameCopy downloadNCV:v11 optionalParams:v12];
  }

  return v13;
}

- (id)_fetchTreatmentWithArtifactProvider:(id)provider experimentRecord:(id)record downloadOptions:(id)options context:(id)context treatment:(id *)treatment recordId:(id *)id treatmentFetchError:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  recordCopy = record;
  optionsCopy = options;
  contextCopy = context;
  v18 = dispatch_semaphore_create(0);
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__53;
  v52 = __Block_byref_object_dispose__53;
  v53 = 0;
  v19 = [[TRIFetchOptions alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:&unk_287FC4D68];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke;
  v37[3] = &unk_279DE4B18;
  v21 = recordCopy;
  v38 = v21;
  v22 = contextCopy;
  v39 = v22;
  selfCopy = self;
  v42 = &v54;
  v43 = &v48;
  errorCopy = error;
  treatmentCopy = treatment;
  idCopy = id;
  v47 = a2;
  v23 = v18;
  v41 = v23;
  v24 = [providerCopy fetchTreatmentWithId:treatmentId options:v19 completion:v37];

  [MEMORY[0x277D425A0] waitForSemaphore:v23];
  v25 = *(v55 + 6);
  if (v25 != 2)
  {
    if (v25 == 3)
    {
      v26 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:3];
      [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v26 earliestRetryDate:v49[5]];
    }

    else
    {
      v26 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:3];
      [TRITaskRunResult resultWithRunStatus:v25 reportResultToServer:1 nextTasks:v26 earliestRetryDate:v49[5]];
    }
    v27 = ;
LABEL_13:
    providerCopy = v27;

    goto LABEL_14;
  }

  if (!*treatment)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
      experiment = [(TRIExperimentBaseTask *)self experiment];
      shortDesc = [experiment shortDesc];
      *buf = 138412546;
      v59 = treatmentId2;
      v60 = 2114;
      v61 = shortDesc;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "CloudKit fetch succeeded, but a valid treatment was not obtained for treatment %@ of experiment %{public}@.", buf, 0x16u);
    }

    [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:9];
    v26 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:14];
    v27 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v26 earliestRetryDate:0];
    goto LABEL_13;
  }

  if (!*id)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:483 description:@"Decoded a treatment but failed to associate a CKRecordID"];
  }

  providerCopy = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0, providerCopy];
LABEL_14:

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  return providerCopy;
}

void __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke_2;
  v33[3] = &unk_279DE0208;
  v34 = *(a1 + 32);
  v35 = *(a1 + 40);
  v16 = MEMORY[0x2743948D0](v33);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:*(a1 + 104) object:*(a1 + 48) file:@"TRIFetchTreatmentTask.m" lineNumber:450 description:@"Unexpected status TRIFetchStatusMoreResultsPending"];

        goto LABEL_20;
      }

      if (a2 == 4)
      {
        objc_storeStrong(*(a1 + 88), a4);
        objc_storeStrong(*(a1 + 96), a3);
        v17 = *(*(a1 + 64) + 8);
        v18 = 2;
LABEL_11:
        *(v17 + 24) = v18;
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [*(a1 + 48) treatmentId];
      v31 = [*(a1 + 48) experiment];
      v27 = [v31 shortDesc];
      *buf = 138412802;
      v37 = v26;
      v38 = 2114;
      v39 = v27;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Fetching treatment %@ of experiment %{public}@: resulted in retry-able error %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a6);
LABEL_19:
    objc_storeStrong(*(a1 + 80), a7);
    goto LABEL_20;
  }

  if (!a2)
  {
    v25 = TRILogCategory_Server();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = [*(a1 + 48) treatmentId];
      v29 = [*(a1 + 48) experiment];
      v30 = [v29 shortDesc];
      *buf = 138412802;
      v37 = v28;
      v38 = 2114;
      v39 = v30;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Error fetching treatment %@ of experiment %{public}@: %{public}@", buf, 0x20u);
    }

    v16[2](v16, 1);
    *(*(*(a1 + 64) + 8) + 24) = 3;
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 48) treatmentId];
      v21 = [*(a1 + 48) experiment];
      v22 = [v21 shortDesc];
      *buf = 138412546;
      v37 = v20;
      v38 = 2114;
      v39 = v22;
      _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Cancelled fetch of treatment %@ for experiment %{public}@", buf, 0x16u);
    }

    v17 = *(*(a1 + 64) + 8);
    v18 = 4;
    goto LABEL_11;
  }

LABEL_20:
  dispatch_semaphore_signal(*(a1 + 56));
}

void __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) namespaces];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 name];
          *buf = 138543362;
          v21 = v10;
          _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "notify namespace download failed: %{public}@", buf, 0xCu);
        }

        v11 = MEMORY[0x277D73788];
        v12 = [v8 name];
        [v11 updateStatusFetchSuccess:0 forNamespaceName:v12 withContext:*(a1 + 40)];

        v13 = MEMORY[0x277D73698];
        v14 = [v8 name];
        [v13 notifyDownloadFailedForKey:v14 withError:a2];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

- (id)_fetchAssetsWithArtifactProvider:(id)provider recordId:(id)id experimentRecord:(id)record assetIndexes:(id)indexes downloadOptions:(id)options context:(id)context assetURLs:(id *)ls treatmentFetchError:(id *)self0
{
  providerCopy = provider;
  idCopy = id;
  recordCopy = record;
  indexesCopy = indexes;
  optionsCopy = options;
  contextCopy = context;
  v33 = [objc_alloc(MEMORY[0x277D736A0]) initWithAllowsCellular:0 discretionaryBehavior:0];
  v20 = [[TRIFetchOptions alloc] initWithDownloadOptions:v33 cacheDeleteAvailableSpaceClass:&unk_287FC4D68];
  v21 = dispatch_semaphore_create(0);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__53;
  v54 = __Block_byref_object_dispose__53;
  v55 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke;
  v48[3] = &unk_279DE4428;
  v49 = recordCopy;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_371;
  v38[3] = &unk_279DE4B40;
  v31 = v49;
  v39 = v31;
  v22 = contextCopy;
  v40 = v22;
  selfCopy = self;
  v43 = &v56;
  v44 = &v50;
  errorCopy = error;
  lsCopy = ls;
  v47 = a2;
  v23 = v21;
  v42 = v23;
  v36 = indexesCopy;
  v24 = indexesCopy;
  v25 = v20;
  v26 = [providerCopy fetchAssetsWithIndexes:v24 fromTreatmentWithRecordId:idCopy options:v20 progress:v48 completion:v38];
  [MEMORY[0x277D425A0] waitForSemaphore:v23];
  v27 = *(v57 + 6);
  if (v27 == 3)
  {
    v28 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:19, v31];
    [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v28 earliestRetryDate:v51[5]];
  }

  else
  {
    v28 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:*(v57 + 6), v31];
    [TRITaskRunResult resultWithRunStatus:v27 reportResultToServer:1 nextTasks:v28 earliestRetryDate:v51[5]];
  }
  v29 = ;

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v29;
}

void __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke(uint64_t a1, double a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) namespaces];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v8 name];
          *buf = 138543618;
          v18 = v12;
          v19 = 2048;
          v20 = (a2 * 100.0);
          _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "notify namespace download progress: %{public}@, %tu%%", buf, 0x16u);
        }

        v10 = MEMORY[0x277D73698];
        v11 = [v8 name];
        [v10 notifyDownloadProgressForKey:v11 withProgress:(a2 * 100.0)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

void __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_371(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_2;
  v28[3] = &unk_279DE0208;
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  v13 = MEMORY[0x2743948D0](v28);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:*(a1 + 96) object:*(a1 + 48) file:@"TRIFetchTreatmentTask.m" lineNumber:550 description:@"Unexpected status TRIFetchStatusMoreResultsPending"];
      }

      else if (a2 == 4)
      {
        objc_storeStrong(*(a1 + 88), a3);
        if (v10)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }

        *(*(*(a1 + 64) + 8) + 24) = v14;
      }

      goto LABEL_22;
    }

    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [*(a1 + 48) treatmentId];
      v27 = [*(a1 + 48) experiment];
      v23 = [v27 shortDesc];
      *buf = 138412802;
      v32 = v22;
      v33 = 2114;
      v34 = v23;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Fetching assets for treatment %@ of experiment %{public}@: resulted in retry-able error %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
LABEL_21:
    objc_storeStrong(*(a1 + 80), a5);
    goto LABEL_22;
  }

  if (!a2)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(a1 + 48) treatmentId];
      v25 = [*(a1 + 48) experiment];
      v26 = [v25 shortDesc];
      *buf = 138412802;
      v32 = v24;
      v33 = 2114;
      v34 = v26;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Error fetching assets for treatment %@ of experiment %{public}@: %{public}@", buf, 0x20u);
    }

    v13[2](v13, 1);
    *(*(*(a1 + 64) + 8) + 24) = 3;
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 48) treatmentId];
      v17 = [*(a1 + 48) experiment];
      v18 = [v17 shortDesc];
      *buf = 138412546;
      v32 = v16;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Cancelled fetch of assets for treatment %@ of experiment %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 4;
  }

LABEL_22:
  dispatch_semaphore_signal(*(a1 + 56));
}

void __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) namespaces];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 name];
          *buf = 138543362;
          v21 = v10;
          _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "notify namespace download failed: %{public}@", buf, 0xCu);
        }

        v11 = MEMORY[0x277D73788];
        v12 = [v8 name];
        [v11 updateStatusFetchSuccess:0 forNamespaceName:v12 withContext:*(a1 + 40)];

        v13 = MEMORY[0x277D73698];
        v14 = [v8 name];
        [v13 notifyDownloadFailedForKey:v14 withError:a2];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

- (id)_nextTasksForRunStatusFailureWithDeactivationReason:(unint64_t)reason
{
  v13[1] = *MEMORY[0x277D85DE8];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment experimentId];
  experiment2 = [(TRIExperimentBaseTask *)self experiment];
  deploymentId = [experiment2 deploymentId];
  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  v10 = [TRIDeactivateTreatmentTask taskWithExperimentId:experimentId deploymentId:deploymentId failOnUnrecognizedExperiment:0 triggerEvent:reason taskAttribution:taskAttributing];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  return v11;
}

- (void)_addMetricForFetchTreatmentTaskError:(int)error
{
  v4 = MEMORY[0x277D73B40];
  v5 = fetchTaskErrorAsString(error);
  v6 = [v4 metricWithName:@"fetchtreatmenttask_error" categoricalValue:v5];

  [(TRIExperimentBaseTask *)self addMetric:v6];
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v210 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v149 = contextCopy;
  keyValueStore = [contextCopy keyValueStore];
  v146 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

  experimentDatabase = [contextCopy experimentDatabase];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  v148 = [experimentDatabase experimentRecordWithExperimentDeployment:experiment];

  if (v148)
  {
    v145 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:contextCopy];
    paths = [contextCopy paths];
    if (!paths)
    {
      v78 = TRILogCategory_Server();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        identifier = [v145 identifier];
        *buf = 138543362;
        v201 = identifier;
        _os_log_error_impl(&dword_26F567000, v78, OS_LOG_TYPE_ERROR, "Unable to fetch treatment into missing app container: %{public}@", buf, 0xCu);
      }

      [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:2];
      experiment2 = [(TRIExperimentBaseTask *)self experiment];
      experimentId = [experiment2 experimentId];
      treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
      experiment3 = [(TRIExperimentBaseTask *)self experiment];
      +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, experimentId, treatmentId, [experiment3 deploymentId], v148, 0, contextCopy);

      v140 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:21];
      v142 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v140 earliestRetryDate:0];
      goto LABEL_101;
    }

    namespaceDatabase = [contextCopy namespaceDatabase];
    paths2 = [contextCopy paths];
    namespaceDescriptorsDefaultDir = [paths2 namespaceDescriptorsDefaultDir];
    v140 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

    v190 = 0;
    v191 = &v190;
    v192 = 0x3032000000;
    v193 = __Block_byref_object_copy__53;
    v194 = __Block_byref_object_dispose__53;
    taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
    applicationBundleIdentifier = [taskAttributing applicationBundleIdentifier];

    v184 = 0;
    v185 = &v184;
    v186 = 0x3032000000;
    v187 = __Block_byref_object_copy__53;
    v188 = __Block_byref_object_dispose__53;
    v189 = 0;
    v180 = 0;
    v181 = &v180;
    v182 = 0x2020000000;
    v183 = 0;
    v15 = objc_autoreleasePoolPush();
    artifact = [v148 artifact];
    namespaces = [artifact namespaces];
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke;
    v174[3] = &unk_279DE4B68;
    v18 = paths;
    v177 = &v184;
    v178 = &v190;
    v175 = v18;
    selfCopy = self;
    v179 = &v180;
    [namespaces enumerateObjectsUsingBlock:v174];

    objc_autoreleasePoolPop(v15);
    taskAttributing2 = [(TRITreatmentBaseTask *)self taskAttributing];
    triCloudKitContainer = [taskAttributing2 triCloudKitContainer];
    taskAttributing3 = [(TRITreatmentBaseTask *)self taskAttributing];
    teamIdentifier = [taskAttributing3 teamIdentifier];
    v139 = [TRICKNativeArtifactProvider providerForContainer:triCloudKitContainer teamId:teamIdentifier bundleId:v191[5] dateProvider:v146 namespaceDescriptorProvider:v140 serverContext:v149];

    taskAttributing4 = [(TRITreatmentBaseTask *)self taskAttributing];
    networkOptions = [taskAttributing4 networkOptions];

    if ([networkOptions allowsCellularAccess])
    {
      v24 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(networkOptions, "allowsCellularAccess")}];
      [(TRIExperimentBaseTask *)self addMetric:v24];
    }

    if ([networkOptions discretionaryBehavior])
    {
      stateProvider = [(TRIBaseTask *)self stateProvider];
      v26 = [stateProvider activeActivityDescriptorGrantingCapability:16];
      activity = [v26 activity];
      if (activity)
      {
        [networkOptions setActivity:activity];
        v28 = [stateProvider activeActivityDescriptorGrantingCapability:1];

        allowsCellularAccess = [networkOptions allowsCellularAccess];
        if (v28)
        {
          v30 = 0;
        }

        else
        {
          v30 = allowsCellularAccess;
        }

        if (v30 != 1 || (v31 = v191[5]) != 0 && [v31 length] && (v181[3] & 1) != 0)
        {

          goto LABEL_15;
        }

        v95 = TRILogCategory_Server();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
          experimentDeployment = [v148 experimentDeployment];
          experimentId2 = [experimentDeployment experimentId];
          namespaces2 = [v148 namespaces];
          firstObject = [namespaces2 firstObject];
          name = [firstObject name];
          v130 = name;
          v131 = v191[5];
          if (*(v181 + 24))
          {
            v132 = @"YES";
          }

          else
          {
            v132 = @"NO";
          }

          *buf = 138413314;
          v201 = treatmentId2;
          v202 = 2114;
          v203 = experimentId2;
          v204 = 2114;
          v205 = name;
          v206 = 2114;
          v207 = v131;
          v208 = 2114;
          v209 = v132;
          _os_log_error_impl(&dword_26F567000, v95, OS_LOG_TYPE_ERROR, "preventing fetch of treatment %@ on cellular for experiment %{public}@ namespace %{public}@, resourceAttributionBundleIdentifier: %{public}@ expensiveNetworkingAllowed: %{public}@", buf, 0x34u);
        }

        [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:23];
        v94 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
        v142 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:0 nextTasks:v94 earliestRetryDate:0];
      }

      else
      {
        v93 = TRILogCategory_Server();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v93, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
        }

        [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:3];
        v94 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
        v142 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v94 earliestRetryDate:0];
      }

LABEL_100:
      _Block_object_dispose(&v180, 8);
      _Block_object_dispose(&v184, 8);

      _Block_object_dispose(&v190, 8);
LABEL_101:

      goto LABEL_102;
    }

LABEL_15:
    v172 = 0;
    v173 = 0;
    v171 = 0;
    v170 = [(TRIFetchTreatmentTask *)self _fetchTreatmentWithArtifactProvider:v139 experimentRecord:v148 downloadOptions:networkOptions context:v149 treatment:&v172 recordId:&v173 treatmentFetchError:&v171];
    if ([v170 runStatus] != 2)
    {
      if (v171)
      {
        self->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:?];
        v83 = TRIFetchErrorParseToMetrics(v171);
        if ([v83 count])
        {
          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v84 = v83;
          v85 = [v84 countByEnumeratingWithState:&v166 objects:v199 count:16];
          if (v85)
          {
            v86 = *v167;
            do
            {
              for (i = 0; i != v85; ++i)
              {
                if (*v167 != v86)
                {
                  objc_enumerationMutation(v84);
                }

                [(TRIExperimentBaseTask *)self addMetric:*(*(&v166 + 1) + 8 * i)];
              }

              v85 = [v84 countByEnumeratingWithState:&v166 objects:v199 count:16];
            }

            while (v85);
          }
        }
      }

      if ([v170 runStatus] == 3)
      {
        experiment4 = [(TRIExperimentBaseTask *)self experiment];
        experimentId3 = [experiment4 experimentId];
        treatmentId3 = [(TRITreatmentBaseTask *)self treatmentId];
        experiment5 = [(TRIExperimentBaseTask *)self experiment];
        +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, experimentId3, treatmentId3, [experiment5 deploymentId], v148, 0, v149);
      }

      v92 = v170;
      v142 = v92;
      goto LABEL_99;
    }

    if (!v172)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"treatment"}];
    }

    if (!v173)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:725 description:{@"Invalid parameter not satisfying: %@", @"treatmentRecordId"}];
    }

    v137 = objc_opt_new();
    v32 = [[TRIAssetStore alloc] initWithPaths:v18];
    v33 = v172;
    v34 = v185[5];
    keyValueStore2 = [v149 keyValueStore];
    v36 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:keyValueStore2];
    v37 = [TRIClientFactorPackUtils aliasesInNamespace:v185[5]];
    v138 = [v33 requiredAssetsForInstallationForNamespace:v34 assetStore:v32 maProvider:v137 subscriptionSettings:v36 aliasToUnaliasMap:v37];

    if (!v138)
    {
      [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:5];
      experiment6 = [(TRIExperimentBaseTask *)self experiment];
      experimentId4 = [experiment6 experimentId];
      treatmentId4 = [(TRITreatmentBaseTask *)self treatmentId];
      experiment7 = [(TRIExperimentBaseTask *)self experiment];
      +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, experimentId4, treatmentId4, [experiment7 deploymentId], v148, 0, v149);

      v100 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:22];
      v142 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v100 earliestRetryDate:0];
LABEL_98:

      v92 = v170;
LABEL_99:

      goto LABEL_100;
    }

    v38 = TRILogCategory_Server();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      cloudKit = [v138 cloudKit];
      v40 = [cloudKit count];
      mobileAsset = [v138 mobileAsset];
      v42 = [mobileAsset count];
      treatmentId5 = [(TRITreatmentBaseTask *)self treatmentId];
      *buf = 134218498;
      v201 = v40;
      v202 = 2048;
      v203 = v42;
      v204 = 2114;
      v205 = treatmentId5;
      _os_log_impl(&dword_26F567000, v38, OS_LOG_TYPE_DEFAULT, "Found %lu required CK assets and %lu required MA assets for treatment %{public}@", buf, 0x20u);
    }

    v44 = objc_opt_new();
    cloudKit2 = [v138 cloudKit];
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke_397;
    v163[3] = &unk_279DE4B90;
    v163[4] = self;
    v136 = v44;
    v164 = v136;
    v165 = a2;
    [cloudKit2 enumerateObjectsUsingBlock:v163];

    v46 = TRILogCategory_Server();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      treatmentId6 = [(TRITreatmentBaseTask *)self treatmentId];
      experiment8 = [(TRIExperimentBaseTask *)self experiment];
      shortDesc = [experiment8 shortDesc];
      v50 = [v136 count];
      *buf = 138412802;
      v201 = treatmentId6;
      v202 = 2114;
      v203 = shortDesc;
      v204 = 2048;
      v205 = v50;
      _os_log_impl(&dword_26F567000, v46, OS_LOG_TYPE_DEFAULT, "Treatment %@ of experiment %{public}@ references %tu assets which are required for enrollment and are not already on disk.", buf, 0x20u);
    }

    v162 = 0;
    v51 = v171;
    v171 = 0;

    v52 = [(TRIFetchTreatmentTask *)self _fetchAssetsWithArtifactProvider:v139 recordId:v173 experimentRecord:v148 assetIndexes:v136 downloadOptions:networkOptions context:v149 assetURLs:&v162 treatmentFetchError:&v171];
    v53 = v170;
    v170 = v52;

    if ([v170 runStatus] == 2)
    {
      if (!v162)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:782 description:{@"Invalid parameter not satisfying: %@", @"assetURLs"}];
      }

      v54 = v171;
      v171 = 0;

      mobileAsset2 = [v138 mobileAsset];
      namespaces3 = [v148 namespaces];
      firstObject2 = [namespaces3 firstObject];
      name2 = [firstObject2 name];
      v59 = [(TRIFetchTreatmentTask *)self _downloadAndSaveMAAssets:mobileAsset2 options:networkOptions downloadNotificationKey:name2 context:v149 errorResult:&v170 fetchError:&v171];

      if (v59 && [v170 runStatus] == 2)
      {
        v142 = [(TRIFetchTreatmentTask *)self _saveTreatment:v172 experimentRecord:v148 assetURLs:v162 assetMetadata:v138 context:v149 paths:v18 downloadOptions:networkOptions];
        if ([v142 runStatus] == 2)
        {
          [v162 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_40];
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          namespaces4 = [v148 namespaces];
          v61 = [namespaces4 countByEnumeratingWithState:&v150 objects:v196 count:16];
          if (v61)
          {
            v62 = *v151;
            do
            {
              for (j = 0; j != v61; ++j)
              {
                if (*v151 != v62)
                {
                  objc_enumerationMutation(namespaces4);
                }

                v64 = *(*(&v150 + 1) + 8 * j);
                v65 = TRILogCategory_Server();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  name3 = [v64 name];
                  *buf = 138543362;
                  v201 = name3;
                  _os_log_impl(&dword_26F567000, v65, OS_LOG_TYPE_DEFAULT, "notify namespace download completed: %{public}@", buf, 0xCu);
                }

                v67 = MEMORY[0x277D73698];
                name4 = [v64 name];
                [v67 notifyDownloadCompletedForKey:name4];
              }

              v61 = [namespaces4 countByEnumeratingWithState:&v150 objects:v196 count:16];
            }

            while (v61);
          }

          experiment9 = [(TRIExperimentBaseTask *)self experiment];
          experimentId5 = [experiment9 experimentId];
          treatmentId7 = [(TRITreatmentBaseTask *)self treatmentId];
          experiment10 = [(TRIExperimentBaseTask *)self experiment];
          +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 4, experimentId5, treatmentId7, [experiment10 deploymentId], v148, 0, v149);
          goto LABEL_107;
        }

        if ([v142 runStatus] == 3)
        {
          experiment9 = [(TRIExperimentBaseTask *)self experiment];
          experimentId5 = [experiment9 experimentId];
          treatmentId7 = [(TRITreatmentBaseTask *)self treatmentId];
          experiment10 = [(TRIExperimentBaseTask *)self experiment];
          +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, experimentId5, treatmentId7, [experiment10 deploymentId], v148, 0, v149);
LABEL_107:
        }

LABEL_97:

        v100 = v136;
        goto LABEL_98;
      }

      if (v171)
      {
        v110 = TRIFetchErrorParseToMetrics(v171);
        if ([v110 count])
        {
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v111 = v110;
          v112 = [v111 countByEnumeratingWithState:&v154 objects:v197 count:16];
          if (v112)
          {
            v113 = *v155;
            do
            {
              for (k = 0; k != v112; ++k)
              {
                if (*v155 != v113)
                {
                  objc_enumerationMutation(v111);
                }

                [(TRIExperimentBaseTask *)self addMetric:*(*(&v154 + 1) + 8 * k)];
              }

              v112 = [v111 countByEnumeratingWithState:&v154 objects:v197 count:16];
            }

            while (v112);
          }
        }
      }

      v115 = TRILogCategory_Server();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v201 = v171;
        _os_log_error_impl(&dword_26F567000, v115, OS_LOG_TYPE_ERROR, "Failed to download MA treatment assets: %@", buf, 0xCu);
      }

      if ([v170 runStatus] == 3)
      {
        experiment11 = [(TRIExperimentBaseTask *)self experiment];
        experimentId6 = [experiment11 experimentId];
        treatmentId8 = [(TRITreatmentBaseTask *)self treatmentId];
        experiment12 = [(TRIExperimentBaseTask *)self experiment];
        +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, experimentId6, treatmentId8, [experiment12 deploymentId], v148, 0, v149);
      }
    }

    else
    {
      if (v171)
      {
        v101 = TRIFetchErrorParseToMetrics(v171);
        if ([v101 count])
        {
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v102 = v101;
          v103 = [v102 countByEnumeratingWithState:&v158 objects:v198 count:16];
          if (v103)
          {
            v104 = *v159;
            do
            {
              for (m = 0; m != v103; ++m)
              {
                if (*v159 != v104)
                {
                  objc_enumerationMutation(v102);
                }

                [(TRIExperimentBaseTask *)self addMetric:*(*(&v158 + 1) + 8 * m)];
              }

              v103 = [v102 countByEnumeratingWithState:&v158 objects:v198 count:16];
            }

            while (v103);
          }
        }
      }

      if ([v170 runStatus] == 3)
      {
        experiment13 = [(TRIExperimentBaseTask *)self experiment];
        experimentId7 = [experiment13 experimentId];
        treatmentId9 = [(TRITreatmentBaseTask *)self treatmentId];
        experiment14 = [(TRIExperimentBaseTask *)self experiment];
        +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, experimentId7, treatmentId9, [experiment14 deploymentId], v148, 0, v149);
      }
    }

    v142 = v170;
    goto LABEL_97;
  }

  v73 = TRILogCategory_Server();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    experiment15 = [(TRIExperimentBaseTask *)self experiment];
    shortDesc2 = [experiment15 shortDesc];
    treatmentId10 = [(TRITreatmentBaseTask *)self treatmentId];
    *buf = 138543618;
    v201 = shortDesc2;
    v202 = 2112;
    v203 = treatmentId10;
    _os_log_error_impl(&dword_26F567000, v73, OS_LOG_TYPE_ERROR, "Unable to look up experiment %{public}@ associated with treatment %@.", buf, 0x16u);
  }

  [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:2];
  experiment16 = [(TRIExperimentBaseTask *)self experiment];
  experimentId8 = [experiment16 experimentId];
  treatmentId11 = [(TRITreatmentBaseTask *)self treatmentId];
  experiment17 = [(TRIExperimentBaseTask *)self experiment];
  +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, experimentId8, treatmentId11, [experiment17 deploymentId], 0, 0, contextCopy);

  v145 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:3];
  v142 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:0 nextTasks:v145 earliestRetryDate:0];
LABEL_102:

  return v142;
}

void __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = MEMORY[0x277D73750];
  v9 = [*(a1 + 32) namespaceDescriptorsDefaultDir];
  v10 = [v8 loadWithNamespaceName:v7 fromDirectory:v9];

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v11 = [v10 resourceAttributionIdentifier];

  if (v11)
  {
    v12 = [v10 resourceAttributionIdentifier];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 40) treatmentId];
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v18 = 138412546;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_INFO, "attributing treatment fetch for %@ to %{public}@", &v18, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = [v10 expensiveNetworkingAllowed];
    *a4 = 1;
  }
}

void __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke_397(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) treatmentId];
    v6 = [v3 assetId];
    *buf = 138412546;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Treatment %@ requires asset %{public}@ which is not already on disk; will be downloaded.", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [v3 metadata];
  v9 = [v8 treatmentIndex];

  if (!v9)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIFetchTreatmentTask.m" lineNumber:748 description:{@"Expression was unexpectedly nil/false: %@", @"ra.metadata.treatmentIndex"}];
  }

  [v7 addIndex:{objc_msgSend(v9, "index")}];
}

void __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke_401(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0;
  v4 = *MEMORY[0x277CBE838];
  v9 = 0;
  v5 = [v3 getResourceValue:&v10 forKey:v4 error:&v9];
  v6 = v10;
  v7 = v9;
  if ((v5 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2114;
      v14 = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "failed fetching file size for url %@ error %{public}@", buf, 0x16u);
    }
  }
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment experimentId];
  [v3 setExperimentId:experimentId];

  experiment2 = [(TRIExperimentBaseTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(experiment2, "deploymentId")}];

  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  [v3 setTreatmentId:treatmentId];

  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  asPersistedTaskAttribution = [taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  [v3 setRetryCount:{-[TRIFetchTreatmentTask retryCount](self, "retryCount")}];
  asPersistedModifier = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:asPersistedModifier];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIFetchTreatmentTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:853 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v3 = [(TRIPBMessage *)TRIFetchTreatmentPersistedTask parseFromData:data error:&v41];
  v4 = v41;
  if (!v3)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_32:
      v34 = 0;
      goto LABEL_33;
    }

    *buf = 138543362;
    v43 = v4;
    v19 = "Unable to parse buffer as TRIFetchTreatmentPersistedTask: %{public}@";
    v20 = v10;
    v21 = 12;
LABEL_14:
    _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_32;
  }

  if (([v3 hasExperimentId] & 1) == 0)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138412290;
      v43 = v32;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
    }

    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138412290;
    v43 = v24;
    v25 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_31;
  }

  experimentId = [v3 experimentId];
  v6 = [experimentId length];

  if (!v6)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v26 = objc_opt_class();
    v24 = NSStringFromClass(v26);
    *buf = 138412290;
    v43 = v24;
    v25 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_31:
    _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);

    goto LABEL_32;
  }

  if (([v3 hasTreatmentId] & 1) == 0)
  {
    v27 = TRILogCategory_Server();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138412290;
      v43 = v37;
      _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: treatmentId", buf, 0xCu);
    }

    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v28 = objc_opt_class();
    v24 = NSStringFromClass(v28);
    *buf = 138412290;
    v43 = v24;
    v25 = "Cannot decode message of type %@ with missing field: treatmentId";
    goto LABEL_31;
  }

  treatmentId = [v3 treatmentId];
  v8 = [treatmentId length];

  if (!v8)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v29 = objc_opt_class();
    v24 = NSStringFromClass(v29);
    *buf = 138412290;
    v43 = v24;
    v25 = "Cannot decode message of type %@ with field of length 0: treatmentId";
    goto LABEL_31;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v30 = objc_opt_class();
    v24 = NSStringFromClass(v30);
    *buf = 138412290;
    v43 = v24;
    v25 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_31;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v33 = objc_opt_class();
    v24 = NSStringFromClass(v33);
    *buf = 138412290;
    v43 = v24;
    v25 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_31;
  }

  if ([v3 deploymentId] == -1)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v19 = "TRIFetchTreatmentPersistedTask encodes unspecified deploymentId.";
    v20 = v10;
    v21 = 2;
    goto LABEL_14;
  }

  taskAttribution = [v3 taskAttribution];
  v10 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D736C0]);
    experimentId2 = [v3 experimentId];
    v13 = [v11 initWithExperimentId:experimentId2 deploymentId:{objc_msgSend(v3, "deploymentId")}];

    if ([v3 hasCapabilityModifier])
    {
      v14 = [TRITaskCapabilityModifier alloc];
      capabilityModifier = [v3 capabilityModifier];
      v16 = [capabilityModifier add];
      capabilityModifier2 = [v3 capabilityModifier];
      v18 = -[TRITaskCapabilityModifier initWithAdd:remove:](v14, "initWithAdd:remove:", v16, [capabilityModifier2 remove]);
    }

    else
    {
      v18 = objc_opt_new();
    }

    v38 = objc_opt_class();
    treatmentId2 = [v3 treatmentId];
    v34 = [v38 taskWithExperiment:v13 treatmentId:treatmentId2 taskAttributing:v10 capabilityModifier:v18];

    if ([v3 hasRetryCount])
    {
      retryCount = [v3 retryCount];
    }

    else
    {
      retryCount = 0;
    }

    [v34 setRetryCount:retryCount];
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v34 = 0;
  }

LABEL_33:

  return v34;
}

- (unint64_t)requiredCapabilities
{
  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  networkOptions = [taskAttributing networkOptions];
  requiredCapability = [networkOptions requiredCapability];
  v9.receiver = self;
  v9.super_class = TRIFetchTreatmentTask;
  v6 = [(TRIBaseTask *)&v9 requiredCapabilities]| requiredCapability;
  v7 = v6 | (4 * ([(TRIFetchTreatmentTask *)self retryCount]> 0));

  return [(TRITaskCapabilityModifier *)self->_capabilityModifier updateCapability:v7];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  shortDesc = [experiment shortDesc];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  applicationBundleIdentifier = [taskAttributing applicationBundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@:%@, %@, %@, r:%d>", v4, shortDesc, treatmentId, applicationBundleIdentifier, -[TRIFetchTreatmentTask retryCount](self, "retryCount")];

  return v10;
}

- (TRIFetchTreatmentTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIFetchTreatmentTask;
  v5 = [(TRIFetchTreatmentTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:907 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIFetchTreatmentTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end