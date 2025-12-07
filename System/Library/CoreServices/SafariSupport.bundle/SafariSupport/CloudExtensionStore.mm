@interface CloudExtensionStore
- (CloudExtensionStore)initWithContainer:(id)container;
- (id)_operationToDeleteCloudExtensionRecordIDs:(id)ds completionHandler:(id)handler;
- (void)_addDependenciesForModifyRecordsOperation:(id)operation operationQueue:(id)queue;
- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue;
- (void)_createCloudExtensionsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_recursivelyCancelDependentOperations:(id)operations operationQueue:(id)queue;
- (void)_saveCloudExtensionsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveCloudExtensionsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveRecordZoneSubscriptionInOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler;
- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue;
- (void)createCloudExtensionsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudExtensionRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)fetchCloudExtensionsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudExtensionsRecordBatch:(id)batch createCloudExtensionsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler;
@end

@implementation CloudExtensionStore

- (CloudExtensionStore)initWithContainer:(id)container
{
  containerCopy = container;
  v24.receiver = self;
  v24.super_class = CloudExtensionStore;
  v6 = [(CloudExtensionStore *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    privateCloudDatabase = [(CKContainer *)v7->_container privateCloudDatabase];
    database = v7->_database;
    v7->_database = privateCloudDatabase;

    if (!v7->_database)
    {
      v12 = sub_1000D23FC(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000080B4();
      }
    }

    v13 = objc_alloc_init(NSOperationQueue);
    cloudExtensionsOperationQueue = v7->_cloudExtensionsOperationQueue;
    v7->_cloudExtensionsOperationQueue = v13;

    [(NSOperationQueue *)v7->_cloudExtensionsOperationQueue setQualityOfService:17];
    v15 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudExtensions.CloudExtensionStore.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_cloudExtensionsOperationQueue setName:v15];

    v16 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudExtensions.CloudExtensionStore.%@.%p.internalQueue", objc_opt_class(), v7];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v17;

    v19 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudExtensions.CloudExtensionStore.%@.%p.completionHandlerQueue", objc_opt_class(), v7];
    v20 = dispatch_queue_create([v19 UTF8String], 0);
    completionHandlerQueue = v7->_completionHandlerQueue;
    v7->_completionHandlerQueue = v20;

    v22 = v7;
  }

  return v7;
}

- (void)createCloudExtensionsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [WBSCloudKitOperationRetryManager alloc];
  v10 = [v8 initWithLog:{sub_1000D23FC(v8, v9)}];
  [(CloudExtensionStore *)self _createCloudExtensionsRecordZoneInOperationGroup:groupCopy withRetryManager:v10 completionHandler:handlerCopy];
}

- (void)fetchCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = sub_1000D23FC(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching CloudExtensions zone subscription", buf, 2u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003624;
  block[3] = &unk_100130E50;
  v14 = groupCopy;
  v15 = handlerCopy;
  block[4] = self;
  v11 = groupCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = sub_1000D23FC(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription", buf, 2u);
  }

  objc_initWeak(buf, self);
  cloudExtensionsOperationQueue = self->_cloudExtensionsOperationQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003A70;
  v13[3] = &unk_100130EA0;
  v11 = handlerCopy;
  v15 = v11;
  objc_copyWeak(&v16, buf);
  v12 = groupCopy;
  v14 = v12;
  [(CloudExtensionStore *)self _saveRecordZoneSubscriptionInOperationGroup:v12 operationQueue:cloudExtensionsOperationQueue completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)saveCloudExtensionsRecordBatch:(id)batch createCloudExtensionsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  groupCopy = group;
  handlerCopy = handler;
  v14 = sub_1000D23FC(handlerCopy, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 134217984;
    v26 = [batchCopy count];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saving record batch of size: %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003E88;
  v19[3] = &unk_100130F18;
  objc_copyWeak(&v23, buf);
  v16 = handlerCopy;
  v22 = v16;
  missingCopy = missing;
  v17 = groupCopy;
  v20 = v17;
  v18 = batchCopy;
  v21 = v18;
  [(CloudExtensionStore *)self _saveCloudExtensionsRecordBatch:v18 inOperationGroup:v17 completionHandler:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)deleteCloudExtensionRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  recordsCopy = records;
  groupCopy = group;
  handlerCopy = handler;
  v11 = [recordsCopy count];
  v13 = sub_1000D23FC(v11, v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    v32 = groupCopy;
    if (v14)
    {
      v15 = v13;
      *buf = 134217984;
      v48 = [recordsCopy count];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deleting %lu records.", buf, 0xCu);
    }

    v35 = handlerCopy;
    v16 = [recordsCopy safari_arrayByGroupingIntoArraysWithMaxCount:100];
    v17 = [v16 count];
    v19 = v17;
    if (v17 >= 2)
    {
      v20 = sub_1000D23FC(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [recordsCopy count];
        *buf = 134218240;
        v48 = v22;
        v49 = 2048;
        v50 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Grouping delete requests for %lu objects into %lu batches", buf, 0x16u);
      }
    }

    v33 = recordsCopy;
    v23 = [NSMutableSet setWithArray:v16];
    v24 = +[NSMutableArray array];
    v25 = [NSMutableArray arrayWithCapacity:v19];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v16;
    v26 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v43;
      do
      {
        v29 = 0;
        do
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v42 + 1) + 8 * v29);
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100004580;
          v36[3] = &unk_100130F68;
          v37 = v24;
          v38 = v23;
          v39 = v30;
          selfCopy = self;
          v41 = v35;
          v31 = [(CloudExtensionStore *)self _operationToDeleteCloudExtensionRecordIDs:v30 completionHandler:v36];
          [v25 addObject:v31];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v27);
    }

    groupCopy = v32;
    [(CloudExtensionStore *)self _addModifyRecordsOperations:v25 inOperationGroup:v32 operationQueue:self->_cloudExtensionsOperationQueue];

    recordsCopy = v33;
    handlerCopy = v35;
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No records to delete.", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)fetchCloudExtensionsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  tokenCopy = token;
  groupCopy = group;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  v18 = sub_1000D23FC(handlerCopy, v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (tokenCopy)
  {
    if (v19)
    {
      *buf = 138543362;
      v36 = tokenCopy;
      v20 = "Fetching record changes with server change token %{public}@.";
      v21 = v18;
      v22 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    }
  }

  else if (v19)
  {
    *buf = 0;
    v20 = "Fetching all records.";
    v21 = v18;
    v22 = 2;
    goto LABEL_6;
  }

  internalQueue = self->_internalQueue;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000048B0;
  v29[3] = &unk_100130F90;
  v29[4] = self;
  v30 = tokenCopy;
  v31 = groupCopy;
  v32 = blockCopy;
  v33 = deletedBlockCopy;
  v34 = handlerCopy;
  v24 = handlerCopy;
  v25 = groupCopy;
  v26 = deletedBlockCopy;
  v27 = blockCopy;
  v28 = tokenCopy;
  dispatch_async(internalQueue, v29);
}

- (void)_saveCloudExtensionsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  batchCopy = batch;
  v15 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = [WBSCloudKitOperationRetryManager alloc];
  v14 = [v12 initWithLog:{sub_1000D23FC(v12, v13)}];
  [(CloudExtensionStore *)self _saveCloudExtensionsRecordBatch:batchCopy previouslySavedRecords:v15 previouslyDeletedRecordIDs:v11 retryManager:v14 inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_saveCloudExtensionsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  recordsCopy = records;
  dsCopy = ds;
  managerCopy = manager;
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v22 = sub_1000D23FC(inited, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [batchCopy count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Saving record batch with %lu records", &buf, 0xCu);
  }

  v24 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:batchCopy recordIDsToDelete:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x2020000000;
  v49 = 0;
  +[NSMutableArray array];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100004D28;
  v42[3] = &unk_100130FE0;
  v42[4] = self;
  v25 = p_buf = &buf;
  v43 = v25;
  [v24 setPerRecordCompletionBlock:v42];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100004FA0;
  v33[3] = &unk_100131080;
  v33[4] = self;
  v32 = recordsCopy;
  v34 = v32;
  v26 = dsCopy;
  v35 = v26;
  v27 = handlerCopy;
  v39 = v27;
  v40 = &buf;
  v28 = batchCopy;
  v36 = v28;
  v29 = managerCopy;
  v37 = v29;
  v30 = groupCopy;
  v38 = v30;
  objc_copyWeak(&v41, &location);
  [v24 setModifyRecordsCompletionBlock:v33];
  v46 = v24;
  v31 = [NSArray arrayWithObjects:&v46 count:1];
  [(CloudExtensionStore *)self _addModifyRecordsOperations:v31 inOperationGroup:v30 operationQueue:self->_cloudExtensionsOperationQueue];

  objc_destroyWeak(&v41);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  deletedBlockCopy = deletedBlock;
  blockCopy = block;
  tokenCopy = token;
  v17 = [WBSCloudKitOperationRetryManager alloc];
  v19 = [v17 initWithLog:{sub_1000D23FC(v17, v18)}];
  [(CloudExtensionStore *)self _fetchRecordsOnInternalQueueWithRetryManager:v19 serverChangeToken:tokenCopy recordChangedBlock:blockCopy recordWithIDWasDeletedBlock:deletedBlockCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  managerCopy = manager;
  tokenCopy = token;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v42 = sub_100003294(inited);
  v20 = [handlerCopy copy];

  v21 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v21 setPreviousServerChangeToken:tokenCopy];
  v22 = [CKFetchRecordZoneChangesOperation alloc];
  v65 = v42;
  v23 = [NSArray arrayWithObjects:&v65 count:1];
  v63 = v42;
  v64 = v21;
  v24 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v25 = [v22 initWithRecordZoneIDs:v23 configurationsByRecordZoneID:v24];

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000060CC;
  v60[3] = &unk_1001310A8;
  v60[4] = self;
  v26 = blockCopy;
  v61 = v26;
  [v25 setRecordChangedBlock:v60];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000061BC;
  v58[3] = &unk_1001310D0;
  v58[4] = self;
  v27 = deletedBlockCopy;
  v59 = v27;
  [v25 setRecordWithIDWasDeletedBlock:v58];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000062C0;
  v50[3] = &unk_100131148;
  v40 = managerCopy;
  v51 = v40;
  objc_copyWeak(&v57, &location);
  v28 = v20;
  v54 = v28;
  v29 = tokenCopy;
  v52 = v29;
  v30 = v26;
  v55 = v30;
  v31 = v27;
  v56 = v31;
  v32 = groupCopy;
  v53 = v32;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10000661C;
  v47[3] = &unk_100131198;
  v47[4] = self;
  v33 = objc_retainBlock(v50);
  v48 = v33;
  v34 = v28;
  v49 = v34;
  [v25 setRecordZoneFetchCompletionBlock:v47];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100006A2C;
  v44[3] = &unk_1001311C0;
  v35 = v33;
  v44[4] = self;
  v45 = v35;
  v36 = v34;
  v46 = v36;
  v37 = [v25 setFetchRecordZoneChangesCompletionBlock:v44];
  v39 = sub_1000D23FC(v37, v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Enqueuing request to fetch records from CloudExtensions record zone", buf, 2u);
  }

  [(CloudExtensionStore *)self _scheduleOperation:v25 inOperationGroup:v32 operationQueue:self->_cloudExtensionsOperationQueue];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
}

- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue
{
  operationsCopy = operations;
  groupCopy = group;
  queueCopy = queue;
  v12 = sub_1000D23FC(queueCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    *buf = 134217984;
    v26 = [operationsCopy count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Enqueuing %lu modify records operations", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = operationsCopy;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        [(CloudExtensionStore *)self _addDependenciesForModifyRecordsOperation:v19 operationQueue:queueCopy, v20];
        [(CloudExtensionStore *)self _scheduleOperation:v19 inOperationGroup:groupCopy operationQueue:queueCopy];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }
}

- (void)_addDependenciesForModifyRecordsOperation:(id)operation operationQueue:(id)queue
{
  operationCopy = operation;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operations = [queue operations];
  v7 = [operations copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [operationCopy addDependency:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue
{
  operationCopy = operation;
  groupCopy = group;
  queueCopy = queue;
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006FB8;
  v15[3] = &unk_1001311E8;
  v16 = operationCopy;
  selfCopy = self;
  v18 = groupCopy;
  v19 = queueCopy;
  v12 = queueCopy;
  v13 = groupCopy;
  v14 = operationCopy;
  dispatch_async(internalQueue, v15);
}

- (void)_createCloudExtensionsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  v12 = sub_1000D23FC(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating CloudExtensions zone", buf, 2u);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007164;
  block[3] = &unk_100131260;
  v18 = managerCopy;
  v14 = managerCopy;
  objc_copyWeak(&v22, buf);
  selfCopy = self;
  v21 = handlerCopy;
  v19 = groupCopy;
  v15 = groupCopy;
  v16 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)_saveRecordZoneSubscriptionInOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler
{
  groupCopy = group;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = objc_alloc_init(CKNotificationInfo);
  [v11 setShouldSendContentAvailable:1];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000077F4;
  block[3] = &unk_1001312B0;
  v21 = queueCopy;
  v22 = handlerCopy;
  v18 = v11;
  selfCopy = self;
  v20 = groupCopy;
  v13 = queueCopy;
  v14 = groupCopy;
  v15 = handlerCopy;
  v16 = v11;
  dispatch_async(internalQueue, block);
}

- (id)_operationToDeleteCloudExtensionRecordIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:dsCopy];
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007B90;
  v11[3] = &unk_100131300;
  v11[4] = self;
  objc_copyWeak(&v13, &location);
  v9 = handlerCopy;
  v12 = v9;
  [v8 setModifyRecordsCompletionBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

- (void)_recursivelyCancelDependentOperations:(id)operations operationQueue:(id)queue
{
  operationsCopy = operations;
  queueCopy = queue;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  operations = [queueCopy operations];
  v9 = [operations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(operations);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        dependencies = [v13 dependencies];
        v15 = [dependencies containsObject:operationsCopy];

        if (v15 && ([v13 isCancelled] & 1) == 0)
        {
          [v13 cancel];
          [(CloudExtensionStore *)self _recursivelyCancelDependentOperations:v13 operationQueue:queueCopy];
        }
      }

      v10 = [operations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

@end