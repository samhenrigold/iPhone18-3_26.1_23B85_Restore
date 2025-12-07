@interface CloudTabRemoteStore
- (CloudTabRemoteStore)initWithContainer:(id)container;
- (id)_operationToDeleteCloudTabRecordIDs:(id)ds completionHandler:(id)handler;
- (id)_zoneID;
- (void)_createCloudTabsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)_recursivelyCancelDependentOperations:(id)operations operationQueue:(id)queue;
- (void)_saveCloudTabsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveCloudTabsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler;
- (void)createCloudTabsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudTabRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudTabsZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)fetchCloudTabsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)saveCloudTabsRecordBatch:(id)batch createCloudTabsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
@end

@implementation CloudTabRemoteStore

- (id)_zoneID
{
  if (qword_100154010 != -1)
  {
    sub_10007D330();
  }

  v2 = qword_100154008;

  return v2;
}

- (CloudTabRemoteStore)initWithContainer:(id)container
{
  containerCopy = container;
  v19.receiver = self;
  v19.super_class = CloudTabRemoteStore;
  v6 = [(CloudRemoteStore *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    containerIdentifier = [containerCopy containerIdentifier];
    v7->_usesManateeContainer = [containerIdentifier isEqualToString:WBSCloudTabManateeContainerIdentifier];

    privateCloudDatabase = [(CKContainer *)v7->_container privateCloudDatabase];
    threadUnsafeDatabase = v7->_threadUnsafeDatabase;
    v7->_threadUnsafeDatabase = privateCloudDatabase;

    if (!v7->_threadUnsafeDatabase)
    {
      v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000676FC();
      }
    }

    v14 = objc_opt_new();
    cloudTabsOperationQueue = v7->_cloudTabsOperationQueue;
    v7->_cloudTabsOperationQueue = v14;

    [(NSOperationQueue *)v7->_cloudTabsOperationQueue setQualityOfService:17];
    v16 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudTabRemoteStore.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_cloudTabsOperationQueue setName:v16];

    v17 = v7;
  }

  return v7;
}

- (void)createCloudTabsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [WBSCloudKitOperationRetryManager alloc];
  v10 = [v8 initWithLog:{sub_100001B78(v8, v9)}];
  [(CloudTabRemoteStore *)self _createCloudTabsRecordZoneInOperationGroup:groupCopy withRetryManager:v10 completionHandler:handlerCopy];
}

- (void)fetchCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = sub_100001B78(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching CloudTabs zone subscription", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079C04;
  block[3] = &unk_100130E50;
  v14 = groupCopy;
  v15 = handlerCopy;
  block[4] = self;
  v11 = groupCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v10 = sub_100001B78(inited, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving CloudTabs zone subscription", buf, 2u);
  }

  v12 = [CloudTabRemoteStore _zoneID]_0(v11);
  cloudTabsOperationQueue = self->_cloudTabsOperationQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007A090;
  v16[3] = &unk_100130EA0;
  v14 = handlerCopy;
  v18 = v14;
  objc_copyWeak(&v19, &location);
  v15 = groupCopy;
  v17 = v15;
  [(CloudRemoteStore *)self _saveRecordZoneSubscriptionForZoneID:v12 subscriptionID:@"CloudTabsZoneSubscription" inOperationGroup:v15 operationQueue:cloudTabsOperationQueue completionHandler:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)fetchCloudTabsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  tokenCopy = token;
  groupCopy = group;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  v18 = sub_100001B78(handlerCopy, v17);
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

  internalQueue = self->super._internalQueue;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10007A4EC;
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

- (void)saveCloudTabsRecordBatch:(id)batch createCloudTabsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v15 = sub_100001B78(inited, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [batchCopy count];
    *buf = 134217984;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saving record batch of size: %lu", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007A6DC;
  v20[3] = &unk_100130F18;
  objc_copyWeak(&v24, &location);
  v17 = handlerCopy;
  v23 = v17;
  missingCopy = missing;
  v18 = groupCopy;
  v21 = v18;
  v19 = batchCopy;
  v22 = v19;
  [(CloudTabRemoteStore *)self _saveCloudTabsRecordBatch:v19 inOperationGroup:v18 completionHandler:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)deleteCloudTabRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  recordsCopy = records;
  groupCopy = group;
  handlerCopy = handler;
  v11 = [recordsCopy count];
  v13 = sub_100001B78(v11, v12);
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
      v20 = sub_100001B78(v17, v18);
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
          v36[2] = sub_10007ADE8;
          v36[3] = &unk_100130F68;
          v37 = v24;
          v38 = v23;
          v39 = v30;
          selfCopy = self;
          v41 = v35;
          v31 = [(CloudTabRemoteStore *)self _operationToDeleteCloudTabRecordIDs:v30 completionHandler:v36];
          [v25 addObject:v31];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v27);
    }

    groupCopy = v32;
    [(CloudRemoteStore *)self _addModifyRecordsOperations:v25 inOperationGroup:v32 operationQueue:self->_cloudTabsOperationQueue];

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

- (void)deleteCloudTabsZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = sub_100001B78(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting CloudTabs zone", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B054;
  block[3] = &unk_100130E50;
  v14 = groupCopy;
  v15 = handlerCopy;
  block[4] = self;
  v11 = groupCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, block);
}

- (void)_createCloudTabsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v13 = sub_100001B78(inited, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating CloudTabs zone", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B4D4;
  block[3] = &unk_100131260;
  v19 = managerCopy;
  v15 = managerCopy;
  objc_copyWeak(&v23, &location);
  selfCopy = self;
  v22 = handlerCopy;
  v20 = groupCopy;
  v16 = groupCopy;
  v17 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_saveCloudTabsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  batchCopy = batch;
  v15 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = [WBSCloudKitOperationRetryManager alloc];
  v14 = [v12 initWithLog:{sub_100001B78(v12, v13)}];
  [(CloudTabRemoteStore *)self _saveCloudTabsRecordBatch:batchCopy previouslySavedRecords:v15 previouslyDeletedRecordIDs:v11 retryManager:v14 inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_saveCloudTabsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  recordsCopy = records;
  dsCopy = ds;
  managerCopy = manager;
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v22 = sub_100001B78(inited, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [batchCopy count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Saving record batch with %lu records", &buf, 0xCu);
  }

  v24 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:batchCopy recordIDsToDelete:0];
  [v24 setSavePolicy:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x2020000000;
  v49 = 0;
  +[NSMutableArray array];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10007BECC;
  v42[3] = &unk_100130FE0;
  v42[4] = self;
  v25 = p_buf = &buf;
  v43 = v25;
  [v24 setPerRecordCompletionBlock:v42];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10007C150;
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
  [(CloudRemoteStore *)self _addModifyRecordsOperations:v31 inOperationGroup:v30 operationQueue:self->_cloudTabsOperationQueue];

  objc_destroyWeak(&v41);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

- (id)_operationToDeleteCloudTabRecordIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:dsCopy];
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007CE3C;
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
          [(CloudTabRemoteStore *)self _recursivelyCancelDependentOperations:v13 operationQueue:queueCopy];
        }
      }

      v10 = [operations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

@end