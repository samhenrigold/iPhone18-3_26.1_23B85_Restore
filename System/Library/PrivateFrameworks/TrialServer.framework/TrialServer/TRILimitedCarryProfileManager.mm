@interface TRILimitedCarryProfileManager
- ($A5A652246548B43F8BC05201A1C72A70)_enqueueTask:(id)task;
- (BOOL)_setStoredLimitedCarryExperimentsWithError:(id *)error;
- (TRILimitedCarryProfileManager)initWithTaskQueue:(id)queue context:(id)context;
- (id)_getStoredLimitedCarryExperimentsWithError:(id *)error;
- (id)_limitedCarryExperiments;
- (void)_gatherProfileUpdatesAndScheduleRelatedTasks;
- (void)processLaunchEvent;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info;
- (void)removeProfileForExperiment:(id)experiment;
@end

@implementation TRILimitedCarryProfileManager

- (TRILimitedCarryProfileManager)initWithTaskQueue:(id)queue context:(id)context
{
  queueCopy = queue;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = TRILimitedCarryProfileManager;
  v9 = [(TRILimitedCarryProfileManager *)&v22 init];
  if (v9)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Initializing profile connection observer", buf, 2u);
    }

    if (!queueCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"TRILimitedCarryProfileManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"taskQueue"}];
    }

    objc_storeWeak(&v9->_taskQueue, queueCopy);
    objc_storeWeak(&v9->_context, contextCopy);
    v11 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.profile-updates-timeout-coalesce" qosClass:17];
    profileProcessingQueue = v9->_profileProcessingQueue;
    v9->_profileProcessingQueue = v11;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__TRILimitedCarryProfileManager_initWithTaskQueue_context___block_invoke;
    block[3] = &unk_279DDEEE0;
    v13 = v9;
    v20 = v13;
    if (qword_281597880 != -1)
    {
      dispatch_once(&qword_281597880, block);
    }

    v14 = _MergedGlobals_40;

    checkForUpdates = v13->_checkForUpdates;
    v13->_checkForUpdates = v14;

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v13];
  }

  return v9;
}

void __59__TRILimitedCarryProfileManager_initWithTaskQueue_context___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D42628]);
  v4 = *(a1 + 32);
  v5 = v4[3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__TRILimitedCarryProfileManager_initWithTaskQueue_context___block_invoke_2;
  v8[3] = &unk_279DDEEE0;
  v9 = v4;
  v6 = [v3 initWithQueue:v5 operation:v8];

  v7 = _MergedGlobals_40;
  _MergedGlobals_40 = v6;

  objc_autoreleasePoolPop(v2);
}

uint64_t __59__TRILimitedCarryProfileManager_initWithTaskQueue_context___block_invoke_2(uint64_t a1)
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "Missed profile connection observer notification, checking profiles now", v4, 2u);
  }

  return [*(a1 + 32) _gatherProfileUpdatesAndScheduleRelatedTasks];
}

- (void)processLaunchEvent
{
  v3 = os_transaction_create();
  txn = self->_txn;
  self->_txn = v3;

  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Created transaction for Limited Carry manager", v6, 2u);
  }

  [(_PASSimpleCoalescingTimer *)self->_checkForUpdates runAfterDelaySeconds:1 coalescingBehavior:2.0];
}

- (id)_limitedCarryExperiments
{
  v70 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager enumeratorAtPath:@"/private/var/Managed Preferences/mobile/"];

  v53 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  nextObject = [v3 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v7 = 0x277CBE000uLL;
    while (![nextObject2 containsString:@"com.apple.internal.trial.limitedcarry"])
    {
LABEL_36:

      objc_autoreleasePoolPop(v4);
      v4 = objc_autoreleasePoolPush();
      nextObject2 = [v3 nextObject];
      if (!nextObject2)
      {
        goto LABEL_57;
      }
    }

    v8 = *(v7 + 3008);
    v9 = [@"/private/var/Managed Preferences/mobile/" stringByAppendingPathComponent:nextObject2];
    v10 = [v8 fileURLWithPath:v9];

    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v61 = 0;
    v12 = [v11 initWithContentsOfURL:v10 error:&v61];
    v13 = v61;
    v14 = TRILogCategory_Server();
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    v56 = v10;
    if (v15)
    {
      v16 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = nextObject2;
        _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Found relevant managed preferences file: %@", buf, 0xCu);
      }

      v17 = [v12 objectForKeyedSubscript:@"Experiment"];

      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = [v12 objectForKeyedSubscript:@"Experiment"];
      v19 = [v18 objectForKeyedSubscript:@"ExperimentID"];

      log = v19;
      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v29 = TRILogCategory_Server();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v65 = nextObject2;
          v66 = 2112;
          v67 = v19;
          _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Limited carry profile %@ doesn't provide a valid experiment identifier, found: %@", buf, 0x16u);
        }

        goto LABEL_34;
      }

      v20 = [v12 objectForKeyedSubscript:@"Experiment"];
      v21 = [v20 objectForKeyedSubscript:@"DeploymentID"];

      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v50 = v13;
        v22 = v12;
        v23 = [v12 objectForKeyedSubscript:@"Experiment"];
        v24 = [v23 objectForKeyedSubscript:@"NamespaceName"];

        v54 = v22;
        v25 = [v22 objectForKeyedSubscript:@"Experiment"];
        v26 = [v25 objectForKeyedSubscript:@"NamespaceNames"];

        v27 = v24;
        if (v24 && v26)
        {
          v48 = v26;
          v51 = v24;
          v28 = TRILogCategory_Server();
          v13 = v50;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v65 = nextObject2;
            _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Limited Carry Profile %@ is malformed. It is providing NamespaceName and NamespaceName array.", buf, 0xCu);
          }

          v12 = v54;
          v27 = v51;
        }

        else
        {
          if (v24 | v26)
          {
            v12 = v54;
            v52 = v27;
            if (v27)
            {
              v63 = v27;
              v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];

              v31 = v30;
            }

            else
            {
              v31 = v26;
            }

            v32 = v53;
            if (v31)
            {
              v46 = v21;
              v47 = v3;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v49 = v31;
              v33 = v31;
              v34 = [v33 countByEnumeratingWithState:&v57 objects:v62 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v58;
                do
                {
                  for (i = 0; i != v35; ++i)
                  {
                    if (*v58 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v57 + 1) + 8 * i);
                    if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v39 = MEMORY[0x277D73750];
                      mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
                      namespaceDescriptorsDefaultDir = [mEMORY[0x277D737E0] namespaceDescriptorsDefaultDir];
                      v42 = [v39 loadWithNamespaceName:v38 fromDirectory:namespaceDescriptorsDefaultDir];

                      v12 = v54;
                      if (!v42)
                      {
                        v43 = TRILogCategory_Server();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412802;
                          v65 = log;
                          v66 = 2112;
                          v67 = nextObject2;
                          v68 = 2114;
                          v69 = v38;
                          _os_log_error_impl(&dword_26F567000, v43, OS_LOG_TYPE_ERROR, "Found experiment %@ for installed profile %@ specifies namespace %{public}@, which is not registered with Trial", buf, 0x20u);
                        }

                        v42 = 0;
                      }
                    }

                    else
                    {
                      v42 = TRILogCategory_Server();
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v65 = nextObject2;
                        v66 = 2112;
                        v67 = v52;
                        _os_log_error_impl(&dword_26F567000, v42, OS_LOG_TYPE_ERROR, "Limited carry profile %@ doesn't provide a valid namespace name, found: %@", buf, 0x16u);
                      }
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v57 objects:v62 count:16];
                }

                while (v35);
              }

              v21 = v46;
              v3 = v47;
              v32 = v53;
              v31 = v49;
            }

            v44 = [v12 objectForKeyedSubscript:{@"Experiment", v46, v47}];
            [v32 setObject:v44 forKeyedSubscript:nextObject2];

            v7 = 0x277CBE000;
            v13 = v50;
            goto LABEL_34;
          }

          v48 = TRILogCategory_Server();
          v12 = v54;
          v13 = v50;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v65 = nextObject2;
            _os_log_error_impl(&dword_26F567000, v48, OS_LOG_TYPE_ERROR, "Limited Carry Profile %@ is malformed. NamespaceName and NamespaceName array are both missing.", buf, 0xCu);
          }
        }
      }

      else
      {
        v27 = TRILogCategory_Server();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v65 = nextObject2;
          v66 = 2112;
          v67 = v21;
          _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Limited carry profile %@ doesn't provide a valid deployment identifier, found: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      log = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v65 = nextObject2;
        v66 = 2112;
        v67 = v10;
        v68 = 2112;
        v69 = v13;
        _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Issue reading managed preferences for profile %@ at %@: %@", buf, 0x20u);
      }
    }

LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

LABEL_57:
  objc_autoreleasePoolPop(v4);

  return v53;
}

- (void)removeProfileForExperiment:(id)experiment
{
  v32 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  [(TRILimitedCarryProfileManager *)self _limitedCarryExperiments];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v21}];
        v12 = [v11 objectForKeyedSubscript:@"ExperimentID"];

        experimentId = [experimentCopy experimentId];
        v14 = [v12 isEqualToString:experimentId];

        if (v14)
        {
          v15 = [v5 objectForKeyedSubscript:v10];
          v16 = [v15 objectForKeyedSubscript:@"DeploymentID"];

          if (v16)
          {
            longLongValue = [v16 longLongValue];
            if ([experimentCopy deploymentId] != longLongValue)
            {
              v19 = TRILogCategory_Server();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                deploymentId = [experimentCopy deploymentId];
                *buf = 138412802;
                v26 = v16;
                v27 = 2112;
                v28 = v12;
                v29 = 1024;
                v30 = deploymentId;
                _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Found deployment %@ for experiment %@ from profile does not match deployment identifier for experiment record: %d", buf, 0x1Cu);
              }

              goto LABEL_16;
            }
          }

          mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
          [mEMORY[0x277D262A0] removeProfileWithIdentifier:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info
{
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Profile connection observer received notification", v6, 2u);
  }

  [(_PASSimpleCoalescingTimer *)self->_checkForUpdates runImmediately];
}

- (void)_gatherProfileUpdatesAndScheduleRelatedTasks
{
  v60 = *MEMORY[0x277D85DE8];
  _limitedCarryExperiments = [(TRILimitedCarryProfileManager *)self _limitedCarryExperiments];
  v53 = 0;
  v3 = [(TRILimitedCarryProfileManager *)self _getStoredLimitedCarryExperimentsWithError:&v53];
  if (v53)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v57 = @"com.apple.internal.trial.limitedcarry.db";
      v58 = 2114;
      v59 = v53;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Error reading data for %@ key in TRIKVStore: %{public}@. ", buf, 0x16u);
    }
  }

  selfCopy = self;
  v42 = +[TRISequenceTask task];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
  v40 = v6 != 0;
  if (!v6)
  {
    v9 = 0;
    v24 = v5;
LABEL_28:

    goto LABEL_29;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v50;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v50 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v49 + 1) + 8 * i);
      v13 = [_limitedCarryExperiments objectForKeyedSubscript:v12];
      v14 = [v5 objectForKeyedSubscript:v12];
      v15 = v14;
      if (!v13)
      {
        v22 = TRILogCategory_Server();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v57 = v15;
          _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "Found removed profile: %@", buf, 0xCu);
        }

        v17 = [(__CFString *)v15 objectForKeyedSubscript:@"ExperimentID"];
        v18 = [(__CFString *)v15 objectForKeyedSubscript:@"DeploymentID"];
        longLongValue = [v18 longLongValue];
        v20 = v17;
        v21 = 4;
        goto LABEL_19;
      }

      if (!v14)
      {
        v25 = TRILogCategory_Server();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v57 = v12;
          _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Error with profile found in database for identifier: %{public}@, profile value was nil. ", buf, 0xCu);
        }

        txn = v5;
        goto LABEL_49;
      }

      if (([v13 isEqual:v14] & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v57 = v15;
          v58 = 2112;
          v59 = v13;
          _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Found replaced profile: %@ -> %@", buf, 0x16u);
        }

        v17 = [(__CFString *)v15 objectForKeyedSubscript:@"ExperimentID"];
        v18 = [(__CFString *)v15 objectForKeyedSubscript:@"DeploymentID"];
        longLongValue = [v18 longLongValue];
        v9 = 1;
        v20 = v17;
        v21 = 11;
LABEL_19:
        v23 = [TRIDeactivateTreatmentTask taskWithExperimentId:v20 deploymentId:longLongValue failOnUnrecognizedExperiment:1 triggerEvent:v21 taskAttribution:0];
        [v42 addTaskToEndOfSequence:v23];

        v8 = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (v8)
  {
    v24 = +[TRIMaintenanceTask task];
    [v42 addTaskToEndOfSequence:v24];
    goto LABEL_28;
  }

  v40 = 0;
LABEL_29:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = _limitedCarryExperiments;
  v28 = [v27 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v46;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v45 + 1) + 8 * j);
        v33 = [v5 objectForKeyedSubscript:v32];

        if (!v33)
        {
          v34 = TRILogCategory_Server();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v27 objectForKeyedSubscript:v32];
            *buf = 138412290;
            v57 = v35;
            _os_log_impl(&dword_26F567000, v34, OS_LOG_TYPE_DEFAULT, "Found new profile: %@", buf, 0xCu);
          }

          v9 = 1;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v29);
  }

  [(TRILimitedCarryProfileManager *)selfCopy setLcExperiments:v27];
  if (v9)
  {
    v36 = [objc_alloc(MEMORY[0x277D736A0]) initWithAllowsCellular:1 discretionaryBehavior:0];
    v37 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:@"com.apple.triald" networkOptions:v36];
    v38 = [TRIFetchMultipleExperimentNotificationsTask taskWithStartingFetchDateOverride:0 namespaceNames:0 taskAttributing:v37 rollbacksOnly:0 limitedCarryOnly:1];
    [v42 addTaskToEndOfSequence:v38];

    goto LABEL_43;
  }

  if (v40)
  {
LABEL_43:
    [(TRILimitedCarryProfileManager *)selfCopy _enqueueTask:v42];
    v44 = 0;
    if (![(TRILimitedCarryProfileManager *)selfCopy _setStoredLimitedCarryExperimentsWithError:&v44])
    {
      v39 = TRILogCategory_Server();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v57 = @"com.apple.internal.trial.limitedcarry.db";
        v58 = 2114;
        v59 = v44;
        _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Error writing data for %@ key in TRIKVStore: %{public}@. Not proceeding further", buf, 0x16u);
      }
    }
  }

  txn = selfCopy->_txn;
  selfCopy->_txn = 0;
LABEL_49:
}

- ($A5A652246548B43F8BC05201A1C72A70)_enqueueTask:(id)task
{
  taskCopy = task;
  WeakRetained = objc_loadWeakRetained(&self->_taskQueue);
  if (!WeakRetained)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to add tasks to task queue for Limited Carry profile update, task queue was nil", buf, 2u);
    }
  }

  v7 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
  v8.var0 = [WeakRetained addTask:taskCopy options:v7];

  v9 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:7];
  [WeakRetained resumeWithXPCActivityDescriptor:v9 executeWhenSuspended:0];

  if (v8.var0 == 2)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Unable to add task for profile list changed notification", v12, 2u);
    }
  }

  return v8;
}

- (BOOL)_setStoredLimitedCarryExperimentsWithError:(id *)error
{
  lcExperiments = [(TRILimitedCarryProfileManager *)self lcExperiments];

  if (!lcExperiments)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRILimitedCarryProfileManager.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"self.lcExperiments != nil"}];
  }

  v7 = MEMORY[0x277CCAAB0];
  lcExperiments2 = [(TRILimitedCarryProfileManager *)self lcExperiments];
  v19 = 0;
  v9 = [v7 archivedDataWithRootObject:lcExperiments2 requiringSecureCoding:1 error:&v19];
  v10 = v19;

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    keyValueStore = [WeakRetained keyValueStore];

    if (keyValueStore)
    {
      [keyValueStore setBlob:v9 forKey:@"com.apple.internal.trial.limitedcarry.db" usingTransaction:0];
      v13 = 1;
    }

    else
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Setting persisted Limited Carry profile information failed, key-value store was nil", buf, 2u);
      }

      keyValueStore = 0;
      v13 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v14 = v10;
    v13 = 0;
    keyValueStore = *error;
    *error = v14;
  }

LABEL_12:
  return v13;
}

- (id)_getStoredLimitedCarryExperimentsWithError:(id *)error
{
  v19[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  keyValueStore = [WeakRetained keyValueStore];

  if (!keyValueStore)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Getting persisted Limited Carry profile information failed, key-value store was nil", buf, 2u);
    }

    goto LABEL_10;
  }

  v6 = [keyValueStore blobForKey:@"com.apple.internal.trial.limitedcarry.db" usingTransaction:0];
  if (!v6)
  {
    if (error)
    {
      v15 = *error;
      *error = 0;
    }

    v7 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v19[2] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v10 = [v8 setWithArray:v9];

  v17 = 0;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v7 error:&v17];
  v12 = v17;
  v13 = v17;
  if (v11)
  {
    v14 = v11;
  }

  else if (error)
  {
    objc_storeStrong(error, v12);
  }

LABEL_14:

  return v11;
}

@end