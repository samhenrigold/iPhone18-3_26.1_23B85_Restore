@interface CPLEngineSyncManager
+ (id)descriptionForState:(unint64_t)state;
+ (id)platformImplementationProtocol;
+ (id)shortDescriptionForState:(unint64_t)state;
+ (id)stepForState:(unint64_t)state syncManager:(id)manager session:(id)session;
- (BOOL)_checkForegroundAtLaunchForForcedTask;
- (BOOL)_didFinishSetupTaskWithError:(id)error shouldStop:(BOOL *)stop;
- (BOOL)_launchSetupTask;
- (BOOL)hasBrokenScopes;
- (BOOL)prepareAndLaunchSyncTaskUnlocked:(id)unlocked;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineSyncManager)initWithEngineLibrary:(id)library;
- (NSArray)brokenScopes;
- (NSError)lastError;
- (NSError)lastErrorUnlocked;
- (__CFString)_descriptionForLaunchedTasks;
- (id)_descriptionForSetupTasks;
- (id)_dropDerivativeRulesFromUserDefaults;
- (id)_setupTaskWithCompletionHandler:(id)handler;
- (id)_transportUserIdentifier;
- (uint64_t)_canLaunchForcedTaskVsOtherForcedTask:(void *)task otherForcedTask:(char *)forcedTask discardOtherForcedTask:;
- (uint64_t)_launchNecessaryTasksForCurrentStateLocked;
- (void)_addRuleToUserDefaults:(id)defaults;
- (void)_advanceToNextStateLockedMinimalState:(unint64_t)state;
- (void)_cancelAllTasksLockedDeferringPushTaskCancellationIfCurrentlyUploadingForeground:(void *)result;
- (void)_cancelCurrentSyncSession;
- (void)_disableSchedulerForForcedTaskIfNecessary;
- (void)_discardPendingForcedTasksWithError:(id)error;
- (void)_dispatchAfter:(double)after block:(id)block;
- (void)_dispatchCancellerBlocksIfNecessary;
- (void)_forcedTaskDidFinishWithError:(id)error;
- (void)_launchForceSetupTask;
- (void)_launchForcedTaskIfNecessary;
- (void)_notifyEndOfSyncSession;
- (void)_overrideBudgetsIfNeeded;
- (void)_recordForcedTask:(BOOL)task discarded:(void *)discarded error:;
- (void)_reenableSchedulerForForcedTaskIfNecessary;
- (void)_resetErrorForSyncSession;
- (void)_setState:(unint64_t)state;
- (void)_setTransportUserIdentifier:(id)identifier;
- (void)_shortDescriptionForCurrentState;
- (void)addBrokenScope:(id)scope;
- (void)addDropDerivativesRecipe:(id)recipe writeToUserDefaults:(BOOL)defaults withCompletionHandler:(id)handler;
- (void)beginClientWork:(id)work;
- (void)cancelAndBlockAllSyncSessionsWithReason:(id)reason block:(id)block;
- (void)cancelCurrentSyncSession;
- (void)cancelScheduledForcedTaskForLaunch:(id)launch;
- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler;
- (void)configureDirectTransportTask:(id)task;
- (void)discardTransportUserIdentifier;
- (void)dispatchForcedTaskBlock:(id)block;
- (void)dispatchSyncBlock:(id)block;
- (void)endClientWork:(id)work;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)openWithCompletionHandler:(id)handler;
- (void)removeBrokenScope:(id)scope;
- (void)requestDisabledFeaturesUpdate;
- (void)resetTransportUserIdentifier;
- (void)scheduleForcedTaskForLaunch:(id)launch;
- (void)setBoostPriority:(BOOL)priority;
- (void)setErrorForSyncSessionUnlocked:(id)unlocked;
- (void)setSyncSessionShouldBeForeground:(BOOL)foreground;
- (void)startSyncSession:(id)session withMinimalPhase:(unint64_t)phase rewind:(BOOL)rewind;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)task:(id)task didProgress:(float)progress userInfo:(id)info;
- (void)unblockSyncSessionWithReason:(id)reason;
@end

@implementation CPLEngineSyncManager

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (BOOL)hasBrokenScopes
{
  selfCopy = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __39__CPLEngineSyncManager_hasBrokenScopes__block_invoke;
  v7 = &unk_1E861A850;
  selfCopy2 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&selfCopy->_brokenScopesLock);
  v6(v3);
  os_unfair_lock_unlock(&selfCopy->_brokenScopesLock);

  LOBYTE(selfCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return selfCopy;
}

void *__39__CPLEngineSyncManager_hasBrokenScopes__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)_overrideBudgetsIfNeeded
{
  if (self->_boostPriority && self->_state - 1 <= 6)
  {
    if (!self->_hasOverridenBudgets)
    {
      engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
      systemMonitor = [engineLibrary systemMonitor];
      [systemMonitor startOverridingSystemBudgets:18487 reason:3];

      self->_hasOverridenBudgets = 1;
    }
  }

  else if (self->_hasOverridenBudgets)
  {
    engineLibrary2 = [(CPLEngineSyncManager *)self engineLibrary];
    systemMonitor2 = [engineLibrary2 systemMonitor];
    [systemMonitor2 stopOverridingSystemBudgets:18487 reason:3];

    self->_hasOverridenBudgets = 0;
  }
}

- (NSError)lastErrorUnlocked
{
  dispatch_assert_queue_V2(self->_lock);
  lastError = self->_lastError;

  return lastError;
}

- (id)_transportUserIdentifier
{
  os_unfair_lock_lock(&self->_transportUserIdentifierLock);
  v3 = self->_transportUserIdentifier;
  os_unfair_lock_unlock(&self->_transportUserIdentifierLock);

  return v3;
}

- (uint64_t)_launchNecessaryTasksForCurrentStateLocked
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    v3 = v2 == 0;
    if (v2)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          _shortDescriptionForCurrentState = [(CPLEngineSyncManager *)v1 _shortDescriptionForCurrentState];
          v7 = *(v1 + 80);
          v13 = 138412546;
          v14 = _shortDescriptionForCurrentState;
          v15 = 2112;
          v16 = v7;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Stopping launch tasks (current state: %@) as we have an error to report: %@", &v13, 0x16u);
        }

LABEL_6:

        return v3;
      }

      return 0;
    }

    [*(result + 64) noteSyncSessionMovedToState:*(result + 216)];
    WeakRetained = objc_loadWeakRetained((v1 + 208));
    scheduler = [WeakRetained scheduler];
    [scheduler noteSyncSession:*(v1 + 64) stateWillBeAttempted:*(v1 + 216)];

    result = 0;
    v10 = *(v1 + 216);
    if (v10)
    {
      if (v10 == 1)
      {
        result = [v1 _launchSetupTask];
        if (result)
        {
          goto LABEL_15;
        }
      }

      else if (v10 != 14)
      {
        result = *(v1 + 88);
        if (result)
        {
          if (([result launchNecessaryTasks] & 1) == 0)
          {
            return 0;
          }

LABEL_15:
          if (_CPLSilentLogging)
          {
            return 1;
          }

          v4 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            _shortDescriptionForCurrentState2 = [(CPLEngineSyncManager *)v1 _shortDescriptionForCurrentState];
            v13 = 138412290;
            v14 = _shortDescriptionForCurrentState2;
            _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Launched some necessary tasks for %@", &v13, 0xCu);
          }

          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

- (void)addDropDerivativesRecipe:(id)recipe writeToUserDefaults:(BOOL)defaults withCompletionHandler:(id)handler
{
  recipeCopy = recipe;
  handlerCopy = handler;
  if ([(CPLDerivativesFilter *)self->_derivativesFilter addServerDropDerivativesRecipe:recipeCopy])
  {
    engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
    store = [engineLibrary store];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__CPLEngineSyncManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke;
    v20[3] = &unk_1E86205B8;
    v21 = store;
    selfCopy = self;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __91__CPLEngineSyncManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_3;
    v16[3] = &unk_1E861FA08;
    defaultsCopy = defaults;
    v18 = handlerCopy;
    v16[4] = self;
    v17 = recipeCopy;
    v12 = store;
    v13 = [v12 performWriteTransactionWithBlock:v20 completionHandler:v16];
  }

  else
  {
    v14 = [recipeCopy description];
    v15 = [CPLErrors incorrectParametersErrorForParameter:v14];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

void __91__CPLEngineSyncManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__CPLEngineSyncManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E8620940;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 do:v6];
}

void __91__CPLEngineSyncManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 error];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Unable to save derivativesFilter: %@", &v9, 0xCu);
      }
    }

    v7 = *(a1 + 48);
    v8 = [v3 error];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) _addRuleToUserDefaults:*(a1 + 40)];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)_dropDerivativeRulesFromUserDefaults
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"CPLDropDerivativesTestRules"];

  if (v3)
  {
    v4 = [CPLDropDerivativesRecipe unarchiveArrayOfCPLDropDerivativeRecipesFrom:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_addRuleToUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  _dropDerivativeRulesFromUserDefaults = [(CPLEngineSyncManager *)self _dropDerivativeRulesFromUserDefaults];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = v5;
  if (_dropDerivativeRulesFromUserDefaults)
  {
    [v5 addObjectsFromArray:_dropDerivativeRulesFromUserDefaults];
  }

  [v6 addObject:defaultsCopy];
  v7 = [CPLDropDerivativesRecipe archiveArrayOfCPLDropDerivativeRecipes:v6];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:v7 forKey:@"CPLDropDerivativesTestRules"];
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  lock = self->_lock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CPLEngineSyncManager_getStatusDictionaryWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = lock;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __65__CPLEngineSyncManager_getStatusDictionaryWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v37[2] = *MEMORY[0x1E69E9840];
  v36[0] = @"state";
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [objc_opt_class() descriptionForState:*(v3 + 216)];
    v5 = *(v2 + 32);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v36[1] = @"tasks";
  v37[0] = v4;
  v6 = [(CPLEngineSyncManager *)v5 _descriptionForLaunchedTasks];
  v37[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v8 = [v7 mutableCopy];

  if ([*(*(v2 + 32) + 128) count])
  {
    v26 = v8;
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v8 setObject:? forKey:?];
    v9 = [*(v2 + 32) engineLibrary];
    v30 = [v9 transport];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v2;
    obj = *(*(v2 + 32) + 128);
    v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v13 = *MEMORY[0x1E696AA08];
      do
      {
        v14 = 0;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * v14);
          if (v15)
          {
            v15 = v15[3];
          }

          v16 = v15;
          v17 = [v16 userInfo];
          v18 = [v17 objectForKey:v13];

          if (v18)
          {
            v19 = v18;

            v16 = v19;
          }

          v20 = [v30 bestErrorForUnderlyingError:v16];

          if (v20)
          {
            v21 = MEMORY[0x1E696AEC0];
            v22 = [v20 domain];
            v23 = [v20 code];
            v24 = [v20 localizedDescription];
            v25 = [v21 stringWithFormat:@"%@ %ld %@", v22, v23, v24];
            [v29 addObject:v25];
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v8 = v26;
    v2 = v27;
  }

  (*(*(v2 + 40) + 16))();
}

- (__CFString)_descriptionForLaunchedTasks
{
  if (!self)
  {
    goto LABEL_10;
  }

  length = self[6].length;
  if (!length || length == 14)
  {
    goto LABEL_13;
  }

  if (length == 1)
  {
    [(__CFString *)self _descriptionForSetupTasks];
  }

  else
  {
    [self[2].length descriptionForTasks];
  }
  self = ;
  if (!self)
  {
LABEL_13:
    self = @"No current tasks";
  }

  else
  {
LABEL_10:
  }

  return self;
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  lock = self->_lock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLEngineSyncManager_getStatusWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = lock;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __55__CPLEngineSyncManager_getStatusWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v108 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD60];
  v3 = (a1 + 32);
  v4 = [(CPLEngineSyncManager *)*(a1 + 32) _shortDescriptionForCurrentState];
  v5 = [(CPLEngineSyncManager *)*v3 _descriptionForLaunchedTasks];
  v84 = [v2 stringWithFormat:@"%@ (%@)", v4, v5];

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__20784;
  v104 = __Block_byref_object_dispose__20785;
  v105 = 0;
  v6 = *v3;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v96 = __55__CPLEngineSyncManager_getStatusWithCompletionHandler___block_invoke_2;
  v97 = &unk_1E861F818;
  v98 = v6;
  v99 = &v100;
  v7 = v95;
  os_unfair_lock_lock(&v6->data + 1);
  v96(v7);
  os_unfair_lock_unlock(&v6->data + 1);

  v8 = [v101[5] count];
  v9 = v101[5];
  if (v8 == 1)
  {
    v10 = [v9 firstObject];
    [v84 appendFormat:@"\nMETADATA SYNCHRONIZATION IS DISABLED UNTIL %@", v10];
LABEL_8:

    goto LABEL_9;
  }

  v11 = [v9 count];
  v12 = v101[5];
  if (v11 == 2)
  {
    v10 = [v12 firstObject];
    v13 = [v101[5] lastObject];
    [v84 appendFormat:@"\nMETADATA SYNCHRONIZATION IS DISABLED UNTIL %@ OR %@", v10, v13];
LABEL_7:

    goto LABEL_8;
  }

  if ([v12 count] >= 3)
  {
    v10 = [v101[5] array];
    v13 = [v10 subarrayWithRange:{0, objc_msgSend(v101[5], "count") - 1}];
    v14 = [v13 componentsJoinedByString:{@", "}];
    v15 = [v101[5] lastObject];
    [v84 appendFormat:@"\nMETADATA SYNCHRONIZATION IS DISABLED UNTIL %@ OR %@", v14, v15];

    goto LABEL_7;
  }

LABEL_9:
  v83 = [MEMORY[0x1E695DF00] date];
  v16 = *(a1 + 32);
  v17 = *(v16 + 144);
  if (v17 && *(v16 + 136))
  {
    [v17 timeIntervalSinceDate:?];
    v19 = v18;
    v20 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 136) now:v83];
    if (v19 <= 1.0)
    {
      [v84 appendFormat:@"\nlast session: %@ - %@ for less than 1s", v20, *(*(a1 + 32) + 152)];
    }

    else
    {
      v21 = *(*(a1 + 32) + 152);
      v22 = [CPLDateFormatter stringForTimeInterval:v19];
      [v84 appendFormat:@"\nlast session: %@ - %@ for %@", v20, v21, v22];
    }

    v16 = *(a1 + 32);
  }

  if ([*(v16 + 128) count])
  {
    [v84 appendString:@"\nlast errors:"];
    v23 = [*(a1 + 32) engineLibrary];
    v80 = [v23 transport];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = *(*(a1 + 32) + 128);
    v24 = [obj countByEnumeratingWithState:&v91 objects:v107 count:16];
    if (!v24)
    {
      goto LABEL_42;
    }

    v79 = *v92;
    v82 = *MEMORY[0x1E696AA08];
    while (1)
    {
      v81 = v24;
      for (i = 0; i != v81; ++i)
      {
        if (*v92 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v91 + 1) + 8 * i);
        if (v26)
        {
          v27 = *(v26 + 8);
        }

        else
        {
          v27 = 0;
        }

        v28 = [CPLEngineSyncManager shortDescriptionForState:v27];
        if (v26)
        {
          v85 = *(v26 + 16);
          v29 = *(v26 + 24);
        }

        else
        {
          v85 = 0;
          v29 = 0;
        }

        v30 = v29;
        v31 = [v30 isCPLOperationDeferredError];
        v32 = [v30 userInfo];
        v33 = [v32 objectForKey:@"CPLErrorRequestUUIDs"];

        v34 = [v30 userInfo];
        v35 = [v34 objectForKey:v82];

        if (v35)
        {
          v36 = v35;

          v30 = v36;
        }

        v37 = [v80 bestErrorForUnderlyingError:v30];

        if (v31)
        {
          v38 = [CPLDateFormatter stringFromDateAgo:v85 now:v83];
          v39 = [v37 domain];
          v40 = [v37 code];
          v41 = [v37 localizedDescription];
          [v84 appendFormat:@"\n\t%@ (%@): [DEFER] %@ %ld %@", v38, v28, v39, v40, v41];
LABEL_34:

          v43 = v35;
          goto LABEL_35;
        }

        v42 = [v37 userInfo];
        v43 = [v42 objectForKey:v82];

        if (v43)
        {
          v44 = MEMORY[0x1E696AEC0];
          v45 = [v43 domain];
          v46 = [v43 code];
          v47 = [v43 localizedDescription];
          v38 = [v44 stringWithFormat:@" - [%@ %ld %@]", v45, v46, v47];
        }

        else
        {
          v38 = &stru_1F57BD298;
        }

        v48 = [CPLDateFormatter stringFromDateAgo:v85 now:v83];
        v49 = [v37 domain];
        v50 = [v37 code];
        v51 = [v37 localizedDescription];
        [v84 appendFormat:@"\n\t%@ (%@): %@ %ld %@%@", v48, v28, v49, v50, v51, v38];

        v52 = [v43 userInfo];
        v39 = [v52 objectForKey:v82];

        if (v39)
        {
          v41 = [v39 domain];
          v53 = [v39 code];
          v54 = [v39 localizedDescription];
          [v84 appendFormat:@" (%@ %ld %@)", v41, v53, v54];

          v35 = v43;
          goto LABEL_34;
        }

LABEL_35:

        if (v33)
        {
          [v84 appendFormat:@" (requests: %@)", v33];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v91 objects:v107 count:16];
      if (!v24)
      {
LABEL_42:

        break;
      }
    }
  }

  if ([*(*(a1 + 32) + 184) count])
  {
    v55 = [*(*(a1 + 32) + 184) allObjects];
    v56 = [v55 componentsJoinedByString:{@", "}];
    [v84 appendFormat:@"\nForced sync tasks are blocked. Reasons: %@", v56];
  }

  if ([*(*(a1 + 32) + 168) count])
  {
    [v84 appendString:@"\nlast forced syncs:"];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = *(*(a1 + 32) + 168);
    v57 = [v86 countByEnumeratingWithState:&v87 objects:v106 count:16];
    if (v57)
    {
      v58 = *v88;
      do
      {
        v59 = 0;
        do
        {
          if (*v88 != v58)
          {
            objc_enumerationMutation(v86);
          }

          v60 = *(*(&v87 + 1) + 8 * v59);
          v61 = v83;
          if (v60)
          {
            v62 = *(v60 + 24);
            v63 = objc_alloc(MEMORY[0x1E696AEC0]);
            v64 = [CPLDateFormatter stringFromDateAgo:*(v60 + 16) now:v61];
            v65 = v64;
            v66 = *(v60 + 32);
            if (v62)
            {
              v67 = "";
              if (*(v60 + 8))
              {
                v67 = " (discarded)";
              }

              v68 = *(v60 + 40);
              if (!v68)
              {
                v68 = @"no errors";
              }

              v69 = [v63 initWithFormat:@"%@: %@ %@%s - %@", v64, v66, *(v60 + 24), v67, v68];
            }

            else
            {
              v70 = "";
              if (*(v60 + 8))
              {
                v70 = " (discarded)";
              }

              v71 = *(v60 + 40);
              if (!v71)
              {
                v71 = @"no errors";
              }

              v69 = [v63 initWithFormat:@"%@: %@%s - %@", v64, v66, v70, v71];
            }

            v72 = v69;
          }

          else
          {
            v72 = 0;
          }

          [v84 appendFormat:@"\n\t%@", v72];
          ++v59;
        }

        while (v57 != v59);
        v73 = [v86 countByEnumeratingWithState:&v87 objects:v106 count:16];
        v57 = v73;
      }

      while (v73);
    }
  }

  v74 = *(a1 + 32);
  if (*(v74 + 161) == 1)
  {
    if (*(v74 + 162))
    {
      v75 = @"\nboosting priority - currently overriding system budgets";
    }

    else
    {
      v75 = @"\nboosting priority if necessary";
    }

    [v84 appendString:v75];
    v74 = *(a1 + 32);
  }

  if (*(v74 + 104))
  {
    [v84 appendFormat:@"\nrunning %@", *(v74 + 104)];
    v74 = *(a1 + 32);
  }

  if (*(v74 + 96))
  {
    [v84 appendFormat:@"\nrunning forced setup %@", *(v74 + 96)];
    v74 = *(a1 + 32);
  }

  if ([*(v74 + 112) count])
  {
    v76 = [*(*(a1 + 32) + 112) firstObject];
    [v84 appendFormat:@"\npending %@", v76];

    if ([*(*(a1 + 32) + 112) count] >= 2)
    {
      [v84 appendFormat:@" + %lu others", objc_msgSend(*(*(a1 + 32) + 112), "count")];
    }
  }

  if (*(*(a1 + 32) + 64))
  {
    [v84 appendFormat:@"\ncurrent session tracked as %@", *(*(a1 + 32) + 64)];
  }

  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(&v100, 8);
}

- (void)_shortDescriptionForCurrentState
{
  if (self)
  {
    self = [objc_opt_class() shortDescriptionForState:self[27]];
    v2 = vars8;
  }

  return self;
}

void __55__CPLEngineSyncManager_getStatusWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(*(a1 + 40) + 8) + 40) addObject:@"LIBRARY ZONES ARE CLEANED-UP"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(*(a1 + 32) + 24);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) alternateRecoverDescription];
          v11 = [v10 uppercaseString];

          if (v11)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (NSError)lastError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20784;
  v10 = __Block_byref_object_dispose__20785;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CPLEngineSyncManager_lastError__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__CPLEngineSyncManager_lastError__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) lastObject];
  v4 = v2;
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (void)endClientWork:(id)work
{
  workCopy = work;
  platformObject = [(CPLEngineSyncManager *)self platformObject];
  [platformObject endClientWork:workCopy];
}

- (void)beginClientWork:(id)work
{
  workCopy = work;
  platformObject = [(CPLEngineSyncManager *)self platformObject];
  [platformObject beginClientWork:workCopy];
}

- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler
{
  handlerCopy = handler;
  lock = self->_lock;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CPLEngineSyncManager_closeAndDeactivate_completionHandler___block_invoke;
  v12[3] = &unk_1E861AAC8;
  v13 = handlerCopy;
  v14 = a2;
  v12[4] = self;
  v8 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = lock;
  v10 = handlerCopy;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void *__61__CPLEngineSyncManager_closeAndDeactivate_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        *buf = 138412290;
        v29 = v23;
        _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Trying to close %@ twice", buf, 0xCu);
      }
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
    [v24 handleFailureInMethod:v25 object:v26 file:v27 lineNumber:1423 description:{@"Trying to close %@ twice", *(a1 + 32)}];

    abort();
  }

  *(v2 + 42) = 1;
  v3 = [*(a1 + 32) platformObject];
  [v3 prepareForClose];

  if ([*(*(a1 + 32) + 112) count])
  {
    v4 = *(a1 + 32);
    v5 = +[CPLErrors libraryClosedError];
    [v4 _discardPendingForcedTasksWithError:v5];

    [*(a1 + 32) _reenableSchedulerForForcedTaskIfNecessary];
  }

  v6 = *(a1 + 32);
  if (v6[27] || v6[13] || v6[12])
  {
    v7 = [*(a1 + 40) copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;

    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    if (v12)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Cancelling current forced sync task", buf, 2u);
        }

        v12 = *(*(a1 + 32) + 104);
      }

      [v12 cancelTask];
    }

    else
    {
      v14 = *(v11 + 96);
      if (v14)
      {
        [v14 cancel];
      }

      else
      {
        v15 = MEMORY[0x1E696AD60];
        v16 = [(CPLEngineSyncManager *)*(a1 + 32) _shortDescriptionForCurrentState];
        v17 = [(CPLEngineSyncManager *)*(a1 + 32) _descriptionForLaunchedTasks];
        v18 = [v15 stringWithFormat:@"%@ (%@)", v16, v17];

        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v18;
            _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Cancelling current sync session in state: %@", buf, 0xCu);
          }
        }
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      return [(CPLEngineSyncManager *)result _cancelAllTasksLockedDeferringPushTaskCancellationIfCurrentlyUploadingForeground:?];
    }
  }

  else
  {
    v21 = *(*(a1 + 40) + 16);

    return v21();
  }

  return result;
}

- (void)_cancelAllTasksLockedDeferringPushTaskCancellationIfCurrentlyUploadingForeground:(void *)result
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        _descriptionForLaunchedTasks = [(CPLEngineSyncManager *)v3 _descriptionForLaunchedTasks];
        v6 = 138412290;
        v7 = _descriptionForLaunchedTasks;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling all current sync manager tasks: %@", &v6, 0xCu);
      }
    }

    [v3 _cancelAllTasksForSetup];
    return [*(v3 + 11) cancelAllTasks:a2];
  }

  return result;
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
  store = [engineLibrary store];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__CPLEngineSyncManager_openWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861F9D8;
  v10[4] = self;
  v11 = store;
  v12 = handlerCopy;
  v7 = handlerCopy;
  v8 = store;
  v9 = [v8 performReadTransactionWithBlock:v10];
}

void __50__CPLEngineSyncManager_openWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 userIdentifier];
  [v3 _setTransportUserIdentifier:v6];

  v7 = [*(a1 + 40) derivativesFilter];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  *(*(a1 + 32) + 41) = [*(a1 + 40) shouldUpdateDisabledFeatures];
  if (*(*(a1 + 32) + 41) == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Will update list of disabled features on setup", v14, 2u);
    }
  }

  v11 = [*(a1 + 40) scopes];
  *(*(a1 + 32) + 161) = [v11 hasScopesNeedingToPushHighPriorityChangesToTransport];

  v12 = *(a1 + 48);
  v13 = [v5 error];

  (*(v12 + 16))(v12, v13);
}

- (void)task:(id)task didProgress:(float)progress userInfo:(id)info
{
  taskCopy = task;
  infoCopy = info;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__CPLEngineSyncManager_task_didProgress_userInfo___block_invoke;
  v13[3] = &unk_1E861F9B0;
  v13[4] = self;
  v14 = taskCopy;
  progressCopy = progress;
  v15 = infoCopy;
  v16 = a2;
  v11 = infoCopy;
  v12 = taskCopy;
  [(CPLEngineSyncManager *)self dispatchSyncBlock:v13];
}

void __50__CPLEngineSyncManager_task_didProgress_userInfo___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  switch(v4)
  {
    case 14:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = *(a1 + 56);
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      v12 = [objc_opt_class() shortDescriptionForState:*(*(a1 + 32) + 216)];
      [v8 handleFailureInMethod:v9 object:v10 file:v11 lineNumber:1393 description:{@"Should not be in state %@", v12}];

      goto LABEL_14;
    case 1:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = *(a1 + 56);
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      v16 = @"Should not be in setup state with some running task";
      v17 = v8;
      v18 = v13;
      v19 = v14;
      v20 = v15;
      v21 = 1390;
LABEL_13:
      [v17 handleFailureInMethod:v18 object:v19 file:v20 lineNumber:v21 description:v16];

LABEL_14:
      abort();
    case 0:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = *(a1 + 56);
      v23 = *(a1 + 32);
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      v16 = @"Should not be quiet with some running task";
      v17 = v8;
      v18 = v22;
      v19 = v23;
      v20 = v15;
      v21 = 1387;
      goto LABEL_13;
  }

  if (*(v3 + 88))
  {
    LODWORD(a2) = *(a1 + 64);
    [*(v3 + 88) progressForTask:*(a1 + 40) progress:a2];
    v6 = v5;
    v3 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v24 = [v3 platformObject];
  LODWORD(v7) = v6;
  [v24 didProgress:*(a1 + 48) userInfo:*(*(a1 + 32) + 216) forState:v7];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      _shortDescriptionForCurrentState = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
      *buf = 138412802;
      v19 = taskCopy;
      v20 = 2112;
      v21 = errorCopy;
      v22 = 2112;
      v23 = _shortDescriptionForCurrentState;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Task %@ did finish with error %@ in state %@", buf, 0x20u);
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CPLEngineSyncManager_task_didFinishWithError___block_invoke;
  v14[3] = &unk_1E861B330;
  v14[4] = self;
  v15 = taskCopy;
  v16 = errorCopy;
  v17 = a2;
  v12 = errorCopy;
  v13 = taskCopy;
  [(CPLEngineSyncManager *)self dispatchSyncBlock:v14];
}

void __48__CPLEngineSyncManager_task_didFinishWithError___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    if ([v3 containsTask:*(a1 + 40)])
    {
      goto LABEL_6;
    }

    v4 = *(*(a1 + 32) + 48);
  }

  else
  {
    v4 = *(v2 + 48);
    if (!v4)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v42 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a1 + 40);
          *buf = 138412290;
          v54 = v43;
          _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_ERROR, "Task completion called for %@ with no step currently running", buf, 0xCu);
        }
      }

      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = *(a1 + 56);
      v45 = *(a1 + 32);
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      [v36 handleFailureInMethod:v44 object:v45 file:v39 lineNumber:1311 description:{@"Task completion called for %@ with no step currently running", *(a1 + 40)}];
      goto LABEL_73;
    }
  }

  if (v4 != *(a1 + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v33 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 40);
        v35 = [*(*(a1 + 32) + 88) descriptionForTasks];
        *buf = 138412546;
        v54 = v34;
        v55 = 2112;
        v56 = v35;
        _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "Task completion called for %@ but current step (%@) does not manage it", buf, 0x16u);
      }
    }

    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = *(a1 + 56);
    v38 = *(a1 + 32);
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
    v40 = *(a1 + 40);
    v41 = [*(*(a1 + 32) + 88) descriptionForTasks];
    [v36 handleFailureInMethod:v37 object:v38 file:v39 lineNumber:1312 description:{@"Task completion called for %@ but current step (%@) does not manage it", v40, v41}];
    goto LABEL_67;
  }

LABEL_6:
  v5 = *(a1 + 48);
  if (!*(a1 + 40) && !*(a1 + 48) && *(*(a1 + 32) + 56))
  {
    v6 = +[CPLErrors operationCancelledError];

    v5 = v6;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Looking for next step of sync session", buf, 2u);
    }
  }

  v52 = 0;
  v8 = *(a1 + 32);
  v9 = v8[27];
  switch(v9)
  {
    case 1:
      if (![v8 _didFinishSetupTaskWithError:v5 shouldStop:&v52])
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    case 14:
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = *(a1 + 56);
      v47 = *(a1 + 32);
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      v41 = [objc_opt_class() shortDescriptionForState:*(*(a1 + 32) + 216)];
      [v36 handleFailureInMethod:v46 object:v47 file:v39 lineNumber:1329 description:{@"Should not be in state %@", v41, v51}];
LABEL_67:

LABEL_73:
      goto LABEL_74;
    case 0:
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = *(a1 + 56);
      v49 = *(a1 + 32);
      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      [v36 handleFailureInMethod:v48 object:v49 file:v50 lineNumber:1323 description:@"Should not be quiet with some running task"];

LABEL_74:
      abort();
  }

  v10 = v8[11];
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      if (([v10 didFinishTask:v11 withError:*(a1 + 48) shouldStop:&v52] & 1) == 0)
      {
LABEL_20:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v14 = [(CPLEngineSyncManager *)*(a1 + 32) _shortDescriptionForCurrentState];
            v15 = [(CPLEngineSyncManager *)*(a1 + 32) _descriptionForLaunchedTasks];
            *buf = 138412546;
            v54 = v14;
            v55 = 2112;
            v56 = v15;
            _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "There is more work to do for %@ (%@)", buf, 0x16u);
          }
        }

        goto LABEL_61;
      }
    }
  }

LABEL_25:
  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(CPLEngineSyncManager *)*(a1 + 32) _shortDescriptionForCurrentState];
      *buf = 138412290;
      v54 = v18;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "%@ is finished now", buf, 0xCu);
    }
  }

  v19 = *(a1 + 32);
  if (*(v19 + 56))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEBUG, "Library is closing. Stopping now", buf, 2u);
      }

      v19 = *(a1 + 32);
    }

    [(CPLEngineSyncManager *)v19 _notifyEndOfSyncSession];
    [*(a1 + 32) _setState:0];
    [*(a1 + 32) _overrideBudgetsIfNeeded];
    [(CPLEngineSyncManager *)*(a1 + 32) _resetErrorForSyncSession];
    (*(*(*(a1 + 32) + 56) + 16))();
    v21 = *(a1 + 32);
    v22 = *(v21 + 56);
    *(v21 + 56) = 0;

    goto LABEL_61;
  }

  if (*(v19 + 120) > 0xDuLL)
  {
    if (v52)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (v52 & 1) == 0 || ([*(v19 + 80) isCPLOperationCancelledError])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v23 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [objc_opt_class() shortDescriptionForState:*(*(a1 + 32) + 120) - 1];
          *buf = 138412290;
          v54 = v24;
          _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEBUG, "Restarting sync session from %@", buf, 0xCu);
        }
      }

      [(CPLEngineSyncManager *)*(a1 + 32) _resetErrorForSyncSession];
      [*(a1 + 32) _setState:*(*(a1 + 32) + 120) - 1];
      [*(a1 + 32) _advanceToNextStateLockedMinimalState:0];
      *(*(a1 + 32) + 120) = 14;
      goto LABEL_61;
    }

    v19 = *(a1 + 32);
    if (v52)
    {
      if (*(v19 + 120) <= 0xDuLL)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v27 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 120)];
            v29 = *(*(a1 + 32) + 80);
            *buf = 138412546;
            v54 = v28;
            v55 = 2112;
            v56 = v29;
            _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEFAULT, "Not rewinding to %@ as we were required to stop (last error: %@)", buf, 0x16u);
          }

          v19 = *(a1 + 32);
        }

        *(v19 + 120) = 14;
LABEL_59:
        v19 = *(a1 + 32);
      }

LABEL_60:
      [(CPLEngineSyncManager *)v19 _notifyEndOfSyncSession];
      [*(a1 + 32) _setState:0];
      [*(a1 + 32) _overrideBudgetsIfNeeded];
      goto LABEL_61;
    }
  }

  v25 = [v19 _transportUserIdentifier];

  if (!v25)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_DEBUG, "Lost the transport user identifier, restarting from setup", buf, 2u);
      }
    }

    v31 = *(a1 + 32);
    v32 = [CPLErrors cplErrorWithCode:28 description:@"Lost the user identifier during the sync session"];
    [v31 setErrorForSyncSessionUnlocked:v32];

    goto LABEL_59;
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    [v26 _advanceToNextStateLockedMinimalState:0];
  }

LABEL_61:
}

- (void)_notifyEndOfSyncSession
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = result[10];
      v23 = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Did finish sync session with error: %@", &v23, 0xCu);
    }
  }

  date = [MEMORY[0x1E695DF00] date];
  v5 = result[18];
  result[18] = date;

  v6 = result[10];
  engineLibrary = [result engineLibrary];
  scheduler = [engineLibrary scheduler];
  v9 = scheduler;
  v10 = result[8];
  if (v6)
  {
    [scheduler noteSyncSession:v10 failedDuringPhase:result[27] withError:result[10]];

    platformObject = [result platformObject];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      platformObject2 = [result platformObject];
      [platformObject2 syncSessionDidFailWithError:result[10]];
LABEL_11:
    }
  }

  else
  {
    [scheduler noteSyncSessionSucceeded:v10];

    platformObject3 = [result platformObject];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      platformObject2 = [result platformObject];
      [platformObject2 syncSessionDidSucceed];
      goto LABEL_11;
    }
  }

  platformObject4 = [result platformObject];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    platformObject5 = [result platformObject];
    [platformObject5 didFinishSyncSession];
  }

  [result _setState:0];
  [result _overrideBudgetsIfNeeded];
  platformObject6 = [result platformObject];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    platformObject7 = [result platformObject];
    [platformObject7 didMoveToState:0];
  }

  v22 = result[8];
  result[8] = 0;

  [result _launchForcedTaskIfNecessary];
  [(CPLEngineSyncManager *)result _dispatchCancellerBlocksIfNecessary];
}

- (void)_resetErrorForSyncSession
{
  if (self)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLastSyncErrorOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *v4 = 0;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Resetting error for sync session", v4, 2u);
      }
    }

    v3 = *(self + 80);
    *(self + 80) = 0;
  }
}

- (void)_dispatchCancellerBlocksIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 72));
    v2 = *(self + 176);
    if (v2)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v3);
            }

            (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
            ++v7;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v5);
      }

      v8 = *(self + 176);
      *(self + 176) = 0;
    }
  }
}

- (BOOL)_didFinishSetupTaskWithError:(id)error shouldStop:(BOOL *)stop
{
  errorCopy = error;
  setupTask = self->_setupTask;
  self->_setupTask = 0;

  if (errorCopy)
  {
    [(CPLEngineSyncManager *)self setErrorForSyncSessionUnlocked:errorCopy];
    *stop = 1;
  }

  return 1;
}

- (BOOL)_launchSetupTask
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_setupTask)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Trying to launch a setup task twice", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v14 lineNumber:1277 description:@"Trying to launch a setup task twice"];

    abort();
  }

  if (self->_setupIsDone)
  {
    return 0;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Launching setup task", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__CPLEngineSyncManager__launchSetupTask__block_invoke;
  v15[3] = &unk_1E8620A88;
  v15[4] = self;
  v5 = [(CPLEngineSyncManager *)self _setupTaskWithCompletionHandler:v15];
  setupTask = self->_setupTask;
  self->_setupTask = v5;

  if (self->_foreground)
  {
    [(CPLEngineTransportSetupTask *)self->_setupTask setForeground:1];
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = self->_setupTask;
      foreground = [(CPLEngineTransportSetupTask *)v8 foreground];
      v10 = " with background priority";
      if (foreground)
      {
        v10 = " with foreground priority";
      }

      *buf = 138412546;
      v17 = v8;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Launching %@%s", buf, 0x16u);
    }
  }

  [(CPLEngineTransportSetupTask *)self->_setupTask runWithinSyncSession:self->_session];
  return self->_setupTask != 0;
}

- (id)_setupTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
  transport = [WeakRetained transport];

  shouldUpdateDisabledFeatures = self->_shouldUpdateDisabledFeatures;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E861F988;
  v12[4] = self;
  v13 = handlerCopy;
  v14 = a2;
  v9 = handlerCopy;
  v10 = [transport setupTaskUpdateDisabledFeatures:shouldUpdateDisabledFeatures completionHandler:v12];

  return v10;
}

void __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_2;
  v20[3] = &unk_1E861F960;
  v21 = v12;
  v22 = v13;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v26 = v14;
  v27 = v15;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v12;
  [v13 dispatchSyncBlock:v20];
}

void __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (!*(*(a1 + 40) + 56) || (+[CPLErrors operationCancelledError], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (!*(a1 + 48))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v27 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_ERROR, "Did not get a user identifier from the transport", &buf, 2u);
          }
        }

        v28 = [MEMORY[0x1E696AAA8] currentHandler];
        v29 = *(a1 + 80);
        v30 = *(a1 + 40);
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
        [v28 handleFailureInMethod:v29 object:v30 file:v31 lineNumber:1182 description:@"Did not get a user identifier from the transport"];

        abort();
      }

      if (*(*(a1 + 40) + 41) == 1)
      {
        if ([*(a1 + 56) count])
        {
          if (_CPLSilentLogging)
          {
            goto LABEL_19;
          }

          v4 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v5 = [*(a1 + 56) componentsJoinedByString:{@", "}];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v5;
            _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Updated list of disabled features: %@", &buf, 0xCu);
          }
        }

        else
        {
          if (_CPLSilentLogging)
          {
            goto LABEL_19;
          }

          v4 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Updated list of disabled features: none", &buf, 2u);
          }
        }
      }

LABEL_19:
      v6 = [*(a1 + 40) engineLibrary];
      v2 = [v6 store];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v53 = 0x2020000000;
      v54 = 1;
      v7 = [*(a1 + 40) _transportUserIdentifier];
      if (v7)
      {
        if (([*(a1 + 48) isEqual:v7] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v8 = __CPLSyncOSLogDomain();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v9 = *(a1 + 48);
              *v48 = 138412546;
              v49 = v7;
              v50 = 2112;
              v51 = v9;
              _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Transport user changed from %@ to %@, we will need to wipe everything and start from scratch", v48, 0x16u);
            }
          }

          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_286;
          v47[3] = &unk_1E861A940;
          v47[4] = *(a1 + 40);
          [v2 wipeStoreAtNextOpeningWithReason:@"user has changed without CPL being disabled and re-enabled" completionBlock:v47];
        }

        if (!*(a1 + 64))
        {
LABEL_34:
          v15 = *(a1 + 40);
          if (*(v15 + 41) != 1)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v26 = __CPLSyncOSLogDomain();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *v48 = 0;
                _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_DEBUG, "Setup is done", v48, 2u);
              }

              v15 = *(a1 + 40);
            }

            *(v15 + 40) = 1;
            (*(*(a1 + 72) + 16))();
            goto LABEL_42;
          }

          goto LABEL_35;
        }
      }

      else if (!*(a1 + 64))
      {
LABEL_35:
        v14 = 0;
        goto LABEL_36;
      }

      v10 = *(*(a1 + 40) + 32);
      v11 = *(a1 + 64);
      v12 = v11;
      if (v10 && v11)
      {
        v13 = [v10 isEqual:v11];

        v14 = v13 ^ 1;
        if ((v7 == 0) | (v13 ^ 1) & 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v14 = (v10 | v11) != 0;

        if ((v7 == 0) | v14 & 1)
        {
LABEL_36:
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_2_288;
          v39[3] = &unk_1E861F8E8;
          v44 = v7 == 0;
          v45 = 0;
          v40 = v2;
          p_buf = &buf;
          v16 = *(a1 + 48);
          v46 = v14;
          *&v17 = v16;
          *(&v17 + 1) = *(a1 + 40);
          v32 = v17;
          v18 = *(a1 + 64);
          v19 = *(a1 + 56);
          *&v20 = v18;
          *(&v20 + 1) = v19;
          v41 = v32;
          v42 = v20;
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_6;
          v33[3] = &unk_1E861F938;
          *&v32 = *(a1 + 40);
          v21 = *(a1 + 72);
          v37 = v7 == 0;
          v22 = *(a1 + 48);
          v38 = v14;
          *&v23 = *(a1 + 64);
          *(&v23 + 1) = v21;
          *&v24 = v32;
          *(&v24 + 1) = v22;
          v34 = v24;
          v35 = v23;
          v36 = &buf;
          v25 = [v40 performWriteTransactionWithBlock:v39 completionHandler:v33];

LABEL_42:
          _Block_object_dispose(&buf, 8);
          goto LABEL_43;
        }
      }

      goto LABEL_34;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v2;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Setup of transport did fail: %@", &buf, 0xCu);
    }
  }

  (*(*(a1 + 72) + 16))();
LABEL_43:
}

void __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_286(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [*(a1 + 32) engineLibrary];
  [v3 postNotificationName:@"CPLLibraryMustBeWipedNotificationName" object:v2];
}

void __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_2_288(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 80) == 1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_3;
    v17[3] = &unk_1E861F8C0;
    v22 = *(a1 + 81);
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v18 = v4;
    v21 = v5;
    v23 = *(a1 + 80);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v19 = v6;
    v20 = v7;
    [v3 do:v17];
  }

  if (*(a1 + 82) == 1)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E8620940;
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    [v3 do:v14];
  }

  if (*(*(a1 + 48) + 41) == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_5;
    v10[3] = &unk_1E8620A38;
    v11 = *(a1 + 32);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v12 = v8;
    v13 = v9;
    [v3 do:v10];
  }
}

void __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_7;
  v10[3] = &unk_1E861F910;
  v11 = v3;
  v5 = *(a1 + 56);
  v15 = *(a1 + 72);
  v9 = *(a1 + 32);
  v6 = *(&v9 + 1);
  v16 = *(a1 + 73);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v12 = v9;
  v13 = v7;
  v14 = *(a1 + 64);
  v8 = v3;
  [v4 dispatchSyncBlock:v10];
}

void __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_7(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = [*(a1 + 32) error];
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Unable to save user identifier: %@", &v11, 0xCu);
      }
    }

    v5 = *(a1 + 64);
    v6 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Setup is done", &v11, 2u);
      }
    }

    if (*(a1 + 80) == 1)
    {
      [*(a1 + 40) _setTransportUserIdentifier:*(a1 + 48)];
    }

    if (*(a1 + 81) == 1)
    {
      objc_storeStrong((*(a1 + 40) + 32), *(a1 + 56));
    }

    *(*(a1 + 40) + 41) = 0;
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      *(*(a1 + 40) + 40) = 1;
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Setup detected significant changes, will need to retry", &v11, 2u);
        }
      }

      v9 = *(a1 + 64);
      v10 = +[CPLErrors operationCancelledError];
      (*(v9 + 16))(v9, v10);
    }
  }
}

uint64_t __56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != 1 || (result = [*(a1 + 32) resetCompleteSyncStateWithCause:@"user change" error:a2], *(*(*(a1 + 56) + 8) + 24) = 0, result))
  {
    if (*(a1 + 65) == 1)
    {
      result = [*(a1 + 32) storeUserIdentifier:*(a1 + 40) error:a2];
      if (!result)
      {
        return result;
      }

      if (*(a1 + 65))
      {
        v5 = [*(a1 + 48) engineLibrary];
        [v5 notifyAttachedObjectsPullQueueIsFull];
      }
    }

    return 1;
  }

  return result;
}

void *__56__CPLEngineSyncManager__setupTaskWithCompletionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = [*(a1 + 32) updateDisabledFeatures:*(a1 + 40) didReset:&v4 error:a2];
  if (result)
  {
    if (v4 == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  return result;
}

- (id)_descriptionForSetupTasks
{
  setupTask = self->_setupTask;
  if (setupTask)
  {
    setupTask = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", setupTask];
  }

  else
  {
    setupTask = 0;
  }

  return setupTask;
}

- (void)_launchForcedTaskIfNecessary
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_lock);
  if (!self->_closed && !self->_state && !self->_currentForcedTask && !self->_forcedSetupTask && [(NSMutableArray *)self->_pendingForcedTasks count]&& ![(NSCountedSet *)self->_blockedReasons count])
  {
    _transportUserIdentifier = [(CPLEngineSyncManager *)self _transportUserIdentifier];
    if (_transportUserIdentifier)
    {
      firstObject = [(NSMutableArray *)self->_pendingForcedTasks firstObject];
      currentForcedTask = self->_currentForcedTask;
      self->_currentForcedTask = firstObject;

      if ([(NSMutableArray *)self->_pendingForcedTasks count]== 1)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        pendingForcedTasks = self->_pendingForcedTasks;
        self->_pendingForcedTasks = v12;
      }

      else
      {
        [(NSMutableArray *)self->_pendingForcedTasks removeObjectAtIndex:0];
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLForcedOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_currentForcedTask;
          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "Launching %@", buf, 0xCu);
        }
      }

      taskDidFinishWithErrorBlock = [(CPLEngineSyncManagerForcedTask *)self->_currentForcedTask taskDidFinishWithErrorBlock];
      objc_initWeak(buf, self);
      v18 = self->_currentForcedTask;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __52__CPLEngineSyncManager__launchForcedTaskIfNecessary__block_invoke;
      v20[3] = &unk_1E861F890;
      objc_copyWeak(&v22, buf);
      v20[4] = self;
      v19 = taskDidFinishWithErrorBlock;
      v21 = v19;
      [(CPLEngineSyncManagerForcedTask *)v18 setTaskDidFinishWithErrorBlock:v20];
      [(CPLEngineSyncManagerForcedTask *)self->_currentForcedTask setTransportUserIdentifier:_transportUserIdentifier];
      [(CPLEngineSyncManagerForcedTask *)self->_currentForcedTask reallyLaunch];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLForcedOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Setup needs to be done before launching any forced sync task", buf, 2u);
        }
      }

      [(CPLEngineSyncManager *)self _launchForceSetupTask];
      _transportUserIdentifier = 0;
    }

    goto LABEL_24;
  }

  if (![(NSMutableArray *)self->_pendingForcedTasks count])
  {
    return;
  }

  _transportUserIdentifier = [(NSMutableArray *)self->_pendingForcedTasks firstObject];
  if (!self->_state)
  {
    if (self->_currentForcedTask)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_24;
      }

      v4 = __CPLForcedOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_currentForcedTask;
        *buf = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = _transportUserIdentifier;
        v7 = "Waiting for sync manager to drop previous force sync %@ before launching pending %@";
        v8 = v4;
        v9 = 22;
LABEL_22:
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }

LABEL_23:

      goto LABEL_24;
    }

    if (self->_forcedSetupTask)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_24;
      }

      v4 = __CPLForcedOSLogDomain();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 138412290;
      v24 = _transportUserIdentifier;
      v7 = "Waiting for sync manager to finish forced setup before launching pending %@";
    }

    else
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_24;
      }

      v4 = __CPLForcedOSLogDomain();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 138412290;
      v24 = _transportUserIdentifier;
      v7 = "Waiting for better conditions before launching pending %@";
    }

    v8 = v4;
    v9 = 12;
    goto LABEL_22;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLForcedOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [CPLEngineSyncManager shortDescriptionForState:self->_state];
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = _transportUserIdentifier;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for sync manager to be quiet (currently in %@) before launching pending %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

void __52__CPLEngineSyncManager__launchForcedTaskIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLForcedOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "%@ did finish with error %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__CPLEngineSyncManager__launchForcedTaskIfNecessary__block_invoke_275;
    v11[3] = &unk_1E861B3A8;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = WeakRetained;
    v15 = v6;
    v16 = *(a1 + 40);
    [WeakRetained dispatchForcedTaskBlock:v11];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __52__CPLEngineSyncManager__launchForcedTaskIfNecessary__block_invoke_275(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 104))
  {
    [*(a1 + 48) _forcedTaskDidFinishWithError:*(a1 + 56)];
    [*(a1 + 48) _launchForcedTaskIfNecessary];
    [*(a1 + 48) _reenableSchedulerForForcedTaskIfNecessary];
  }

  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)_launchForceSetupTask
{
  if (self->_forcedSetupTask)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to launch a forced setup twice", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:1063 description:@"Trying to launch a forced setup twice"];

    abort();
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CPLEngineSyncManager__launchForceSetupTask__block_invoke;
  v9[3] = &unk_1E8620A88;
  v9[4] = self;
  v3 = [(CPLEngineSyncManager *)self _setupTaskWithCompletionHandler:v9];
  forcedSetupTask = self->_forcedSetupTask;
  self->_forcedSetupTask = v3;

  [(CPLEngineTransportSetupTask *)self->_forcedSetupTask setForeground:1];
  [(CPLEngineTransportSetupTask *)self->_forcedSetupTask setForcedTask:1];
  [(CPLEngineTransportSetupTask *)self->_forcedSetupTask runWithNoSyncSession];
}

void __45__CPLEngineSyncManager__launchForceSetupTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CPLEngineSyncManager__launchForceSetupTask__block_invoke_2;
  v6[3] = &unk_1E861B290;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 dispatchForcedTaskBlock:v6];
}

void __45__CPLEngineSyncManager__launchForceSetupTask__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = *(a1 + 40);
  if (v4)
  {
    goto LABEL_2;
  }

  v7 = [*(a1 + 32) _transportUserIdentifier];

  if (v7)
  {
    goto LABEL_23;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLForcedOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Setup finished successfully but has no transport user identifier", &v10, 2u);
    }
  }

  v4 = +[CPLErrors unknownError];
  if (v4)
  {
LABEL_2:
    v5 = v4;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLForcedOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Forced setup failed with error: %@", &v10, 0xCu);
      }
    }

    [*(a1 + 32) _discardPendingForcedTasksWithError:v5];
    [*(a1 + 32) _reenableSchedulerForForcedTaskIfNecessary];
  }

  else
  {
LABEL_23:
    if ([*(*(a1 + 32) + 112) count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLForcedOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Forced setup finished successfully", &v10, 2u);
        }
      }

      [*(a1 + 32) _launchForcedTaskIfNecessary];
    }

    else
    {
      [*(a1 + 32) _reenableSchedulerForForcedTaskIfNecessary];
    }
  }
}

- (void)cancelScheduledForcedTaskForLaunch:(id)launch
{
  launchCopy = launch;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CPLEngineSyncManager_cancelScheduledForcedTaskForLaunch___block_invoke;
  v6[3] = &unk_1E861B290;
  v6[4] = self;
  v7 = launchCopy;
  v5 = launchCopy;
  [(CPLEngineSyncManager *)self dispatchForcedTaskBlock:v6];
}

uint64_t __59__CPLEngineSyncManager_cancelScheduledForcedTaskForLaunch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    [v3 cancel];
  }

  else
  {
    v4 = [*(v2 + 112) indexOfObject:*(a1 + 40)];
    v5 = *(a1 + 40);
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 reallyCancel];
    }

    else
    {
      v6 = [v5 taskDidFinishWithErrorBlock];
      v7 = *(a1 + 40);
      v8 = +[CPLErrors operationCancelledError];
      (v6)[2](v6, v7, v8);

      if ([*(*(a1 + 32) + 112) count] == 1)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = *(a1 + 32);
        v11 = *(v10 + 112);
        *(v10 + 112) = v9;
      }

      else
      {
        [*(*(a1 + 32) + 112) removeObjectAtIndex:v4];
      }
    }
  }

  v12 = *(a1 + 32);

  return [v12 _reenableSchedulerForForcedTaskIfNecessary];
}

- (void)scheduleForcedTaskForLaunch:(id)launch
{
  launchCopy = launch;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__CPLEngineSyncManager_scheduleForcedTaskForLaunch___block_invoke;
  v6[3] = &unk_1E861B290;
  v6[4] = self;
  v7 = launchCopy;
  v5 = launchCopy;
  [(CPLEngineSyncManager *)self dispatchForcedTaskBlock:v6];
}

void __52__CPLEngineSyncManager_scheduleForcedTaskForLaunch___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasBrokenScopes])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLForcedOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "All forced syncs are disabled until library is cleaned", buf, 2u);
      }
    }

    v3 = [*(a1 + 40) taskDidFinishWithErrorBlock];
    v4 = *(a1 + 40);
    v5 = +[CPLErrors unknownError];
    goto LABEL_20;
  }

  if ([*(*(a1 + 32) + 184) count])
  {
    if (_CPLSilentLogging)
    {
LABEL_13:
      v3 = [*(a1 + 40) taskDidFinishWithErrorBlock];
      v4 = *(a1 + 40);
      v5 = [v4 discardedError];
LABEL_20:
      v11 = v5;
      (v3)[2](v3, v4, v5);

LABEL_21:
      return;
    }

    v6 = __CPLForcedOSLogDomain();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      goto LABEL_13;
    }

    v7 = *(a1 + 40);
    *buf = 138412290;
    v51 = v7;
    v8 = "Ignoring %@ because we are blocked";
LABEL_11:
    _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    goto LABEL_12;
  }

  if (*(*(a1 + 32) + 42) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLForcedOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138412290;
        v51 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because we are closed", buf, 0xCu);
      }
    }

    v3 = [*(a1 + 40) taskDidFinishWithErrorBlock];
    v4 = *(a1 + 40);
    v5 = +[CPLErrors libraryClosedError];
    goto LABEL_20;
  }

  v12 = [*(a1 + 40) allowsBackgroundDispatch];
  v13 = *(a1 + 32);
  if ((v12 & 1) == 0 && (*(v13 + 160) & 1) == 0)
  {
    if ([v13 _checkForegroundAtLaunchForForcedTask])
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_13;
      }

      v6 = __CPLForcedOSLogDomain();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v14 = *(a1 + 40);
      *buf = 138412290;
      v51 = v14;
      v8 = "Ignoring %@ because we are in background";
      goto LABEL_11;
    }

    v13 = *(a1 + 32);
  }

  v15 = *(v13 + 104);
  if (v15)
  {
    v48 = 0;
    if (![(CPLEngineSyncManager *)v13 _canLaunchForcedTaskVsOtherForcedTask:v15 otherForcedTask:&v48 discardOtherForcedTask:?])
    {
      goto LABEL_67;
    }

    if (v48 == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = __CPLForcedOSLogDomain();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 40);
          v18 = *(*(a1 + 32) + 104);
          *buf = 138412546;
          v51 = v18;
          v52 = 2112;
          v53 = v17;
          _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Cancelling %@ because we must launch %@", buf, 0x16u);
        }
      }

      [*(*(a1 + 32) + 104) cancelTask];
    }

    v13 = *(a1 + 32);
  }

  if ([*(v13 + 112) count])
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = *(*(a1 + 32) + 112);
    v21 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = 0;
      v25 = *v45;
      *&v22 = 138412546;
      v43 = v22;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v45 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v44 + 1) + 8 * i);
          v48 = 0;
          if (![(CPLEngineSyncManager *)*(a1 + 32) _canLaunchForcedTaskVsOtherForcedTask:v27 otherForcedTask:&v48 discardOtherForcedTask:?])
          {
            v32 = 0;
            goto LABEL_56;
          }

          if (v48 == 1)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v28 = __CPLForcedOSLogDomain();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(a1 + 40);
                *buf = v43;
                v51 = v27;
                v52 = 2112;
                v53 = v29;
                _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_DEFAULT, "Cancelling pending %@ because we must launch %@", buf, 0x16u);
              }
            }

            v30 = [v27 taskDidFinishWithErrorBlock];
            v31 = +[CPLErrors operationCancelledError];
            (v30)[2](v30, v27, v31);

            [v19 addIndex:v24];
          }

          ++v24;
        }

        v23 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v32 = 1;
    }

    else
    {
      v32 = 1;
    }

LABEL_56:

    v33 = [v19 count];
    if (v33 == [*(*(a1 + 32) + 112) count])
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v35 = *(a1 + 32);
      v36 = *(v35 + 112);
      *(v35 + 112) = v34;
    }

    else
    {
      [*(*(a1 + 32) + 112) removeObjectsAtIndexes:v19];
    }

    if (v32)
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v38 = *(a1 + 32);
      v39 = *(v38 + 112);
      *(v38 + 112) = v37;

      goto LABEL_61;
    }

LABEL_67:
    v3 = [CPLErrors cplErrorWithCode:10 description:@"A more important force sync task is running", v43];
    v42 = [*(a1 + 40) taskDidFinishWithErrorBlock];
    v42[2](v42, *(a1 + 40), v3);

    [(CPLEngineSyncManager *)*(a1 + 32) _recordForcedTask:1 discarded:v3 error:?];
    goto LABEL_21;
  }

LABEL_61:
  [*(*(a1 + 32) + 112) addObject:{*(a1 + 40), v43}];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v40 = __CPLForcedOSLogDomain();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 40);
      *buf = 138412290;
      v51 = v41;
      _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_DEFAULT, "Enqueuing %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _disableSchedulerForForcedTaskIfNecessary];
  [*(a1 + 32) _launchForcedTaskIfNecessary];
}

- (uint64_t)_canLaunchForcedTaskVsOtherForcedTask:(void *)task otherForcedTask:(char *)forcedTask discardOtherForcedTask:
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  taskCopy = task;
  if (self)
  {
    forcedTaskPriority = [v7 forcedTaskPriority];
    forcedTaskPriority2 = [taskCopy forcedTaskPriority];
    if (forcedTaskPriority < forcedTaskPriority2)
    {
LABEL_3:
      self = 0;
      v11 = 0;
LABEL_14:
      *forcedTask = v11;
      goto LABEL_15;
    }

    if (forcedTaskPriority == forcedTaskPriority2)
    {
      if (![taskCopy allowsForcedTaskQueuing])
      {
        goto LABEL_3;
      }

      if ([v7 allowsForcedTaskQueuing])
      {
        v11 = 0;
        self = 1;
        goto LABEL_14;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLForcedOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = taskCopy;
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Cancelling %@ because we must launch %@", &v14, 0x16u);
        }
      }

      [taskCopy cancelTask];
    }

    self = 1;
    v11 = 1;
    goto LABEL_14;
  }

LABEL_15:

  return self;
}

- (void)_recordForcedTask:(BOOL)task discarded:(void *)discarded error:
{
  v21 = a2;
  discardedCopy = discarded;
  if (self)
  {
    if (!*(self + 168))
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = *(self + 168);
      *(self + 168) = v8;
    }

    v10 = [_CPLForcedTaskHistory alloc];
    v11 = v21;
    v12 = discardedCopy;
    if (v10)
    {
      v22.receiver = v10;
      v22.super_class = _CPLForcedTaskHistory;
      v10 = objc_msgSendSuper2(&v22, sel_init);
      if (v10)
      {
        simpleDescription = [v11 simpleDescription];
        simpleDescription = v10->_simpleDescription;
        v10->_simpleDescription = simpleDescription;

        creationDate = [v11 creationDate];
        creationDate = v10->_creationDate;
        v10->_creationDate = creationDate;

        v17 = objc_opt_class();
        taskClass = v10->_taskClass;
        v10->_taskClass = v17;

        v10->_discarded = task;
        localizedDescription = [v12 localizedDescription];
        errorDescription = v10->_errorDescription;
        v10->_errorDescription = localizedDescription;
      }
    }

    [*(self + 168) addObject:v10];
    if ([*(self + 168) count] >= 4)
    {
      [*(self + 168) removeObjectsInRange:{0, objc_msgSend(*(self + 168), "count") - 3}];
    }
  }
}

- (void)_forcedTaskDidFinishWithError:(id)error
{
  currentForcedTask = self->_currentForcedTask;
  if (currentForcedTask)
  {
    [(CPLEngineSyncManager *)self _recordForcedTask:0 discarded:error error:?];
    v5 = self->_currentForcedTask;
    self->_currentForcedTask = 0;
  }
}

- (void)_discardPendingForcedTasksWithError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_pendingForcedTasks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        taskDidFinishWithErrorBlock = [v10 taskDidFinishWithErrorBlock];
        v12 = taskDidFinishWithErrorBlock;
        if (errorCopy)
        {
          (*(taskDidFinishWithErrorBlock + 16))(taskDidFinishWithErrorBlock, v10, errorCopy);
        }

        else
        {
          discardedError = [v10 discardedError];
          (v12)[2](v12, v10, discardedError);
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pendingForcedTasks = self->_pendingForcedTasks;
  self->_pendingForcedTasks = v14;
}

- (BOOL)_checkForegroundAtLaunchForForcedTask
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"CPLForceForegroundAtLaunchForForcedTask"];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_reenableSchedulerForForcedTaskIfNecessary
{
  dispatch_assert_queue_V2(self->_lock);
  if (![(NSMutableArray *)self->_pendingForcedTasks count]&& !self->_currentForcedTask && !self->_forcedSetupTask && self->_disabledSchedulerForForcedTask)
  {
    engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
    scheduler = [engineLibrary scheduler];
    [scheduler enableSynchronizationWithReason:@"performing a forced task"];

    self->_disabledSchedulerForForcedTask = 0;
    closingCompletionHandler = self->_closingCompletionHandler;
    if (closingCompletionHandler)
    {
      closingCompletionHandler[2](closingCompletionHandler, 0);
      v6 = self->_closingCompletionHandler;
      self->_closingCompletionHandler = 0;
    }
  }

  [(CPLEngineSyncManager *)self _dispatchCancellerBlocksIfNecessary];
}

- (void)_disableSchedulerForForcedTaskIfNecessary
{
  dispatch_assert_queue_V2(self->_lock);
  if (!self->_closed && ([(NSMutableArray *)self->_pendingForcedTasks count]|| self->_currentForcedTask || self->_forcedSetupTask) && !self->_disabledSchedulerForForcedTask)
  {
    engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
    scheduler = [engineLibrary scheduler];
    [scheduler disableSynchronizationWithReason:@"performing a forced task"];

    [(CPLEngineSyncManager *)self _cancelAllTasksLockedDeferringPushTaskCancellationIfCurrentlyUploadingForeground:?];
    self->_disabledSchedulerForForcedTask = 1;
  }
}

- (void)removeBrokenScope:(id)scope
{
  scopeCopy = scope;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __42__CPLEngineSyncManager_removeBrokenScope___block_invoke;
  v13 = &unk_1E861F868;
  selfCopy = self;
  v5 = scopeCopy;
  v15 = v5;
  v16 = &v17;
  v6 = v11;
  os_unfair_lock_lock(&self->_brokenScopesLock);
  v12(v6);
  os_unfair_lock_unlock(&self->_brokenScopesLock);

  if (*(v18 + 24) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "All broken scopes have been fixed. Starting a sync session", v10, 2u);
      }
    }

    engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
    scheduler = [engineLibrary scheduler];
    [scheduler kickOffSyncSession];
  }

  _Block_object_dispose(&v17, 8);
}

void __42__CPLEngineSyncManager_removeBrokenScope___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CPLEngineSyncManager_removeBrokenScope___block_invoke_2;
  v4[3] = &unk_1E861F840;
  v5 = *(a1 + 40);
  v3 = [v2 indexesOfObjectsPassingTest:v4];
  if ([v3 count])
  {
    [*(*(a1 + 32) + 24) removeObjectsAtIndexes:v3];
    *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 24) count] == 0;
  }
}

uint64_t __42__CPLEngineSyncManager_removeBrokenScope___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 engineScope];
  v4 = [v3 scopeIdentifier];
  v5 = [*(a1 + 32) scopeIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (void)addBrokenScope:(id)scope
{
  scopeCopy = scope;
  v5 = [CPLBrokenScope alloc];
  engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
  v7 = [(CPLBrokenScope *)v5 initWithEngineScope:scopeCopy engineLibrary:engineLibrary];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __39__CPLEngineSyncManager_addBrokenScope___block_invoke;
  v13 = &unk_1E861B290;
  selfCopy = self;
  v8 = v7;
  v15 = v8;
  v9 = &v10;
  os_unfair_lock_lock(&self->_brokenScopesLock);
  v12(v9);
  os_unfair_lock_unlock(&self->_brokenScopesLock);

  [(CPLBrokenScope *)v8 showAlertToUser:v10];
}

uint64_t __39__CPLEngineSyncManager_addBrokenScope___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (NSArray)brokenScopes
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__20784;
  v18 = __Block_byref_object_dispose__20785;
  v19 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __36__CPLEngineSyncManager_brokenScopes__block_invoke;
  v11 = &unk_1E861F818;
  selfCopy = self;
  v13 = &v14;
  v3 = v9;
  os_unfair_lock_lock(&self->_brokenScopesLock);
  v10(v3);
  os_unfair_lock_unlock(&self->_brokenScopesLock);

  v4 = [v15[5] copy];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __36__CPLEngineSyncManager_brokenScopes__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 24), "count")}];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(*(a1 + 32) + 24);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(*(a1 + 40) + 8) + 40);
          v11 = [*(*(&v12 + 1) + 8 * v9) engineScope];
          [v10 addObject:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)configureDirectTransportTask:(id)task
{
  taskCopy = task;
  _transportUserIdentifier = [(CPLEngineSyncManager *)self _transportUserIdentifier];
  [taskCopy setTransportUserIdentifier:_transportUserIdentifier];
}

- (BOOL)prepareAndLaunchSyncTaskUnlocked:(id)unlocked
{
  v30 = *MEMORY[0x1E69E9840];
  unlockedCopy = unlocked;
  dispatch_assert_queue_V2(self->_lock);
  if (!unlockedCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Asked to launch a task without providing a task", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v24 lineNumber:792 description:@"Asked to launch a task without providing a task"];

    abort();
  }

  _transportUserIdentifier = [(CPLEngineSyncManager *)self _transportUserIdentifier];
  if (_transportUserIdentifier)
  {
    engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
    scheduler = [engineLibrary scheduler];
    v25 = 0;
    v9 = [scheduler isSynchronizationDisabledWithReasonError:&v25];
    v10 = v25;

    if (v9)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v10;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEBUG, "Synchronization is disabled (error: %@)", buf, 0xCu);
        }
      }

      [(CPLEngineSyncManager *)self setErrorForSyncSessionUnlocked:v10];
    }

    else
    {
      if (self->_state < 3 || ((-[CPLEngineSyncManager engineLibrary](self, "engineLibrary"), v12 = objc_claimAutoreleasedReturnValue(), [v12 systemMonitor], v13 = objc_claimAutoreleasedReturnValue(), v12, v14 = objc_msgSend(v13, "diskPressureState"), self->_state >= 9) ? (v15 = v14 == 0) : (v15 = v14 != 2), v13, v15))
      {
        [unlockedCopy setTransportUserIdentifier:_transportUserIdentifier];
        [unlockedCopy setDelegate:self];
        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = " with background priority";
            if (self->_foreground)
            {
              v17 = " with foreground priority";
            }

            *buf = 138412546;
            v27 = unlockedCopy;
            v28 = 2080;
            v29 = v17;
            _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "Launching %@%s", buf, 0x16u);
          }
        }

        [unlockedCopy setForeground:self->_foreground];
        [unlockedCopy launch];
        v18 = 1;
        goto LABEL_29;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [objc_opt_class() shortDescriptionForState:self->_state];
          *buf = 138412290;
          v27 = v20;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "System does not have enough space on disk to do %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v18 = 0;
      goto LABEL_30;
    }

    v10 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v27 = unlockedCopy;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Can't launch %@ as there is no transport user identifier", buf, 0xCu);
    }
  }

  v18 = 0;
LABEL_29:

LABEL_30:
  return v18;
}

- (void)setBoostPriority:(BOOL)priority
{
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CPLEngineSyncManager_setBoostPriority___block_invoke;
  v7[3] = &unk_1E861F7F0;
  v7[4] = self;
  priorityCopy = priority;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = lock;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void *__41__CPLEngineSyncManager_setBoostPriority___block_invoke(void *result)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 161) != v2)
  {
    v3 = result;
    *(v1 + 161) = v2;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3[4] + 161))
        {
          v5 = @"Start";
        }

        else
        {
          v5 = @"Stop";
        }

        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%@ boosting priority", &v6, 0xCu);
      }
    }

    return [v3[4] _overrideBudgetsIfNeeded];
  }

  return result;
}

- (void)setSyncSessionShouldBeForeground:(BOOL)foreground
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__CPLEngineSyncManager_setSyncSessionShouldBeForeground___block_invoke;
  v3[3] = &unk_1E861F7F0;
  foregroundCopy = foreground;
  v3[4] = self;
  [(CPLEngineSyncManager *)self dispatchSyncBlock:v3];
}

void __57__CPLEngineSyncManager_setSyncSessionShouldBeForeground___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 != *(v3 + 160))
  {
    *(v3 + 160) = v2;
    if (*(a1 + 40) == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Moving to foreground operations", buf, 2u);
        }
      }

      [CPLTransaction beginTransactionWithIdentifier:@"cpl.foreground" description:@"client is foreground" keepPower:0];
    }

    else
    {
      [CPLTransaction endTransactionWithIdentifier:@"cpl.foreground"];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Moving to background operations", buf, 2u);
        }
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        [*(v6 + 88) moveTasksToBackground];
      }
    }

    v7 = [*(a1 + 32) platformObject];
    [v7 setSyncSessionShouldBeForeground:*(a1 + 40)];

    v3 = *(a1 + 32);
    LOBYTE(v2) = *(v3 + 160);
  }

  if ((v2 & 1) == 0)
  {
    v8 = *(v3 + 104);
    if (v8)
    {
      v9 = [v8 allowsBackgroundDispatch];
      v3 = *(a1 + 32);
      if ((v9 & 1) == 0)
      {
        v10 = *(v3 + 104);
        v11 = *(a1 + 32);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __57__CPLEngineSyncManager_setSyncSessionShouldBeForeground___block_invoke_242;
        v22[3] = &unk_1E861B290;
        v22[4] = v11;
        v23 = v10;
        v12 = v10;
        [v11 _dispatchAfter:v22 block:60.0];

        v3 = *(a1 + 32);
      }
    }

    if ([*(v3 + 112) count])
    {
      v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v14 = *(*(a1 + 32) + 112);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __57__CPLEngineSyncManager_setSyncSessionShouldBeForeground___block_invoke_244;
      v20[3] = &unk_1E861F7C8;
      v15 = v13;
      v21 = v15;
      [v14 enumerateObjectsUsingBlock:v20];
      v16 = [v15 count];
      if (v16 == [*(*(a1 + 32) + 112) count])
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v18 = *(a1 + 32);
        v19 = *(v18 + 112);
        *(v18 + 112) = v17;
      }

      else
      {
        [*(*(a1 + 32) + 112) removeObjectsAtIndexes:v15];
      }
    }

    [*(a1 + 32) _reenableSchedulerForForcedTaskIfNecessary];
  }
}

void *__57__CPLEngineSyncManager_setSyncSessionShouldBeForeground___block_invoke_242(void *result)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if ((*(v1 + 160) & 1) == 0)
  {
    v2 = result;
    result = result[5];
    if (*(v1 + 104) == result)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v3 = __CPLForcedOSLogDomain();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = v2[5];
          v5 = 138412290;
          v6 = v4;
          _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling %@ because we moved to background", &v5, 0xCu);
        }

        result = v2[5];
      }

      return [result cancelTask];
    }
  }

  return result;
}

void __57__CPLEngineSyncManager_setSyncSessionShouldBeForeground___block_invoke_244(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (([v5 allowsBackgroundDispatch] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLForcedOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling pending %@ because we moved to background", &v9, 0xCu);
      }
    }

    v7 = [v5 taskDidFinishWithErrorBlock];
    v8 = [v5 discardedError];
    (v7)[2](v7, v5, v8);

    [*(a1 + 32) addIndex:a3];
  }
}

- (void)requestDisabledFeaturesUpdate
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CPLEngineSyncManager_requestDisabledFeaturesUpdate__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = lock;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __53__CPLEngineSyncManager_requestDisabledFeaturesUpdate__block_invoke(uint64_t result)
{
  *(*(result + 32) + 41) = 1;
  *(*(result + 32) + 40) = 0;
  return result;
}

- (void)discardTransportUserIdentifier
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CPLEngineSyncManager_discardTransportUserIdentifier__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = lock;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void *__54__CPLEngineSyncManager_discardTransportUserIdentifier__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setTransportUserIdentifier:0];
  *(*(a1 + 32) + 40) = 0;
  return result;
}

- (void)resetTransportUserIdentifier
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "Resetting transport user identifier", buf, 2u);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__CPLEngineSyncManager_resetTransportUserIdentifier__block_invoke;
  v4[3] = &unk_1E861A940;
  v4[4] = self;
  [(CPLEngineSyncManager *)self dispatchSyncBlock:v4];
}

void __52__CPLEngineSyncManager_resetTransportUserIdentifier__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setTransportUserIdentifier:0];
  *(*(a1 + 32) + 40) = 0;
  dispatch_suspend(*(*(a1 + 32) + 72));
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 store];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CPLEngineSyncManager_resetTransportUserIdentifier__block_invoke_2;
  v7[3] = &unk_1E86205E0;
  v8 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__CPLEngineSyncManager_resetTransportUserIdentifier__block_invoke_2_234;
  v6[3] = &unk_1E86205E0;
  v6[4] = *(a1 + 32);
  v4 = v3;
  v5 = [v4 performWriteTransactionWithBlock:v7 completionHandler:v6];
}

void __52__CPLEngineSyncManager_resetTransportUserIdentifier__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Restting stored user identifier", buf, 2u);
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CPLEngineSyncManager_resetTransportUserIdentifier__block_invoke_231;
  v5[3] = &unk_1E8620478;
  v6 = *(a1 + 32);
  [v3 do:v5];
}

- (void)_setTransportUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_transportUserIdentifierLock);
  transportUserIdentifier = self->_transportUserIdentifier;
  self->_transportUserIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_transportUserIdentifierLock);
}

- (void)unblockSyncSessionWithReason:(id)reason
{
  reasonCopy = reason;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__CPLEngineSyncManager_unblockSyncSessionWithReason___block_invoke;
  v11[3] = &unk_1E861B128;
  v11[4] = self;
  v12 = reasonCopy;
  v13 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = lock;
  v9 = reasonCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void *__53__CPLEngineSyncManager_unblockSyncSessionWithReason___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (![*(a1[4] + 184) countForObject:a1[5]])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = a1[5];
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Sync manager unblocked for reason '%@' too many times", buf, 0xCu);
      }
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = a1[6];
    v8 = a1[4];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
    [v6 handleFailureInMethod:v7 object:v8 file:v9 lineNumber:662 description:{@"Sync manager unblocked for reason '%@' too many times", a1[5]}];

    abort();
  }

  [*(a1[4] + 184) removeObject:a1[5]];
  result = [*(a1[4] + 184) count];
  if (result)
  {
    v3 = a1[4];

    return [v3 _launchForcedTaskIfNecessary];
  }

  return result;
}

- (void)cancelAndBlockAllSyncSessionsWithReason:(id)reason block:(id)block
{
  reasonCopy = reason;
  blockCopy = block;
  lock = self->_lock;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CPLEngineSyncManager_cancelAndBlockAllSyncSessionsWithReason_block___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = reasonCopy;
  v16 = blockCopy;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = lock;
  v11 = blockCopy;
  v12 = reasonCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __70__CPLEngineSyncManager_cancelAndBlockAllSyncSessionsWithReason_block___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 184);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 184);
    *(v4 + 184) = v3;

    v2 = *(*(a1 + 32) + 184);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 176);
  if (v7)
  {
    v18 = MEMORY[0x1E128EBA0](*(a1 + 48));
    [v7 addObject:?];
  }

  else
  {
    if ([*(v6 + 112) count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLForcedOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(*(a1 + 32) + 112) count];
          v10 = [*(*(a1 + 32) + 112) firstObject];
          *buf = 134218242;
          v20 = v9;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Cancelling %lu pending forced tasks (first: %@)", buf, 0x16u);
        }
      }

      [*(a1 + 32) _discardPendingForcedTasksWithError:0];
    }

    v11 = *(a1 + 32);
    if (*(v11 + 104) || *(v11 + 216))
    {
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      v13 = MEMORY[0x1E128EBA0](*(a1 + 48));
      v14 = [v12 initWithObjects:{v13, 0}];
      v15 = *(a1 + 32);
      v16 = *(v15 + 176);
      *(v15 + 176) = v14;

      [*(*(a1 + 32) + 104) cancelTask];
      [(CPLEngineSyncManager *)*(a1 + 32) _cancelCurrentSyncSession];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "No sync session is currently running - no need to cancel anything", buf, 2u);
        }
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_cancelCurrentSyncSession
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self[3].length = 14;
    if (self[6].length <= 0xDuLL)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v2 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          _shortDescriptionForCurrentState = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
          _descriptionForLaunchedTasks = [(CPLEngineSyncManager *)self _descriptionForLaunchedTasks];
          v8 = 138412546;
          v9 = _shortDescriptionForCurrentState;
          v10 = 2112;
          v11 = _descriptionForLaunchedTasks;
          _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Cancelling %@ (%@)", &v8, 0x16u);
        }
      }

      [(CPLEngineSyncManager *)self _cancelAllTasksLockedDeferringPushTaskCancellationIfCurrentlyUploadingForeground:?];
      engineLibrary = [(__CFString *)self engineLibrary];
      store = [engineLibrary store];
      [store performBarrier];
    }
  }
}

- (void)cancelCurrentSyncSession
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CPLEngineSyncManager_cancelCurrentSyncSession__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = lock;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)startSyncSession:(id)session withMinimalPhase:(unint64_t)phase rewind:(BOOL)rewind
{
  sessionCopy = session;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CPLEngineSyncManager_startSyncSession_withMinimalPhase_rewind___block_invoke;
  v10[3] = &unk_1E861B178;
  rewindCopy = rewind;
  v10[4] = self;
  v11 = sessionCopy;
  phaseCopy = phase;
  v9 = sessionCopy;
  [(CPLEngineSyncManager *)self dispatchSyncBlock:v10];
}

void __65__CPLEngineSyncManager_startSyncSession_withMinimalPhase_rewind___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1 && *(v2 + 64) != *(a1 + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        v5 = [CPLEngineSyncManager shortDescriptionForState:*(a1 + 48)];
        v6 = *(*(a1 + 32) + 64);
        *buf = 138412802;
        v42 = v4;
        v43 = 2112;
        v44 = v5;
        v45 = 2112;
        v46 = v6;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Asked to rewind %@ to %@ but current session is %@", buf, 0x20u);
LABEL_11:

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    return;
  }

  if (![*(v2 + 184) count])
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = v10;
    v14 = v13;
    if (v12)
    {
      if (!v13)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v35 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = NSStringFromSelector(sel__restartSyncSessionFromStateLocked_session_cancelIfNecessary_);
            *buf = 138412290;
            v42 = v36;
            _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_ERROR, "%@ called with no sync session to attach to", buf, 0xCu);
          }
        }

        v37 = [MEMORY[0x1E696AAA8] currentHandler];
        v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
        v39 = NSStringFromSelector(sel__restartSyncSessionFromStateLocked_session_cancelIfNecessary_);
        [v37 handleFailureInMethod:sel__restartSyncSessionFromStateLocked_session_cancelIfNecessary_ object:v12 file:v38 lineNumber:537 description:{@"%@ called with no sync session to attach to", v39}];

        abort();
      }

      if (*(v12 + 64) != v13)
      {
        v15 = [MEMORY[0x1E695DF00] date];
        v16 = *(v12 + 136);
        *(v12 + 136) = v15;

        v17 = *(v12 + 144);
        *(v12 + 144) = 0;

        v18 = [v14 description];
        v19 = *(v12 + 152);
        *(v12 + 152) = v18;

        [v14 sessionWillStart];
      }

      objc_storeStrong((v12 + 64), v10);
      if (v11 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v11;
      }

      if (*(v12 + 120) >= v20)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v25 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = [objc_opt_class() shortDescriptionForState:v20];
            v28 = [(CPLEngineSyncManager *)v12 _shortDescriptionForCurrentState];
            v29 = [(CPLEngineSyncManager *)v12 _descriptionForLaunchedTasks];
            *buf = 138412802;
            v42 = v26;
            v43 = 2112;
            v44 = v28;
            v45 = 2112;
            v46 = v29;
            _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEBUG, "Will try to restart a sync session from %@ (current state is %@ / current tasks are: %@)", buf, 0x20u);
          }
        }

        [(CPLEngineSyncManager *)v12 _resetErrorForSyncSession];
        v30 = *(v12 + 216);
        if (!v30)
        {
          if (*(v12 + 40))
          {
            v32 = v20 - 1;
          }

          else
          {
            v32 = 0;
          }

          [v12 _advanceToNextStateLockedMinimalState:v32];
          WeakRetained = objc_loadWeakRetained((v12 + 208));
          v34 = [WeakRetained feedback];
          [v34 sendFeedbackToServerIfNecessary];

          goto LABEL_45;
        }

        if (v30 == v20)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v31 = __CPLSyncOSLogDomain();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_DEBUG, "Finishing the current state, and starting over", buf, 2u);
            }
          }
        }

        else
        {
          if (v30 <= v20)
          {
            goto LABEL_45;
          }

          [(CPLEngineSyncManager *)v12 _cancelAllTasksLockedDeferringPushTaskCancellationIfCurrentlyUploadingForeground:?];
        }

        *(v12 + 120) = v20;
        goto LABEL_45;
      }

      [(CPLEngineSyncManager *)v12 _cancelAllTasksLockedDeferringPushTaskCancellationIfCurrentlyUploadingForeground:?];
    }

LABEL_45:

    return;
  }

  if (*(a1 + 56))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v5 = [CPLEngineSyncManager shortDescriptionForState:*(a1 + 48)];
        v8 = [*(*(a1 + 32) + 184) allObjects];
        v9 = [v8 componentsJoinedByString:{@", "}];
        *buf = 138412802;
        v42 = v7;
        v43 = 2112;
        v44 = v5;
        v45 = 2114;
        v46 = v9;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Asked to rewind %@ to %@ but sync is blocked because of %{public}@", buf, 0x20u);

        goto LABEL_11;
      }

LABEL_12:
    }
  }

  else
  {
    v40 = objc_loadWeakRetained((*(a1 + 32) + 208));
    v21 = [v40 scheduler];
    v22 = *(a1 + 40);
    if (*(a1 + 48) >= *(*(a1 + 32) + 216))
    {
      v23 = *(*(a1 + 32) + 216);
    }

    else
    {
      v23 = *(a1 + 48);
    }

    v24 = +[CPLErrors operationCancelledError];
    [v21 noteSyncSession:v22 failedDuringPhase:v23 withError:v24];
  }
}

- (void)_advanceToNextStateLockedMinimalState:(unint64_t)state
{
  v60 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_pendingForcedTasks count]|| self->_disabledSchedulerForForcedTask || self->_closed)
  {
    if ([(NSMutableArray *)self->_pendingForcedTasks count])
    {
      if (_CPLSilentLogging)
      {
LABEL_13:
        state = self->_state;
        v10 = +[CPLErrors operationCancelledError];
        [(CPLEngineSyncManager *)self setErrorForSyncSessionUnlocked:v10];

        [(CPLEngineSyncManager *)self _setState:14];
        [(CPLEngineSyncManager *)self _launchNecessaryTasksForCurrentStateLocked];
        goto LABEL_14;
      }

      v6 = __CPLForcedOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        firstObject = [(NSMutableArray *)self->_pendingForcedTasks firstObject];
        *buf = 138412290;
        *&buf[4] = firstObject;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Stopping current sync session because of pending %@", buf, 0xCu);
      }
    }

    else
    {
      if (!self->_currentForcedTask || (_CPLSilentLogging & 1) != 0)
      {
        goto LABEL_13;
      }

      v6 = __CPLForcedOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        currentForcedTask = self->_currentForcedTask;
        *buf = 138412290;
        *&buf[4] = currentForcedTask;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Stopping current sync session because of %@", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

  if ([(CPLSyncSession *)self->_session shouldDefer])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEFAULT, "Sync session has been deferred. Stopping now", buf, 2u);
      }
    }

    state = self->_state;
    v26 = +[CPLErrors sessionHasBeenDeferredError];
    [(CPLEngineSyncManager *)self setErrorForSyncSessionUnlocked:v26];

    [(CPLEngineSyncManager *)self _setState:14];
    [(CPLEngineSyncManager *)self _launchNecessaryTasksForCurrentStateLocked];
    goto LABEL_14;
  }

  if (self->_state && !self->_setupIsDone)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v27 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        _shortDescriptionForCurrentState = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
        *buf = 138412290;
        *&buf[4] = _shortDescriptionForCurrentState;
        _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEBUG, "Looking for next steps after %@ but setup must be done first", buf, 0xCu);
      }
    }

    [(CPLEngineSyncManager *)self _setState:0];
    platformObject = [(CPLEngineSyncManager *)self platformObject];
    [platformObject didMoveToState:self->_state];

    state = 0;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v31 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      _shortDescriptionForCurrentState2 = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
      *buf = 138412290;
      *&buf[4] = _shortDescriptionForCurrentState2;
      _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_DEBUG, "Looking for next state after %@", buf, 0xCu);
    }
  }

  state = self->_state;
  if (state <= state)
  {
    stateCopy = self->_state;
  }

  else
  {
    stateCopy = state;
  }

  [(CPLEngineSyncManager *)self _setState:stateCopy];
  while (1)
  {
    v35 = self->_state;
    if (v35 > 0xD)
    {
      goto LABEL_14;
    }

    if (v35 >= 3)
    {
      engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
      store = [engineLibrary store];
      isClientInSyncWithClientCache = [store isClientInSyncWithClientCache];

      if ((isClientInSyncWithClientCache & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v44 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1DC05A000, v44, OS_LOG_TYPE_DEBUG, "Client is not yet in sync with the client cache, we are not going any further", buf, 2u);
          }
        }

        goto LABEL_75;
      }
    }

    hasBrokenScopes = [(CPLEngineSyncManager *)self hasBrokenScopes];
    v40 = self->_state;
    if (hasBrokenScopes)
    {
      break;
    }

    if (v40 >= 9)
    {
      engineLibrary2 = [(CPLEngineSyncManager *)self engineLibrary];
      scheduler = [engineLibrary2 scheduler];
      isMinglingEnabled = [scheduler isMinglingEnabled];

      if (!isMinglingEnabled)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v47 = __CPLSyncOSLogDomain();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_DEBUG, "Client still needs to push more records, we are not going any further", buf, 2u);
          }
        }

LABEL_75:
        [(CPLEngineSyncManager *)self _setState:14];
        [(CPLEngineSyncManager *)self _launchNecessaryTasksForCurrentStateLocked];
        goto LABEL_14;
      }

      v40 = self->_state;
    }

LABEL_69:
    [(CPLEngineSyncManager *)self _setState:v40 + 1];
    if ([(CPLEngineSyncManager *)self _launchNecessaryTasksForCurrentStateLocked])
    {
      goto LABEL_14;
    }
  }

  if (v40 < 7)
  {
    goto LABEL_69;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v45 = __CPLSyncOSLogDomain();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_ERROR, "Metadata sync is disabled until the library is cleaned-up", buf, 2u);
    }
  }

  [(CPLEngineSyncManager *)self _setState:14];
  [(CPLEngineSyncManager *)self _launchNecessaryTasksForCurrentStateLocked];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = __Block_byref_object_copy__20784;
  v58 = __Block_byref_object_dispose__20785;
  v59 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v52 = __62__CPLEngineSyncManager__advanceToNextStateLockedMinimalState___block_invoke;
  v53 = &unk_1E861A850;
  selfCopy = self;
  v55 = buf;
  v46 = v51;
  os_unfair_lock_lock(&self->_brokenScopesLock);
  v52(v46);
  os_unfair_lock_unlock(&self->_brokenScopesLock);

  [*(*&buf[8] + 40) makeObjectsPerformSelector:sel_showAlertToUser];
  _Block_object_dispose(buf, 8);

LABEL_14:
  if (state != self->_state)
  {
    platformObject2 = [(CPLEngineSyncManager *)self platformObject];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          _shortDescriptionForCurrentState3 = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
          _descriptionForLaunchedTasks = [(CPLEngineSyncManager *)self _descriptionForLaunchedTasks];
          *buf = 138412546;
          *&buf[4] = _shortDescriptionForCurrentState3;
          *&buf[12] = 2112;
          *&buf[14] = _descriptionForLaunchedTasks;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEBUG, "Moving to state %@ with current tasks: %@", buf, 0x16u);
        }
      }

      platformObject3 = [(CPLEngineSyncManager *)self platformObject];
      [platformObject3 didMoveToState:self->_state];
    }
  }

  [(CPLEngineSyncManager *)self _overrideBudgetsIfNeeded];
  v18 = self->_state;
  if (v18 == 14)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [objc_opt_class() shortDescriptionForState:state];
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEBUG, "No task to launch after %@", buf, 0xCu);
      }
    }

    if (self->_session)
    {
      [(CPLEngineSyncManager *)self _notifyEndOfSyncSession];
    }

    else
    {
      [(CPLEngineSyncManager *)self _setState:0];
    }
  }

  else
  {
    if (!v18)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v48 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v48, OS_LOG_TYPE_ERROR, "State should not be quiet here", buf, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v50 lineNumber:525 description:@"State should not be quiet here"];

      abort();
    }

    if (!state && self->_shouldRestartSessionFromState == 14)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEBUG, "Starting sync session", buf, 2u);
        }
      }

      platformObject4 = [(CPLEngineSyncManager *)self platformObject];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        platformObject5 = [(CPLEngineSyncManager *)self platformObject];
        [platformObject5 willStartSyncSession];
      }
    }
  }
}

uint64_t __62__CPLEngineSyncManager__advanceToNextStateLockedMinimalState___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_setState:(unint64_t)state
{
  v25 = *MEMORY[0x1E69E9840];
  currentStep = self->_currentStep;
  if (currentStep && [(CPLSyncStep *)currentStep hasTasks])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [CPLEngineSyncManager descriptionForState:state];
        descriptionForTasks = [(CPLSyncStep *)self->_currentStep descriptionForTasks];
        *buf = 138412546;
        v22 = v15;
        v23 = 2112;
        v24 = descriptionForTasks;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to move to %@ while still having running tasks for %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
    v19 = [CPLEngineSyncManager descriptionForState:state];
    descriptionForTasks2 = [(CPLSyncStep *)self->_currentStep descriptionForTasks];
    [currentHandler handleFailureInMethod:a2 object:self file:v18 lineNumber:437 description:{@"Trying to move to %@ while still having running tasks for %@", v19, descriptionForTasks2}];

    abort();
  }

  if (self->_session)
  {
    v7 = self->_state == state || state == 0;
    v8 = v7 || state == 14;
    if (!v8 && (_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLSyncOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        session = self->_session;
        v13 = [CPLEngineSyncManager shortDescriptionForState:state];
        *buf = 138412546;
        v22 = session;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "%@ moved to %@", buf, 0x16u);
      }
    }
  }

  self->_state = state;
  v9 = [objc_opt_class() stepForState:self->_state syncManager:self session:self->_session];
  v10 = self->_currentStep;
  self->_currentStep = v9;
}

- (void)setErrorForSyncSessionUnlocked:(id)unlocked
{
  v32 = *MEMORY[0x1E69E9840];
  unlockedCopy = unlocked;
  dispatch_assert_queue_V2(self->_lock);
  if ([(NSError *)unlockedCopy isCPLOperationCancelledError])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLLastSyncErrorOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        _shortDescriptionForCurrentState = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
        v26 = 138412290;
        v27 = _shortDescriptionForCurrentState;
        v8 = "Sync session in %@ got cancelled";
LABEL_9:
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, v8, &v26, 0xCu);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([(NSError *)unlockedCopy isCPLErrorWithCode:10000])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLLastSyncErrorOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        _shortDescriptionForCurrentState = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
        v26 = 138412290;
        v27 = _shortDescriptionForCurrentState;
        v8 = "Sync session in %@ is requesting a retry";
        goto LABEL_9;
      }

LABEL_10:
    }

LABEL_11:
    p_lastError = &self->_lastError;
    goto LABEL_12;
  }

  if (![(NSError *)unlockedCopy isCPLOperationDeferredError])
  {
    engineLibrary = [(CPLEngineSyncManager *)self engineLibrary];
    transport = [engineLibrary transport];

    userInfo = [(NSError *)unlockedCopy userInfo];
    _shortDescriptionForCurrentState3 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLLastSyncErrorOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        _shortDescriptionForCurrentState2 = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
        v20 = [transport bestErrorForUnderlyingError:_shortDescriptionForCurrentState3];
        v26 = 138412802;
        v27 = _shortDescriptionForCurrentState2;
        v28 = 2112;
        v29 = unlockedCopy;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Sync session in %@ got error: %@, underlying error: %@", &v26, 0x20u);
      }
    }

    goto LABEL_21;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    transport = __CPLLastSyncErrorOSLogDomain();
    if (!os_log_type_enabled(transport, OS_LOG_TYPE_DEBUG))
    {
LABEL_22:

      goto LABEL_23;
    }

    _shortDescriptionForCurrentState3 = [(CPLEngineSyncManager *)self _shortDescriptionForCurrentState];
    v26 = 138412290;
    v27 = _shortDescriptionForCurrentState3;
    _os_log_impl(&dword_1DC05A000, transport, OS_LOG_TYPE_DEBUG, "Sync session in %@ got deferred", &v26, 0xCu);
LABEL_21:

    goto LABEL_22;
  }

LABEL_23:
  p_lastError = &self->_lastError;
  if (unlockedCopy && !self->_lastError)
  {
    date = [MEMORY[0x1E695DF00] date];
    v22 = objc_alloc_init(_CPLEngineSyncLastError);
    v24 = v22;
    if (v22)
    {
      v22->_state = self->_state;
      objc_setProperty_nonatomic_copy(v22, v23, date, 16);
      objc_setProperty_nonatomic_copy(v24, v25, unlockedCopy, 24);
    }

    [(NSMutableArray *)self->_lastErrors addObject:v24];
    if ([(NSMutableArray *)self->_lastErrors count]>= 6)
    {
      [(NSMutableArray *)self->_lastErrors removeObjectAtIndex:0];
    }
  }

LABEL_12:
  v11 = *p_lastError;
  *p_lastError = unlockedCopy;
}

- (CPLEngineSyncManager)initWithEngineLibrary:(id)library
{
  v27 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v24.receiver = self;
  v24.super_class = CPLEngineSyncManager;
  v6 = [(CPLEngineSyncManager *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engineLibrary, libraryCopy);
    v8 = dispatch_queue_attr_make_with_qos_class(0, +[CPLEngineSyncManager qualityOfServiceForSyncSessions], 0);
    v9 = dispatch_queue_create("com.apple.cpl.syncmanager", v8);
    lock = v7->_lock;
    v7->_lock = v9;

    v7->_shouldRestartSessionFromState = 14;
    v7->_shouldTryToMingleImmediately = 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingForcedTasks = v7->_pendingForcedTasks;
    v7->_pendingForcedTasks = v11;

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
    lastErrors = v7->_lastErrors;
    v7->_lastErrors = v13;

    *&v7->_transportUserIdentifierLock._os_unfair_lock_opaque = 0;
    v15 = +[CPLPlatform currentPlatform];
    v16 = [v15 newPlatformImplementationForObject:v7];
    platformObject = v7->_platformObject;
    v7->_platformObject = v16;

    if (!v7->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = __CPLSyncOSLogDomain();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          *buf = 138412290;
          v26 = v20;
          v21 = v20;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncManager.m"];
      [currentHandler handleFailureInMethod:a2 object:v7 file:v23 lineNumber:283 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  return v7;
}

- (void)_dispatchAfter:(double)after block:(id)block
{
  v5 = 1000000000 * after;
  block = block;
  v6 = dispatch_time(0, v5);
  dispatch_after(v6, self->_lock, block);
}

- (void)dispatchForcedTaskBlock:(id)block
{
  lock = self->_lock;
  blockCopy = block;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, +[CPLEngineSyncManager qualityOfServiceForForcedTasks], 0, blockCopy);

  v6 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v10 = v6;
  v7 = lock;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

- (void)dispatchSyncBlock:(id)block
{
  lock = self->_lock;
  blockCopy = block;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, +[CPLEngineSyncManager qualityOfServiceForSyncSessions], 0, blockCopy);

  v6 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_20774;
  block[3] = &unk_1E861B4E0;
  v10 = v6;
  v7 = lock;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (id)stepForState:(unint64_t)state syncManager:(id)manager session:(id)session
{
  managerCopy = manager;
  sessionCopy = session;
  v9 = sessionCopy;
  if (stepForState_syncManager_session__onceToken == -1)
  {
    if (sessionCopy)
    {
LABEL_3:
      v10 = stepForState_syncManager_session__constructors;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = (v12)[2](v12, managerCopy, v9);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&stepForState_syncManager_session__onceToken, &__block_literal_global_21033);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

void __57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F57EF710;
  v2[1] = &unk_1F57EF728;
  v3[0] = &__block_literal_global_110_21037;
  v3[1] = &__block_literal_global_117;
  v2[2] = &unk_1F57EF740;
  v2[3] = &unk_1F57EF758;
  v3[2] = &__block_literal_global_123;
  v3[3] = &__block_literal_global_129;
  v2[4] = &unk_1F57EF770;
  v2[5] = &unk_1F57EF788;
  v3[4] = &__block_literal_global_135;
  v3[5] = &__block_literal_global_142_21041;
  v2[6] = &unk_1F57EF7A0;
  v2[7] = &unk_1F57EF7B8;
  v3[6] = &__block_literal_global_148;
  v3[7] = &__block_literal_global_153;
  v2[8] = &unk_1F57EF7D0;
  v2[9] = &unk_1F57EF7E8;
  v3[8] = &__block_literal_global_159_21042;
  v3[9] = &__block_literal_global_165;
  v2[10] = &unk_1F57EF800;
  v2[11] = &unk_1F57EF818;
  v3[10] = &__block_literal_global_171_21043;
  v3[11] = &__block_literal_global_177;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = stepForState_syncManager_session__constructors;
  stepForState_syncManager_session__constructors = v0;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_175(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_163(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLPushToTransportSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLPushToTransportSyncStep alloc] initWithSyncManager:v5 syncSession:v4 highPriority:0];

  return v6;
}

CPLPushToTransportSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLPushToTransportSyncStep alloc] initWithSyncManager:v5 syncSession:v4 highPriority:1];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_121(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

CPLSimpleTaskSyncStep *__57__CPLEngineSyncManager_stepForState_syncManager_session___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CPLSimpleTaskSyncStep alloc] initWithSyncManager:v5 syncSession:v4 taskClass:objc_opt_class()];

  return v6;
}

+ (id)shortDescriptionForState:(unint64_t)state
{
  if (state >= 0xF)
  {
    state = [MEMORY[0x1E696AEC0] stringWithFormat:@"state-%lu", state];
  }

  else
  {
    state = off_1E861FAA0[state];
  }

  return state;
}

+ (id)descriptionForState:(unint64_t)state
{
  if (state >= 0xF)
  {
    state = [MEMORY[0x1E696AEC0] stringWithFormat:@"CPLEngineSyncManagerState unknown %lu", state];
  }

  else
  {
    state = off_1E861FA28[state];
  }

  return state;
}

@end