@interface MSDManager
+ (id)sharedInstance;
- (MSDManager)init;
- (void)_clearCachedIconImage:(id)image;
- (void)_initializeBackgroundActivityTask;
- (void)_initializeCoalescerObject;
- (void)_markHomeKitInitialized;
- (void)_performStartup;
- (void)_savePublicDBInfoInDefaults;
- (void)_schedulePublicDBRefreshBackgroundTask;
- (void)_scheduleRefreshTask;
- (void)_setupMultiUser;
- (void)_setupNotifications;
- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler;
- (void)addMediaService:(id)service usingSetupBundles:(id)bundles completion:(id)completion;
- (void)getAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion;
- (void)getCachedAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion;
- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion;
- (void)getDefaultMediaService:(id)service homeUserID:(id)d completion:(id)completion;
- (void)getDefaultMediaServiceForAllUsers:(id)users;
- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion;
- (void)getPublicInfoForBundleID:(id)d completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion;
- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion;
- (void)getSupportedThirdPartyMediaServices:(id)services;
- (void)homeManager:(id)manager didHomeKitSyncComplete:(id)complete;
- (void)overrideAppleMusicSubscriptionStatus:(BOOL)status homeUserIDS:(id)s completion:(id)completion;
- (void)profilesManager:(id)manager didAddProfiles:(id)profiles;
- (void)profilesManager:(id)manager didUpdateProfiles:(id)profiles;
- (void)removeMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion;
- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)updateDefaultMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)updateProperty:(id)property homeID:(id)d homeUserID:(id)iD withOptions:(id)options completion:(id)completion;
@end

@implementation MSDManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000121E4;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059A70 != -1)
  {
    dispatch_once(&qword_100059A70, block);
  }

  v2 = qword_100059A68;

  return v2;
}

- (MSDManager)init
{
  v21.receiver = self;
  v21.super_class = MSDManager;
  v2 = [(MSDManager *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100030FE4(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[MSDManager init]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v5 = +[MSDDefaultsManager sharedManager];
    defaultsManager = v3->_defaultsManager;
    v3->_defaultsManager = v5;

    v7 = dispatch_queue_create("com.apple.mediasetupd.startupQueue", 0);
    startupQueue = v3->_startupQueue;
    v3->_startupQueue = v7;

    objc_initWeak(buf, v3);
    v9 = v3->_startupQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001246C;
    block[3] = &unk_1000509C0;
    objc_copyWeak(&v20, buf);
    dispatch_async(v9, block);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("com.apple.mediasetup.publicdb-refresh-queue", v10);
    publicDBRefreshQueue = v3->_publicDBRefreshQueue;
    v3->_publicDBRefreshQueue = v11;

    v3->_homeKitSyncComplete = 0;
    v13 = +[MSDHomeManager sharedManager];
    [v13 addDelegate:v3];

    v14 = [[MSServerMediator alloc] initWithAccountsDelegate:v3];
    mediator = v3->_mediator;
    v3->_mediator = v14;

    v16 = [[MSServer alloc] initWithMediator:v3->_mediator];
    server = v3->_server;
    v3->_server = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  return v3;
}

- (void)_performStartup
{
  v3 = +[MSDPushService sharedService];
  v4 = objc_opt_new();
  profilesManager = self->_profilesManager;
  self->_profilesManager = v4;

  [(MSDProfilesManager *)self->_profilesManager setDelegate:self];
  [(MSDManager *)self _setupNotifications];

  [(MSDManager *)self _schedulePublicDBRefreshBackgroundTask];
}

- (void)_setupMultiUser
{
  v2 = +[MSDDataController sharedInstance];
  homeManager = [v2 homeManager];
  v4 = +[CKContainer MSDCloudKitContainerID];
  v14 = v4;
  v5 = [NSArray arrayWithObjects:&v14 count:1];
  [homeManager registerToAcceptCloudSharesForContainers:v5];

  if (+[MSDeviceInfo deviceCanManageMultiUser])
  {
    v6 = +[MSDDataController sharedInstance];
    cloudManager = [v6 cloudManager];
    v8 = +[CKContainer MSDCloudKitContainer];
    privateCloudDatabase = [v8 privateCloudDatabase];
    [cloudManager addSubscriptionForDatabase:privateCloudDatabase];

    v10 = +[MSDDataController sharedInstance];
    cloudManager2 = [v10 cloudManager];
    v12 = +[CKContainer MSDCloudKitContainer];
    sharedCloudDatabase = [v12 sharedCloudDatabase];
    [cloudManager2 addSubscriptionForDatabase:sharedCloudDatabase];
  }
}

- (void)_setupNotifications
{
  v3 = sub_100030FE4(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing XPC event stream handler", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000127CC;
  handler[3] = &unk_100051458;
  objc_copyWeak(&v6, buf);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_initializeCoalescerObject
{
  v3 = objc_alloc_init(CUCoalescer);
  [v3 setDispatchQueue:&_dispatch_main_q];
  [v3 setMinDelay:MSMinDelayInSecForSchedulingCoalescerTask];
  [v3 setMaxDelay:MSMaxDelayInSecsForSchedulingCoalescerTask];
  [v3 setInvalidationHandler:&stru_100051478];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012BF0;
  v8[3] = &unk_1000509C0;
  objc_copyWeak(&v9, &location);
  v4 = sub_100030FE4([v3 setActionHandler:v8]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initialized CUCoalescer object %{private}@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012C70;
  v6[3] = &unk_100051310;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_scheduleRefreshTask
{
  v3 = sub_100030FE4(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling task to refresh data with CloudKit", v4, 2u);
  }

  [(MSDManager *)self _initializeBackgroundActivityTask];
}

- (void)_initializeBackgroundActivityTask
{
  v2 = [NSBackgroundActivityScheduler alloc];
  v4 = [v2 initWithIdentifier:kBackgroundActivityDataRefreshTaskIdentifier];
  [v4 invalidate];
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_async(v3, &stru_100051498);
}

- (void)_savePublicDBInfoInDefaults
{
  v2 = +[MSDPublicDBManager shared];
  shouldUseCloudKit = [v2 shouldUseCloudKit];

  if (shouldUseCloudKit)
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = +[MSDPublicDBManager shared];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013020;
    v11[3] = &unk_1000514E0;
    v7 = v5;
    v12 = v7;
    [v6 syncDataWithCloudKit:v11];

    v8 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
    v9 = dispatch_group_wait(v7, v8);
    if (v9)
    {
      v10 = sub_100030FE4(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100017CB8();
      }
    }
  }

  else
  {
    v7 = sub_100030FE4(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = MSPublicDatabaseRefreshIntervalInSecs / 3600.0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Its been less than %f hours since last Public Database refresh, skipping check", buf, 0xCu);
    }
  }
}

- (void)_markHomeKitInitialized
{
  publicDBRefreshQueue = self->_publicDBRefreshQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013144;
  block[3] = &unk_100050AC0;
  block[4] = self;
  dispatch_async(publicDBRefreshQueue, block);
}

- (void)_schedulePublicDBRefreshBackgroundTask
{
  v3 = sub_100030FE4(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling background task for publicDB refreshes", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = +[BGSystemTaskScheduler sharedScheduler];
  publicDBRefreshQueue = self->_publicDBRefreshQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001328C;
  v6[3] = &unk_100051530;
  objc_copyWeak(&v7, buf);
  [v4 registerForTaskWithIdentifier:@"com.apple.mediasetupd.publicDBRefresh" usingQueue:publicDBRefreshQueue launchHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_clearCachedIconImage:(id)image
{
  imageCopy = image;
  v4 = [[MSDArtworkManager alloc] initWithServiceID:imageCopy remoteImageURL:0];

  removeCachedIconImage = [(MSDArtworkManager *)v4 removeCachedIconImage];
  v6 = removeCachedIconImage;
  v7 = sub_100030FE4(removeCachedIconImage);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully removed cached service icon image", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100017E04();
  }
}

- (void)getAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion
{
  servicesCopy = services;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v34 = servicesCopy;
    v35 = 2113;
    v36 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting available services for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x16u);
  }

  if (servicesCopy && identifierCopy)
  {
    v12 = +[MSDDataController sharedInstance];
    v29[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [servicesCopy UUIDString];
    v30[0] = uUIDString;
    v29[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [identifierCopy UUIDString];
    v30[1] = uUIDString2;
    v15 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000138F8;
    v27[3] = &unk_100051558;
    v28 = completionCopy;
    [v12 getAvailableServices:v15 completion:v27];

    v16 = v28;
LABEL_10:

    goto LABEL_11;
  }

  v17 = sub_100030FE4(v11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100017E40(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  if (completionCopy)
  {
    v25 = MSErrorDomain;
    v31 = MSUserInfoErrorStringKey;
    v32 = @"Failed to fetch available services, NIL identifiers provided";
    v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [NSError errorWithDomain:v25 code:3 userInfo:v16];
    (*(completionCopy + 2))(completionCopy, 0, v26);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)getCachedAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion
{
  servicesCopy = services;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v29 = servicesCopy;
    v30 = 2113;
    v31 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting available services for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x16u);
  }

  if (servicesCopy && identifierCopy)
  {
    v12 = +[MSDDataController sharedInstance];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100013C3C;
    v24[3] = &unk_100051558;
    v25 = completionCopy;
    [v12 getCachedAvailableServices:identifierCopy homeID:servicesCopy completion:v24];

    v13 = v25;
LABEL_10:

    goto LABEL_11;
  }

  v14 = sub_100030FE4(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100017E40(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  if (completionCopy)
  {
    v22 = MSErrorDomain;
    v26 = MSUserInfoErrorStringKey;
    v27 = @"Failed to fetch available services, NIL identifiers provided";
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = [NSError errorWithDomain:v22 code:3 userInfo:v13];
    (*(completionCopy + 2))(completionCopy, 0, v23);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)addMediaService:(id)service usingSetupBundles:(id)bundles completion:(id)completion
{
  serviceCopy = service;
  bundlesCopy = bundles;
  completionCopy = completion;
  v11 = objc_retainBlock(completionCopy);
  v12 = v11;
  if (v11)
  {
    if (bundlesCopy && (v11 = [bundlesCopy count]) != 0)
    {
      v13 = [bundlesCopy na_map:&stru_100051598];
      v14 = sub_100030FE4(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v32 = serviceCopy;
        v33 = 2113;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User is requesting to add %{private}@ to homes: %{private}@", buf, 0x16u);
      }

      v15 = [MSDTransactionTask createTransactionWithIdentifier:kAddServiceTransactionIdentifier];
      objc_initWeak(buf, self);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100014040;
      v25[3] = &unk_100051610;
      v29 = v12;
      v16 = v15;
      v26 = v16;
      objc_copyWeak(&v30, buf);
      v27 = serviceCopy;
      v28 = bundlesCopy;
      [MSAuthTokenProvider fetchAuthTokensForMediaService:v27 networkActivity:0 completion:v25];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      v17 = sub_100030FE4(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100017F88();
      }

      v13 = [NSError errorWithDomain:MSErrorDomain code:3 userInfo:0];
      (v12)[2](v12, 0, v13);
    }
  }

  else
  {
    v13 = sub_100030FE4(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100017FC4(v13, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

- (void)removeMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v14 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    serviceID = [serviceCopy serviceID];
    *buf = 138478339;
    v50 = serviceID;
    v51 = 2113;
    v52 = dCopy;
    v53 = 2113;
    v54 = iDCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User is requesting to remove %{private}@ for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x20u);
  }

  isServiceRemovable = [serviceCopy isServiceRemovable];
  if ((isServiceRemovable & 1) == 0)
  {
    serviceID2 = [serviceCopy serviceID];
    uUIDString = [serviceID2 UUIDString];
    v21 = [NSString stringWithFormat:@"Removing service %@ is prohibited", uUIDString];

    v25 = sub_100030FE4(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v21;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (completionCopy)
    {
      v26 = MSErrorDomain;
      v47 = MSUserInfoErrorStringKey;
      v48 = v21;
      v27 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v28 = [NSError errorWithDomain:v26 code:1 userInfo:v27];
      completionCopy[2](completionCopy, 0, v28);
    }

    goto LABEL_15;
  }

  if (dCopy && iDCopy)
  {
    v17 = +[MSDDataController sharedInstance];
    v43[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString2 = [dCopy UUIDString];
    v44[0] = uUIDString2;
    v43[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString3 = [iDCopy UUIDString];
    v44[1] = uUIDString3;
    v20 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100014940;
    v39[3] = &unk_1000515C0;
    v40 = serviceCopy;
    selfCopy = self;
    v42 = completionCopy;
    [v17 removeMediaService:v40 withUserInfo:v20 completion:v39];

    v21 = v40;
LABEL_15:

    goto LABEL_16;
  }

  v29 = sub_100030FE4(isServiceRemovable);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_100018234(v29, v30, v31, v32, v33, v34, v35, v36);
  }

  if (completionCopy)
  {
    v37 = MSErrorDomain;
    v45 = MSUserInfoErrorStringKey;
    v46 = @"Failed to remove service, NIL identifiers provided";
    v21 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v38 = [NSError errorWithDomain:v37 code:3 userInfo:v21];
    completionCopy[2](completionCopy, 0, v38);

    goto LABEL_15;
  }

LABEL_16:
}

- (void)updateDefaultMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v13 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    serviceID = [serviceCopy serviceID];
    *buf = 138478339;
    v38 = serviceID;
    v39 = 2113;
    v40 = dCopy;
    v41 = 2113;
    v42 = iDCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "User is requesting to update default service %{private}@ for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x20u);
  }

  if (dCopy && iDCopy)
  {
    v16 = +[MSDDataController sharedInstance];
    v33[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [dCopy UUIDString];
    v34[0] = uUIDString;
    v33[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [iDCopy UUIDString];
    v34[1] = uUIDString2;
    v19 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100014D68;
    v31[3] = &unk_100050CA0;
    v32 = completionCopy;
    [v16 updateDefaultMediaService:serviceCopy withUserInfo:v19 completion:v31];

    v20 = v32;
LABEL_10:

    goto LABEL_11;
  }

  v21 = sub_100030FE4(v15);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_100018314(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  if (completionCopy)
  {
    v29 = MSErrorDomain;
    v35 = MSUserInfoErrorStringKey;
    v36 = @"Failed to update default service, NIL identifiers provided";
    v20 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v30 = [NSError errorWithDomain:v29 code:3 userInfo:v20];
    (*(completionCopy + 2))(completionCopy, 0, v30);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)getDefaultMediaService:(id)service homeUserID:(id)d completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  completionCopy = completion;
  v10 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v34 = serviceCopy;
    v35 = 2113;
    v36 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting to fetch default service for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x16u);
  }

  if (serviceCopy && dCopy)
  {
    v12 = +[MSDDataController sharedInstance];
    v29[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [serviceCopy UUIDString];
    v30[0] = uUIDString;
    v29[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [dCopy UUIDString];
    v30[1] = uUIDString2;
    v15 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000150A0;
    v27[3] = &unk_100051638;
    v28 = completionCopy;
    [v12 getDefaultMediaService:v15 completion:v27];

    v16 = v28;
LABEL_10:

    goto LABEL_11;
  }

  v17 = sub_100030FE4(v11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1000183F4(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  if (completionCopy)
  {
    v25 = MSErrorDomain;
    v31 = MSUserInfoErrorStringKey;
    v32 = @"Failed to fetch default service, NIL identifiers provided";
    v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [NSError errorWithDomain:v25 code:3 userInfo:v16];
    (*(completionCopy + 2))(completionCopy, 0, v26);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateProperty:(id)property homeID:(id)d homeUserID:(id)iD withOptions:(id)options completion:(id)completion
{
  propertyCopy = property;
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  completionCopy = completion;
  v16 = completionCopy;
  if (!propertyCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_18;
    }

    v25 = MSErrorDomain;
    v53 = MSUserInfoErrorStringKey;
    v54 = @"Nil MediaService object";
    v24 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v26 = v25;
    v27 = 2;
LABEL_16:
    v38 = [NSError errorWithDomain:v26 code:v27 userInfo:v24];
    (v16)[2](v16, 0, v38);

    goto LABEL_17;
  }

  if (!optionsCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_18;
    }

    v28 = MSErrorDomain;
    v51 = MSUserInfoErrorStringKey;
    v52 = @"Nil property values";
    v24 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v26 = v28;
    v27 = 1;
    goto LABEL_16;
  }

  v17 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    serviceID = [propertyCopy serviceID];
    *buf = 138478339;
    v46 = serviceID;
    v47 = 2113;
    v48 = dCopy;
    v49 = 2113;
    v50 = iDCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "User is requesting to update property for %{private}@ for HomeID %{private}@ and HomeUserID %{private}@", buf, 0x20u);
  }

  if (dCopy && iDCopy)
  {
    v20 = +[MSDDataController sharedInstance];
    v41[0] = kCKDatabaseAccessUserInfoHomeIDKey;
    uUIDString = [dCopy UUIDString];
    v42[0] = uUIDString;
    v41[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    uUIDString2 = [iDCopy UUIDString];
    v42[1] = uUIDString2;
    v23 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001559C;
    v39[3] = &unk_100050CA0;
    v40 = v16;
    [v20 updateProperty:propertyCopy propertyInfo:optionsCopy withUserInfo:v23 completion:v39];

    v24 = v40;
LABEL_17:

    goto LABEL_18;
  }

  v29 = sub_100030FE4(v19);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_1000184D4(v29, v30, v31, v32, v33, v34, v35, v36);
  }

  if (v16)
  {
    v37 = MSErrorDomain;
    v43 = MSUserInfoErrorStringKey;
    v44 = @"Failed to update property, NIL identifiers provided";
    v24 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v26 = v37;
    v27 = 3;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  v10 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v29 = infoCopy;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User is requesting to fetch service info for %{private}@ and serviceID %@", buf, 0x16u);
  }

  if (infoCopy)
  {
    v11 = [infoCopy count];
    if (v11)
    {
      v12 = +[MSDDataController sharedInstance];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100015864;
      v24[3] = &unk_100051660;
      v25 = completionCopy;
      [v12 getServiceConfigurationInfo:infoCopy serviceID:dCopy completion:v24];

      v13 = v25;
LABEL_10:

      goto LABEL_11;
    }
  }

  v14 = sub_100030FE4(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000185B4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  if (completionCopy)
  {
    v22 = MSErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Failed to fetch service config info for Nil homeUserID";
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = [NSError errorWithDomain:v22 code:1 userInfo:v13];
    (*(completionCopy + 2))(completionCopy, 0, v23);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)getDefaultMediaServiceForAllUsers:(id)users
{
  if (users)
  {
    v4 = MSErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Function called on unsupported platform";
    usersCopy = users;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v4 code:11 userInfo:v6];
    (*(users + 2))(usersCopy, 0, v7);
  }
}

- (void)getPublicInfoForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100015AD4;
    v7[3] = &unk_100051688;
    v8 = dCopy;
    v9 = completionCopy;
    [MSDPublicDBManager getPublicInfoForBundleID:v8 completion:v7];
  }
}

- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion
{
  if (completion)
  {
    v7 = MSErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Function called on unsupported platform";
    completionCopy = completion;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v7 code:11 userInfo:v9];
    (*(completion + 2))(completionCopy, 0, 0, v10);
  }
}

- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion
{
  if (completion)
  {
    v7 = MSErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Function called on unsupported platform";
    completionCopy = completion;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v7 code:11 userInfo:v9];
    (*(completion + 2))(completionCopy, 0, v10);
  }
}

- (void)getResolvedServiceInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = MSErrorDomain;
    if (infoCopy)
    {
      v12 = NSLocalizedDescriptionKey;
      v13 = @"Function called on unsupported platform";
      v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v9 = v7;
      v10 = 11;
    }

    else
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"INIntent cannot be nil";
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = v7;
      v10 = 1;
    }

    v11 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion
{
  if (completion)
  {
    v6 = MSErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Function called on unsupported platform";
    completionCopy = completion;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v6 code:11 userInfo:v8];
    (*(completion + 2))(completionCopy, 0, v9);
  }
}

- (void)overrideAppleMusicSubscriptionStatus:(BOOL)status homeUserIDS:(id)s completion:(id)completion
{
  if (completion)
  {
    v6 = MSErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Function called on unsupported platform";
    completionCopy = completion;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v6 code:11 userInfo:v8];
    (*(completion + 2))(completionCopy, v9);
  }
}

- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    dCopy = d;
    v8 = [[NSUUID alloc] initWithUUIDString:dCopy];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000161C0;
    v9[3] = &unk_1000516B0;
    v10 = handlerCopy;
    [(MSDManager *)self getMediaServiceChoicesForSharedUser:v8 completion:v9];
  }
}

- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v13 = completionCopy;
  if (completionCopy)
  {
    v14 = sub_100030FE4(completionCopy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = iDCopy;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = infoCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Switching account info for user - %@ in home - %@, %@", buf, 0x20u);
    }

    if (infoCopy && dCopy && iDCopy)
    {
      v15 = +[MSDDataController sharedInstance];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000164B0;
      v19[3] = &unk_1000516D8;
      v20 = infoCopy;
      v21 = v13;
      [v15 switchUserAccountInfo:v20 homeID:dCopy homeUserID:iDCopy completion:v19];

      v16 = v20;
    }

    else
    {
      v17 = MSErrorDomain;
      v22 = NSLocalizedDescriptionKey;
      v23 = @"Failed to switch user account info, Nil Attributes provided";
      v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v18 = [NSError errorWithDomain:v17 code:1 userInfo:v16];
      (v13)[2](v13, v18);
    }
  }
}

- (void)getSupportedThirdPartyMediaServices:(id)services
{
  if (services)
  {
    v4 = MSErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Function called on unsupported platform";
    servicesCopy = services;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v4 code:11 userInfo:v6];
    (*(services + 2))(servicesCopy, 0, v7);
  }
}

- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion
{
  if (completion)
  {
    v5 = MSErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Function called on unsupported platform";
    completionCopy = completion;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v5 code:11 userInfo:v7];
    (*(completion + 2))(completionCopy, 0, v8);
  }
}

- (void)profilesManager:(id)manager didAddProfiles:(id)profiles
{
  managerCopy = manager;
  profilesCopy = profiles;
  v5 = sub_100030FE4(profilesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MSDManager profilesManager:didAddProfiles:]";
    *&buf[12] = 2112;
    *&buf[14] = profilesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s profile: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v64 = sub_100016E54;
  v65 = sub_100016E64;
  v66 = objc_opt_new();
  v40 = dispatch_semaphore_create(0);
  v6 = +[MSDPublicDBManager shared];
  shouldUseCloudKit = [v6 shouldUseCloudKit];

  if (shouldUseCloudKit)
  {
    v9 = sub_100030FE4(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 136315394;
      v60 = "[MSDManager profilesManager:didAddProfiles:]";
      v61 = 2048;
      v62 = MSPublicDatabaseRefreshIntervalInSecs / 3600.0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s its been more than %f hours since last update: Pulling from CK", v59, 0x16u);
    }

    v10 = +[MSDPublicDBManager shared];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100016E6C;
    v54[3] = &unk_100051700;
    v56 = buf;
    v11 = v40;
    v55 = v11;
    [v10 syncDataWithCloudKit:v54];

    v12 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
    v13 = dispatch_semaphore_wait(v11, v12);
    if (v13)
    {
      v14 = sub_100030FE4(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100018694();
      }
    }

    v15 = v55;
  }

  else
  {
    v15 = +[MSDPublicDBManager getCachedPublicInfo];
    v16 = [v15 mutableCopy];
    v17 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v16;
  }

  v18 = *(*&buf[8] + 40);
  if (v18 && (v18 = [v18 count]) != 0)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = profilesCopy;
    v19 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    v44 = v19;
    if (v19)
    {
      v43 = *v51;
      do
      {
        v45 = 0;
        do
        {
          if (*v51 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * v45);
          v21 = sub_100030FE4(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 138412290;
            v60 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Attempting to configure system with profileData %@", v59, 0xCu);
          }

          v22 = +[MSDPublicDBManager shared];
          v23 = [v22 createPublicDBInfoObjectFromDictionary:v20];

          v24 = [*(*&buf[8] + 40) mutableCopy];
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v25 = *(*&buf[8] + 40);
          v26 = [v25 countByEnumeratingWithState:&v46 objects:v57 count:16];
          if (v26)
          {
            v27 = *v47;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v47 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v46 + 1) + 8 * i);
                serviceID = [v29 serviceID];
                serviceID2 = [v23 serviceID];
                v32 = [serviceID isEqual:serviceID2];

                if (v32)
                {
                  [v24 removeObjectIdenticalTo:v29];
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v46 objects:v57 count:16];
            }

            while (v26);
          }

          v33 = [v24 mutableCopy];
          v34 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v33;

          [*(*&buf[8] + 40) na_safeAddObject:v23];
          v45 = v45 + 1;
        }

        while (v45 != v44);
        v19 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
        v44 = v19;
      }

      while (v19);
    }

    v36 = sub_100030FE4(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(*&buf[8] + 40);
      *v59 = 138412290;
      v60 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Updating PublicDB cachedCopy with Data %@", v59, 0xCu);
    }

    v38 = +[MSDDefaultsManager sharedManager];
    [v38 setObjectWithCustomClass:*(*&buf[8] + 40) forDefault:@"publicDBData"];
  }

  else
  {
    v38 = sub_100030FE4(v18);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000186D0();
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)profilesManager:(id)manager didUpdateProfiles:(id)profiles
{
  profilesCopy = profiles;
  v6 = [profilesCopy count];
  v7 = sub_100030FE4(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v56 = "[MSDManager profilesManager:didUpdateProfiles:]";
    v57 = 2112;
    v58 = profilesCopy;
    v59 = 2048;
    v60 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s profile: %@ activeProfilesOnDevice %lu", buf, 0x20u);
  }

  v8 = +[MSDDefaultsManager sharedManager];
  profilesEverInstalled = [v8 profilesEverInstalled];

  currentHome = sub_100030FE4(v10);
  v12 = os_log_type_enabled(currentHome, OS_LOG_TYPE_DEFAULT);
  if (profilesEverInstalled)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, currentHome, OS_LOG_TYPE_DEFAULT, "Developer profile loaded on device, checking service sanity", buf, 2u);
    }

    v13 = +[MSDHomeManager sharedManager];
    currentHome = [v13 currentHome];

    if (!currentHome)
    {
      v21 = sub_100030FE4(v14);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000187B0(v21, v37, v38, v39, v40, v41, v42, v43);
      }

      goto LABEL_23;
    }

    currentUser = [currentHome currentUser];
    uniqueIdentifier = [currentUser uniqueIdentifier];
    if (uniqueIdentifier)
    {
      v17 = uniqueIdentifier;
      uniqueIdentifier2 = [currentHome uniqueIdentifier];

      if (uniqueIdentifier2)
      {
        v20 = +[MSDDefaultsManager sharedManager];
        v21 = [v20 objectForKeyInDefaultDomain:@"publicDBData"];

        v22 = [v21 na_map:&stru_100051740];
        v23 = +[MSDDefaultsManager sharedManager];
        v24 = [v23 objectForKeyInDeveloperDomain:@"publicDBData"];

        v25 = [v24 na_map:&stru_100051760];
        v26 = [v25 mutableCopy];

        v27 = [profilesCopy na_map:&stru_1000517A0];
        [v26 removeObjectsInArray:v27];
        [v26 removeObjectsInArray:v22];
        if ([v26 count])
        {
          v45 = v27;
          v46 = v24;
          v47 = v22;
          v53[0] = kCKDatabaseAccessUserInfoHomeIDKey;
          uniqueIdentifier3 = [currentHome uniqueIdentifier];
          uUIDString = [uniqueIdentifier3 UUIDString];
          v54[0] = uUIDString;
          v53[1] = kCKDatabaseAccessUserInfoHomeUserIDKey;
          currentUser2 = [currentHome currentUser];
          uniqueIdentifier4 = [currentUser2 uniqueIdentifier];
          uUIDString2 = [uniqueIdentifier4 UUIDString];
          v54[1] = uUIDString2;
          v44 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];

          v34 = sub_100030FE4(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v56 = v26;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Remove services with IDS: %{private}@", buf, 0xCu);
          }

          v35 = +[MSDDataController sharedInstance];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_10001759C;
          v48[3] = &unk_1000517F0;
          v49 = profilesCopy;
          v24 = v46;
          v50 = v46;
          v51 = v26;
          selfCopy = self;
          v36 = v44;
          [v35 removeMediaServices:v51 withUserInfo:v44 completion:v48];

          v22 = v47;
          v27 = v45;
        }

        else
        {
          v36 = sub_100030FE4(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Everything is up to date, nothing to delete", buf, 2u);
          }
        }

LABEL_23:
        goto LABEL_24;
      }
    }

    else
    {
    }

    v21 = sub_100030FE4(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100018774();
    }

    goto LABEL_23;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, currentHome, OS_LOG_TYPE_DEFAULT, "Developer profile was not loaded on device, skipping service check", buf, 2u);
  }

LABEL_24:
}

- (void)homeManager:(id)manager didHomeKitSyncComplete:(id)complete
{
  v5 = [(MSDManager *)self startupQueue:manager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000179C0;
  block[3] = &unk_100050AC0;
  block[4] = self;
  dispatch_async(v5, block);
}

@end