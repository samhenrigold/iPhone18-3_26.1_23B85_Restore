@interface TRIActivateTreatmentBaseTask
- (BOOL)_experimentRecord:(id)record hasConflictWithExperimentsInDatabase:(id)database conflictEndTime:(id *)time;
- (BOOL)_writeNamespaceDescriptorsWithPaths:(id)paths toTreatmentLayer:(unint64_t)layer forExperiment:(id)experiment treatmentURLs:(id)ls context:(id)context;
- (BOOL)isEqual:(id)equal;
- (TRIActivateTreatmentBaseTask)initWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing requiresTreatmentInstallation:(BOOL)installation;
- (id)_nextTasksForRunStatus:(int)status;
- (id)runTaskUsingContext:(id)context;
- (id)runTaskUsingContext:(id)context experiment:(id)experiment;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (unint64_t)hash;
- (void)runDequeueHandlerUsingContext:(id)context;
- (void)runEnqueueHandlerUsingContext:(id)context;
@end

@implementation TRIActivateTreatmentBaseTask

- (TRIActivateTreatmentBaseTask)initWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing requiresTreatmentInstallation:(BOOL)installation
{
  v8.receiver = self;
  v8.super_class = TRIActivateTreatmentBaseTask;
  result = [(TRITreatmentBaseTask *)&v8 initWithExperiment:experiment treatmentId:id taskAttributing:attributing];
  if (result)
  {
    result->_requiresTreatmentInstallation = installation;
  }

  return result;
}

- (void)runEnqueueHandlerUsingContext:(id)context
{
  contextCopy = context;
  experiment = [(TRIExperimentBaseTask *)self experiment];
  v6 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:experiment];

  contentTracker = [contextCopy contentTracker];
  [contentTracker addRefWithContentIdentifier:v6];

  v11 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:contextCopy];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  v9 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:treatmentId container:v11];

  contentTracker2 = [contextCopy contentTracker];

  [contentTracker2 addRefWithContentIdentifier:v9];
}

- (void)runDequeueHandlerUsingContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:contextCopy];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  v7 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:treatmentId container:v5];

  contentTracker = [contextCopy contentTracker];
  v9 = [contentTracker dropRefWithContentIdentifier:v7];

  if ((v9 & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
      v19 = 138412290;
      v20 = treatmentId2;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for treatment %@.", &v19, 0xCu);
    }
  }

  experiment = [(TRIExperimentBaseTask *)self experiment];
  v12 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:experiment];

  contentTracker2 = [contextCopy contentTracker];
  v14 = [contentTracker2 dropRefWithContentIdentifier:v12];

  if ((v14 & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      experiment2 = [(TRIExperimentBaseTask *)self experiment];
      shortDesc = [experiment2 shortDesc];
      v19 = 138543362;
      v20 = shortDesc;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for experiment %{public}@.", &v19, 0xCu);
    }
  }
}

- (BOOL)_experimentRecord:(id)record hasConflictWithExperimentsInDatabase:(id)database conflictEndTime:(id *)time
{
  v80 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  databaseCopy = database;
  namespaces = [recordCopy namespaces];
  v12 = objc_opt_new();
  v13 = [namespaces _pas_leftFoldWithInitialObject:v12 accumulate:&__block_literal_global_37];

  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__43;
  v66 = __Block_byref_object_dispose__43;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__43;
  v60 = __Block_byref_object_dispose__43;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__43;
  v54 = __Block_byref_object_dispose__43;
  v55 = 0;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_39;
  v41[3] = &unk_279DE3B10;
  v14 = recordCopy;
  v42 = v14;
  v45 = &v62;
  v15 = v13;
  v46 = &v68;
  v47 = &v56;
  v48 = &v50;
  v49 = a2;
  v43 = v15;
  selfCopy = self;
  v16 = MEMORY[0x2743948D0](v41);
  v17 = objc_autoreleasePoolPush();
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_287FC4C78, &unk_287FC4C90, 0}];
  objc_autoreleasePoolPop(v17);
  if (([databaseCopy enumerateExperimentRecordsMatchingStatuses:v18 block:v16] & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      experimentDeployment = [v14 experimentDeployment];
      shortDesc = [experimentDeployment shortDesc];
      *buf = 138543362;
      v73 = shortDesc;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "unable to check if treatment can be activated for %{public}@", buf, 0xCu);
    }

    v22 = [MEMORY[0x277CBEAA8] now];
    goto LABEL_13;
  }

  if (*(v69 + 24) != 1)
  {
    v23 = 0;
    goto LABEL_16;
  }

  if (!v57[5])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentBaseTask.m" lineNumber:169 description:@"detected a conflict but experiment id is nil"];
  }

  if (!v51[5])
  {
    v25 = *time;
    *time = 0;

    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      treatmentId = [v14 treatmentId];
      experimentDeployment2 = [v14 experimentDeployment];
      shortDesc2 = [experimentDeployment2 shortDesc];
      firstObject = [v63[5] firstObject];
      name = [firstObject name];
      v29 = v57[5];
      *buf = 138413058;
      v73 = treatmentId;
      v74 = 2114;
      v75 = shortDesc2;
      v76 = 2114;
      v77 = name;
      v78 = 2114;
      v79 = v29;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for %{public}@: namespace %{public}@ is currently used in experiment %{public}@ which has no end date", buf, 0x2Au);
    }

    goto LABEL_14;
  }

  v19 = TRILogCategory_Server();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    treatmentId2 = [v14 treatmentId];
    experimentDeployment3 = [v14 experimentDeployment];
    shortDesc3 = [experimentDeployment3 shortDesc];
    firstObject2 = [v63[5] firstObject];
    name2 = [firstObject2 name];
    shortDesc4 = [v57[5] shortDesc];
    *buf = 138413058;
    v73 = treatmentId2;
    v74 = 2114;
    v75 = shortDesc3;
    v76 = 2114;
    v77 = name2;
    v78 = 2112;
    v79 = shortDesc4;
    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: namespace %{public}@ is currently used in experiment %@", buf, 0x2Au);
  }

  if ([v14 type] != 1)
  {
    v22 = v51[5];
LABEL_13:
    v20 = *time;
    *time = v22;
    goto LABEL_14;
  }

  v20 = *time;
  *time = 0;
LABEL_14:

  v23 = 1;
LABEL_16:

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  return v23;
}

id __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 name];
  [v4 addObject:v5];

  return v4;
}

void __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_39(uint64_t a1, void *a2, _BYTE *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 experimentDeployment];
  v7 = [v6 experimentId];
  v8 = [*(a1 + 32) experimentDeployment];
  v9 = [v8 experimentId];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v5 namespaces];

    if (v11)
    {
      v12 = [v5 namespaces];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_40;
      v40[3] = &unk_279DE0E60;
      v41 = *(a1 + 40);
      v13 = [v12 _pas_filteredArrayWithTest:v40];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if ([*(*(*(a1 + 56) + 8) + 40) count] && objc_msgSend(v5, "type") == 1 && objc_msgSend(v5, "status") == 1 && objc_msgSend(v5, "experimentType") != 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
        v16 = [v5 endDate];

        if (v16)
        {
          v17 = *(*(*(a1 + 80) + 8) + 40);
          if (!v17 || ([v5 endDate], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "compare:", v18), v18, v19 == -1))
          {
            v24 = [v5 experimentDeployment];
            v25 = *(*(a1 + 72) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;

            v27 = [v5 endDate];
            v28 = *(*(a1 + 80) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = v27;
          }

          else if (!*(*(*(a1 + 80) + 8) + 40))
          {
            v20 = [MEMORY[0x277CCA890] currentHandler];
            [v20 handleFailureInMethod:*(a1 + 88) object:*(a1 + 48) file:@"TRIActivateTreatmentBaseTask.m" lineNumber:150 description:@"expected end date of conflicting experiment to be non-nil here"];
          }
        }

        else
        {
          v30 = TRILogCategory_Server();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v36 = [v5 experimentDeployment];
            v37 = [v36 shortDesc];
            v38 = [*(a1 + 32) experimentDeployment];
            v39 = [v38 shortDesc];
            *buf = 138412546;
            v43 = v37;
            v44 = 2112;
            v45 = v39;
            _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "active experiment %@ has no end date, which prevents treatment for %@ from getting activated", buf, 0x16u);
          }

          v31 = [v5 experimentDeployment];
          v32 = *(*(a1 + 72) + 8);
          v33 = *(v32 + 40);
          *(v32 + 40) = v31;

          v34 = *(*(a1 + 80) + 8);
          v35 = *(v34 + 40);
          *(v34 + 40) = 0;

          *a3 = 1;
        }
      }

      v21 = v41;
    }

    else
    {
      v21 = TRILogCategory_Server();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v5 experimentDeployment];
        v23 = [v22 shortDesc];
        *buf = 138543362;
        v43 = v23;
        _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "experiment record for %{public}@ is missing namespaces", buf, 0xCu);
      }
    }
  }
}

uint64_t __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)_writeNamespaceDescriptorsWithPaths:(id)paths toTreatmentLayer:(unint64_t)layer forExperiment:(id)experiment treatmentURLs:(id)ls context:(id)context
{
  v104 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  experimentCopy = experiment;
  lsCopy = ls;
  contextCopy = context;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = MEMORY[0x277CBEB18];
  namespaces = [experimentCopy namespaces];
  v72 = [v13 arrayWithCapacity:{objc_msgSend(namespaces, "count")}];

  v15 = MEMORY[0x277CBEB18];
  namespaces2 = [experimentCopy namespaces];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(namespaces2, "count")}];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v70 = experimentCopy;
  namespaces3 = [experimentCopy namespaces];
  v19 = [namespaces3 countByEnumeratingWithState:&v91 objects:v103 count:16];
  v20 = v19 == 0;
  if (v19)
  {
    v21 = v19;
    selfCopy = self;
    v68 = a2;
    v69 = v19 == 0;
    v22 = *v92;
    v84 = 1;
    v23 = pathsCopy;
    v73 = *v92;
    while (2)
    {
      v24 = 0;
      v80 = v21;
      do
      {
        if (*v92 != v22)
        {
          objc_enumerationMutation(namespaces3);
        }

        v25 = *(*(&v91 + 1) + 8 * v24);
        name = [v25 name];

        if (name)
        {
          v86 = v23;
          namespaceDatabase = [contextCopy namespaceDatabase];
          name2 = [v25 name];
          v29 = [namespaceDatabase dynamicNamespaceRecordWithNamespaceName:name2];

          if (v29)
          {
            appContainer = [v29 appContainer];

            if (!v23)
            {
              if (appContainer)
              {
                v55 = TRILogCategory_Server();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  appContainer2 = [v29 appContainer];
                  identifier = [appContainer2 identifier];
                  *buf = 138543362;
                  v98 = identifier;
                  _os_log_error_impl(&dword_26F567000, v55, OS_LOG_TYPE_ERROR, "Can't write descriptor for dynamic namespace to missing container: %{public}@", buf, 0xCu);

                  v23 = pathsCopy;
                }

                goto LABEL_44;
              }
            }
          }

          v85 = v29;
          v31 = [v86 namespaceDescriptorsPathForLayer:layer];
          if (!v31)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v68 object:selfCopy file:@"TRIActivateTreatmentBaseTask.m" lineNumber:224 description:@"namespace descriptor directory is NIL"];
          }

          name3 = [v25 name];
          v33 = [lsCopy objectForKey:name3];

          if (v33)
          {
            v34 = [v33 triPathAsOwner:0];
            if (v34)
            {
              v35 = v34;
              if (([v34 isAbsolutePath]& 1) != 0)
              {
                v36 = v35;
              }

              else
              {
                containerDir = [v86 containerDir];
                if (containerDir)
                {
                  v76 = MEMORY[0x277CCACA8];
                  containerDir2 = [v86 containerDir];
                  v96[0] = containerDir2;
                  v96[1] = v35;
                  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
                  v77 = [v76 pathWithComponents:v40];

                  v23 = pathsCopy;
                  v36 = v77;
                }

                else
                {
                  v36 = v35;
                }
              }

              if ([defaultManager fileExistsAtPath:v36])
              {
                v78 = v36;
                if (v85)
                {
                  appContainer3 = [v85 appContainer];
                  cloudKitContainer = [v85 cloudKitContainer];
                }

                else
                {
                  appContainer3 = 0;
                  cloudKitContainer = 1;
                }

                v71 = appContainer3;
                v44 = objc_opt_new();
                [v44 setFactorsURL:v33];
                [v44 setAppContainer:appContainer3];
                [v44 setCloudKitContainerId:cloudKitContainer];
                v45 = objc_alloc(MEMORY[0x277D73750]);
                name4 = [v25 name];
                v47 = [v45 initWithNamespaceName:name4 downloadNCV:objc_msgSend(v25 optionalParams:{"compatibilityVersion"), v44}];

                [v72 addObject:v47];
                [v17 addObject:v31];
                v84 &= [v47 saveToDirectory:v31];

                v37 = 1;
                v23 = pathsCopy;
              }

              else
              {
                v43 = TRILogCategory_Server();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  [v70 experimentDeployment];
                  v51 = v79 = v36;
                  shortDesc = [v51 shortDesc];
                  name5 = [v25 name];
                  *buf = 138543618;
                  v98 = shortDesc;
                  v99 = 2114;
                  v100 = name5;
                  _os_log_error_impl(&dword_26F567000, v43, OS_LOG_TYPE_ERROR, "treatment file does not exist for experiment %{public}@ on namespace %{public}@", buf, 0x16u);

                  v23 = pathsCopy;
                  v36 = v79;
                }

                v37 = 0;
                v84 = 0;
              }

              v22 = v73;
            }

            else
            {
              v35 = TRILogCategory_Server();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                experimentDeployment = [v70 experimentDeployment];
                shortDesc2 = [experimentDeployment shortDesc];
                name6 = [v25 name];
                *buf = 138412802;
                v98 = v33;
                v99 = 2114;
                v100 = shortDesc2;
                v101 = 2114;
                v102 = name6;
                _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "can't resolve factorsPath for URL %@ from experiment %{public}@ on namespace %{public}@", buf, 0x20u);

                v22 = v73;
              }

              v37 = 0;
              v84 = 0;
            }

            v21 = v80;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v84 = 0;
        }

        ++v24;
      }

      while (v21 != v24);
      v21 = [namespaces3 countByEnumeratingWithState:&v91 objects:v103 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

LABEL_38:

    if (v84)
    {
      v20 = 1;
      goto LABEL_54;
    }

LABEL_44:
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    namespaces3 = v72;
    v56 = [namespaces3 countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = 0;
      v59 = *v88;
      do
      {
        v60 = 0;
        v61 = v58;
        do
        {
          if (*v88 != v59)
          {
            objc_enumerationMutation(namespaces3);
          }

          v62 = *(*(&v87 + 1) + 8 * v60);
          v58 = v61 + 1;
          v63 = [v17 objectAtIndexedSubscript:v61];
          [v62 removeFromDirectory:v63];

          ++v60;
          v61 = v58;
        }

        while (v57 != v60);
        v57 = [namespaces3 countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v57);
      v23 = pathsCopy;
    }

    v20 = v69;
  }

  else
  {
    v23 = pathsCopy;
  }

LABEL_54:
  return v20;
}

- (id)runTaskUsingContext:(id)context experiment:(id)experiment
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentBaseTask.m" lineNumber:278 description:@"method not implemented"];

  v7 = MEMORY[0x277CBEBF8];

  return [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v7 earliestRetryDate:0];
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v23[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v9 = objc_autoreleasePoolPush();
  v10 = os_transaction_create();
  if (([(TRIActivateTreatmentBaseTask *)self conformsToProtocol:&unk_287FD33B8]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentBaseTask.m" lineNumber:289 description:{@"TRIActivateTreatmentBaseTask subclass of type %@ is not a TRITask", v21}];
  }

  experiment = [(TRIExperimentBaseTask *)self experiment];
  taskTag = [experiment taskTag];
  v23[0] = self;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [queueCopy cancelTasksWithTag:taskTag excludingTasks:v13];

  experiment2 = [(TRIExperimentBaseTask *)self experiment];
  experimentId = [experiment2 experimentId];
  selfCopy = self;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
  [queueCopy cancelTasksWithTag:experimentId excludingTasks:v16];

  v17 = [(TRIActivateTreatmentBaseTask *)self runTaskUsingContext:contextCopy];

  objc_autoreleasePoolPop(v9);

  return v17;
}

- (id)_nextTasksForRunStatus:(int)status
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (status == 3)
  {
    experiment = [(TRIExperimentBaseTask *)self experiment];
    experimentId = [experiment experimentId];
    experiment2 = [(TRIExperimentBaseTask *)self experiment];
    v7 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", experimentId, [experiment2 deploymentId], 0, 23, 0);
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)runTaskUsingContext:(id)context
{
  v63 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  experimentDatabase = [contextCopy experimentDatabase];
  experiment = [(TRIExperimentBaseTask *)self experiment];
  v7 = [experimentDatabase experimentRecordWithExperimentDeployment:experiment];

  if (!v7)
  {
    v28 = TRILogCategory_Server();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "failed to retrieve experiment record from database", buf, 2u);
    }

    v7 = [(TRIActivateTreatmentBaseTask *)self _nextTasksForRunStatus:1];
    v29 = 1;
    v30 = v7;
    goto LABEL_24;
  }

  v8 = objc_opt_new();
  v9 = TRIDeploymentEnvironment_EnumDescriptor();
  v10 = [v9 textFormatNameForValue:{objc_msgSend(v7, "deploymentEnvironment")}];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(v7, "deploymentEnvironment")];
  }

  [v8 setClientDeploymentEnv:v10];
  [(TRIExperimentBaseTask *)self mergeTelemetry:v8];

  treatmentId = [v7 treatmentId];
  if (!treatmentId || (v12 = treatmentId, -[TRITreatmentBaseTask treatmentId](self, "treatmentId"), v13 = objc_claimAutoreleasedReturnValue(), [v7 treatmentId], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, v12, (v15 & 1) == 0))
  {
    treatmentId2 = [v7 treatmentId];

    if (treatmentId2)
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        experimentDeployment = [v7 experimentDeployment];
        shortDesc = [experimentDeployment shortDesc];
        treatmentId3 = [v7 treatmentId];
        treatmentId4 = [(TRITreatmentBaseTask *)self treatmentId];
        *buf = 138543874;
        *&buf[4] = shortDesc;
        v59 = 2112;
        v60 = treatmentId3;
        v61 = 2112;
        v62 = treatmentId4;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "experiment %{public}@ already has treatment %@ assigned.  Overwriting with treatment %@", buf, 0x20u);
      }
    }

    experimentDatabase2 = [contextCopy experimentDatabase];
    treatmentId5 = [(TRITreatmentBaseTask *)self treatmentId];
    experimentDeployment2 = [v7 experimentDeployment];
    v21 = [experimentDatabase2 setTreatmentId:treatmentId5 forExperimentDeployment:experimentDeployment2 usingTransaction:0];

    if (!v21)
    {
      v30 = MEMORY[0x277CBEBF8];
      v29 = 1;
LABEL_24:
      v35 = [TRITaskRunResult resultWithRunStatus:v29 reportResultToServer:1 nextTasks:v30 earliestRetryDate:0];
      goto LABEL_25;
    }

    treatmentId6 = [(TRITreatmentBaseTask *)self treatmentId];
    v23 = [v7 copyWithReplacementTreatmentId:treatmentId6];

    v7 = v23;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v26 = v25;

  endTime = [(TRIActivateTreatmentBaseTask *)self endTime];
  if (endTime)
  {
    [(TRIActivateTreatmentBaseTask *)self endTime];
  }

  else
  {
    [v7 endDate];
  }
  v31 = ;
  [v31 timeIntervalSince1970];
  v33 = v32;

  if (v33 > 0.0 && v33 <= v26)
  {
    v34 = TRILogCategory_Server();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      treatmentId7 = [(TRITreatmentBaseTask *)self treatmentId];
      experiment2 = [(TRIExperimentBaseTask *)self experiment];
      shortDesc2 = [experiment2 shortDesc];
      endDate = [v7 endDate];
      *buf = 138412802;
      *&buf[4] = treatmentId7;
      v59 = 2114;
      v60 = shortDesc2;
      v61 = 2112;
      v62 = endDate;
      _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: end time %@ is in the past", buf, 0x20u);
    }

    v30 = MEMORY[0x277CBEBF8];
    v29 = 3;
    goto LABEL_24;
  }

  startDate = [v7 startDate];
  [startDate timeIntervalSince1970];
  v39 = v38;

  if (v39 <= 0.0 || v39 <= v26)
  {
    *buf = 0;
    experimentDatabase3 = [contextCopy experimentDatabase];
    v43 = [(TRIActivateTreatmentBaseTask *)self _experimentRecord:v7 hasConflictWithExperimentsInDatabase:experimentDatabase3 conflictEndTime:buf];

    if (v43)
    {
      if (*buf)
      {
        v44 = 1;
      }

      else
      {
        v44 = 3;
      }

      v45 = [(TRIActivateTreatmentBaseTask *)self _nextTasksForRunStatus:v44];
      v35 = [TRITaskRunResult resultWithRunStatus:v44 reportResultToServer:1 nextTasks:v45 earliestRetryDate:*buf];
    }

    else
    {
      v35 = [(TRIActivateTreatmentBaseTask *)self runTaskUsingContext:contextCopy experiment:v7];
    }
  }

  else
  {
    v40 = TRILogCategory_Server();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      treatmentId8 = [(TRITreatmentBaseTask *)self treatmentId];
      experiment3 = [(TRIExperimentBaseTask *)self experiment];
      shortDesc3 = [experiment3 shortDesc];
      startDate2 = [v7 startDate];
      *buf = 138412802;
      *&buf[4] = treatmentId8;
      v59 = 2114;
      v60 = shortDesc3;
      v61 = 2112;
      v62 = startDate2;
      _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: start time %@ is in the future", buf, 0x20u);
    }

    startDate3 = [v7 startDate];
    v35 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:startDate3];
  }

LABEL_25:

  return v35;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TRIActivateTreatmentBaseTask;
  return self->_requiresTreatmentInstallation + 37 * [(TRITreatmentBaseTask *)&v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TRIActivateTreatmentBaseTask;
    v5 = [(TRITreatmentBaseTask *)&v8 isEqual:equalCopy];
    v6 = 0;
    if (equalCopy && v5)
    {
      objc_opt_class();
      v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_requiresTreatmentInstallation == equalCopy->_requiresTreatmentInstallation;
    }
  }

  return v6;
}

@end