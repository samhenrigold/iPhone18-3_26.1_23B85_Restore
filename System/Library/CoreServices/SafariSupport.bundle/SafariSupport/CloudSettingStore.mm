@interface CloudSettingStore
- (CloudSettingStore)initWithContainer:(id)container;
- (WBSHashGenerator)hashGenerator;
- (id)createOperationGroupWithName:(id)name useLargerExpectedSendSize:(BOOL)size;
- (void)_createCloudSettingsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveCloudSettingsRecords:(id)records inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_saveCloudSettingsRecords:(id)records retryManager:(id)manager inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_saveOrLoadRecord:(id)record inOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_saveRecordZoneSubscriptionForZoneID:(id)d subscriptionID:(id)iD inOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler;
- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue;
- (void)_setUpEncryptionInfoInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_setUpEncryptionInfoInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)clearCachedCloudSettingsRecordZone;
- (void)createCloudSettingsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudSettingsRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudSettingsZoneInOperationGroup:(id)group completion:(id)completion;
- (void)fetchCloudSettingsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)fetchNumberOfDevicesInSyncCircleInOperationGroup:(id)group completion:(id)completion;
- (void)generateEncryptedHashStringWithComponents:(id)components inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudSettingsRecords:(id)records createCloudSettingsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)saveCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
@end

@implementation CloudSettingStore

- (CloudSettingStore)initWithContainer:(id)container
{
  containerCopy = container;
  v26.receiver = self;
  v26.super_class = CloudSettingStore;
  v6 = [(CloudSettingStore *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    privateCloudDatabase = [(CKContainer *)v7->_container privateCloudDatabase];
    database = v7->_database;
    v7->_database = privateCloudDatabase;

    if (!v7->_database)
    {
      v12 = sub_10000300C(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10003A5E4(v12);
      }
    }

    v13 = objc_alloc_init(NSOperationQueue);
    cloudSettingsOperationQueue = v7->_cloudSettingsOperationQueue;
    v7->_cloudSettingsOperationQueue = v13;

    [(NSOperationQueue *)v7->_cloudSettingsOperationQueue setQualityOfService:17];
    v15 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudSettings.CloudSettingStore.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_cloudSettingsOperationQueue setName:v15];

    v16 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudSettings.CloudSettingStore.%@.%p.internalQueue", objc_opt_class(), v7];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v17;

    v19 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudSettings.CloudSettingStore.%@.%p.completionHandlerQueue", objc_opt_class(), v7];
    v20 = dispatch_queue_create([v19 UTF8String], 0);
    completionHandlerQueue = v7->_completionHandlerQueue;
    v7->_completionHandlerQueue = v20;

    v22 = +[NSMutableArray array];
    pendingZoneCreationCompletionHandlers = v7->_pendingZoneCreationCompletionHandlers;
    v7->_pendingZoneCreationCompletionHandlers = v22;

    v7->_isCreatingZone = 0;
    v24 = v7;
  }

  return v7;
}

- (WBSHashGenerator)hashGenerator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_threadUnsafeHashGenerator;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)generateEncryptedHashStringWithComponents:(id)components inOperationGroup:(id)group completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100033C44;
  v10[3] = &unk_100132A30;
  componentsCopy = components;
  handlerCopy = handler;
  v10[4] = self;
  v8 = componentsCopy;
  v9 = handlerCopy;
  [(CloudSettingStore *)self createCloudSettingsRecordZoneInOperationGroup:group completionHandler:v10];
}

- (id)createOperationGroupWithName:(id)name useLargerExpectedSendSize:(BOOL)size
{
  sizeCopy = size;
  nameCopy = name;
  v6 = objc_alloc_init(CKOperationGroup);
  [v6 setName:nameCopy];

  if (sizeCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setExpectedSendSize:v7];
  [v6 setExpectedReceiveSize:2];

  return v6;
}

- (void)fetchCloudSettingsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  tokenCopy = token;
  groupCopy = group;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  v18 = sub_10000300C(handlerCopy, v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (tokenCopy)
  {
    if (v19)
    {
      v20 = v18;
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543618;
      v38 = tokenCopy;
      v39 = 2114;
      v40 = safari_logDescription;
      v22 = "Fetching record changes with server change token %{public}@ with %{public}@";
      v23 = v20;
      v24 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }
  }

  else if (v19)
  {
    v20 = v18;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v38 = safari_logDescription;
    v22 = "Fetching all records with %{public}@";
    v23 = v20;
    v24 = 12;
    goto LABEL_6;
  }

  internalQueue = self->_internalQueue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100033FAC;
  v31[3] = &unk_100130F90;
  v31[4] = self;
  v32 = tokenCopy;
  v33 = groupCopy;
  v34 = blockCopy;
  v35 = deletedBlockCopy;
  v36 = handlerCopy;
  v26 = handlerCopy;
  v27 = groupCopy;
  v28 = deletedBlockCopy;
  v29 = blockCopy;
  v30 = tokenCopy;
  dispatch_async(internalQueue, v31);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  deletedBlockCopy = deletedBlock;
  blockCopy = block;
  tokenCopy = token;
  v17 = [WBSCloudKitOperationRetryManager alloc];
  v19 = [v17 initWithLog:{sub_10000300C(v17, v18)}];
  [(CloudSettingStore *)self _fetchRecordsOnInternalQueueWithRetryManager:v19 serverChangeToken:tokenCopy recordChangedBlock:blockCopy recordWithIDWasDeletedBlock:deletedBlockCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  managerCopy = manager;
  tokenCopy = token;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  groupCopy = group;
  handlerCopy = handler;
  v18 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v18 setPreviousServerChangeToken:tokenCopy];
  v19 = [CKFetchRecordZoneChangesOperation alloc];
  v20 = sub_100033914(v19);
  v79 = v20;
  v21 = [NSArray arrayWithObjects:&v79 count:1];
  v22 = sub_100033914(v21);
  v77 = v22;
  v78 = v18;
  v48 = v18;
  v23 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v24 = [v19 initWithRecordZoneIDs:v21 configurationsByRecordZoneID:v23];

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100034588;
  v69[3] = &unk_100132A58;
  v25 = groupCopy;
  v70 = v25;
  selfCopy = self;
  v26 = blockCopy;
  v72 = v26;
  [v24 setRecordChangedBlock:v69];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10003467C;
  v65[3] = &unk_100132A80;
  v27 = v25;
  v66 = v27;
  selfCopy2 = self;
  v28 = deletedBlockCopy;
  v68 = v28;
  [v24 setRecordWithIDWasDeletedBlock:v65];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100034810;
  v58[3] = &unk_100132AA8;
  v58[4] = self;
  v59 = managerCopy;
  v29 = handlerCopy;
  v62 = v29;
  v63 = v26;
  v60 = tokenCopy;
  v64 = v28;
  v30 = v27;
  v61 = v30;
  v31 = v28;
  v47 = v26;
  v32 = tokenCopy;
  v33 = managerCopy;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100034BD8;
  v54[3] = &unk_100132AF8;
  v54[4] = self;
  v34 = objc_retainBlock(v58);
  v56 = v34;
  v35 = v30;
  v55 = v35;
  v36 = v29;
  v57 = v36;
  [v24 setRecordZoneFetchCompletionBlock:v54];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10003507C;
  v49[3] = &unk_100132B20;
  v52 = v34;
  v37 = v35;
  v50 = v37;
  selfCopy3 = self;
  v53 = v36;
  v38 = v36;
  v39 = v34;
  v40 = [v24 setFetchRecordZoneChangesCompletionBlock:v49];
  v42 = sub_10000300C(v40, v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = v42;
    safari_logDescription = [v37 safari_logDescription];
    *buf = 138543618;
    v74 = @"CloudSettings";
    v75 = 2114;
    v76 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Enqueuing request to fetch records from record zone %{public}@ with %{public}@", buf, 0x16u);
  }

  [(CloudSettingStore *)self _scheduleOperation:v24 inOperationGroup:v37 operationQueue:self->_cloudSettingsOperationQueue, deletedBlockCopy];
}

- (void)fetchNumberOfDevicesInSyncCircleInOperationGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  v8 = [WBSCloudKitOperationRetryManager alloc];
  v10 = [v8 initWithLog:{sub_10000300C(v8, v9)}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100035314;
  v13[3] = &unk_100132B48;
  v14 = groupCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = groupCopy;
  [(CloudSettingStore *)self _createCloudSettingsRecordZoneInOperationGroup:v12 withRetryManager:v10 completionHandler:v13];
}

- (void)saveCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = sub_10000300C(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v22 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings zone subscription with %{public}@", buf, 0xCu);
  }

  inited = objc_initWeak(buf, self);
  v13 = sub_100033914(inited);
  cloudSettingsOperationQueue = self->_cloudSettingsOperationQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100035570;
  v17[3] = &unk_100130EA0;
  v15 = handlerCopy;
  v19 = v15;
  objc_copyWeak(&v20, buf);
  v16 = groupCopy;
  v18 = v16;
  [(CloudSettingStore *)self _saveRecordZoneSubscriptionForZoneID:v13 subscriptionID:@"CloudSettingsZoneSubscription" inOperationGroup:v16 operationQueue:cloudSettingsOperationQueue completionHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
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
  block[2] = sub_100035A04;
  block[3] = &unk_100132B98;
  v26 = dCopy;
  v27 = iDCopy;
  v28 = v17;
  v29 = groupCopy;
  v31 = queueCopy;
  v32 = handlerCopy;
  selfCopy = self;
  v19 = queueCopy;
  v20 = handlerCopy;
  v21 = groupCopy;
  v22 = v17;
  v23 = iDCopy;
  v24 = dCopy;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudSettingsRecords:(id)records createCloudSettingsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  recordsCopy = records;
  groupCopy = group;
  dataCopy = data;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v20 = sub_10000300C(completionHandlerCopy, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v37 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings record with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100035ED4;
  v28[3] = &unk_100132BE8;
  objc_copyWeak(&v34, buf);
  v23 = completionHandlerCopy;
  v32 = v23;
  missingCopy = missing;
  v24 = groupCopy;
  v29 = v24;
  v25 = recordsCopy;
  v30 = v25;
  v26 = dataCopy;
  v31 = v26;
  v27 = handlerCopy;
  v33 = v27;
  [(CloudSettingStore *)self _saveCloudSettingsRecords:v25 inOperationGroup:v24 clientChangeTokenData:v26 mergeHandler:v27 completionHandler:v28];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

- (void)_saveCloudSettingsRecords:(id)records inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  dataCopy = data;
  groupCopy = group;
  recordsCopy = records;
  v17 = [WBSCloudKitOperationRetryManager alloc];
  v19 = [v17 initWithLog:{sub_10000300C(v17, v18)}];
  [(CloudSettingStore *)self _saveCloudSettingsRecords:recordsCopy retryManager:v19 inOperationGroup:groupCopy clientChangeTokenData:dataCopy mergeHandler:handlerCopy completionHandler:completionHandlerCopy];
}

- (void)_saveCloudSettingsRecords:(id)records retryManager:(id)manager inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  recordsCopy = records;
  managerCopy = manager;
  groupCopy = group;
  dataCopy = data;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v18 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:0];
  v31 = dataCopy;
  v19 = [dataCopy copy];
  [v18 setClientChangeTokenData:v19];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v20 = +[NSMutableArray array];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000366F8;
  v43[3] = &unk_100132C38;
  v43[4] = self;
  v21 = groupCopy;
  v44 = v21;
  v22 = handlerCopy;
  v46 = v22;
  v23 = v20;
  v45 = v23;
  v47 = v48;
  [v18 setPerRecordCompletionBlock:v43];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100036B74;
  v34[3] = &unk_100132CB0;
  v34[4] = self;
  v24 = completionHandlerCopy;
  v40 = v24;
  v25 = v21;
  v35 = v25;
  v42 = v48;
  v26 = v23;
  v36 = v26;
  v27 = v19;
  v37 = v27;
  v28 = v22;
  v41 = v28;
  v29 = managerCopy;
  v38 = v29;
  v30 = recordsCopy;
  v39 = v30;
  [v18 setModifyRecordsCompletionBlock:v34];
  [(CloudSettingStore *)self _scheduleOperation:v18 inOperationGroup:v25 operationQueue:self->_cloudSettingsOperationQueue];

  _Block_object_dispose(v48, 8);
}

- (void)deleteCloudSettingsRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  recordsCopy = records;
  groupCopy = group;
  handlerCopy = handler;
  v11 = [recordsCopy count];
  v13 = sub_10000300C(v11, v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      v15 = v13;
      v16 = [recordsCopy count];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 134218242;
      v26 = v16;
      v27 = 2114;
      v28 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deleting %lu records with %{public}@", buf, 0x16u);
    }

    v18 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:recordsCopy];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100037820;
    v22[3] = &unk_100132CD8;
    v22[4] = self;
    v19 = groupCopy;
    v23 = v19;
    v24 = handlerCopy;
    [v18 setModifyRecordsCompletionBlock:v22];
    [(CloudSettingStore *)self _scheduleOperation:v18 inOperationGroup:v19 operationQueue:self->_cloudSettingsOperationQueue];
  }

  else
  {
    if (v14)
    {
      v20 = v13;
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v26 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No records to delete with %{public}@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)clearCachedCloudSettingsRecordZone
{
  v3 = sub_10000300C(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing cached CloudSettings record zone", buf, 2u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037AFC;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(internalQueue, block);
  completionHandlerQueue = self->_completionHandlerQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100037B34;
  v6[3] = &unk_100131408;
  v6[4] = self;
  dispatch_async(completionHandlerQueue, v6);
}

- (void)deleteCloudSettingsZoneInOperationGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  v9 = sub_10000300C(completionCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v19 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting CloudSettings zone with %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037CA4;
  block[3] = &unk_100130E50;
  v16 = groupCopy;
  v17 = completionCopy;
  block[4] = self;
  v13 = groupCopy;
  v14 = completionCopy;
  dispatch_async(internalQueue, block);
}

- (void)createCloudSettingsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [WBSCloudKitOperationRetryManager alloc];
  v10 = [v8 initWithLog:{sub_10000300C(v8, v9)}];
  [(CloudSettingStore *)self _createCloudSettingsRecordZoneInOperationGroup:groupCopy withRetryManager:v10 completionHandler:handlerCopy];
}

- (void)fetchCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = sub_10000300C(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v20 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching CloudSettings zone subscription with %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003810C;
  block[3] = &unk_100131A20;
  v16 = groupCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = groupCopy;
  dispatch_async(internalQueue, block);
}

- (void)_createCloudSettingsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  v12 = sub_10000300C(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v25 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating CloudSettings zone with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038624;
  block[3] = &unk_100132E80;
  v22 = handlerCopy;
  block[4] = self;
  v20 = groupCopy;
  v16 = groupCopy;
  v17 = handlerCopy;
  objc_copyWeak(&v23, buf);
  v21 = managerCopy;
  v18 = managerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)_saveOrLoadRecord:(id)record inOperationGroup:(id)group withCompletionHandler:(id)handler
{
  recordCopy = record;
  groupCopy = group;
  handlerCopy = handler;
  v12 = sub_10000300C(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v28 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Attempting to save/load record with %{public}@", buf, 0xCu);
  }

  v15 = [CKModifyRecordsOperation alloc];
  v26 = recordCopy;
  v16 = [NSArray arrayWithObjects:&v26 count:1];
  v17 = [v15 initWithRecordsToSave:v16 recordIDsToDelete:0];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000395B0;
  v21[3] = &unk_100132ED0;
  v22 = recordCopy;
  v23 = groupCopy;
  selfCopy = self;
  v25 = handlerCopy;
  v18 = handlerCopy;
  v19 = groupCopy;
  v20 = recordCopy;
  [v17 setModifyRecordsCompletionBlock:v21];
  [(CloudSettingStore *)self _scheduleOperation:v17 inOperationGroup:v19 operationQueue:self->_cloudSettingsOperationQueue];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [WBSCloudKitOperationRetryManager alloc];
  v10 = [v8 initWithLog:{sub_10000300C(v8, v9)}];
  [(CloudSettingStore *)self _setUpEncryptionInfoInOperationGroup:groupCopy withRetryManager:v10 completionHandler:handlerCopy];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  v12 = sub_10000300C(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v31 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating encryption record with %{public}@", buf, 0xCu);
  }

  v15 = objc_alloc_init(WBSHashGenerator);
  v16 = sub_100033914(v15);
  v17 = [v15 encryptionInfoRecordWithZone:v16];

  v20 = sub_10000300C(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    safari_logDescription2 = [groupCopy safari_logDescription];
    *buf = 138543362;
    v31 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Attempting to save/load encryption record with %{public}@", buf, 0xCu);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100039B8C;
  v26[3] = &unk_100132F48;
  v26[4] = self;
  v27 = groupCopy;
  v28 = managerCopy;
  v29 = handlerCopy;
  v23 = managerCopy;
  v24 = handlerCopy;
  v25 = groupCopy;
  [(CloudSettingStore *)self _saveOrLoadRecord:v17 inOperationGroup:v25 withCompletionHandler:v26];
}

- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue
{
  operationCopy = operation;
  groupCopy = group;
  queueCopy = queue;
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003A3D0;
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