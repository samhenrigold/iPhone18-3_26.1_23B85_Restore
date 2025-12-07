@interface CloudTabGroupPresenceUpdater
- (CloudTabGroupPresenceUpdater)initWithCloudBookmarkStore:(id)store;
- (id)_sharedPresenceRecordDatabaseForTabRecordZone:(id)zone;
- (id)_sharedPresenceRecordNameForUserRecordID:(id)d;
- (void)_acquireLockToSetPresenceInTabWithRecordID:(id)d inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)_acquireLockUsingPrivatePresenceRecord:(id)record toSetPresenceInTabWithRecordID:(id)d previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)_cacheUserRecordIDIfNeededInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_checkPrivatePresenceLockValidityWithRecord:(id)record toUpdatePresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_clearRetryHandlerIsCancelling:(BOOL)cancelling;
- (void)_createSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)_performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_releaseLockForPrivatePresenceRecord:(id)record inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_replaceSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)_setUpRetryTimerToSetPresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_updatePresenceInTabIfNeededWithRecordID:(id)d inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)setPresenceToTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
@end

@implementation CloudTabGroupPresenceUpdater

- (CloudTabGroupPresenceUpdater)initWithCloudBookmarkStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = CloudTabGroupPresenceUpdater;
  v6 = [(CloudTabGroupPresenceUpdater *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_lastScheduledUpdateLock._os_unfair_lock_opaque = 0;
    v8 = [CKRecordID alloc];
    bookmarksRecordZoneID = [(CloudBookmarkStore *)v7->_store bookmarksRecordZoneID];
    v10 = [v8 initWithRecordName:@"UserTabGroupPresence" zoneID:bookmarksRecordZoneID];
    privatePresenceRecordID = v7->_privatePresenceRecordID;
    v7->_privatePresenceRecordID = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

    v14 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudTabGroupPresenceUpdater.%@.%p._processUpdateQueue", objc_opt_class(), v7];
    v15 = dispatch_queue_create([v14 UTF8String], v13);
    processUpdateQueue = v7->_processUpdateQueue;
    v7->_processUpdateQueue = v15;

    v17 = v7;
  }

  return v7;
}

- (void)setPresenceToTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10002E508;
  v50[3] = &unk_100132700;
  v11 = dCopy;
  v51 = v11;
  v12 = groupCopy;
  v52 = v12;
  v13 = handlerCopy;
  v53 = v13;
  v14 = objc_retainBlock(v50);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2810000000;
  v48[3] = "";
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100001474;
  v46 = sub_10002E634;
  v47 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E63C;
  block[3] = &unk_1001327C8;
  objc_copyWeak(&v41, location);
  v15 = v13;
  v37 = v15;
  v39 = v48;
  v40 = &v42;
  v16 = v11;
  v35 = v16;
  v17 = v12;
  v36 = v17;
  v18 = v14;
  v38 = v18;
  v19 = dispatch_block_create(0, block);
  v20 = v43[5];
  v43[5] = v19;

  v21 = v43[5];
  v22 = dispatch_get_global_queue(25, 0);
  notification_block[0] = _NSConcreteStackBlock;
  notification_block[1] = 3221225472;
  notification_block[2] = sub_10002EC10;
  notification_block[3] = &unk_100132818;
  v32 = v48;
  v33 = &v42;
  v23 = v18;
  v31 = v23;
  dispatch_block_notify(v21, v22, notification_block);

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v26 = sub_10002ED24;
  v27 = &unk_100132840;
  selfCopy = self;
  v29 = &v42;
  v24 = v25;
  os_unfair_lock_lock(&self->_lastScheduledUpdateLock);
  v26(v24);

  os_unfair_lock_unlock(&self->_lastScheduledUpdateLock);
  _Block_object_dispose(&v42, 8);

  objc_destroyWeak(&v41);
  _Block_object_dispose(v48, 8);

  objc_destroyWeak(location);
}

- (void)_cacheUserRecordIDIfNeededInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (self->_cachedUserRecordID)
  {
    v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(handlerCopy, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "UserRecordID is already cached", buf, 2u);
    }

    v8[2](v8, 1);
  }

  else
  {
    store = self->_store;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002EF68;
    v11[3] = &unk_100132868;
    v11[4] = self;
    v12 = handlerCopy;
    [(CloudBookmarkStore *)store fetchUserIdentityInOperationGroup:group withCompletionHandler:v11];
  }
}

- (void)_updatePresenceInTabIfNeededWithRecordID:(id)d inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  store = self->_store;
  privatePresenceRecordID = self->_privatePresenceRecordID;
  container = [(CloudBookmarkStore *)store container];
  privateCloudDatabase = [container privateCloudDatabase];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002F25C;
  v20[3] = &unk_100132890;
  objc_copyWeak(&v24, &location);
  v17 = handlerCopy;
  v23 = v17;
  v18 = dCopy;
  v21 = v18;
  v19 = groupCopy;
  v22 = v19;
  retryCopy = retry;
  [(CloudBookmarkStore *)store fetchRecordWithID:privatePresenceRecordID inDatabase:privateCloudDatabase operationGroup:v19 completionHandler:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(inited, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    ckShortDescription = [dCopy ckShortDescription];
    *buf = 138543362;
    v31 = ckShortDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Will fetch shared presence for heartbeat update for tabRecordID: %{public}@", buf, 0xCu);
  }

  zoneID = [dCopy zoneID];
  v16 = [[CKRecordID alloc] initWithRecordName:self->_cachedSharedPresenceRecordName zoneID:zoneID];
  v17 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:zoneID];
  store = self->_store;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002F74C;
  v23[3] = &unk_1001328E0;
  objc_copyWeak(&v28, &location);
  v19 = handlerCopy;
  v27 = v19;
  v20 = v17;
  v24 = v20;
  v21 = groupCopy;
  v25 = v21;
  v22 = dCopy;
  v26 = v22;
  [(CloudBookmarkStore *)store fetchRecordWithID:v16 inDatabase:v20 operationGroup:v21 completionHandler:v23];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_acquireLockToSetPresenceInTabWithRecordID:(id)d inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  retryCopy = retry;
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  cachedPrivatePresenceRecord = self->_cachedPrivatePresenceRecord;
  if (!cachedPrivatePresenceRecord)
  {
    v13 = [[CKRecord alloc] initWithRecordType:@"TabGroupTabParticipantPresence" recordID:self->_privatePresenceRecordID];
    v14 = self->_cachedPrivatePresenceRecord;
    self->_cachedPrivatePresenceRecord = v13;

    cachedPrivatePresenceRecord = self->_cachedPrivatePresenceRecord;
  }

  v15 = [(CKRecord *)cachedPrivatePresenceRecord copy];
  [(CloudTabGroupPresenceUpdater *)self _acquireLockUsingPrivatePresenceRecord:v15 toSetPresenceInTabWithRecordID:dCopy previousPrivatePresenceRecord:0 inOperationGroup:groupCopy isRetry:retryCopy completionHandler:handlerCopy];
}

- (void)_acquireLockUsingPrivatePresenceRecord:(id)record toSetPresenceInTabWithRecordID:(id)d previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  recordCopy = record;
  dCopy = d;
  presenceRecordCopy = presenceRecord;
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v20 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(inited, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    recordID = [recordCopy recordID];
    *buf = 138543362;
    v40 = recordID;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Attempting to acquire update presence lock with ID: %{public}@", buf, 0xCu);
  }

  if (dCopy)
  {
    v22 = [[CKReference alloc] initWithRecordID:dCopy action:0];
  }

  else
  {
    v22 = 0;
  }

  [recordCopy setObject:v22 forKeyedSubscript:@"TabGroupTab"];
  [recordCopy setObject:&off_10013C338 forKeyedSubscript:@"Lock"];
  [recordCopy setExpirationAfterTimeInterval:&off_10013C2C0];
  store = self->_store;
  container = [(CloudBookmarkStore *)store container];
  privateCloudDatabase = [container privateCloudDatabase];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10002FE00;
  v31[3] = &unk_100132908;
  objc_copyWeak(&v36, &location);
  v26 = handlerCopy;
  v35 = v26;
  v27 = presenceRecordCopy;
  v32 = v27;
  v28 = dCopy;
  v33 = v28;
  v29 = groupCopy;
  v34 = v29;
  retryCopy = retry;
  [(CloudBookmarkStore *)store saveOrLoadRecord:recordCopy inDatabase:privateCloudDatabase operationGroup:v29 completionHandler:v31];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

- (void)_checkPrivatePresenceLockValidityWithRecord:(id)record toUpdatePresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  recordCopy = record;
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  modificationDate = [recordCopy modificationDate];
  [modificationDate timeIntervalSinceNow];
  v16 = v15;

  if (v16 >= -60.0)
  {
    [(CloudTabGroupPresenceUpdater *)self _setUpRetryTimerToSetPresenceInTabWithRecordID:dCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
  }

  else
  {
    v19 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "The presence lock is too old, we are going to try to steal it.", v21, 2u);
    }

    v20 = [recordCopy copy];
    [(CloudTabGroupPresenceUpdater *)self _acquireLockUsingPrivatePresenceRecord:recordCopy toSetPresenceInTabWithRecordID:dCopy previousPrivatePresenceRecord:v20 inOperationGroup:groupCopy isRetry:0 completionHandler:handlerCopy];
  }
}

- (void)_replaceSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  retryCopy = retry;
  dCopy = d;
  recordCopy = record;
  presenceRecordCopy = presenceRecord;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v16 = [presenceRecordCopy objectForKeyedSubscript:@"TabGroupTab"];
  v18 = v16;
  if (v16)
  {
    recordID = [v16 recordID];
    zoneID = [recordID zoneID];
    v30 = [[CKRecordID alloc] initWithRecordName:self->_cachedSharedPresenceRecordName zoneID:zoneID];
    v28 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:zoneID];
    v21 = [recordID isEqual:dCopy];
    if (v21)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100030560;
      v41[3] = &unk_100132930;
      v41[4] = self;
      v42 = recordCopy;
      v43 = groupCopy;
      v44 = handlerCopy;
      [(CloudTabGroupPresenceUpdater *)self _performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:dCopy inOperationGroup:v43 completionHandler:v41];
    }

    else
    {
      v24 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(v21, v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        ckShortDescription = [v30 ckShortDescription];
        ckShortDescription2 = [recordID ckShortDescription];
        *buf = 138543618;
        v47 = ckShortDescription;
        v48 = 2114;
        v49 = ckShortDescription2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Deleting previous presence record with ID: %{public}@ to tab: %{public}@", buf, 0x16u);
      }

      store = self->_store;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100030570;
      v33[3] = &unk_100132958;
      objc_copyWeak(&v39, &location);
      v38 = handlerCopy;
      v34 = v30;
      v35 = dCopy;
      v36 = recordCopy;
      v37 = groupCopy;
      v40 = retryCopy;
      [(CloudBookmarkStore *)store deleteRecordWithID:v34 inDatabase:v28 operationGroup:v37 completionHandler:v33];

      objc_destroyWeak(&v39);
    }
  }

  else
  {
    v23 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(0, v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "No previous presence record to delete", buf, 2u);
    }

    [(CloudTabGroupPresenceUpdater *)self _createSharedPresenceRecordWithTabRecordID:dCopy currentPrivatePresenceRecord:recordCopy inOperationGroup:groupCopy isRetry:retryCopy completionHandler:handlerCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_createSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  dCopy = d;
  recordCopy = record;
  groupCopy = group;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  if (dCopy)
  {
    v17 = [CKRecordID alloc];
    cachedSharedPresenceRecordName = self->_cachedSharedPresenceRecordName;
    zoneID = [dCopy zoneID];
    v20 = [v17 initWithRecordName:cachedSharedPresenceRecordName zoneID:zoneID];

    v21 = [[CKRecord alloc] initWithRecordType:@"TabGroupTabParticipantPresence" recordID:v20];
    v22 = [[CKReference alloc] initWithRecordID:self->_cachedUserRecordID action:0];
    [v21 setObject:v22 forKeyedSubscript:@"Participant"];

    v23 = [[CKReference alloc] initWithRecordID:dCopy action:1];
    [v21 setObject:v23 forKeyedSubscript:@"TabGroupTab"];

    [v21 setExpirationAfterTimeInterval:&off_10013C2B0];
    zoneID2 = [dCopy zoneID];
    v25 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:zoneID2];

    store = self->_store;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100030954;
    v28[3] = &unk_100132980;
    objc_copyWeak(&v32, &location);
    v31 = handlerCopy;
    v29 = recordCopy;
    v30 = groupCopy;
    [(CloudBookmarkStore *)store saveOrLoadRecord:v21 inDatabase:v25 operationGroup:v30 completionHandler:v28];

    objc_destroyWeak(&v32);
  }

  else
  {
    v27 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(inited, v16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "No need to create a new shared presence record", buf, 2u);
    }

    [(CloudTabGroupPresenceUpdater *)self _releaseLockForPrivatePresenceRecord:recordCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_releaseLockForPrivatePresenceRecord:(id)record inOperationGroup:(id)group completionHandler:(id)handler
{
  recordCopy = record;
  handlerCopy = handler;
  groupCopy = group;
  v12 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0(groupCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    recordID = [recordCopy recordID];
    *buf = 138543362;
    v22 = recordID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Releasing update presence lock with ID: %{public}@", buf, 0xCu);
  }

  [recordCopy setObject:&off_10013C350 forKeyedSubscript:@"Lock"];
  [recordCopy setExpirationAfterTimeInterval:&off_10013C2C0];
  store = self->_store;
  container = [(CloudBookmarkStore *)store container];
  privateCloudDatabase = [container privateCloudDatabase];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100030C18;
  v19[3] = &unk_1001328B8;
  v19[4] = self;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [(CloudBookmarkStore *)store saveOrLoadRecord:recordCopy inDatabase:privateCloudDatabase operationGroup:groupCopy completionHandler:v19];
}

- (void)_setUpRetryTimerToSetPresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_processUpdateQueue);
  retryTimer = self->_retryTimer;
  self->_retryTimer = v11;

  v13 = objc_retainBlock(handlerCopy);
  currentRetryCompletionHandler = self->_currentRetryCompletionHandler;
  self->_currentRetryCompletionHandler = v13;

  v15 = self->_retryTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100030EA8;
  handler[3] = &unk_1001329A8;
  objc_copyWeak(&v25, &location);
  v23 = groupCopy;
  v24 = handlerCopy;
  v22 = dCopy;
  v16 = groupCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  dispatch_source_set_event_handler(v15, handler);
  v19 = self->_retryTimer;
  v20 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  dispatch_activate(self->_retryTimer);
  dispatch_resume(self->_processUpdateQueue);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_clearRetryHandlerIsCancelling:(BOOL)cancelling
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    if (cancelling)
    {
      dispatch_suspend(self->_processUpdateQueue);
      (*(self->_currentRetryCompletionHandler + 2))();
      retryTimer = self->_retryTimer;
    }

    dispatch_source_cancel(retryTimer);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;

    currentRetryCompletionHandler = self->_currentRetryCompletionHandler;
    self->_currentRetryCompletionHandler = 0;
  }
}

- (id)_sharedPresenceRecordDatabaseForTabRecordZone:(id)zone
{
  safari_isInPrivateDatabase = [zone safari_isInPrivateDatabase];
  container = [(CloudBookmarkStore *)self->_store container];
  v6 = container;
  if (safari_isInPrivateDatabase)
  {
    [container privateCloudDatabase];
  }

  else
  {
    [container sharedCloudDatabase];
  }
  v7 = ;

  return v7;
}

- (id)_sharedPresenceRecordNameForUserRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [@"UserPresence_" stringByAppendingString:recordName];

  return v4;
}

@end