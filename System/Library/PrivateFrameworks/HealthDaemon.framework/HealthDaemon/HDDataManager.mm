@interface HDDataManager
- (BOOL)_synchronousObserverLock_hasSynchronousObserverForSampleType:(uint64_t)type;
- (BOOL)containsDataObject:(id)object;
- (BOOL)deleteDataObjects:(id)objects restrictedSourceEntities:(id)entities failIfNotFound:(BOOL)found recursiveDeleteAuthorizationBlock:(id)block error:(id *)error;
- (BOOL)deleteDataObjectsOfClass:(Class)class predicate:(id)predicate limit:(unint64_t)limit deletedSampleCount:(unint64_t *)count notifyObservers:(BOOL)observers generateDeletedObjects:(BOOL)objects userRequested:(BOOL)requested recursiveDeleteAuthorizationBlock:(id)self0 error:(id *)self1;
- (BOOL)deleteObjectsWithUUIDCollection:(id)collection configuration:(id)configuration error:(id *)error;
- (BOOL)deleteSamplesWithSourceEntities:(id)entities error:(id *)error;
- (BOOL)deleteSamplesWithTypes:(id)types sourceBundleIdentifier:(id)identifier userRequested:(BOOL)requested recursiveDeleteAuthorizationBlock:(id)block error:(id *)error;
- (BOOL)deleteSamplesWithUUIDs:(id)ds generateDeletedObjects:(BOOL)objects transaction:(id)transaction error:(id *)error;
- (BOOL)deleteSamplesWithUUIDs:(id)ds userRequested:(BOOL)requested recursiveDeleteAuthorizationBlock:(id)block error:(id *)error;
- (BOOL)insertDataObjects:(id)objects error:(id *)error;
- (BOOL)insertDataObjects:(id)objects sourceEntity:(id)entity deviceEntity:(id)deviceEntity sourceVersion:(id)version creationDate:(double)date error:(id *)error;
- (BOOL)insertDataObjects:(id)objects sourceEntity:(id)entity deviceEntity:(id)deviceEntity sourceVersion:(id)version creationDate:(double)date timeZone:(id)zone OSVersion:(id *)sVersion error:(id *)self0;
- (BOOL)insertDataObjects:(id)objects withProvenance:(id)provenance creationDate:(double)date skipInsertionFilter:(BOOL)filter updateSourceOrder:(BOOL)order resolveAssociations:(BOOL)associations transactionContext:(id)context error:(id *)self0;
- (HDDataManager)initWithProfile:(id)profile;
- (id)_observersForAllTypes;
- (id)_queue_observersAllTypesCreateIfNil:(uint64_t)nil;
- (id)_queue_observersForDataType:(uint64_t)type createIfNil:;
- (id)_queue_observersForKey:(int)key createIfNil:;
- (id)_synchronousObserverLock_synchronousObserverSetForSampleType:(uint64_t)type;
- (id)diagnosticDescription;
- (int64_t)hasSampleWithBundleIdentifier:(id)identifier error:(id *)error;
- (uint64_t)_deleteObjectsWithTypes:(void *)types sourceEntities:(void *)entities recursiveDeleteAuthorizationBlock:(char)block userRequested:(void *)requested error:;
- (uint64_t)_insertDataObjects:(void *)objects insertionContext:(void *)context lastInsertedIDOut:(void *)out error:;
- (uint64_t)_updateSourceAndLastAnchorForObjects:(void *)objects insertionContext:(void *)context lastInsertedID:(char)d isDatabaseAccessible:(int)accessible shouldUpdateSourceOrder:(void *)order error:;
- (void)_callObserversIfPossible;
- (void)_notifySynchronousObserversIfPossibleInTransaction:(uint64_t)transaction;
- (void)_observersForDataType:(void *)type;
- (void)_shouldNotifyForDeletedSamplesOfTypes:(void *)types intervals:(char)intervals userRequested:(void *)requested anchor:;
- (void)addObserver:(id)observer forDataType:(id)type;
- (void)addObserverForAllTypes:(id)types;
- (void)addSynchronousObserver:(id)observer forSampleType:(id)type;
- (void)closeObserverTransaction;
- (void)openObserverTransaction;
- (void)removeObserver:(id)observer forDataType:(id)type;
- (void)removeObserverForAllTypes:(id)types;
- (void)removeSynchronousObserver:(id)observer forSampleType:(id)type;
- (void)setBackgroundObserverFrequency:(id)frequency forDataType:(id)type frequency:(int64_t)a5 appSDKVersionToken:(unint64_t)token completion:(id)completion;
- (void)shouldNotifyForDataObjects:(id)objects provenance:(id)provenance database:(id)database anchor:(id)anchor;
- (void)shouldNotifyForDeletedSamplesOfTypes:(id)types intervals:(id)intervals userRequested:(BOOL)requested transaction:(id)transaction anchor:(id)anchor;
- (void)synchronouslyCloseObserverTransactionAndNotify;
@end

@implementation HDDataManager

- (void)_callObserversIfPossible
{
  if (self)
  {
    dispatch_assert_queue_not_V2(*(self + 8));
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__129;
    v24 = __Block_byref_object_dispose__129;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__129;
    v18 = __Block_byref_object_dispose__129;
    v19 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v2 = *(self + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__HDDataManager__callObserversIfPossible__block_invoke;
    block[3] = &unk_2786255D0;
    block[4] = self;
    block[5] = &v10;
    block[6] = &v14;
    block[7] = &v20;
    dispatch_sync(v2, block);
    if (*(v11 + 24) == 1)
    {
      v3 = v21[5];
      v4 = v15[5];
      v5 = v3;
      v6 = *(self + 16);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __73__HDDataManager__notifyObserversWithAddedObjectsBySampleType_lastAnchor___block_invoke;
      v26[3] = &unk_278613830;
      v7 = v4;
      v27 = v7;
      selfCopy = self;
      v8 = v5;
      v29 = v8;
      dispatch_async(v6, v26);
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }
}

void __41__HDDataManager__callObserversIfPossible__block_invoke(void *a1)
{
  if (!*(a1[4] + 56))
  {
    *(*(a1[5] + 8) + 24) = 1;
    v3 = objc_msgSend_copy(*(a1[4] + 64));
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1[4] + 64) removeAllObjects];
    objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 72));
    v6 = a1[4];
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;
  }
}

- (id)_observersForAllTypes
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__129;
    v9 = __Block_byref_object_dispose__129;
    v10 = 0;
    v1 = *(self + 8);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38__HDDataManager__observersForAllTypes__block_invoke;
    v4[3] = &unk_278613990;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __38__HDDataManager__observersForAllTypes__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v3 = [(HDDataManager *)v2 _queue_observersForKey:v7 createIfNil:0];
  v4 = objc_msgSend_copy(v3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)openObserverTransaction
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDDataManager_openObserverTransaction__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)closeObserverTransaction
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__HDDataManager_closeObserverTransaction__block_invoke;
  v4[3] = &unk_2786138F8;
  v4[4] = self;
  v4[5] = a2;
  dispatch_sync(queue, v4);
  [(HDDataManager *)self _callObserversIfPossible];
}

void __41__HDDataManager_closeObserverTransaction__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (!v2)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HDDataManager.m" lineNumber:1307 description:@"No open transactions"];

    v1 = *(a1 + 32);
    v2 = *(v1 + 56);
  }

  *(v1 + 56) = v2 - 1;
}

- (HDDataManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = HDDataManager;
  v5 = [(HDDataManager *)&v18 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = HKCreateSerialDispatchQueue();
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v8;

    objc_storeWeak(&v5->_profile, profileCopy);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersByDataType = v5->_observersByDataType;
    v5->_observersByDataType = v10;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingObjectsBySampleType = v5->_pendingObjectsBySampleType;
    v5->_pendingObjectsBySampleType = dictionary;

    v5->_synchronousObserverLock._os_unfair_lock_opaque = 0;
    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v5];

    v15 = [[HDQuantitySeriesManager alloc] initWithProfile:profileCopy];
    quantitySeriesManager = v5->_quantitySeriesManager;
    v5->_quantitySeriesManager = v15;

    v5->_notifyCount = -1;
    v5->_lastNotifyLogTime = CFAbsoluteTimeGetCurrent();
  }

  return v5;
}

- (BOOL)insertDataObjects:(id)objects sourceEntity:(id)entity deviceEntity:(id)deviceEntity sourceVersion:(id)version creationDate:(double)date error:(id *)error
{
  objectsCopy = objects;
  entityCopy = entity;
  deviceEntityCopy = deviceEntity;
  versionCopy = version;
  if (!entityCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataProvenanceManager = [WeakRetained dataProvenanceManager];
  v21 = [dataProvenanceManager localDataProvenanceForSourceEntity:entityCopy version:versionCopy deviceEntity:deviceEntityCopy];

  if (!v21)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"provenance != nil"}];
  }

  v22 = [(HDDataManager *)self insertDataObjects:objectsCopy withProvenance:v21 creationDate:error error:date];

  return v22;
}

- (BOOL)insertDataObjects:(id)objects sourceEntity:(id)entity deviceEntity:(id)deviceEntity sourceVersion:(id)version creationDate:(double)date timeZone:(id)zone OSVersion:(id *)sVersion error:(id *)self0
{
  objectsCopy = objects;
  entityCopy = entity;
  deviceEntityCopy = deviceEntity;
  versionCopy = version;
  zoneCopy = zone;
  if (!entityCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];
  }

  v30 = a2;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataProvenanceManager = [WeakRetained dataProvenanceManager];
  v31 = *&sVersion->var0;
  var2 = sVersion->var2;
  v25 = [dataProvenanceManager localDataProvenanceForSourceEntity:entityCopy version:versionCopy deviceEntity:deviceEntityCopy timezone:zoneCopy OSVersion:&v31];

  if (!v25)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:v30 object:self file:@"HDDataManager.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"provenance != nil"}];
  }

  v26 = [(HDDataManager *)self insertDataObjects:objectsCopy withProvenance:v25 creationDate:error error:date];

  return v26;
}

- (BOOL)insertDataObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataProvenanceManager = [WeakRetained dataProvenanceManager];
  defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];
  LOBYTE(error) = [(HDDataManager *)self insertDataObjects:objectsCopy withProvenance:defaultLocalDataProvenance creationDate:0 skipInsertionFilter:1 updateSourceOrder:0 resolveAssociations:error error:CFAbsoluteTimeGetCurrent()];

  return error;
}

- (BOOL)insertDataObjects:(id)objects withProvenance:(id)provenance creationDate:(double)date skipInsertionFilter:(BOOL)filter updateSourceOrder:(BOOL)order resolveAssociations:(BOOL)associations transactionContext:(id)context error:(id *)self0
{
  associationsCopy = associations;
  filterCopy = filter;
  objectsCopy = objects;
  contextCopy = context;
  provenanceCopy = provenance;
  v20 = [HDDataEntityInsertionContext alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = [(HDDataEntityInsertionContext *)v20 initWithProvenance:provenanceCopy creationDate:filterCopy skipInsertionFilter:associationsCopy resolveAssociations:WeakRetained profile:date];

  v23 = objc_loadWeakRetained(&self->_profile);
  database = [v23 database];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __146__HDDataManager_insertDataObjects_withProvenance_creationDate_skipInsertionFilter_updateSourceOrder_resolveAssociations_transactionContext_error___block_invoke;
  v33[3] = &unk_278625380;
  v33[4] = self;
  v34 = objectsCopy;
  v35 = v22;
  orderCopy = order;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __146__HDDataManager_insertDataObjects_withProvenance_creationDate_skipInsertionFilter_updateSourceOrder_resolveAssociations_transactionContext_error___block_invoke_2;
  v29[3] = &unk_2786253A8;
  v29[4] = self;
  v30 = v34;
  v31 = v35;
  orderCopy2 = order;
  v25 = v35;
  v26 = v34;
  v27 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:database context:contextCopy error:error block:v33 inaccessibilityHandler:v29];

  return v27;
}

uint64_t __146__HDDataManager_insertDataObjects_withProvenance_creationDate_skipInsertionFilter_updateSourceOrder_resolveAssociations_transactionContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = v6;
  if (v5)
  {
    v19 = 0;
    v11 = [(HDDataManager *)v5 _insertDataObjects:v8 insertionContext:v10 lastInsertedIDOut:&v19 error:a3];
    v12 = v19;
    if (v11)
    {
      v13 = v9;
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x3032000000;
      v27[3] = __Block_byref_object_copy__129;
      v27[4] = __Block_byref_object_dispose__129;
      v28 = 0;
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3032000000;
      v25[3] = __Block_byref_object_copy__129;
      v25[4] = __Block_byref_object_dispose__129;
      v26 = 0;
      v14 = *(v5 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke;
      block[3] = &unk_278621FD8;
      block[4] = v5;
      block[5] = v27;
      block[6] = v25;
      dispatch_sync(v14, block);
      v15 = [v13 protectedDatabase];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke_2;
      v22[3] = &unk_278620C68;
      v22[4] = v5;
      v16 = v13;
      v23 = v16;
      [v15 beforeCommit:v22];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke_3;
      v21[3] = &unk_278613968;
      v21[4] = v5;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke_4;
      v20[3] = &unk_278625420;
      v20[4] = v5;
      v20[5] = v27;
      v20[6] = v25;
      [v16 onCommit:v21 orRollback:v20];

      _Block_object_dispose(v25, 8);
      _Block_object_dispose(v27, 8);

      v17 = [(HDDataManager *)v5 _updateSourceAndLastAnchorForObjects:v8 insertionContext:v10 lastInsertedID:v12 isDatabaseAccessible:1 shouldUpdateSourceOrder:v7 error:a3];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __146__HDDataManager_insertDataObjects_withProvenance_creationDate_skipInsertionFilter_updateSourceOrder_resolveAssociations_transactionContext_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v5;
  if (v4)
  {
    v15 = 0;
    v9 = [(HDDataManager *)v4 _insertDataObjects:v7 insertionContext:v8 lastInsertedIDOut:&v15 error:a3];
    v10 = v15;
    if (v9)
    {
      v11 = *(v4 + 8);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __78__HDDataManager__journalDataObjects_insertionContext_updateSourceOrder_error___block_invoke;
      v14[3] = &unk_278613968;
      v14[4] = v4;
      dispatch_sync(v11, v14);
      v12 = [(HDDataManager *)v4 _updateSourceAndLastAnchorForObjects:v7 insertionContext:v8 lastInsertedID:v10 isDatabaseAccessible:0 shouldUpdateSourceOrder:v6 error:a3];
      if (v12)
      {
        [(HDDataManager *)v4 _notifySynchronousObserversIfPossibleInTransaction:?];
        [(HDDataManager *)v4 _callObserversIfPossible];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)_insertDataObjects:(void *)objects insertionContext:(void *)context lastInsertedIDOut:(void *)out error:
{
  v9 = a2;
  objectsCopy = objects;
  dispatch_assert_queue_not_V2(*(self + 8));
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__129;
  v28 = __Block_byref_object_dispose__129;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__129;
  v22 = __Block_byref_object_dispose__129;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained((self + 120));
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__HDDataManager__insertDataObjects_insertionContext_lastInsertedIDOut_error___block_invoke;
  v17[3] = &unk_2786253D0;
  v17[4] = &v24;
  v17[5] = &v30;
  v17[6] = &v18;
  [HDDataEntity insertDataObjects:v9 insertionContext:objectsCopy profile:WeakRetained completionHandler:v17];

  v12 = *(v31 + 24);
  if (v12)
  {
    *context = v25[5];
  }

  else
  {
    v13 = v19[5];
    v14 = v13;
    if (v13)
    {
      if (out)
      {
        v15 = v13;
        *out = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v12;
}

- (uint64_t)_updateSourceAndLastAnchorForObjects:(void *)objects insertionContext:(void *)context lastInsertedID:(char)d isDatabaseAccessible:(int)accessible shouldUpdateSourceOrder:(void *)order error:
{
  v65 = *MEMORY[0x277D85DE8];
  v44 = a2;
  objectsCopy = objects;
  contextCopy = context;
  v41 = objectsCopy;
  provenance = [objectsCopy provenance];
  WeakRetained = objc_loadWeakRetained((self + 120));
  sourceManager = [WeakRetained sourceManager];
  sourceID = [provenance sourceID];
  v16 = [sourceManager clientSourceForPersistentID:sourceID error:order];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CCDA18]);
    sourceVersion = [provenance sourceVersion];
    productType = [provenance productType];
    if (provenance)
    {
      objc_msgSend_operatingSystemVersion(provenance);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v43 = [v17 initWithSource:v16 version:sourceVersion productType:productType operatingSystemVersion:buf];
  }

  else
  {
    v43 = 0;
  }

  deviceID = [provenance deviceID];
  if (deviceID)
  {
    v21 = objc_loadWeakRetained((self + 120));
    deviceManager = [v21 deviceManager];
    v58 = 0;
    v46 = [deviceManager deviceForPersistentID:deviceID error:&v58];
    v23 = v58;

    if (!v46)
    {
      if (v23)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = deviceID;
          *&buf[12] = 2114;
          *&buf[14] = v23;
          _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Failed to look up device %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v46 = 0;
  }

  contributorReference = [provenance contributorReference];
  v26 = objc_loadWeakRetained((self + 120));
  contributorManager = [v26 contributorManager];
  v57 = 0;
  v28 = [contributorManager contributorForReference:contributorReference error:&v57];
  v29 = v57;

  if (v28 || (d & 1) != 0 || !v29 || ([v29 hk_isDatabaseAccessibilityError] & 1) != 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = __Block_byref_object_copy__129;
    v63 = __Block_byref_object_dispose__129;
    v64 = 0;
    v30 = *(self + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __137__HDDataManager__updateSourceAndLastAnchorForObjects_insertionContext_lastInsertedID_isDatabaseAccessible_shouldUpdateSourceOrder_error___block_invoke;
    block[3] = &unk_2786253F8;
    v49 = v44;
    v50 = v43;
    v51 = v46;
    v52 = v28;
    selfCopy = self;
    v54 = provenance;
    v56 = buf;
    v55 = contextCopy;
    dispatch_sync(v30, block);
    if (v16 && accessible)
    {
      v31 = objc_loadWeakRetained((self + 120));
      sourceOrderManager = [v31 sourceOrderManager];
      v33 = *(*&buf[8] + 40);
      v47 = 0;
      v34 = [sourceOrderManager addOrderedSource:v16 objectTypes:v33 error:&v47];
      v35 = v47;

      if ((v34 & 1) == 0)
      {
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *v59 = 138543362;
          v60 = v35;
          _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "Failed to update source order during insert: %{public}@", v59, 0xCu);
        }
      }
    }

    _Block_object_dispose(buf, 8);
    v37 = 1;
  }

  else if (order)
  {
    v39 = v29;
    v37 = 0;
    *order = v29;
  }

  else
  {
    _HKLogDroppedError();
    v37 = 0;
  }

  return v37;
}

- (void)_notifySynchronousObserversIfPossibleInTransaction:(uint64_t)transaction
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if (transaction)
  {
    dispatch_assert_queue_not_V2(*(transaction + 8));
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__129;
    v33 = __Block_byref_object_dispose__129;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__129;
    v27 = __Block_byref_object_dispose__129;
    v28 = 0;
    v3 = *(transaction + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HDDataManager__notifySynchronousObserversIfPossibleInTransaction___block_invoke;
    block[3] = &unk_2786255D0;
    block[4] = transaction;
    block[5] = &v35;
    block[6] = &v29;
    block[7] = &v23;
    dispatch_sync(v3, block);
    if (*(v36 + 24) == 1)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = v30[5];
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v39 count:16];
      if (v5)
      {
        v6 = *v19;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v19 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v18 + 1) + 8 * i);
            v9 = [v30[5] objectForKeyedSubscript:{v8, v13}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = v24[5];
              v11 = *(transaction + 112);
              if (v10)
              {
                [v11 samplesAdded:v9 type:v8 anchor:v10 transaction:v13];
              }

              else
              {
                [v11 samplesJournaled:v9 type:v8];
              }
            }

            os_unfair_lock_lock((transaction + 32));
            if ([(HDDataManager *)transaction _synchronousObserverLock_hasSynchronousObserverForSampleType:v8])
            {
              v12 = [(HDDataManager *)transaction _synchronousObserverLock_synchronousObserverSetForSampleType:v8];
              os_unfair_lock_unlock((transaction + 32));
              if (v12)
              {
                v14[0] = MEMORY[0x277D85DD0];
                v14[1] = 3221225472;
                v14[2] = __68__HDDataManager__notifySynchronousObserversIfPossibleInTransaction___block_invoke_2;
                v14[3] = &unk_2786255F8;
                v17 = &v23;
                v15 = v9;
                v16 = v8;
                [v12 notifyObservers:v14];
              }
            }

            else
            {
              os_unfair_lock_unlock((transaction + 32));
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v18 objects:v39 count:16];
        }

        while (v5);
      }
    }

    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }
}

void __77__HDDataManager__insertDataObjects_insertionContext_lastInsertedIDOut_error___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a2)
  {
    v12 = 32;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    if (!v10)
    {
      v11 = [MEMORY[0x277CCA9B8] hk_error:124 description:@"Failed to insert objects."];
    }

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "Failed to insert data objects: %{public}@", &v14, 0xCu);
    }

    v12 = 48;
    v6 = v11;
  }

  objc_storeStrong((*(*(a1 + v12) + 8) + 40), v6);
}

void __137__HDDataManager__updateSourceAndLastAnchorForObjects_insertionContext_lastInsertedID_isDatabaseAccessible_shouldUpdateSourceOrder_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (*(a1 + 40))
        {
          [*(*(&v14 + 1) + 8 * v6) _setSourceRevision:v14];
        }

        if (*(a1 + 48))
        {
          v8 = [v7 device];

          if (!v8)
          {
            [v7 _setDevice:*(a1 + 48)];
          }
        }

        if (*(a1 + 56))
        {
          [v7 _setContributor:?];
        }

        if ([v7 _shouldNotifyOnInsert])
        {
          v9 = [v7 hd_sampleType];
          if (v9)
          {
            v10 = [*(*(a1 + 64) + 64) objectForKeyedSubscript:v9];
            if (!v10)
            {
              v10 = [MEMORY[0x277CBEB18] array];
              [*(*(a1 + 64) + 64) setObject:v10 forKeyedSubscript:v9];
            }

            [v7 setHealthd_use_only_dataOriginProvenance:*(a1 + 72)];
            [v10 addObject:v7];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = [*(*(a1 + 64) + 64) allKeys];
  v12 = *(*(a1 + 88) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  objc_storeStrong((*(a1 + 64) + 72), *(a1 + 80));
}

void __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) mutableCopy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(a1[4] + 48) = 1;
  v5 = *(a1[4] + 72);
  v6 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v6, v5);
}

void __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "Discarding pending samples due to transaction rollback: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 32) + 8);
  block[1] = 3221225472;
  block[2] = __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke_323;
  block[3] = &unk_27861A1D0;
  v8 = v5;
  v9 = *(a1 + 48);
  dispatch_sync(v6, block);
}

void __54__HDDataManager__addTransactionInsertionCommitBlocks___block_invoke_323(void *a1)
{
  objc_storeStrong((a1[4] + 64), *(*(a1[5] + 8) + 40));
  v2 = *(*(a1[6] + 8) + 40);
  v3 = (a1[4] + 72);

  objc_storeStrong(v3, v2);
}

- (void)shouldNotifyForDataObjects:(id)objects provenance:(id)provenance database:(id)database anchor:(id)anchor
{
  objectsCopy = objects;
  provenanceCopy = provenance;
  databaseCopy = database;
  anchorCopy = anchor;
  if (provenanceCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    sourceManager = [WeakRetained sourceManager];
    sourceID = [provenanceCopy sourceID];
    v30 = 0;
    v17 = [sourceManager clientSourceForPersistentID:sourceID error:&v30];
    v18 = v30;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__HDDataManager_shouldNotifyForDataObjects_provenance_database_anchor___block_invoke;
  v24[3] = &unk_278625448;
  v24[4] = self;
  v25 = anchorCopy;
  v26 = v17;
  v27 = v18;
  v28 = provenanceCopy;
  v29 = objectsCopy;
  v19 = objectsCopy;
  v20 = provenanceCopy;
  v21 = v18;
  v22 = v17;
  v23 = anchorCopy;
  [databaseCopy onCommit:v24 orRollback:0];
}

void __71__HDDataManager_shouldNotifyForDataObjects_provenance_database_anchor___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  v7 = *(a1 + 32);
  v2 = *(v7 + 8);
  block[1] = 3221225472;
  block[2] = __71__HDDataManager_shouldNotifyForDataObjects_provenance_database_anchor___block_invoke_2;
  block[3] = &unk_278625448;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  dispatch_sync(v2, block);
  [(HDDataManager *)*(a1 + 32) _callObserversIfPossible];
}

void __71__HDDataManager_shouldNotifyForDataObjects_provenance_database_anchor___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  if (!*(a1 + 48))
  {
    if (*(a1 + 56))
    {
      _HKInitializeLogging();
      v2 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 64);
        v20 = v2;
        v21 = [v19 sourceID];
        v22 = *(a1 + 56);
        *buf = 138412546;
        *&buf[4] = v21;
        *&buf[12] = 2114;
        *&buf[14] = v22;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Failed to lookup source %@ during insert notification: %{public}@", buf, 0x16u);
      }
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v23 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 hd_sampleType];
        if (v9)
        {
          v10 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v9];
          if (!v10)
          {
            v10 = [MEMORY[0x277CBEB18] array];
            [*(*(a1 + 32) + 64) setObject:v10 forKeyedSubscript:v9];
          }

          [v10 addObject:v8];
        }

        v11 = [v8 sourceRevision];
        v12 = [v11 source];

        if (!v12)
        {
          v13 = *(a1 + 48);
          if (v13)
          {
            v12 = v13;
            v14 = objc_alloc(MEMORY[0x277CCDA18]);
            v15 = [*(a1 + 64) sourceVersion];
            v16 = [*(a1 + 64) productType];
            v17 = *(a1 + 64);
            if (v17)
            {
              objc_msgSend_operatingSystemVersion(v17);
            }

            else
            {
              memset(buf, 0, 24);
            }

            v18 = [v14 initWithSource:v12 version:v15 productType:v16 operatingSystemVersion:buf];
            [v8 _setSourceRevision:v18];

            v6 = v23;
          }

          else
          {
            v12 = 0;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }
}

- (void)shouldNotifyForDeletedSamplesOfTypes:(id)types intervals:(id)intervals userRequested:(BOOL)requested transaction:(id)transaction anchor:(id)anchor
{
  requestedCopy = requested;
  v58 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  anchorCopy = anchor;
  transactionCopy = transaction;
  intervalsCopy = intervals;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [HDCloudSyncStore samplesDeletedInProfile:WeakRetained byUser:requestedCopy intervals:intervalsCopy];

  v17 = typesCopy;
  v18 = anchorCopy;
  v40 = transactionCopy;
  if (self)
  {
    os_unfair_lock_lock(&self->_synchronousObserverLock);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v39 = v17;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v51 objects:v57 count:16];
    selfCopy = self;
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v52;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              quantitySeriesManager = self->_quantitySeriesManager;
              v56 = v26;
              v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
              [(HDQuantitySeriesManager *)quantitySeriesManager samplesOfTypesWereRemoved:v28 anchor:v18 transaction:v40];

              self = selfCopy;
            }

            if ([(HDDataManager *)self _synchronousObserverLock_hasSynchronousObserverForSampleType:v26])
            {
              if (!v22)
              {
                v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v29 = [(HDDataManager *)self _synchronousObserverLock_synchronousObserverSetForSampleType:v26];
              [v22 setObject:v29 forKeyedSubscript:v26];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    os_unfair_lock_unlock(&self->_synchronousObserverLock);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = v22;
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v48;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v47 + 1) + 8 * j);
          v36 = [v30 objectForKeyedSubscript:{v35, v39}];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __85__HDDataManager__notifySynchronousObserversForDeletedObjectTypes_anchor_transaction___block_invoke;
          v45[3] = &unk_278625620;
          v45[4] = v35;
          v46 = v18;
          [v36 notifyObservers:v45];
        }

        v32 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v32);
    }

    self = selfCopy;
    v17 = v39;
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __97__HDDataManager_shouldNotifyForDeletedSamplesOfTypes_intervals_userRequested_transaction_anchor___block_invoke;
  v42[3] = &unk_278613830;
  v42[4] = self;
  v43 = v17;
  v44 = v18;
  v37 = v18;
  v38 = v17;
  [v40 onCommit:v42 orRollback:0];
}

void __97__HDDataManager_shouldNotifyForDeletedSamplesOfTypes_intervals_userRequested_transaction_anchor___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDDataManager_shouldNotifyForDeletedSamplesOfTypes_intervals_userRequested_transaction_anchor___block_invoke_2;
  block[3] = &unk_278613830;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __97__HDDataManager_shouldNotifyForDeletedSamplesOfTypes_intervals_userRequested_transaction_anchor___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [(HDDataManager *)v1 _observersForAllTypes];
    v6 = [MEMORY[0x277CBEB58] set];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        v11 = 0;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:*(*(&v34 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v3;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(HDDataManager *)v1 _observersForDataType:?];
          v18 = [v17 allObjects];
          [v6 addObjectsFromArray:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v6;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        v23 = 0;
        do
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v26 + 1) + 8 * v23);
          if (objc_opt_respondsToSelector())
          {
            [v24 samplesOfTypesWereRemoved:v12 anchor:v4];
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v21);
    }

    v3 = v25;
  }
}

- (void)_shouldNotifyForDeletedSamplesOfTypes:(void *)types intervals:(char)intervals userRequested:(void *)requested anchor:
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a2;
  typesCopy = types;
  requestedCopy = requested;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 120));
    database = [WeakRetained database];
    v22 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__HDDataManager__shouldNotifyForDeletedSamplesOfTypes_intervals_userRequested_anchor___block_invoke;
    v17[3] = &unk_278621B40;
    v17[4] = self;
    v18 = v9;
    v19 = typesCopy;
    intervalsCopy = intervals;
    v20 = requestedCopy;
    v14 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:database error:&v22 block:v17];
    v15 = v22;

    if (!v14)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = v15;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to get write transaction for setting up sample deletion commit hook: %{public}@.", buf, 0xCu);
      }
    }
  }
}

void __73__HDDataManager__notifyObserversWithAddedObjectsBySampleType_lastAnchor___block_invoke(uint64_t a1)
{
  v112 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [*(a1 + 32) allKeys];
  v4 = [v2 initWithArray:v3];

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 120));
  v64 = [WeakRetained appSubscriptionManager];

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v4;
  v66 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v66)
  {
    v65 = *v90;
    v63 = a1;
    do
    {
      v7 = 0;
      do
      {
        if (*v90 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v89 + 1) + 8 * v7);
        v9 = *(a1 + 48);
        if (v9)
        {
          [v64 setAnchor:v9 forDataCode:objc_msgSend(*(*(&v89 + 1) + 8 * v7) type:{"code"), 0}];
        }

        v10 = [(HDDataManager *)*(a1 + 40) _observersForDataType:v8];
        if ([v10 count])
        {
          v69 = v7;
          v11 = [*(a1 + 32) objectForKeyedSubscript:v8];
          v12 = *(a1 + 48);
          v13 = [v11 count];
          v14 = 96;
          if (!v12)
          {
            v14 = 104;
          }

          *(*(a1 + 40) + v14) += v13;
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);
          v68 = v10;
          v17 = v10;
          v18 = v11;
          v19 = v8;
          v20 = v16;
          if (v15)
          {
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v21 = [v17 countByEnumeratingWithState:&v93 objects:buf count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v94;
              do
              {
                v24 = 0;
                do
                {
                  if (*v94 != v23)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v25 = *(*(&v93 + 1) + 8 * v24);
                  if (v20)
                  {
                    [*(*(&v93 + 1) + 8 * v24) samplesAdded:v18 anchor:v20];
                  }

                  else if (objc_opt_respondsToSelector())
                  {
                    [v25 samplesJournaled:v18 type:v19];
                  }

                  ++v24;
                }

                while (v22 != v24);
                v22 = [v17 countByEnumeratingWithState:&v93 objects:buf count:16];
              }

              while (v22);
            }
          }

          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v26 = v17;
          v27 = [v26 countByEnumeratingWithState:&v85 objects:v100 count:16];
          a1 = v63;
          if (v27)
          {
            v28 = v27;
            v29 = *v86;
            do
            {
              v30 = 0;
              do
              {
                if (*v86 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [v5 addObject:*(*(&v85 + 1) + 8 * v30++)];
              }

              while (v28 != v30);
              v28 = [v26 countByEnumeratingWithState:&v85 objects:v100 count:16];
            }

            while (v28);
          }

          v10 = v68;
          v7 = v69;
        }

        ++v7;
      }

      while (v7 != v66);
      v66 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v66);
  }

  if (*(a1 + 48))
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v31 = v5;
    v32 = [v31 countByEnumeratingWithState:&v81 objects:v99 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v82;
      do
      {
        v35 = 0;
        do
        {
          if (*v82 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v81 + 1) + 8 * v35);
          if (objc_opt_respondsToSelector())
          {
            [v36 didAddSamplesOfTypes:obj anchor:*(a1 + 48)];
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v81 objects:v99 count:16];
      }

      while (v33);
    }
  }

  v37 = [(HDDataManager *)*(a1 + 40) _observersForAllTypes];
  if ([v37 count])
  {
    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = *(a1 + 32);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __73__HDDataManager__notifyObserversWithAddedObjectsBySampleType_lastAnchor___block_invoke_2;
    v79[3] = &unk_278625470;
    v40 = v38;
    v80 = v40;
    [v39 enumerateKeysAndObjectsUsingBlock:v79];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v41 = v37;
    v42 = [v41 countByEnumeratingWithState:&v75 objects:v98 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v76;
      do
      {
        v45 = 0;
        do
        {
          if (*v76 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v75 + 1) + 8 * v45++) samplesAdded:v40 anchor:*(a1 + 48)];
        }

        while (v43 != v45);
        v43 = [v41 countByEnumeratingWithState:&v75 objects:v98 count:16];
      }

      while (v43);
    }

    if (*(a1 + 48))
    {
      v70 = v37;
      v46 = a1;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v47 = v41;
      v48 = [v47 countByEnumeratingWithState:&v71 objects:v97 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v72;
        do
        {
          v51 = 0;
          do
          {
            if (*v72 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v71 + 1) + 8 * v51);
            if (objc_opt_respondsToSelector())
            {
              [v52 didAddSamplesOfTypes:obj anchor:*(v46 + 48)];
            }

            ++v51;
          }

          while (v49 != v51);
          v49 = [v47 countByEnumeratingWithState:&v71 objects:v97 count:16];
        }

        while (v49);
      }

      a1 = v46;
      v37 = v70;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v54 = *(a1 + 40);
  if (Current - *(v54 + 80) > 300.0 || (v55 = *(v54 + 88), v55 == -1))
  {
    _HKInitializeLogging();
    v56 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(a1 + 40);
      v58 = v57[12];
      v59 = v57[11] & ~(v57[11] >> 63);
      v60 = v57[13];
      v61 = v56;
      v62 = HKDiagnosticStringFromDuration();
      *buf = 138544386;
      v103 = v57;
      v104 = 2048;
      v105 = v59;
      v106 = 2048;
      v107 = v58;
      v108 = 2048;
      v109 = v60;
      v110 = 2114;
      v111 = v62;
      _os_log_impl(&dword_228986000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: added samples notifications (%ld): %ld added, %ld journaled in past %{public}@", buf, 0x34u);
    }

    *(*(a1 + 40) + 80) = Current;
    *(*(a1 + 40) + 88) = 0;
    *(*(a1 + 40) + 96) = 0;
    *(*(a1 + 40) + 104) = 0;
    v54 = *(a1 + 40);
    v55 = *(v54 + 88);
  }

  *(v54 + 88) = v55 + 1;
}

- (void)_observersForDataType:(void *)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__129;
    v14 = __Block_byref_object_dispose__129;
    v15 = 0;
    v5 = type[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HDDataManager__observersForDataType___block_invoke;
    block[3] = &unk_27861F190;
    v9 = &v10;
    block[4] = type;
    v8 = v3;
    dispatch_sync(v5, block);
    type = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return type;
}

- (BOOL)deleteObjectsWithUUIDCollection:(id)collection configuration:(id)configuration error:(id *)error
{
  collectionCopy = collection;
  configurationCopy = configuration;
  entityClass = [configurationCopy entityClass];
  if (!entityClass)
  {
    entityClass = objc_opt_class();
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v13 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke;
  v22[3] = &unk_2786254C0;
  v23 = configurationCopy;
  selfCopy = self;
  v26 = entityClass;
  v25 = collectionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke_5;
  v18[3] = &unk_2786219B0;
  v19 = v23;
  v20 = v25;
  selfCopy2 = self;
  v14 = v25;
  v15 = v23;
  v16 = [database performTransactionWithContext:v13 error:error block:v22 inaccessibilityHandler:v18];

  return v16;
}

uint64_t __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = a2;
  if ([*(a1 + 32) secureDelete])
  {
    v5 = [v52 protectedDatabase];
    [v5 setCheckpointRequired:1];
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [*(a1 + 56) preferredEntityType];
  v9 = v7;
  v10 = v9;
  if (!v6)
  {

    goto LABEL_19;
  }

  v11 = objc_alloc(MEMORY[0x277CCAB68]);
  v12 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:?];
  v13 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:@"type"];
  v14 = objc_msgSend(v11, "initWithFormat:", @"((%@ = ?) AND (%@ = %ld)"), v12, v13, v8;

  v15 = objc_alloc(MEMORY[0x277CCAB68]);
  v16 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v17 = [v15 initWithFormat:@"INNER JOIN %@ USING(%@)", v16, @"data_id"];

  v18 = [v10 restrictedSourceBundleIdentifier];

  v51 = a3;
  if (v18)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 120));
    v20 = [WeakRetained sourceManager];

    v21 = [v10 restrictedSourceBundleIdentifier];
    v22 = [v20 allSourcesForBundleIdentifier:v21 error:a3];

    if (!v22)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v50 = v10;
    v23 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
    v24 = [HDDataEntity disambiguatedSQLForProperty:@"provenance"];
    v25 = *MEMORY[0x277D10A40];
    v26 = [(HDSQLiteSchemaEntity *)HDDataProvenanceEntity disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
    [v17 appendFormat:@" INNER JOIN %@ ON %@=%@", v23, v24, v26];

    if ([v22 count])
    {
      v27 = [(HDSQLiteSchemaEntity *)HDDataProvenanceEntity disambiguatedSQLForProperty:@"source_id"];
      objc_msgSend(v14, "appendFormat:", CFSTR(" AND (%@ IN ("), v27);

      [v14 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v22, &__block_literal_global_159}];
      v28 = @")");
    }

    else
    {
      v28 = @" AND (1=0)";
    }

    [v14 appendString:v28];
  }

  else
  {
    v50 = v10;
    v25 = *MEMORY[0x277D10A40];
  }

  [v14 appendString:@""]);
  v30 = MEMORY[0x277CCACA8];
  v20 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:v25];
  v31 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:@"data_type"];
  v32 = [HDDataEntity disambiguatedSQLForProperty:@"uuid"];
  v33 = [HDDataEntity disambiguatedSQLForProperty:@"provenance"];
  v34 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v29 = [v30 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ %@ WHERE %@", v20, v31, v32, v33, v34, v17, v14];

  v10 = v50;
LABEL_13:

  if (!v29)
  {
LABEL_19:
    v41 = 0;
    v45 = 0;
    goto LABEL_20;
  }

  v35 = [v52 databaseForEntityClass:*(a1 + 56)];
  v36 = [MEMORY[0x277CBEAA8] date];
  v37 = objc_alloc_init(MEMORY[0x277CCD2D8]);
  v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = -1;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke_2;
  v53[3] = &unk_278625498;
  v39 = *(a1 + 48);
  v53[4] = *(a1 + 40);
  v54 = v52;
  v55 = *(a1 + 32);
  v40 = v35;
  v56 = v40;
  v41 = v29;
  v57 = v41;
  v42 = v36;
  v58 = v42;
  v43 = v37;
  v59 = v43;
  v61 = &v62;
  v44 = v38;
  v60 = v44;
  v45 = [v39 hk_enumerateUUIDsWithError:v51 block:v53];
  if ((v45 & 1) != 0 && [*(a1 + 32) notifyObservers])
  {
    v46 = *(a1 + 40);
    v47 = [v44 allObjects];
    v48 = [MEMORY[0x277CCABB0] numberWithLongLong:v63[3]];
    [(HDDataManager *)v46 _shouldNotifyForDeletedSamplesOfTypes:v47 intervals:v43 userRequested:0 anchor:v48];
  }

  _Block_object_dispose(&v62, 8);
LABEL_20:

  return v45;
}

uint64_t __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [HDDataEntityDeletionContext alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v9 = [(HDDataEntityDeletionContext *)v7 initWithProfile:WeakRetained transaction:*(a1 + 40)];

  -[HDDataEntityDeletionContext setInsertDeletedObjects:](v9, "setInsertDeletedObjects:", [*(a1 + 48) generateDeletedObjects]);
  -[HDDataEntityDeletionContext setPreserveExactStartAndEndDates:](v9, "setPreserveExactStartAndEndDates:", [*(a1 + 48) preserveExactStartAndEndDates]);
  v10 = [*(a1 + 48) recursiveDeleteAuthorizationBlock];
  [(HDDataEntityDeletionContext *)v9 setRecursiveDeleteAuthorizationBlock:v10];

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke_3;
  v30[3] = &unk_278614860;
  v13 = v6;
  v31 = v13;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke_4;
  v26 = &unk_27861A5B8;
  v14 = v9;
  v27 = v14;
  v28 = *(a1 + 72);
  v29 = *(a1 + 80);
  LODWORD(v11) = [v11 executeSQL:v12 error:a4 bindingHandler:v30 enumerationHandler:&v23];
  [(HDDataEntityDeletionContext *)v14 finish:v23];
  if (!v11)
  {
    goto LABEL_5;
  }

  if (!-[HDDataEntityDeletionContext deletedObjectCount](v14, "deletedObjectCount") && [*(a1 + 48) failIfNotFound])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Failed to find some objects for deletion."];
LABEL_5:
    v15 = 0;
    goto LABEL_12;
  }

  if ([*(a1 + 48) notifyObservers])
  {
    v16 = *(*(*(a1 + 96) + 8) + 24);
    v17 = [(HDDataEntityDeletionContext *)v14 lastInsertedDeletedObjectPersistentID];
    v18 = [v17 longLongValue];

    if (v16 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    *(*(*(a1 + 96) + 8) + 24) = v19;
    v20 = *(a1 + 88);
    v21 = [(HDDataEntityDeletionContext *)v14 deletedObjectTypeSet];
    [v20 unionSet:v21];
  }

  v15 = 1;
LABEL_12:

  return v15;
}

uint64_t __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = 1;
  v8 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  v9 = [objc_msgSend(v8 "dataObjectClass")];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x22AAC6CA0](a2, 2);
    v12 = MEMORY[0x22AAC6C80](a2, 3);
    v7 = [*(a1 + 32) deleteObjectWithPersistentID:v6 objectUUID:v11 entityClass:v10 objectType:v8 provenanceIdentifier:v12 deletionDate:*(a1 + 40) deletedSampleIntervals:*(a1 + 48) error:a3];
  }

  return v7;
}

uint64_t __69__HDDataManager_deleteObjectsWithUUIDCollection_configuration_error___block_invoke_5(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [[_HDDataManagerDeletionJournalEntry alloc] initWithConfiguration:a1[4] objectUUIDs:a1[5]];
  WeakRetained = objc_loadWeakRetained((a1[6] + 120));
  v7 = [WeakRetained database];
  v8 = [v7 addJournalEntry:v5 error:a3];

  return v8;
}

- (BOOL)deleteDataObjects:(id)objects restrictedSourceEntities:(id)entities failIfNotFound:(BOOL)found recursiveDeleteAuthorizationBlock:(id)block error:(id *)error
{
  foundCopy = found;
  objectsCopy = objects;
  entitiesCopy = entities;
  blockCopy = block;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__129;
  v31 = __Block_byref_object_dispose__129;
  v32 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __115__HDDataManager_deleteDataObjects_restrictedSourceEntities_failIfNotFound_recursiveDeleteAuthorizationBlock_error___block_invoke;
  v22[3] = &unk_278625508;
  v25 = &v33;
  v26 = &v27;
  v16 = objectsCopy;
  v23 = v16;
  selfCopy = self;
  [HDDataEntity deleteDataObjects:v16 restrictedSourceEntities:entitiesCopy failIfNotFound:foundCopy profile:WeakRetained recursiveDeleteAuthorizationBlock:blockCopy completionHandler:v22];

  v17 = v28[5];
  v18 = v17;
  if (v17)
  {
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v20 = *(v34 + 24);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v20;
}

void __115__HDDataManager_deleteDataObjects_restrictedSourceEntities_failIfNotFound_recursiveDeleteAuthorizationBlock_error___block_invoke(void *a1, int a2, int a3, void *a4, void *a5, void *a6)
{
  v17 = a4;
  v11 = a5;
  v12 = a6;
  *(*(a1[6] + 8) + 24) = a2;
  objc_storeStrong((*(a1[7] + 8) + 40), a6);
  v13 = [MEMORY[0x277CCD8A8] hd_sampleTypesForObjects:a1[4]];
  v14 = v13;
  if (a2 && a3 && [v13 count])
  {
    v15 = a1[5];
    v16 = [v14 allObjects];
    [(HDDataManager *)v15 _shouldNotifyForDeletedSamplesOfTypes:v16 intervals:v11 userRequested:0 anchor:v17];
  }
}

- (BOOL)deleteDataObjectsOfClass:(Class)class predicate:(id)predicate limit:(unint64_t)limit deletedSampleCount:(unint64_t *)count notifyObservers:(BOOL)observers generateDeletedObjects:(BOOL)objects userRequested:(BOOL)requested recursiveDeleteAuthorizationBlock:(id)self0 error:(id *)self1
{
  predicateCopy = predicate;
  blockCopy = block;
  if (!predicateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:844 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];
  }

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__129;
  v47[4] = __Block_byref_object_dispose__129;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__129;
  v45[4] = __Block_byref_object_dispose__129;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__129;
  v43[4] = __Block_byref_object_dispose__129;
  v44 = 0;
  v17 = MEMORY[0x277D10B20];
  v18 = HDDataEntityPredicateForType([(objc_class *)class preferredEntityType]);
  v19 = [v17 compoundPredicateWithPredicate:predicateCopy otherPredicate:v18];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __170__HDDataManager_deleteDataObjectsOfClass_predicate_limit_deletedSampleCount_notifyObservers_generateDeletedObjects_userRequested_recursiveDeleteAuthorizationBlock_error___block_invoke;
  v30[3] = &unk_278625558;
  classCopy = class;
  v22 = v19;
  limitCopy = limit;
  objectsCopy = objects;
  v31 = v22;
  selfCopy = self;
  v23 = blockCopy;
  v33 = v23;
  v34 = v47;
  countCopy = count;
  v35 = v45;
  v36 = v43;
  observersCopy = observers;
  requestedCopy = requested;
  v24 = [(objc_class *)class performWriteTransactionWithHealthDatabase:database error:error block:v30];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  return v24;
}

uint64_t __170__HDDataManager_deleteDataObjectsOfClass_predicate_limit_deletedSampleCount_notifyObservers_generateDeletedObjects_userRequested_recursiveDeleteAuthorizationBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__129;
  v28 = __Block_byref_object_dispose__129;
  v29 = 0;
  v6 = [*(a1 + 80) _entityClassForDeletion];
  v7 = *(a1 + 88);
  v8 = *(a1 + 104);
  v9 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 120));
  v11 = *(a1 + 48);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __170__HDDataManager_deleteDataObjectsOfClass_predicate_limit_deletedSampleCount_notifyObservers_generateDeletedObjects_userRequested_recursiveDeleteAuthorizationBlock_error___block_invoke_2;
  v19[3] = &unk_278625530;
  v19[4] = &v30;
  v12 = *(a1 + 96);
  v22 = &v24;
  v23 = v12;
  v20 = *(a1 + 56);
  v21 = *(a1 + 72);
  [v6 deleteSamplesWithPredicate:v9 limit:v7 generateDeletedObjects:v8 transaction:v5 profile:WeakRetained recursiveDeleteAuthorizationBlock:v11 completionHandler:v19];

  if (*(v31 + 24) != 1)
  {
    v15 = v25[5];
    v14 = v15;
    if (v15)
    {
      if (a3)
      {
        v16 = v15;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_9;
  }

  if (*(a1 + 105) == 1)
  {
    v13 = *(a1 + 40);
    v14 = [*(*(*(a1 + 64) + 8) + 40) allObjects];
    [(HDDataManager *)v13 _shouldNotifyForDeletedSamplesOfTypes:v14 intervals:*(*(*(a1 + 72) + 8) + 40) userRequested:*(a1 + 106) anchor:*(*(*(a1 + 56) + 8) + 40)];
LABEL_9:

    v17 = *(v31 + 24);
    goto LABEL_10;
  }

  v17 = 1;
LABEL_10:
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v17 & 1;
}

void __170__HDDataManager_deleteDataObjectsOfClass_predicate_limit_deletedSampleCount_notifyObservers_generateDeletedObjects_userRequested_recursiveDeleteAuthorizationBlock_error___block_invoke_2(void *a1, char a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v26 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  *(*(a1[4] + 8) + 24) = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v17 = a1[9];
  if (v17)
  {
    *v17 = a4;
  }

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v14;
  v20 = v14;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v15;
  v23 = v15;

  v24 = *(a1[8] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v16;
}

- (BOOL)deleteSamplesWithTypes:(id)types sourceBundleIdentifier:(id)identifier userRequested:(BOOL)requested recursiveDeleteAuthorizationBlock:(id)block error:(id *)error
{
  typesCopy = types;
  blockCopy = block;
  identifierCopy = identifier;
  if (![typesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:900 description:{@"Invalid parameter not satisfying: %@", @"[sampleTypes count] > 0"}];
  }

  v16 = [MEMORY[0x277CBEB98] setWithArray:typesCopy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v19 = [sourceManager allSourcesForBundleIdentifier:identifierCopy error:error];

  if (v19)
  {
    v20 = [(HDDataManager *)self _deleteObjectsWithTypes:v16 sourceEntities:v19 recursiveDeleteAuthorizationBlock:blockCopy userRequested:requested error:error];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (uint64_t)_deleteObjectsWithTypes:(void *)types sourceEntities:(void *)entities recursiveDeleteAuthorizationBlock:(char)block userRequested:(void *)requested error:
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a2;
  typesCopy = types;
  entitiesCopy = entities;
  if (self)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__129;
    v33 = __Block_byref_object_dispose__129;
    v34 = 0;
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 count];
      *buf = 134218242;
      v40 = v15;
      v41 = 2112;
      v42 = typesCopy;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "Deleting %lu object types for sources: %@", buf, 0x16u);
    }

    v16 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"DeleteObjectsForSources"];
    WeakRetained = objc_loadWeakRetained((self + 120));
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __110__HDDataManager__deleteObjectsWithTypes_sourceEntities_recursiveDeleteAuthorizationBlock_userRequested_error___block_invoke;
    v24[3] = &unk_2786255A8;
    v26 = &v35;
    v27 = &v29;
    v24[4] = self;
    blockCopy = block;
    v18 = v16;
    v25 = v18;
    [HDSampleEntity deleteSamplesWithTypes:v11 sourceEntities:typesCopy profile:WeakRetained recursiveDeleteAuthorizationBlock:entitiesCopy completionHandler:v24];

    v19 = v30[5];
    v20 = v19;
    if (v19)
    {
      if (requested)
      {
        v21 = v19;
        *requested = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v22 = *(v36 + 24);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (BOOL)deleteSamplesWithSourceEntities:(id)entities error:(id *)error
{
  entitiesCopy = entities;
  if ([entitiesCopy count])
  {
    v7 = [(HDDataManager *)self _deleteObjectsWithTypes:entitiesCopy sourceEntities:0 recursiveDeleteAuthorizationBlock:0 userRequested:error error:?];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Must provide at least one source entity for deletion."];
    v7 = 0;
  }

  return v7;
}

- (BOOL)deleteSamplesWithUUIDs:(id)ds userRequested:(BOOL)requested recursiveDeleteAuthorizationBlock:(id)block error:(id *)error
{
  blockCopy = block;
  dsCopy = ds;
  if (![dsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:949 description:{@"Invalid parameter not satisfying: %@", @"[uuids count] > 0"}];
  }

  v13 = objc_opt_class();
  v14 = HDDataEntityPredicateForDataUUIDs(dsCopy);

  LOBYTE(v18) = requested;
  v15 = [(HDDataManager *)self deleteDataObjectsOfClass:v13 predicate:v14 limit:0 deletedSampleCount:0 notifyObservers:1 generateDeletedObjects:1 userRequested:v18 recursiveDeleteAuthorizationBlock:blockCopy error:error];

  return v15;
}

- (BOOL)deleteSamplesWithUUIDs:(id)ds generateDeletedObjects:(BOOL)objects transaction:(id)transaction error:(id *)error
{
  objectsCopy = objects;
  dsCopy = ds;
  transactionCopy = transaction;
  if (![dsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:967 description:{@"Invalid parameter not satisfying: %@", @"[uuids count] > 0"}];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__129;
  v26 = __Block_byref_object_dispose__129;
  v27 = 0;
  v13 = HDDataEntityPredicateForDataUUIDs(dsCopy);
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HDDataManager_deleteSamplesWithUUIDs_generateDeletedObjects_transaction_error___block_invoke;
  v21[3] = &unk_278625580;
  v21[5] = &v28;
  v21[6] = &v22;
  v21[4] = self;
  [HDSampleEntity deleteSamplesWithPredicate:v13 limit:0 generateDeletedObjects:objectsCopy transaction:transactionCopy profile:WeakRetained recursiveDeleteAuthorizationBlock:0 completionHandler:v21];

  v15 = v23[5];
  v16 = v15;
  if (v15)
  {
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = *(v29 + 24);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v18;
}

void __81__HDDataManager_deleteSamplesWithUUIDs_generateDeletedObjects_transaction_error___block_invoke(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v18 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a7);
  if (a2)
  {
    v15 = [v12 count];
    if (v18)
    {
      if (v15)
      {
        v16 = a1[4];
        v17 = [v12 allObjects];
        [(HDDataManager *)v16 _shouldNotifyForDeletedSamplesOfTypes:v17 intervals:v13 userRequested:0 anchor:v18];
      }
    }
  }
}

void __110__HDDataManager__deleteObjectsWithTypes_sourceEntities_recursiveDeleteAuthorizationBlock_userRequested_error___block_invoke(uint64_t a1, char a2, int a3, void *a4, void *a5, void *a6, void *a7)
{
  v19 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a7);
  v16 = *(*(*(a1 + 48) + 8) + 24) != 1 || a3 == 0;
  if (!v16 && [v13 count])
  {
    v17 = *(a1 + 32);
    v18 = [v13 allObjects];
    [(HDDataManager *)v17 _shouldNotifyForDeletedSamplesOfTypes:v18 intervals:v14 userRequested:*(a1 + 64) anchor:v19];
  }

  [*(a1 + 40) invalidate];
}

- (BOOL)containsDataObject:(id)object
{
  objectCopy = object;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__HDDataManager_containsDataObject___block_invoke;
  v9[3] = &unk_278614110;
  v7 = objectCopy;
  v10 = v7;
  v11 = &v12;
  [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:database error:0 block:v9];

  LOBYTE(WeakRetained) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return WeakRetained;
}

uint64_t __36__HDDataManager_containsDataObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v6 = [*(a1 + 32) UUID];
  v7 = HDDataEntityPredicateForDataUUID();
  v8 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v5 predicate:v7 error:a3];

  *(*(*(a1 + 40) + 8) + 24) = v8 != 0;
  return 1;
}

- (int64_t)hasSampleWithBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v9 = [sourceManager allSourcesForBundleIdentifier:identifierCopy error:error];

  if (v9)
  {
    v10 = [v9 hk_map:&__block_literal_global_407];
    v11 = objc_loadWeakRetained(&self->_profile);
    v12 = [HDDataProvenanceEntity sourceIDsWithProvenanceFromSourceIDs:v10 profile:v11 error:error];

    if (v12)
    {
      if ([v12 count])
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __53__HDDataManager_hasSampleWithBundleIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

- (void)addObserverForAllTypes:(id)types
{
  typesCopy = types;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HDDataManager_addObserverForAllTypes___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = typesCopy;
  v6 = typesCopy;
  dispatch_sync(queue, v7);
}

void __40__HDDataManager_addObserverForAllTypes___block_invoke(uint64_t a1)
{
  v2 = [(HDDataManager *)*(a1 + 32) _queue_observersAllTypesCreateIfNil:?];
  [v2 addObject:*(a1 + 40)];
}

- (id)_queue_observersAllTypesCreateIfNil:(uint64_t)nil
{
  if (nil)
  {
    v2 = a2;
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
    v5 = [(HDDataManager *)nil _queue_observersForKey:v4 createIfNil:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeObserverForAllTypes:(id)types
{
  typesCopy = types;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HDDataManager_removeObserverForAllTypes___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = typesCopy;
  v6 = typesCopy;
  dispatch_sync(queue, v7);
}

void __43__HDDataManager_removeObserverForAllTypes___block_invoke(uint64_t a1)
{
  v2 = [(HDDataManager *)*(a1 + 32) _queue_observersAllTypesCreateIfNil:?];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addObserver:(id)observer forDataType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HDDataManager_addObserver_forDataType___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = typeCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = typeCopy;
  dispatch_sync(queue, block);
}

void __41__HDDataManager_addObserver_forDataType___block_invoke(void *a1)
{
  v2 = [(HDDataManager *)a1[4] _queue_observersForDataType:1 createIfNil:?];
  [v2 addObject:a1[6]];
}

- (id)_queue_observersForDataType:(uint64_t)type createIfNil:
{
  if (self)
  {
    typeCopy = type;
    v5 = *(self + 8);
    v6 = a2;
    dispatch_assert_queue_V2(v5);
    v7 = MEMORY[0x277CCABB0];
    code = [v6 code];

    v9 = [v7 numberWithInteger:code];
    v10 = [(HDDataManager *)self _queue_observersForKey:v9 createIfNil:typeCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)removeObserver:(id)observer forDataType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDDataManager_removeObserver_forDataType___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = typeCopy;
  v13 = observerCopy;
  v9 = observerCopy;
  v10 = typeCopy;
  dispatch_sync(queue, block);
}

void __44__HDDataManager_removeObserver_forDataType___block_invoke(uint64_t a1)
{
  v2 = [(HDDataManager *)*(a1 + 32) _queue_observersForDataType:0 createIfNil:?];
  [v2 removeObject:*(a1 + 48)];
}

- (id)_queue_observersForKey:(int)key createIfNil:
{
  v5 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    weakObjectsHashTable = [*(self + 24) objectForKey:v5];
    if (weakObjectsHashTable)
    {
      v7 = 1;
    }

    else
    {
      v7 = key == 0;
    }

    if (!v7)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [*(self + 24) setObject:weakObjectsHashTable forKey:v5];
    }
  }

  else
  {
    weakObjectsHashTable = 0;
  }

  return weakObjectsHashTable;
}

void __39__HDDataManager__observersForDataType___block_invoke(uint64_t a1)
{
  v5 = [(HDDataManager *)*(a1 + 32) _queue_observersForDataType:0 createIfNil:?];
  v2 = objc_msgSend_copy(v5);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_synchronousObserverLock_synchronousObserverSetForSampleType:(uint64_t)type
{
  v3 = a2;
  if (type)
  {
    os_unfair_lock_assert_owner((type + 32));
    if (!v3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__synchronousObserverLock_synchronousObserverSetForSampleType_ object:type file:@"HDDataManager.m" lineNumber:1133 description:{@"Invalid parameter not satisfying: %@", @"sampleType"}];
    }

    v4 = *(type + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = *(type + 40);
      *(type + 40) = v5;

      v4 = *(type + 40);
    }

    v7 = [v4 objectForKeyedSubscript:v3];
    if (!v7)
    {
      _HKInitializeLogging();
      v8 = objc_alloc(MEMORY[0x277CCDA88]);
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"data-observers-synchronous-%@", v3];
      v7 = [v8 initWithName:v9 loggingCategory:*MEMORY[0x277CCC2A0]];

      [*(type + 40) setObject:v7 forKeyedSubscript:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_synchronousObserverLock_hasSynchronousObserverForSampleType:(uint64_t)type
{
  v3 = a2;
  os_unfair_lock_assert_owner((type + 32));
  if (!v3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__synchronousObserverLock_hasSynchronousObserverForSampleType_ object:type file:@"HDDataManager.m" lineNumber:1152 description:{@"Invalid parameter not satisfying: %@", @"sampleType"}];
  }

  v4 = [*(type + 40) objectForKeyedSubscript:v3];
  v5 = [v4 count];

  return v5 != 0;
}

- (void)addSynchronousObserver:(id)observer forSampleType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"sampleType"}];
  }

  if (!observerCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:1160 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  os_unfair_lock_lock(&self->_synchronousObserverLock);
  v8 = [(HDDataManager *)self _synchronousObserverLock_synchronousObserverSetForSampleType:typeCopy];
  [v8 registerObserver:observerCopy];
  os_unfair_lock_unlock(&self->_synchronousObserverLock);
}

- (void)removeSynchronousObserver:(id)observer forSampleType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:1170 description:{@"Invalid parameter not satisfying: %@", @"sampleType"}];
  }

  if (!observerCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataManager.m" lineNumber:1171 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  os_unfair_lock_lock(&self->_synchronousObserverLock);
  v8 = [(HDDataManager *)self _synchronousObserverLock_synchronousObserverSetForSampleType:typeCopy];
  [v8 unregisterObserver:observerCopy];
  os_unfair_lock_unlock(&self->_synchronousObserverLock);
}

void __68__HDDataManager__notifySynchronousObserversIfPossibleInTransaction___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *(*(a1[5] + 8) + 24) = *(a1[4] + 48);
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = *(a1[4] + 64);
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [*(a1[4] + 64) objectForKeyedSubscript:{v8, v14}];
          v10 = objc_msgSend_copy(v9);
          [v2 setObject:v10 forKeyedSubscript:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v2;
    v13 = v2;

    objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 72));
    *(a1[4] + 48) = 0;
  }
}

void __68__HDDataManager__notifySynchronousObserversIfPossibleInTransaction___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[6] + 8) + 40))
  {
    [v3 samplesAdded:a1[4] anchor:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v4 samplesJournaled:a1[4] type:a1[5]];
  }
}

void __85__HDDataManager__notifySynchronousObserversForDeletedObjectTypes_anchor_transaction___block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5[0] = *(a1 + 32);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v3 samplesOfTypesWereRemoved:v4 anchor:*(a1 + 40)];
  }
}

- (void)synchronouslyCloseObserverTransactionAndNotify
{
  dispatch_assert_queue_not_V2(self->_notificationQueue);
  [(HDDataManager *)self closeObserverTransaction];
  notificationQueue = self->_notificationQueue;

  dispatch_sync(notificationQueue, &__block_literal_global_430_0);
}

- (void)setBackgroundObserverFrequency:(id)frequency forDataType:(id)type frequency:(int64_t)a5 appSDKVersionToken:(unint64_t)token completion:(id)completion
{
  v49[3] = *MEMORY[0x277D85DE8];
  frequencyCopy = frequency;
  typeCopy = type;
  completionCopy = completion;
  process = [frequencyCopy process];
  applicationIdentifier = [process applicationIdentifier];

  if (typeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    v20 = [typeCopy clampedBackgroundObservationFrequency:a5 isAppleWatch:{objc_msgSend(behavior, "isAppleWatch")}];

    if (v20 <= 1)
    {
      if (!v20)
      {
LABEL_20:
        selfCopy = self;
        code = [typeCopy code];
        v34 = kHDEventNameBGDelivery;
        v40[0] = @"action";
        v40[1] = @"code";
        v41[0] = @"removeSubscription";
        v35 = [MEMORY[0x277CCABB0] numberWithInteger:code];
        v41[1] = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        HDPowerLogForClient(v34, frequencyCopy, v36);

        _HKInitializeLogging();
        v37 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v43 = code;
          v44 = 2112;
          v45 = applicationIdentifier;
          _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_INFO, "Disabling background delivery of %lu for '%@'", buf, 0x16u);
        }

        v23 = objc_loadWeakRetained(&selfCopy->_profile);
        appSubscriptionManager = [v23 appSubscriptionManager];
        [appSubscriptionManager removeSubscriptionForBundleID:applicationIdentifier dataCode:code];
        goto LABEL_23;
      }

      if (v20 == 1)
      {
        selfCopy5 = self;
        code2 = [typeCopy code];
        goto LABEL_15;
      }
    }

    else
    {
      switch(v20)
      {
        case 4:
          selfCopy5 = self;
          v20 = 604800;
          code2 = [typeCopy code];
          goto LABEL_15;
        case 3:
          selfCopy5 = self;
          v20 = 86400;
          code2 = [typeCopy code];
          goto LABEL_15;
        case 2:
          selfCopy5 = self;
          v20 = 3600;
          code2 = [typeCopy code];
LABEL_15:
          v25 = code2;
          v26 = kHDEventNameBGDelivery;
          v49[0] = @"subscribe";
          v48[0] = @"action";
          v48[1] = @"frequency";
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
          v49[1] = v27;
          v48[2] = @"code";
          v28 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
          v49[2] = v28;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
          HDPowerLogForClient(v26, frequencyCopy, v29);

          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC288];
          if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            v43 = v25;
            v44 = 2112;
            v45 = applicationIdentifier;
            v46 = 2048;
            v47 = v20;
            _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_INFO, "Requesting to set background delivery frequency of %lu for '%@' to %llu seconds", buf, 0x20u);
          }

          v23 = objc_loadWeakRetained(&selfCopy5->_profile);
          appSubscriptionManager = [v23 appSubscriptionManager];
          [appSubscriptionManager subscribeForBundleID:applicationIdentifier dataCode:objc_msgSend(typeCopy frequencyInSeconds:"code") appSDKVersionToken:{v20, v38}];
          goto LABEL_23;
      }
    }

    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v43 = v20;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "invalid update frequency %ld", buf, 0xCu);
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = applicationIdentifier;
    _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_INFO, "Disabling all background delivery for '%@'", buf, 0xCu);
  }

  v23 = objc_loadWeakRetained(&self->_profile);
  appSubscriptionManager = [v23 appSubscriptionManager];
  [appSubscriptionManager removeBundleID:applicationIdentifier];
LABEL_23:

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)diagnosticDescription
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDDataManager_diagnosticDescription__block_invoke;
  block[3] = &unk_278613920;
  block[4] = self;
  v5 = v3;
  v33 = v5;
  dispatch_sync(queue, block);
  os_unfair_lock_lock(&self->_synchronousObserverLock);
  v6 = objc_msgSend_copy(self->_synchronousObserversBySampleType);
  os_unfair_lock_unlock(&self->_synchronousObserverLock);
  v7 = [v6 count];
  v8 = &stru_283BF39C8;
  if (!v7)
  {
    v8 = @"none";
  }

  [v5 appendFormat:@"\n\nSynchronous Observers: %@", v8];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v23 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v9 objectForKeyedSubscript:v13];
        identifier = [v13 identifier];
        [v5 appendFormat:@"\n\t%@ %ld (%lu):", identifier, objc_msgSend(v13, "code"), objc_msgSend(v14, "count")];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        allObservers = [v14 allObservers];
        v17 = [allObservers countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v25;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(allObservers);
              }

              [v5 appendFormat:@"\n\t\t%@", *(*(&v24 + 1) + 8 * j)];
            }

            v18 = [allObservers countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v18);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v11);
  }

  v21 = v5;
  return v5;
}

void __38__HDDataManager_diagnosticDescription__block_invoke(uint64_t a1, const char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_copy(*(*(a1 + 32) + 24), a2);
  v4 = *(a1 + 40);
  v5 = [v3 count];
  v6 = &stru_283BF39C8;
  if (!v5)
  {
    v6 = @"none";
  }

  [v4 appendFormat:@"\nObservers: %@", v6];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v3;
  v21 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 integerValue];
        if (v11 == -1)
        {
          v13 = @"AllTypes";
        }

        else
        {
          v12 = [MEMORY[0x277CCD720] dataTypeWithCode:v11];
          v13 = [v12 identifier];
        }

        v14 = [v7 objectForKeyedSubscript:v9];
        [*(a1 + 40) appendFormat:@"\n\t%@ %ld (%lu):", v13, v11, objc_msgSend(v14, "count")];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v23;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [*(a1 + 40) appendFormat:@"\n\t\t%@", *(*(&v22 + 1) + 8 * j)];
            }

            v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v17);
        }

        objc_autoreleasePoolPop(v10);
      }

      v21 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }
}

@end