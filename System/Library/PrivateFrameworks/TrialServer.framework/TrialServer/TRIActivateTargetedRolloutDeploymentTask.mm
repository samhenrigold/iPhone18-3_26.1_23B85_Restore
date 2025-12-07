@interface TRIActivateTargetedRolloutDeploymentTask
+ (id)parseFromData:(id)data;
+ (id)taskWithDeployment:(id)deployment factorPackSetId:(id)id taskAttribution:(id)attribution capabilityModifier:(id)modifier;
- (BOOL)isEqual:(id)equal;
- (NSArray)dependencies;
- (NSString)description;
- (TRIActivateTargetedRolloutDeploymentTask)initWithCoder:(id)coder;
- (TRIActivateTargetedRolloutDeploymentTask)initWithDeployment:(id)deployment factorPackSetId:(id)id taskAttribution:(id)attribution capabilityModifier:(id)modifier;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)coder;
- (void)runDequeueHandlerUsingContext:(id)context;
- (void)runEnqueueHandlerUsingContext:(id)context;
@end

@implementation TRIActivateTargetedRolloutDeploymentTask

- (TRIActivateTargetedRolloutDeploymentTask)initWithDeployment:(id)deployment factorPackSetId:(id)id taskAttribution:(id)attribution capabilityModifier:(id)modifier
{
  deploymentCopy = deployment;
  idCopy = id;
  attributionCopy = attribution;
  modifierCopy = modifier;
  if (deploymentCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

    if (attributionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];

  if (!idCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (attributionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];

LABEL_4:
  v32.receiver = self;
  v32.super_class = TRIActivateTargetedRolloutDeploymentTask;
  v16 = [(TRIActivateTargetedRolloutDeploymentTask *)&v32 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_deployment, deployment);
    objc_storeStrong(&v17->_factorPackSetId, id);
    objc_storeStrong(&v17->_taskAttribution, attribution);
    v18 = [[TRIRolloutTaskSupport alloc] initWithRolloutDeployment:v17->_deployment];
    support = v17->_support;
    v17->_support = v18;

    objc_storeStrong(&v17->_capabilityModifier, modifier);
    v20 = objc_opt_new();
    rolloutId = [deploymentCopy rolloutId];
    ensureRolloutFields = [v20 ensureRolloutFields];
    [ensureRolloutFields setClientRolloutId:rolloutId];

    v23 = loggableFactorPackSetIdFromFactorPackSetId(idCopy);
    ensureRolloutFields2 = [v20 ensureRolloutFields];
    [ensureRolloutFields2 setClientFactorPackSetId:v23];

    v25 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(deploymentCopy, "deploymentId")}];
    stringValue = [v25 stringValue];
    [v20 setClientDeploymentId:stringValue];

    v27 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:attributionCopy];
    [(TRIRolloutTaskSupport *)v17->_support mergeTelemetry:v20];
    [(TRIRolloutTaskSupport *)v17->_support mergeTelemetry:v27];
  }

  return v17;
}

+ (id)taskWithDeployment:(id)deployment factorPackSetId:(id)id taskAttribution:(id)attribution capabilityModifier:(id)modifier
{
  modifierCopy = modifier;
  attributionCopy = attribution;
  idCopy = id;
  deploymentCopy = deployment;
  v14 = [[self alloc] initWithDeployment:deploymentCopy factorPackSetId:idCopy taskAttribution:attributionCopy capabilityModifier:modifierCopy];

  return v14;
}

- (NSArray)dependencies
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [TRIFetchSingleRolloutNotificationTask taskWithDeployment:self->_deployment taskAttributing:self->_taskAttribution];
  v7[0] = v3;
  v4 = [TRIFetchFactorPackSetTask taskWithFactorPackSetId:self->_factorPackSetId taskAttribution:self->_taskAttribution rolloutDeployment:self->_deployment capabilityModifier:self->_capabilityModifier];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)runEnqueueHandlerUsingContext:(id)context
{
  factorPackSetId = self->_factorPackSetId;
  contextCopy = context;
  v9 = [TRIContentTracker contentIdentifierForFactorPackSetWithId:factorPackSetId];
  contentTracker = [contextCopy contentTracker];
  [contentTracker addRefWithContentIdentifier:v9];

  v7 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:self->_deployment];
  contentTracker2 = [contextCopy contentTracker];

  [contentTracker2 addRefWithContentIdentifier:v7];
}

- (void)runDequeueHandlerUsingContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  factorPackSetId = self->_factorPackSetId;
  contextCopy = context;
  v6 = [TRIContentTracker contentIdentifierForFactorPackSetWithId:factorPackSetId];
  contentTracker = [contextCopy contentTracker];
  [contentTracker dropRefWithContentIdentifier:v6];

  v8 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:self->_deployment];
  contentTracker2 = [contextCopy contentTracker];

  LOBYTE(contextCopy) = [contentTracker2 dropRefWithContentIdentifier:v8];
  if ((contextCopy & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      shortDesc = [(TRIRolloutDeployment *)self->_deployment shortDesc];
      v12 = 138543362;
      v13 = shortDesc;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for rollout %{public}@", &v12, 0xCu);
    }
  }
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v157 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v7 = [TRITaskRunResult alloc];
  v109 = [(TRITaskRunResult *)v7 initWithRunStatus:3 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
  v8 = objc_opt_new();
  v9 = [TRISystemCovariates alloc];
  v117 = contextCopy;
  paths = [contextCopy paths];
  v11 = [(TRISystemCovariates *)v9 initWithPaths:paths];

  v119 = v11;
  dictionary = [(TRISystemCovariates *)v11 dictionary];
  v113 = [dictionary valueForKey:@"OSBuild"];

  dictionary2 = [(TRISystemCovariates *)v11 dictionary];
  v116 = [dictionary2 valueForKey:@"UserSettingsLanguageCode"];

  dictionary3 = [(TRISystemCovariates *)v11 dictionary];
  v115 = [dictionary3 valueForKey:@"UserSettingsRegionCode"];

  dictionary4 = [(TRISystemCovariates *)v11 dictionary];
  v114 = [dictionary4 valueForKey:@"BCP47DeviceLocale"];

  if (v114)
  {
    v16 = [v114 componentsSeparatedByString:@"-"];
    firstObject = [v16 firstObject];

    v18 = [v114 componentsSeparatedByString:@"-"];
    lastObject = [v18 lastObject];

    v20 = &stru_287FA0430;
    if (lastObject)
    {
      v20 = lastObject;
    }

    v115 = v20;

    v116 = firstObject;
  }

  dictionary5 = [(TRISystemCovariates *)v11 dictionary];
  v112 = [dictionary5 valueForKey:@"CarrierBundleIdentifier"];

  dictionary6 = [(TRISystemCovariates *)v11 dictionary];
  v111 = [dictionary6 valueForKey:@"CarrierCountryIsoCode"];

  dictionary7 = [(TRISystemCovariates *)v11 dictionary];
  v24 = [dictionary7 valueForKey:@"DiagnosticsUsageEnabled"];
  bOOLValue = [v24 BOOLValue];

  dictionary8 = [(TRISystemCovariates *)v11 dictionary];
  v27 = [dictionary8 valueForKey:@"HasANE"];
  bOOLValue2 = [v27 BOOLValue];

  dictionary9 = [(TRISystemCovariates *)v11 dictionary];
  v110 = [dictionary9 valueForKey:@"ANEVersion"];

  if (!v113)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"osBuild"}];
  }

  if (!v116)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"languageCode"}];
  }

  if (!v115)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"regionCode"}];
  }

  if (!v112)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"carrierBundleId"}];
  }

  if (!v111)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"carrierCountryCode"}];
  }

  if (!v110)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"aneVersion"}];
  }

  rolloutDatabase = [v117 rolloutDatabase];
  v118 = [rolloutDatabase recordWithDeployment:self->_deployment usingTransaction:0];

  if (v118)
  {
    namespaceDatabase = [v117 namespaceDatabase];
    paths2 = [v117 paths];
    namespaceDescriptorsDefaultDir = [paths2 namespaceDescriptorsDefaultDir];
    v108 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

    artifact = [v118 artifact];
    rollout = [artifact rollout];
    v107 = [TRISetupAssistantFetchUtils getIncompatibleNamespaceNamesForTriClientRollout:rollout namespaceDescriptorProvider:v108];

    if ([v107 count])
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        deployment = self->_deployment;
        *buf = 138543362;
        *&buf[4] = deployment;
        _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Rollout deployment %{public}@ does not match the device NCVs. Completing task without activating deployment.", buf, 0xCu);
      }

      v37 = [TRITaskRunResult alloc];
      v38 = [(TRITaskRunResult *)v37 initWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
      goto LABEL_35;
    }

    v43 = objc_opt_new();
    rampId = [v118 rampId];

    if (rampId)
    {
      rampId2 = [v118 rampId];
      ensureRolloutFields = [v43 ensureRolloutFields];
      [ensureRolloutFields setClientRampId:rampId2];
    }

    factorPackSetId = self->_factorPackSetId;
    targetedFactorPackSetId = [v118 targetedFactorPackSetId];
    if ([(TRIFactorPackSetId *)factorPackSetId isEqual:targetedFactorPackSetId])
    {
      targetedTargetingRuleIndex = [v118 targetedTargetingRuleIndex];

      if (!targetedTargetingRuleIndex)
      {
LABEL_31:
        [(TRIRolloutTaskSupport *)self->_support mergeTelemetry:v43];

        activeFactorPackSetId = [v118 activeFactorPackSetId];
        v53 = [activeFactorPackSetId isEqualToString:self->_factorPackSetId];

        if (!v53)
        {
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          namespaces = [v118 namespaces];
          v60 = [namespaces countByEnumeratingWithState:&v145 objects:v156 count:16];
          if (v60)
          {
            v61 = *v146;
            do
            {
              for (i = 0; i != v60; ++i)
              {
                if (*v146 != v61)
                {
                  objc_enumerationMutation(namespaces);
                }

                [v8 addObject:*(*(&v145 + 1) + 8 * i)];
              }

              v60 = [namespaces countByEnumeratingWithState:&v145 objects:v156 count:16];
            }

            while (v60);
          }

          v63 = [TRINamespaceResolverStorage alloc];
          paths3 = [v117 paths];
          v106 = [(TRINamespaceResolverStorage *)v63 initWithPaths:paths3];

          v65 = self->_deployment;
          rampId3 = [v118 rampId];
          LOBYTE(v65) = [(TRINamespaceResolverStorage *)v106 rewriteRolloutDeployment:v65 rampId:rampId3 targetedFactorPackSetId:self->_factorPackSetId];

          if (v65)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v155 = 0;
            v67 = objc_opt_new();
            v68 = objc_opt_new();
            v130[0] = MEMORY[0x277D85DD0];
            v130[1] = 3221225472;
            v130[2] = __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke;
            v130[3] = &unk_279DE3AC8;
            v130[4] = self;
            v103 = v118;
            v131 = v103;
            v142 = buf;
            v105 = v117;
            v132 = v105;
            v102 = v67;
            v133 = v102;
            v100 = v68;
            v134 = v100;
            v135 = v113;
            v136 = v116;
            v137 = v115;
            v138 = v112;
            v139 = v111;
            v143 = bOOLValue;
            v144 = bOOLValue2;
            v140 = v110;
            v141 = v106;
            v104 = MEMORY[0x2743948D0](v130);
            rolloutDatabase2 = [v105 rolloutDatabase];
            [rolloutDatabase2 writeTransactionWithFailableBlock:v104];

            if (*(*&buf[8] + 24))
            {
              v128 = 0u;
              v129 = 0u;
              v126 = 0u;
              v127 = 0u;
              v70 = v102;
              v71 = [v70 countByEnumeratingWithState:&v126 objects:v153 count:16];
              if (v71)
              {
                v72 = *v127;
                do
                {
                  for (j = 0; j != v71; ++j)
                  {
                    if (*v127 != v72)
                    {
                      objc_enumerationMutation(v70);
                    }

                    taskTag = [*(*(&v126 + 1) + 8 * j) taskTag];
                    selfCopy = self;
                    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
                    [queueCopy cancelTasksWithTag:taskTag excludingTasks:v75];
                  }

                  v71 = [v70 countByEnumeratingWithState:&v126 objects:v153 count:16];
                }

                while (v71);
              }

              pushServiceMuxer = [v105 pushServiceMuxer];
              [pushServiceMuxer subscribeForRolloutDeployment:self->_deployment];

              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v77 = v8;
              v78 = [v77 countByEnumeratingWithState:&v122 objects:v151 count:16];
              if (v78)
              {
                v79 = *v123;
                do
                {
                  for (k = 0; k != v78; ++k)
                  {
                    if (*v123 != v79)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v81 = *(*(&v122 + 1) + 8 * k);
                    v82 = TRILogCategory_Server();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                    {
                      *v149 = 138543362;
                      v150 = v81;
                      _os_log_impl(&dword_26F567000, v82, OS_LOG_TYPE_DEFAULT, "notify about updates to namespace %{public}@", v149, 0xCu);
                    }

                    [MEMORY[0x277D73790] notifyUpdateForNamespaceName:v81];
                  }

                  v78 = [v77 countByEnumeratingWithState:&v122 objects:v151 count:16];
                }

                while (v78);
              }

              rolloutId = [(TRIRolloutDeployment *)self->_deployment rolloutId];
              rampId4 = [v103 rampId];
              LOBYTE(v99) = 0;
              [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:3 forRollout:rolloutId ramp:rampId4 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:v103 isBecomingObsolete:v99 context:v105, v100];

              v85 = [TRITaskRunResult alloc];
              v86 = [(TRITaskRunResult *)v85 initWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
            }

            else
            {
              rolloutId2 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
              rampId5 = [v103 rampId];
              LOBYTE(v99) = 0;
              [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:7 forRollout:rolloutId2 ramp:rampId5 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:v103 isBecomingObsolete:v99 context:v105, v100, v102];

              v86 = v109;
            }

            v42 = v86;

            _Block_object_dispose(buf, 8);
          }

          else
          {
            rolloutId3 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
            rampId6 = [v118 rampId];
            LOBYTE(v99) = 0;
            [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:7 forRollout:rolloutId3 ramp:rampId6 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:v118 isBecomingObsolete:v99 context:v117];

            v42 = v109;
          }

          goto LABEL_36;
        }

        v54 = TRILogCategory_Server();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          shortDesc = [(TRIRolloutDeployment *)self->_deployment shortDesc];
          v56 = self->_factorPackSetId;
          *buf = 138543618;
          *&buf[4] = shortDesc;
          *&buf[12] = 2114;
          *&buf[14] = v56;
          _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "Rollout deployment %{public}@ has already activated factor pack set %{public}@. Completing task without activating deployment again.", buf, 0x16u);
        }

        v57 = [TRITaskRunResult alloc];
        v38 = [(TRITaskRunResult *)v57 initWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_35:
        v42 = v38;
LABEL_36:

        goto LABEL_37;
      }

      targetedFactorPackSetId = [v118 targetedTargetingRuleIndex];
      intValue = [targetedFactorPackSetId intValue];
      ensureRolloutFields2 = [v43 ensureRolloutFields];
      [ensureRolloutFields2 setClientTargetingRuleGroupOrdinal:intValue];
    }

    goto LABEL_31;
  }

  v39 = TRILogCategory_Server();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    shortDesc2 = [(TRIRolloutDeployment *)self->_deployment shortDesc];
    *buf = 138543362;
    *&buf[4] = shortDesc2;
    _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Unexpected failure to lookup rollout record for deployment %{public}@.", buf, 0xCu);
  }

  rolloutId4 = [(TRIRolloutDeployment *)self->_deployment rolloutId];
  rampId7 = [0 rampId];
  LOBYTE(v99) = 0;
  [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:7 forRollout:rolloutId4 ramp:rampId7 deployment:[(TRIRolloutDeployment *)self->_deployment deploymentId] fps:self->_factorPackSetId namespaces:0 telemetryMetric:0 rolloutRecord:0 isBecomingObsolete:v99 context:v117];

  v42 = v109;
LABEL_37:

  return v42;
}

uint64_t __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v99 = objc_opt_new();
  v4 = *(*(a1 + 32) + 56);
  v5 = [*(a1 + 40) targetedFactorPackSetId];
  if ([v4 isEqual:v5])
  {
    v6 = [*(a1 + 40) targetedTargetingRuleIndex];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 48) rolloutDatabase];
  *(*(*(a1 + 128) + 8) + 24) = [v7 activateDeployment:*(*(a1 + 32) + 48) withFactorPackSetId:*(*(a1 + 32) + 56) targetingRuleIndex:v6 deactivatedDeployments:*(a1 + 56) deactivatedFactorPackSetIds:v99 deactivationStateTransitions:*(a1 + 64) usingTransaction:v3];

  if (*(*(*(a1 + 128) + 8) + 24))
  {
    v8 = *(a1 + 64);
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke_2;
    v108[3] = &unk_279DE3AA0;
    v109 = *(a1 + 40);
    v110 = *(a1 + 48);
    [v8 enumerateKeysAndObjectsUsingBlock:v108];
    v9 = [*(a1 + 48) activationEventDatabase];
    v10 = [*(*(a1 + 32) + 48) rolloutId];
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    v13 = [*(v11 + 48) deploymentId];
    if (*(a1 + 88))
    {
      v14 = *(a1 + 88);
    }

    else
    {
      v14 = &stru_287FA0430;
    }

    LOWORD(v93) = *(a1 + 136);
    v15 = [v9 addRecordWithParentId:v10 factorPackSetId:v12 deploymentId:v13 osBuild:*(a1 + 72) languageCode:*(a1 + 80) regionCode:v14 carrierBundleId:*(a1 + 96) carrierCountryCode:*(a1 + 104) diagnosticsUsageEnabled:v93 hasAne:*(a1 + 112) aneVersion:v3 transaction:?];

    if (!v15)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v83 = *(a1 + 32);
        v84 = *(v83 + 56);
        v85 = *(v83 + 48);
        *buf = 138412546;
        v113 = v84;
        v114 = 2114;
        *v115 = v85;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "error during activation of factorPackSetId {public}%@ for rollout %{public}@: failed to update activation event database", buf, 0x16u);
      }
    }

    *(*(*(a1 + 128) + 8) + 24) = [*(a1 + 120) overwriteActiveFactorProvidersUsingTransaction:v3 fromContext:*(a1 + 48)];
    if (*(*(*(a1 + 128) + 8) + 24) == 1)
    {
      v95 = v6;
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1 + 32) + 48);
        *buf = 138543362;
        v113 = v18;
        _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Activated rollout deployment: %{public}@", buf, 0xCu);
      }

      v19 = 0x279DDD000uLL;
      v20 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:*(*(a1 + 32) + 48)];
      v21 = [*(a1 + 48) contentTracker];
      v22 = [v21 addRefWithContentIdentifier:v20];

      if ((v22 & 1) == 0)
      {
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v86 = [*(*(a1 + 32) + 48) rolloutId];
          v87 = [*(*(a1 + 32) + 48) deploymentId];
          v88 = objc_opt_class();
          v89 = NSStringFromClass(v88);
          *buf = 138543874;
          v113 = v86;
          v114 = 1024;
          *v115 = v87;
          *&v115[4] = 2114;
          *&v115[6] = v89;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to increment ref for rollout deployment: (r: %{public}@, d: %d) in %{public}@", buf, 0x1Cu);

          v19 = 0x279DDD000;
        }
      }

      v24 = [*(v19 + 3168) contentIdentifierForFactorPackSetWithId:*(*(a1 + 32) + 56)];
      v25 = [*(a1 + 48) contentTracker];
      v26 = [v25 addRefWithContentIdentifier:v24];

      if ((v26 & 1) == 0)
      {
        v27 = TRILogCategory_Server();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v90 = *(*(a1 + 32) + 56);
          v91 = objc_opt_class();
          v92 = NSStringFromClass(v91);
          *buf = 138543618;
          v113 = v90;
          v114 = 2114;
          *v115 = v92;
          _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Unable to increment ref for factor pack set: %{public}@ in %{public}@", buf, 0x16u);
        }
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = *(a1 + 56);
      v102 = [obj countByEnumeratingWithState:&v104 objects:v111 count:16];
      if (v102)
      {
        v101 = *v105;
        v96 = a1;
        v97 = v3;
        do
        {
          v28 = 0;
          do
          {
            if (*v105 != v101)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v104 + 1) + 8 * v28);
            v30 = objc_autoreleasePoolPush();
            v31 = [*(a1 + 48) rolloutDatabase];
            v32 = [v31 recordWithDeployment:v29 usingTransaction:v3];

            if (v32)
            {
              v103 = v30;
              v33 = [v99 objectForKeyedSubscript:v29];
              if (v33)
              {
                v34 = [*(a1 + 48) activationEventDatabase];
                v35 = [v32 deployment];
                v36 = [v35 rolloutId];
                v37 = [v32 deployment];
                v38 = [v34 activationEventRecordWithParentId:v36 factorPackSetId:v33 deploymentId:{objc_msgSend(v37, "deploymentId")}];

                if (v38)
                {
                  v39 = [*(*(a1 + 32) + 32) trialSystemTelemetry];
                  v40 = [v39 hasPrevOsBuild];

                  if ((v40 & 1) == 0)
                  {
                    v41 = objc_opt_new();
                    v42 = [v38 osBuild];
                    [v41 setPrevOsBuild:v42];

                    v43 = [v38 regionCode];
                    [v41 setPrevRegionCode:v43];

                    v44 = [v38 languageCode];
                    [v41 setPrevLanguageCode:v44];

                    v45 = MEMORY[0x277CCACA8];
                    v46 = [v38 languageCode];
                    v47 = [v38 regionCode];
                    if (v47)
                    {
                      v48 = [v38 regionCode];
                      v49 = [v45 stringWithFormat:@"%@-%@", v46, v48];

                      a1 = v96;
                    }

                    else
                    {
                      v49 = [v45 stringWithFormat:@"%@-%@", v46, &stru_287FA0430];
                    }

                    [v41 setPrevBcp47DeviceLocale:v49];
                    v50 = [v38 carrierBundleIdentifier];
                    [v41 setPrevCarrierBundleIdentifier:v50];

                    v51 = [v38 carrierCountryIsoCode];
                    [v41 setPrevCarrierCountryIsoCode:v51];

                    [*(*(a1 + 32) + 32) mergeTelemetry:v41];
                  }
                }

                v100 = v38;
                v52 = [v32 deployment];
                v53 = [v52 rolloutId];
                v54 = [v32 rampId];
                [v32 deployment];
                v56 = v55 = a1;
                LOBYTE(v94) = 0;
                +[TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:](TRITaskUtils, "updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:", 4, v53, v54, [v56 deploymentId], v33, 0, 0, v32, v94, *(v55 + 48));

                v57 = [*(v55 + 48) activationEventDatabase];
                v58 = [v32 deployment];
                v59 = [v58 rolloutId];
                v60 = [v32 deployment];
                v61 = [v57 deleteRecordWithParentId:v59 factorPackSetId:v33 deploymentId:{objc_msgSend(v60, "deploymentId")}];

                v19 = 0x279DDD000uLL;
                if (!v61)
                {
                  v62 = TRILogCategory_Server();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    v79 = [v29 rolloutId];
                    *buf = 138543362;
                    v113 = v79;
                    _os_log_error_impl(&dword_26F567000, v62, OS_LOG_TYPE_ERROR, "Unable to clear activation record for deactivated rollout: %{public}@", buf, 0xCu);
                  }

                  v55 = v96;
                }

                v63 = [TRIContentTracker contentIdentifierForFactorPackSetWithId:v33];
                v64 = [*(v55 + 48) contentTracker];
                v65 = [v64 dropRefWithContentIdentifier:v63];

                a1 = v55;
                if ((v65 & 1) == 0)
                {
                  v66 = TRILogCategory_Server();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    v76 = *(*(v55 + 32) + 56);
                    v77 = objc_opt_class();
                    v78 = NSStringFromClass(v77);
                    *buf = 138543618;
                    v113 = v76;
                    v19 = 0x279DDD000;
                    v114 = 2114;
                    *v115 = v78;
                    _os_log_error_impl(&dword_26F567000, v66, OS_LOG_TYPE_ERROR, "Unable to decrement ref for factor pack set: %{public}@ in %{public}@", buf, 0x16u);
                  }
                }

                v3 = v97;
              }

              v30 = v103;
            }

            v67 = [*(v19 + 3168) contentIdentifierForRolloutArtifactWithDeployment:v29];
            v68 = [*(a1 + 48) contentTracker];
            v69 = [v68 dropRefWithContentIdentifier:v67];

            if ((v69 & 1) == 0)
            {
              v70 = TRILogCategory_Server();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = [v29 rolloutId];
                v72 = [v29 deploymentId];
                v73 = objc_opt_class();
                NSStringFromClass(v73);
                v75 = v74 = v30;
                *buf = 138543874;
                v113 = v71;
                v114 = 1024;
                *v115 = v72;
                v19 = 0x279DDD000;
                *&v115[4] = 2114;
                *&v115[6] = v75;
                _os_log_error_impl(&dword_26F567000, v70, OS_LOG_TYPE_ERROR, "Unable to decrement ref for rollout deployment: (r: %{public}@, d: %d) in %{public}@", buf, 0x1Cu);

                v30 = v74;
              }
            }

            objc_autoreleasePoolPop(v30);
            ++v28;
          }

          while (v102 != v28);
          v102 = [obj countByEnumeratingWithState:&v104 objects:v111 count:16];
        }

        while (v102);
      }

      v80 = MEMORY[0x277D42670];
      v6 = v95;
    }

    else
    {
      v80 = MEMORY[0x277D42678];
    }

    v81 = *v80;
  }

  else
  {
    v81 = *MEMORY[0x277D42678];
  }

  return v81;
}

void __74__TRIActivateTargetedRolloutDeploymentTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  v6 = [v15 isEqualToString:@"obsoleted-unknown-previous-state"];
  v7 = [v5 deployment];
  v8 = [v7 rolloutId];
  v9 = [v5 rampId];
  v10 = [v5 deployment];
  v11 = [v10 deploymentId];
  if (v6)
  {
    v12 = [v5 targetedFactorPackSetId];
    v13 = [v5 namespaces];

    LOBYTE(v14) = 1;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v8 ramp:v9 deployment:v11 fps:v12 namespaces:v13 telemetryMetric:0 rolloutRecord:*(a1 + 32) isBecomingObsolete:v14 context:*(a1 + 40)];
  }

  else
  {
    v12 = [v5 activeFactorPackSetId];
    v13 = [v5 namespaces];

    LOBYTE(v14) = 0;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v8 ramp:v9 deployment:v11 fps:v12 namespaces:v13 telemetryMetric:v15 rolloutRecord:*(a1 + 32) isBecomingObsolete:v14 context:*(a1 + 40)];
  }
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
    v8.super_class = TRIActivateTargetedRolloutDeploymentTask;
    if ([(TRIBaseTask *)&v8 isEqual:equalCopy]&& [(TRIActivateTargetedRolloutDeploymentTask *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      if ([(TRIRolloutDeployment *)self->_deployment isEqualToDeployment:v5->_deployment]&& [(TRIFactorPackSetId *)self->_factorPackSetId isEqualToString:v5->_factorPackSetId])
      {
        v6 = [(TRITaskAttributing *)self->_taskAttribution isEqual:v5->_taskAttribution];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TRIActivateTargetedRolloutDeploymentTask;
  v3 = [(TRIBaseTask *)&v7 hash];
  v4 = [(TRIRolloutDeployment *)self->_deployment hash]+ 37 * v3;
  v5 = [(TRIFactorPackSetId *)self->_factorPackSetId hash]+ 37 * v4;
  return [(TRITaskAttributing *)self->_taskAttribution hash]+ 37 * v5;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  rolloutId = [(TRIRolloutDeployment *)self->_deployment rolloutId];
  [v3 setRolloutId:rolloutId];

  [v3 setDeploymentId:{-[TRIRolloutDeployment deploymentId](self->_deployment, "deploymentId")}];
  [v3 setFactorPackSetId:self->_factorPackSetId];
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  asPersistedModifier = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:asPersistedModifier];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIActivateTargetedRolloutDeploymentTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:437 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v3 = [(TRIPBMessage *)TRIActivateTargetedRolloutDeploymentPersistedTask parseFromData:data error:&v31];
  v4 = v31;
  if (!v3)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIActivateTargetedRolloutDeploymentPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (([v3 hasRolloutId] & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138412290;
      v33 = v30;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138412290;
    v33 = v21;
    v22 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_25;
  }

  rolloutId = [v3 rolloutId];
  v6 = [rolloutId length];

  if (!v6)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v23 = objc_opt_class();
    v21 = NSStringFromClass(v23);
    *buf = 138412290;
    v33 = v21;
    v22 = "Cannot decode message of type %@ with field of length 0: rolloutId";
LABEL_25:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);

    goto LABEL_26;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v24 = objc_opt_class();
    v21 = NSStringFromClass(v24);
    *buf = 138412290;
    v33 = v21;
    v22 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_25;
  }

  if (([v3 hasFactorPackSetId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v25 = objc_opt_class();
    v21 = NSStringFromClass(v25);
    *buf = 138412290;
    v33 = v21;
    v22 = "Cannot decode message of type %@ with missing field: factorPackSetId";
    goto LABEL_25;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v21 = NSStringFromClass(v26);
      *buf = 138412290;
      v33 = v21;
      v22 = "Cannot decode message of type %@ with missing field: taskAttribution";
      goto LABEL_25;
    }

LABEL_26:
    v27 = 0;
    goto LABEL_27;
  }

  taskAttribution = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (v8)
  {
    factorPackSetId = [v3 factorPackSetId];
    v10 = TRIValidateFactorPackSetId();

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D737C8]);
      rolloutId2 = [v3 rolloutId];
      v13 = [v11 initWithRolloutId:rolloutId2 deploymentId:{objc_msgSend(v3, "deploymentId")}];

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

      v27 = [objc_opt_class() taskWithDeployment:v13 factorPackSetId:v10 taskAttribution:v8 capabilityModifier:v18];

      goto LABEL_35;
    }
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }
  }

  v27 = 0;
LABEL_35:

LABEL_27:

  return v27;
}

- (unint64_t)requiredCapabilities
{
  v3.receiver = self;
  v3.super_class = TRIActivateTargetedRolloutDeploymentTask;
  return [(TRIBaseTask *)&v3 requiredCapabilities];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  shortDesc = [(TRIRolloutDeployment *)self->_deployment shortDesc];
  factorPackSetId = self->_factorPackSetId;
  applicationBundleIdentifier = [(TRITaskAttributing *)self->_taskAttribution applicationBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@:%@, %@, %@>", v4, shortDesc, factorPackSetId, applicationBundleIdentifier];

  return v8;
}

- (TRIActivateTargetedRolloutDeploymentTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIActivateTargetedRolloutDeploymentTask;
  v5 = [(TRIActivateTargetedRolloutDeploymentTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTargetedRolloutDeploymentTask.m" lineNumber:487 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIActivateTargetedRolloutDeploymentTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end