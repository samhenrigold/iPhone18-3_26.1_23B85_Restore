@interface TRIActivateTreatmentTask
+ (id)parseFromData:(id)data;
+ (id)taskWithExperiment:(id)experiment treatmentId:(id)id factorPackSetId:(id)setId counterfactualTreatments:(id)treatments taskAttributing:(id)attributing requiresTreatmentInstallation:(BOOL)installation capabilityModifier:(id)modifier startTime:(id)self0 taskOptions:(id)self1;
+ (id)taskWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing requiresTreatmentInstallation:(BOOL)installation capabilityModifier:(id)modifier startTime:(id)time taskOptions:(id)options;
- (BOOL)isEqual:(id)equal;
- (NSArray)dependencies;
- (NSString)description;
- (TRIActivateTreatmentTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)_nextTasksForRunStatus:(int)status;
- (id)metrics;
- (id)runTaskUsingContext:(id)context experiment:(id)experiment;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIActivateTreatmentTask

- (TRIActivateTreatmentTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIActivateTreatmentTask;
  v5 = [(TRIActivateTreatmentTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:80 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIActivateTreatmentTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

+ (id)taskWithExperiment:(id)experiment treatmentId:(id)id factorPackSetId:(id)setId counterfactualTreatments:(id)treatments taskAttributing:(id)attributing requiresTreatmentInstallation:(BOOL)installation capabilityModifier:(id)modifier startTime:(id)self0 taskOptions:(id)self1
{
  installationCopy = installation;
  experimentCopy = experiment;
  idCopy = id;
  setIdCopy = setId;
  treatmentsCopy = treatments;
  attributingCopy = attributing;
  modifierCopy = modifier;
  timeCopy = time;
  optionsCopy = options;
  if (!setIdCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];
  }

  v23 = [TRIActivateTreatmentTask taskWithExperiment:experimentCopy treatmentId:idCopy taskAttributing:attributingCopy requiresTreatmentInstallation:installationCopy capabilityModifier:modifierCopy startTime:timeCopy taskOptions:optionsCopy];
  v24 = v23[14];
  v23[14] = setIdCopy;
  v25 = setIdCopy;

  v26 = v23[15];
  v23[15] = treatmentsCopy;

  return v23;
}

+ (id)taskWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing requiresTreatmentInstallation:(BOOL)installation capabilityModifier:(id)modifier startTime:(id)time taskOptions:(id)options
{
  installationCopy = installation;
  experimentCopy = experiment;
  idCopy = id;
  attributingCopy = attributing;
  modifierCopy = modifier;
  timeCopy = time;
  optionsCopy = options;
  if (!experimentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
  }

  if (([experimentCopy hasDeploymentId] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"experiment.hasDeploymentId"}];
  }

  v22 = [(TRIActivateTreatmentBaseTask *)[TRIActivateTreatmentTask alloc] initWithExperiment:experimentCopy treatmentId:idCopy taskAttributing:attributingCopy requiresTreatmentInstallation:installationCopy];
  [(TRIActivateTreatmentBaseTask *)v22 setStartTime:timeCopy];
  [(TRIActivateTreatmentTask *)v22 setRetryCount:0];
  capabilityModifier = v22->_capabilityModifier;
  v22->_capabilityModifier = modifierCopy;
  v24 = modifierCopy;

  taskOptions = v22->_taskOptions;
  v22->_taskOptions = optionsCopy;

  return v22;
}

- (unint64_t)requiredCapabilities
{
  v3.receiver = self;
  v3.super_class = TRIActivateTreatmentTask;
  return [(TRIBaseTask *)&v3 requiredCapabilities];
}

- (NSArray)dependencies
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(TRIActivateTreatmentTask *)self testingIgnoreDependencies])
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (![(TRIActivateTreatmentBaseTask *)self requiresTreatmentInstallation])
  {
    experiment = [(TRIExperimentBaseTask *)self experiment];
    taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
    v12 = [TRIFetchExperimentTask taskWithExperimentDeployment:experiment taskAttributing:taskAttributing];
    v22 = v12;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

LABEL_13:
    goto LABEL_14;
  }

  v3 = objc_opt_new();
  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];

  if (factorPackSetId)
  {
    factorPackSetId2 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
    taskAttributing2 = [(TRITreatmentBaseTask *)self taskAttributing];
    experiment2 = [(TRIExperimentBaseTask *)self experiment];
    v9 = [TRIFetchFactorPackSetTask taskWithFactorPackSetId:factorPackSetId2 treatmentId:treatmentId isCounterfactualTreatment:0 taskAttribution:taskAttributing2 experimentDeployment:experiment2];
    [v3 addObject:v9];
  }

  else
  {
    factorPackSetId2 = [(TRIExperimentBaseTask *)self experiment];
    treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
    taskAttributing2 = [(TRITreatmentBaseTask *)self taskAttributing];
    experiment2 = [TRIFetchTreatmentTask taskWithExperiment:factorPackSetId2 treatmentId:treatmentId taskAttributing:taskAttributing2 capabilityModifier:self->_capabilityModifier];
    [v3 addObject:experiment2];
  }

  counterfactualTreatments = [(TRIActivateTreatmentTask *)self counterfactualTreatments];

  if (counterfactualTreatments)
  {
    counterfactualTreatments2 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __40__TRIActivateTreatmentTask_dependencies__block_invoke;
    v20[3] = &unk_279DE3B38;
    v20[4] = self;
    v21 = v3;
    [counterfactualTreatments2 enumerateKeysAndObjectsUsingBlock:v20];
  }

  if (![v3 count])
  {
    experiment = TRILogCategory_Server();
    if (os_log_type_enabled(experiment, OS_LOG_TYPE_FAULT))
    {
      experiment3 = [(TRIExperimentBaseTask *)self experiment];
      experimentId = [experiment3 experimentId];
      treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
      factorPackSetId3 = [(TRIActivateTreatmentTask *)self factorPackSetId];
      *buf = 138412802;
      v24 = experimentId;
      v25 = 2112;
      v26 = treatmentId2;
      v27 = 2112;
      v28 = factorPackSetId3;
      _os_log_fault_impl(&dword_26F567000, experiment, OS_LOG_TYPE_FAULT, "Activate treatment task isn't queueing a fetch FPS or fetch treatmentV1. (ExperimentId: %@, TreatmentId: %@, FPSId:%@)", buf, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_14:

  return v3;
}

void __40__TRIActivateTreatmentTask_dependencies__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) experiment];
    v9 = [v8 experimentId];
    v10 = [*(a1 + 32) treatmentId];
    v11 = [*(a1 + 32) factorPackSetId];
    v16 = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Queueing counterfactual FPS fetch (ExperimentId: %@, TreatmentId: %@, FPSId: %@)", &v16, 0x20u);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) taskAttributing];
  v14 = [*(a1 + 32) experiment];
  v15 = [TRIFetchFactorPackSetTask taskWithFactorPackSetId:v5 treatmentId:v6 isCounterfactualTreatment:1 taskAttribution:v13 experimentDeployment:v14];

  [v12 addObject:v15];
}

- (id)runTaskUsingContext:(id)context experiment:(id)experiment
{
  v146 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  experimentCopy = experiment;
  v110 = contextCopy;
  v108 = experimentCopy;
  if ([TRIUserAdjustableSettings getExperimentOptOut:contextCopy])
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      experimentDeployment = [v108 experimentDeployment];
      experimentId = [experimentDeployment experimentId];
      experimentDeployment2 = [v108 experimentDeployment];
      *buf = 138543618;
      *&buf[4] = experimentId;
      *&buf[12] = 1026;
      *&buf[14] = [experimentDeployment2 deploymentId];
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Skipping activation of treatment for experiment: %{public}@ (deployment: %{public}d) due to user opt-out of experiments", buf, 0x12u);
    }

    v13 = [TRITaskRunResult resultWithRunStatus:4 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
  }

  else
  {
    v95 = a2;
    selfCopy = self;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke;
    v135[3] = &unk_279DE3B60;
    v14 = experimentCopy;
    v136 = v14;
    v101 = MEMORY[0x2743948D0](v135);
    paths = [contextCopy paths];
    namespaceDescriptorsExperimentDir = [paths namespaceDescriptorsExperimentDir];

    if (!namespaceDescriptorsExperimentDir)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:211 description:@"no namespace descriptor directory"];
    }

    experimentDeployment3 = [v14 experimentDeployment];
    v131 = 0;
    v132 = &v131;
    v133 = 0x2020000000;
    v134 = 3;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v143 = __Block_byref_object_copy__44;
    v144 = __Block_byref_object_dispose__44;
    v145 = @"reason-not-set";
    v16 = [TRISystemCovariates alloc];
    paths2 = [contextCopy paths];
    v111 = [(TRISystemCovariates *)v16 initWithPaths:paths2];

    dictionary = [(TRISystemCovariates *)v111 dictionary];
    v104 = [dictionary valueForKey:@"OSBuild"];

    dictionary2 = [(TRISystemCovariates *)v111 dictionary];
    v107 = [dictionary2 valueForKey:@"UserSettingsLanguageCode"];

    dictionary3 = [(TRISystemCovariates *)v111 dictionary];
    v106 = [dictionary3 valueForKey:@"UserSettingsRegionCode"];

    dictionary4 = [(TRISystemCovariates *)v111 dictionary];
    v103 = [dictionary4 valueForKey:@"BCP47DeviceLocale"];

    if (v103)
    {
      v22 = [v103 componentsSeparatedByString:@"-"];
      firstObject = [v22 firstObject];

      v24 = [v103 componentsSeparatedByString:@"-"];
      lastObject = [v24 lastObject];

      if (lastObject)
      {
        v26 = lastObject;
      }

      else
      {
        v26 = &stru_287FA0430;
      }

      v106 = v26;

      v107 = firstObject;
    }

    dictionary5 = [(TRISystemCovariates *)v111 dictionary];
    v28 = [dictionary5 valueForKey:@"CarrierBundleIdentifier"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_287FA0430;
    }

    v100 = v30;

    dictionary6 = [(TRISystemCovariates *)v111 dictionary];
    v32 = [dictionary6 valueForKey:@"CarrierCountryIsoCode"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = &stru_287FA0430;
    }

    v99 = v34;

    dictionary7 = [(TRISystemCovariates *)v111 dictionary];
    v36 = [dictionary7 valueForKey:@"DiagnosticsUsageEnabled"];
    bOOLValue = [v36 BOOLValue];

    dictionary8 = [(TRISystemCovariates *)v111 dictionary];
    v39 = [dictionary8 valueForKey:@"HasANE"];
    bOOLValue2 = [v39 BOOLValue];

    dictionary9 = [(TRISystemCovariates *)v111 dictionary];
    v42 = [dictionary9 valueForKey:@"ANEVersion"];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = &stru_287FA0430;
    }

    v98 = v44;

    if (!v104)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:v95 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"osBuild"}];
    }

    if (!v107)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:v95 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"languageCode"}];
    }

    if (!v106)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:v95 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"regionCode"}];
    }

    experimentDatabase = [contextCopy experimentDatabase];
    v46 = [experimentDatabase experimentRecordWithExperimentDeployment:experimentDeployment3];

    if (v46 && [v46 status] == 1)
    {
      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        experiment = [(TRIExperimentBaseTask *)selfCopy experiment];
        experimentId2 = [experiment experimentId];
        *v138 = 138543362;
        v139 = experimentId2;
        _os_log_impl(&dword_26F567000, v47, OS_LOG_TYPE_DEFAULT, "Experiment %{public}@ is already activated, nothing to do.", v138, 0xCu);
      }

      notify_post("com.apple.trial.ActivateTreatmentTaskComplete");
      v13 = v101[2](v101, 2, MEMORY[0x277CBEBF8], 0, 0);
    }

    else
    {

      experimentDatabase2 = [contextCopy experimentDatabase];
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_171;
      v116[3] = &unk_279DE3BB0;
      v96 = contextCopy;
      v117 = v96;
      v118 = experimentDeployment3;
      v119 = selfCopy;
      v127 = &v131;
      v128 = buf;
      v120 = v104;
      v121 = v107;
      v122 = v106;
      v123 = v100;
      v124 = v99;
      v129 = bOOLValue;
      v130 = bOOLValue2;
      v125 = v98;
      v97 = v14;
      v126 = v97;
      [experimentDatabase2 writeTransactionWithFailableBlock:v116];

      endTime = [(TRIActivateTreatmentBaseTask *)selfCopy endTime];
      v52 = endTime == 0;

      if (v52)
      {
        endDate = [v97 endDate];
        [(TRIActivateTreatmentBaseTask *)selfCopy setEndTime:endDate];
      }

      v54 = TRILogCategory_Server();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        treatmentId = [(TRITreatmentBaseTask *)selfCopy treatmentId];
        experiment2 = [(TRIExperimentBaseTask *)selfCopy experiment];
        shortDesc = [experiment2 shortDesc];
        *v138 = 138412546;
        v139 = treatmentId;
        v140 = 2114;
        v141 = shortDesc;
        _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "notify about updates to namespaces in treatment %@ for experiment %{public}@", v138, 0x16u);
      }

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      namespaces = [v97 namespaces];
      v59 = [namespaces countByEnumeratingWithState:&v112 objects:v137 count:16];
      if (v59)
      {
        v60 = *v113;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v113 != v60)
            {
              objc_enumerationMutation(namespaces);
            }

            v62 = *(*(&v112 + 1) + 8 * i);
            v63 = TRILogCategory_Server();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              name = [v62 name];
              *v138 = 138543362;
              v139 = name;
              _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEFAULT, "notify about updates to namespace %{public}@", v138, 0xCu);
            }

            v65 = MEMORY[0x277D73790];
            name2 = [v62 name];
            [v65 notifyUpdateForNamespaceName:name2];
          }

          v59 = [namespaces countByEnumeratingWithState:&v112 objects:v137 count:16];
        }

        while (v59);
      }

      if (*(v132 + 6) == 2)
      {
        [TRIBiomeExperimentUpdateStreamWriter writeExperimentUpdateWithRecord:v97 withExperimentStateIsActive:1 withUserId:0];
        experiment3 = [(TRIExperimentBaseTask *)selfCopy experiment];
        v68 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:experiment3];

        contentTracker = [v96 contentTracker];
        [contentTracker addRefWithContentIdentifier:v68];

        v70 = [TRIExperimentPostLaunchEvent activatedEventWithExperimentRecord:v97];
        v71 = [TRIExperimentPostLaunchRecorder recorderFromContext:v96];
        if (([v71 recordEvent:v70] & 1) == 0)
        {
          v72 = TRILogCategory_Server();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            treatmentId2 = [(TRITreatmentBaseTask *)selfCopy treatmentId];
            experiment4 = [(TRIExperimentBaseTask *)selfCopy experiment];
            *v138 = 138412546;
            v139 = treatmentId2;
            v140 = 2114;
            v141 = experiment4;
            _os_log_error_impl(&dword_26F567000, v72, OS_LOG_TYPE_ERROR, "Treatment is active but we failed to update experiment history database for treatment %@ for experiment %{public}@:. We will retry running the task.", v138, 0x16u);
          }

          *(v132 + 6) = 1;
        }

        if ([(TRIActivateTreatmentBaseTask *)selfCopy requiresTreatmentInstallation])
        {
          v73 = [(TRIExperimentBaseTask *)selfCopy containerForFirstNamespaceInExperimentWithContext:v96];
          treatmentId3 = [(TRITreatmentBaseTask *)selfCopy treatmentId];
          v75 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:treatmentId3 container:v73];

          contentTracker2 = [v96 contentTracker];
          [contentTracker2 addRefWithContentIdentifier:v75];
        }
      }

      v77 = *(v132 + 6);
      if (v77 == 3)
      {
        experiment5 = [(TRIExperimentBaseTask *)selfCopy experiment];
        experimentId3 = [experiment5 experimentId];
        experiment6 = [(TRIExperimentBaseTask *)selfCopy experiment];
        deploymentId = [experiment6 deploymentId];
        treatmentId4 = [(TRITreatmentBaseTask *)selfCopy treatmentId];
        v83 = [TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:experimentId3 deploymentId:deploymentId treatmentId:treatmentId4];

        v84 = [TRIExperimentPostLaunchEvent failureEventWithEventType:8 treatmentTriple:v83 failureReason:*(*&buf[8] + 40)];
        if (!v84)
        {
          currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler5 handleFailureInMethod:v95 object:selfCopy file:@"TRIActivateTreatmentTask.m" lineNumber:484 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent failureEventWithEventType:TRIInternalExperimentAllocationStatusTypeTreatmentActivationFailure treatmentTriple:triple failureReason:failureReason]"}];
        }

        v85 = [TRIExperimentPostLaunchRecorder recorderFromContext:v96];
        [v85 recordEvent:v84];

        v77 = *(v132 + 6);
      }

      v86 = [(TRIActivateTreatmentTask *)selfCopy _nextTasksForRunStatus:v77];
      v13 = (v101)[2](v101, v77, v86, 1, 0);

      notify_post("com.apple.trial.ActivateTreatmentTaskComplete");
      v46 = v117;
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v131, 8);
  }

  return v13;
}

id __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x277CBEBF8];
  if (a3)
  {
    v7 = a3;
  }

  v8 = v7;
  v9 = [*(a1 + 32) artifact];
  v10 = [v9 experiment];
  v11 = [v10 hasLowLevelConfiguration];

  if (v11)
  {
    v12 = objc_opt_new();
    v13 = [v8 arrayByAddingObject:v12];

    v8 = v13;
  }

  v14 = [TRITaskRunResult resultWithRunStatus:a2 reportResultToServer:a4 nextTasks:v8 earliestRetryDate:0];

  return v14;
}

TRINamespaceResolverStorage *__59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_171(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) experimentDatabase];
  v5 = [v4 setStatus:1 forExperimentDeployment:*(a1 + 40) usingTransaction:v3];

  if ((v5 & 1) == 0)
  {
    v42 = TRILogCategory_Server();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v49 = [*(a1 + 48) treatmentId];
      v50 = [*(a1 + 48) experiment];
      *buf = 138412546;
      *&buf[4] = v49;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      _os_log_error_impl(&dword_26F567000, v42, OS_LOG_TYPE_ERROR, "failed to activate treatment %@ for experiment %{public}@: failed to update database", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v6 = *(*(a1 + 48) + 96);
  if (v6)
  {
    if ([v6 hasIsManuallyTargeted])
    {
      v7 = [*(a1 + 32) experimentDatabase];
      v8 = [v7 setManuallyTargeted:objc_msgSend(*(*(a1 + 48) + 96) forExperimentDeployment:"isManuallyTargeted") usingTransaction:{*(a1 + 40), v3}];

      if ((v8 & 1) == 0)
      {
        v45 = TRILogCategory_Server();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v68 = [*(a1 + 48) treatmentId];
          v69 = [*(a1 + 48) experiment];
          *buf = 138412546;
          *&buf[4] = v68;
          *&buf[12] = 2114;
          *&buf[14] = v69;
          _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "failed to activate treatment %@ for experiment %{public}@: failed to update database", buf, 0x16u);
        }

        *(*(*(a1 + 112) + 8) + 24) = 3;
        v46 = *(*(a1 + 120) + 8);
        v47 = *(v46 + 40);
        *(v46 + 40) = @"database-failure";

        goto LABEL_26;
      }
    }
  }

  v9 = [*(a1 + 32) activationEventDatabase];
  v10 = [*(a1 + 40) experimentId];
  v11 = [*(a1 + 48) treatmentId];
  v12 = [*(a1 + 40) deploymentId];
  if (*(a1 + 72))
  {
    v13 = *(a1 + 72);
  }

  else
  {
    v13 = &stru_287FA0430;
  }

  LOWORD(v74) = *(a1 + 128);
  v14 = [v9 addRecordWithParentId:v10 factorPackSetId:v11 deploymentId:v12 osBuild:*(a1 + 56) languageCode:*(a1 + 64) regionCode:v13 carrierBundleId:*(a1 + 80) carrierCountryCode:*(a1 + 88) diagnosticsUsageEnabled:v74 hasAne:*(a1 + 96) aneVersion:v3 transaction:?];

  if (!v14)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v64 = [*(a1 + 48) treatmentId];
      v65 = [*(a1 + 48) experiment];
      *buf = 138412546;
      *&buf[4] = v64;
      *&buf[12] = 2114;
      *&buf[14] = v65;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "error during activation of treatment %@ for experiment %{public}@: failed to update activation event database", buf, 0x16u);
    }
  }

  if (![*(a1 + 48) requiresTreatmentInstallation])
  {
    goto LABEL_48;
  }

  v16 = [*(a1 + 32) experimentDatabase];
  v17 = [v16 treatmentURLsForExperimentDeployment:*(a1 + 40) usingTransaction:v3];

  if (!v17)
  {
    v42 = TRILogCategory_Server();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v66 = [*(a1 + 48) treatmentId];
      v67 = [*(a1 + 48) experiment];
      *buf = 138412546;
      *&buf[4] = v66;
      *&buf[12] = 2114;
      *&buf[14] = v67;
      _os_log_error_impl(&dword_26F567000, v42, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: failed to read treatment paths", buf, 0x16u);
    }

LABEL_25:

    *(*(*(a1 + 112) + 8) + 24) = 1;
    goto LABEL_26;
  }

  v75 = [[TRIUserCovariates alloc] initWithContext:*(a1 + 32)];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v82 = __Block_byref_object_copy__44;
  v83 = __Block_byref_object_dispose__44;
  v84 = 0;
  v18 = [*(a1 + 32) experimentDatabase];
  v19 = [*(a1 + 48) experiment];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_173;
  v76[3] = &unk_279DE3B88;
  v76[4] = buf;
  [v18 enumerateNamespaceRecordsForExperimentDeployment:v19 usingTransaction:v3 block:v76];

  if (*(*&buf[8] + 40))
  {
    v20 = [*(a1 + 32) namespaceDatabase];
    v21 = [v20 dynamicNamespaceRecordWithNamespaceName:*(*&buf[8] + 40)];

    if (v21)
    {
      v22 = [*(a1 + 48) taskAttributing];
      v23 = [v22 applicationBundleIdentifier];

      if (v23)
      {
        v24 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_bundle_id" value:v23];
        [*(a1 + 48) addDimension:v24];
        v25 = [(TRIUserCovariates *)v75 tri_shortVersionStringForBundleId:v23];
        v26 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_version" value:v25];
        [*(a1 + 48) addDimension:v26];
      }
    }
  }

  v27 = *(a1 + 48);
  v28 = [*(a1 + 32) paths];
  v29 = [v27 _writeNamespaceDescriptorsWithPaths:v28 toTreatmentLayer:4 forExperiment:*(a1 + 104) treatmentURLs:v17 context:*(a1 + 32)];

  if (v29)
  {
    v30 = [TRINamespaceResolverStorage alloc];
    v31 = [*(a1 + 32) paths];
    v32 = [(TRINamespaceResolverStorage *)v30 initWithPaths:v31];

    v33 = *(a1 + 48);
    if (v33[14])
    {
      v34 = [TRIFactorPackSetStorage alloc];
      v35 = [*(a1 + 32) paths];
      v36 = [(TRIFactorPackSetStorage *)v34 initWithPaths:v35];

      v37 = [(TRIFactorPackSetStorage *)v36 hasFactorPackSetWithId:*(*(a1 + 48) + 112) path:0];
      v38 = *(a1 + 48);
      if (v37)
      {
        v39 = [v38 experiment];
        v40 = [*(a1 + 48) treatmentId];
        v41 = [v32 rewriteExperimentDeployment:v39 targetedTreatmentId:v40 factorPackSetId:*(*(a1 + 48) + 112)];

        if (v41)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

      v54 = [v38 experiment];
      v55 = [*(a1 + 48) treatmentId];
      v53 = [v32 rewriteExperimentDeployment:v54 targetedTreatmentId:v55];

      v56 = TRILogCategory_Server();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v72 = [*(a1 + 48) treatmentId];
        v73 = *(*(a1 + 48) + 112);
        *v77 = 138412546;
        v78 = v72;
        v79 = 2112;
        v80 = v73;
        _os_log_error_impl(&dword_26F567000, v56, OS_LOG_TYPE_ERROR, "Activating treatment (%@) without FPS (%@): The fetch seems to have failed.", v77, 0x16u);
      }
    }

    else
    {
      v51 = [v33 experiment];
      v52 = [*(a1 + 48) treatmentId];
      v53 = [v32 rewriteExperimentDeployment:v51 targetedTreatmentId:v52];
    }

    if (v53)
    {
LABEL_46:

      goto LABEL_47;
    }

LABEL_43:
    v57 = TRILogCategory_Server();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *v77 = 0;
      _os_log_error_impl(&dword_26F567000, v57, OS_LOG_TYPE_ERROR, "Unable to update on-disk experiment deployment directory.", v77, 2u);
    }

    goto LABEL_46;
  }

  v48 = TRILogCategory_Server();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v70 = [*(a1 + 48) treatmentId];
    v71 = [*(a1 + 48) experiment];
    *v77 = 138412546;
    v78 = v70;
    v79 = 2114;
    v80 = v71;
    _os_log_error_impl(&dword_26F567000, v48, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: failed to save namespace descriptors", v77, 0x16u);
  }

  *(*(*(a1 + 112) + 8) + 24) = 1;
  v32 = *MEMORY[0x277D42678];
LABEL_47:
  _Block_object_dispose(buf, 8);

  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_48:
  v58 = [TRINamespaceResolverStorage alloc];
  v59 = [*(a1 + 32) paths];
  v60 = [(TRINamespaceResolverStorage *)v58 initWithPaths:v59];

  if ([(TRINamespaceResolverStorage *)v60 overwriteActiveFactorProvidersUsingTransaction:v3 fromContext:*(a1 + 32)])
  {

    *(*(*(a1 + 112) + 8) + 24) = 2;
    v43 = MEMORY[0x277D42670];
    goto LABEL_27;
  }

  v61 = TRILogCategory_Server();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v61, OS_LOG_TYPE_ERROR, "Unable to update the factor providers after experiment activation.", buf, 2u);
  }

  *(*(*(a1 + 112) + 8) + 24) = 3;
  v62 = *(*(a1 + 120) + 8);
  v63 = *(v62 + 40);
  *(v62 + 40) = @"storage-overwrite-failure";

LABEL_26:
  v43 = MEMORY[0x277D42678];
LABEL_27:
  v32 = *v43;
LABEL_28:

  return v32;
}

void __59__TRIActivateTreatmentTask_runTaskUsingContext_experiment___block_invoke_173(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 name];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

- (id)_nextTasksForRunStatus:(int)status
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (status == 2)
  {
    endTime = [(TRIActivateTreatmentBaseTask *)self endTime];

    if (!endTime)
    {
      experiment5 = TRILogCategory_Server();
      if (os_log_type_enabled(experiment5, OS_LOG_TYPE_DEBUG))
      {
        treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
        experiment = [(TRIExperimentBaseTask *)self experiment];
        experimentId = [experiment experimentId];
        v27 = 138412546;
        v28 = treatmentId;
        v29 = 2114;
        v30 = experimentId;
        _os_log_debug_impl(&dword_26F567000, experiment5, OS_LOG_TYPE_DEBUG, "not scheduling deactivation of treatment %@ for experiment %{public}@ since end time is nil", &v27, 0x16u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_9;
    }

    experiment2 = [(TRIExperimentBaseTask *)self experiment];
    experimentId2 = [experiment2 experimentId];
    experiment3 = [(TRIExperimentBaseTask *)self experiment];
    deploymentId = [experiment3 deploymentId];
    endTime2 = [(TRIActivateTreatmentBaseTask *)self endTime];
    taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
    experiment5 = [TRIDeactivateTreatmentTask taskWithExperimentId:experimentId2 deploymentId:deploymentId startTime:endTime2 failOnUnrecognizedExperiment:1 triggerEvent:2 taskAttribution:taskAttributing];

    experimentId4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(60 * arc4random_uniform(0x1Eu))];
    experiment4 = [(TRIExperimentBaseTask *)self experiment];
    experimentId3 = [experiment4 experimentId];
    v21 = [TRISubscribeChannelTask taskWithExperimentId:experimentId3 startTime:experimentId4];

    v31[0] = experiment5;
    v31[1] = v21;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];

LABEL_8:
LABEL_9:

    goto LABEL_11;
  }

  if (status == 3)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
      v27 = 138412290;
      v28 = treatmentId2;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to activate treatment id %@", &v27, 0xCu);
    }

    experiment5 = [(TRIExperimentBaseTask *)self experiment];
    experimentId4 = [experiment5 experimentId];
    experiment6 = [(TRIExperimentBaseTask *)self experiment];
    deploymentId2 = [experiment6 deploymentId];
    taskAttributing2 = [(TRITreatmentBaseTask *)self taskAttributing];
    v10 = [TRIDeactivateTreatmentTask taskWithExperimentId:experimentId4 deploymentId:deploymentId2 failOnUnrecognizedExperiment:1 triggerEvent:10 taskAttribution:taskAttributing2];
    v32[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

    goto LABEL_8;
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_11:

  return v11;
}

- (id)metrics
{
  v10.receiver = self;
  v10.super_class = TRIActivateTreatmentTask;
  metrics = [(TRITreatmentBaseTask *)&v10 metrics];
  v4 = metrics;
  v5 = MEMORY[0x277CBEBF8];
  if (metrics)
  {
    v5 = metrics;
  }

  v6 = v5;

  if (self->_treatmentMetric)
  {
    v7 = [v6 arrayByAddingObject:?];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
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

  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];

  if (factorPackSetId)
  {
    factorPackSetId2 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    [v3 setFactorPackSetId:factorPackSetId2];
  }

  counterfactualTreatments = [(TRIActivateTreatmentTask *)self counterfactualTreatments];

  if (counterfactualTreatments)
  {
    counterfactualTreatments2 = [(TRIActivateTreatmentTask *)self counterfactualTreatments];
    v12 = [counterfactualTreatments2 mutableCopy];
    [v3 setCounterfactualTreatments:v12];
  }

  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  asPersistedTaskAttribution = [taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  startTime = [(TRIActivateTreatmentBaseTask *)self startTime];

  if (startTime)
  {
    v16 = objc_alloc(MEMORY[0x277D73B88]);
    startTime2 = [(TRIActivateTreatmentBaseTask *)self startTime];
    v18 = [v16 initWithDate:startTime2];
    [v3 setStartTimestamp:v18];
  }

  endTime = [(TRIActivateTreatmentBaseTask *)self endTime];

  if (endTime)
  {
    v20 = objc_alloc(MEMORY[0x277D73B88]);
    endTime2 = [(TRIActivateTreatmentBaseTask *)self endTime];
    v22 = [v20 initWithDate:endTime2];
    [v3 setEndTimestamp:v22];
  }

  [v3 setRequiresTreatmentInstallation:{-[TRIActivateTreatmentBaseTask requiresTreatmentInstallation](self, "requiresTreatmentInstallation")}];
  asPersistedModifier = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:asPersistedModifier];

  if (self->_taskOptions)
  {
    [v3 setTaskOptions:?];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIActivateTreatmentTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentTask.m" lineNumber:573 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v70 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v4 = [(TRIPBMessage *)TRIActivateTreatmentPersistedTask parseFromData:data error:&v67];
  v5 = v67;
  if (!v4)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_32:
      v36 = 0;
      goto LABEL_33;
    }

    *buf = 138543362;
    v69 = v5;
    v21 = "Unable to parse buffer as TRIActivateTreatmentPersistedTask: %{public}@";
    v22 = v11;
    v23 = 12;
LABEL_14:
    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    goto LABEL_32;
  }

  if (([v4 hasExperimentId] & 1) == 0)
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138412290;
      v69 = v34;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
    }

    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    *buf = 138412290;
    v69 = v26;
    v27 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_31;
  }

  experimentId = [v4 experimentId];
  v7 = [experimentId length];

  if (!v7)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v28 = objc_opt_class();
    v26 = NSStringFromClass(v28);
    *buf = 138412290;
    v69 = v26;
    v27 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_31:
    _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);

    goto LABEL_32;
  }

  if (([v4 hasTreatmentId] & 1) == 0)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138412290;
      v69 = v39;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: treatmentId", buf, 0xCu);
    }

    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v30 = objc_opt_class();
    v26 = NSStringFromClass(v30);
    *buf = 138412290;
    v69 = v26;
    v27 = "Cannot decode message of type %@ with missing field: treatmentId";
    goto LABEL_31;
  }

  treatmentId = [v4 treatmentId];
  v9 = [treatmentId length];

  if (!v9)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v31 = objc_opt_class();
    v26 = NSStringFromClass(v31);
    *buf = 138412290;
    v69 = v26;
    v27 = "Cannot decode message of type %@ with field of length 0: treatmentId";
    goto LABEL_31;
  }

  if (([v4 hasDeploymentId] & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v32 = objc_opt_class();
    v26 = NSStringFromClass(v32);
    *buf = 138412290;
    v69 = v26;
    v27 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_31;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v35 = objc_opt_class();
    v26 = NSStringFromClass(v35);
    *buf = 138412290;
    v69 = v26;
    v27 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_31;
  }

  if ([v4 deploymentId] == -1)
  {
    v11 = TRILogCategory_Server();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v21 = "TRIActivateTreatmentPersistedTask encodes unspecified deploymentId.";
    v22 = v11;
    v23 = 2;
    goto LABEL_14;
  }

  taskAttribution = [v4 taskAttribution];
  v11 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (!v11)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v36 = 0;
    goto LABEL_75;
  }

  v12 = objc_alloc(MEMORY[0x277D736C0]);
  experimentId2 = [v4 experimentId];
  v14 = [v12 initWithExperimentId:experimentId2 deploymentId:{objc_msgSend(v4, "deploymentId")}];

  if ([v4 hasCapabilityModifier])
  {
    v15 = [TRITaskCapabilityModifier alloc];
    capabilityModifier = [v4 capabilityModifier];
    v17 = [capabilityModifier add];
    [v4 capabilityModifier];
    v19 = v18 = v14;
    v20 = -[TRITaskCapabilityModifier initWithAdd:remove:](v15, "initWithAdd:remove:", v17, [v19 remove]);

    v14 = v18;
  }

  else
  {
    v20 = objc_opt_new();
  }

  if ([v4 counterfactualTreatments_Count])
  {
    v40 = objc_opt_new();
    counterfactualTreatments = [v4 counterfactualTreatments];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __42__TRIActivateTreatmentTask_parseFromData___block_invoke;
    v65[3] = &unk_279DDF658;
    v64 = v40;
    v66 = v64;
    [counterfactualTreatments enumerateKeysAndObjectsUsingBlock:v65];
  }

  else
  {
    v64 = 0;
  }

  hasFactorPackSetId = [v4 hasFactorPackSetId];
  v43 = objc_opt_class();
  treatmentId2 = [v4 treatmentId];
  if (hasFactorPackSetId)
  {
    factorPackSetId = [v4 factorPackSetId];
    if ([v4 hasRequiresTreatmentInstallation])
    {
      requiresTreatmentInstallation = [v4 requiresTreatmentInstallation];
    }

    else
    {
      requiresTreatmentInstallation = 1;
    }

    hasStartTimestamp = [v4 hasStartTimestamp];
    if (hasStartTimestamp)
    {
      hasFactorPackSetId = [v4 startTimestamp];
      date = [hasFactorPackSetId date];
    }

    else
    {
      date = 0;
    }

    if ([v4 hasTaskOptions])
    {
      [v4 taskOptions];
      v59 = hasFactorPackSetId;
      v48 = factorPackSetId;
      v49 = treatmentId2;
      v50 = v20;
      v52 = v51 = v14;
      v36 = [v43 taskWithExperiment:v51 treatmentId:v49 factorPackSetId:v48 counterfactualTreatments:v64 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation capabilityModifier:v50 startTime:date taskOptions:v52];

      v14 = v51;
      v20 = v50;
      treatmentId2 = v49;
      factorPackSetId = v48;
      hasFactorPackSetId = v59;
    }

    else
    {
      v36 = [v43 taskWithExperiment:v14 treatmentId:treatmentId2 factorPackSetId:factorPackSetId counterfactualTreatments:v64 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation capabilityModifier:v20 startTime:date taskOptions:0];
    }

    if (!hasStartTimestamp)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v62 = v43;
    if ([v4 hasRequiresTreatmentInstallation])
    {
      requiresTreatmentInstallation2 = [v4 requiresTreatmentInstallation];
    }

    else
    {
      requiresTreatmentInstallation2 = 1;
    }

    hasStartTimestamp2 = [v4 hasStartTimestamp];
    if (hasStartTimestamp2)
    {
      factorPackSetId = [v4 startTimestamp];
      hasFactorPackSetId = [factorPackSetId date];
    }

    else
    {
      hasFactorPackSetId = 0;
    }

    if ([v4 hasTaskOptions])
    {
      [v4 taskOptions];
      v61 = factorPackSetId;
      v53 = treatmentId2;
      v55 = v54 = v20;
      v36 = [v62 taskWithExperiment:v14 treatmentId:v53 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation2 capabilityModifier:v54 startTime:hasFactorPackSetId taskOptions:v55];

      v20 = v54;
      treatmentId2 = v53;
      factorPackSetId = v61;
    }

    else
    {
      v36 = [v62 taskWithExperiment:v14 treatmentId:treatmentId2 taskAttributing:v11 requiresTreatmentInstallation:requiresTreatmentInstallation2 capabilityModifier:v20 startTime:hasFactorPackSetId taskOptions:0];
    }

    if (!hasStartTimestamp2)
    {
      goto LABEL_69;
    }
  }

LABEL_68:
LABEL_69:

  if ([v4 hasEndTimestamp])
  {
    endTimestamp = [v4 endTimestamp];
    date2 = [endTimestamp date];
    [v36 setEndTime:date2];
  }

  if ([v4 hasRetryCount])
  {
    retryCount = [v4 retryCount];
  }

  else
  {
    retryCount = 0;
  }

  [v36 setRetryCount:retryCount];

LABEL_75:
LABEL_33:

  return v36;
}

void __42__TRIActivateTreatmentTask_parseFromData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRIValidateFactorPackSetId();
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Invalid FPS ID for counterfactuals in TRIActivateTreatmentPersistedTask: %{public}@", &v9, 0xCu);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  shortDesc = [experiment shortDesc];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];
  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  applicationBundleIdentifier = [taskAttributing applicationBundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@:%@, %@, %@, %@, r:%d>", v4, shortDesc, treatmentId, factorPackSetId, applicationBundleIdentifier, -[TRIActivateTreatmentTask retryCount](self, "retryCount")];

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRIActivateTreatmentTask;
  v3 = [(TRIActivateTreatmentBaseTask *)&v8 hash];
  factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];
  if (factorPackSetId)
  {
    factorPackSetId2 = [(TRIActivateTreatmentTask *)self factorPackSetId];
    v6 = [factorPackSetId2 hash];
  }

  else
  {
    v6 = 0;
  }

  return v6 + 37 * v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(factorPackSetId2) = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TRIActivateTreatmentTask;
    v5 = [(TRIActivateTreatmentBaseTask *)&v13 isEqual:equalCopy];
    LOBYTE(factorPackSetId2) = 0;
    if (equalCopy && v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = equalCopy;
        factorPackSetId = [(TRIActivateTreatmentTask *)self factorPackSetId];

        factorPackSetId2 = [(TRIActivateTreatmentTask *)v7 factorPackSetId];

        if (factorPackSetId)
        {
          if (!factorPackSetId2)
          {
LABEL_13:

            goto LABEL_14;
          }

          factorPackSetId3 = [(TRIActivateTreatmentTask *)self factorPackSetId];
          factorPackSetId4 = [(TRIActivateTreatmentTask *)v7 factorPackSetId];
          v11 = [factorPackSetId3 isEqualToString:factorPackSetId4];

          if (v11)
          {
LABEL_8:
            LOBYTE(factorPackSetId2) = 1;
            goto LABEL_13;
          }
        }

        else if (!factorPackSetId2)
        {
          goto LABEL_8;
        }

        LOBYTE(factorPackSetId2) = 0;
        goto LABEL_13;
      }

      LOBYTE(factorPackSetId2) = 0;
    }
  }

LABEL_14:

  return factorPackSetId2;
}

@end