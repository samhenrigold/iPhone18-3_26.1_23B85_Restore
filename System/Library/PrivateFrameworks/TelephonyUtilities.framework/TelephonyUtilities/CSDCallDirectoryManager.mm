@interface CSDCallDirectoryManager
+ (id)sharedInstanceWithQueue:(id)queue;
- (BOOL)fetchLiveBlockingInfoForHandle:(id)handle;
- (CSDCallDirectoryManager)initWithQueue:(id)queue;
- (id)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number;
- (void)beginDailyMaintenanceWithActivity:(id)activity;
- (void)callDirectoryNSExtensionManager:(id)manager extensionsChanged:(id)changed;
@end

@implementation CSDCallDirectoryManager

+ (id)sharedInstanceWithQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DCC6C;
  block[3] = &unk_100619D38;
  queueCopy = queue;
  v3 = qword_1006ACC68;
  v4 = queueCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACC68, block);
  }

  v5 = qword_1006ACC60;
  v6 = qword_1006ACC60;

  return v5;
}

- (CSDCallDirectoryManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = CSDCallDirectoryManager;
  v6 = [(CSDCallDirectoryManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[CSDDeviceLockStateObserver alloc] initWithQueue:v7->_queue];
    deviceLockObserver = v7->_deviceLockObserver;
    v7->_deviceLockObserver = v8;

    objc_initWeak(&location, v7);
    v10 = v7->_deviceLockObserver;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DCEC0;
    v20[3] = &unk_10061A740;
    objc_copyWeak(&v21, &location);
    [(CSDDeviceLockStateObserver *)v10 performBlockAfterFirstUnlock:v20];
    v11 = objc_alloc_init(CXCallDirectoryNSExtensionManager);
    nsExtensionManager = v7->_nsExtensionManager;
    v7->_nsExtensionManager = v11;

    [(CXCallDirectoryNSExtensionManager *)v7->_nsExtensionManager setDelegate:v7 queue:v7->_queue];
    [(CXCallDirectoryNSExtensionManager *)v7->_nsExtensionManager beginMatchingExtensions];
    v13 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v13;

    v15 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v7->_serverBag;
    v7->_serverBag = v15;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000DCF58;
    handler[3] = &unk_10061B178;
    v19 = v7;
    xpc_activity_register("com.apple.telephonyutilities.callservicesd.calldirectorymaintenance.daily", XPC_ACTIVITY_CHECK_IN, handler);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (BOOL)fetchLiveBlockingInfoForHandle:(id)handle
{
  handleCopy = handle;
  featureFlags = [(CSDCallDirectoryManager *)self featureFlags];
  liveIDLookupEnabled = [featureFlags liveIDLookupEnabled];

  if (liveIDLookupEnabled)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = handleCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetchLiveBlockingInfoForHandle handle=%@", &v17, 0xCu);
    }

    manager = [(CSDCallDirectoryManager *)self manager];

    v11 = 0;
    if (handleCopy && manager)
    {
      manager2 = [(CSDCallDirectoryManager *)self manager];
      serverBag = [(CSDCallDirectoryManager *)self serverBag];
      [serverBag liveLookupTimeoutSeconds];
      v11 = [manager2 fetchLiveBlockingInfoForHandle:handleCopy timeout:?];
    }

    v14 = sub_100004778(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"NO";
      if (v11)
      {
        v15 = @"YES";
      }

      v17 = 138412546;
      v18 = handleCopy;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fetchLiveBlockingInfoForHandle handle=%@ block=%@", &v17, 0x16u);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number
{
  numberCopy = number;
  featureFlags = [(CSDCallDirectoryManager *)self featureFlags];
  liveIDLookupEnabled = [featureFlags liveIDLookupEnabled];

  if (liveIDLookupEnabled)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = numberCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber handle=%@", &v16, 0xCu);
    }

    manager = [(CSDCallDirectoryManager *)self manager];

    if (manager)
    {
      manager2 = [(CSDCallDirectoryManager *)self manager];
      serverBag = [(CSDCallDirectoryManager *)self serverBag];
      [serverBag liveLookupTimeoutSeconds];
      v13 = [manager2 firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:numberCopy timeout:?];
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_100004778(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = numberCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber handle=%@ blockedByExtension=%@", &v16, 0x16u);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)beginDailyMaintenanceWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = sub_100004778(activityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting activity state to XPC_ACTIVITY_STATE_CONTINUE", buf, 2u);
  }

  v6 = xpc_activity_set_state(activityCopy, 4);
  if (!v6)
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100474254();
    }
  }

  queue = [(CSDCallDirectoryManager *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DD4D4;
  v10[3] = &unk_100619D88;
  v10[4] = self;
  v11 = activityCopy;
  v9 = activityCopy;
  dispatch_async(queue, v10);
}

- (void)callDirectoryNSExtensionManager:(id)manager extensionsChanged:(id)changed
{
  managerCopy = manager;
  queue = [(CSDCallDirectoryManager *)self queue];
  dispatch_assert_queue_V2(queue);

  manager = [(CSDCallDirectoryManager *)self manager];

  if (manager)
  {
    [(CSDCallDirectoryManager *)self setCountOfNotificationsReceived:[(CSDCallDirectoryManager *)self countOfNotificationsReceived]+ 1];
    v9 = [NSString stringWithFormat:@"extensionsChangedForCallDirectoryExtensionManager-%lu", [(CSDCallDirectoryManager *)self countOfNotificationsReceived]];
    v10 = +[CSDTransactionManager sharedInstance];
    [v10 beginTransactionIfNecessaryForObject:v9 withReason:@"CXCallDirectoryNSExtensionManagerDelegate"];

    manager2 = [(CSDCallDirectoryManager *)self manager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000DDA34;
    v13[3] = &unk_10061A498;
    v13[4] = self;
    v14 = v9;
    v12 = v9;
    [manager2 synchronizeExtensionsWithCompletionHandler:v13];
  }

  else
  {
    v12 = sub_100004778(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1004743B4();
    }
  }
}

@end