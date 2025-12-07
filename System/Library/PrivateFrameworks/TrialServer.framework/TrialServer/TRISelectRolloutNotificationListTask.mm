@interface TRISelectRolloutNotificationListTask
+ (id)parseFromData:(id)data;
+ (id)taskWithNamespaceNames:(id)names taskAttribution:(id)attribution;
- ($A5A652246548B43F8BC05201A1C72A70)_processRolloutArtifact:(id)artifact rolloutsProcessed:(id)processed remainingNamespaces:(id)namespaces targeter:(id)targeter context:(id)context taskQueue:(id)queue;
- (BOOL)isEqual:(id)equal;
- (NSArray)tags;
- (NSString)description;
- (TRISelectRolloutNotificationListTask)initWithCoder:(id)coder;
- (TRISelectRolloutNotificationListTask)initWithNamespaceNames:(id)names taskAttribution:(id)attribution;
- (id)_asPersistedTask;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (id)trialSystemTelemetry;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addDimension:(id)dimension;
- (void)_addMetric:(id)metric;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRISelectRolloutNotificationListTask

- (NSArray)tags
{
  v3 = objc_opt_new();
  [TRITaskUtils addAttribution:self->_taskAttribution toTaskTags:v3];

  return v3;
}

+ (id)taskWithNamespaceNames:(id)names taskAttribution:(id)attribution
{
  attributionCopy = attribution;
  namesCopy = names;
  v7 = [[TRISelectRolloutNotificationListTask alloc] initWithNamespaceNames:namesCopy taskAttribution:attributionCopy];

  return v7;
}

- (TRISelectRolloutNotificationListTask)initWithNamespaceNames:(id)names taskAttribution:(id)attribution
{
  namesCopy = names;
  attributionCopy = attribution;
  v18.receiver = self;
  v18.super_class = TRISelectRolloutNotificationListTask;
  v9 = [(TRISelectRolloutNotificationListTask *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namespaceNames, names);
    objc_storeStrong(&v10->_taskAttribution, attribution);
    v11 = objc_opt_new();
    nextTasks = v10->_nextTasks;
    v10->_nextTasks = v11;

    v13 = objc_alloc(MEMORY[0x277D425F8]);
    v14 = objc_opt_new();
    v15 = [v13 initWithGuardedData:v14];
    lock = v10->_lock;
    v10->_lock = v15;
  }

  return v10;
}

- ($A5A652246548B43F8BC05201A1C72A70)_processRolloutArtifact:(id)artifact rolloutsProcessed:(id)processed remainingNamespaces:(id)namespaces targeter:(id)targeter context:(id)context taskQueue:(id)queue
{
  v128 = *MEMORY[0x277D85DE8];
  artifactCopy = artifact;
  processedCopy = processed;
  namespacesCopy = namespaces;
  targeterCopy = targeter;
  contextCopy = context;
  queueCopy = queue;
  v101 = objc_autoreleasePoolPush();
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __129__TRISelectRolloutNotificationListTask__processRolloutArtifact_rolloutsProcessed_remainingNamespaces_targeter_context_taskQueue___block_invoke;
  v118[3] = &unk_279DE4DB0;
  v19 = namespacesCopy;
  v119 = v19;
  v20 = MEMORY[0x2743948D0](v118);
  deployment = [artifactCopy deployment];
  rolloutId = [deployment rolloutId];
  LODWORD(context) = [processedCopy containsObject:rolloutId];

  if (context)
  {
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      shortDesc = [deployment shortDesc];
      rolloutId2 = [deployment rolloutId];
      _NamespaceNamesForArtifact(artifactCopy);
      v26 = v20;
      v27 = v19;
      v29 = v28 = targeterCopy;
      *buf = 138543874;
      v123 = shortDesc;
      v124 = 2114;
      v125 = rolloutId2;
      v126 = 2114;
      v127 = v29;
      _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_INFO, "Ignoring rollout deployment %{public}@ because rolloutId %{public}@ has already been processed for namespaces %{public}@.", buf, 0x20u);

      targeterCopy = v28;
      v19 = v27;
      v20 = v26;
    }

    v30.var0 = v20[2](v20);
    v31 = v101;
    goto LABEL_61;
  }

  selfCopy = self;
  v115[0] = MEMORY[0x277D85DD0];
  v115[1] = 3221225472;
  v115[2] = __129__TRISelectRolloutNotificationListTask__processRolloutArtifact_rolloutsProcessed_remainingNamespaces_targeter_context_taskQueue___block_invoke_45;
  v115[3] = &unk_279DE4DD8;
  v116 = processedCopy;
  v32 = v19;
  v117 = v32;
  v100 = MEMORY[0x2743948D0](v115);
  v113 = 0;
  v114 = 0;
  v112 = 0;
  rollout = [artifactCopy rollout];
  v34 = [targeterCopy targetRollout:rollout factorPackSetId:&v114 relatedRampDeployment:&v113 error:&v112];

  if (v34 != 3)
  {
    if (v34 != 2)
    {
      if (!v34)
      {
        v93 = v20;
        v94 = processedCopy;
        v96 = targeterCopy;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        metrics = [(TRISelectRolloutNotificationListTask *)selfCopy metrics];
        v36 = [metrics countByEnumeratingWithState:&v108 objects:v121 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v109;
          while (2)
          {
            v39 = v19;
            for (i = 0; i != v37; ++i)
            {
              if (*v109 != v38)
              {
                objc_enumerationMutation(metrics);
              }

              name = [*(*(&v108 + 1) + 8 * i) name];
              v42 = [@"targeting_error" isEqual:name];

              if (v42)
              {
                v31 = v101;
                v19 = v39;
                goto LABEL_40;
              }
            }

            v37 = [metrics countByEnumeratingWithState:&v108 objects:v121 count:16];
            v19 = v39;
            if (v37)
            {
              continue;
            }

            break;
          }
        }

        userInfo = [v112 userInfo];
        v44 = [userInfo objectForKeyedSubscript:@"logMessage"];
        v45 = v44;
        v46 = @"unknown";
        if (v44)
        {
          v46 = v44;
        }

        v47 = v46;

        metrics = [MEMORY[0x277D73B40] metricWithName:@"targeting_error" categoricalValue:v47];

        [(TRISelectRolloutNotificationListTask *)selfCopy _addMetric:metrics];
        v31 = v101;
LABEL_40:

        v20 = v93;
        v30.var0 = v93[2](v93);
        processedCopy = v94;
        targeterCopy = v96;
        goto LABEL_60;
      }

      v95 = v19;
      v53 = processedCopy;
      goto LABEL_26;
    }

LABEL_51:
    v30.var0 = v20[2](v20);
LABEL_59:
    v31 = v101;
    goto LABEL_60;
  }

  v97 = targeterCopy;
  v48 = TRILogCategory_Server();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    shortDesc2 = [deployment shortDesc];
    *buf = 138543362;
    v123 = shortDesc2;
    _os_log_impl(&dword_26F567000, v48, OS_LOG_TYPE_DEFAULT, "Rollout deployment %{public}@ will not be applied because it represents an already-active ramp. Prior deployment will be reprocessed.", buf, 0xCu);
  }

  rolloutDatabase = [contextCopy rolloutDatabase];
  v51 = v113;
  if (!v51)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"TRISelectRolloutNotificationListTask.m" lineNumber:171 description:{@"Expression was unexpectedly nil/false: %@", @"relatedRampDeployment"}];
  }

  v52 = [rolloutDatabase recordWithDeployment:v51 usingTransaction:0];

  if (!v52)
  {
    v82 = TRILogCategory_Server();
    targeterCopy = v97;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      shortDesc3 = [v113 shortDesc];
      v89 = _NamespaceNamesForArtifact(artifactCopy);
      *buf = 138543618;
      v123 = shortDesc3;
      v124 = 2114;
      v125 = v89;
      _os_log_error_impl(&dword_26F567000, v82, OS_LOG_TYPE_ERROR, "Unexpected failure to find related ramp deployment %{public}@ for namespaces %{public}@.", buf, 0x16u);

      targeterCopy = v97;
    }

    goto LABEL_51;
  }

  v95 = v19;
  v53 = processedCopy;
  artifact = [v52 artifact];

  v55 = v113;
  deployment = v55;
  artifactCopy = artifact;
  targeterCopy = v97;
LABEL_26:
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  namespaceNames = [artifactCopy namespaceNames];
  v57 = [namespaceNames countByEnumeratingWithState:&v104 objects:v120 count:16];
  if (!v57)
  {
    goto LABEL_34;
  }

  v58 = v57;
  v59 = *v105;
  while (2)
  {
    for (j = 0; j != v58; ++j)
    {
      if (*v105 != v59)
      {
        objc_enumerationMutation(namespaceNames);
      }

      if ([v32 containsObject:*(*(&v104 + 1) + 8 * j)])
      {
        v98 = targeterCopy;

        rolloutId3 = [deployment rolloutId];
        namespaceNames2 = [artifactCopy namespaceNames];
        (v100)[2](v100, rolloutId3, namespaceNames2);

        v67 = [TRIRolloutRecord alloc];
        rollout2 = [artifactCopy rollout];
        hasRampId = [rollout2 hasRampId];
        if (hasRampId)
        {
          rollout3 = [artifactCopy rollout];
          rampId = [rollout3 rampId];
          v70 = TRIValidateRampId();
        }

        else
        {
          v70 = 0;
        }

        processedCopy = v53;
        namespaceNames3 = [artifactCopy namespaceNames];
        v72 = [(TRIRolloutRecord *)v67 initWithDeployment:deployment rampId:v70 activeFactorPackSetId:0 activeTargetingRuleIndex:0 targetedFactorPackSetId:0 targetedTargetingRuleIndex:0 status:0 namespaces:namespaceNames3 artifact:artifactCopy];

        v19 = v95;
        if (hasRampId)
        {
        }

        rolloutDatabase2 = [contextCopy rolloutDatabase];
        [rolloutDatabase2 addNewRolloutWithRecord:v72];

        rolloutDatabase3 = [contextCopy rolloutDatabase];
        v75 = [rolloutDatabase3 recordWithDeployment:deployment usingTransaction:0];

        if (!v75)
        {
          v83 = TRILogCategory_Server();
          targeterCopy = v98;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            shortDesc4 = [deployment shortDesc];
            v85 = _NamespaceNamesForArtifact(artifactCopy);
            *buf = 138543618;
            v123 = shortDesc4;
            v124 = 2114;
            v125 = v85;
            _os_log_error_impl(&dword_26F567000, v83, OS_LOG_TYPE_ERROR, "Unexpected failure to find rollout deployment %{public}@ for namespaces %{public}@.", buf, 0x16u);
          }

          goto LABEL_58;
        }

        activeFactorPackSetId = [v75 activeFactorPackSetId];

        v77 = TRILogCategory_Server();
        v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
        targeterCopy = v98;
        if (activeFactorPackSetId)
        {
          if (v78)
          {
            shortDesc5 = [deployment shortDesc];
            v80 = _NamespaceNamesForArtifact(artifactCopy);
            *buf = 138543618;
            v123 = shortDesc5;
            v124 = 2114;
            v125 = v80;
            v81 = "Rollout deployment %{public}@ was selected, but is already active. Scheduling re-activation for namespaces %{public}@";
LABEL_56:
            _os_log_impl(&dword_26F567000, v77, OS_LOG_TYPE_DEFAULT, v81, buf, 0x16u);
          }
        }

        else if (v78)
        {
          shortDesc5 = [deployment shortDesc];
          v80 = _NamespaceNamesForArtifact(artifactCopy);
          *buf = 138543618;
          v123 = shortDesc5;
          v124 = 2114;
          v125 = v80;
          v81 = "Rollout deployment %{public}@ is selected and not yet active; scheduling activation for namespaces %{public}@.";
          goto LABEL_56;
        }

        rolloutId4 = [deployment rolloutId];
        [queueCopy cancelTasksWithTag:rolloutId4];

        v83 = [TRIRolloutTargetingTask taskWithRolloutDeployment:deployment includeDependencies:0 taskAttribution:selfCopy->_taskAttribution triggerEvent:0];
        [(TRISelectRolloutNotificationListTask *)selfCopy _addNextTask:v83];
LABEL_58:

        v30.var0 = v20[2](v20);
        goto LABEL_59;
      }
    }

    v58 = [namespaceNames countByEnumeratingWithState:&v104 objects:v120 count:16];
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_34:

  rolloutId5 = [deployment rolloutId];
  namespaceNames4 = [artifactCopy namespaceNames];
  (v100)[2](v100, rolloutId5, namespaceNames4);

  v63 = TRILogCategory_Server();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    shortDesc6 = [deployment shortDesc];
    *buf = 138543362;
    v123 = shortDesc6;
    _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEFAULT, "Ignoring rollout deployment %{public}@ because it does not impact unhandled namespaces.", buf, 0xCu);
  }

  v30.var0 = v20[2](v20);
  processedCopy = v53;
  v31 = v101;
  v19 = v95;
LABEL_60:

LABEL_61:
  objc_autoreleasePoolPop(v31);

  return v30;
}

void __129__TRISelectRolloutNotificationListTask__processRolloutArtifact_rolloutsProcessed_remainingNamespaces_targeter_context_taskQueue___block_invoke_45(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) addObject:a2];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
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

        [*(a1 + 40) removeObject:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v109 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  context = objc_autoreleasePoolPush();
  v68 = os_transaction_create();
  keyValueStore = [contextCopy keyValueStore];
  v72 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

  namespaceDatabase = [contextCopy namespaceDatabase];
  paths = [contextCopy paths];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v73 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

  triCloudKitContainer = [(TRITaskAttributing *)self->_taskAttribution triCloudKitContainer];
  teamIdentifier = [(TRITaskAttributing *)self->_taskAttribution teamIdentifier];
  applicationBundleIdentifier = [(TRITaskAttributing *)self->_taskAttribution applicationBundleIdentifier];
  v69 = [TRICKNativeArtifactProvider providerForContainer:triCloudKitContainer teamId:teamIdentifier bundleId:applicationBundleIdentifier dateProvider:v72 namespaceDescriptorProvider:v73 serverContext:contextCopy];

  networkOptions = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  if ([networkOptions allowsCellularAccess])
  {
    v15 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(networkOptions, "allowsCellularAccess")}];
    [(TRISelectRolloutNotificationListTask *)self _addMetric:v15];
  }

  if (![networkOptions discretionaryBehavior])
  {
    goto LABEL_6;
  }

  requiredCapability = [networkOptions requiredCapability];
  stateProvider = [(TRIBaseTask *)self stateProvider];
  v18 = [stateProvider activeActivityGrantingCapability:requiredCapability];

  if (v18)
  {
    [networkOptions setActivity:v18];

LABEL_6:
    v19 = [TRIRolloutTargeter alloc];
    rolloutDatabase = [contextCopy rolloutDatabase];
    v21 = [TRISystemCovariates alloc];
    paths2 = [contextCopy paths];
    v23 = [(TRISystemCovariates *)v21 initWithPaths:paths2];
    v24 = [[TRIUserCovariates alloc] initWithContext:contextCopy];
    v71 = [(TRIRolloutTargeter *)v19 initWithDatabase:rolloutDatabase systemCovariateProvider:v23 userCovariateProvider:v24];

    v25 = objc_opt_new();
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke;
    v102[3] = &unk_279DE4E00;
    v26 = v25;
    v103 = v26;
    [v73 enumerateDefaultDescriptorsWithBlock:v102];
    namespaceNames = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
    LOBYTE(paths2) = [namespaceNames count] == 0;

    if ((paths2 & 1) == 0)
    {
      namespaceNames2 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
      [v26 intersectSet:namespaceNames2];
    }

    if ([v26 count])
    {
      v29 = objc_autoreleasePoolPush();
      allObjects = [v26 allObjects];
      v31 = [v26 count];
      if (v31 >= 3)
      {
        v32 = 3;
      }

      else
      {
        v32 = v31;
      }

      v33 = [allObjects subarrayWithRange:{0, v32}];

      v34 = [v33 componentsJoinedByString:{@", "}];
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v26 count];
        *buf = 134218242;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Selecting best rollout deployments for %tu namespaces: [%{public}@, ...].", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v37 = objc_opt_new();
      v38 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v106 = __Block_byref_object_copy__55;
      v107 = __Block_byref_object_dispose__55;
      v108 = 0;
      v98 = 0;
      v99 = &v98;
      v100 = 0x2020000000;
      v101 = 0;
      v92 = 0;
      v93 = &v92;
      v94 = 0x3032000000;
      v95 = __Block_byref_object_copy__55;
      v96 = __Block_byref_object_dispose__55;
      v97 = 0;
      v91[0] = 0;
      v91[1] = v91;
      v91[2] = 0x2020000000;
      v91[3] = 0;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke_76;
      v79[3] = &unk_279DE4E28;
      v87 = &v98;
      v88 = &v92;
      v89 = buf;
      v80 = v26;
      selfCopy = self;
      v63 = v37;
      v82 = v63;
      v83 = v71;
      v84 = contextCopy;
      v85 = queueCopy;
      v90 = v91;
      v39 = v38;
      v86 = v39;
      v66 = MEMORY[0x2743948D0](v79);
      v65 = [[TRIFetchOptions alloc] initWithDownloadOptions:networkOptions cacheDeleteAvailableSpaceClass:&unk_287FC4DC8];
      v40 = TRILogCategory_Server();
      v41 = os_signpost_id_generate(v40);

      v42 = TRILogCategory_Server();
      v43 = v42;
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *v78 = 0;
        _os_signpost_emit_with_name_impl(&dword_26F567000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "FetchRolloutNotificationsDateDescending", &unk_26F6F4845, v78, 2u);
      }

      [v69 fetchRolloutNotificationsDateDescendingWithOptions:v65 completion:v66];
      dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
      v44 = TRILogCategory_Server();
      v45 = v44;
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *v78 = 0;
        _os_signpost_emit_with_name_impl(&dword_26F567000, v45, OS_SIGNPOST_INTERVAL_END, v41, "FetchRolloutNotificationsDateDescending", &unk_26F6F4845, v78, 2u);
      }

      if (v93[5])
      {
        self->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:v63];
        v46 = TRIFetchErrorParseToMetrics(v93[5]);
        if ([v46 count])
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v47 = v46;
          v48 = [v47 countByEnumeratingWithState:&v74 objects:v104 count:16];
          if (v48)
          {
            v49 = *v75;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v75 != v49)
                {
                  objc_enumerationMutation(v47);
                }

                [(TRISelectRolloutNotificationListTask *)self _addMetric:*(*(&v74 + 1) + 8 * i)];
              }

              v48 = [v47 countByEnumeratingWithState:&v74 objects:v104 count:16];
            }

            while (v48);
          }
        }
      }

      namespaceNames3 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
      if (namespaceNames3)
      {
        v52 = MEMORY[0x277D73698];
        namespaceNames4 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
        allObjects2 = [namespaceNames4 allObjects];
        v55 = [v52 immediateDownloadNotificationKeyForNamespaceNames:allObjects2];
      }

      else
      {
        v55 = 0;
      }

      if (*(v99 + 6) == 2)
      {
        v59 = 2;
      }

      else
      {
        [MEMORY[0x277D73698] notifyDownloadFailedForKey:v55 withCloudKitError:v93[5]];
        v59 = *(v99 + 6);
      }

      v60 = [(NSMutableArray *)self->_nextTasks copy];
      v57 = [TRITaskRunResult resultWithRunStatus:v59 reportResultToServer:1 nextTasks:v60 earliestRetryDate:*(*&buf[8] + 40)];

      _Block_object_dispose(v91, 8);
      _Block_object_dispose(&v92, 8);

      _Block_object_dispose(&v98, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v56 = TRILogCategory_Server();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        namespaceNames5 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
        *buf = 138543362;
        *&buf[4] = namespaceNames5;
        _os_log_error_impl(&dword_26F567000, v56, OS_LOG_TYPE_ERROR, "Request to select best rollout deployments specified unregistered namespaces: %{public}@", buf, 0xCu);
      }

      v57 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
    }

    goto LABEL_45;
  }

  v58 = TRILogCategory_Server();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v58, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
  }

  v71 = [(NSMutableArray *)self->_nextTasks copy];
  v57 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v71 earliestRetryDate:0];
LABEL_45:

  objc_autoreleasePoolPop(context);

  return v57;
}

void __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 namespaceName];
  [v2 addObject:v3];
}

void __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke_76(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, _BYTE *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a2 <= 1)
  {
    v14 = *(*(a1 + 88) + 8);
    goto LABEL_3;
  }

  if (a2 == 2)
  {
    v14 = *(*(a1 + 88) + 8);
    if (v12)
    {
      *(v14 + 24) = 1;
      objc_storeStrong((*(*(a1 + 104) + 8) + 40), a4);
      goto LABEL_7;
    }

LABEL_3:
    *(v14 + 24) = 3;
LABEL_7:
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), a5);
LABEL_8:
    dispatch_semaphore_signal(*(a1 + 80));
    goto LABEL_9;
  }

  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [v11 namespaceNames];
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (!v16)
    {
LABEL_19:

      goto LABEL_9;
    }

    v17 = v16;
    v18 = *v25;
LABEL_13:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(v15);
      }

      if ([*(a1 + 32) containsObject:*(*(&v24 + 1) + 8 * v19)])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v17)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v20 = [*(a1 + 40) _processRolloutArtifact:v11 rolloutsProcessed:*(a1 + 48) remainingNamespaces:*(a1 + 32) targeter:*(a1 + 56) context:*(a1 + 64) taskQueue:*(a1 + 72)];
    ++*(*(*(a1 + 112) + 8) + 24);
    if (v20)
    {
      goto LABEL_21;
    }

    if (a6)
    {
      *a6 = 1;
    }

    if (a2 - 3 >= 2)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_21:
  if (a2 != 3)
  {
    if (a2 != 4)
    {
      goto LABEL_8;
    }

LABEL_30:
    if (!*(*(*(a1 + 112) + 8) + 24))
    {
      v23 = TRILogCategory_Server();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "Fetch status success but 0 results fetched.", buf, 2u);
      }
    }

    *(*(*(a1 + 88) + 8) + 24) = 2;
    goto LABEL_8;
  }

  v21 = TRILogCategory_Server();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(*(*(a1 + 112) + 8) + 24);
    *buf = 134217984;
    v29 = v22;
    _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "Fetched %ld results, with more results pending.", buf, 0xCu);
  }

LABEL_9:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = TRISelectRolloutNotificationListTask;
  if ([(TRIBaseTask *)&v12 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if ([(TRITaskAttributing *)self->_taskAttribution isEqual:v5[4]])
    {
      namespaceNames = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
      namespaceNames2 = [v5 namespaceNames];
      v8 = namespaceNames2;
      if (namespaceNames == namespaceNames2)
      {

        goto LABEL_10;
      }

      if (namespaceNames && namespaceNames2)
      {
        v9 = [namespaceNames isEqualToSet:namespaceNames2];

        if ((v9 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_10:
        v10 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRISelectRolloutNotificationListTask;
  v3 = [(TRIBaseTask *)&v8 hash];
  namespaceNames = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
  if (namespaceNames)
  {
    namespaceNames2 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
    v6 = [namespaceNames2 hash];
  }

  else
  {
    v6 = 0;
  }

  return [(TRITaskAttributing *)self->_taskAttribution hash]+ 37 * (v6 + 37 * v3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  namespaceNames = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
  v6 = [v3 stringWithFormat:@"<%@:%@>", v4, namespaceNames];

  return v6;
}

- (void)_addMetric:(id)metric
{
  metricCopy = metric;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TRISelectRolloutNotificationListTask__addMetric___block_invoke;
  v7[3] = &unk_279DE4E50;
  v8 = metricCopy;
  v6 = metricCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __51__TRISelectRolloutNotificationListTask__addMetric___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[1];
    a2[1] = v6;

    v3 = a2[1];
  }

  v8 = *(a1 + 32);

  return [v3 addObject:v8];
}

- (void)_addDimension:(id)dimension
{
  dimensionCopy = dimension;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__TRISelectRolloutNotificationListTask__addDimension___block_invoke;
  v7[3] = &unk_279DE4E50;
  v8 = dimensionCopy;
  v6 = dimensionCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __54__TRISelectRolloutNotificationListTask__addDimension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[2];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[2];
    a2[2] = v6;

    v3 = a2[2];
  }

  v8 = *(a1 + 32);

  return [v3 addObject:v8];
}

- (id)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55;
  v10 = __Block_byref_object_dispose__55;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__TRISelectRolloutNotificationListTask_metrics__block_invoke;
  v5[3] = &unk_279DE4E78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__TRISelectRolloutNotificationListTask_metrics__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(a2 + 8) copy];

  return MEMORY[0x2821F96F8]();
}

- (id)dimensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55;
  v10 = __Block_byref_object_dispose__55;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TRISelectRolloutNotificationListTask_dimensions__block_invoke;
  v5[3] = &unk_279DE4E78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __50__TRISelectRolloutNotificationListTask_dimensions__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(a2 + 16) copy];

  return MEMORY[0x2821F96F8]();
}

- (id)trialSystemTelemetry
{
  v3 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:self->_taskAttribution];
  teamIdentifier = [(TRITaskAttributing *)self->_taskAttribution teamIdentifier];
  [v3 setClientTeamId:teamIdentifier];

  return v3;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  namespaceNames = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
  v6 = [namespaceNames count];

  if (v6)
  {
    namespaceNames2 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
    allObjects = [namespaceNames2 allObjects];
    v9 = [allObjects mutableCopy];
    [v3 setNamespacesArray:v9];
  }

  [v3 setRetryCount:{-[TRISelectRolloutNotificationListTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRISelectRolloutNotificationListTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISelectRolloutNotificationListTask.m" lineNumber:543 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = [(TRIPBMessage *)TRISelectRolloutNotificationListPersistedTask parseFromData:data error:&v16];
  v5 = v16;
  if (!v4)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRISelectRolloutNotificationListPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412290;
      v18 = v15;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: taskAttribution", buf, 0xCu);
    }

LABEL_10:
    v11 = 0;
    goto LABEL_20;
  }

  taskAttribution = [v4 taskAttribution];
  v7 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (v7)
  {
    if ([v4 namespacesArray_Count])
    {
      v8 = objc_alloc(MEMORY[0x277CBEB98]);
      namespacesArray = [v4 namespacesArray];
      v10 = [v8 initWithArray:namespacesArray];
    }

    else
    {
      v10 = 0;
    }

    v11 = [[self alloc] initWithNamespaceNames:v10 taskAttribution:v7];
    if ([v4 hasRetryCount])
    {
      retryCount = [v4 retryCount];
    }

    else
    {
      retryCount = 0;
    }

    [v11 setRetryCount:retryCount];
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (unint64_t)requiredCapabilities
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  requiredCapability = [networkOptions requiredCapability];

  if ([(TRISelectRolloutNotificationListTask *)self retryCount])
  {
    return requiredCapability | 4;
  }

  else
  {
    return requiredCapability;
  }
}

- (TRISelectRolloutNotificationListTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRISelectRolloutNotificationListTask;
  v5 = [(TRISelectRolloutNotificationListTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISelectRolloutNotificationListTask.m" lineNumber:581 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRISelectRolloutNotificationListTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end