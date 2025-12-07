@interface TRIMaintenanceTask
+ (id)parseFromData:(id)data;
+ (id)task;
- (BOOL)_cleanupLocalTempStorageWithPaths:(id)paths;
- (BOOL)_cleanupTreatmentWithTreatmentId:(id)id paths:(id)paths;
- (BOOL)_cleanupUnusedContentWithContext:(id)context nextTasks:(id)tasks;
- (TRIMaintenanceTask)init;
- (TRIMaintenanceTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (id)trialSystemTelemetry;
- (void)_handleExpiredExperimentsWithExperimentDatabase:(id)database nextTasks:(id)tasks;
- (void)_handleOrphanedNamespacesWithNamespaceDatabase:(id)database nextTasks:(id)tasks;
- (void)_synchronizePushService:(id)service usingRolloutDatabase:(id)database experimentDatabase:(id)experimentDatabase;
- (void)addDimension:(id)dimension;
- (void)addMetric:(id)metric;
- (void)encodeWithCoder:(id)coder;
- (void)mergeTelemetry:(id)telemetry;
@end

@implementation TRIMaintenanceTask

+ (id)task
{
  v2 = objc_opt_new();
  [v2 setRetryCount:0];

  return v2;
}

- (TRIMaintenanceTask)init
{
  v16.receiver = self;
  v16.super_class = TRIMaintenanceTask;
  v2 = [(TRIMaintenanceTask *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    channelCleanupQueue = v2->_channelCleanupQueue;
    v2->_channelCleanupQueue = v7;

    v9 = objc_opt_new();
    v10 = v9[1];
    v9[1] = 0;

    v11 = v9[2];
    v9[2] = 0;

    v12 = v9[3];
    v9[3] = 0;

    v13 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v9];
    lock = v2->_lock;
    v2->_lock = v13;

    v2->_isFlatbufferReadEnabled = _os_feature_enabled_impl();
    v2->_isFlatbufferWriteEnabled = _os_feature_enabled_impl();
  }

  return v2;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v103[12] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v7 = objc_opt_new();
  selfCopy = self;
  stateProvider = [(TRIBaseTask *)self stateProvider];
  v9 = [stateProvider activeActivityDescriptorGrantingCapability:24];

  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 1;
  v60 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v7 earliestRetryDate:0];
  v10 = [TRIMaintenanceSubTask alloc];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke;
  v93[3] = &unk_279DE0080;
  v93[4] = selfCopy;
  v11 = contextCopy;
  v94 = v11;
  v12 = v7;
  v95 = v12;
  v65 = [(TRIMaintenanceSubTask *)v10 initWithName:@"Deactivate expired experiments" subtaskBlock:v93];
  v103[0] = v65;
  v13 = [TRIMaintenanceSubTask alloc];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2;
  v90[3] = &unk_279DE0080;
  v90[4] = selfCopy;
  v14 = v11;
  v91 = v14;
  v15 = v12;
  v92 = v15;
  v63 = [(TRIMaintenanceSubTask *)v13 initWithName:@"Deal with dynamic namespaces from uninstalled apps" subtaskBlock:v90];
  v103[1] = v63;
  v16 = [TRIMaintenanceSubTask alloc];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3;
  v86[3] = &unk_279DE4BD8;
  v89 = &v96;
  v86[4] = selfCopy;
  v17 = v14;
  v87 = v17;
  v59 = v15;
  v88 = v59;
  v62 = [(TRIMaintenanceSubTask *)v16 initWithName:@"Remove unused experiment info subtaskBlock:treatments, and assets", v86];
  v103[2] = v62;
  v18 = [TRIMaintenanceSubTask alloc];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4;
  v84[3] = &unk_279DDF7A0;
  v84[4] = selfCopy;
  v19 = v17;
  v85 = v19;
  v61 = [(TRIMaintenanceSubTask *)v18 initWithName:@"Synchronise push connections" subtaskBlock:v84];
  v103[3] = v61;
  v20 = [TRIMaintenanceSubTask alloc];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5;
  v82[3] = &unk_279DDEEE0;
  v21 = v19;
  v83 = v21;
  v22 = [(TRIMaintenanceSubTask *)v20 initWithName:@"Expire old experiment history records" subtaskBlock:v82];
  v103[4] = v22;
  v23 = [TRIMaintenanceSubTask alloc];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_89;
  v80[3] = &unk_279DDEEE0;
  v24 = v21;
  v81 = v24;
  v25 = [(TRIMaintenanceSubTask *)v23 initWithName:@"Expire old rollout history records" subtaskBlock:v80];
  v103[5] = v25;
  v26 = [TRIMaintenanceSubTask alloc];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_93;
  v78[3] = &unk_279DDEEE0;
  v27 = v24;
  v79 = v27;
  v28 = [(TRIMaintenanceSubTask *)v26 initWithName:@"Compact the database" subtaskBlock:v78];
  v103[6] = v28;
  v29 = [TRIMaintenanceSubTask alloc];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2_97;
  v76[3] = &unk_279DDEEE0;
  v30 = v27;
  v77 = v30;
  v31 = [(TRIMaintenanceSubTask *)v29 initWithName:@"Record daily active experiments" subtaskBlock:v76];
  v103[7] = v31;
  v32 = [TRIMaintenanceSubTask alloc];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3_102;
  v74[3] = &unk_279DDEEE0;
  v33 = v30;
  v75 = v33;
  v34 = [(TRIMaintenanceSubTask *)v32 initWithName:@"Reload envvar-based factors in launchd" subtaskBlock:v74];
  v103[8] = v34;
  v35 = [TRIMaintenanceSubTask alloc];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4_108;
  v72[3] = &unk_279DDEEE0;
  v36 = v33;
  v73 = v36;
  v37 = [(TRIMaintenanceSubTask *)v35 initWithName:@"Publish sysctl factors" subtaskBlock:v72];
  v103[9] = v37;
  v38 = [TRIMaintenanceSubTask alloc];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5_113;
  v70[3] = &unk_279DDEEE0;
  v57 = v36;
  v71 = v57;
  v39 = [(TRIMaintenanceSubTask *)v38 initWithName:@"Clear experiment update Biome stream if opted-out" subtaskBlock:v70];
  v103[10] = v39;
  v40 = [[TRIMaintenanceSubTask alloc] initWithName:@"Prune obsolete events from Biome stream" subtaskBlock:&__block_literal_global_41];
  v103[11] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:12];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v42 = v41;
  v43 = [v42 countByEnumeratingWithState:&v66 objects:v102 count:16];
  if (v43)
  {
    v44 = *v67;
    while (2)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v66 + 1) + 8 * i);
        if (v9)
        {
          shouldDefer = [v9 shouldDefer];
          v48 = shouldDefer[2]();

          if (v48)
          {
            v54 = TRILogCategory_Server();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              name = [v46 name];
              *buf = 138412290;
              v101 = name;
              _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "Deferral requested during maintenance task before running subtask: %@", buf, 0xCu);
            }

            selfCopy->wasDeferred = 1;
            v53 = v60;

            goto LABEL_19;
          }
        }

        v49 = TRILogCategory_Server();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [v46 name];
          *buf = 138412290;
          v101 = name2;
          _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Beginning maintenance subtask: %@", buf, 0xCu);
        }

        block = [v46 block];
        block[2]();
      }

      v43 = [v42 countByEnumeratingWithState:&v66 objects:v102 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  if (*(v97 + 24))
  {
    v52 = 2;
  }

  else
  {
    v52 = 3;
  }

  v53 = [TRITaskRunResult resultWithRunStatus:v52 reportResultToServer:1 nextTasks:v59 earliestRetryDate:0];
LABEL_19:

  _Block_object_dispose(&v96, 8);

  return v53;
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) experimentDatabase];
  [v2 _handleExpiredExperimentsWithExperimentDatabase:v3 nextTasks:*(a1 + 48)];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) namespaceDatabase];
  [v2 _handleOrphanedNamespacesWithNamespaceDatabase:v3 nextTasks:*(a1 + 48)];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) &= [*(a1 + 32) _cleanupUnusedContentWithContext:*(a1 + 40) nextTasks:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) paths];
  *(*(*(a1 + 56) + 8) + 24) &= [v2 _cleanupLocalTempStorageWithPaths:v3];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) pushServiceMuxer];
  v3 = [*(a1 + 40) rolloutDatabase];
  v4 = [*(a1 + 40) experimentDatabase];
  [v2 _synchronizePushService:v5 usingRolloutDatabase:v3 experimentDatabase:v4];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-15724800.0];
  v6 = 0;
  v3 = [*(a1 + 32) experimentHistoryDatabase];
  v4 = [v3 expireRecordsOlderThanDate:v2 deletedCount:&v6];

  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Expired %tu records from experiment history.", buf, 0xCu);
    }
  }
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_89(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1814400.0];
  v6 = 0;
  v3 = [*(a1 + 32) rolloutHistoryDatabase];
  v4 = [v3 expireRecordsOlderThanDate:v2 deletedCount:&v6];

  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Expired %tu records from rollout history.", buf, 0xCu);
    }
  }
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_93(uint64_t a1)
{
  v1 = [*(a1 + 32) underlyingDatabase];
  [v1 vacuum];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2_97(uint64_t a1)
{
  v1 = [[TRIActiveExperimentsMetricRecorder alloc] initWithServerContext:*(a1 + 32)];
  [(TRIActiveExperimentsMetricRecorder *)v1 recordMetric];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3_102(uint64_t a1)
{
  v2 = [[TRIActiveEnvVarFactorsPublisher alloc] initWithServerContext:*(a1 + 32)];
  [(TRIActiveEnvVarFactorsPublisher *)v2 publishLowLevelFactors];
  v1 = objc_opt_new();
  [v1 requestReloadLowLevelFactors];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4_108(uint64_t a1)
{
  v1 = [[TRIActiveSysctlFactorsPublisher alloc] initWithServerContext:*(a1 + 32)];
  [(TRIActiveSysctlFactorsPublisher *)v1 publishSysctlFactors];
}

uint64_t __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5_113(uint64_t a1)
{
  result = [TRIUserAdjustableSettings getExperimentOptOut:*(a1 + 32)];
  if (result)
  {

    return +[TRIBiomeExperimentUpdateStreamWriter clearExperimentUpdatesStream];
  }

  return result;
}

- (void)_handleExpiredExperimentsWithExperimentDatabase:(id)database nextTasks:(id)tasks
{
  v26 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  tasksCopy = tasks;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __80__TRIMaintenanceTask__handleExpiredExperimentsWithExperimentDatabase_nextTasks___block_invoke;
  v15 = &unk_279DE19B0;
  v8 = tasksCopy;
  v16 = v8;
  v17 = &v18;
  [databaseCopy enumerateExperimentRecordsWithBlock:&v12];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(TRIBaseTask *)self taskName:v12];
    v11 = *(v19 + 6);
    *buf = 138543618;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduled deactivation of %u experiments", buf, 0x12u);
  }

  _Block_object_dispose(&v18, 8);
}

void __80__TRIMaintenanceTask__handleExpiredExperimentsWithExperimentDatabase_nextTasks___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isExpiredExperiment])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 experimentDeployment];
      v6 = [v5 experimentId];
      v7 = [v3 treatmentId];
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "scheduling deactivation of experiment %{public}@ with treatment %@", &v12, 0x16u);
    }

    v8 = [v3 experimentDeployment];
    v9 = [v8 experimentId];
    v10 = [v3 experimentDeployment];
    v11 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v9, [v10 deploymentId], 0, 2, 0);

    [*(a1 + 32) addObject:v11];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (BOOL)_cleanupTreatmentWithTreatmentId:(id)id paths:(id)paths
{
  v14 = *MEMORY[0x277D85DE8];
  idCopy = id;
  pathsCopy = paths;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = idCopy;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Removing treatment %@.", &v12, 0xCu);
  }

  v8 = [[TRIClientTreatmentStorage alloc] initWithPaths:pathsCopy];
  v9 = [(TRIClientTreatmentStorage *)v8 removeTreatmentWithTreatmentId:idCopy];
  if (!v9)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = idCopy;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Could not remove treatment %@.", &v12, 0xCu);
    }
  }

  return v9;
}

- (BOOL)_cleanupUnusedContentWithContext:(id)context nextTasks:(id)tasks
{
  v164 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tasksCopy = tasks;
  v7 = [TRINamespaceResolverStorage alloc];
  paths = [contextCopy paths];
  v9 = [(TRINamespaceResolverStorage *)v7 initWithPaths:paths];

  v158 = 0;
  v10 = [(TRINamespaceResolverStorage *)v9 removeUnreferencedRolloutDeploymentsWithServerContext:contextCopy removedCount:&v158];
  v129 = contextCopy;
  if (v10)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v161 = v158;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced rollout deployment dirs.", buf, 8u);
    }
  }

  v158 = 0;
  v12 = [(TRINamespaceResolverStorage *)v9 removeUnreferencedExperimentDeploymentsWithServerContext:contextCopy removedCount:&v158];
  if (v12)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v161 = v158;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced experiment deployment metadata dirs.", buf, 8u);
    }
  }

  v14 = v10 && v12;
  v158 = 0;
  v15 = [(TRINamespaceResolverStorage *)v9 removeUnneededPromotionsWithRemovedCount:&v158 removeAll:0];
  if (v15)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v161 = v158;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Removed %u unneeded promotion dirs.", buf, 8u);
    }
  }

  v17 = v14 & v15;

  v18 = [TRIFactorPackSetStorage alloc];
  v19 = v129;
  paths2 = [v129 paths];
  v21 = [(TRIFactorPackSetStorage *)v18 initWithPaths:paths2];

  v158 = 0;
  v22 = [(TRIFactorPackSetStorage *)v21 removeUnreferencedFactorPackSetsWithServerContext:v129 removedCount:&v158];
  if (v22)
  {
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v161 = v158;
      _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced factor pack sets.", buf, 8u);
    }

    v19 = v129;
  }

  v24 = v17 & v22;

  v25 = [TRIFactorPackStorage alloc];
  paths3 = [v19 paths];
  v27 = [(TRIFactorPackStorage *)v25 initWithPaths:paths3];

  v158 = 0;
  v28 = [(TRIFactorPackStorage *)v27 removeUnreferencedFactorPacksWithRemovedCount:&v158];
  if (v28)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v161 = v158;
      _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced factor packs.", buf, 8u);
    }

    v19 = v129;
  }

  v30 = v24 & v28;
  if (self->_isFlatbufferWriteEnabled)
  {
    v31 = [TRIFBFactorPackStorage alloc];
    paths4 = [v19 paths];
    v33 = [(TRIFBFactorPackStorage *)v31 initWithPaths:paths4];

    v157 = 0;
    v34 = [(TRIFBFactorPackStorage *)v33 removeUnreferencedFactorLevelsWithRemovedCount:&v157];
    v35 = TRILogCategory_Server();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v161 = v34;
      *&v161[4] = 1024;
      *&v161[6] = v157;
      _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Removing unreferenced factor levels with flatbuffer storage was %d with removed count as: %u", buf, 0xEu);
    }

    if (!v34)
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Unable to remove unreferenced factor levels from factor levels storage", buf, 2u);
      }
    }

    if (v158 != v157)
    {
      v37 = TRILogCategory_Server();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v161 = v158;
        *&v161[4] = 1024;
        *&v161[6] = v157;
        _os_log_impl(&dword_26F567000, v37, OS_LOG_TYPE_INFO, "Counts for removed unreferenced factor levels dont match, pb:%d fp:%d", buf, 0xEu);
      }
    }

    v30 &= !self->_isFlatbufferReadEnabled || v34;

    v19 = v129;
  }

  v38 = [TRINamespaceDescriptorSetStorage alloc];
  paths5 = [v19 paths];
  v40 = [(TRINamespaceDescriptorSetStorage *)v38 initWithPaths:paths5];

  v41 = v129;
  v158 = 0;
  v42 = [(TRINamespaceDescriptorSetStorage *)v40 removeUnreferencedNamespaceDescriptorSetsWithServerContext:v129 removedCount:&v158];
  if (v42)
  {
    v43 = TRILogCategory_Server();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v161 = v158;
      _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced namespace descriptor sets.", buf, 8u);
    }

    v41 = v129;
  }

  v44 = [TRIClientTreatmentStorage alloc];
  paths6 = [v41 paths];
  v46 = [(TRIClientTreatmentStorage *)v44 initWithPaths:paths6];

  v158 = 0;
  v47 = [(TRIClientTreatmentStorage *)v46 removeUnreferencedTreatmentsWithRemovedCount:&v158];
  if (v47)
  {
    v48 = TRILogCategory_Server();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v161 = v158;
      _os_log_impl(&dword_26F567000, v48, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced treatments.", buf, 8u);
    }
  }

  v49 = objc_opt_new();
  contentTracker = [v129 contentTracker];
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke;
  v155[3] = &unk_279DE4C00;
  v51 = v49;
  v156 = v51;
  v52 = v47 & v42 & [contentTracker enumerateTrackedItemsWithBlock:v155] & v30;

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v53 = v51;
  v127 = v53;
  v130 = [v53 countByEnumeratingWithState:&v151 objects:v163 count:16];
  if (!v130)
  {
    v56 = v129;
    goto LABEL_82;
  }

  v124 = a2;
  v54 = *v152;
  v55 = 0x279DDD000uLL;
  v56 = v129;
  v128 = *v152;
  do
  {
    for (i = 0; i != v130; ++i)
    {
      if (*v152 != v54)
      {
        objc_enumerationMutation(v53);
      }

      v58 = *(*(&v151 + 1) + 8 * i);
      v59 = objc_autoreleasePoolPush();
      v60 = [*(v55 + 3168) decodeContentIdentifier:v58];
      v61 = v60;
      if (v60)
      {
        v52 = v52 & (v60 != 0);
        type = [v60 type];
        if (type == 2)
        {
          rollout = [v61 rollout];
          if (!rollout)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v124 object:self file:@"TRIMaintenanceTask.m" lineNumber:622 description:{@"Invalid parameter not satisfying: %@", @"rolloutDeployment"}];
          }

          contentTracker2 = [v56 contentTracker];
          [contentTracker2 clearRefsWithContentIdentifier:v58];

          rolloutDatabase = [v56 rolloutDatabase];
          v76 = [rolloutDatabase removeRecordWithDeployment:rollout usingRefCounting:1];

          v77 = v76 == 0;
          v56 = v129;
          if (v77)
          {
            v52 = 0;
          }

          v55 = 0x279DDD000;
          goto LABEL_77;
        }

        if (type == 1)
        {
          rollout = [v61 treatment];
          if (!rollout)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:v124 object:self file:@"TRIMaintenanceTask.m" lineNumber:602 description:{@"Invalid parameter not satisfying: %@", @"desc"}];

            v53 = v127;
          }

          paths7 = [v56 paths];
          if (paths7)
          {
            treatmentId = [rollout treatmentId];
            v72 = [(TRIMaintenanceTask *)self _cleanupTreatmentWithTreatmentId:treatmentId paths:paths7];

            if (!v72)
            {
              v73 = 0;
              v56 = v129;
LABEL_73:
              v55 = 0x279DDD000;
              v52 &= v73;

              v54 = v128;
              goto LABEL_77;
            }
          }

          else
          {
            v78 = TRILogCategory_Server();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              container = [rollout container];
              identifier = [container identifier];
              *buf = 138543362;
              *v161 = identifier;
              _os_log_impl(&dword_26F567000, v78, OS_LOG_TYPE_DEFAULT, "Not removing treatment from missing app container: %{public}@", buf, 0xCu);
            }

            v53 = v127;
          }

          v56 = v129;
          contentTracker3 = [v129 contentTracker];
          [contentTracker3 clearRefsWithContentIdentifier:v58];

          v73 = 1;
          goto LABEL_73;
        }

        if (type)
        {
          goto LABEL_78;
        }

        rollout = [v61 experiment];
        if (!rollout)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler3 handleFailureInMethod:v124 object:self file:@"TRIMaintenanceTask.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
        }

        experimentDatabase = [v56 experimentDatabase];
        v65 = [experimentDatabase experimentRecordWithExperimentDeployment:rollout];

        if (v65)
        {
          if ([v65 status] != 4 || objc_msgSend(v65, "isExpiredExperiment"))
          {
            contentTracker4 = [v56 contentTracker];
            [contentTracker4 clearRefsWithContentIdentifier:v58];

            experimentDatabase2 = [v56 experimentDatabase];
            v68 = [experimentDatabase2 removeExperimentRecordWithExperimentDeployment:rollout];

            if (!v68)
            {
              v52 = 0;
            }
          }

          limitedCarryManager = [v56 limitedCarryManager];
          [limitedCarryManager removeProfileForExperiment:rollout];
        }

        else
        {
          limitedCarryManager = TRILogCategory_Server();
          if (os_log_type_enabled(limitedCarryManager, OS_LOG_TYPE_ERROR))
          {
            experimentId = [rollout experimentId];
            deploymentId = [rollout deploymentId];
            *buf = 138543618;
            *v161 = experimentId;
            *&v161[8] = 1024;
            v162 = deploymentId;
            _os_log_error_impl(&dword_26F567000, limitedCarryManager, OS_LOG_TYPE_ERROR, "Could not find experiment record for experiment deployment with experiment id: %{public}@ & deployment id:  %d", buf, 0x12u);
          }
        }

        v53 = v127;
        v54 = v128;
      }

      else
      {
        rollout = [v56 contentTracker];
        [rollout clearRefsWithContentIdentifier:v58];
        v52 = 0;
      }

LABEL_77:

LABEL_78:
      objc_autoreleasePoolPop(v59);
    }

    v130 = [v53 countByEnumeratingWithState:&v151 objects:v163 count:16];
  }

  while (v130);
LABEL_82:

  v87 = [TRIAssetStoreDatabase alloc];
  paths8 = [v56 paths];
  v131 = [(TRIAssetStoreDatabase *)v87 initWithPaths:paths8 storageManagement:0];

  v89 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_149;
  v149[3] = &unk_279DDEF30;
  v90 = v89;
  v150 = v90;
  [(TRIAssetStoreDatabase *)v131 enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock:v149];
  v91 = objc_alloc(MEMORY[0x277D73690]);
  [v56 paths];
  v93 = v92 = v56;
  v94 = [v91 initWithPaths:v93 factorsState:0];

  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rolloutDatabase2 = [v92 rolloutDatabase];
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_2;
  v144[3] = &unk_279DE4C50;
  v145 = v94;
  v146 = v90;
  v147 = v96;
  v148 = v95;
  v98 = v95;
  v99 = v96;
  v100 = v90;
  v101 = v94;
  [rolloutDatabase2 enumerateActiveRecordsUsingTransaction:0 block:v144];

  v102 = [TRIFactorPackSetStorage alloc];
  paths9 = [v92 paths];
  v104 = [(TRIFactorPackSetStorage *)v102 initWithPaths:paths9];

  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_155;
  v141[3] = &unk_279DE4C78;
  v105 = tasksCopy;
  v142 = v105;
  v143 = v104;
  v106 = v104;
  [v99 enumerateObjectsUsingBlock:v141];
  v107 = [TRIFactorPackStorage alloc];
  paths10 = [v92 paths];
  v109 = [(TRIFactorPackStorage *)v107 initWithPaths:paths10];

  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_159;
  v139[3] = &unk_279DDF658;
  v140 = v109;
  v110 = v109;
  [v98 enumerateKeysAndObjectsUsingBlock:v139];

  v111 = objc_opt_new();
  paths11 = [v92 paths];
  [v111 addObject:paths11];

  namespaceDatabase = [v92 namespaceDatabase];
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_161;
  v136[3] = &unk_279DE4CA0;
  v114 = v92;
  v137 = v114;
  v115 = v111;
  v138 = v115;
  v116 = v52 & [namespaceDatabase enumerateDynamicNamespaceRecordsWithBlock:v136];

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v117 = v115;
  v118 = [v117 countByEnumeratingWithState:&v132 objects:v159 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v133;
    do
    {
      for (j = 0; j != v119; ++j)
      {
        if (*v133 != v120)
        {
          objc_enumerationMutation(v117);
        }

        v122 = [[TRIAssetStore alloc] initWithPaths:*(*(&v132 + 1) + 8 * j)];
        v116 &= [(TRIAssetStore *)v122 collectGarbageOlderThanNumScans:2 deletedAssetSize:0];
      }

      v119 = [v117 countByEnumeratingWithState:&v132 objects:v159 count:16];
    }

    while (v119);
  }

  return v116 & 1;
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 str];
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: refCount %lld", &v10, 0x16u);
    }

    if (a3 <= 0)
    {
      if (a3 < 0)
      {
        notify_post("com.apple.trial.MaintenanceFoundNegativeRefcount");
        v8 = TRILogCategory_Server();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [v5 str];
          v10 = 134218242;
          v11 = a3;
          v12 = 2114;
          v13 = v9;
          _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "refCount went negative (%lld) for content identifier %{public}@", &v10, 0x16u);
        }
      }

      [*(a1 + 32) addObject:v5];
    }
  }
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = a2;
  obj = [v18 namespaces];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [*(a1 + 32) factorPackIdForRolloutWithNamespaceName:v7];
        if (v8)
        {
          v9 = *(a1 + 40);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_3;
          v20[3] = &unk_279DE4C28;
          v10 = v8;
          v21 = v10;
          v11 = [v9 _pas_filteredSetWithTest:v20];
          v12 = [v11 count];

          if (v12)
          {
            v13 = TRILogCategory_Server();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v18 deployment];
              v15 = [v14 rolloutId];
              v16 = [v18 deployment];
              v17 = [v16 deploymentId];
              *buf = 138543618;
              v27 = v15;
              v28 = 1024;
              v29 = v17;
              _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Rollout %{public}@.%d contains maRefs file without DB reference.", buf, 0x12u);
            }

            [*(a1 + 48) addObject:v18];
            [*(a1 + 56) setValue:v10 forKey:v7];

            goto LABEL_15;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_155(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 deployment];
  v6 = [v5 rolloutId];
  v7 = [TRIDisenrollRolloutTask taskWithRolloutId:v6 triggerEvent:3];
  [v4 addObject:v7];

  v8 = [v3 activeFactorPackSetId];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [v3 activeFactorPackSetId];
    v11 = [v9 pathForFactorPackSetWithId:v10];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    v13 = [v12 removeItemAtPath:v11 error:&v17];
    v14 = v17;

    if ((v13 & 1) == 0)
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v3 activeFactorPackSetId];
        *buf = 138543874;
        v19 = v16;
        v20 = 2114;
        v21 = v11;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unable to cleanup factor pack set %{public}@ at %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_159(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = TRIValidateFactorPackId();
  if (v5)
  {
    v6 = [*(a1 + 32) pathForFactorPackWithId:v5 namespaceName:v4];
    v7 = [*(a1 + 32) legacyPathForFactorPackWithId:v5 namespaceName:v4];
    v8 = v7;
    if (v6)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = 0;
      v10 = [v9 removeItemAtPath:v6 error:&v17];
      v11 = v17;

      if ((v10 & 1) == 0)
      {
        v12 = TRILogCategory_Server();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v19 = v5;
          v20 = 2114;
          v21 = v6;
          v22 = 2114;
          v23 = v11;
          _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Unable to cleanup factor pack %{public}@ at %{public}@: %{public}@", buf, 0x20u);
        }
      }

      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
      if (!v7)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    v14 = [v13 removeItemAtPath:v8 error:&v16];
    v11 = v16;

    if ((v14 & 1) == 0)
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v19 = v5;
        v20 = 2114;
        v21 = v8;
        v22 = 2114;
        v23 = v11;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unable to cleanup legacy factor pack %{public}@ at %{public}@: %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_161(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) paths];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 appContainer];
      v7 = [v6 identifier];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Not GC'ing AssetStore in missing app container: %{public}@", &v8, 0xCu);
    }
  }
}

- (void)_handleOrphanedNamespacesWithNamespaceDatabase:(id)database nextTasks:(id)tasks
{
  v36 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v5 = objc_opt_new();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__TRIMaintenanceTask__handleOrphanedNamespacesWithNamespaceDatabase_nextTasks___block_invoke;
  v29[3] = &unk_279DDF748;
  v6 = v5;
  v30 = v6;
  [databaseCopy enumerateDynamicNamespaceRecordsWithBlock:v29];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        name = [v13 name];
        v15 = [databaseCopy removeDynamicNamespaceRecordWithNamespaceName:name];

        v16 = TRILogCategory_Server();
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v13 name];
            appContainer = [v13 appContainer];
            identifier = [appContainer identifier];
            *buf = 138543618;
            v32 = name2;
            v33 = 2114;
            v34 = identifier;
            _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "removed dynamic namespace %{public}@ registered to app container %{public}@", buf, 0x16u);
          }

          ++v10;
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            name3 = [v13 name];
            *buf = 138543362;
            v32 = name3;
            _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unable to deregister namespace %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    taskName = [(TRIBaseTask *)self taskName];
    *buf = 138543618;
    v32 = taskName;
    v33 = 1024;
    LODWORD(v34) = v10;
    _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ deregistered %u dynamic namespaces", buf, 0x12u);
  }
}

void __79__TRIMaintenanceTask__handleOrphanedNamespacesWithNamespaceDatabase_nextTasks___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 appContainer];
  v4 = v3;
  if (v3 && [v3 fetchStatus] == 2)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (BOOL)_cleanupLocalTempStorageWithPaths:(id)paths
{
  localTempDir = [paths localTempDir];
  v4 = [TRITempDirScopeGuard ifUnreferencedCleanupPath:localTempDir];

  return v4;
}

- (void)_synchronizePushService:(id)service usingRolloutDatabase:(id)database experimentDatabase:(id)experimentDatabase
{
  serviceCopy = service;
  experimentDatabaseCopy = experimentDatabase;
  databaseCopy = database;
  v11 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke;
  v25[3] = &unk_279DE0700;
  v12 = v11;
  v26 = v12;
  [databaseCopy enumerateActiveRecordsUsingTransaction:0 block:v25];

  v13 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke_2;
  v23[3] = &unk_279DE0728;
  v14 = v13;
  v24 = v14;
  [experimentDatabaseCopy enumerateActiveExperimentRecordsWithBlock:v23];

  channelCleanupQueue = self->_channelCleanupQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke_3;
  block[3] = &unk_279DE0080;
  v20 = serviceCopy;
  v21 = v12;
  v22 = v14;
  v16 = v14;
  v17 = v12;
  v18 = serviceCopy;
  dispatch_async(channelCleanupQueue, block);
}

void __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deployment];
  [v2 addObject:v3];
}

void __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 experimentDeployment];
  v3 = [v4 experimentId];
  [v2 addObject:v3];
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__TRIMaintenanceTask_addMetric___block_invoke;
  v7[3] = &unk_279DE4CC8;
  v8 = metricCopy;
  v6 = metricCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __32__TRIMaintenanceTask_addMetric___block_invoke(uint64_t a1, void *a2)
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

- (void)addDimension:(id)dimension
{
  dimensionCopy = dimension;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TRIMaintenanceTask_addDimension___block_invoke;
  v7[3] = &unk_279DE4CC8;
  v8 = dimensionCopy;
  v6 = dimensionCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __35__TRIMaintenanceTask_addDimension___block_invoke(uint64_t a1, void *a2)
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

- (void)mergeTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__TRIMaintenanceTask_mergeTelemetry___block_invoke;
  v7[3] = &unk_279DE4CC8;
  v8 = telemetryCopy;
  v6 = telemetryCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __37__TRIMaintenanceTask_mergeTelemetry___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = v6[3];
  if (v3)
  {
    [v3 mergeFrom:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 32) copy];
    v5 = v6[3];
    v6[3] = v4;
  }
}

- (id)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54;
  v10 = __Block_byref_object_dispose__54;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TRIMaintenanceTask_metrics__block_invoke;
  v5[3] = &unk_279DE4CF0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__29__TRIMaintenanceTask_metrics__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = [result copy];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)dimensions
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__TRIMaintenanceTask_dimensions__block_invoke;
  v8[3] = &unk_279DE4CC8;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];

  objc_autoreleasePoolPop(v3);

  return v6;
}

id *__32__TRIMaintenanceTask_dimensions__block_invoke(id *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return [result[4] addObjectsFromArray:?];
  }

  return result;
}

- (id)trialSystemTelemetry
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__54;
  v11 = __Block_byref_object_dispose__54;
  v12 = objc_alloc_init(MEMORY[0x277D73BE0]);
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TRIMaintenanceTask_trialSystemTelemetry__block_invoke;
  v6[3] = &unk_279DE4CF0;
  v6[4] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void *__42__TRIMaintenanceTask_trialSystemTelemetry__block_invoke(void *result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return [*(*(result[4] + 8) + 40) mergeFrom:?];
  }

  return result;
}

- (id)_asPersistedTask
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serialize
{
  _asPersistedTask = [(TRIMaintenanceTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIMaintenanceTask.m" lineNumber:869 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(TRIPBMessage *)TRIMaintenancePersistedTask parseFromData:data error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = objc_opt_new();
    if ([v3 hasRetryCount])
    {
      retryCount = [v3 retryCount];
    }

    else
    {
      retryCount = 0;
    }

    [v5 setRetryCount:retryCount];
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIMaintenancePersistedTask: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (TRIMaintenanceTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIMaintenanceTask;
  v5 = [(TRIMaintenanceTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIMaintenanceTask.m" lineNumber:887 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIMaintenanceTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end