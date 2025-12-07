@interface CPLEngineStore
+ (NSArray)storageNames;
+ (id)platformImplementationProtocol;
+ (id)stateDescriptionForState:(unint64_t)state;
- (BOOL)_applyAndDiscardPendingUpdate:(id)update error:(id *)error;
- (BOOL)_applyPendingUpdate:(id)update error:(id *)error;
- (BOOL)_canHaveActivatedScope:(id)scope libraryOptions:(unint64_t)options error:(id *)error;
- (BOOL)_canRead;
- (BOOL)_canWrite;
- (BOOL)_handleException:(id)exception;
- (BOOL)_resetCompleteSyncStateIncludingIDMappingWithCause:(id)cause scope:(id)scope error:(id *)error;
- (BOOL)_resetCompleteSyncStateWithCause:(id)cause scope:(id)scope error:(id *)error;
- (BOOL)_resetGlobalStateWithError:(id *)error;
- (BOOL)_resetLocalSyncStateWithCause:(id)cause scope:(id)scope date:(id)date error:(id *)error;
- (BOOL)_resetSyncAnchorWithCause:(id)cause scope:(id)scope error:(id *)error;
- (BOOL)_storeChangeSessionUpdate:(id)update error:(id *)error;
- (BOOL)addPushPullGatekeeper:(id)gatekeeper error:(id *)error;
- (BOOL)applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:(id)version error:(id *)error;
- (BOOL)beginChangeSession:(id)session withLibraryVersion:(id)version resetTracker:(id)tracker error:(id *)error;
- (BOOL)canActivateScope:(id)scope error:(id *)error;
- (BOOL)checkExpectedLibraryVersion:(id)version error:(id *)error;
- (BOOL)clearAllPushPullGatekeepersWithError:(id *)error;
- (BOOL)clientCanPushScopeChange:(id)change;
- (BOOL)createStoragesDynamically:(id)dynamically error:(id *)error;
- (BOOL)deleteDynamicallyCreatedStorages:(id)storages error:(id *)error;
- (BOOL)forceApplyPendingChangeSessionUpdateWithError:(id *)error;
- (BOOL)hasPendingChangeSessionUpdate;
- (BOOL)hasPendingResetSync;
- (BOOL)hasUnacknowledgedChanges;
- (BOOL)isClientInSyncWithClientCache;
- (BOOL)isFeatureDisabled:(id)disabled;
- (BOOL)mainScopeSupportsSharingScopeWithIdentifier:(id)identifier;
- (BOOL)pushRepositoryIsFull;
- (BOOL)resetCompleteSyncStateIncludingIDMappingWithCause:(id)cause error:(id *)error;
- (BOOL)resetCompleteSyncStateWithCause:(id)cause error:(id *)error;
- (BOOL)resetLocalSyncStateWithCause:(id)cause date:(id)date error:(id *)error;
- (BOOL)resetSyncAnchorWithCause:(id)cause error:(id *)error;
- (BOOL)setShouldUpdateDisabledFeaturesWithError:(id *)error;
- (BOOL)shouldSyncScopeList;
- (BOOL)shouldUpdateDisabledFeatures;
- (BOOL)storeChangeSessionUpdate:(id)update error:(id *)error;
- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)error;
- (BOOL)storeDerivativesFilter:(id)filter error:(id *)error;
- (BOOL)storeLastQuarantineCountReportDate:(id)date error:(id *)error;
- (BOOL)storeLibraryVersion:(id)version withError:(id *)error;
- (BOOL)storeUserIdentifier:(id)identifier error:(id *)error;
- (BOOL)storeVersionHasChanged;
- (BOOL)supportsSharingScopeWithIdentifier:(id)identifier forScopeWithIdentifier:(id)withIdentifier;
- (BOOL)syncSessionShouldRequestMoreTime;
- (BOOL)updateDisabledFeatures:(id)features didReset:(BOOL *)reset error:(id *)error;
- (BOOL)updateLibraryOptions:(unint64_t)options error:(id *)error;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineStore)initWithEngineLibrary:(id)library;
- (CPLRecordStorageView)transactionClientCacheView;
- (CPLTransportScopeMapping)transactionTransportScopeMapping;
- (NSArray)disabledFeatures;
- (NSArray)pushPullGatekeepers;
- (NSDate)libraryCreationDate;
- (NSString)description;
- (NSString)mainScopeIdentifier;
- (id)_currentTransaction;
- (id)_performWriteTransactionByPassBlocker:(id)blocker WithBlock:(id)block completionHandler:(id)handler;
- (id)_resetEventsDescriptions;
- (id)_resetEventsJSON;
- (id)_storedDisabledFeatures;
- (id)clientCacheIdentifier;
- (id)corruptionInfo;
- (id)createNewLibraryVersion;
- (id)derivativesFilter;
- (id)lastQuarantineCountReportDate;
- (id)libraryVersion;
- (id)localResourceForCloudResource:(id)resource recordClass:(Class *)class;
- (id)newClientCacheViewUsesPushRepository:(BOOL *)repository;
- (id)performReadTransactionWithBlock:(id)block;
- (id)unacknowledgedChangeWithLocalScopedIdentifier:(id)identifier;
- (id)userIdentifier;
- (unint64_t)libraryOptions;
- (void)_addCleanupBlock:(id)block;
- (void)_closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler;
- (void)_commitWriteTransaction:(id)transaction commitError:(id)error;
- (void)_dropTransactionClientCacheView;
- (void)_finishTransaction;
- (void)_forceCloseWithCompletionHandler:(id)handler;
- (void)_loadResetEvents;
- (void)_performBarrierTransaction:(id)transaction withBlock:(id)block;
- (void)_performTransaction:(id)transaction withBlock:(id)block;
- (void)_reallyPerformBatchedTransactionsLocked;
- (void)_reallySchedulePendingUpdateApply;
- (void)_reallyUnschedulePendingUpdateApply;
- (void)_removeTransactionOnCurrentThread:(id)thread;
- (void)_scheduleBatchedTransactionsLocked;
- (void)_schedulePendingUpdateApply;
- (void)_setSharingScopeIdentifier:(id)identifier;
- (void)_setTransactionOnCurrentThread:(id)thread;
- (void)_storeResetEvent:(id)event scopeIdentifier:(id)identifier date:(id)date pending:(BOOL)pending cause:(id)cause;
- (void)_unschedulePendingUpdateApply;
- (void)_updateShouldSyncScopeList:(BOOL)list;
- (void)assertCanRead;
- (void)assertCanWrite;
- (void)assertNoUnacknowledgedChanges;
- (void)blockWriteTransactionsWithCompletionHandler:(id)handler;
- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler;
- (void)dealloc;
- (void)dropSharingScopeIdentifier:(id)identifier;
- (void)dropUnacknowledgedBatch;
- (void)emergencyClose;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)keepUnacknowledgedBatch:(id)batch;
- (void)markAsCorrupted;
- (void)noteInvalidRecordScopedIdentifiersInPushSession:(id)session;
- (void)noteOtherResetEvent:(id)event cause:(id)cause;
- (void)notePushRepositoryStoredSomeChanges;
- (void)noteResetSyncFinished;
- (void)openWithCompletionHandler:(id)handler;
- (void)performBarrier;
- (void)performBatchedWriteTransactionBarrier;
- (void)performBatchedWriteTransactionBarrierWithCompletionBlock:(id)block;
- (void)performBatchedWriteTransactionWithBlock:(id)block completionHandler:(id)handler;
- (void)predictSyncSessionValue:(id)value ofType:(id)type;
- (void)registerStorage:(id)storage;
- (void)startVacuumWithCompletionHandler:(id)handler;
- (void)stopVacuum;
- (void)testKey:(id)key value:(id)value completionHandler:(id)handler;
- (void)transactionDidFinish;
- (void)wipeStoreAtNextOpeningWithReason:(id)reason completionBlock:(id)block;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineStore

- (id)clientCacheIdentifier
{
  platformObject = [(CPLEngineStore *)self platformObject];
  clientCacheIdentifier = [platformObject clientCacheIdentifier];

  return clientCacheIdentifier;
}

- (BOOL)isClientInSyncWithClientCache
{
  platformObject = [(CPLEngineStore *)self platformObject];
  isClientInSyncWithClientCache = [platformObject isClientInSyncWithClientCache];

  return isClientInSyncWithClientCache;
}

- (BOOL)shouldSyncScopeList
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  shouldSyncScopeListQueue = self->_shouldSyncScopeListQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CPLEngineStore_shouldSyncScopeList__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(shouldSyncScopeListQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)writeTransactionDidSucceed
{
  if (self->_unschedulePendingUpdateApplyOnWriteSuccess)
  {
    [(CPLEngineStore *)self _reallyUnschedulePendingUpdateApply];
  }

  if (self->_schedulePendingUpdateApplyOnWriteSuccess)
  {
    [(CPLEngineStore *)self _reallySchedulePendingUpdateApply];
  }

  if (self->_shouldEnableScopeListSyncOnWriteSuccess)
  {
    shouldSyncScopeListQueue = self->_shouldSyncScopeListQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__CPLEngineStore_writeTransactionDidSucceed__block_invoke;
    block[3] = &unk_1E861A940;
    block[4] = self;
    dispatch_sync(shouldSyncScopeListQueue, block);
    engineLibrary = [(CPLEngineStore *)self engineLibrary];
    scheduler = [engineLibrary scheduler];
    [scheduler noteScopeListNeedsUpdate];

    self->_shouldEnableScopeListSyncOnWriteSuccess = 0;
  }

  if (self->_scheduleSetupOnWriteSuccess)
  {
    engineLibrary2 = [(CPLEngineStore *)self engineLibrary];
    scheduler2 = [engineLibrary2 scheduler];
    [scheduler2 noteStoreNeedsSetup];

    self->_scheduleSetupOnWriteSuccess = 0;
  }

  if (self->_scheduleDisabledFeatureUpdateOnWriteSuccess)
  {
    engineLibrary3 = [(CPLEngineStore *)self engineLibrary];
    scheduler3 = [engineLibrary3 scheduler];
    [scheduler3 noteStoreNeedsToUpdateDisabledFeatures];

    self->_scheduleDisabledFeatureUpdateOnWriteSuccess = 0;
  }

  if (self->_schedulePullFromClient)
  {
    engineLibrary4 = [(CPLEngineStore *)self engineLibrary];
    [engineLibrary4 notifyAttachedObjectsPullQueueIsFull];

    self->_schedulePullFromClient = 0;
  }

  self->_discardUnacknowledgedBatchOnTransactionFail = 0;
  self->_pendingUpdateInterval = 0.0;
  self->_hasUpdatedDisabledFeatures = 0;
  if (self->_transactionNewPredictions)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    scheduler4 = [WeakRetained scheduler];
    predictor = [scheduler4 predictor];
    [predictor updatePredictionWithValuesAndTypes:self->_transactionNewPredictions];

    transactionNewPredictions = self->_transactionNewPredictions;
    self->_transactionNewPredictions = 0;
  }

  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject writeTransactionDidSucceed];
}

- (void)_finishTransaction
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_storages;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) transactionDidFinish];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CPLEngineStore *)self transactionDidFinish];
}

- (void)transactionDidFinish
{
  transactionTransportScopeMapping = self->_transactionTransportScopeMapping;
  self->_transactionTransportScopeMapping = 0;

  [(CPLEngineStore *)self _dropTransactionClientCacheView];
}

- (void)_dropTransactionClientCacheView
{
  transactionClientCacheView = self->_transactionClientCacheView;
  if (transactionClientCacheView)
  {
    self->_transactionClientCacheView = 0;
    MEMORY[0x1EEE66BB8](self, transactionClientCacheView);
  }
}

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (void)testKey:(id)key value:(id)value completionHandler:(id)handler
{
  keyCopy = key;
  valueCopy = value;
  handlerCopy = handler;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__677;
  v24[4] = __Block_byref_object_dispose__678;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__CPLEngineStore_testKey_value_completionHandler___block_invoke;
  v19[3] = &unk_1E861C170;
  v19[4] = self;
  v11 = keyCopy;
  v20 = v11;
  v12 = valueCopy;
  v21 = v12;
  v22 = v26;
  v23 = v24;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_3;
  v15[3] = &unk_1E861B9E8;
  v17 = v26;
  v13 = handlerCopy;
  v16 = v13;
  v18 = v24;
  v14 = [(CPLEngineStore *)self performWriteTransactionWithBlock:v19 completionHandler:v15];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void __50__CPLEngineStore_testKey_value_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861B9C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [a2 do:v5];
}

void __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v6 = [a2 error];
    (*(v2 + 16))(v2, 1, v3, v6);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = a1[4];

    v4(v5, 0, 0, 0);
  }
}

uint64_t __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = *(a1[4] + 8);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v23;
LABEL_3:
    v9 = 0;
    v10 = v7;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v22 + 1) + 8 * v9);
      v12 = a1[5];
      v13 = a1[6];
      v14 = *(a1[7] + 8);
      v15 = *(a1[8] + 8);
      v16 = *(v15 + 40);
      v20 = v10;
      obj = v16;
      v17 = [v11 testKey:v12 value:v13 didHandle:v14 + 24 result:&obj error:&v20];
      objc_storeStrong((v15 + 40), obj);
      v7 = v20;

      if (*(*(a1[7] + 8) + 24))
      {
        break;
      }

      ++v9;
      v10 = v7;
      if (v6 == v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
    v17 = 1;
  }

  if (*(*(a1[7] + 8) + 24) == 1)
  {
    if (a2)
    {
      v18 = v7;
      *a2 = v7;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CPLEngineStore_getStatusDictionaryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8620308;
  v7[4] = self;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(CPLEngineStore *)self performReadTransactionWithBlock:v7];
}

void __59__CPLEngineStore_getStatusDictionaryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(*(a1 + 32) + 8);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 name];
          v14 = [v12 statusDictionary];
          if (v14)
          {
            [v6 setObject:v14 forKeyedSubscript:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v15 = [*(a1 + 32) _resetEventsJSON];
    if ([v15 count])
    {
      [v6 setObject:v15 forKeyedSubscript:@"resets"];
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8620308;
  v7[4] = self;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(CPLEngineStore *)self performReadTransactionWithBlock:v7];
}

void __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v141 = *MEMORY[0x1E69E9840];
  v107 = a2;
  v2 = [v107 error];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v107 error];
    (*(v3 + 16))(v3, 0, v4);
  }

  else
  {
    v103 = [*(a1 + 32) userIdentifier];
    if (objc_opt_respondsToSelector())
    {
      [v103 cplShareParticipantUserIdentifier];
    }

    else
    {
      [v103 description];
    }
    v102 = ;
    v106 = [*(a1 + 32) libraryCreationDate];
    v5 = [*(a1 + 32) platformObject];
    v108 = [v5 storedChangeSessionUpdate];

    v109 = [v108 storageForStatusInStore:*(a1 + 32)];
    if (v108)
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = [v108 libraryVersion];
      v101 = [v6 initWithFormat:@" (pending: %@ for %@)", v7, objc_opt_class()];
    }

    else
    {
      v101 = &stru_1F57BD298;
    }

    v8 = objc_alloc(MEMORY[0x1E696AD60]);
    v9 = v106;
    if (v106)
    {
      v10 = [CPLDateFormatter stringFromDate:?];
      v9 = v106;
    }

    else
    {
      v10 = @"unknown";
    }

    v11 = v9 == 0;
    v12 = [*(a1 + 32) libraryVersion];
    v13 = [*(a1 + 32) clientCacheIdentifier];
    v14 = [*(a1 + 32) isClientInSyncWithClientCache];
    v15 = @"out of sync";
    if (v14)
    {
      v15 = @"in sync";
    }

    v16 = [v8 initWithFormat:@"creation date: %@\nlibrary version: %@%@\nclient cache id: %@ (%@)\nuser identifier: %@\n", v10, v12, v101, v13, v15, v102];

    if (!v11)
    {
    }

    v17 = a1;
    if ([*(a1 + 32) shouldSyncScopeList])
    {
      [v16 appendString:@"synchronizing scope list: enabled\n"];
    }

    v18 = *(a1 + 32);
    v19 = v18[20];
    v115 = v16;
    if (!v19)
    {
      v20 = [v18 _storedDisabledFeatures];
      v17 = a1;
      v21 = *(a1 + 32);
      v22 = *(v21 + 160);
      *(v21 + 160) = v20;

      v19 = *(*(a1 + 32) + 160);
    }

    if ([v19 count])
    {
      v23 = [*(*(v17 + 32) + 160) componentsJoinedByString:{@", "}];
      [v16 appendFormat:@"disabled features: %@\n", v23];

      v17 = a1;
    }

    v24 = [*(*(v17 + 32) + 216) primaryScope];
    v25 = @"is NOT enabled";
    if (v24)
    {
      v26 = a1;
      if (![*(*(a1 + 32) + 216) valueForFlag:16 forScope:v24])
      {
        v25 = @"is ENABLED";
      }
    }

    else
    {
      v26 = a1;
    }

    WeakRetained = objc_loadWeakRetained((*(v26 + 32) + 200));
    v28 = [WeakRetained libraryIdentifier];

    if ([v28 hasPrefix:CPLAppLibraryIdentifierPrefix])
    {
      v29 = objc_loadWeakRetained((*(a1 + 32) + 200));
      v30 = [v29 libraryIdentifier];
      v31 = CPLAppBundleIdentifierForLibraryIdentifier(v30);

      v32 = objc_alloc(MEMORY[0x1E696AEC0]);
      v33 = [*(a1 + 32) mainScopeIdentifier];
      v34 = [v32 initWithFormat:@"Synchronizing App Library for %@ with %@", v31, v33];
    }

    else
    {
      v35 = objc_alloc(MEMORY[0x1E696AEC0]);
      v31 = [*(a1 + 32) mainScopeIdentifier];
      v34 = [v35 initWithFormat:@"Synchronizing %@ with %@", v28, v31];
    }

    [v115 appendFormat:@"\n%@ %@", v34, v25];
    if (*(*(a1 + 32) + 16))
    {
      [v115 appendFormat:@"\nSharing is enabled using %@", *(*(a1 + 32) + 16)];
    }

    [v115 appendString:@"\n"];

    v105 = [*(a1 + 32) _resetEventsDescriptions];
    if (v105)
    {
      v36 = [v105 componentsJoinedByString:@"\n\t"];
      [v115 appendFormat:@"\nresets:\n\t%@", v36];
    }

    v37 = [MEMORY[0x1E695E000] standardUserDefaults];
    v38 = [v37 BOOLForKey:@"CPLShowPossibleResets"];

    if (v38)
    {
      v39 = +[CPLResetTracker currentReasonDescriptions];
      if ([v39 count])
      {
        v40 = [v39 componentsJoinedByString:@"\n\t"];
        [v115 appendFormat:@"\nmight reset soon because:\n\t%@", v40];
      }
    }

    v41 = *(a1 + 32);
    if (*(v41 + 104))
    {
      v42 = [*(v41 + 96) count];
      if (v42 < 4)
      {
        v45 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 104) now:0];
        v46 = [*(*(a1 + 32) + 96) allObjects];
        v47 = [v46 componentsJoinedByString:{@", "}];
        [v115 appendFormat:@"\nlast invalid records pushed by client %@:\n\t%@", v45, v47, v100];
      }

      else
      {
        v43 = v42;
        v44 = [*(*(a1 + 32) + 96) allObjects];
        v45 = [v44 subarrayWithRange:{0, 3}];

        v46 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 104) now:0];
        v47 = [v45 componentsJoinedByString:{@", "}];
        [v115 appendFormat:@"\nlast invalid records pushed by client %@:\n\t%@ + %lu more", v46, v47, v43 - 3];
      }

      v41 = *(a1 + 32);
    }

    v48 = [v41 platformObject];
    v104 = [v48 status];

    if (v104)
    {
      v49 = [v104 componentsSeparatedByString:@"\n"];
      v50 = [v49 componentsJoinedByString:@"\n\t"];
      [v115 appendFormat:@"\n%@", v50];
    }

    v116 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    obj = *(*(a1 + 32) + 8);
    v51 = [obj countByEnumeratingWithState:&v129 objects:v140 count:16];
    if (v51)
    {
      v113 = *v130;
      do
      {
        v52 = 0;
        do
        {
          if (*v130 != v113)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v129 + 1) + 8 * v52);
          if ([v53 shouldIncludeInStatus])
          {
            v54 = [v53 name];
            v55 = [v53 status];
            v56 = v55;
            if (v109 == v53)
            {
              v133 = 0;
              v134 = &v133;
              v135 = 0x2020000000;
              LOBYTE(v136) = 0;
              v63 = *(a1 + 32);
              v64 = *(v63 + 120);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke_2;
              block[3] = &unk_1E861A850;
              block[4] = v63;
              block[5] = &v133;
              dispatch_sync(v64, block);
              v65 = [v108 statusDescription];
              v66 = [v108 queuedDate];
              v67 = [MEMORY[0x1E695DF00] date];
              if (v66)
              {
                if (*(v134 + 24))
                {
                  v68 = [v66 dateByAddingTimeInterval:30.0];
                  [v68 timeIntervalSinceDate:v67];
                  if (v69 >= 0.0)
                  {
                    v74 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v71 = [CPLDateFormatter stringForTimeIntervalAgo:v68 now:v67];
                    v72 = [v74 initWithFormat:@"will auto-apply %@", v71];
                  }

                  else
                  {
                    v70 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v71 = [CPLDateFormatter stringFromDateAgo:v66 now:v67];
                    v72 = [v70 initWithFormat:@"%@ - auto-apply overdue", v71];
                  }

                  v73 = v72;
                }

                else
                {
                  v73 = [CPLDateFormatter stringFromDateAgo:v66 now:0];
                }
              }

              else if (*(v134 + 24))
              {
                v73 = @"no queued date - waiting for auto-apply";
              }

              else
              {
                v73 = @"no queued date";
              }

              if (v56)
              {
                v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\nPending update: %@ - %@", v56, v65, v73];

                v56 = v75;
              }

              else
              {
                v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Pending update: %@ - %@", v65, v73];
              }

              _Block_object_dispose(&v133, 8);
            }

            else
            {
              v57 = *(a1 + 32);
              if (*(v57 + 72) && v53 == *(v57 + 232))
              {
                v58 = v55 == 0;
                v59 = objc_alloc(MEMORY[0x1E696AEC0]);
                v60 = [*(*(a1 + 32) + 72) summaryDescription];
                v61 = v60;
                if (v58)
                {
                  v56 = [v59 initWithFormat:@"Pending update: waiting for ack of %@", v60];
                }

                else
                {
                  v62 = [v59 initWithFormat:@"%@\nPending update: waiting for ack of %@", v56, v60];

                  v56 = v62;
                }
              }
            }

            if (v56)
            {
              [v116 setObject:v56 forKey:v54];
            }
          }

          ++v52;
        }

        while (v51 != v52);
        v76 = [obj countByEnumeratingWithState:&v129 objects:v140 count:16];
        v51 = v76;
      }

      while (v76);
    }

    if ([v116 count])
    {
      [v115 appendString:@"\nstorages:"];
      v114 = [objc_opt_class() storageNames];
      v126 = 0u;
      v127 = 0u;
      v125 = 0u;
      v124 = 0u;
      v77 = [v114 countByEnumeratingWithState:&v124 objects:v139 count:16];
      if (v77)
      {
        v78 = *v125;
        do
        {
          for (i = 0; i != v77; ++i)
          {
            if (*v125 != v78)
            {
              objc_enumerationMutation(v114);
            }

            v80 = *(*(&v124 + 1) + 8 * i);
            v81 = [v116 objectForKeyedSubscript:v80];
            v82 = v81;
            if (v81)
            {
              v83 = [v81 componentsSeparatedByString:@"\n"];
              v84 = [v83 componentsJoinedByString:@"\n\t\t"];
              [v115 appendFormat:@"\n\t%@ = %@", v80, v84];

              [v116 removeObjectForKey:v80];
            }
          }

          v77 = [v114 countByEnumeratingWithState:&v124 objects:v139 count:16];
        }

        while (v77);
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v85 = [v116 allKeys];
      obja = [v85 sortedArrayUsingSelector:sel_compare_];

      v86 = [obja countByEnumeratingWithState:&v120 objects:v138 count:16];
      if (v86)
      {
        v87 = *v121;
        do
        {
          for (j = 0; j != v86; ++j)
          {
            if (*v121 != v87)
            {
              objc_enumerationMutation(obja);
            }

            v89 = *(*(&v120 + 1) + 8 * j);
            v90 = [v116 objectForKey:v89];
            v91 = [v90 componentsSeparatedByString:@"\n"];
            v92 = [v91 componentsJoinedByString:@"\n\t\t"];
            [v115 appendFormat:@"\n\t%@ = %@", v89, v92];
          }

          v86 = [obja countByEnumeratingWithState:&v120 objects:v138 count:16];
        }

        while (v86);
      }
    }

    v94 = *(a1 + 32);
    v93 = *(a1 + 40);
    v95 = *(v94 + 24);
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke_3;
    v117[3] = &unk_1E861B3D0;
    v117[4] = v94;
    v118 = v115;
    v119 = v93;
    v96 = v117;
    v133 = MEMORY[0x1E69E9820];
    v134 = 3221225472;
    v135 = __cpl_dispatch_async_block_invoke_682;
    v136 = &unk_1E861B4E0;
    v137 = v96;
    v97 = v115;
    v98 = v95;
    v99 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &v133);
    dispatch_async(v98, v99);
  }
}

uint64_t __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) count];
  if (v2)
  {
    [*(a1 + 40) appendFormat:@"\nlow-priority transactions: %lu pending", v2];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)assertNoUnacknowledgedChanges
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_unacknowledgedBatch)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        unacknowledgedBatch = self->_unacknowledgedBatch;
        *buf = 138412290;
        v16 = unacknowledgedBatch;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Store still has an unacknowledged batch %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:2380 description:{@"Store still has an unacknowledged batch %@", self->_unacknowledgedBatch}];
LABEL_14:

    abort();
  }

  platformObject = [(CPLEngineStore *)self platformObject];
  hasStoredChangeSessionUpdate = [platformObject hasStoredChangeSessionUpdate];

  if (hasStoredChangeSessionUpdate)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        platformObject2 = [(CPLEngineStore *)self platformObject];
        storedChangeSessionUpdate = [platformObject2 storedChangeSessionUpdate];
        *buf = 138412290;
        v16 = storedChangeSessionUpdate;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Store still has an un-applied session update: %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    platformObject3 = [(CPLEngineStore *)self platformObject];
    storedChangeSessionUpdate2 = [platformObject3 storedChangeSessionUpdate];
    [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:2381 description:{@"Store still has an un-applied session update: %@", storedChangeSessionUpdate2}];

    goto LABEL_14;
  }
}

- (void)assertCanRead
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(CPLEngineStore *)self _canRead])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        currentThread = [MEMORY[0x1E696AF00] currentThread];
        _currentTransaction = [(CPLEngineStore *)self _currentTransaction];
        *buf = 134218498;
        v12 = currentThread;
        v13 = 2112;
        selfCopy = self;
        v15 = 2112;
        v16 = _currentTransaction;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Trying to read on thread %p in %@ outside of a read transaction (current transaction is %@)", buf, 0x20u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    _currentTransaction2 = [(CPLEngineStore *)self _currentTransaction];
    [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:2376 description:{@"Trying to read on thread %p in %@ outside of a read transaction (current transaction is %@)", currentThread2, self, _currentTransaction2}];

    abort();
  }
}

- (void)assertCanWrite
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(CPLEngineStore *)self _canWrite])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        currentThread = [MEMORY[0x1E696AF00] currentThread];
        _currentTransaction = [(CPLEngineStore *)self _currentTransaction];
        *buf = 134218498;
        v12 = currentThread;
        v13 = 2112;
        selfCopy = self;
        v15 = 2112;
        v16 = _currentTransaction;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Trying to write on thread %p in %@ outside of a write transaction (current transaction is %@)", buf, 0x20u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    _currentTransaction2 = [(CPLEngineStore *)self _currentTransaction];
    [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:2372 description:{@"Trying to write on thread %p in %@ outside of a write transaction (current transaction is %@)", currentThread2, self, _currentTransaction2}];

    abort();
  }
}

- (BOOL)_canWrite
{
  _currentTransaction = [(CPLEngineStore *)self _currentTransaction];
  canWrite = [_currentTransaction canWrite];

  return canWrite;
}

- (BOOL)_canRead
{
  _currentTransaction = [(CPLEngineStore *)self _currentTransaction];
  canRead = [_currentTransaction canRead];

  return canRead;
}

- (void)_removeTransactionOnCurrentThread:(id)thread
{
  v16 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  [threadCopy _transactionDidFinish];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v7 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  if (v7 != threadCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to remove the wrong transaction on thread: %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v12 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
    [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:2355 description:{@"Trying to remove the wrong transaction on thread: %@", v12}];

    abort();
  }

  [threadDictionary removeObjectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
}

- (void)_setTransactionOnCurrentThread:(id)thread
{
  v18 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v7 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
        *buf = 138412546;
        v15 = threadCopy;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to setup a transaction %@ on a thread which already has one: %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v12 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
    [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:2346 description:{@"Trying to setup a transaction %@ on a thread which already has one: %@", threadCopy, v12}];

    abort();
  }

  [threadDictionary setObject:threadCopy forKey:@"com.apple.cloudphotolibrary.currenttransaction"];
  [threadCopy _transactionWillBeginOnThread:currentThread];
}

- (id)_currentTransaction
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  return v4;
}

- (void)_addCleanupBlock:(id)block
{
  blockCopy = block;
  _currentTransaction = [(CPLEngineStore *)self _currentTransaction];
  if (!_currentTransaction)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to add a clean-up block while not in a transaction", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:2334 description:@"Trying to add a clean-up block while not in a transaction"];

    abort();
  }

  v6 = _currentTransaction;
  [_currentTransaction addCleanupBlock:blockCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  engineLibrary = [(CPLEngineStore *)self engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, libraryIdentifier];

  return v7;
}

- (void)dropSharingScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sharingScopeIdentifier = self->_sharingScopeIdentifier;
  v6 = identifierCopy;
  if (!identifierCopy || !sharingScopeIdentifier)
  {
    if (identifierCopy | sharingScopeIdentifier)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([identifierCopy isEqual:?])
  {
LABEL_6:
    [(CPLEngineStore *)self _setSharingScopeIdentifier:0];
  }

LABEL_7:
}

- (void)_setSharingScopeIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy && ![(CPLEngineStore *)self mainScopeSupportsSharingScopeWithIdentifier:identifierCopy])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
        *buf = 138412546;
        v21 = identifierCopy;
        v22 = 2112;
        v23 = mainScopeIdentifier;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Trying to bind sharing scope %@ with %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    mainScopeIdentifier2 = [(CPLEngineStore *)self mainScopeIdentifier];
    [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:2291 description:{@"Trying to bind sharing scope %@ with %@", identifierCopy, mainScopeIdentifier2}];

    abort();
  }

  v6 = self->_sharingScopeIdentifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Setting sharing scope identifier to %{public}@", buf, 0xCu);
    }
  }

  sharingScopeIdentifier = self->_sharingScopeIdentifier;
  self->_sharingScopeIdentifier = identifierCopy;
  v9 = identifierCopy;

  if (!self->_sharingScopeIdentifier)
  {
    engineLibrary = [(CPLEngineStore *)self engineLibrary];
    [engineLibrary setEstimatedCountOfRemainingRecordsDuringSharedLibraryExit:0];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__CPLEngineStore__setSharingScopeIdentifier___block_invoke;
  v17[3] = &unk_1E86204A0;
  v18 = v6;
  selfCopy = self;
  v11 = v6;
  [(CPLEngineStore *)self _addCleanupBlock:v17];
}

void __45__CPLEngineStore__setSharingScopeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 138543362;
        v7 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Resetting sharing scope identifier to %{public}@", &v6, 0xCu);
      }
    }

    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
  }
}

- (void)markAsCorrupted
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Marking the store as corrupted manually", v5, 2u);
    }
  }

  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject markAsCorrupted];
}

- (void)emergencyClose
{
  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject emergencyClose];
}

- (void)stopVacuum
{
  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject stopVacuum];
}

- (void)startVacuumWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject startVacuumWithCompletionHandler:handlerCopy];
}

- (BOOL)storeVersionHasChanged
{
  platformObject = [(CPLEngineStore *)self platformObject];
  storeVersionHasChanged = [platformObject storeVersionHasChanged];

  return storeVersionHasChanged;
}

- (BOOL)clientCanPushScopeChange:(id)change
{
  scopeType = [change scopeType];
  libraryOptions = [(CPLEngineStore *)self libraryOptions];
  if (scopeType > 8)
  {
    goto LABEL_7;
  }

  if (((1 << scopeType) & 0xC) != 0)
  {
    return (libraryOptions >> 2) & 1;
  }

  if (((1 << scopeType) & 0x30) != 0)
  {
    LODWORD(libraryOptions) = (isSharedLibraryFeatureEnabled | ~overridesSharedLibraryFeatureFlag) & (libraryOptions >> 3) & 1;
    return libraryOptions;
  }

  if (((1 << scopeType) & 0x180) != 0)
  {
    LOBYTE(libraryOptions) = CPLIsCollectionShareFeatureEnabled() & ((libraryOptions & 0x10) != 0);
  }

  else
  {
LABEL_7:
    LOBYTE(libraryOptions) = scopeType == 1 && (libraryOptions & 2) != 0;
  }

  return libraryOptions;
}

- (BOOL)canActivateScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  libraryOptions = [(CPLEngineStore *)self libraryOptions];
  if ([(CPLEngineStore *)self _canHaveActivatedScope:scopeCopy libraryOptions:libraryOptions error:error])
  {
    v8 = +[CPLScopeChange shouldAutoActivateScopeWithType:](CPLScopeChange, "shouldAutoActivateScopeWithType:", [scopeCopy scopeType]);
    v9 = !v8;
    if (error && v8)
    {
      scopeIdentifier = [scopeCopy scopeIdentifier];
      v11 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [scopeCopy scopeType]);
      v12 = [CPLLibraryManager descriptionForLibraryOptions:libraryOptions];
      *error = [CPLErrors cplErrorWithCode:38 description:@"You are not allowed to activate %@ (%@) with these library options (%@)", scopeIdentifier, v11, v12];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_canHaveActivatedScope:(id)scope libraryOptions:(unint64_t)options error:(id *)error
{
  scopeCopy = scope;
  scopeType = [scopeCopy scopeType];
  if (![CPLScopeChange supportsActivationOfScopeWithType:scopeType])
  {
    if (!error)
    {
LABEL_23:
      LOBYTE(self) = 0;
      goto LABEL_24;
    }

    scopeIdentifier = [scopeCopy scopeIdentifier];
    v11 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [scopeCopy scopeType]);
    *error = [CPLErrors cplErrorWithCode:38 description:@"%@ (%@) is not supported", scopeIdentifier, v11];
LABEL_22:

    goto LABEL_23;
  }

  if (scopeType > 8)
  {
    goto LABEL_12;
  }

  if (((1 << scopeType) & 0xC) != 0)
  {
    self = ((options >> 2) & 1);
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (((1 << scopeType) & 0x30) != 0)
  {
    scopeIdentifier2 = [scopeCopy scopeIdentifier];
    LOBYTE(self) = [(CPLEngineStore *)self mainScopeSupportsSharingScopeWithIdentifier:scopeIdentifier2];

    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (((1 << scopeType) & 0x180) != 0)
  {
    LODWORD(self) = CPLIsCollectionShareFeatureEnabled() & (options >> 4);
    if (!error)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_12:
    if (scopeType == 1)
    {
      scopeIdentifier3 = [scopeCopy scopeIdentifier];
      mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
      v15 = [scopeIdentifier3 isEqualToString:mainScopeIdentifier];

      if (v15)
      {
        LOBYTE(self) = 1;
        goto LABEL_24;
      }

      self = ((options >> 1) & 1);
      if (!error)
      {
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(self) = 0;
      if (!error)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_20:
  if ((self & 1) == 0)
  {
    scopeIdentifier = [scopeCopy scopeIdentifier];
    v11 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [scopeCopy scopeType]);
    v16 = [CPLLibraryManager descriptionForLibraryOptions:options];
    *error = [CPLErrors cplErrorWithCode:38 description:@"%@ (%@) can't be active with these library options (%@)", scopeIdentifier, v11, v16];

    goto LABEL_22;
  }

LABEL_24:

  return self;
}

- (CPLTransportScopeMapping)transactionTransportScopeMapping
{
  transactionTransportScopeMapping = self->_transactionTransportScopeMapping;
  if (!transactionTransportScopeMapping)
  {
    v4 = [CPLTransportScopeMapping alloc];
    engineLibrary = [(CPLEngineStore *)self engineLibrary];
    transport = [engineLibrary transport];
    v7 = [(CPLTransportScopeMapping *)v4 initWithTranslator:transport];
    v8 = self->_transactionTransportScopeMapping;
    self->_transactionTransportScopeMapping = v7;

    transactionTransportScopeMapping = self->_transactionTransportScopeMapping;
  }

  return transactionTransportScopeMapping;
}

- (BOOL)syncSessionShouldRequestMoreTime
{
  primaryScope = [(CPLEngineScopeStorage *)self->_scopes primaryScope];
  if (primaryScope && ![(CPLEngineScopeStorage *)self->_scopes valueForFlag:16 forScope:primaryScope])
  {
    if ([(CPLEngineScopeStorage *)self->_scopes hasFinishedInitialDownloadForScope:primaryScope])
    {
      v6 = [(CPLEngineScopeStorage *)self->_scopes sharingScopeForScope:primaryScope];
      if (v6)
      {
        v4 = ![(CPLEngineScopeStorage *)self->_scopes hasFinishedInitialDownloadForScope:v6];
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)predictSyncSessionValue:(id)value ofType:(id)type
{
  v16 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = typeCopy;
      v14 = 2112;
      v15 = valueCopy;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Updating prediction for %@ to %@", &v12, 0x16u);
    }
  }

  transactionNewPredictions = self->_transactionNewPredictions;
  if (!transactionNewPredictions)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = self->_transactionNewPredictions;
    self->_transactionNewPredictions = v10;

    transactionNewPredictions = self->_transactionNewPredictions;
  }

  [(NSMutableDictionary *)transactionNewPredictions setObject:valueCopy forKeyedSubscript:typeCopy];
}

- (void)wipeStoreAtNextOpeningWithReason:(id)reason completionBlock:(id)block
{
  blockCopy = block;
  reasonCopy = reason;
  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject wipeStoreAtNextOpeningWithReason:reasonCopy completionBlock:blockCopy];
}

- (BOOL)storeDerivativesFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject storeDerivativesFilter:filterCopy error:error];

  return error;
}

- (id)derivativesFilter
{
  platformObject = [(CPLEngineStore *)self platformObject];
  derivativesFilter = [platformObject derivativesFilter];

  return derivativesFilter;
}

- (id)localResourceForCloudResource:(id)resource recordClass:(Class *)class
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  if (itemScopedIdentifier)
  {
    v12 = 0;
    v8 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:itemScopedIdentifier isFinal:&v12];
    if (v8)
    {
      transactionClientCacheView = [(CPLEngineStore *)self transactionClientCacheView];
      v10 = [transactionClientCacheView resourceOfType:objc_msgSend(resourceCopy forRecordWithScopedIdentifier:"resourceType") recordClass:v8 error:{class, 0}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setShouldUpdateDisabledFeaturesWithError:(id *)error
{
  platformObject = [(CPLEngineStore *)self platformObject];
  v6 = [platformObject setShouldUpdateDisabledFeaturesWithError:error];

  if (v6)
  {
    self->_scheduleDisabledFeatureUpdateOnWriteSuccess = 1;
  }

  return v6;
}

- (BOOL)shouldUpdateDisabledFeatures
{
  platformObject = [(CPLEngineStore *)self platformObject];
  shouldUpdateDisabledFeatures = [platformObject shouldUpdateDisabledFeatures];

  return shouldUpdateDisabledFeatures;
}

- (NSArray)disabledFeatures
{
  disabledFeatures = self->_disabledFeatures;
  if (!disabledFeatures)
  {
    _storedDisabledFeatures = [(CPLEngineStore *)self _storedDisabledFeatures];
    v6 = self->_disabledFeatures;
    self->_disabledFeatures = _storedDisabledFeatures;

    disabledFeatures = self->_disabledFeatures;
    v2 = vars8;
  }

  if (disabledFeatures)
  {
    v7 = disabledFeatures;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (BOOL)isFeatureDisabled:(id)disabled
{
  disabledCopy = disabled;
  disabledFeatures = self->_disabledFeatures;
  if (!disabledFeatures)
  {
    _storedDisabledFeatures = [(CPLEngineStore *)self _storedDisabledFeatures];
    v7 = self->_disabledFeatures;
    self->_disabledFeatures = _storedDisabledFeatures;

    disabledFeatures = self->_disabledFeatures;
  }

  v8 = [(NSArray *)disabledFeatures containsObject:disabledCopy];

  return v8;
}

- (BOOL)updateDisabledFeatures:(id)features didReset:(BOOL *)reset error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  resetCopy = reset;
  *reset = 0;
  disabledFeatures = self->_disabledFeatures;
  *&self->_hasUpdatedDisabledFeatures = 257;
  if (!disabledFeatures)
  {
    _storedDisabledFeatures = [(CPLEngineStore *)self _storedDisabledFeatures];
    v11 = self->_disabledFeatures;
    self->_disabledFeatures = _storedDisabledFeatures;
  }

  selfCopy = self;
  v12 = MEMORY[0x1E695E0F0];
  if (featuresCopy)
  {
    v12 = featuresCopy;
  }

  v57 = v12;
  v13 = v12;

  v14 = [v13 mutableCopy];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  p_disabledFeatures = &self->_disabledFeatures;
  v16 = self->_disabledFeatures;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v83;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v83 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v82 + 1) + 8 * i);
        v22 = [v14 indexOfObject:v21];
        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v15 addObject:v21];
        }

        else
        {
          [v14 removeObjectAtIndex:v22];
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v18);
  }

  v23 = &propertiesForChangeType__facesProperties;
  if (![v15 count] && !objc_msgSend(v14, "count"))
  {
    v27 = 0;
    v67 = 0;
    v68 = 0;
    v24 = selfCopy;
    goto LABEL_75;
  }

  v24 = selfCopy;
  if ([v15 count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v15 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v89 = v26;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEFAULT, "Features re-enabled: %@", buf, 0xCu);

        v24 = selfCopy;
      }
    }

    errorCopy2 = error;
    v60 = v13;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v15;
    v65 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v65)
    {
      v67 = 0;
      v68 = 0;
      v27 = 0;
      v63 = *v79;
LABEL_24:
      v28 = 0;
      while (1)
      {
        if (*v79 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v78 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v31 = [CPLFeature featureWithName:v29];
        v32 = v31;
        if (v31)
        {
          v77 = v27;
          v33 = [v31 enableFeatureInStore:v24 error:&v77];
          v34 = v77;

          v27 = v34;
          if (!v33)
          {
            goto LABEL_68;
          }
        }

        if (v24->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate && v68 == 0)
        {
          v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been re-enabled", v29];
        }

        if (v24->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate && !v67)
        {
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been re-enabled", v29];
        }

        objc_autoreleasePoolPop(v30);
        if (v65 == ++v28)
        {
          v65 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v65)
          {
            goto LABEL_24;
          }

          goto LABEL_43;
        }
      }
    }

    v67 = 0;
    v68 = 0;
    v27 = 0;
LABEL_43:

    error = errorCopy2;
    v13 = v60;
    v23 = &propertiesForChangeType__facesProperties;
  }

  else
  {
    v27 = 0;
    v67 = 0;
    v68 = 0;
  }

  if ([v14 count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v36 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v14 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v89 = v37;
        _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "Features disabled: %@", buf, 0xCu);

        v24 = selfCopy;
      }
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v14;
    v66 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
    if (!v66)
    {
      v43 = 1;
LABEL_70:

      goto LABEL_72;
    }

    errorCopy2 = error;
    v60 = v13;
    v64 = *v74;
LABEL_51:
    v38 = 0;
    while (1)
    {
      if (*v74 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v73 + 1) + 8 * v38);
      v30 = objc_autoreleasePoolPush();
      v40 = [CPLFeature featureWithName:v39];
      v32 = v40;
      if (v40)
      {
        v72 = v27;
        v41 = [v40 disableFeatureInStore:v24 error:&v72];
        v34 = v72;

        v27 = v34;
        if (!v41)
        {
          break;
        }
      }

      if (v24->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate && v68 == 0)
      {
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been disabled", v39];
      }

      if (v24->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate && !v67)
      {
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been disabled", v39];
      }

      objc_autoreleasePoolPop(v30);
      if (v66 == ++v38)
      {
        v43 = 1;
        v66 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
        if (v66)
        {
          goto LABEL_51;
        }

        error = errorCopy2;
        v13 = v60;
        goto LABEL_69;
      }
    }

LABEL_68:

    objc_autoreleasePoolPop(v30);
    v43 = 0;
    v27 = v34;
    error = errorCopy2;
    v13 = v60;
    v24 = selfCopy;
LABEL_69:
    v23 = &propertiesForChangeType__facesProperties;
    goto LABEL_70;
  }

  v43 = 1;
LABEL_72:
  engineLibrary = [(CPLEngineStore *)v24 engineLibrary];
  [engineLibrary updateDisabledFeatures:v13];

  if (!v43)
  {
    goto LABEL_83;
  }

LABEL_75:
  v45 = v27;
  platformObject = [(CPLEngineStore *)v24 platformObject];
  v71 = v27;
  v47 = v24;
  v48 = [platformObject storeDisabledFeatures:v13 error:&v71];
  v27 = v71;

  if (!v48)
  {
    v24 = v47;
LABEL_83:
    v50 = 0;
    v24->_isUpdatingDisabledFeatures = 0;
    goto LABEL_91;
  }

  objc_storeStrong(p_disabledFeatures, v57);
  v47->_isUpdatingDisabledFeatures = 0;
  if (v47->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate)
  {
    if ((v23[51] & 1) == 0)
    {
      v49 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v89 = v68;
        _os_log_impl(&dword_1DC05A000, v49, OS_LOG_TYPE_ERROR, "Triggering complete reset sync now because %@", buf, 0xCu);
      }
    }

    *resetCopy = 1;
    v70 = v27;
    v50 = [(CPLEngineStore *)v47 resetCompleteSyncStateWithCause:v68 error:&v70];
    v51 = v70;
  }

  else
  {
    if (!v47->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate)
    {
      *&v47->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate = 0;
      v50 = 1;
      goto LABEL_94;
    }

    if ((v23[51] & 1) == 0)
    {
      v52 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v89 = v68;
        _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_ERROR, "Triggering complete reset sync now because %@", buf, 0xCu);
      }
    }

    *resetCopy = 1;
    v69 = v27;
    v50 = [(CPLEngineStore *)v47 resetLocalSyncStateWithCause:v67 error:&v69];
    v51 = v69;
  }

  v53 = v51;

  v27 = v53;
  v24 = selfCopy;
LABEL_91:
  *&v24->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate = 0;
  if (error && (v50 & 1) == 0)
  {
    v54 = v27;
    v50 = 0;
    *error = v27;
  }

LABEL_94:

  return v50;
}

- (id)_storedDisabledFeatures
{
  platformObject = [(CPLEngineStore *)self platformObject];
  disabledFeatures = [platformObject disabledFeatures];

  return disabledFeatures;
}

- (BOOL)hasUnacknowledgedChanges
{
  if ([(CPLChangeBatch *)self->_unacknowledgedBatch count])
  {
    return 1;
  }

  platformObject = [(CPLEngineStore *)self platformObject];
  hasStoredChangeSessionUpdate = [platformObject hasStoredChangeSessionUpdate];

  return hasStoredChangeSessionUpdate;
}

- (id)unacknowledgedChangeWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  unacknowledgedBatch = self->_unacknowledgedBatch;
  if (unacknowledgedBatch)
  {
    v6 = [(CPLChangeBatch *)unacknowledgedBatch recordWithScopedIdentifier:identifierCopy];
  }

  else
  {
    platformObject = [(CPLEngineStore *)self platformObject];
    storedChangeSessionUpdate = [platformObject storedChangeSessionUpdate];

    if (storedChangeSessionUpdate)
    {
      v6 = [storedChangeSessionUpdate pendingRecordChangeForClientCacheWithLocalScopedIdentifier:identifierCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)dropUnacknowledgedBatch
{
  unacknowledgedBatch = self->_unacknowledgedBatch;
  self->_unacknowledgedBatch = 0;

  [(CPLEngineStore *)self _dropTransactionClientCacheView];
  self->_discardUnacknowledgedBatchOnTransactionFail = 0;
}

- (void)keepUnacknowledgedBatch:(id)batch
{
  objc_storeStrong(&self->_unacknowledgedBatch, batch);
  [(CPLEngineStore *)self _dropTransactionClientCacheView];
  self->_discardUnacknowledgedBatchOnTransactionFail = 1;
}

- (BOOL)checkExpectedLibraryVersion:(id)version error:(id *)error
{
  versionCopy = version;
  libraryVersion = [(CPLEngineStore *)self libraryVersion];
  v8 = [libraryVersion isEqualToString:versionCopy];

  if (error && (v8 & 1) == 0)
  {
    *error = [CPLErrors invalidClientCacheErrorWithReason:@"Client cache has been reset during session"];
  }

  return v8;
}

- (BOOL)hasPendingChangeSessionUpdate
{
  platformObject = [(CPLEngineStore *)self platformObject];
  hasStoredChangeSessionUpdate = [platformObject hasStoredChangeSessionUpdate];

  return hasStoredChangeSessionUpdate;
}

- (BOOL)forceApplyPendingChangeSessionUpdateWithError:(id *)error
{
  if (!self->_applyingChangeSessionUpdate)
  {
    v6 = objc_autoreleasePoolPush();
    platformObject = [(CPLEngineStore *)self platformObject];
    storedChangeSessionUpdate = [platformObject storedChangeSessionUpdate];

    if (storedChangeSessionUpdate)
    {
      v13 = 0;
      v9 = [(CPLEngineStore *)self _applyAndDiscardPendingUpdate:storedChangeSessionUpdate error:&v13];
      v10 = v13;
      if (!v9)
      {

        objc_autoreleasePoolPop(v6);
        if (error)
        {
          v11 = v10;
          v3 = 0;
          *error = v10;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_11;
      }

      [(CPLEngineStore *)self _unschedulePendingUpdateApply];
    }

    else
    {
      v10 = 0;
    }

    objc_autoreleasePoolPop(v6);
    v3 = 1;
LABEL_11:

    return v3;
  }

  return 1;
}

- (BOOL)applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:(id)version error:(id *)error
{
  versionCopy = version;
  if (self->_dontDelayChangeSessionUpdate)
  {
    v7 = [(CPLEngineStore *)self checkExpectedLibraryVersion:versionCopy error:error];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    platformObject = [(CPLEngineStore *)self platformObject];
    storedChangeSessionUpdate = [platformObject storedChangeSessionUpdate];

    if (storedChangeSessionUpdate)
    {
      v18 = 0;
      v11 = [(CPLEngineStore *)self _applyAndDiscardPendingUpdate:storedChangeSessionUpdate error:&v18];
      v12 = v18;
      if (v11)
      {
        [(CPLEngineStore *)self _unschedulePendingUpdateApply];
        v17 = v12;
        v7 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:&v17];
        v13 = v17;

        v12 = v13;
      }

      else
      {
        [CPLResetTracker registerLikelyResetReason:@"Failed to apply delayed update (%@) to client cache", objc_opt_class()];
        v7 = 0;
      }
    }

    else
    {
      v16 = 0;
      v7 = [(CPLEngineStore *)self checkExpectedLibraryVersion:versionCopy error:&v16];
      v12 = v16;
    }

    objc_autoreleasePoolPop(v8);
    if (error && !v7)
    {
      v14 = v12;
      *error = v12;
    }
  }

  return v7;
}

- (BOOL)beginChangeSession:(id)session withLibraryVersion:(id)version resetTracker:(id)tracker error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  versionCopy = version;
  trackerCopy = tracker;
  if (_CPLDontDelayChangeSessionUpdate == 1)
  {
    self->_dontDelayChangeSessionUpdate = _CPLDontDelayChangeSessionUpdate;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    self->_dontDelayChangeSessionUpdate = [standardUserDefaults BOOLForKey:@"CPLDontDelayChangeSessionUpdate"];
  }

  p_pendingTracker = &self->_pendingTracker;
  pendingTracker = self->_pendingTracker;
  if (pendingTracker)
  {
    likelyResetDate = [(CPLResetTracker *)pendingTracker likelyResetDate];
    [likelyResetDate timeIntervalSinceNow];
    if (v18 < -60.0)
    {
      v19 = *p_pendingTracker;
      *p_pendingTracker = 0;
    }
  }

  v83 = a2;
  if (versionCopy)
  {
    libraryVersion = [(CPLEngineStore *)self libraryVersion];
    if (!libraryVersion)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v73 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v73, OS_LOG_TYPE_ERROR, "Library version should be set here", buf, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v75 lineNumber:1802 description:@"Library version should be set here"];

      abort();
    }

    v21 = libraryVersion;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v86 = versionCopy;
        v87 = 2112;
        v88 = v21;
        v89 = 2112;
        v90 = sessionCopy;
        _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEBUG, "Checking client version %@ against our own version %@ during %@", buf, 0x20u);
      }
    }

    v23 = sessionCopy;
    v24 = [v21 isEqualToString:versionCopy];
    platformObject = [(CPLEngineStore *)self platformObject];
    storedChangeSessionUpdate = [platformObject storedChangeSessionUpdate];

    if (v24)
    {
      errorCopy3 = error;
      if (!storedChangeSessionUpdate)
      {
        v42 = v23;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v56 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v86 = versionCopy;
            v87 = 2112;
            v88 = v23;
            _os_log_impl(&dword_1DC05A000, v56, OS_LOG_TYPE_DEBUG, "Client has the correct version (%@). Starting %@", buf, 0x16u);
          }
        }

        v57 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:error];

        v40 = 0;
        v41 = 0;
        if (!v57)
        {
          goto LABEL_87;
        }

        goto LABEL_68;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v28 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          libraryVersion2 = [storedChangeSessionUpdate libraryVersion];
          *buf = 138412802;
          v86 = versionCopy;
          v87 = 2112;
          v88 = libraryVersion2;
          v89 = 2112;
          v90 = v23;
          _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_ERROR, "Client has an incorrect version (%@) but it matches the previous version, discarding lost pending update (%@). Recovering %@", buf, 0x20u);

          errorCopy3 = error;
        }
      }

      if ([storedChangeSessionUpdate discardFromStore:self error:errorCopy3])
      {
        v30 = [(CPLEngineStore *)self _storeChangeSessionUpdate:0 error:errorCopy3];
        [(CPLEngineStore *)self _unschedulePendingUpdateApply];

        if (!v30)
        {
          goto LABEL_76;
        }

        goto LABEL_37;
      }

      goto LABEL_75;
    }

    if (storedChangeSessionUpdate)
    {
      libraryVersion3 = [storedChangeSessionUpdate libraryVersion];
      v44 = [versionCopy isEqualToString:libraryVersion3];

      if (v44)
      {
        errorCopy3 = error;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v45 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v86 = versionCopy;
            v87 = 2112;
            v88 = v23;
            _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_ERROR, "Client has the correct version (%@) after an unfinished session. Recovering %@", buf, 0x16u);
          }
        }

        if ([(CPLEngineStore *)self _applyAndDiscardPendingUpdate:storedChangeSessionUpdate error:error])
        {
          [(CPLEngineStore *)self _unschedulePendingUpdateApply];

LABEL_37:
          v46 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:errorCopy3];

          v42 = v23;
          if (!v46)
          {
            goto LABEL_77;
          }

          v40 = 1;
          goto LABEL_68;
        }

        [CPLResetTracker registerLikelyResetReason:@"Failed to apply delayed update (%@) to client cache", objc_opt_class()];
LABEL_75:

LABEL_76:
        v42 = v23;
LABEL_77:
        if (errorCopy3)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v21 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v68 = *errorCopy3;
              *buf = 138412290;
              v86 = v68;
              v69 = "Failed to recover mismatched session: %@";
              v70 = v21;
              v71 = 12;
LABEL_84:
              _os_log_impl(&dword_1DC05A000, v70, OS_LOG_TYPE_ERROR, v69, buf, v71);
              goto LABEL_85;
            }

            goto LABEL_85;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v69 = "Failed to recover mismatched session";
            v70 = v21;
            v71 = 2;
            goto LABEL_84;
          }

LABEL_85:
          v41 = 0;
LABEL_86:

          goto LABEL_87;
        }

        v41 = 0;
        goto LABEL_87;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v58 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          libraryVersion4 = [storedChangeSessionUpdate libraryVersion];
          *buf = 138412802;
          v86 = versionCopy;
          v87 = 2112;
          v88 = v21;
          v89 = 2112;
          v90 = libraryVersion4;
          _os_log_impl(&dword_1DC05A000, v58, OS_LOG_TYPE_ERROR, "Client has an incorrect version (%@) - current version is (%@) and pending version is (%@). Client will have to perform a reset sync", buf, 0x20u);
        }

LABEL_63:
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v58 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v86 = versionCopy;
        v87 = 2112;
        v88 = v21;
        _os_log_impl(&dword_1DC05A000, v58, OS_LOG_TYPE_ERROR, "Client has an incorrect version (%@) - current version is (%@). Client will have to perform a reset sync", buf, 0x16u);
      }

      goto LABEL_63;
    }

    if (error)
    {
      *error = +[CPLErrors versionMismatchError];
    }

    [CPLResetTracker registerLikelyResetReason:@"version mismatch during %@", v23];

    v42 = v23;
    goto LABEL_85;
  }

  v31 = objc_alloc(MEMORY[0x1E696AEC0]);
  v82 = sessionCopy;
  shortDescription = [objc_opt_class() shortDescription];
  v33 = [v31 initWithFormat:@"client library version reset in a %@ session", shortDescription];

  if (([trackerCopy hasReasons] & 1) == 0 && *p_pendingTracker)
  {
    v34 = *p_pendingTracker;

    trackerCopy = v34;
  }

  platformObject2 = [(CPLEngineStore *)self platformObject];
  isClientInSyncWithClientCache = [platformObject2 isClientInSyncWithClientCache];

  if (isClientInSyncWithClientCache)
  {
    v37 = [trackerCopy likelyResetReasonWithImmediateReason:v33];
    likelyResetDate2 = [trackerCopy likelyResetDate];
    v39 = [(CPLEngineStore *)self resetLocalSyncStateWithCause:v37 date:likelyResetDate2 error:error];

    v40 = 0;
    v41 = 0;
    v42 = v82;
    if (!v39)
    {
      goto LABEL_87;
    }
  }

  else
  {
    platformObject3 = [(CPLEngineStore *)self platformObject];
    storedChangeSessionUpdate2 = [platformObject3 storedChangeSessionUpdate];

    if (storedChangeSessionUpdate2)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v49 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = [trackerCopy likelyResetReasonWithImmediateReason:v33];
          *buf = 138412290;
          v86 = v50;
          _os_log_impl(&dword_1DC05A000, v49, OS_LOG_TYPE_ERROR, "Client is resetting library version but we are already out of sync - we still need to discard a pending update (%@)", buf, 0xCu);
        }
      }

      v84 = 0;
      v51 = [storedChangeSessionUpdate2 discardFromStore:self error:&v84];
      v52 = v84;
      if ((v51 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v53 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = objc_opt_class();
          *buf = 138412546;
          v86 = v54;
          v87 = 2112;
          v88 = v52;
          v81 = v54;
          _os_log_impl(&dword_1DC05A000, v53, OS_LOG_TYPE_ERROR, "Failed to cleanly discard pending update (%@): %@", buf, 0x16u);
        }
      }

      v55 = [(CPLEngineStore *)self _storeChangeSessionUpdate:0 error:error];

      v40 = 0;
      v41 = 0;
      v42 = v82;
      if (!v55)
      {
        goto LABEL_87;
      }
    }

    else
    {

      v40 = 0;
      v42 = v82;
    }
  }

LABEL_68:
  platformObject4 = [(CPLEngineStore *)self platformObject];
  hasStoredChangeSessionUpdate = [platformObject4 hasStoredChangeSessionUpdate];

  if (hasStoredChangeSessionUpdate)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v76 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        shortDescription2 = [objc_opt_class() shortDescription];
        *buf = 138412290;
        v86 = shortDescription2;
        _os_log_impl(&dword_1DC05A000, v76, OS_LOG_TYPE_ERROR, "A %@ session should always start with not pending updates", buf, 0xCu);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    shortDescription3 = [objc_opt_class() shortDescription];
    [currentHandler2 handleFailureInMethod:v83 object:self file:v79 lineNumber:1872 description:{@"A %@ session should always start with not pending updates", shortDescription3}];

    abort();
  }

  if (v40)
  {
    v62 = objc_alloc(MEMORY[0x1E696AEC0]);
    v63 = v42;
    shortDescription4 = [objc_opt_class() shortDescription];
    v21 = [v62 initWithFormat:@"client library version reset in a %@ session", shortDescription4];

    mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
    likelyResetDate3 = [trackerCopy likelyResetDate];
    v67 = [trackerCopy likelyResetReasonWithImmediateReason:v21];
    [(CPLEngineStore *)self _storeResetEvent:@"recover" scopeIdentifier:mainScopeIdentifier date:likelyResetDate3 pending:0 cause:v67];

    if ([trackerCopy hasReasons])
    {
      objc_storeStrong(&self->_pendingTracker, trackerCopy);
    }

    v41 = 1;
    v42 = v63;
    goto LABEL_86;
  }

  v41 = 1;
LABEL_87:

  return v41;
}

- (BOOL)storeChangeSessionUpdate:(id)update error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v8 = updateCopy;
  if (self->_dontDelayChangeSessionUpdate)
  {
    if (![updateCopy applyToStore:self error:error])
    {
      v12 = 0;
      goto LABEL_8;
    }

    v9 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:error];
  }

  else
  {
    platformObject = [(CPLEngineStore *)self platformObject];
    hasStoredChangeSessionUpdate = [platformObject hasStoredChangeSessionUpdate];

    if (hasStoredChangeSessionUpdate)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          platformObject2 = [(CPLEngineStore *)self platformObject];
          storedChangeSessionUpdate = [platformObject2 storedChangeSessionUpdate];
          *buf = 138412546;
          v22 = v8;
          v23 = 2112;
          v24 = storedChangeSessionUpdate;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to store %@ while %@ is already stored", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
      platformObject3 = [(CPLEngineStore *)self platformObject];
      storedChangeSessionUpdate2 = [platformObject3 storedChangeSessionUpdate];
      [currentHandler handleFailureInMethod:a2 object:self file:v18 lineNumber:1782 description:{@"Trying to store %@ while %@ is already stored", v8, storedChangeSessionUpdate2}];

      abort();
    }

    [(CPLEngineStore *)self _schedulePendingUpdateApply];
    v9 = [(CPLEngineStore *)self _storeChangeSessionUpdate:v8 error:error];
  }

  v12 = v9;
LABEL_8:

  return v12;
}

- (BOOL)_storeChangeSessionUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  [(CPLEngineStore *)self _dropTransactionClientCacheView];
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject storeChangeSessionUpdate:updateCopy error:error];

  return error;
}

- (NSArray)pushPullGatekeepers
{
  platformObject = [(CPLEngineStore *)self platformObject];
  pushPullGatekeepers = [platformObject pushPullGatekeepers];

  return pushPullGatekeepers;
}

- (BOOL)clearAllPushPullGatekeepersWithError:(id *)error
{
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject storePushPullGatekeepers:0 error:error];

  return error;
}

- (BOOL)addPushPullGatekeeper:(id)gatekeeper error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  gatekeeperCopy = gatekeeper;
  platformObject = [(CPLEngineStore *)self platformObject];
  pushPullGatekeepers = [platformObject pushPullGatekeepers];

  v9 = [pushPullGatekeepers count];
  platformObject2 = [(CPLEngineStore *)self platformObject];
  if (v9)
  {
    v11 = [pushPullGatekeepers arrayByAddingObject:gatekeeperCopy];
  }

  else
  {
    v15[0] = gatekeeperCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  }

  v12 = v11;

  v13 = [platformObject2 storePushPullGatekeepers:v12 error:error];
  return v13;
}

- (void)_unschedulePendingUpdateApply
{
  if (self->_schedulePendingUpdateApplyOnWriteSuccess)
  {
    self->_schedulePendingUpdateApplyOnWriteSuccess = 0;
  }

  self->_unschedulePendingUpdateApplyOnWriteSuccess = 1;
}

- (void)_schedulePendingUpdateApply
{
  if (self->_unschedulePendingUpdateApplyOnWriteSuccess)
  {
    self->_unschedulePendingUpdateApplyOnWriteSuccess = 0;
  }

  self->_schedulePendingUpdateApplyOnWriteSuccess = 1;
}

- (void)_reallyUnschedulePendingUpdateApply
{
  self->_pendingUpdateInterval = 0.0;
  pendingUpdateQueue = self->_pendingUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CPLEngineStore__reallyUnschedulePendingUpdateApply__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(pendingUpdateQueue, block);
}

void __53__CPLEngineStore__reallyUnschedulePendingUpdateApply__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    *(v3 + 112) = 0;
  }
}

- (void)_reallySchedulePendingUpdateApply
{
  pendingUpdateInterval = self->_pendingUpdateInterval;
  v5 = 30.0;
  if (pendingUpdateInterval > 0.0)
  {
    if (pendingUpdateInterval <= 30.0)
    {
      v5 = self->_pendingUpdateInterval;
    }

    self->_pendingUpdateInterval = 0.0;
  }

  v7[6] = v2;
  v7[7] = v3;
  pendingUpdateQueue = self->_pendingUpdateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke;
  v7[3] = &unk_1E861B100;
  v7[4] = self;
  *&v7[5] = v5;
  dispatch_sync(pendingUpdateQueue, v7);
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 120));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_2;
  v10[3] = &unk_1E861B290;
  v10[4] = *(a1 + 32);
  v5 = v4;
  v11 = v5;
  dispatch_source_set_event_handler(v5, v10);
  v6 = dispatch_time(0, 1000000000 * *(a1 + 40));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  dispatch_resume(v5);
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  *(v7 + 112) = v5;
  v9 = v5;
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2[14] == v1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_3;
    v4[3] = &unk_1E86205B8;
    v4[4] = v2;
    v5 = v1;
    v3 = [v2 performWriteTransactionWithBlock:v4 completionHandler:&__block_literal_global_343];
  }
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_4;
  block[3] = &unk_1E861F868;
  block[4] = v5;
  v22 = v4;
  v23 = &v24;
  dispatch_sync(v6, block);
  if (*(v25 + 24) == 1)
  {
    v7 = [v3 error];
    v8 = v7 == 0;

    if (v8)
    {
      v9 = [*(a1 + 32) platformObject];
      v10 = [v9 storedChangeSessionUpdate];

      if (v10)
      {
        v11 = *(a1 + 32);
        v20 = 0;
        v12 = [v11 _applyPendingUpdate:v10 error:&v20];
        v13 = v20;
        if (v12)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v14 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_opt_class();
              *buf = 138412290;
              v29 = v15;
              v16 = v15;
              _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Applied pending update %@ automatically because client did not do it", buf, 0xCu);
            }
          }
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = objc_opt_class();
              *buf = 138412546;
              v29 = v18;
              v30 = 2112;
              v31 = v13;
              v19 = v18;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Failed to apply pending update %@ automatically because client did not do it: %@", buf, 0x16u);
            }
          }

          [v3 setError:v13];
        }
      }
    }
  }

  _Block_object_dispose(&v24, 8);
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_4(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 112);
  if (v2 == a1[5])
  {
    *(v1 + 112) = 0;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)_applyPendingUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  v19 = 0;
  v7 = [(CPLEngineStore *)self _applyAndDiscardPendingUpdate:updateCopy error:&v19];
  v8 = v19;
  v9 = v8;
  if (!v7)
  {
    if ([v8 isCPLErrorWithCode:20] && (objc_msgSend(v9, "userInfo"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"CPLErrorResetReason"), domain = objc_claimAutoreleasedReturnValue(), v10, domain))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to apply delayed update (%@) to client cache: %@", objc_opt_class(), domain, v18];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = objc_opt_class();
      domain = [v9 domain];
      v12 = [v13 initWithFormat:@"Failed to apply delayed update (%@) to client cache (%@/%ld)", v14, domain, objc_msgSend(v9, "code")];
    }

    v15 = v12;

    if (error)
    {
      v16 = v9;
      *error = v9;
    }

    [CPLResetTracker registerLikelyResetReason:@"%@", v15];
  }

  return v7;
}

- (BOOL)_applyAndDiscardPendingUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  v7 = updateCopy;
  LOBYTE(v8) = 1;
  if (!self->_applyingChangeSessionUpdate)
  {
    self->_applyingChangeSessionUpdate = 1;
    v15 = 0;
    v8 = [updateCopy applyToStore:self error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v14 = v9;
      LOBYTE(v8) = [(CPLEngineStore *)self _storeChangeSessionUpdate:0 error:&v14];
      v11 = v14;

      v10 = v11;
    }

    if (error && (v8 & 1) == 0)
    {
      v12 = v10;
      *error = v10;
    }

    self->_applyingChangeSessionUpdate = 0;
  }

  return v8;
}

- (void)notePushRepositoryStoredSomeChanges
{
  if (self->_transactionClientCacheView)
  {
    if (!self->_transactionClientCacheViewHasPushRepository)
    {
      [(CPLEngineStore *)self _dropTransactionClientCacheView];
    }
  }
}

- (CPLRecordStorageView)transactionClientCacheView
{
  transactionClientCacheView = self->_transactionClientCacheView;
  if (!transactionClientCacheView)
  {
    v4 = [(CPLEngineStore *)self newClientCacheViewUsesPushRepository:&self->_transactionClientCacheViewHasPushRepository];
    v5 = self->_transactionClientCacheView;
    self->_transactionClientCacheView = v4;

    transactionClientCacheView = self->_transactionClientCacheView;
  }

  return transactionClientCacheView;
}

- (id)corruptionInfo
{
  platformObject = [(CPLEngineStore *)self platformObject];
  corruptionInfo = [platformObject corruptionInfo];

  return corruptionInfo;
}

- (NSDate)libraryCreationDate
{
  platformObject = [(CPLEngineStore *)self platformObject];
  libraryCreationDate = [platformObject libraryCreationDate];

  return libraryCreationDate;
}

- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)error
{
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject storeClientIsInSyncWithClientCacheWithError:error];

  return error;
}

- (BOOL)storeLastQuarantineCountReportDate:(id)date error:(id *)error
{
  dateCopy = date;
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject storeLastQuarantineCountReportDate:dateCopy error:error];

  return error;
}

- (id)lastQuarantineCountReportDate
{
  platformObject = [(CPLEngineStore *)self platformObject];
  lastQuarantineCountReportDate = [platformObject lastQuarantineCountReportDate];

  return lastQuarantineCountReportDate;
}

- (BOOL)storeUserIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStore *)self platformObject];
  v8 = [platformObject storeUserIdentifier:identifierCopy error:error];

  if (!identifierCopy && v8)
  {
    self->_scheduleSetupOnWriteSuccess = 1;
  }

  return v8;
}

- (id)userIdentifier
{
  platformObject = [(CPLEngineStore *)self platformObject];
  userIdentifier = [platformObject userIdentifier];

  return userIdentifier;
}

- (BOOL)pushRepositoryIsFull
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        pushRepository = self->_pushRepository;
        scopeIdentifier = [*(*(&v12 + 1) + 8 * i) scopeIdentifier];
        LOBYTE(pushRepository) = [(CPLEnginePushRepository *)pushRepository hasChangesInScopeWithIdentifier:scopeIdentifier];

        if (pushRepository)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)createNewLibraryVersion
{
  platformObject = [(CPLEngineStore *)self platformObject];
  createNewLibraryVersion = [platformObject createNewLibraryVersion];

  return createNewLibraryVersion;
}

- (id)libraryVersion
{
  platformObject = [(CPLEngineStore *)self platformObject];
  libraryVersion = [platformObject libraryVersion];

  return libraryVersion;
}

- (void)_updateShouldSyncScopeList:(BOOL)list
{
  shouldSyncScopeListQueue = self->_shouldSyncScopeListQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__CPLEngineStore__updateShouldSyncScopeList___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  listCopy = list;
  dispatch_sync(shouldSyncScopeListQueue, v4);
}

uint64_t __45__CPLEngineStore__updateShouldSyncScopeList___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 172) & 1) == 0 && *(result + 40) == 1)
  {
    *(v1 + 152) = 1;
  }

  return result;
}

- (BOOL)updateLibraryOptions:(unint64_t)options error:(id *)error
{
  platformObject = [(CPLEngineStore *)self platformObject];
  v8 = [platformObject updateLibraryOptions:options error:error];

  if (v8)
  {
    [(CPLEngineStore *)self _updateShouldSyncScopeList:[(CPLEngineStore *)self _shouldSyncScopeListWithOptions:options]];
  }

  return v8;
}

- (unint64_t)libraryOptions
{
  platformObject = [(CPLEngineStore *)self platformObject];
  libraryOptions = [platformObject libraryOptions];

  return libraryOptions;
}

- (BOOL)storeLibraryVersion:(id)version withError:(id *)error
{
  versionCopy = version;
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject storeLibraryVersion:versionCopy withError:error];

  return error;
}

- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler
{
  deactivateCopy = deactivate;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (deactivateCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__CPLEngineStore_closeAndDeactivate_completionHandler___block_invoke;
    v8[3] = &unk_1E861F2E8;
    v8[4] = self;
    v10 = 1;
    v9 = handlerCopy;
    [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:@"wiping database because it has been marked as deactivated" completionBlock:v8];
  }

  else
  {
    [(CPLEngineStore *)self _closeAndDeactivate:0 completionHandler:handlerCopy];
  }
}

- (void)_closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(CPLEngineStore *)self state]== 2)
  {
    [(CPLEngineStore *)self setState:3];
    v7 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.close" description:@"close store"];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        platformObject = [(CPLEngineStore *)self platformObject];
        *buf = 138412290;
        v17 = platformObject;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Closing concrete store: %@", buf, 0xCu);
      }
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke;
    v12[3] = &unk_1E861B090;
    v12[4] = self;
    v13 = v7;
    deactivateCopy = deactivate;
    v14 = handlerCopy;
    v10 = v7;
    [(CPLEngineStore *)self _performBarrierTransaction:v10 withBlock:v12];
  }

  else
  {
    v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Library is not open"];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

void __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861F360;
  v7 = *(a1 + 56);
  v5[4] = v3;
  v6 = v2;
  [v3 _performTransaction:v6 withBlock:v5];
  [*(a1 + 32) _unschedulePendingUpdateApply];
  [*(a1 + 32) _commitWriteTransaction:*(a1 + 40) commitError:0];
  v4 = [*(a1 + 40) error];
  [*(a1 + 32) setState:0];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _releaseDirty];
}

uint64_t __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = @"Closing";
      if (*(a1 + 48))
      {
        v3 = @"Deactivating";
      }

      v4 = *(*(a1 + 32) + 8);
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ all storages: %@", buf, 0x16u);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_328;
  v7[3] = &unk_1E861B998;
  v8 = *(a1 + 48);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  return [v5 do:v7];
}

uint64_t __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_328(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Marking database as deactivated", buf, 2u);
      }
    }

    v5 = [*(a1 + 32) platformObject];
    v6 = [v5 markDatabaseAsDeactivatedWithError:a2];
  }

  else
  {
    v6 = 1;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(*(a1 + 32) + 8);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 &= [*(*(&v15 + 1) + 8 * i) closeWithError:{a2, v15}];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = [*(a1 + 32) platformObject];
  v13 = [v12 closeWithError:a2];

  return v13 & v6;
}

- (void)performBarrier
{
  [(CPLEngineStore *)self performBatchedWriteTransactionBarrier];
  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject performBarrier];
}

- (void)performBatchedWriteTransactionBarrierWithCompletionBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  batchedTransactionsQueue = self->_batchedTransactionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke;
  block[3] = &unk_1E861A850;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(batchedTransactionsQueue, block);
  if (*(v16 + 24) == 1)
  {
    v6 = [[CPLEngineStoreTransaction alloc] initForWrite:0 store:self identifier:@"cpl.store.batch.barrier" description:@"barrier for batched write"];
    platformObject = [(CPLEngineStore *)self platformObject];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke_2;
    v11[3] = &unk_1E861ECD0;
    v13 = blockCopy;
    v8 = v6;
    v12 = v8;
    [platformObject performBarrierTransaction:v8 withBlock:v11];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke_4;
    v9[3] = &unk_1E861C660;
    v10 = blockCopy;
    [(CPLEngineStore *)self performBatchedWriteTransactionWithBlock:&__block_literal_global_312 completionHandler:v9];
    v8 = v10;
  }

  _Block_object_dispose(&v15, 8);
}

void *__75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

uint64_t __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _releaseDirty];
}

- (void)performBatchedWriteTransactionBarrier
{
  batchedTransactionsQueue = self->_batchedTransactionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CPLEngineStore_performBatchedWriteTransactionBarrier__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(batchedTransactionsQueue, block);
}

- (void)performBatchedWriteTransactionWithBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  if (_dontBatchTransactions == 1)
  {
    v8 = [(CPLEngineStore *)self performWriteTransactionWithBlock:blockCopy completionHandler:handlerCopy];
  }

  else
  {
    batchedTransactionsQueue = self->_batchedTransactionsQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__CPLEngineStore_performBatchedWriteTransactionWithBlock_completionHandler___block_invoke;
    v13[3] = &unk_1E861E9A8;
    v14 = blockCopy;
    v15 = handlerCopy;
    v13[4] = self;
    v10 = v13;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_682;
    block[3] = &unk_1E861B4E0;
    v17 = v10;
    v11 = batchedTransactionsQueue;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v11, v12);
  }
}

void __76__CPLEngineStore_performBatchedWriteTransactionWithBlock_completionHandler___block_invoke(void *a1)
{
  v3 = objc_alloc_init(_CPLEngineStoreBatchedTransaction);
  [(_CPLEngineStoreBatchedTransaction *)v3 setBlock:a1[5]];
  [(_CPLEngineStoreBatchedTransaction *)v3 setCompletionHandler:a1[6]];
  [*(a1[4] + 32) addObject:v3];
  v2 = a1[4];
  if ((v2[40] & 1) == 0)
  {
    [v2 _scheduleBatchedTransactionsLocked];
  }
}

- (void)_reallyPerformBatchedTransactionsLocked
{
  if ([(NSMutableArray *)self->_batchedTransactions count])
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3032000000;
    v6[3] = __Block_byref_object_copy__677;
    v6[4] = __Block_byref_object_dispose__678;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4[5] = v6;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke;
    v5[3] = &unk_1E8620A60;
    v5[4] = self;
    v5[5] = v6;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_3;
    v4[3] = &unk_1E8620A60;
    v4[4] = self;
    v3 = [(CPLEngineStore *)self performWriteTransactionWithBlock:v5 completionHandler:v4];
    _Block_object_dispose(v6, 8);
  }
}

void __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = MEMORY[0x1E69E9820];
  while (1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__677;
    v15 = __Block_byref_object_dispose__678;
    v16 = 0;
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v10[0] = v5;
    v10[1] = 3221225472;
    v10[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_2;
    v10[3] = &unk_1E861A850;
    v10[4] = v6;
    v10[5] = &v11;
    dispatch_sync(v7, v10);
    if (!v12[5])
    {
      break;
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:?];
    v8 = [v12[5] block];
    (v8)[2](v8, v3);

    v9 = [v3 error];

    if (v9 || CFAbsoluteTimeGetCurrent() - Current > 2.0)
    {
      break;
    }

    _Block_object_dispose(&v11, 8);
  }

  _Block_object_dispose(&v11, 8);
}

void __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 completionHandler];
        (v10)[2](v10, v3);

        [v9 _releaseDirty];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_4;
  v16[3] = &unk_1E861A940;
  v16[4] = v11;
  v13 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_682;
  block[3] = &unk_1E861B4E0;
  v22 = v13;
  v14 = v12;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v15);
}

void *__57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_4(void *result)
{
  v1 = result[4];
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 32) count];
    if (result)
    {
      v3 = v2[4];

      return [v3 _scheduleBatchedTransactionsLocked];
    }
  }

  return result;
}

void __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = *(*(a1 + 32) + 32);

    [v5 removeObjectAtIndex:0];
  }
}

- (void)_scheduleBatchedTransactionsLocked
{
  self->_batchedTransactionDequeueIsScheduled = 1;
  v3 = dispatch_walltime(0, 1000000000);
  batchedTransactionsQueue = self->_batchedTransactionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CPLEngineStore__scheduleBatchedTransactionsLocked__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_after(v3, batchedTransactionsQueue, block);
}

void __52__CPLEngineStore__scheduleBatchedTransactionsLocked__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 40) = 0;
  [*(a1 + 32) _reallyPerformBatchedTransactionsLocked];

  objc_autoreleasePoolPop(v2);
}

- (void)blockWriteTransactionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject blockWriteTransactionsWithCompletionHandler:handlerCopy];
}

- (id)_performWriteTransactionByPassBlocker:(id)blocker WithBlock:(id)block completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  blockerCopy = blocker;
  blockCopy = block;
  handlerCopy = handler;
  v11 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.write" description:@"write store"];
  [v11 setBlocker:blockerCopy];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Will write store with %@", &buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
  hasChangesToProcess = [WeakRetained hasChangesToProcess];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x2020000000;
  v34 = hasChangesToProcess;
  platformObject = [(CPLEngineStore *)self platformObject];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke;
  v28[3] = &unk_1E861EAC8;
  v28[4] = self;
  v29 = v11;
  v16 = blockCopy;
  v30 = v16;
  p_buf = &buf;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_302;
  v22[3] = &unk_1E861B970;
  v17 = v29;
  v23 = v17;
  selfCopy = self;
  v26 = &buf;
  v27 = hasChangesToProcess;
  v18 = handlerCopy;
  v25 = v18;
  [platformObject performWriteTransaction:v17 withBlock:v28 completionHandler:v22];

  v19 = v25;
  v20 = v17;

  _Block_object_dispose(&buf, 8);

  return v20;
}

void __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_2;
  v8[3] = &unk_1E861EAC8;
  v3 = (a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *v3;
  *&v7 = v5;
  *(&v7 + 1) = *v2;
  v9 = v7;
  v10 = v6;
  [v4 _performTransaction:v5 withBlock:v8];
}

void __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_302(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Finished writing %@", &v7, 0xCu);
    }
  }

  [*(a1 + 40) _commitWriteTransaction:*(a1 + 32) commitError:v3];
  if (!v3 && *(*(*(a1 + 56) + 8) + 24) != *(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 200));
    [WeakRetained setHasChangesToProcess:*(*(*(a1 + 56) + 8) + 24)];
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _releaseDirty];
}

void __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Performing %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
  v4 = [*(a1 + 32) error];

  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 40) + 216) hasStagedSyncAnchors];
  }
}

- (void)_commitWriteTransaction:(id)transaction commitError:(id)error
{
  v51 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  errorCopy = error;
  state = self->_state;
  error = [transactionCopy error];

  v35 = transactionCopy;
  selfCopy = self;
  v34 = errorCopy;
  if (error)
  {
    goto LABEL_27;
  }

  if (errorCopy)
  {
    if (state != 3)
    {
      if ([errorCopy isCPLOperationCancelledError])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLTransactionOSLogDomain();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v48 = transactionCopy;
            v11 = "! %@ commit failed: operation was cancelled";
            v12 = v10;
            v13 = OS_LOG_TYPE_DEBUG;
            v14 = 12;
LABEL_24:
            _os_log_impl(&dword_1DC05A000, v12, v13, v11, buf, v14);
            goto LABEL_25;
          }

          goto LABEL_25;
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLTransactionOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v48 = transactionCopy;
          v49 = 2112;
          v50 = errorCopy;
          v11 = "! %@ commit failed: %@";
          v12 = v10;
          v13 = OS_LOG_TYPE_ERROR;
          v14 = 22;
          goto LABEL_24;
        }

LABEL_25:
      }
    }

    [transactionCopy setError:errorCopy];
LABEL_27:
    if (state == 3 && (_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        error2 = [transactionCopy error];
        *buf = 138412290;
        v48 = error2;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Closing transaction did fail: %@", buf, 0xCu);
      }
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = self->_storages;
    v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v41 + 1) + 8 * i);
          if (state == 3 && (_CPLSilentLogging & 1) == 0)
          {
            v32 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              name = [v31 name];
              *buf = 138543362;
              v48 = name;
              _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_DEFAULT, "Closing %{public}@ after failed transaction", buf, 0xCu);
            }
          }

          [v31 writeTransactionDidFail];
        }

        v28 = [(NSHashTable *)v26 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v28);
    }

    selfCopy2 = selfCopy;
    [(CPLEngineStore *)selfCopy writeTransactionDidFail];
    goto LABEL_45;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = self->_storages;
  v16 = [(NSHashTable *)v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v37 + 1) + 8 * j);
        if (state == 3 && (_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v20 name];
            *buf = 138543362;
            v48 = name2;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Closing %{public}@", buf, 0xCu);
          }
        }

        [v20 writeTransactionDidSucceed];
      }

      v17 = [(NSHashTable *)v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v17);
  }

  selfCopy2 = self;
  [(CPLEngineStore *)self writeTransactionDidSucceed];
LABEL_45:
  [(CPLEngineStore *)selfCopy2 _finishTransaction];
}

- (void)writeTransactionDidFail
{
  self->_shouldEnableScopeListSyncOnWriteSuccess = 0;
  self->_pendingUpdateInterval = 0.0;
  *(&self->_pendingUpdateInterval + 5) = 0.0;
  if (self->_discardUnacknowledgedBatchOnTransactionFail)
  {
    self->_discardUnacknowledgedBatchOnTransactionFail = 0;
    unacknowledgedBatch = self->_unacknowledgedBatch;
    self->_unacknowledgedBatch = 0;
  }

  if (self->_hasUpdatedDisabledFeatures)
  {
    disabledFeatures = self->_disabledFeatures;
    self->_disabledFeatures = 0;

    self->_hasUpdatedDisabledFeatures = 0;
  }

  transactionNewPredictions = self->_transactionNewPredictions;
  self->_transactionNewPredictions = 0;

  platformObject = [(CPLEngineStore *)self platformObject];
  [platformObject writeTransactionDidFail];
}

- (id)performReadTransactionWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = [[CPLEngineStoreTransaction alloc] initForWrite:0 store:self identifier:@"cpl.store.read" description:@"read store"];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Will read store with %@", buf, 0xCu);
    }
  }

  platformObject = [(CPLEngineStore *)self platformObject];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke;
  v13[3] = &unk_1E861B3D0;
  v13[4] = self;
  v8 = v5;
  v14 = v8;
  v15 = blockCopy;
  v9 = blockCopy;
  [platformObject performReadTransaction:v8 withBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke_2;
  v7 = &unk_1E861AA50;
  v8 = v2;
  v9 = *(a1 + 48);
  [v3 _performTransaction:v8 withBlock:&v4];
  [*(a1 + 40) _releaseDirty];
}

uint64_t __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Performing %@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)openWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(CPLEngineStore *)self state])
  {
    v5 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't open library if it's not closed first"];
    handlerCopy[2](handlerCopy, v5);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        platformObject = [(CPLEngineStore *)self platformObject];
        *buf = 138412290;
        v14 = platformObject;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Opening concrete store: %@", buf, 0xCu);
      }
    }

    [(CPLEngineStore *)self setState:1];
    v8 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.open" description:@"open store"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E861B3D0;
    v10[4] = self;
    v11 = v8;
    v12 = handlerCopy;
    v9 = v8;
    [(CPLEngineStore *)self _performBarrierTransaction:v9 withBlock:v10];
  }
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E861B290;
  v13[4] = v3;
  v14 = v2;
  [v3 _performTransaction:v14 withBlock:v13];
  v4 = [a1[5] error];
  [a1[4] setState:2 * (v4 == 0)];
  [a1[4] _commitWriteTransaction:a1[5] commitError:v4];
  v5 = [a1[4] _resetEventsDescriptions];
  if (v5 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 componentsJoinedByString:@"\n\t"];
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Last reset events:\n\t%@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v8 = a1[4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_288;
    v9[3] = &unk_1E861AB18;
    v12 = a1[6];
    v10 = v4;
    v11 = a1[5];
    [v8 _forceCloseWithCompletionHandler:v9];
  }

  else
  {
    (*(a1[6] + 2))();
    [a1[5] _releaseDirty];
  }
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(*(a1 + 32) + 8);
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Opening all storages: %@", buf, 0xCu);
    }
  }

  [*(*(a1 + 32) + 344) discardCache];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_254;
  v19[3] = &unk_1E8620478;
  v4 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  [v4 do:v19];
  v5 = [*(a1 + 32) platformObject];
  if ([v5 storeVersionHasChanged])
  {
    v6 = [*(a1 + 40) error];

    if (v6)
    {
      return;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(*(a1 + 32) + 8);
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
LABEL_9:
      v10 = 0;
      while (1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_284;
        v14[3] = &unk_1E8620478;
        v14[4] = v11;
        [v12 do:v14];
        v13 = [*(a1 + 40) error];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }
  }
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke_288(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = v3;
        v5 = "Failed to close database after opening error: %@";
        v6 = v4;
        v7 = OS_LOG_TYPE_ERROR;
        v8 = 12;
LABEL_8:
        _os_log_impl(&dword_1DC05A000, v6, v7, v5, &v9, v8);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v5 = "Closed database after opening error";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 2;
      goto LABEL_8;
    }

LABEL_9:
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32));
  [*(a1 + 40) _releaseDirty];
}

uint64_t __44__CPLEngineStore_openWithCompletionHandler___block_invoke_254(uint64_t a1, NSObject **a2)
{
  v154 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) platformObject];
  v4 = [v3 openWithError:a2];

  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = *(a1 + 32);
  v6 = [v5 platformObject];
  *(*(a1 + 32) + 172) = [v5 _shouldSyncScopeListWithOptions:{objc_msgSend(v6, "libraryOptions")}];

  v7 = *(a1 + 32);
  if ((*(v7 + 172) & 1) == 0)
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    *(*(a1 + 32) + 172) = [v8 BOOLForKey:@"CPLForceScopeListSync"];

    v7 = *(a1 + 32);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v9 = *(v7 + 8);
  v10 = [v9 countByEnumeratingWithState:&v141 objects:v153 count:16];
  if (v10)
  {
    v11 = *v142;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v142 != v11)
      {
        objc_enumerationMutation(v9);
      }

      if (![*(*(&v141 + 1) + 8 * v12) openWithError:a2])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v141 objects:v153 count:16];
        if (!v10)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }
    }

    goto LABEL_30;
  }

LABEL_12:

  [*(a1 + 32) _loadResetEvents];
  v13 = [*(a1 + 32) platformObject];
  v4 = [v13 executePostOpenWithError:a2];

  if (!v4)
  {
    goto LABEL_31;
  }

  v14 = [*(*(a1 + 32) + 208) storedExtractedBatch];
  if (v14)
  {
    v15 = *(*(a1 + 32) + 208);
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v14 batch];
        v18 = [v15 name];
        *buf = 138412546;
        v146 = v17;
        v147 = 2114;
        v148 = *&v18;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Reinjecting %@ in %{public}@", buf, 0x16u);
      }
    }

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v19 = [v14 batch];
    v20 = [v19 countByEnumeratingWithState:&v137 objects:v152 count:16];
    if (v20)
    {
      v21 = *v138;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v138 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v137 + 1) + 8 * i) _setShouldNotTrustCloudCache:1];
        }

        v20 = [v19 countByEnumeratingWithState:&v137 objects:v152 count:16];
      }

      while (v20);
    }

    v23 = [v14 clientCacheIdentifier];
    v24 = v23 == 0;

    if (v24)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v39 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_ERROR, "Found extracted batch but no client cache identifier - triggering a reset sync", buf, 2u);
        }
      }

      v27 = +[CPLResetTracker currentTracker];
      v26 = [v27 likelyResetReasonWithImmediateReason:@"found extracted batch at launch without a client cache identifier"];
      v40 = [*(a1 + 32) resetLocalSyncStateWithCause:v26 error:a2];
      [CPLResetTracker discardTracker:v27];
    }

    else
    {
      v135 = 0;
      v136 = 0;
      v25 = [v15 reinjectExtractedBatch:v14 overwrittenRecordIdentifiers:&v136 error:&v135];
      v26 = v136;
      v27 = v135;
      if (v25)
      {
        v28 = *(*(a1 + 32) + 208);
        v134 = v27;
        v29 = [v28 storeExtractedBatch:0 error:&v134];
        v30 = v134;

        if (v29)
        {

          goto LABEL_61;
        }

        v27 = v30;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v41 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = [v14 batch];
          *buf = 138412546;
          v146 = v42;
          v147 = 2112;
          v148 = *&v27;
          _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_ERROR, "Re-injecting %@ failed: %@", buf, 0x16u);
        }
      }

      v43 = +[CPLResetTracker currentTracker];
      v44 = [v43 likelyResetReasonWithImmediateReason:@"failed to re-inject extracted batch at launch"];
      v40 = [*(a1 + 32) resetLocalSyncStateWithCause:v44 error:a2];
      [CPLResetTracker discardTracker:v43];
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_61:
  v45 = [*(a1 + 32) platformObject];
  v46 = [v45 storedChangeSessionUpdate];

  if (v46)
  {
    v47 = [v46 queuedDate];
    [v47 timeIntervalSinceNow];
    if (v47 && v48 >= -30.0)
    {
      v49 = v48 + 30.0;
      if (v49 <= 30.0)
      {
        v50 = v49;
      }

      else
      {
        v50 = 30.0;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v51 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = objc_opt_class();
          *buf = 138412546;
          v146 = v52;
          v147 = 2048;
          v148 = v50;
          _os_log_impl(&dword_1DC05A000, v51, OS_LOG_TYPE_DEFAULT, "Store has some %@ to apply, will apply it in %.1fs", buf, 0x16u);
        }
      }

      *(*(a1 + 32) + 128) = v50;
      [*(a1 + 32) _schedulePendingUpdateApply];
      goto LABEL_78;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v53 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = objc_opt_class();
        *buf = 138412290;
        v146 = v54;
        _os_log_impl(&dword_1DC05A000, v53, OS_LOG_TYPE_DEFAULT, "Store has some %@ to apply, applying now", buf, 0xCu);
      }
    }

    v55 = *(a1 + 32);
    v133 = 0;
    v56 = [v55 _applyPendingUpdate:v46 error:&v133];
    v57 = v133;
    v58 = v57;
    if (v56)
    {

LABEL_78:
      goto LABEL_79;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v114 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v146 = v58;
        _os_log_impl(&dword_1DC05A000, v114, OS_LOG_TYPE_ERROR, "Failed to apply pending update, will trigger a reset sync: %@", buf, 0xCu);
      }
    }

    v115 = objc_alloc(MEMORY[0x1E696AEC0]);
    v116 = [v58 domain];
    v117 = [v115 initWithFormat:@"failed to apply pending update to store (%@/%ld)", v116, objc_msgSend(v58, "code")];

    v118 = +[CPLResetTracker currentTracker];
    v119 = [v118 likelyResetReasonWithImmediateReason:v117];

    LOBYTE(v117) = [*(a1 + 32) resetLocalSyncStateWithCause:v119 error:a2];
    [CPLResetTracker discardTracker:v118];

    if (v117)
    {
      goto LABEL_79;
    }

LABEL_30:
    v4 = 0;
    goto LABEL_31;
  }

LABEL_79:
  v59 = +[CPLFingerprintScheme supportsEPP];
  v60 = 21;
  if (v59)
  {
    v60 = 22;
  }

  v121 = v60;
  v122 = [*(a1 + 32) libraryOptions];
  v61 = [*(a1 + 32) engineLibrary];
  v120 = [v61 transport];

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = [*(*(a1 + 32) + 216) enumeratorForScopesIncludeInactive:1];
  v125 = [obj countByEnumeratingWithState:&v129 objects:v151 count:16];
  if (v125)
  {
    v124 = *v130;
    do
    {
      v62 = 0;
      do
      {
        if (*v130 != v124)
        {
          objc_enumerationMutation(obj);
        }

        v63 = *(*(&v129 + 1) + 8 * v62);
        v64 = [*(*(a1 + 32) + 216) flagsForScope:v63];
        v65 = [v64 valueForFlag:16];
        v66 = [v64 valueForFlag:4];
        if ((v65 & 1) == 0)
        {
          if (!v66 || ([v64 valueForFlag:0x10000] & 1) != 0)
          {
            v71 = *(a1 + 32);
            v128 = 0;
            v72 = [v71 _canHaveActivatedScope:v63 libraryOptions:v122 error:&v128];
            v73 = v128;
            if ((v72 & 1) == 0)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v105 = __CPLStoreOSLogDomain_3044();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  v106 = [v73 localizedDescription];
                  *buf = 138412546;
                  v146 = v63;
                  v147 = 2112;
                  v148 = *&v106;
                  _os_log_impl(&dword_1DC05A000, v105, OS_LOG_TYPE_ERROR, "Opening store with incorrectly activated %@ (%@)", buf, 0x16u);
                }
              }

              v107 = objc_alloc(MEMORY[0x1E696AEC0]);
              v108 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v63 scopeType]);
              v77 = [v107 initWithFormat:@"Found scope with type %@ active at opening time", v108];

              v109 = *(a1 + 32);
              v127[0] = MEMORY[0x1E69E9820];
              v127[1] = 3221225472;
              v127[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_281;
              v127[3] = &unk_1E861A940;
              v127[4] = v109;
              [v109 wipeStoreAtNextOpeningWithReason:v77 completionBlock:v127];
              if (a2)
              {
                v110 = v73;
                *a2 = v73;
              }

LABEL_195:

LABEL_196:
LABEL_197:

              goto LABEL_30;
            }

            v74 = [*(*(a1 + 32) + 216) supportedFeatureVersionInLastSyncForScope:v63];
            if (v74 >= v121)
            {

              goto LABEL_119;
            }

            v75 = [*(*(a1 + 32) + 216) scopeChangeForScope:v63];
            v76 = [v75 libraryInfo];
            v77 = [v76 featureVersionHistory];

            if (v77)
            {
              if (v74 < [v77 currentFeatureVersion])
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v78 = __CPLStoreOSLogDomain_3044();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                  {
                    v79 = [v63 scopeIdentifier];
                    v80 = [v77 currentFeatureVersion];
                    *buf = 138543874;
                    v146 = v79;
                    v147 = 2048;
                    v148 = *&v74;
                    v149 = 2048;
                    v150 = v80;
                    _os_log_impl(&dword_1DC05A000, v78, OS_LOG_TYPE_DEFAULT, "Last supported feature version in sync for %{public}@ is %lu while server feature version was at least %lu - will have to catch up some changes though", buf, 0x20u);
                  }

                  goto LABEL_116;
                }

LABEL_117:
                if (![*(*(a1 + 32) + 216) setScopeNeedsUpdateFromTransport:v63 error:a2])
                {
                  goto LABEL_195;
                }

                v85 = [*(*(a1 + 32) + 216) setScopeHasChangesToPullFromTransport:v63 error:a2];

                if ((v85 & 1) == 0)
                {
                  goto LABEL_197;
                }

LABEL_119:
                if (*(*(a1 + 32) + 16) || ([v63 scopeType] & 0xFFFFFFFFFFFFFFFELL) != 4)
                {
                  if (v65)
                  {
                    goto LABEL_158;
                  }
                }

                else
                {
                  if (overridesSharedLibraryFeatureFlag != 1 || (isSharedLibraryFeatureEnabled) && (v86 = *(a1 + 32), [v63 scopeIdentifier], v87 = objc_claimAutoreleasedReturnValue(), LODWORD(v86) = objc_msgSend(v86, "mainScopeSupportsSharingScopeWithIdentifier:", v87), v87, v86))
                  {
                    if (v65)
                    {
                      if (CPLAllowsInactiveSharedLibraryScope_onceToken != -1)
                      {
                        dispatch_once(&CPLAllowsInactiveSharedLibraryScope_onceToken, &__block_literal_global_5_24591);
                      }

                      if (CPLAllowsInactiveSharedLibraryScope_allowsInactiveSharedLibraryScope)
                      {
                        if (_CPLSilentLogging)
                        {
                          goto LABEL_158;
                        }

                        v73 = __CPLStoreOSLogDomain_3044();
                        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_141;
                        }

                        goto LABEL_157;
                      }

                      v73 = [*(*(a1 + 32) + 216) primaryScope];
                      if (!v73 || ([*(*(a1 + 32) + 216) valueForFlag:16 forScope:v73] & 1) != 0)
                      {
                        goto LABEL_157;
                      }

                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v100 = __CPLStoreOSLogDomain_3044();
                        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v146 = v63;
                          _os_log_impl(&dword_1DC05A000, v100, OS_LOG_TYPE_DEFAULT, "Found inactive shared library scope at opening time: %@ - automatically activating it", buf, 0xCu);
                        }
                      }

                      if (![*(*(a1 + 32) + 216) setValue:0 forFlag:16 forScope:v63 error:a2])
                      {
                        goto LABEL_196;
                      }

                      v101 = [*(*(a1 + 32) + 216) primaryScope];
                      if (!v101)
                      {
                        goto LABEL_157;
                      }

                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v102 = __CPLStoreOSLogDomain_3044();
                        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v146 = v101;
                          _os_log_impl(&dword_1DC05A000, v102, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@", buf, 0xCu);
                        }
                      }

                      v92 = [*(*(a1 + 32) + 216) resetSyncAnchorForScope:v101 error:a2];

                      goto LABEL_150;
                    }

                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v98 = __CPLStoreOSLogDomain_3044();
                      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v146 = v63;
                        _os_log_impl(&dword_1DC05A000, v98, OS_LOG_TYPE_DEFAULT, "Setting sharing scope to %@ at opening", buf, 0xCu);
                      }
                    }

                    v99 = *(a1 + 32);
                    v96 = [v63 scopeIdentifier];
                    [v99 _setSharingScopeIdentifier:v96];
                  }

                  else
                  {
                    if (v65)
                    {
                      if (_CPLSilentLogging)
                      {
                        goto LABEL_158;
                      }

                      v73 = __CPLStoreOSLogDomain_3044();
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_141:
                        *buf = 138412290;
                        v146 = v63;
                        _os_log_impl(&dword_1DC05A000, v73, OS_LOG_TYPE_DEFAULT, "Found inactive shared library scope at opening time: %@", buf, 0xCu);
                      }

LABEL_157:

                      goto LABEL_158;
                    }

                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v95 = __CPLStoreOSLogDomain_3044();
                      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v146 = v63;
                        _os_log_impl(&dword_1DC05A000, v95, OS_LOG_TYPE_ERROR, "Found an active shared library scope at opening time: %@ - this will need to be cleaned-up first", buf, 0xCu);
                      }
                    }

                    v96 = [*(a1 + 32) engineLibrary];
                    v97 = [v96 syncManager];
                    [v97 addBrokenScope:v63];
                  }
                }

                v88 = [v63 scopeType];
                if (v88 <= 8)
                {
                  if (((1 << v88) & 0xE) != 0)
                  {
                    goto LABEL_158;
                  }

                  if (((1 << v88) & 0x30) != 0)
                  {
                    if (overridesSharedLibraryFeatureFlag != 1 || (isSharedLibraryFeatureEnabled & 1) != 0)
                    {
                      goto LABEL_158;
                    }
                  }

                  else if ((1 << v88) & 0x180) != 0 && (CPLIsCollectionShareFeatureEnabled())
                  {
                    goto LABEL_158;
                  }
                }

                if (![v64 valueForFlag:4])
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v93 = __CPLStoreOSLogDomain_3044();
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v146 = v63;
                      _os_log_impl(&dword_1DC05A000, v93, OS_LOG_TYPE_ERROR, "Found broken active scope at opening time: %@ - this will need to be cleaned-up first", buf, 0xCu);
                    }
                  }

                  v73 = [*(a1 + 32) engineLibrary];
                  v94 = [v73 syncManager];
                  [v94 addBrokenScope:v63];

                  goto LABEL_157;
                }

                if ((_CPLSilentLogging & 1) == 0)
                {
                  v89 = __CPLStoreOSLogDomain_3044();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v146 = v63;
                    _os_log_impl(&dword_1DC05A000, v89, OS_LOG_TYPE_ERROR, "Found broken active scope at opening time: %@ - the scope is already known to have ben deleted. Deleting the entry immediately", buf, 0xCu);
                  }
                }

LABEL_149:
                v90 = *(*(a1 + 32) + 216);
                v91 = [v63 scopeIdentifier];
                v92 = [v90 deleteScopeWithIdentifier:v91 error:a2];

LABEL_150:
                if ((v92 & 1) == 0)
                {
                  goto LABEL_197;
                }

                goto LABEL_158;
              }

              if (_CPLSilentLogging)
              {
                goto LABEL_117;
              }

              v78 = __CPLStoreOSLogDomain_3044();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v83 = [v63 scopeIdentifier];
                v84 = [v77 currentFeatureVersion];
                *buf = 138543874;
                v146 = v83;
                v147 = 2048;
                v148 = *&v74;
                v149 = 2048;
                v150 = v84;
                _os_log_impl(&dword_1DC05A000, v78, OS_LOG_TYPE_DEFAULT, "Last supported feature version in sync for %{public}@ is %lu while server feature version was likely %lu - might have to catch up some changes though", buf, 0x20u);
              }
            }

            else
            {
              if (_CPLSilentLogging)
              {
                goto LABEL_117;
              }

              v78 = __CPLStoreOSLogDomain_3044();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v82 = [v63 scopeIdentifier];
                *buf = 138543618;
                v146 = v82;
                v147 = 2048;
                v148 = *&v74;
                _os_log_impl(&dword_1DC05A000, v78, OS_LOG_TYPE_DEFAULT, "Last supported feature version in sync for %{public}@ is %lu - will have to confirm server feature version and maybe catch up some changes though", buf, 0x16u);
              }
            }

LABEL_116:

            goto LABEL_117;
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v81 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v146 = v63;
              _os_log_impl(&dword_1DC05A000, v81, OS_LOG_TYPE_ERROR, "Found remaining deleted scope %@ that should have been removed already", buf, 0xCu);
            }
          }

          goto LABEL_149;
        }

        if (v66)
        {
          goto LABEL_119;
        }

        v67 = [v63 scopeIdentifier];
        v68 = [v120 shouldIgnoreScopeWithIdentifier:v67];

        if (!v68)
        {
          goto LABEL_119;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v69 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = [v63 scopeIdentifier];
            *buf = 138543362;
            v146 = v70;
            _os_log_impl(&dword_1DC05A000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ should be ignored by this engine - removing it", buf, 0xCu);
          }
        }

        [v64 setValue:1 forFlag:4];
        if (([*(*(a1 + 32) + 216) updateFlags:v64 forScope:v63 error:a2] & 1) == 0)
        {
          goto LABEL_197;
        }

LABEL_158:

        ++v62;
      }

      while (v125 != v62);
      v103 = [obj countByEnumeratingWithState:&v129 objects:v151 count:16];
      v125 = v103;
    }

    while (v103);
  }

  if (![*(*(a1 + 32) + 272) sizeOfResourcesToUpload] || !objc_msgSend(*(*(a1 + 32) + 208), "isEmpty"))
  {
    goto LABEL_199;
  }

  v104 = [*(*(a1 + 32) + 208) storedExtractedBatch];
  if (v104)
  {

LABEL_199:
    v4 = 1;
    goto LABEL_31;
  }

  v111 = [*(a1 + 32) platformObject];
  v112 = [v111 hasStoredChangeSessionUpdate];

  if (v112)
  {
    goto LABEL_199;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v113 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v113, OS_LOG_TYPE_ERROR, "Resources storage has orphaned resources - clearing", buf, 2u);
    }
  }

  v4 = [*(*(a1 + 32) + 272) resetWithError:a2];
LABEL_31:
  if (!CPLIsInTestReadonlyMode())
  {
    if (!v4)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v31 = [*(*(a1 + 32) + 216) primaryScope];
  if (v31)
  {
    v32 = [*(*(a1 + 32) + 216) disabledDateForScope:v31];
    if (!v32)
    {
      v35 = [MEMORY[0x1E695DF00] date];
      v36 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:31536000.0];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v37 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v37, OS_LOG_TYPE_DEFAULT, "Simulating Exit mode for Test Read-only mode", buf, 2u);
        }
      }

      if (![*(*(a1 + 32) + 216) setDisabledDate:v35 forScope:v31 error:a2])
      {

        v33 = 0;
        goto LABEL_39;
      }

      v38 = [*(*(a1 + 32) + 216) setDeleteDate:v36 forScope:v31 error:a2];

      if ((v38 & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v31 = [*(a1 + 32) platformObject];
      v33 = [v31 performPostUpgradeMigrationsWithError:a2];
LABEL_39:

      return v33;
    }
  }

  if (v4)
  {
    goto LABEL_38;
  }

  return 0;
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke_281(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [*(a1 + 32) engineLibrary];
  [v3 postNotificationName:@"CPLLibraryMustBeWipedNotificationName" object:v2];
}

- (void)_forceCloseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.close.force" description:@"force close store"];
  v6 = [CPLTransaction newTransactionWithIdentifier:@"cpl.store.barrier" description:@"barrier" keepPower:1];
  platformObject = [(CPLEngineStore *)self platformObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CPLEngineStore__forceCloseWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861ABE0;
  v11 = v6;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = v6;
  v9 = handlerCopy;
  [platformObject performBarrierTransaction:v5 withBlock:v10];
}

void __51__CPLEngineStore__forceCloseWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v4 = 0;
  [v2 closeWithError:&v4];
  v3 = v4;

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) endTransaction];
}

- (void)_performBarrierTransaction:(id)transaction withBlock:(id)block
{
  blockCopy = block;
  transactionCopy = transaction;
  v8 = [CPLTransaction newTransactionWithIdentifier:@"cpl.store.barrier" description:@"barrier" keepPower:1];
  platformObject = [(CPLEngineStore *)self platformObject];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CPLEngineStore__performBarrierTransaction_withBlock___block_invoke;
  v12[3] = &unk_1E861F5D0;
  v13 = v8;
  v14 = blockCopy;
  v12[4] = self;
  v10 = v8;
  v11 = blockCopy;
  [platformObject performBarrierTransaction:transactionCopy withBlock:v12];
}

uint64_t __55__CPLEngineStore__performBarrierTransaction_withBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _finishTransaction];
  v2 = *(a1 + 40);

  return [v2 endTransaction];
}

- (void)_performTransaction:(id)transaction withBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  blockCopy = block;
  [(CPLEngineStore *)self _setTransactionOnCurrentThread:transactionCopy];
  v30 = blockCopy;
  if ([transactionCopy canWrite] && -[CPLEngineStore state](self, "state") == 2)
  {
    sizeOfResourcesToUpload = [(CPLEngineOutgoingResources *)self->_outgoingResources sizeOfResourcesToUpload];
    sizeOfOriginalResourcesToUpload = [(CPLEngineOutgoingResources *)self->_outgoingResources sizeOfOriginalResourcesToUpload];
    countOfOriginalImages = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalImages];
    countOfOriginalVideos = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalVideos];
    v12 = 1;
    countOfOriginalOthers = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalOthers];
    v32 = countOfOriginalVideos;
    v13 = countOfOriginalImages;
    v14 = sizeOfOriginalResourcesToUpload;
    v15 = sizeOfResourcesToUpload;
    blockCopy = v30;
  }

  else
  {
    v12 = 0;
    countOfOriginalOthers = 0;
    v32 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  (*(blockCopy + 2))(blockCopy);
  if (!v12 || ([transactionCopy error], v16 = objc_claimAutoreleasedReturnValue(), v16, v16) || (v17 = -[CPLEngineOutgoingResources sizeOfResourcesToUpload](self->_outgoingResources, "sizeOfResourcesToUpload"), v18 = -[CPLEngineOutgoingResources sizeOfOriginalResourcesToUpload](self->_outgoingResources, "sizeOfOriginalResourcesToUpload"), v19 = -[CPLEngineOutgoingResources countOfOriginalImages](self->_outgoingResources, "countOfOriginalImages"), v20 = -[CPLEngineOutgoingResources countOfOriginalVideos](self->_outgoingResources, "countOfOriginalVideos"), v21 = -[CPLEngineOutgoingResources countOfOriginalOthers](self->_outgoingResources, "countOfOriginalOthers"), v17 == v15) && v18 == v14 && v19 == v13 && v20 == v32 && v21 == countOfOriginalOthers)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
    countOfOriginalOthers = v21;
    v32 = v20;
    v13 = v19;
    v14 = v18;
    v15 = v17;
  }

  error = [transactionCopy error];
  v24 = error;
  if (error)
  {
    if (![error isCPLOperationCancelledError])
    {
      if ([v24 isCPLError])
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_30;
        }

        v27 = __CPLTransactionOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          error2 = [transactionCopy error];
          *buf = 138412546;
          v34 = transactionCopy;
          v35 = 2112;
          v36 = error2;
          _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEFAULT, "! %@ failed: %@", buf, 0x16u);
        }
      }

      else
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_30;
        }

        v27 = __CPLTransactionOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          error3 = [transactionCopy error];
          *buf = 138412546;
          v34 = transactionCopy;
          v35 = 2112;
          v36 = error3;
          _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_ERROR, "! %@ failed: %@", buf, 0x16u);
        }
      }

      goto LABEL_30;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLTransactionOSLogDomain();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = transactionCopy;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEBUG, "! %@ failed: transaction was cancelled", buf, 0xCu);
      }
    }
  }

  else if (v22)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    [WeakRetained notifyAttachedObjectsSizeOfResourcesToUploadDidChangeToSize:v15 sizeOfOriginalResourcesToUpload:v14 numberOfImages:v13 numberOfVideos:v32 numberOfOtherItems:countOfOriginalOthers];
  }

LABEL_30:
  [(CPLEngineStore *)self _removeTransactionOnCurrentThread:transactionCopy];
}

- (BOOL)_handleException:(id)exception
{
  exceptionCopy = exception;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = exceptionCopy;
    name = [v5 name];
    reason = [v5 reason];
    if ([name isEqualToString:@"CPLAssertStoreException"])
    {
      if (reason)
      {
        v8 = reason;
      }

      else
      {
        v8 = @"Store exception raised";
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __35__CPLEngineStore__handleException___block_invoke;
      v18[3] = &unk_1E861A940;
      v19 = v5;
      [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:v8 completionBlock:v18];
      v9 = v19;
    }

    else if ([name isEqualToString:CPLArchiverFailureExceptionName])
    {
      userInfo = [v5 userInfo];
      v9 = [userInfo objectForKeyedSubscript:@"CPLArchiverFailureContext"];

      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Archiver exception raised - %@", v9];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __35__CPLEngineStore__handleException___block_invoke_2;
      v16[3] = &unk_1E861A940;
      v17 = v5;
      [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:v12 completionBlock:v16];
    }

    else
    {
      if (![name isEqualToString:*MEMORY[0x1E695D930]])
      {
        v10 = 0;
        goto LABEL_13;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __35__CPLEngineStore__handleException___block_invoke_3;
      v14[3] = &unk_1E861A940;
      v15 = v5;
      [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:@"Internal inconsistency" completionBlock:v14];
      v9 = v15;
    }

    v10 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (BOOL)deleteDynamicallyCreatedStorages:(id)storages error:(id *)error
{
  storagesCopy = storages;
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject deleteDynamicallyCreatedStorages:storagesCopy error:error];

  return error;
}

- (BOOL)createStoragesDynamically:(id)dynamically error:(id *)error
{
  dynamicallyCopy = dynamically;
  platformObject = [(CPLEngineStore *)self platformObject];
  LOBYTE(error) = [platformObject createStoragesDynamically:dynamicallyCopy error:error];

  return error;
}

- (void)noteInvalidRecordScopedIdentifiersInPushSession:(id)session
{
  v4 = MEMORY[0x1E695DF00];
  sessionCopy = session;
  date = [v4 date];
  lastInvalidRecordsDate = self->_lastInvalidRecordsDate;
  self->_lastInvalidRecordsDate = date;

  v8 = [sessionCopy copy];
  lastInvalidRecordScopedIdentifiers = self->_lastInvalidRecordScopedIdentifiers;
  self->_lastInvalidRecordScopedIdentifiers = v8;
}

- (void)noteOtherResetEvent:(id)event cause:(id)cause
{
  causeCopy = cause;
  eventCopy = event;
  mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
  [(CPLEngineStore *)self _storeResetEvent:eventCopy scopeIdentifier:mainScopeIdentifier date:0 cause:causeCopy];
}

- (BOOL)resetSyncAnchorWithCause:(id)cause error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![(CPLEngineStore *)self _resetSyncAnchorWithCause:causeCopy scope:*(*(&v14 + 1) + 8 * i) error:error])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)resetCompleteSyncStateIncludingIDMappingWithCause:(id)cause error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  if ([(CPLEngineStore *)self _resetGlobalStateWithError:error])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![(CPLEngineStore *)self _resetCompleteSyncStateIncludingIDMappingWithCause:causeCopy scope:*(*(&v14 + 1) + 8 * i) error:error])
          {

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = [(CPLEngineStore *)self storeUserIdentifier:0 error:error];
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  return v12;
}

- (BOOL)resetCompleteSyncStateWithCause:(id)cause error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  if (self->_isUpdatingDisabledFeatures)
  {
    v7 = 1;
    self->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate = 1;
  }

  else if ([(CPLEngineStore *)self _resetGlobalStateWithError:error])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![(CPLEngineStore *)self _resetCompleteSyncStateWithCause:causeCopy scope:*(*(&v14 + 1) + 8 * i) error:error])
          {

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = [(CPLEngineStore *)self storeUserIdentifier:0 error:error];
  }

  else
  {
LABEL_14:
    v7 = 0;
  }

  return v7;
}

- (BOOL)resetLocalSyncStateWithCause:(id)cause date:(id)date error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  dateCopy = date;
  if (self->_isUpdatingDisabledFeatures)
  {
    v10 = 1;
    self->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate = 1;
  }

  else
  {
    [(CPLEngineStore *)self isClientInSyncWithClientCache];
    if ([(CPLEngineStore *)self _resetGlobalStateWithError:error])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if (![(CPLEngineStore *)self _resetLocalSyncStateWithCause:causeCopy scope:*(*(&v17 + 1) + 8 * i) date:dateCopy error:error])
            {
              v10 = 0;
              goto LABEL_15;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v10 = 1;
LABEL_15:
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)_resetSyncAnchorWithCause:(id)cause scope:(id)scope error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = causeCopy;
      v18 = 2112;
      v19 = scopeIdentifier;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor (%@) for %@", &v16, 0x16u);
    }
  }

  mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
  v13 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v13)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"anchor" scopeIdentifier:scopeIdentifier date:0 cause:causeCopy];
  }

  v14 = [(CPLEngineScopeStorage *)self->_scopes resetSyncAnchorForScope:scopeCopy error:error];

  return v14;
}

- (BOOL)_resetCompleteSyncStateIncludingIDMappingWithCause:(id)cause scope:(id)scope error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = scopeIdentifier;
      v18 = 2112;
      v19 = causeCopy;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Resetting complete sync state for %@ (%@)", &v16, 0x16u);
    }
  }

  mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
  v13 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v13)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"hard" scopeIdentifier:scopeIdentifier date:0 cause:causeCopy];
  }

  v14 = [(CPLEngineScopeStorage *)self->_scopes resetCompleteSyncStateIncludingIDMappingForScope:scopeCopy error:error];

  return v14;
}

- (BOOL)_resetCompleteSyncStateWithCause:(id)cause scope:(id)scope error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = scopeIdentifier;
      v18 = 2112;
      v19 = causeCopy;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Resetting complete sync state for %@ (%@)", &v16, 0x16u);
    }
  }

  mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
  v13 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v13)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"hard" scopeIdentifier:scopeIdentifier date:0 cause:causeCopy];
  }

  v14 = [(CPLEngineScopeStorage *)self->_scopes resetCompleteSyncStateForScope:scopeCopy error:error];

  return v14;
}

- (BOOL)_resetLocalSyncStateWithCause:(id)cause scope:(id)scope date:(id)date error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  causeCopy = cause;
  scopeCopy = scope;
  dateCopy = date;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = scopeIdentifier;
      v21 = 2112;
      v22 = causeCopy;
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Resetting local sync state for %@ (%@)", &v19, 0x16u);
    }
  }

  mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
  v16 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v16)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"soft" scopeIdentifier:scopeIdentifier date:dateCopy cause:causeCopy];
  }

  v17 = [(CPLEngineScopeStorage *)self->_scopes resetLocalSyncStateForScope:scopeCopy error:error];

  return v17;
}

- (BOOL)_resetGlobalStateWithError:(id *)error
{
  platformObject = [(CPLEngineStore *)self platformObject];
  createNewLibraryVersion = [(CPLEngineStore *)self createNewLibraryVersion];
  v7 = [(CPLEngineStore *)self storeLibraryVersion:createNewLibraryVersion withError:error];

  if (!v7)
  {
    goto LABEL_10;
  }

  if (![platformObject storeClientIsNotInSyncWithClientCacheWithError:error])
  {
    goto LABEL_10;
  }

  createNewClientCacheIdentifier = [platformObject createNewClientCacheIdentifier];
  v9 = [platformObject storeClientCacheIdentifier:createNewClientCacheIdentifier error:error];

  if (!v9)
  {
    goto LABEL_10;
  }

  storedChangeSessionUpdate = [platformObject storedChangeSessionUpdate];
  v11 = storedChangeSessionUpdate;
  if (storedChangeSessionUpdate && ([storedChangeSessionUpdate discardFromStore:self error:error] & 1) == 0)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v12 = [platformObject storeChangeSessionUpdate:0 error:error];
  [(CPLEngineStore *)self _unschedulePendingUpdateApply];

  if (!v12 || ![(CPLEnginePushRepository *)self->_pushRepository storeExtractedBatch:0 error:error])
  {
    goto LABEL_10;
  }

  [(CPLEnginePushRepository *)self->_pushRepository setExtractionStrategy:0];
  [(CPLEngineScopeStorage *)self->_scopes storeScopeListSyncAnchor:0 error:error];
  v13 = 1;
  self->_schedulePullFromClient = 1;
  [(CPLEngineStatusCenter *)self->_statusCenter resetAllTransientStatuses];
LABEL_11:

  return v13;
}

- (id)_resetEventsJSON
{
  v20 = *MEMORY[0x1E69E9840];
  [(CPLEngineStore *)self _loadResetEvents];
  v3 = [(NSMutableArray *)self->_resetEvents count];
  if (v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_resetEvents;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 mutableCopy];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __34__CPLEngineStore__resetEventsJSON__block_invoke;
          v13[3] = &unk_1E8620420;
          v14 = v10;
          v11 = v10;
          [v9 enumerateKeysAndObjectsUsingBlock:v13];
          [v3 addObject:v11];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

void __34__CPLEngineStore__resetEventsJSON__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696AD98];
    [v5 timeIntervalSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (id)_resetEventsDescriptions
{
  v32 = *MEMORY[0x1E69E9840];
  [(CPLEngineStore *)self _loadResetEvents];
  v3 = [(NSMutableArray *)self->_resetEvents count];
  if (v3)
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
    date = [MEMORY[0x1E695DF00] date];
    lastObject = [(NSMutableArray *)self->_resetEvents lastObject];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->_resetEvents;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v25 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:@"date"];
          v10 = [v8 objectForKeyedSubscript:@"endDate"];
          if (v10)
          {
            v11 = MEMORY[0x1E696AEC0];
            v12 = [v8 objectForKeyedSubscript:@"type"];
            v13 = [v8 objectForKeyedSubscript:@"cause"];
            v14 = [CPLDateFormatter stringFromDateAgo:v9 now:date];
            v15 = [CPLDateFormatter stringFromDateAgo:v10 now:date];
            v16 = [v11 stringWithFormat:@"%@ (%@) - %@ finished %@", v12, v13, v14, v15];
            [v26 addObject:v16];
          }

          else
          {
            v17 = [v8 objectForKeyedSubscript:@"pending"];
            bOOLValue = [v17 BOOLValue];

            if (bOOLValue)
            {
              v19 = MEMORY[0x1E696AEC0];
              v12 = [v8 objectForKeyedSubscript:@"type"];
              v13 = [v8 objectForKeyedSubscript:@"cause"];
              v20 = [CPLDateFormatter stringFromDateAgo:v9 now:date];
              v14 = v20;
              if (lastObject == v8)
              {
                [v19 stringWithFormat:@"%@ (%@) - %@ ongoing", v12, v13, v20];
              }

              else
              {
                [v19 stringWithFormat:@"%@ (%@) - %@ aborted", v12, v13, v20];
              }
            }

            else
            {
              v21 = MEMORY[0x1E696AEC0];
              v12 = [v8 objectForKeyedSubscript:@"type"];
              v13 = [v8 objectForKeyedSubscript:@"cause"];
              v14 = [CPLDateFormatter stringFromDateAgo:v9 now:date];
              [v21 stringWithFormat:@"%@ (%@) - %@", v12, v13, v14];
            }
            v15 = ;
            [v26 addObject:v15];
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)hasPendingResetSync
{
  [(CPLEngineStore *)self _loadResetEvents];
  lastObject = [(NSMutableArray *)self->_resetEvents lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    v5 = [lastObject objectForKeyedSubscript:@"pending"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)noteResetSyncFinished
{
  [(CPLEngineStore *)self _loadResetEvents];
  fileStorage = [(CPLEngineResourceStorage *)self->_resourceStorage fileStorage];
  [fileStorage setTrackAllStoresAndDeletes:0];

  lastObject = [(NSMutableArray *)self->_resetEvents lastObject];
  if (lastObject)
  {
    v16 = lastObject;
    v5 = [lastObject objectForKeyedSubscript:@"pending"];
    bOOLValue = [v5 BOOLValue];

    lastObject = v16;
    if (bOOLValue)
    {
      v7 = [v16 mutableCopy];
      [v7 removeObjectForKey:@"pending"];
      date = [MEMORY[0x1E695DF00] date];
      [v7 setObject:date forKeyedSubscript:@"endDate"];

      [(NSMutableArray *)self->_resetEvents replaceObjectAtIndex:[(NSMutableArray *)self->_resetEvents count]- 1 withObject:v7];
      [(NSMutableArray *)self->_resetEvents writeToURL:self->_resetEventsURL atomically:1];
      v9 = [v16 objectForKeyedSubscript:@"uuid"];
      WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
      feedback = [WeakRetained feedback];
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = @"none";
      }

      v13 = [v16 objectForKeyedSubscript:@"cause"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = @"End of reset";
      }

      [feedback reportEndOfResetWithUUID:v12 reason:v15];

      lastObject = v16;
    }
  }
}

- (void)_storeResetEvent:(id)event scopeIdentifier:(id)identifier date:(id)date pending:(BOOL)pending cause:(id)cause
{
  pendingCopy = pending;
  v32[5] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  identifierCopy = identifier;
  dateCopy = date;
  causeCopy = cause;
  mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
  v17 = [identifierCopy isEqualToString:mainScopeIdentifier];

  if (v17)
  {
    [(CPLEngineStore *)self _loadResetEvents];
    if ([(NSMutableArray *)self->_resetEvents count]>= 5)
    {
      do
      {
        [(NSMutableArray *)self->_resetEvents removeObjectAtIndex:0];
      }

      while ([(NSMutableArray *)self->_resetEvents count]> 4);
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    if (!causeCopy)
    {
      causeCopy = @"unknown reason";
    }

    resetEvents = self->_resetEvents;
    if (pendingCopy)
    {
      v31[0] = @"type";
      v31[1] = @"cause";
      v32[0] = eventCopy;
      v32[1] = causeCopy;
      v32[2] = uUIDString;
      date = dateCopy;
      v31[2] = @"uuid";
      v31[3] = @"date";
      if (!dateCopy)
      {
        date = [MEMORY[0x1E695DF00] date];
      }

      v31[4] = @"pending";
      v32[3] = date;
      v32[4] = MEMORY[0x1E695E118];
      v22 = MEMORY[0x1E695DF20];
      v23 = v32;
      v24 = v31;
      v25 = 5;
    }

    else
    {
      v29[0] = @"type";
      v29[1] = @"cause";
      v30[0] = eventCopy;
      v30[1] = causeCopy;
      v30[2] = uUIDString;
      date = dateCopy;
      v29[2] = @"uuid";
      v29[3] = @"date";
      if (!dateCopy)
      {
        date = [MEMORY[0x1E695DF00] date];
      }

      v30[3] = date;
      v22 = MEMORY[0x1E695DF20];
      v23 = v30;
      v24 = v29;
      v25 = 4;
    }

    v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
    [(NSMutableArray *)resetEvents addObject:v26];

    if (!dateCopy)
    {
    }

    [(NSMutableArray *)self->_resetEvents writeToURL:self->_resetEventsURL atomically:1];
    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    feedback = [WeakRetained feedback];
    [feedback reportResetType:eventCopy reason:causeCopy uuid:uUIDString];
  }
}

- (void)_loadResetEvents
{
  if (!self->_resetEvents)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithContentsOfURL:self->_resetEventsURL];
    resetEvents = self->_resetEvents;
    self->_resetEvents = v3;

    if (!self->_resetEvents)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = self->_resetEvents;
      self->_resetEvents = v5;

      MEMORY[0x1EEE66BB8](v5, v6);
    }
  }
}

- (void)registerStorage:(id)storage
{
  v16 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  if ([(CPLEngineStore *)self state])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = storageCopy;
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to register %@ to %@ while the library is already open", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v10 lineNumber:368 description:{@"Trying to register %@ to %@ while the library is already open", storageCopy, self}];

    abort();
  }

  storages = self->_storages;
  if (!storages)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_storages;
    self->_storages = weakObjectsHashTable;

    storages = self->_storages;
  }

  [(NSHashTable *)storages addObject:storageCopy];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [objc_opt_class() stateDescriptionForState:self->_state];
        *buf = 138412546;
        selfCopy = self;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "at dealloc time, %@ should not be in state %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v8 = [objc_opt_class() stateDescriptionForState:self->_state];
    [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:360 description:{@"at dealloc time, %@ should not be in state %@", self, v8}];

    abort();
  }

  v9.receiver = self;
  v9.super_class = CPLEngineStore;
  [(CPLEngineStore *)&v9 dealloc];
}

- (CPLEngineStore)initWithEngineLibrary:(id)library
{
  v78 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v73.receiver = self;
  v73.super_class = CPLEngineStore;
  v6 = [(CPLEngineStore *)&v73 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engineLibrary, libraryCopy);
    v8 = [[CPLEngineScopeStorage alloc] initWithEngineStore:v7 name:@"scopes"];
    scopes = v7->_scopes;
    v7->_scopes = v8;

    v10 = [(CPLEngineStorage *)[CPLEngineScopeCleanupTasks alloc] initWithEngineStore:v7 name:@"cleanupTasks"];
    cleanupTasks = v7->_cleanupTasks;
    v7->_cleanupTasks = v10;

    v12 = [[CPLEnginePushRepository alloc] initWithEngineStore:v7 name:@"pushRepository"];
    pushRepository = v7->_pushRepository;
    v7->_pushRepository = v12;

    v14 = [(CPLEngineStorage *)[CPLEngineChangePipe alloc] initWithEngineStore:v7 name:@"pullQueue"];
    pullQueue = v7->_pullQueue;
    v7->_pullQueue = v14;

    v16 = [(CPLEngineStorage *)[CPLEngineRevertRecords alloc] initWithEngineStore:v7 name:@"revertRecords"];
    revertRecords = v7->_revertRecords;
    v7->_revertRecords = v16;

    v18 = [(CPLEngineStorage *)[CPLEngineIDMapping alloc] initWithEngineStore:v7 name:@"idMapping"];
    idMapping = v7->_idMapping;
    v7->_idMapping = v18;

    v20 = [(CPLEngineStorage *)[CPLEngineCloudCache alloc] initWithEngineStore:v7 name:@"cloudCache"];
    cloudCache = v7->_cloudCache;
    v7->_cloudCache = v20;

    v22 = [[CPLEngineTransientRepository alloc] initWithEngineStore:v7 name:@"transientPullRepository"];
    transientPullRepository = v7->_transientPullRepository;
    v7->_transientPullRepository = v22;

    v24 = [[CPLEngineResourceStorage alloc] initWithEngineStore:v7 name:@"resources"];
    resourceStorage = v7->_resourceStorage;
    v7->_resourceStorage = v24;

    v26 = [[CPLEngineResourceDownloadQueue alloc] initWithEngineStore:v7 name:@"downloadQueue"];
    downloadQueue = v7->_downloadQueue;
    v7->_downloadQueue = v26;

    v28 = [(CPLEngineStorage *)[CPLEngineOutgoingResources alloc] initWithEngineStore:v7 name:@"outgoingResources"];
    outgoingResources = v7->_outgoingResources;
    v7->_outgoingResources = v28;

    v30 = [(CPLEngineStorage *)[CPLEngineRemappedRecords alloc] initWithEngineStore:v7 name:@"remappedDeletes"];
    remappedRecords = v7->_remappedRecords;
    v7->_remappedRecords = v30;

    v32 = [(CPLEngineStorage *)[CPLEngineQuarantinedRecords alloc] initWithEngineStore:v7 name:@"quarantinedRecords"];
    quarantinedRecords = v7->_quarantinedRecords;
    v7->_quarantinedRecords = v32;

    v34 = [[CPLEngineStatusCenter alloc] initWithEngineStore:v7 name:@"statusCenter"];
    statusCenter = v7->_statusCenter;
    v7->_statusCenter = v34;

    v36 = [(CPLEngineStorage *)[CPLEnginePendingRecordChecks alloc] initWithEngineStore:v7 name:@"pendingRecordChecks"];
    pendingRecordChecks = v7->_pendingRecordChecks;
    v7->_pendingRecordChecks = v36;

    v38 = [(CPLEngineStorage *)[CPLEngineIgnoredRecords alloc] initWithEngineStore:v7 name:@"ignoredRecords"];
    ignoredRecords = v7->_ignoredRecords;
    v7->_ignoredRecords = v38;

    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    batchedTransactions = v7->_batchedTransactions;
    v7->_batchedTransactions = v40;

    v42 = CPLCopyDefaultSerialQueueAttributes();
    v43 = dispatch_queue_create("com.apple.cpl.store.batchedtransactions", v42);
    batchedTransactionsQueue = v7->_batchedTransactionsQueue;
    v7->_batchedTransactionsQueue = v43;

    WeakRetained = objc_loadWeakRetained(&v7->_engineLibrary);
    clientLibraryBaseURL = [WeakRetained clientLibraryBaseURL];
    v47 = [clientLibraryBaseURL URLByAppendingPathComponent:@"resetevents.plist" isDirectory:0];
    resetEventsURL = v7->_resetEventsURL;
    v7->_resetEventsURL = v47;

    v49 = CPLCopyDefaultSerialQueueAttributes();
    v50 = dispatch_queue_create("com.apple.cpl.pendingupdate", v49);
    pendingUpdateQueue = v7->_pendingUpdateQueue;
    v7->_pendingUpdateQueue = v50;

    v52 = objc_loadWeakRetained(&v7->_engineLibrary);
    clientLibraryBaseURL2 = [v52 clientLibraryBaseURL];
    v54 = [clientLibraryBaseURL2 URLByAppendingPathComponent:@"derivatives" isDirectory:1];

    v55 = [[CPLEngineDerivativesCache alloc] initWithCacheURL:v54];
    derivativesCache = v7->_derivativesCache;
    v7->_derivativesCache = v55;

    v57 = CPLCopyDefaultSerialQueueAttributes();
    v58 = dispatch_queue_create("com.apple.cpl.shouldsyncscopelist", v57);
    shouldSyncScopeListQueue = v7->_shouldSyncScopeListQueue;
    v7->_shouldSyncScopeListQueue = v58;

    v60 = [[CPLEngineRecordComputeStatePushQueue alloc] initWithEngineStore:v7 name:@"recordComputeStatePushQueue"];
    recordComputeStatePushQueue = v7->_recordComputeStatePushQueue;
    v7->_recordComputeStatePushQueue = v60;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v62 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        allObjects = [(NSHashTable *)v7->_storages allObjects];
        *buf = 138412546;
        v75 = v7;
        v76 = 2112;
        v77 = allObjects;
        _os_log_impl(&dword_1DC05A000, v62, OS_LOG_TYPE_DEBUG, "Initing store %@ - storages: %@", buf, 0x16u);
      }
    }

    v64 = +[CPLPlatform currentPlatform];
    v65 = [v64 newPlatformImplementationForObject:v7];
    platformObject = v7->_platformObject;
    v7->_platformObject = v65;

    if (!v7->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v68 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = objc_opt_class();
          *buf = 138412290;
          v75 = v69;
          v70 = v69;
          _os_log_impl(&dword_1DC05A000, v68, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
      [currentHandler handleFailureInMethod:a2 object:v7 file:v72 lineNumber:354 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  return v7;
}

- (BOOL)mainScopeSupportsSharingScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mainScopeIdentifier = [(CPLEngineStore *)self mainScopeIdentifier];
  LOBYTE(self) = [(CPLEngineStore *)self supportsSharingScopeWithIdentifier:identifierCopy forScopeWithIdentifier:mainScopeIdentifier];

  return self;
}

- (BOOL)supportsSharingScopeWithIdentifier:(id)identifier forScopeWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  v6 = CPLSharingScopePrefixForScopeWithIdentifier(withIdentifier);
  v7 = [identifierCopy hasPrefix:v6];

  return v7;
}

- (NSString)mainScopeIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
  mainScopeIdentifier = [WeakRetained mainScopeIdentifier];

  return mainScopeIdentifier;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (id)stateDescriptionForState:(unint64_t)state
{
  if (state > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E861BA08[state];
  }
}

+ (NSArray)storageNames
{
  if (storageNames_onceToken != -1)
  {
    dispatch_once(&storageNames_onceToken, &__block_literal_global_749);
  }

  v3 = storageNames_storageNames;

  return v3;
}

void __30__CPLEngineStore_storageNames__block_invoke()
{
  v0 = storageNames_storageNames;
  storageNames_storageNames = &unk_1F57EF860;
}

- (id)newClientCacheViewUsesPushRepository:(BOOL *)repository
{
  v5 = [[CPLClientCacheBaseView alloc] initWithStore:self];
  pushRepository = [(CPLEngineStore *)self pushRepository];
  storedExtractedBatch = [pushRepository storedExtractedBatch];
  if (storedExtractedBatch)
  {
    v8 = [CPLChangeBatchChangeStorage alloc];
    batch = [storedExtractedBatch batch];
    v10 = [(CPLChangeBatchChangeStorage *)v8 initWithBatch:batch name:@"extractedBatch"];

    v11 = [[CPLChangedRecordStorageView alloc] initWithChangeStorage:v10 overStorageView:v5];
    v5 = v11;
  }

  if ([pushRepository isEmpty])
  {
    if (repository)
    {
      *repository = 0;
    }
  }

  else
  {
    v12 = [[CPLPushRepositoryStorage alloc] initWithPushRepository:pushRepository];
    v13 = [[CPLChangedRecordStorageView alloc] initWithChangeStorage:v12 overStorageView:v5];

    if (repository)
    {
      *repository = 1;
    }

    v5 = v13;
  }

  if ([(CPLEngineStore *)self hasUnacknowledgedChanges])
  {
    v14 = [[CPLUnacknowledgedChangeStorage alloc] initWithStore:self];
    v15 = [[CPLChangedRecordStorageView alloc] initWithChangeStorage:v14 overStorageView:v5];

    v5 = v15;
  }

  return v5;
}

@end