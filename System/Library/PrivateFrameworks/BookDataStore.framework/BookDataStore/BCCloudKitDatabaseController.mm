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

- (void)p_unarchive
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  archiveURL = [(BCCloudKitDatabaseController *)self archiveURL];
  if (archiveURL)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:archiveURL];
    if (v4)
    {
      v5 = v4;
      v6 = [(BCCloudKitDatabaseController *)self p_unarchiveFromData:v4];
    }
  }
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

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    zoneObservers = v10->_zoneObservers;
    v10->_zoneObservers = strongToWeakObjectsMapTable;

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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E461A9F0;
    block[3] = &unk_1E875A008;
    v22 = v10;
    v39 = v22;
    dispatch_sync(accessQueue, block);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = +[BDSReachability sharedReachabilityForInternetConnection];
    [defaultCenter addObserver:v22 selector:sel_p_internetReachabilityChanged_ name:@"kNetworkReachabilityChangedNotification" object:v24];

    objc_initWeak(&location, v22);
    v25 = objc_alloc(MEMORY[0x1E698F548]);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1E461A9F8;
    v34[3] = &unk_1E875A290;
    objc_copyWeak(&v36, &location);
    v35 = lCopy;
    v26 = [v25 initWithNotifyBlock:v34 notifyTimeout:10 blockDescription:@"_coalescedArchive in BCCloudKitDatabaseController" notifyTimeoutBlock:&unk_1F5E61F68];
    v27 = v22[8];
    v22[8] = v26;

    [v22[8] setCoalescingDelay:1.0];
    v28 = objc_alloc(MEMORY[0x1E698F548]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1E461ACE0;
    v32[3] = &unk_1E875A1E8;
    objc_copyWeak(&v33, &location);
    v29 = [v28 initWithNotifyBlock:v32 notifyTimeout:10 blockDescription:@"_coalescedZoneFetch in BCCloudKitDatabaseController" notifyTimeoutBlock:&unk_1F5E61F88];
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
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = BDSCloudKitLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v13 = containerIdentifier;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - fetchChangesWithCompletion:", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E461B468;
  v9[3] = &unk_1E87596B0;
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
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E461BA78;
  v11[3] = &unk_1E875A268;
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
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E461BD8C;
  v13[3] = &unk_1E875A358;
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
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  containerCopy = container;
  completionCopy = completion;
  subscriptionCompletionCopy = subscriptionCompletion;
  v16 = BDSCloudKitLog(subscriptionCompletionCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [containerCopy containerIdentifier];
    *buf = 138543362;
    v29 = containerIdentifier;
    _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - connectUserTo:container:updateSubscription:completion:", buf, 0xCu);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1E461C1B0;
  v22[3] = &unk_1E875A3A8;
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
  v8 = _os_activity_create(&dword_1E45E0000, "BCCloudKitDatabaseController/attachToZones-cloud", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
  containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
  v10 = [containerIdentifier containsString:@"cloudData"];

  if ((v10 & 1) == 0)
  {
    v11 = _os_activity_create(&dword_1E45E0000, "BCCloudKitDatabaseController/attachToZones-secureData", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);

    v8 = v11;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E461C660;
  block[3] = &unk_1E875A448;
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E461D58C;
  block[3] = &unk_1E875A470;
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
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E461D774;
  v7[3] = &unk_1E875A498;
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
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E461D8F4;
      block[3] = &unk_1E875A4C0;
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
  v16 = *MEMORY[0x1E69E9840];
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
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
    v10 = [v9 base64EncodedStringWithOptions:0];
  }

  else
  {
    v11 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706578();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)establishedSalt
{
  recordIDSalt = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v3 = recordIDSalt != 0;

  return v3;
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

  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v10, identifierCopy];

  if (!identifierCopy)
  {
LABEL_6:
    v12 = BDSCloudKitLog(identifierCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E47065E0();
    }

    identifierCopy = 0;
  }

  return identifierCopy;
}

- (void)p_unsubscribeToContainer:(id)container
{
  v15[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  privateCloudDatabase = [containerCopy privateCloudDatabase];
  if (privateCloudDatabase)
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E695B9C8]);
    subscriptionID = [(BCCloudKitDatabaseController *)self subscriptionID];
    v15[0] = subscriptionID;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [v6 initWithSubscriptionsToSave:0 subscriptionIDsToDelete:v8];

    bds_defaultConfiguration = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    [bds_defaultConfiguration setContainer:containerCopy];
    [v9 setConfiguration:bds_defaultConfiguration];
    [v9 setDatabase:privateCloudDatabase];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E461DE9C;
    v11[3] = &unk_1E875A4E8;
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
  v37[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = BDSCloudKitLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v36 = containerIdentifier;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_INFO, "p_subscribeWithCompletion (%{public}@)", buf, 0xCu);
  }

  if ([(BCCloudKitDatabaseController *)self hasSubscription]|| ([(BCCloudKitDatabaseController *)self database], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
  {
    v26 = _Block_copy(completionCopy);
    v15 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26);
    }
  }

  else
  {
    v12 = BDSCloudKitLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_INFO, "Attempting CKModifySubscriptionsOperation", buf, 2u);
    }

    v13 = objc_alloc(MEMORY[0x1E695B8C0]);
    subscriptionID = [(BCCloudKitDatabaseController *)self subscriptionID];
    v15 = [v13 initWithSubscriptionID:subscriptionID];

    v16 = objc_alloc_init(MEMORY[0x1E695B9F0]);
    [v16 setShouldSendContentAvailable:1];
    [v15 setNotificationInfo:v16];
    objc_initWeak(&location, self);
    v17 = objc_alloc(MEMORY[0x1E695B9C8]);
    v37[0] = v15;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v19 = [v17 initWithSubscriptionsToSave:v18 subscriptionIDsToDelete:0];

    bds_defaultConfiguration = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [bds_defaultConfiguration setContainer:container];

    [v19 setConfiguration:bds_defaultConfiguration];
    database = [(BCCloudKitDatabaseController *)self database];
    [v19 setDatabase:database];

    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = sub_1E461E424;
    v30 = &unk_1E875A510;
    objc_copyWeak(&v33, &location);
    selfCopy = self;
    v32 = completionCopy;
    v23 = BDSCloudKitLog([v19 setModifySubscriptionsCompletionBlock:&v27]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      operationID = [v19 operationID];
      sub_1E4706648(v19, operationID, buf, v23);
    }

    database2 = [(BCCloudKitDatabaseController *)self database];
    [database2 addOperation:v19];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

- (void)p_fetchDatabaseChanges:(id)changes
{
  v45 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = BDSCloudKitLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    serverChangeToken = [(BCCloudKitDatabaseController *)self serverChangeToken];
    *buf = 138543618;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = serverChangeToken;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes, serverChangeToken: %{public}@", buf, 0x16u);
  }

  database = [(BCCloudKitDatabaseController *)self database];
  if (database)
  {
    v11 = objc_alloc(MEMORY[0x1E695B8F8]);
    serverChangeToken2 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    v13 = [v11 initWithPreviousServerChangeToken:serverChangeToken2];

    [v13 setFetchAllChanges:1];
    bds_defaultConfiguration = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [bds_defaultConfiguration setContainer:container];

    [v13 setConfiguration:bds_defaultConfiguration];
    database2 = [(BCCloudKitDatabaseController *)self database];
    [v13 setDatabase:database2];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = sub_1E461ECFC;
    v43 = sub_1E461ED0C;
    v44 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1E461ED14;
    v36[3] = &unk_1E875A538;
    v36[4] = self;
    v36[5] = buf;
    [v13 setRecordZoneWithIDWasDeletedBlock:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1E461EEB4;
    v35[3] = &unk_1E875A538;
    v35[4] = self;
    v35[5] = buf;
    [v13 setRecordZoneWithIDWasPurgedBlock:v35];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1E461F054;
    v34[3] = &unk_1E875A538;
    v34[4] = self;
    v34[5] = buf;
    [v13 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v34];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1E461F1F4;
    v33[3] = &unk_1E875A560;
    v33[4] = self;
    [v13 setChangeTokenUpdatedBlock:v33];
    v17 = MEMORY[0x1E695DFD8];
    configuration = [(BCCloudKitDatabaseController *)self configuration];
    appZones = [configuration appZones];
    v20 = [v17 setWithArray:appZones];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1E461F3D4;
    v31[3] = &unk_1E875A588;
    v31[4] = self;
    v21 = v20;
    v32 = v21;
    [v13 setRecordZoneWithIDChangedBlock:v31];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = sub_1E461F60C;
    v27 = &unk_1E875A5D8;
    v30 = buf;
    selfCopy = self;
    v29 = changesCopy;
    v22 = BDSCloudKitLog([v13 setFetchDatabaseChangesCompletionBlock:&v24]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(BCCloudKitDatabaseController *)self containerIdentifier:v24];
      *v37 = 138543618;
      v38 = v23;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes %@", v37, 0x16u);
    }

    [database addOperation:v13];
    _Block_object_dispose(buf, 8);

    goto LABEL_9;
  }

  v13 = _Block_copy(changesCopy);
  if (v13)
  {
    bds_defaultConfiguration = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
    (*(v13 + 2))(v13, bds_defaultConfiguration);
LABEL_9:
  }
}

- (void)p_createRecordZones:(id)zones completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  zonesCopy = zones;
  handlerCopy = handler;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  database = [(BCCloudKitDatabaseController *)self database];
  v10 = BDSCloudKitLog(database);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v12 = MEMORY[0x1E695DF70];
    v13 = zonesCopy;
    v14 = objc_alloc_init(v12);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v31 = &unk_1E875AAB0;
    v32 = v14;
    v15 = v14;
    [v13 enumerateObjectsUsingBlock:buf];
    v16 = [v15 componentsJoinedByString:{@", "}];

    database2 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138412802;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2114;
    v31 = database2;
    _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 2. p_createRecordZones:%@ database:%{public}@", buf, 0x20u);
  }

  if ([zonesCopy count] && database)
  {
    v18 = [objc_alloc(MEMORY[0x1E695B928]) initWithRecordZoneIDs:zonesCopy];
    bds_defaultConfiguration = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [bds_defaultConfiguration setContainer:container];
    [v18 setConfiguration:bds_defaultConfiguration];
    [v18 setDatabase:database];
    objc_initWeak(buf, self);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E461FE2C;
    v24[3] = &unk_1E875A6F0;
    objc_copyWeak(&v29, buf);
    v28 = handlerCopy;
    v25 = zonesCopy;
    v21 = container;
    v26 = v21;
    v22 = database;
    v27 = v22;
    [v18 setFetchRecordZonesCompletionBlock:v24];
    [v22 addOperation:v18];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v23 = _Block_copy(handlerCopy);
    v18 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0);
    }
  }
}

- (void)p_createRecordIDSaltWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = BDSCloudKitLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    database = [(BCCloudKitDatabaseController *)self database];
    *buf = 138543618;
    v17 = containerIdentifier;
    v18 = 2114;
    v19 = database;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Establishing record salt, database:%{public}@", buf, 0x16u);
  }

  v10 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"recordIDSalt"];
  objc_initWeak(buf, self);
  database2 = [(BCCloudKitDatabaseController *)self database];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E46215A0;
  v13[3] = &unk_1E875A740;
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
    v7 = BDSCloudKitLog(serverFetchPostponed);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "fetch zone changes attempted while postponing such fetches.  Nil error, but this operation will be attempted again after the back-off period.", buf, 2u);
    }

    changesCopy[2](changesCopy, 0);
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    tokenStores = [(BCCloudKitDatabaseController *)self tokenStores];
    allKeys = [tokenStores allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E46224BC;
    v19[3] = &unk_1E875A768;
    v19[4] = self;
    v20 = array;
    v12 = array2;
    v21 = v12;
    v13 = array;
    [allKeys enumerateObjectsUsingBlock:v19];

    v14 = [v13 copy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E46225B4;
    v16[3] = &unk_1E875A420;
    v16[4] = self;
    v17 = v12;
    v18 = changesCopy;
    v15 = v12;
    [(BCCloudKitDatabaseController *)self p_fetchRecordZoneChangesForRecordZoneIDs:v14 completionHandler:v16];
  }
}

- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)ds completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v9 = [dsCopy count];
  v10 = BDSCloudKitLog(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543618;
      v37 = containerIdentifier;
      v38 = 2114;
      v39 = dsCopy;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- fetching record zone changes for recordZoneIDs:%{public}@", buf, 0x16u);
    }

    recordZones = [(BCCloudKitDatabaseController *)self recordZones];
    desiredRecordZoneIDs = [(BCCloudKitDatabaseController *)self desiredRecordZoneIDs];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1E4622AEC;
    v33[3] = &unk_1E875A790;
    v34 = recordZones;
    v35 = desiredRecordZoneIDs;
    v15 = desiredRecordZoneIDs;
    v16 = recordZones;
    [dsCopy enumerateObjectsUsingBlock:v33];
    v17 = objc_opt_new();
    v18 = dispatch_group_create();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1E4622BA8;
    v30[3] = &unk_1E875A768;
    v30[4] = self;
    v31 = v18;
    v19 = v17;
    v32 = v19;
    v20 = v18;
    [dsCopy enumerateObjectsUsingBlock:v30];
    accessQueue2 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4622E28;
    block[3] = &unk_1E8759CE0;
    v26 = v19;
    selfCopy = self;
    v28 = dsCopy;
    v29 = handlerCopy;
    v22 = v19;
    dispatch_group_notify(v20, accessQueue2, block);
  }

  else
  {
    if (v11)
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543362;
      v37 = containerIdentifier2;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- No record zone changes to fetch", buf, 0xCu);
    }

    self->_fetchRecordZoneChangesSuccess = 1;
    v24 = _Block_copy(handlerCopy);
    v16 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0);
    }
  }
}

- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)error
{
  errorCopy = error;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  v7 = 5.0;
  if (!v6 || (objc_opt_class(), [errorCopy userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", *MEMORY[0x1E695B748]), v9 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "doubleValue"), v7 = v11, v10, v9, v8, v7 > 0.0))
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
  v56 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  dCopy = d;
  handlerCopy = handler;
  v11 = BDSCloudKitLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v13 = MEMORY[0x1E695DF70];
    v14 = changesCopy;
    v15 = objc_alloc_init(v13);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v54 = &unk_1E875AAB0;
    *&v55 = v15;
    v16 = v15;
    [v14 enumerateObjectsUsingBlock:buf];
    v17 = [v16 componentsJoinedByString:{@", "}];

    database = [(BCCloudKitDatabaseController *)self database];
    *buf = 138544130;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 2114;
    v54 = dCopy;
    LOWORD(v55) = 2048;
    *(&v55 + 2) = database;
    _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneIDs:%{public}@, optionsByRecordZoneID:%{public}@ self.database=%p", buf, 0x2Au);
  }

  database2 = [(BCCloudKitDatabaseController *)self database];
  if (database2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v54 = sub_1E461ECFC;
    *&v55 = sub_1E461ED0C;
    *(&v55 + 1) = objc_opt_new();
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = sub_1E461ECFC;
    v47[4] = sub_1E461ED0C;
    v48 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v20 = [objc_alloc(MEMORY[0x1E695B918]) initWithRecordZoneIDs:changesCopy configurationsByRecordZoneID:dCopy];
    [v20 setFetchAllChanges:1];
    bds_defaultConfiguration = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [bds_defaultConfiguration setContainer:container];

    [bds_defaultConfiguration setQualityOfService:17];
    [bds_defaultConfiguration setDiscretionaryNetworkBehavior:0];
    [bds_defaultConfiguration setAutomaticallyRetryNetworkFailures:0];
    [v20 setConfiguration:bds_defaultConfiguration];
    database3 = [(BCCloudKitDatabaseController *)self database];
    [v20 setDatabase:database3];

    objc_initWeak(&location, self);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1E46238EC;
    v45[3] = &unk_1E875A808;
    v45[4] = self;
    v45[5] = buf;
    [v20 setRecordChangedBlock:v45];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1E4623B4C;
    v44[3] = &unk_1E875A830;
    v44[4] = self;
    [v20 setRecordWithIDWasDeletedBlock:v44];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1E4623DAC;
    v41[3] = &unk_1E875A880;
    v41[4] = self;
    v24 = changesCopy;
    v42 = v24;
    v43 = buf;
    [v20 setRecordZoneChangeTokensUpdatedBlock:v41];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1E4624070;
    v37[3] = &unk_1E875A8D0;
    v37[4] = self;
    v25 = v24;
    v38 = v25;
    v39 = v47;
    v40 = buf;
    [v20 setRecordZoneFetchCompletionBlock:v37];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1E46247C0;
    v31[3] = &unk_1E875A970;
    v31[4] = self;
    objc_copyWeak(&v36, &location);
    v34 = v47;
    v32 = v25;
    v35 = buf;
    v33 = handlerCopy;
    v26 = BDSCloudKitLog([v20 setFetchRecordZoneChangesCompletionBlock:v31]);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *v49 = 138543618;
      v50 = containerIdentifier2;
      v51 = 2112;
      v52 = v20;
      _os_log_impl(&dword_1E45E0000, v26, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges Adding fetchRecordZoneChangesOperation=%@", v49, 0x16u);
    }

    database4 = [(BCCloudKitDatabaseController *)self database];
    [database4 addOperation:v20];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);

    _Block_object_dispose(v47, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = _Block_copy(handlerCopy);
    if (v29)
    {
      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
      v29[2](v29, v30);
    }
  }
}

- (void)p_internetReachabilityChanged:(id)changed
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4625258;
  block[3] = &unk_1E875A008;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)p_informObserversOfAttachmentChange
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = BDSCloudKitLog(self);
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
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfAttachmentChange. Attached to container: %@", buf, 0x16u);
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

                [*(*(&v21 + 1) + 8 * v19++) databaseController:self attachmentChanged:{-[BCCloudKitDatabaseController attachedToContainer](self, "attachedToContainer")}];
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }
}

- (void)p_informObserversOfRecordsChanged:(id)changed
{
  v11 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = BDSCloudKitLog(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v10 = containerIdentifier;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged.", buf, 0xCu);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([changedCopy count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E4625880;
    v8[3] = &unk_1E875A998;
    v8[4] = self;
    [changedCopy enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)changed forZones:(id)zones completion:(id)completion
{
  changedCopy = changed;
  zonesCopy = zones;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E4625A64;
  v14[3] = &unk_1E8759CE0;
  v14[4] = self;
  v15 = changedCopy;
  v16 = zonesCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = zonesCopy;
  v13 = changedCopy;
  os_unfair_lock_lock(&self->_zoneObserversLock);
  sub_1E4625A64(v14);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)p_informObserversOfRecordsChanged:(id)changed forRecordType:(id)type
{
  v33 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  typeCopy = type;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v10 = BDSCloudKitLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543874;
    v28 = containerIdentifier;
    v29 = 2050;
    v30 = [changedCopy count];
    v31 = 2114;
    v32 = typeCopy;
    _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged: changedRecords.count=%{public}lu recordType=%{public}@", buf, 0x20u);
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
            v20 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:changedCopy copyItems:1];
            [v19 databaseController:self recordsChanged:v20];

            ++v18;
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
  v36 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v7 = BDSCloudKitLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v33 = containerIdentifier;
    v34 = 2114;
    v35 = zoneCopy;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfCompletedFetchOfZone zoneName=%{public}@", buf, 0x16u);
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

                [*(*(&v22 + 1) + 8 * v20++) databaseController:self fetchedAllRecordsInZone:zoneCopy];
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v18);
          }
        }

        ++v12;
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

- (id)p_archiveToData
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
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
    v18 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v18];
    v7 = v18;
    v8 = v7;
    if (v7)
    {
      v9 = BDSCloudKitLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706988();
      }
    }

    else
    {
      -[BCCloudKitDatabaseController setHasSubscription:](self, "setHasSubscription:", [v6 decodeIntegerForKey:@"hasUpdatedSubscription"] == 1);
      v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
      [(BCCloudKitDatabaseController *)self setServerChangeToken:v10];

      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v9 = [v6 decodeObjectOfClasses:v13 forKey:@"changedRecordZoneIDs"];

      if (v9)
      {
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v9];
      }

      else
      {
        v14 = objc_opt_new();
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v14];
      }

      v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
      [(BCCloudKitDatabaseController *)self setContainerIdentifier:v15];

      v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"userRecordID"];
      [(BCCloudKitDatabaseController *)self setUserRecordID:v16];

      [v6 finishDecoding];
    }
  }

  return 0;
}

+ (id)encodeRecordSystemFields:(id)fields
{
  v3 = MEMORY[0x1E696ACC8];
  fieldsCopy = fields;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [fieldsCopy encodeSystemFieldsWithCoder:v5];

  [v5 finishEncoding];
  encodedData = [v5 encodedData];

  return encodedData;
}

+ (id)decodeRecordFromSystemFields:(id)fields
{
  v3 = MEMORY[0x1E696ACD0];
  fieldsCopy = fields;
  v11 = 0;
  v5 = [[v3 alloc] initForReadingFromData:fieldsCopy error:&v11];

  v6 = v11;
  v7 = v6;
  if (v6)
  {
    v8 = BDSCloudKitLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706988();
    }

    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695BA60]) initWithCoder:v5];
    [v5 finishDecoding];
  }

  return v9;
}

+ (void)startInternetConnectionReachabilityNotifier
{
  v2 = +[BDSReachability sharedReachabilityForInternetConnection];
  [v2 startNotifier];
}

- (void)_deleteRecordZonesWithIDs:(id)ds qualityOfService:(int64_t)service completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v12 = BDSCloudKitLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = dsCopy;
    _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_INFO, "Deleting zone: (%{public}@)", buf, 0xCu);
  }

  if (self->_container)
  {
    v13 = [objc_alloc(MEMORY[0x1E695B9B0]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:dsCopy];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_1E4626CB0;
    v19 = &unk_1E875A9E8;
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

  v13 = _Block_copy(completionCopy);
  if (v13)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:5 userInfo:0];
    (*(v13 + 2))(v13, v15);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v8 = BDSCloudKitLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4706A60(self);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4626E70;
  block[3] = &unk_1E875A470;
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
  v8 = BDSCloudKitLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4706AFC(self);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4627228;
  block[3] = &unk_1E875A470;
  block[4] = self;
  v13 = errorCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = errorCopy;
  dispatch_async(accessQueue, block);
}

- (void)zonesDeletedOrReset:(id)reset completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  completionCopy = completion;
  v8 = BDSCloudKitLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v15 = containerIdentifier;
    v16 = 2114;
    v17 = resetCopy;
    _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - zonesDeletedOrReset: %{public}@", buf, 0x16u);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E462746C;
  v12[3] = &unk_1E875A3D0;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4627668;
    block[3] = &unk_1E8759FE0;
    block[4] = self;
    v12 = v8;
    v13 = observerCopy;
    dispatch_async(accessQueue, block);
  }

  else
  {
    v10 = BDSCloudKitLog(typeCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706B98();
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4627870;
    block[3] = &unk_1E8759FE0;
    block[4] = self;
    v12 = v8;
    v13 = observerCopy;
    dispatch_async(accessQueue, block);
  }

  else
  {
    v10 = BDSCloudKitLog(typeCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706B98();
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E4627AB0;
    v14[3] = &unk_1E875A030;
    v14[4] = self;
    v15 = observerCopy;
    dispatch_async(accessQueue, v14);
  }

  else
  {
    v6 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706CEC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)addObserver:(id)observer zoneID:(id)d
{
  observerCopy = observer;
  dCopy = d;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E4627CE8;
  v10[3] = &unk_1E8759FE0;
  v11 = observerCopy;
  v12 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  v9 = observerCopy;
  os_unfair_lock_lock(&self->_zoneObserversLock);
  sub_1E4627CE8(v10);
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4627F58;
    block[3] = &unk_1E875AA60;
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
    v10 = BDSCloudKitLog(dCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706DD0();
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46283E8;
    block[3] = &unk_1E875A178;
    objc_copyWeak(&v9, &location);
    v8 = storeCopy;
    dispatch_async(accessQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706EAC(v6);
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
  v22 = sub_1E461ECFC;
  v23 = sub_1E461ED0C;
  v24 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1E4628740;
  v14 = &unk_1E875AA88;
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