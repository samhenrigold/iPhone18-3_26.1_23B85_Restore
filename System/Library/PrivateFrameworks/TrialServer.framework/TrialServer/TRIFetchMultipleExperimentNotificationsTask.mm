@interface TRIFetchMultipleExperimentNotificationsTask
+ (id)parseFromData:(id)data;
+ (id)taskWithStartingFetchDateOverride:(id)override namespaceNames:(id)names taskAttributing:(id)attributing rollbacksOnly:(BOOL)only limitedCarryOnly:(BOOL)carryOnly;
- (BOOL)_checkIfAnyTreatmentPresent:(id)present usingContext:(id)context;
- (BOOL)_processExperiment:(id)experiment taskContext:(id)context taskQueue:(id)queue;
- (BOOL)isEqual:(id)equal;
- (NSArray)tags;
- (TRIFetchMultipleExperimentNotificationsTask)initWithCoder:(id)coder;
- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)override container:(int)container team:(id)team rollbacksOnly:(BOOL)only withNamespaceNames:(id)names;
- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)override namespaceNames:(id)names taskAttributing:(id)attributing rollbacksOnly:(BOOL)only limitedCarryOnly:(BOOL)carryOnly;
- (id)_asPersistedTask;
- (id)_getNextTaskForExperiment:(id)experiment taskContext:(id)context taskQueue:(id)queue;
- (id)_nameForNotificationType:(int)type;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addDimension:(id)dimension;
- (void)_addMetric:(id)metric;
- (void)encodeWithCoder:(id)coder;
- (void)updateStatusForNamespacesWithContext:(id)context;
@end

@implementation TRIFetchMultipleExperimentNotificationsTask

- (NSArray)tags
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v9.receiver = self;
  v9.super_class = TRIFetchMultipleExperimentNotificationsTask;
  tags = [(TRIBaseTask *)&v9 tags];
  v5 = tags;
  if (tags)
  {
    v6 = tags;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v3 initWithArray:v6];

  if (self->_rollbacksOnly)
  {
    [v7 addObject:@"rollbacksOnly"];
  }

  [TRITaskUtils addAttribution:self->_taskAttributing toTaskTags:v7];

  return v7;
}

+ (id)taskWithStartingFetchDateOverride:(id)override namespaceNames:(id)names taskAttributing:(id)attributing rollbacksOnly:(BOOL)only limitedCarryOnly:(BOOL)carryOnly
{
  carryOnlyCopy = carryOnly;
  onlyCopy = only;
  attributingCopy = attributing;
  namesCopy = names;
  overrideCopy = override;
  v14 = [[TRIFetchMultipleExperimentNotificationsTask alloc] initWithStartingFetchDateOverride:overrideCopy namespaceNames:namesCopy taskAttributing:attributingCopy rollbacksOnly:onlyCopy limitedCarryOnly:carryOnlyCopy];

  return v14;
}

- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)override namespaceNames:(id)names taskAttributing:(id)attributing rollbacksOnly:(BOOL)only limitedCarryOnly:(BOOL)carryOnly
{
  overrideCopy = override;
  namesCopy = names;
  attributingCopy = attributing;
  v21.receiver = self;
  v21.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v16 = [(TRIFetchMultipleExperimentNotificationsTask *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_startingFetchDateOverride, override);
    v17->_rollbacksOnly = only;
    v17->_limitedCarryOnly = carryOnly;
    objc_storeStrong(&v17->_taskAttributing, attributing);
    v18 = objc_opt_new();
    nextTasks = v17->_nextTasks;
    v17->_nextTasks = v18;

    objc_storeStrong(&v17->_namespaceNames, names);
  }

  return v17;
}

- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)override container:(int)container team:(id)team rollbacksOnly:(BOOL)only withNamespaceNames:(id)names
{
  overrideCopy = override;
  namesCopy = names;
  v18.receiver = self;
  v18.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v13 = [(TRIFetchMultipleExperimentNotificationsTask *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_startingFetchDateOverride, override);
    v14->_rollbacksOnly = only;
    objc_storeStrong(&v14->_namespaceNames, names);
    v15 = objc_opt_new();
    nextTasks = v14->_nextTasks;
    v14->_nextTasks = v15;
  }

  return v14;
}

- (id)_getNextTaskForExperiment:(id)experiment taskContext:(id)context taskQueue:(id)queue
{
  *&v58[5] = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  contextCopy = context;
  queueCopy = queue;
  experimentDeployment = [experimentCopy experimentDeployment];

  if (!experimentDeployment)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"artifact.experimentDeployment"}];
  }

  experimentId = [experimentCopy experimentId];

  if (!experimentId)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"artifact.experimentId"}];
  }

  experimentDatabase = [contextCopy experimentDatabase];
  experimentType = [experimentCopy experimentType];
  v16 = 0;
  if (experimentType > 1)
  {
    if (experimentType == 2)
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        experimentDeployment2 = [experimentCopy experimentDeployment];
        experimentId2 = [experimentDeployment2 experimentId];
        *buf = 138543362;
        *v58 = experimentId2;
        _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "rolling back experiment id: %{public}@", buf, 0xCu);
      }

      experimentDeployment3 = [experimentCopy experimentDeployment];

      if (experimentDeployment3)
      {
        experimentId3 = [experimentCopy experimentId];
        [queueCopy cancelTasksWithTag:experimentId3];

        experimentDeployment4 = [experimentCopy experimentDeployment];
        taskTag = [experimentDeployment4 taskTag];

        if (!taskTag)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:179 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.experimentDeployment.taskTag"}];
        }

        [queueCopy cancelTasksWithTag:taskTag];

        experimentId4 = [experimentCopy experimentId];
        v16 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", experimentId4, [experimentCopy deploymentId], 0, 4, self->_taskAttributing);

        nextTasks = self->_nextTasks;
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __95__TRIFetchMultipleExperimentNotificationsTask__getNextTaskForExperiment_taskContext_taskQueue___block_invoke;
        v55[3] = &unk_279DE42E8;
        v56 = experimentCopy;
        v39 = [(NSMutableArray *)nextTasks _pas_filteredArrayWithTest:v55];
        v40 = [v39 mutableCopy];
        v41 = self->_nextTasks;
        self->_nextTasks = v40;

        experimentDeployment9 = v56;
        goto LABEL_26;
      }

      experimentDeployment9 = TRILogCategory_Server();
      if (!os_log_type_enabled(experimentDeployment9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v42 = "Unable to rollback because the artifact contains no deployment";
      goto LABEL_40;
    }

    if (experimentType != 3)
    {
      if (experimentType != 5)
      {
        goto LABEL_27;
      }

      experiment = [experimentCopy experiment];

      if (experiment)
      {
        experiment2 = [experimentCopy experiment];
        hasEndDate = [experiment2 hasEndDate];

        if (hasEndDate)
        {
          if ([experimentCopy experimentState])
          {
            experimentDeployment5 = [experimentCopy experimentDeployment];
            experimentDeployment9 = [experimentDatabase experimentRecordWithExperimentDeployment:experimentDeployment5];

            if (experimentDeployment9)
            {
              v54 = [[TRIExperimentUpdateProcessor alloc] initWithExperimentDatabase:experimentDatabase];
              experiment3 = [experimentCopy experiment];
              endDate = [experiment3 endDate];
              date = [endDate date];

              if (!date)
              {
                currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:222 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.experiment.endDate.date"}];
              }

              experimentDeployment6 = [experimentCopy experimentDeployment];
              v16 = [(TRIExperimentUpdateProcessor *)v54 processUpdateOperationForExistingExperimentWithEndDate:date withExperimentDeployment:experimentDeployment6];

              if (v16)
              {
                v26 = v16;
              }

              goto LABEL_26;
            }

            v47 = TRILogCategory_Server();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              experimentDeployment7 = [experimentCopy experimentDeployment];
              experimentId5 = [experimentDeployment7 experimentId];
              *buf = 138543362;
              *v58 = experimentId5;
              _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "Missing existing experiment for an experiment update, ignoring. ID: %{public}@", buf, 0xCu);
            }

            experimentDeployment9 = 0;
            goto LABEL_25;
          }

          experimentDeployment9 = TRILogCategory_Server();
          if (os_log_type_enabled(experimentDeployment9, OS_LOG_TYPE_INFO))
          {
            experimentDeployment8 = [experimentCopy experimentDeployment];
            experimentId6 = [experimentDeployment8 experimentId];
            *buf = 138543362;
            *v58 = experimentId6;
            _os_log_impl(&dword_26F567000, experimentDeployment9, OS_LOG_TYPE_INFO, "Update notification marked inactive, ignoring. ID: %{public}@", buf, 0xCu);
            goto LABEL_45;
          }
        }

        else
        {
          experimentDeployment9 = TRILogCategory_Server();
          if (os_log_type_enabled(experimentDeployment9, OS_LOG_TYPE_ERROR))
          {
            experimentDeployment8 = [experimentCopy experimentDeployment];
            experimentId6 = [experimentDeployment8 experimentId];
            *buf = 138543362;
            *v58 = experimentId6;
            _os_log_error_impl(&dword_26F567000, experimentDeployment9, OS_LOG_TYPE_ERROR, "Experiment update notification missing end date. ID: %{public}@", buf, 0xCu);
LABEL_45:
          }
        }

LABEL_25:
        v16 = 0;
        goto LABEL_26;
      }

      experimentDeployment9 = TRILogCategory_Server();
      if (!os_log_type_enabled(experimentDeployment9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v42 = "Experiment update notification missing artifact";
LABEL_40:
      _os_log_error_impl(&dword_26F567000, experimentDeployment9, OS_LOG_TYPE_ERROR, v42, buf, 2u);
      goto LABEL_25;
    }

LABEL_23:
    experimentDeployment9 = TRILogCategory_Server();
    if (os_log_type_enabled(experimentDeployment9, OS_LOG_TYPE_ERROR))
    {
      experimentType2 = [experimentCopy experimentType];
      experimentId7 = [experimentCopy experimentId];
      *buf = 67240450;
      v58[0] = experimentType2;
      LOWORD(v58[1]) = 2114;
      *(&v58[1] + 2) = experimentId7;
      _os_log_error_impl(&dword_26F567000, experimentDeployment9, OS_LOG_TYPE_ERROR, "unsupported experiment of type %{public}d for experiment id: %{public}@", buf, 0x12u);
    }

    goto LABEL_25;
  }

  if (!experimentType)
  {
    goto LABEL_23;
  }

  if (experimentType != 1)
  {
    goto LABEL_27;
  }

  v27 = TRILogCategory_Server();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    experimentId8 = [experimentCopy experimentId];
    *buf = 138543362;
    *v58 = experimentId8;
    _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "submit targeting task for experiment id: %{public}@", buf, 0xCu);
  }

  experimentDeployment9 = [experimentCopy experimentDeployment];
  v16 = [TRITargetingTask taskWithExperiment:experimentDeployment9 includeDependencies:0 taskAttribution:self->_taskAttributing];
LABEL_26:

LABEL_27:

  return v16;
}

uint64_t __95__TRIFetchMultipleExperimentNotificationsTask__getNextTaskForExperiment_taskContext_taskQueue___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 experiment], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "experimentDeployment"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToDeployment:", v5), v5, v4, v6))
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) experimentId];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Clearing out targeting task due to found rollback for %{public}@", &v11, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_nameForNotificationType:(int)type
{
  if (type == 1)
  {
    v3 = @"experiment";
  }

  else
  {
    v4 = *&type;
    v5 = TRICloudKitSupport_NotificationType_EnumDescriptor();
    v3 = [v5 enumNameForValue:v4];
  }

  return v3;
}

- (BOOL)_processExperiment:(id)experiment taskContext:(id)context taskQueue:(id)queue
{
  v53 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  contextCopy = context;
  queueCopy = queue;
  experimentDatabase = [contextCopy experimentDatabase];
  namespaceDatabase = [contextCopy namespaceDatabase];
  paths = [contextCopy paths];
  experimentDeployment = [experimentCopy experimentDeployment];
  v14 = 0;
  if ([experimentCopy hasDeploymentId])
  {
    if (experimentDeployment)
    {
      v15 = [experimentDatabase experimentRecordWithExperimentDeployment:experimentDeployment];
      v14 = v15;
      if (v15)
      {
        if ([v15 isManuallyTargeted])
        {
          v16 = TRILogCategory_Server();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v50 = experimentDeployment;
            _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Found existing manually targeted experiment record for %{public}@. Not processing this experiment notification", buf, 0xCu);
          }

          v17 = 0;
          goto LABEL_44;
        }
      }
    }
  }

  v41 = experimentDeployment;
  v42 = paths;
  v43 = experimentDatabase;
  experimentType = [experimentCopy experimentType];
  experimentType2 = [experimentCopy experimentType];
  encodedExperimentDefinition = [experimentCopy encodedExperimentDefinition];
  if (encodedExperimentDefinition)
  {
    encodedExperimentDefinition2 = [experimentCopy encodedExperimentDefinition];
    v22 = [encodedExperimentDefinition2 length] != 0;
  }

  else
  {
    v22 = 0;
  }

  experimentId = [experimentCopy experimentId];
  if (experimentId)
  {
    v24 = experimentType == 2 || v22;

    if (v24)
    {
      if (experimentType != 2 && experimentType2 != 5 && ([experimentCopy saveWithDatabase:v43 paths:v42] & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v37 = -[TRIFetchMultipleExperimentNotificationsTask _nameForNotificationType:](self, "_nameForNotificationType:", [experimentCopy experimentType]);
          experimentId2 = [experimentCopy experimentId];
          *buf = 138543618;
          v50 = v37;
          v51 = 2114;
          v52 = experimentId2;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Unable to save %{public}@ with id %{public}@.", buf, 0x16u);
        }

        v17 = 0;
LABEL_37:
        paths = v42;
        experimentDatabase = v43;
        experimentDeployment = v41;
        goto LABEL_44;
      }

LABEL_23:
      namespaces = [experimentCopy namespaces];

      if (namespaces)
      {
        v39 = queueCopy;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        namespaces2 = [experimentCopy namespaces];
        v27 = [namespaces2 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v45;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v45 != v29)
              {
                objc_enumerationMutation(namespaces2);
              }

              v31 = *(*(&v44 + 1) + 8 * i);
              v32 = [namespaceDatabase dynamicNamespaceRecordWithNamespaceName:v31];

              if (v32)
              {
                [namespaceDatabase setFetched:1 forDynamicNamespaceName:v31];
              }
            }

            v28 = [namespaces2 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v28);
        }

        queueCopy = v39;
      }

      v16 = [(TRIFetchMultipleExperimentNotificationsTask *)self _getNextTaskForExperiment:experimentCopy taskContext:contextCopy taskQueue:queueCopy];
      if (v16)
      {
        [(TRIFetchMultipleExperimentNotificationsTask *)self _addNextTask:v16];
      }

      v17 = 1;
      goto LABEL_37;
    }

    if (experimentType2 == 5)
    {
      goto LABEL_23;
    }
  }

  experimentType3 = [experimentCopy experimentType];
  v34 = TRILogCategory_Server();
  v16 = v34;
  if (experimentType3 == 3)
  {
    experimentDeployment = v41;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Unable to process deprecated rollout V1 experiment artifact", buf, 2u);
    }
  }

  else
  {
    experimentDeployment = v41;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = -[TRIFetchMultipleExperimentNotificationsTask _nameForNotificationType:](self, "_nameForNotificationType:", [experimentCopy experimentType]);
      *buf = 138543362;
      v50 = v35;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "empty %{public}@", buf, 0xCu);
    }
  }

  v17 = 0;
  paths = v42;
  experimentDatabase = v43;
LABEL_44:

  return v17;
}

- (void)updateStatusForNamespacesWithContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_namespaceNames;
  v26 = [(NSSet *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v26)
  {
    v25 = *v28;
    *&v7 = 138543362;
    v23 = v7;
    v24 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        namespaceDatabase = [contextCopy namespaceDatabase];
        v11 = [namespaceDatabase dynamicNamespaceRecordWithNamespaceName:v9];

        paths = [contextCopy paths];
        if (paths)
        {
          v13 = [objc_alloc(MEMORY[0x277D73788]) initWithPaths:paths];
          v14 = [v13 statusForNamespaceWithName:v9];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 copyWithReplacementLastFetchAttempt:v5];

            appContainer = [v16 copyWithReplacementLastFetchWasSuccess:1];
          }

          else
          {
            v19 = v5;
            v20 = MEMORY[0x277D73750];
            namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
            v16 = [v20 loadWithNamespaceName:v9 fromDirectory:namespaceDescriptorsDefaultDir];

            if (!(v16 | v11))
            {
              appContainer = TRILogCategory_Server();
              if (os_log_type_enabled(appContainer, OS_LOG_TYPE_ERROR))
              {
                *buf = v23;
                v32 = v9;
                _os_log_error_impl(&dword_26F567000, appContainer, OS_LOG_TYPE_ERROR, "expected namespace to be registered, but could not find descriptor: %{public}@", buf, 0xCu);
              }

              v5 = v19;
              v6 = v24;
              goto LABEL_20;
            }

            if (v16)
            {
              downloadNCV = [v16 downloadNCV];
            }

            else
            {
              downloadNCV = [v11 compatibilityVersion];
            }

            v5 = v19;
            appContainer = [objc_alloc(MEMORY[0x277D73780]) initWithNamespaceName:v9 compatibilityVersion:downloadNCV lastFetchAttempt:v19 lastFetchWasSuccess:1];
            v6 = v24;
          }

          [v13 saveStatus:appContainer];
        }

        else
        {
          v13 = TRILogCategory_Server();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          appContainer = [v11 appContainer];
          identifier = [appContainer identifier];
          *buf = v23;
          v32 = identifier;
          _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "updateStatusForNamespacesWithContext skipping missing app container: %{public}@", buf, 0xCu);
        }

LABEL_20:

LABEL_21:
        ++v8;
      }

      while (v26 != v8);
      v26 = [(NSSet *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v26);
  }
}

- (BOOL)_checkIfAnyTreatmentPresent:(id)present usingContext:(id)context
{
  v5 = MEMORY[0x277D73760];
  presentCopy = present;
  paths = [context paths];
  v8 = [v5 factorProviderWithPaths:paths namespaceName:presentCopy];

  LOBYTE(paths) = [v8 hasAnyTreatmentInLayers:39];
  return paths;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v107 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  if (![TRIUserAdjustableSettings getExperimentOptOut:contextCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v54 = os_transaction_create();
    keyValueStore = [contextCopy keyValueStore];
    v60 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

    namespaceDatabase = [contextCopy namespaceDatabase];
    paths = [contextCopy paths];
    namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
    v59 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

    triCloudKitContainer = [(TRITaskAttributing *)selfCopy->_taskAttributing triCloudKitContainer];
    teamIdentifier = [(TRITaskAttributing *)selfCopy->_taskAttributing teamIdentifier];
    applicationBundleIdentifier = [(TRITaskAttributing *)selfCopy->_taskAttributing applicationBundleIdentifier];
    v55 = [TRICKNativeArtifactProvider providerForContainer:triCloudKitContainer teamId:teamIdentifier bundleId:applicationBundleIdentifier dateProvider:v60 namespaceDescriptorProvider:v59 serverContext:contextCopy];

    networkOptions = [(TRITaskAttributing *)selfCopy->_taskAttributing networkOptions];
    v18 = v55;
    if ([networkOptions allowsCellularAccess])
    {
      v19 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(networkOptions, "allowsCellularAccess")}];
      [(TRIFetchMultipleExperimentNotificationsTask *)selfCopy _addMetric:v19];
    }

    if ([networkOptions discretionaryBehavior])
    {
      stateProvider = [(TRIBaseTask *)selfCopy stateProvider];
      v21 = [stateProvider activeActivityGrantingCapability:{objc_msgSend(networkOptions, "requiredCapability")}];

      if (!v21)
      {
        v42 = TRILogCategory_Server();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v42, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
        }

        v43 = [(NSMutableArray *)selfCopy->_nextTasks copy];
        v9 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v43 earliestRetryDate:0];
        goto LABEL_60;
      }

      [networkOptions setActivity:v21];
    }

    v57 = [[TRIFetchOptions alloc] initWithDownloadOptions:networkOptions cacheDeleteAvailableSpaceClass:&unk_287FC4CD8];
    v22 = dispatch_semaphore_create(0);
    *buf = 0;
    v97 = buf;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__49;
    v100 = __Block_byref_object_dispose__49;
    v101 = 0;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__49;
    v86 = __Block_byref_object_dispose__49;
    v87 = 0;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __77__TRIFetchMultipleExperimentNotificationsTask_runUsingContext_withTaskQueue___block_invoke;
    v74[3] = &unk_279DE4310;
    v79 = &v82;
    v80 = buf;
    v78 = &v92;
    v74[4] = selfCopy;
    v23 = contextCopy;
    v75 = v23;
    v76 = queueCopy;
    v81 = &v88;
    dsema = v22;
    v77 = dsema;
    v58 = MEMORY[0x2743948D0](v74);
    xpcActivityManager = [v23 xpcActivityManager];
    limitedCarryManager = [v23 limitedCarryManager];

    if (limitedCarryManager)
    {
      if (!selfCopy->_rollbacksOnly)
      {
        limitedCarryManager2 = [v23 limitedCarryManager];
        [v55 fetchExperimentNotificationsForLimitedCarryExperimentWithManager:limitedCarryManager2 options:v57 rollbacksOnly:0 completion:v58];

        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      }

      limitedCarryManager3 = [v23 limitedCarryManager];
      [v55 fetchExperimentNotificationsForLimitedCarryExperimentWithManager:limitedCarryManager3 options:v57 rollbacksOnly:1 completion:v58];

      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      if (selfCopy->_limitedCarryOnly)
      {
        v27 = *(v93 + 6);
        if (v27 == 2)
        {
          [xpcActivityManager postponeCellularActivity];
          v27 = *(v93 + 6);
        }

        v28 = [(NSMutableArray *)selfCopy->_nextTasks copy];
        v29 = [TRITaskRunResult resultWithRunStatus:v27 reportResultToServer:1 nextTasks:v28 earliestRetryDate:*(v97 + 5)];
        goto LABEL_59;
      }
    }

    else
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        limitedCarryManager4 = [v23 limitedCarryManager];
        *v105 = 138543362;
        v106 = limitedCarryManager4;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Unable to fetch limited carry experiments as limitedCarryManager is: %{public}@", v105, 0xCu);
      }
    }

    [v55 fetchExperimentNotificationsWithNamespaceNames:selfCopy->_namespaceNames rollbacksOnly:selfCopy->_rollbacksOnly lastFetchDateOverride:selfCopy->_startingFetchDateOverride options:v57 completion:v58];
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    if (v83[5])
    {
      selfCopy->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:?];
      v31 = TRIFetchErrorParseToMetrics(v83[5]);
      if ([v31 count])
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v32 = v31;
        v33 = [v32 countByEnumeratingWithState:&v70 objects:v104 count:16];
        if (v33)
        {
          v34 = *v71;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v71 != v34)
              {
                objc_enumerationMutation(v32);
              }

              [(TRIFetchMultipleExperimentNotificationsTask *)selfCopy _addMetric:*(*(&v70 + 1) + 8 * i)];
            }

            v33 = [v32 countByEnumeratingWithState:&v70 objects:v104 count:16];
          }

          while (v33);
        }

        v18 = v55;
      }
    }

    v36 = *(v93 + 6);
    if (v36 == 3)
    {
      namespaceNames = selfCopy->_namespaceNames;
      if (!namespaceNames)
      {
LABEL_58:
        v49 = *(v93 + 6);
        v28 = [(NSMutableArray *)selfCopy->_nextTasks copy];
        v29 = [TRITaskRunResult resultWithRunStatus:v49 reportResultToServer:1 nextTasks:v28 earliestRetryDate:*(v97 + 5)];
LABEL_59:
        v9 = v29;

        _Block_object_dispose(&v82, 8);
        _Block_object_dispose(&v88, 8);
        _Block_object_dispose(&v92, 8);
        _Block_object_dispose(buf, 8);

        v43 = v57;
LABEL_60:

        objc_sync_exit(selfCopy);
        goto LABEL_61;
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v37 = namespaceNames;
      v45 = [(NSSet *)v37 countByEnumeratingWithState:&v62 objects:v102 count:16];
      if (!v45)
      {
LABEL_57:

        goto LABEL_58;
      }

      v52 = queueCopy;
      v46 = *v63;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v63 != v46)
          {
            objc_enumerationMutation(v37);
          }

          v48 = *(*(&v62 + 1) + 8 * j);
          [MEMORY[0x277D73788] updateStatusFetchSuccess:0 forNamespaceName:v48 withContext:{v23, v52}];
          [MEMORY[0x277D73698] notifyDownloadFailedForKey:v48 withError:0];
        }

        v45 = [(NSSet *)v37 countByEnumeratingWithState:&v62 objects:v102 count:16];
      }

      while (v45);
    }

    else
    {
      if (v36 != 2)
      {
        goto LABEL_58;
      }

      [xpcActivityManager postponeCellularActivity];
      [(TRIFetchMultipleExperimentNotificationsTask *)selfCopy updateStatusForNamespacesWithContext:v23];
      if (v89[3])
      {
        goto LABEL_58;
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v37 = selfCopy->_namespaceNames;
      v38 = [(NSSet *)v37 countByEnumeratingWithState:&v66 objects:v103 count:16];
      if (!v38)
      {
        goto LABEL_57;
      }

      v52 = queueCopy;
      v39 = *v67;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v67 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v66 + 1) + 8 * k);
          if ([(TRIFetchMultipleExperimentNotificationsTask *)selfCopy _checkIfAnyTreatmentPresent:v41 usingContext:v23, v52])
          {
            [MEMORY[0x277D73698] notifyDownloadCompletedForKey:v41];
          }

          else
          {
            [MEMORY[0x277D73788] updateStatusFetchSuccess:0 forNamespaceName:v41 withContext:v23];
            [MEMORY[0x277D73698] notifyDownloadFailedForKey:v41 withError:0];
          }
        }

        v38 = [(NSSet *)v37 countByEnumeratingWithState:&v66 objects:v103 count:16];
      }

      while (v38);
    }

    queueCopy = v52;
    v18 = v55;
    goto LABEL_57;
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Skipping scheduled fetch of experiment notifications due to user opt-out of experiments", buf, 2u);
  }

  v9 = [TRITaskRunResult resultWithRunStatus:4 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_61:

  return v9;
}

void __77__TRIFetchMultipleExperimentNotificationsTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 == 2)
  {
    v12 = *(*(a1 + 64) + 8);
    if (v10)
    {
      *(v12 + 24) = 1;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
LABEL_7:
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
      goto LABEL_8;
    }

LABEL_6:
    *(v12 + 24) = 3;
    goto LABEL_7;
  }

  if (!a2)
  {
    v12 = *(*(a1 + 64) + 8);
    goto LABEL_6;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 32) _processExperiment:*(*(&v19 + 1) + 8 * v16) taskContext:*(a1 + 40) taskQueue:*(a1 + 48)];
        ++*(*(*(a1 + 88) + 8) + 24);
        ++v16;
      }

      while (v14 != v16);
      v14 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if (a2 == 4 && v9)
  {
    if (![v9 count])
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Fetch status success but 0 results fetched.", v18, 2u);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 2;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    if (a2 == 3)
    {
      goto LABEL_9;
    }
  }

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 56));
LABEL_9:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TRIFetchMultipleExperimentNotificationsTask;
    if ([(TRIBaseTask *)&v14 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (![(TRITaskAttributing *)self->_taskAttributing isEqual:v5->_taskAttributing])
      {
        goto LABEL_19;
      }

      startingFetchDateOverride = self->_startingFetchDateOverride;
      if (startingFetchDateOverride | v5->_startingFetchDateOverride)
      {
        if (![(NSDate *)startingFetchDateOverride isEqual:?])
        {
          goto LABEL_19;
        }
      }

      v7 = self->_namespaceNames;
      v8 = v5->_namespaceNames;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {

          goto LABEL_19;
        }

        v12 = [(NSSet *)v7 isEqualToSet:v8];

        if (!v12)
        {
          goto LABEL_19;
        }
      }

      if (self->_rollbacksOnly == v5->_rollbacksOnly)
      {
        v11 = self->_limitedCarryOnly == v5->_limitedCarryOnly;
LABEL_20:

        goto LABEL_21;
      }

LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v3 = [(TRIBaseTask *)&v8 hash];
  startingFetchDateOverride = self->_startingFetchDateOverride;
  if (startingFetchDateOverride)
  {
    v5 = [(NSDate *)startingFetchDateOverride hash];
  }

  else
  {
    v5 = 0;
  }

  namespaceNames = self->_namespaceNames;
  if (namespaceNames)
  {
    namespaceNames = [(NSSet *)namespaceNames hash];
  }

  return self->_limitedCarryOnly + 37 * (self->_rollbacksOnly + 37 * (namespaceNames + 1369 * v3 + 37 * v5));
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_metrics copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)dimensions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_dimensions copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  if (self->_startingFetchDateOverride)
  {
    v5 = [objc_alloc(MEMORY[0x277D73B88]) initWithDate:self->_startingFetchDateOverride];
    [v3 setEarliestTimestamp:v5];
  }

  if ([(NSSet *)self->_namespaceNames count])
  {
    allObjects = [(NSSet *)self->_namespaceNames allObjects];
    v7 = [allObjects mutableCopy];
    [v3 setNamespacesArray:v7];
  }

  [v3 setRollbacksOnly:self->_rollbacksOnly];
  [v3 setLimitedCarryOnly:self->_limitedCarryOnly];
  [v3 setRetryCount:{-[TRIFetchMultipleExperimentNotificationsTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIFetchMultipleExperimentNotificationsTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:617 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v4 = [(TRIPBMessage *)TRIFetchExperimentNotificationsPersistedTask parseFromData:data error:&v23];
  v5 = v23;
  if (!v4)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIFetchExperimentNotificationsPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (([v4 hasRollbacksOnly] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412290;
    v25 = v11;
    v12 = "Cannot decode message of type %@ with missing field: rollbacksOnly";
LABEL_32:
    _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);

    goto LABEL_12;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v22 = objc_opt_class();
    v11 = NSStringFromClass(v22);
    *buf = 138412290;
    v25 = v11;
    v12 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_32;
  }

  taskAttribution = [v4 taskAttribution];
  v7 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (v7)
  {
    if ([v4 hasEarliestTimestamp])
    {
      earliestTimestamp = [v4 earliestTimestamp];
      date = [earliestTimestamp date];
    }

    else
    {
      date = 0;
    }

    if ([v4 namespacesArray_Count])
    {
      v15 = objc_alloc(MEMORY[0x277CBEB98]);
      namespacesArray = [v4 namespacesArray];
      v17 = [v15 initWithArray:namespacesArray];
    }

    else
    {
      v17 = 0;
    }

    v18 = [self alloc];
    rollbacksOnly = [v4 rollbacksOnly];
    if ([v4 limitedCarryOnly])
    {
      limitedCarryOnly = [v4 limitedCarryOnly];
    }

    else
    {
      limitedCarryOnly = 0;
    }

    v13 = [v18 initWithStartingFetchDateOverride:date namespaceNames:v17 taskAttributing:v7 rollbacksOnly:rollbacksOnly limitedCarryOnly:limitedCarryOnly];
    if ([v4 hasRetryCount])
    {
      retryCount = [v4 retryCount];
    }

    else
    {
      retryCount = 0;
    }

    [v13 setRetryCount:retryCount];
  }

  else
  {
    date = TRILogCategory_Server();
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, date, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (unint64_t)requiredCapabilities
{
  if (self->_rollbacksOnly)
  {
    requiredCapability = 2;
  }

  else
  {
    networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
    requiredCapability = [networkOptions requiredCapability];
  }

  if ([(TRIFetchMultipleExperimentNotificationsTask *)self retryCount])
  {
    return requiredCapability | 4;
  }

  else
  {
    return requiredCapability;
  }
}

- (TRIFetchMultipleExperimentNotificationsTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v5 = [(TRIFetchMultipleExperimentNotificationsTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:664 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIFetchMultipleExperimentNotificationsTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end