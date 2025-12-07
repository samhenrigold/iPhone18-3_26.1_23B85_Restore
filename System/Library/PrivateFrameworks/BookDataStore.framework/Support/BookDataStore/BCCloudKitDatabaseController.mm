@interface BCCloudKitDatabaseController
+ (id)decodeRecordFromSystemFields:(id)fields;
+ (id)encodeRecordSystemFields:(id)fields;
+ (void)startInternetConnectionReachabilityNotifier;
- (BCCloudKitDatabaseController)initWithConfiguration:(id)configuration archiveURL:(id)l;
- (BOOL)establishedSalt;
- (NSString)subscriptionID;
- (id)appBundleIdentifier;
- (id)diagnosticDatabaseInfo;
- (id)p_archiveToData;
- (id)p_unarchiveFromData:(id)data;
- (id)recordNameFromRecordType:(id)type identifier:(id)identifier;
- (id)saltedAndHashedIDFromLocalID:(id)d;
- (void)_deleteRecordZonesWithIDs:(id)ds qualityOfService:(int64_t)service completion:(id)completion;
- (void)addObserver:(id)observer recordType:(id)type;
- (void)addObserver:(id)observer zoneID:(id)d;
- (void)attachToZones:(id)zones completion:(id)completion;
- (void)connectUserTo:(id)to container:(id)container updateSubscription:(BOOL)subscription completion:(id)completion subscriptionCompletion:(id)subscriptionCompletion;
- (void)detachWithError:(id)error completion:(id)completion;
- (void)fetchChangesWithCompletion:(id)completion;
- (void)fetchRecordForRecordID:(id)d completion:(id)completion;
- (void)getAttached:(id)attached;
- (void)p_createRecordIDSaltWithCompletion:(id)completion;
- (void)p_createRecordZones:(id)zones completionHandler:(id)handler;
- (void)p_fetchDatabaseChanges:(id)changes;
- (void)p_fetchRecordZoneChanges:(id)changes optionsByRecordZoneID:(id)d completionHandler:(id)handler;
- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)ds completionHandler:(id)handler;
- (void)p_fetchZoneChanges:(id)changes;
- (void)p_informObserversOfAttachmentChange;
- (void)p_informObserversOfCompletedFetchOfZone:(id)zone;
- (void)p_informObserversOfRecordsChanged:(id)changed;
- (void)p_informObserversOfRecordsChanged:(id)changed forRecordType:(id)type;
- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)changed forZones:(id)zones completion:(id)completion;
- (void)p_internetReachabilityChanged:(id)changed;
- (void)p_scheduleArchiveWithCompletion:(id)completion;
- (void)p_subscribeWithCompletion:(id)completion;
- (void)p_unarchive;
- (void)p_unsubscribeToContainer:(id)container;
- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)error;
- (void)recordZoneWithName:(id)name completionHandler:(id)handler;
- (void)registerServerChangeTokenStore:(id)store forZoneID:(id)d;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer recordType:(id)type;
- (void)unregisterServerChangeTokenStore:(id)store;
- (void)willAttachToContainer:(id)container serviceMode:(BOOL)mode completion:(id)completion;
- (void)zonesDeletedOrReset:(id)reset completion:(id)completion;
- (void)zonesTemporarilyUnreadableWithError:(id)error completion:(id)completion;
- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)identity completion:(id)completion;
@end

@implementation BCCloudKitDatabaseController

- (BOOL)establishedSalt
{
  recordIDSalt = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v3 = recordIDSalt != 0;

  return v3;
}

- (BCCloudKitDatabaseController)initWithConfiguration:(id)configuration archiveURL:(id)l
{
  configurationCopy = configuration;
  lCopy = l;
  v40.receiver = self;
  v40.super_class = BCCloudKitDatabaseController;
  v9 = [(BCCloudKitDatabaseController *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_archiveURL, l);
    v11 = objc_opt_new();
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = +[NSMapTable strongToWeakObjectsMapTable];
    zoneObservers = v10->_zoneObservers;
    v10->_zoneObservers = v13;

    v10->_zoneObserversLock._os_unfair_lock_opaque = 0;
    v15 = objc_opt_new();
    tokenStores = v10->_tokenStores;
    v10->_tokenStores = v15;

    v17 = objc_opt_new();
    changedRecordZoneIDs = v10->_changedRecordZoneIDs;
    v10->_changedRecordZoneIDs = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.iBooks.CloudKitDatabaseController", v19);

    objc_storeStrong(&v10->_accessQueue, v20);
    accessQueue = v10->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100022F9C;
    block[3] = &unk_10023F6B0;
    v22 = v10;
    v39 = v22;
    dispatch_sync(accessQueue, block);
    v23 = +[NSNotificationCenter defaultCenter];
    v24 = +[BDSReachability sharedReachabilityForInternetConnection];
    [v23 addObserver:v22 selector:"p_internetReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:v24];

    objc_initWeak(&location, v22);
    v25 = [BUCoalescingCallBlock alloc];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100022FA4;
    v34[3] = &unk_100240250;
    objc_copyWeak(&v36, &location);
    v35 = lCopy;
    v26 = [v25 initWithNotifyBlock:v34 notifyTimeout:10 blockDescription:@"_coalescedArchive in BCCloudKitDatabaseController" notifyTimeoutBlock:&stru_100240270];
    v27 = v22[8];
    v22[8] = v26;

    [v22[8] setCoalescingDelay:1.0];
    v28 = [BUCoalescingCallBlock alloc];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002328C;
    v32[3] = &unk_10023FC40;
    objc_copyWeak(&v33, &location);
    v29 = [v28 initWithNotifyBlock:v32 notifyTimeout:10 blockDescription:@"_coalescedZoneFetch in BCCloudKitDatabaseController" notifyTimeoutBlock:&stru_1002402B8];
    v30 = v22[18];
    v22[18] = v29;

    [v22[18] setCoalescingDelay:2.0];
    objc_destroyWeak(&v33);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (NSString)subscriptionID
{
  configuration = [(BCCloudKitDatabaseController *)self configuration];
  dbSubscriptionID = [configuration dbSubscriptionID];

  return dbSubscriptionID;
}

- (id)appBundleIdentifier
{
  configuration = [(BCCloudKitDatabaseController *)self configuration];
  appBundleIdentifier = [configuration appBundleIdentifier];

  return appBundleIdentifier;
}

- (void)fetchChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002660(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v13 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - fetchChangesWithCompletion:", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100023A14;
  v9[3] = &unk_10023FE48;
  objc_copyWeak(&v11, buf);
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(accessQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)fetchRecordForRecordID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024024;
  v11[3] = &unk_100240228;
  objc_copyWeak(&v14, &location);
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(accessQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)willAttachToContainer:(id)container serviceMode:(BOOL)mode completion:(id)completion
{
  containerCopy = container;
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100024338;
  v13[3] = &unk_100240378;
  v13[4] = self;
  v14 = containerCopy;
  modeCopy = mode;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = containerCopy;
  dispatch_sync(accessQueue, v13);
}

- (void)connectUserTo:(id)to container:(id)container updateSubscription:(BOOL)subscription completion:(id)completion subscriptionCompletion:(id)subscriptionCompletion
{
  toCopy = to;
  containerCopy = container;
  completionCopy = completion;
  subscriptionCompletionCopy = subscriptionCompletion;
  v16 = sub_100002660(subscriptionCompletionCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [containerCopy containerIdentifier];
    *buf = 138543362;
    v29 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - connectUserTo:container:updateSubscription:completion:", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002475C;
  v22[3] = &unk_1002403E8;
  v22[4] = self;
  v23 = containerCopy;
  subscriptionCopy = subscription;
  v24 = toCopy;
  v25 = subscriptionCompletionCopy;
  v26 = completionCopy;
  v18 = completionCopy;
  v19 = subscriptionCompletionCopy;
  v20 = toCopy;
  v21 = containerCopy;
  [v21 fetchUserRecordIDWithCompletionHandler:v22];
}

- (void)attachToZones:(id)zones completion:(id)completion
{
  zonesCopy = zones;
  completionCopy = completion;
  v8 = _os_activity_create(&_mh_execute_header, "BCCloudKitDatabaseController/attachToZones-cloud", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
  v10 = [containerIdentifier containsString:@"cloudData"];

  if ((v10 & 1) == 0)
  {
    v11 = _os_activity_create(&_mh_execute_header, "BCCloudKitDatabaseController/attachToZones-secureData", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);

    v8 = v11;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024C0C;
  block[3] = &unk_1002404B0;
  v15 = zonesCopy;
  v16 = completionCopy;
  block[4] = self;
  v12 = zonesCopy;
  v13 = completionCopy;
  os_activity_apply(v8, block);
}

- (void)detachWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025B38;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v12 = errorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = errorCopy;
  dispatch_async(accessQueue, block);
}

- (void)getAttached:(id)attached
{
  attachedCopy = attached;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025D20;
  v7[3] = &unk_10023F9F8;
  v7[4] = self;
  v8 = attachedCopy;
  v6 = attachedCopy;
  dispatch_async(accessQueue, v7);
}

- (void)recordZoneWithName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  if (handlerCopy)
  {
    database = [(BCCloudKitDatabaseController *)self database];

    if (database)
    {
      accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100025EA0;
      block[3] = &unk_100240500;
      v11 = nameCopy;
      selfCopy = self;
      v13 = handlerCopy;
      dispatch_async(accessQueue, block);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (id)saltedAndHashedIDFromLocalID:(id)d
{
  dCopy = d;
  recordIDSalt = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v6 = recordIDSalt;
  if (recordIDSalt)
  {
    memset(&v13, 0, sizeof(v13));
    CCHmacInit(&v13, 0, [recordIDSalt bytes], objc_msgSend(recordIDSalt, "length"));
    uTF8String = [dCopy UTF8String];
    v8 = strlen(uTF8String);
    CCHmacUpdate(&v13, uTF8String, v8);
    macOut[0] = 0;
    macOut[1] = 0;
    v15 = 0;
    CCHmacFinal(&v13, macOut);
    v9 = [NSData dataWithBytes:macOut length:20];
    v10 = [v9 base64EncodedStringWithOptions:0];
  }

  else
  {
    v11 = sub_100002660(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF1B8();
    }

    v10 = 0;
  }

  return v10;
}

- (id)recordNameFromRecordType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!identifierCopy)
  {
    goto LABEL_6;
  }

  identifierCopy = [(BCCloudKitDatabaseController *)self saltedAndHashedIDFromLocalID:identifierCopy];
  if (!identifierCopy)
  {
    goto LABEL_6;
  }

  v9 = identifierCopy;
  v10 = @"-";
  if (typeCopy)
  {
    v10 = typeCopy;
  }

  identifierCopy = [NSString stringWithFormat:@"%@.%@", v10, identifierCopy];

  if (!identifierCopy)
  {
LABEL_6:
    v12 = sub_100002660(identifierCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF220();
    }

    identifierCopy = 0;
  }

  return identifierCopy;
}

- (void)p_unsubscribeToContainer:(id)container
{
  containerCopy = container;
  privateCloudDatabase = [containerCopy privateCloudDatabase];
  if (privateCloudDatabase)
  {
    objc_initWeak(&location, self);
    v6 = [CKModifySubscriptionsOperation alloc];
    subscriptionID = [(BCCloudKitDatabaseController *)self subscriptionID];
    v15 = subscriptionID;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v6 initWithSubscriptionsToSave:0 subscriptionIDsToDelete:v8];

    v10 = +[CKOperationConfiguration bds_defaultConfiguration];
    [v10 setContainer:containerCopy];
    [v9 setConfiguration:v10];
    [v9 setDatabase:privateCloudDatabase];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026414;
    v11[3] = &unk_100240528;
    objc_copyWeak(&v13, &location);
    v12 = containerCopy;
    [v9 setModifySubscriptionsCompletionBlock:v11];
    [privateCloudDatabase addOperation:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)p_subscribeWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = sub_100002660(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v36 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "p_subscribeWithCompletion (%{public}@)", buf, 0xCu);
  }

  if ([(BCCloudKitDatabaseController *)self hasSubscription]|| ([(BCCloudKitDatabaseController *)self database], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
  {
    v26 = objc_retainBlock(completionCopy);
    v15 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26);
    }
  }

  else
  {
    v12 = sub_100002660(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Attempting CKModifySubscriptionsOperation", buf, 2u);
    }

    v13 = [CKDatabaseSubscription alloc];
    subscriptionID = [(BCCloudKitDatabaseController *)self subscriptionID];
    v15 = [v13 initWithSubscriptionID:subscriptionID];

    v16 = objc_alloc_init(CKNotificationInfo);
    [v16 setShouldSendContentAvailable:1];
    [v15 setNotificationInfo:v16];
    objc_initWeak(&location, self);
    v17 = [CKModifySubscriptionsOperation alloc];
    v37 = v15;
    v18 = [NSArray arrayWithObjects:&v37 count:1];
    v19 = [v17 initWithSubscriptionsToSave:v18 subscriptionIDsToDelete:0];

    v20 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v20 setContainer:container];

    [v19 setConfiguration:v20];
    database = [(BCCloudKitDatabaseController *)self database];
    [v19 setDatabase:database];

    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10002699C;
    v30 = &unk_100240550;
    objc_copyWeak(&v33, &location);
    selfCopy = self;
    v32 = completionCopy;
    v23 = sub_100002660([v19 setModifySubscriptionsCompletionBlock:&v27]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      operationID = [v19 operationID];
      sub_1001BF288(v19, operationID, buf, v23);
    }

    database2 = [(BCCloudKitDatabaseController *)self database];
    [database2 addOperation:v19];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

- (void)p_fetchDatabaseChanges:(id)changes
{
  changesCopy = changes;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = sub_100002660(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    serverChangeToken = [(BCCloudKitDatabaseController *)self serverChangeToken];
    *buf = 138543618;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = serverChangeToken;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes, serverChangeToken: %{public}@", buf, 0x16u);
  }

  database = [(BCCloudKitDatabaseController *)self database];
  if (database)
  {
    v11 = [CKFetchDatabaseChangesOperation alloc];
    serverChangeToken2 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    v13 = [v11 initWithPreviousServerChangeToken:serverChangeToken2];

    [v13 setFetchAllChanges:1];
    v14 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v14 setContainer:container];

    [v13 setConfiguration:v14];
    database2 = [(BCCloudKitDatabaseController *)self database];
    [v13 setDatabase:database2];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = sub_100027274;
    v42 = sub_100027284;
    v43 = objc_alloc_init(NSMutableOrderedSet);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10002728C;
    v35[3] = &unk_100240578;
    v35[4] = self;
    v35[5] = buf;
    [v13 setRecordZoneWithIDWasDeletedBlock:v35];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10002742C;
    v34[3] = &unk_100240578;
    v34[4] = self;
    v34[5] = buf;
    [v13 setRecordZoneWithIDWasPurgedBlock:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000275CC;
    v33[3] = &unk_100240578;
    v33[4] = self;
    v33[5] = buf;
    [v13 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v33];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002776C;
    v32[3] = &unk_1002405C0;
    v32[4] = self;
    [v13 setChangeTokenUpdatedBlock:v32];
    configuration = [(BCCloudKitDatabaseController *)self configuration];
    serviceZones = [configuration serviceZones];
    v19 = [NSSet setWithArray:serviceZones];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002794C;
    v30[3] = &unk_100240608;
    v30[4] = self;
    v20 = v19;
    v31 = v20;
    [v13 setRecordZoneWithIDChangedBlock:v30];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100027B84;
    v26 = &unk_100240658;
    v29 = buf;
    selfCopy = self;
    v28 = changesCopy;
    v21 = sub_100002660([v13 setFetchDatabaseChangesCompletionBlock:&v23]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(BCCloudKitDatabaseController *)self containerIdentifier:v23];
      *v36 = 138543618;
      v37 = v22;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes %@", v36, 0x16u);
    }

    [database addOperation:v13];
    _Block_object_dispose(buf, 8);

    goto LABEL_9;
  }

  v13 = objc_retainBlock(changesCopy);
  if (v13)
  {
    v14 = [NSError errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
    (*(v13 + 2))(v13, v14);
LABEL_9:
  }
}

- (void)p_createRecordZones:(id)zones completionHandler:(id)handler
{
  zonesCopy = zones;
  handlerCopy = handler;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  database = [(BCCloudKitDatabaseController *)self database];
  v10 = sub_100002660(database);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v12 = zonesCopy;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v29 = &unk_100240B70;
    v30 = objc_alloc_init(NSMutableArray);
    v13 = v30;
    [v12 enumerateObjectsUsingBlock:buf];
    v14 = [v13 componentsJoinedByString:{@", "}];

    database2 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138412802;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v29 = database2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 2. p_createRecordZones:%@ database:%{public}@", buf, 0x20u);
  }

  if ([zonesCopy count] && database)
  {
    v16 = [[CKFetchRecordZonesOperation alloc] initWithRecordZoneIDs:zonesCopy];
    v17 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v17 setContainer:container];
    [v16 setConfiguration:v17];
    [v16 setDatabase:database];
    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000283A4;
    v22[3] = &unk_100240770;
    objc_copyWeak(&v27, buf);
    v26 = handlerCopy;
    v23 = zonesCopy;
    v19 = container;
    v24 = v19;
    v20 = database;
    v25 = v20;
    [v16 setFetchRecordZonesCompletionBlock:v22];
    [v20 addOperation:v16];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_retainBlock(handlerCopy);
    v16 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0);
    }
  }
}

- (void)p_createRecordIDSaltWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = sub_100002660(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    database = [(BCCloudKitDatabaseController *)self database];
    *buf = 138543618;
    v17 = containerIdentifier;
    v18 = 2114;
    v19 = database;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Establishing record salt, database:%{public}@", buf, 0x16u);
  }

  v10 = [[CKRecordID alloc] initWithRecordName:@"recordIDSalt"];
  objc_initWeak(buf, self);
  database2 = [(BCCloudKitDatabaseController *)self database];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100029B18;
  v13[3] = &unk_1002407C0;
  objc_copyWeak(&v15, buf);
  v13[4] = self;
  v12 = completionCopy;
  v14 = v12;
  [database2 fetchRecordWithID:v10 completionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)p_fetchZoneChanges:(id)changes
{
  changesCopy = changes;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  serverFetchPostponed = [(BCCloudKitDatabaseController *)self serverFetchPostponed];
  if (serverFetchPostponed)
  {
    v7 = sub_100002660(serverFetchPostponed);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fetch zone changes attempted while postponing such fetches.  Nil error, but this operation will be attempted again after the back-off period.", buf, 2u);
    }

    changesCopy[2](changesCopy, 0);
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = +[NSMutableArray array];
    tokenStores = [(BCCloudKitDatabaseController *)self tokenStores];
    allKeys = [tokenStores allKeys];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002AA34;
    v19[3] = &unk_1002407E8;
    v19[4] = self;
    v20 = v8;
    v12 = v9;
    v21 = v12;
    v13 = v8;
    [allKeys enumerateObjectsUsingBlock:v19];

    v14 = [v13 copy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002AB2C;
    v16[3] = &unk_100240460;
    v16[4] = self;
    v17 = v12;
    v18 = changesCopy;
    v15 = v12;
    [(BCCloudKitDatabaseController *)self p_fetchRecordZoneChangesForRecordZoneIDs:v14 completionHandler:v16];
  }
}

- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v9 = [dsCopy count];
  v10 = sub_100002660(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543618;
      v35 = containerIdentifier;
      v36 = 2114;
      v37 = dsCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- fetching record zone changes for recordZoneIDs:%{public}@", buf, 0x16u);
    }

    recordZones = [(BCCloudKitDatabaseController *)self recordZones];
    [(BCCloudKitDatabaseController *)self desiredRecordZoneIDs];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002B064;
    v31[3] = &unk_100240810;
    v33 = v32 = recordZones;
    v14 = v33;
    v15 = recordZones;
    [dsCopy enumerateObjectsUsingBlock:v31];
    v16 = objc_opt_new();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002B120;
    v28[3] = &unk_1002407E8;
    v28[4] = self;
    v29 = dispatch_group_create();
    v17 = v16;
    v30 = v17;
    v18 = v29;
    [dsCopy enumerateObjectsUsingBlock:v28];
    accessQueue2 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B3A0;
    block[3] = &unk_100240488;
    v24 = v17;
    selfCopy = self;
    v26 = dsCopy;
    v27 = handlerCopy;
    v20 = v17;
    dispatch_group_notify(v18, accessQueue2, block);
  }

  else
  {
    if (v11)
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543362;
      v35 = containerIdentifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- No record zone changes to fetch", buf, 0xCu);
    }

    self->_fetchRecordZoneChangesSuccess = 1;
    v22 = objc_retainBlock(handlerCopy);
    v15 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }
}

- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)error
{
  errorCopy = error;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:CKErrorDomain];

  v7 = 5.0;
  if (!v6 || (objc_opt_class(), [errorCopy userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", CKErrorRetryAfterKey), v9 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "doubleValue"), v7 = v11, v10, v9, v8, v7 > 0.0))
  {
LABEL_7:
    [(BCCloudKitDatabaseController *)self setBackOffInterval:v7];
    goto LABEL_8;
  }

  code = [errorCopy code];
  if (code <= 0x17 && ((1 << code) & 0x8000C0) != 0)
  {
    [(BCCloudKitDatabaseController *)self backOffInterval];
    v7 = 5.0;
    if (v13 >= 5.0)
    {
      [(BCCloudKitDatabaseController *)self backOffInterval];
      v7 = v14 + v14;
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)p_fetchRecordZoneChanges:(id)changes optionsByRecordZoneID:(id)d completionHandler:(id)handler
{
  changesCopy = changes;
  dCopy = d;
  handlerCopy = handler;
  v11 = sub_100002660(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v13 = changesCopy;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v52 = &unk_100240B70;
    *&v53 = objc_alloc_init(NSMutableArray);
    v14 = v53;
    [v13 enumerateObjectsUsingBlock:buf];
    v15 = [v14 componentsJoinedByString:{@", "}];

    database = [(BCCloudKitDatabaseController *)self database];
    *buf = 138544130;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2114;
    v52 = dCopy;
    LOWORD(v53) = 2048;
    *(&v53 + 2) = database;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneIDs:%{public}@, optionsByRecordZoneID:%{public}@ self.database=%p", buf, 0x2Au);
  }

  database2 = [(BCCloudKitDatabaseController *)self database];
  if (database2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = sub_100027274;
    *&v53 = sub_100027284;
    *(&v53 + 1) = objc_opt_new();
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_100027274;
    v45[4] = sub_100027284;
    v46 = objc_alloc_init(NSMutableOrderedSet);
    v18 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:changesCopy configurationsByRecordZoneID:dCopy];
    [v18 setFetchAllChanges:1];
    v19 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v19 setContainer:container];

    [v19 setQualityOfService:17];
    [v19 setDiscretionaryNetworkBehavior:0];
    [v19 setAutomaticallyRetryNetworkFailures:0];
    [v18 setConfiguration:v19];
    database3 = [(BCCloudKitDatabaseController *)self database];
    [v18 setDatabase:database3];

    objc_initWeak(&location, self);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10002BE64;
    v43[3] = &unk_100240888;
    v43[4] = self;
    v43[5] = buf;
    [v18 setRecordChangedBlock:v43];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10002C0C4;
    v42[3] = &unk_1002408B0;
    v42[4] = self;
    [v18 setRecordWithIDWasDeletedBlock:v42];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10002C324;
    v39[3] = &unk_100240900;
    v39[4] = self;
    v22 = changesCopy;
    v40 = v22;
    v41 = buf;
    [v18 setRecordZoneChangeTokensUpdatedBlock:v39];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10002C5E8;
    v35[3] = &unk_100240970;
    v35[4] = self;
    v23 = v22;
    v36 = v23;
    v37 = v45;
    v38 = buf;
    [v18 setRecordZoneFetchCompletionBlock:v35];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002CD38;
    v29[3] = &unk_100240A30;
    v29[4] = self;
    objc_copyWeak(&v34, &location);
    v32 = v45;
    v30 = v23;
    v33 = buf;
    v31 = handlerCopy;
    v24 = sub_100002660([v18 setFetchRecordZoneChangesCompletionBlock:v29]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *v47 = 138543618;
      v48 = containerIdentifier2;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges Adding fetchRecordZoneChangesOperation=%@", v47, 0x16u);
    }

    database4 = [(BCCloudKitDatabaseController *)self database];
    [database4 addOperation:v18];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v27 = objc_retainBlock(handlerCopy);
    if (v27)
    {
      v28 = [NSError errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
      v27[2](v27, v28);
    }
  }
}

- (void)p_internetReachabilityChanged:(id)changed
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D7D0;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)p_informObserversOfAttachmentChange
{
  v3 = sub_100002660(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    attachedToContainer = [(BCCloudKitDatabaseController *)self attachedToContainer];
    v6 = @"NO";
    if (attachedToContainer)
    {
      v6 = @"YES";
    }

    *buf = 138543618;
    v32 = containerIdentifier;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfAttachmentChange. Attached to container: %@", buf, 0x16u);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(BCCloudKitDatabaseController *)self observers];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        observers = [(BCCloudKitDatabaseController *)self observers];
        v14 = [observers objectForKeyedSubscript:v12];

        if ([v14 count])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              v19 = 0;
              do
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v21 + 1) + 8 * v19) databaseController:self attachmentChanged:{-[BCCloudKitDatabaseController attachedToContainer](self, "attachedToContainer")}];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }
}

- (void)p_informObserversOfRecordsChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100002660(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v10 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged.", buf, 0xCu);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([changedCopy count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002DDF8;
    v8[3] = &unk_100240A58;
    v8[4] = self;
    [changedCopy enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)changed forZones:(id)zones completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002DFDC;
  v11[3] = &unk_100240488;
  selfCopy = self;
  changedCopy = changed;
  zonesCopy = zones;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = zonesCopy;
  v10 = changedCopy;
  os_unfair_lock_lock(&selfCopy->_zoneObserversLock);
  sub_10002DFDC(v11);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)p_informObserversOfRecordsChanged:(id)changed forRecordType:(id)type
{
  changedCopy = changed;
  typeCopy = type;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v10 = sub_100002660(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543874;
    v28 = containerIdentifier;
    v29 = 2050;
    v30 = [changedCopy count];
    v31 = 2114;
    v32 = typeCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged: changedRecords.count=%{public}lu recordType=%{public}@", buf, 0x20u);
  }

  if ([changedCopy count])
  {
    observers = [(BCCloudKitDatabaseController *)self observers];
    v13 = [observers objectForKeyedSubscript:typeCopy];

    if ([v13 count])
    {
      v21 = typeCopy;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          v18 = 0;
          do
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v22 + 1) + 8 * v18);
            v20 = [[NSArray alloc] initWithArray:changedCopy copyItems:1];
            [v19 databaseController:self recordsChanged:v20];

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }

      typeCopy = v21;
    }
  }
}

- (void)p_informObserversOfCompletedFetchOfZone:(id)zone
{
  zoneCopy = zone;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = sub_100002660(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v33 = containerIdentifier;
    v34 = 2114;
    v35 = zoneCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfCompletedFetchOfZone zoneName=%{public}@", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(BCCloudKitDatabaseController *)self observers];
  v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        observers = [(BCCloudKitDatabaseController *)self observers];
        v15 = [observers objectForKeyedSubscript:v13];

        if ([v15 count])
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v23;
            do
            {
              v20 = 0;
              do
              {
                if (*v23 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v22 + 1) + 8 * v20) databaseController:self fetchedAllRecordsInZone:zoneCopy];
                v20 = v20 + 1;
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v18);
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }
}

- (void)p_scheduleArchiveWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  coalescedArchive = [(BCCloudKitDatabaseController *)self coalescedArchive];
  [coalescedArchive signalWithCompletion:completionCopy];
}

- (void)p_unarchive
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  archiveURL = [(BCCloudKitDatabaseController *)self archiveURL];
  if (archiveURL)
  {
    v4 = [[NSData alloc] initWithContentsOfURL:archiveURL];
    if (v4)
    {
      v5 = v4;
      v6 = [(BCCloudKitDatabaseController *)self p_unarchiveFromData:v4];
    }
  }
}

- (id)p_archiveToData
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  if (v4)
  {
    if ([(BCCloudKitDatabaseController *)self hasSubscription])
    {
      [v4 encodeInteger:1 forKey:@"hasUpdatedSubscription"];
    }

    serverChangeToken = [(BCCloudKitDatabaseController *)self serverChangeToken];
    if (serverChangeToken)
    {
      [v4 encodeObject:serverChangeToken forKey:@"serverChangeToken"];
    }

    changedRecordZoneIDs = [(BCCloudKitDatabaseController *)self changedRecordZoneIDs];
    v7 = [changedRecordZoneIDs count];

    if (v7)
    {
      changedRecordZoneIDs2 = [(BCCloudKitDatabaseController *)self changedRecordZoneIDs];
      [v4 encodeObject:changedRecordZoneIDs2 forKey:@"changedRecordZoneIDs"];
    }

    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v10 = [containerIdentifier length];

    if (v10)
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      [v4 encodeObject:containerIdentifier2 forKey:@"containerIdentifier"];
    }

    userRecordID = [(BCCloudKitDatabaseController *)self userRecordID];

    if (userRecordID)
    {
      userRecordID2 = [(BCCloudKitDatabaseController *)self userRecordID];
      [v4 encodeObject:userRecordID2 forKey:@"userRecordID"];
    }

    [v4 finishEncoding];
    encodedData = [v4 encodedData];
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

- (id)p_unarchiveFromData:(id)data
{
  dataCopy = data;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (dataCopy)
  {
    v17 = 0;
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:&v17];
    v7 = v17;
    v8 = v7;
    if (v7)
    {
      v9 = sub_100002660(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001BF5C8();
      }
    }

    else
    {
      -[BCCloudKitDatabaseController setHasSubscription:](self, "setHasSubscription:", [v6 decodeIntegerForKey:@"hasUpdatedSubscription"] == 1);
      v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
      [(BCCloudKitDatabaseController *)self setServerChangeToken:v10];

      v11 = objc_opt_class();
      v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
      v9 = [v6 decodeObjectOfClasses:v12 forKey:@"changedRecordZoneIDs"];

      if (v9)
      {
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v9];
      }

      else
      {
        v13 = objc_opt_new();
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v13];
      }

      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
      [(BCCloudKitDatabaseController *)self setContainerIdentifier:v14];

      v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"userRecordID"];
      [(BCCloudKitDatabaseController *)self setUserRecordID:v15];

      [v6 finishDecoding];
    }
  }

  return 0;
}

+ (id)encodeRecordSystemFields:(id)fields
{
  fieldsCopy = fields;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [fieldsCopy encodeSystemFieldsWithCoder:v4];

  [v4 finishEncoding];
  encodedData = [v4 encodedData];

  return encodedData;
}

+ (id)decodeRecordFromSystemFields:(id)fields
{
  fieldsCopy = fields;
  v10 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:fieldsCopy error:&v10];

  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100002660(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF5C8();
    }

    v8 = 0;
  }

  else
  {
    v8 = [[CKRecord alloc] initWithCoder:v4];
    [v4 finishDecoding];
  }

  return v8;
}

+ (void)startInternetConnectionReachabilityNotifier
{
  v2 = +[BDSReachability sharedReachabilityForInternetConnection];
  [v2 startNotifier];
}

- (void)_deleteRecordZonesWithIDs:(id)ds qualityOfService:(int64_t)service completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v12 = sub_100002660(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = dsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deleting zone: (%{public}@)", buf, 0xCu);
  }

  if (self->_container)
  {
    v13 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:0 recordZoneIDsToDelete:dsCopy];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10002F2C0;
    v19 = &unk_100240AA8;
    v20 = dsCopy;
    v21 = completionCopy;
    [v13 setModifyRecordZonesCompletionBlock:&v16];
    [v13 setQualityOfService:{service, v16, v17, v18, v19}];
    privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
    [privateCloudDatabase addOperation:v13];

    v15 = v20;
LABEL_7:

    goto LABEL_8;
  }

  v13 = objc_retainBlock(completionCopy);
  if (v13)
  {
    v15 = [NSError errorWithDomain:CKErrorDomain code:5 userInfo:0];
    (*(v13 + 2))(v13, v15);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v8 = sub_100002660(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BF6A0(self);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F480;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v13 = identityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = identityCopy;
  dispatch_async(accessQueue, block);
}

- (void)zonesTemporarilyUnreadableWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v8 = sub_100002660(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BF73C(self);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F838;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v13 = errorCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = errorCopy;
  dispatch_async(accessQueue, block);
}

- (void)zonesDeletedOrReset:(id)reset completion:(id)completion
{
  resetCopy = reset;
  completionCopy = completion;
  v8 = sub_100002660(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v15 = containerIdentifier;
    v16 = 2114;
    v17 = resetCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - zonesDeletedOrReset: %{public}@", buf, 0x16u);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002FA7C;
  v12[3] = &unk_10023FED8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  dispatch_async(accessQueue, v12);
}

- (void)addObserver:(id)observer recordType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  v8 = typeCopy;
  if (observerCopy && (typeCopy = [typeCopy length]) != 0)
  {
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FC78;
    block[3] = &unk_10023F720;
    block[4] = self;
    v12 = v8;
    v13 = observerCopy;
    dispatch_async(accessQueue, block);
  }

  else
  {
    v10 = sub_100002660(typeCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF7D8();
    }
  }
}

- (void)removeObserver:(id)observer recordType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  v8 = typeCopy;
  if (observerCopy && (typeCopy = [typeCopy length]) != 0)
  {
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FE80;
    block[3] = &unk_10023F720;
    block[4] = self;
    v12 = v8;
    v13 = observerCopy;
    dispatch_async(accessQueue, block);
  }

  else
  {
    v10 = sub_100002660(typeCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF7D8();
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000300C0;
    v14[3] = &unk_10023F938;
    v14[4] = self;
    v15 = observerCopy;
    dispatch_async(accessQueue, v14);
  }

  else
  {
    v6 = sub_100002660(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF92C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)addObserver:(id)observer zoneID:(id)d
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000302F8;
  v8[3] = &unk_10023F720;
  observerCopy = observer;
  dCopy = d;
  selfCopy = self;
  v6 = dCopy;
  v7 = observerCopy;
  os_unfair_lock_lock(&self->_zoneObserversLock);
  sub_1000302F8(v8);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)registerServerChangeTokenStore:(id)store forZoneID:(id)d
{
  storeCopy = store;
  dCopy = d;
  v8 = dCopy;
  if (storeCopy && dCopy)
  {
    objc_initWeak(&location, self);
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030568;
    block[3] = &unk_100240B20;
    objc_copyWeak(&v15, &location);
    v12 = v8;
    v13 = storeCopy;
    selfCopy = self;
    dispatch_async(accessQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = sub_100002660(dCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFA10();
    }
  }
}

- (void)unregisterServerChangeTokenStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    objc_initWeak(&location, self);
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000309F8;
    block[3] = &unk_10023F9A8;
    objc_copyWeak(&v9, &location);
    v8 = storeCopy;
    dispatch_async(accessQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = sub_100002660(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFAEC(v6);
    }
  }
}

- (id)diagnosticDatabaseInfo
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100027274;
  v23 = sub_100027284;
  v24 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100030D50;
  v14 = &unk_100240B48;
  v17 = &v25;
  v18 = &v19;
  selfCopy = self;
  v5 = v3;
  v16 = v5;
  dispatch_async(accessQueue, &v11);

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [BDSCloudSyncDiagnosticDatabaseInfo alloc];
  v7 = *(v26 + 24);
  v8 = [(BCCloudKitDatabaseController *)self establishedSalt:v11];
  v9 = [(BDSCloudSyncDiagnosticDatabaseInfo *)v6 initWithAttached:v7 establishedSalt:v8 container:v20[5]];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

@end