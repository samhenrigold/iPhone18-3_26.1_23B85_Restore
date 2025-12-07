@interface CloudRemoteStore
- (CloudRemoteStore)init;
- (void)_addDependenciesForModifyRecordsOperation:(id)operation operationQueue:(id)queue;
- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveRecordZoneSubscriptionForZoneID:(id)d subscriptionID:(id)iD inOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler;
- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue;
@end

@implementation CloudRemoteStore

- (CloudRemoteStore)init
{
  v11.receiver = self;
  v11.super_class = CloudRemoteStore;
  v2 = [(CloudRemoteStore *)&v11 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkStore.%@.%p.internalQueue", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkStore.%@.%p.completionHandlerQueue", objc_opt_class(), v2];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    completionHandlerQueue = v2->_completionHandlerQueue;
    v2->_completionHandlerQueue = v7;

    v9 = v2;
  }

  return v2;
}

- (void)_saveRecordZoneSubscriptionForZoneID:(id)d subscriptionID:(id)iD inOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  groupCopy = group;
  queueCopy = queue;
  handlerCopy = handler;
  v17 = objc_alloc_init(CKNotificationInfo);
  [v17 setShouldSendContentAvailable:1];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0F74;
  block[3] = &unk_100136FE8;
  v26 = dCopy;
  v27 = iDCopy;
  v31 = queueCopy;
  v32 = handlerCopy;
  v28 = v17;
  selfCopy = self;
  v30 = groupCopy;
  v19 = queueCopy;
  v20 = groupCopy;
  v21 = handlerCopy;
  v22 = v17;
  v23 = iDCopy;
  v24 = dCopy;
  dispatch_async(internalQueue, block);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  groupCopy = group;
  tokenCopy = token;
  _zoneID = [(CloudRemoteStore *)self _zoneID];
  v18 = [handlerCopy copy];

  v19 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v19 setPreviousServerChangeToken:tokenCopy];

  v20 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->_internalQueue];
  [v20 setLog:{-[CloudTabGroupSyncCoordinator _bookmarksLog]_0(v20, v21)}];
  operationConfiguration = [(CloudRemoteStore *)self operationConfiguration];
  [v20 setConfiguration:operationConfiguration];

  [v20 setGroup:groupCopy];
  _database = [(CloudRemoteStore *)self _database];
  [v20 setDatabase:_database];

  v56 = _zoneID;
  v24 = [NSArray arrayWithObjects:&v56 count:1];
  [v20 setRecordZoneIDs:v24];

  v54 = _zoneID;
  v55 = v19;
  v25 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [v20 setConfigurationsByRecordZoneID:v25];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000D15B4;
  v50[3] = &unk_100137010;
  v51 = blockCopy;
  v26 = blockCopy;
  [v20 setRecordWasChangedBlock:v50];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000D1628;
  v48[3] = &unk_100137038;
  v49 = deletedBlockCopy;
  v27 = deletedBlockCopy;
  [v20 setRecordWithIDWasDeletedBlock:v48];
  v42 = _NSConcreteStackBlock;
  v43 = 3221225472;
  v44 = sub_1000D16A8;
  v45 = &unk_100137060;
  selfCopy = self;
  v28 = v18;
  v47 = v28;
  [v20 setRecordZoneFetchCompletionBlock:&v42];
  v36 = _NSConcreteStackBlock;
  v37 = 3221225472;
  v38 = sub_1000D19FC;
  v39 = &unk_100137088;
  selfCopy2 = self;
  v41 = v28;
  v29 = v28;
  v30 = [v20 setFetchRecordZoneChangesCompletionBlock:&v36];
  v32 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v30, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = v32;
    v34 = [(CloudRemoteStore *)self _zoneLogName:v36];
    *buf = 138543362;
    v53 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Enqueuing request to fetch records from record zone %{public}@", buf, 0xCu);
  }

  v35 = [(CloudRemoteStore *)self _operationQueue:v36];
  [v35 addOperation:v20];
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

- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue
{
  operationsCopy = operations;
  groupCopy = group;
  queueCopy = queue;
  v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(queueCopy, v11);
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
        [(CloudRemoteStore *)self _addDependenciesForModifyRecordsOperation:v19 operationQueue:queueCopy, v20];
        [(CloudRemoteStore *)self _scheduleOperation:v19 inOperationGroup:groupCopy operationQueue:queueCopy];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
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
  v15[2] = sub_1000D2008;
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

@end