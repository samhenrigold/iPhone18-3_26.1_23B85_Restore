@interface Daemon
+ (id)daemon;
- (AMSBagValue)changeLanguageURL;
- (AMSBagValue)trustedDomains;
- (Daemon)init;
- (id)addObserverForBackgroundTaskWithIdentifierPrefix:(id)prefix withBlock:(id)block;
- (id)cachedObjectForKey:(id)key;
- (void)_expireCachedObjectForKey:(id)key;
- (void)_finishProtectionClassCMigrationIfNeeded;
- (void)_getShowingDialogWithMessage:(id)message connection:(id)connection;
- (void)_handleWakeWithName:(const char *)name job:(id)job;
- (void)_initBackgroundTaskAgent;
- (void)_networkUsageStateChangeNotification:(id)notification;
- (void)_observeNotifications;
- (void)_operationCountChanged:(id)changed;
- (void)_reloadOperationKeepAliveTransaction;
- (void)_reloadWiFiManager;
- (void)_setGlobalState;
- (void)addBackgroundTaskWithRequest:(id)request;
- (void)addKeepAliveOperationQueue:(id)queue;
- (void)batterySaverWatcherDidChangeState:(id)state;
- (void)beginShowingDialog;
- (void)cacheObject:(id)object withKey:(id)key expirationInterval:(double)interval;
- (void)cancelBackgroundTaskWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)endShowingDialog;
- (void)keepAliveWithAssertion:(id)assertion block:(id)block;
- (void)releaseKeepAliveAssertion:(id)assertion;
- (void)removeBackgroundTaskObserver:(id)observer;
- (void)removeCachedObjectForKey:(id)key;
- (void)removeKeepAliveOperationQueue:(id)queue;
- (void)start;
- (void)takeKeepAliveAssertion:(id)assertion;
@end

@implementation Daemon

+ (id)daemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CD9F8;
  block[3] = &unk_100327378;
  block[4] = self;
  if (qword_100384088 != -1)
  {
    dispatch_once(&qword_100384088, block);
  }

  return qword_100384080;
}

- (void)_reloadOperationKeepAliveTransaction
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  keepAliveOperationQueues = self->_keepAliveOperationQueues;
  v4 = [(NSMutableSet *)keepAliveOperationQueues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(keepAliveOperationQueues);
        }

        if ([*(*(&v8 + 1) + 8 * i) operationCount] > 0)
        {
          if (!self->_aliveForOperationQueues)
          {
            self->_aliveForOperationQueues = 1;
            [(Daemon *)self takeKeepAliveAssertion:@"com.apple.itunesstored.keepQueuesAlive"];
          }

          return;
        }
      }

      v5 = [(NSMutableSet *)keepAliveOperationQueues countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (self->_aliveForOperationQueues)
  {
    self->_aliveForOperationQueues = 0;
    [(Daemon *)self releaseKeepAliveAssertion:@"com.apple.itunesstored.keepQueuesAlive"];
  }
}

- (void)_reloadWiFiManager
{
  if ([+[ISNetworkObserver isUsingNetwork] sharedInstance]
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = +[WiFiManager sharedWiFiManager];

  [v3 setClientType:v2];
}

- (Daemon)init
{
  v22.receiver = self;
  v22.super_class = Daemon;
  v2 = [(Daemon *)&v22 init];
  v3 = v2;
  if (v2)
  {
    [(Daemon *)v2 _warmUpSharedURLCache];
    v3->_backgroundTaskObservers = objc_alloc_init(NSMutableDictionary);
    v3->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.Daemon", 0);
    v3->_keepAliveTransactions = objc_alloc_init(NSCountedSet);
    v3->_keepAliveTransactionStore = objc_opt_new();
    v3->_satisfiedWakeRequests = xpc_dictionary_create(0, 0, 0);
    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 addObserver:v3 selector:"_networkUsageStateChangeNotification:" name:ISNetworkUsageStateChangedNotification object:0];
    v5 = +[ISOperationQueue mainQueue];
    [(NSNotificationCenter *)v4 addObserver:v3 selector:"_operationCountChanged:" name:ISOperationQueueOperationCountChangedNotification object:v5];
    v3->_keepAliveOperationQueues = [[NSMutableSet alloc] initWithObjects:{v5, 0}];
    dispatchQueue = v3->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CD760;
    block[3] = &unk_100327378;
    block[4] = v3;
    dispatch_async(dispatchQueue, block);
    v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v3->_dispatchQueue);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001CD768;
    handler[3] = &unk_100327378;
    handler[4] = v3;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(v7);
    v8 = +[NSFileManager defaultManager];
    v25[0] = CPSharedResourcesDirectory();
    v25[1] = @"Library";
    v25[2] = @"Caches";
    v25[3] = @"com.apple.storeServices.watchAnalytics";
    v9 = [NSString pathWithComponents:[NSArray arrayWithObjects:v25 count:4]];
    if ([(NSFileManager *)v8 fileExistsAtPath:v9])
    {
      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = shouldLog | 2;
      }

      else
      {
        v12 = shouldLog;
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 & 2;
      }

      if (v14)
      {
        v23 = 138543362;
        v24 = v9;
        v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "Removing unused cached data at: %{public}@", &v23, 12);
        if (v15)
        {
          v16 = v15;
          v17 = [NSString stringWithCString:v15 encoding:4];
          free(v16);
          v19 = v17;
          SSFileLog();
        }
      }

      [(NSFileManager *)v8 removeItemAtPath:v9 error:0, v19];
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:SSAccountStoreChangedNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISNetworkUsageStateChangedNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISOperationQueueOperationCountChangedNotification object:0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  satisfiedWakeRequests = self->_satisfiedWakeRequests;
  if (satisfiedWakeRequests)
  {
    xpc_release(satisfiedWakeRequests);
  }

  jetsamSource = self->_jetsamSource;
  if (jetsamSource)
  {
    dispatch_source_cancel(jetsamSource);
    dispatch_release(self->_jetsamSource);
  }

  sigTermSource = self->_sigTermSource;
  if (sigTermSource)
  {
    dispatch_source_cancel(sigTermSource);
    dispatch_release(self->_sigTermSource);
  }

  v8.receiver = self;
  v8.super_class = Daemon;
  [(Daemon *)&v8 dealloc];
}

- (void)addBackgroundTaskWithRequest:(id)request
{
  requestIdentifier = [request requestIdentifier];
  if (requestIdentifier)
  {
    v6 = requestIdentifier;
    uTF8String = [requestIdentifier UTF8String];
    copyBackgroundTaskAgentJob = [request copyBackgroundTaskAgentJob];
    if (copyBackgroundTaskAgentJob)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001CDC6C;
      handler[3] = &unk_10032BA20;
      handler[4] = self;
      handler[5] = v6;
      handler[6] = copyBackgroundTaskAgentJob;
      xpc_activity_register(uTF8String, copyBackgroundTaskAgentJob, handler);
      v9 = +[SSLogConfig sharedConfig];
      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = shouldLog | 2;
      }

      else
      {
        v11 = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 2;
      }

      if (v13)
      {
        v22 = 138543362;
        v23 = v6;
        v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "Added background task: %{public}@", &v22, 12);
        goto LABEL_19;
      }
    }

    else
    {
      v15 = +[SSLogConfig sharedConfig];
      shouldLog2 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        v17 = shouldLog2 | 2;
      }

      else
      {
        v17 = shouldLog2;
      }

      oSLogObject2 = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v19 = v17;
      }

      else
      {
        v19 = v17 & 2;
      }

      if (v19)
      {
        v22 = 138543362;
        v23 = v6;
        v14 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "No criteria for background task: %{public}@", &v22, 12);
LABEL_19:
        if (v14)
        {
          v20 = v14;
          [NSString stringWithCString:v14 encoding:4];
          free(v20);
          SSFileLog();
        }
      }
    }
  }
}

- (void)addKeepAliveOperationQueue:(id)queue
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CDD5C;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = queue;
  dispatch_async(dispatchQueue, v4);
}

- (id)addObserverForBackgroundTaskWithIdentifierPrefix:(id)prefix withBlock:(id)block
{
  v6 = [block copy];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CDE80;
  block[3] = &unk_10032AF90;
  block[4] = self;
  block[5] = prefix;
  block[6] = v6;
  dispatch_sync(dispatchQueue, block);
  return v6;
}

- (void)beginShowingDialog
{
  notify_post([kITunesDaemonWillDisplayDialog UTF8String]);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE1CC;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)cachedObjectForKey:(id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1001CE2D4;
  v11 = sub_1001CE2E4;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE2F0;
  block[3] = &unk_10032AF40;
  block[4] = self;
  block[5] = key;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)cacheObject:(id)object withKey:(id)key expirationInterval:(double)interval
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001CE3AC;
  v6[3] = &unk_10032BA98;
  v6[4] = object;
  v6[5] = self;
  v6[6] = key;
  *&v6[7] = interval;
  dispatch_async(dispatchQueue, v6);
}

- (void)cancelBackgroundTaskWithIdentifier:(id)identifier
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CE5FC;
  v4[3] = &unk_100327350;
  v4[4] = identifier;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)endShowingDialog
{
  notify_post([kITunesDaemonDidDismissDialog UTF8String]);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE7EC;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)keepAliveWithAssertion:(id)assertion block:(id)block
{
  [(Daemon *)self takeKeepAliveAssertion:?];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE8A0;
  block[3] = &unk_100327408;
  block[5] = assertion;
  block[6] = block;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (void)takeKeepAliveAssertion:(id)assertion
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CE988;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = assertion;
  dispatch_async(dispatchQueue, v4);
}

- (void)releaseKeepAliveAssertion:(id)assertion
{
  v5 = dispatch_time(0, 15000000000);
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CEAB8;
  v7[3] = &unk_100327350;
  v7[4] = self;
  v7[5] = assertion;
  dispatch_after(v5, dispatchQueue, v7);
}

- (void)removeBackgroundTaskObserver:(id)observer
{
  if (observer)
  {
    dispatchQueue = self->_dispatchQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001CEBA8;
    v4[3] = &unk_100327350;
    v4[4] = self;
    v4[5] = observer;
    dispatch_async(dispatchQueue, v4);
  }
}

- (void)removeCachedObjectForKey:(id)key
{
  if (key)
  {
    dispatchQueue = self->_dispatchQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001CED24;
    v4[3] = &unk_100327350;
    v4[4] = self;
    v4[5] = key;
    dispatch_async(dispatchQueue, v4);
  }
}

- (void)removeKeepAliveOperationQueue:(id)queue
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CEDA4;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = queue;
  dispatch_async(dispatchQueue, v4);
}

- (void)start
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v46 = 138412802;
    v47 = objc_opt_class();
    v48 = 2080;
    v49 = "Oct 22 2025";
    v50 = 2080;
    v51 = "21:33:20";
    v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Starting... (Built: %s %s)", &v46, 32);
    if (v7)
    {
      v8 = v7;
      v9 = [NSString stringWithCString:v7 encoding:4];
      free(v8);
      v37 = v9;
      SSFileLog();
    }
  }

  xpc_track_activity();
  [(Daemon *)self _finishProtectionClassCMigrationIfNeeded];
  [(Daemon *)self _setGlobalState];
  [(Daemon *)self _initBackgroundTaskAgent];
  [(Daemon *)self _observeNotifications];
  +[UserNotificationManager sharedManager];
  v10 = +[SSXPCServer mainServer];
  v11 = +[DownloadController controller];
  [v11 observeXPCServer:v10];
  v12 = +[MicroPaymentQueue paymentQueue];
  [v12 observeXPCServer:v10];
  [AccountPasswordSettingsController observeXPCServer:v10];
  [AppReceiptController observeXPCServer:v10];
  [DaemonBiometricKeychain observeXPCServer:v10];
  [DaemonBiometricStore observeXPCServer:v10];
  [DirectUploadController observeXPCServer:v10];
  [DistributedNotificationCenter observeXPCServer:v10];
  [ErrorHandlerManager observeXPCServer:v10];
  [EventDispatcher observeXPCServer:v10];
  [KeyValueStore observeXPCServer:v10];
  [IPodLibrary observeXPCServer:v10];
  [+[MetricsController sharedInstance](MetricsController observeXPCServer:"observeXPCServer:", v10];
  [PurchaseController observeXPCServer:v10];
  [PurchaseManifest observeXPCServer:v10];
  [+[PushNotificationController sharedInstance](PushNotificationController observeXPCServer:"observeXPCServer:", v10];
  [SoftwareUpdatesStore observeXPCServer:v10];
  [SpringBoardUtility observeXPCServer:v10];
  [StoreDownloadQueue observeXPCServer:v10];
  [StorePreorderQueue observeXPCServer:v10];
  [+[StoreServicesRequestQueue sharedInstance](StoreServicesRequestQueue observeXPCServer:"observeXPCServer:", v10];
  [NetworkRequestQueue observeXPCServer:v10];
  [v10 addObserver:self selector:"_getShowingDialogWithMessage:connection:" forMessage:131];
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog2;
  }

  oSLogObject2 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v17 = objc_opt_class();
    v46 = 138412290;
    v47 = v17;
    LODWORD(v39) = 12;
    v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Starting XPC server", &v46, v39);
    if (v18)
    {
      v19 = v18;
      v20 = [NSString stringWithCString:v18 encoding:4];
      free(v19);
      v38 = v20;
      SSFileLog();
    }
  }

  [v10 start];
  [(Daemon *)self takeKeepAliveAssertion:@"com.apple.itunesstored.launch"];
  v21 = dispatch_time(0, 10000000000);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CF548;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_after(v21, dispatchQueue, block);
  [v11 start];
  [v12 start];
  [+[PurchaseController sharedController](PurchaseController "sharedController")];
  [+[AppReceiptController sharedController](AppReceiptController "sharedController")];
  [+[DirectUploadController sharedController](DirectUploadController "sharedController")];
  [+[CacheDeleteCoordinator sharedInstance](CacheDeleteCoordinator updatePurgeableStorage];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  bagTimers = self->_bagTimers;
  v24 = [(NSMutableArray *)bagTimers countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(bagTimers);
        }

        [*(*(&v40 + 1) + 8 * i) start];
      }

      v25 = [(NSMutableArray *)bagTimers countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v25);
  }

  +[ExplicitPreferenceManager sharedManager];
  v28 = [[BatterySaverWatcher alloc] initWithDelegate:self];
  self->_batterySaverWatcher = v28;
  [(Daemon *)self batterySaverWatcherDidChangeState:v28];
  +[PurchaseActionsManager registerInstallAttributionDatabaseCleanTask];
  +[PurchaseActionsManager registerInstallAttributionPingbackRetryTask];
  -[NSUserDefaults registerDefaults:](+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), "registerDefaults:", +[NSDictionary dictionaryWithContentsOfURL:](NSDictionary, "dictionaryWithContentsOfURL:", [+[NSBundle mainBundle](NSBundle URLForResource:"URLForResource:withExtension:" withExtension:@"Defaults", @"plist"]));
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kSSDaemonLaunchedNotification, 0, 0, 1u);
  v30 = +[SSLogConfig sharedDaemonConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    LODWORD(v32) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v32) = shouldLog3;
  }

  oSLogObject3 = [v30 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v32 = v32;
  }

  else
  {
    v32 &= 2u;
  }

  if (v32)
  {
    v34 = objc_opt_class();
    v46 = 138412290;
    v47 = v34;
    LODWORD(v39) = 12;
    v35 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Started", &v46, v39);
    if (v35)
    {
      v36 = v35;
      [NSString stringWithCString:v35 encoding:4];
      free(v36);
      SSFileLog();
    }
  }
}

- (AMSBagValue)changeLanguageURL
{
  v2 = objc_alloc_init(ISLoadURLBagOperation);
  v3 = objc_alloc_init(AMSBinaryPromise);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CF7D8;
  v17[3] = &unk_100327378;
  v17[4] = v3;
  [v2 setCompletionBlock:v17];
  v4 = +[ISOperationQueue mainQueue];
  v22 = v2;
  [v4 addOperations:+[NSArray arrayWithObjects:count:](NSArray waitUntilFinished:{"arrayWithObjects:count:", &v22, 1), 1}];
  v16 = 0;
  if ([v3 resultWithTimeout:&v16 error:60.0])
  {
    return +[AMSBagValue frozenBagValueWithKey:value:valueType:](AMSBagValue, "frozenBagValueWithKey:value:valueType:", @"change-language", [objc_msgSend(v2 "URLBag")], 5);
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = AMSLogableError();
    v18 = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed to get the change-language URL from the bag. error = %{public}@", &v18, 22);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v15 = v14;
      SSFileLog();
    }
  }

  return [AMSBagValue failingBagValueWithKey:@"change-language" valueType:5 error:v16, v15];
}

- (AMSBagValue)trustedDomains
{
  v2 = objc_alloc_init(ISLoadURLBagOperation);
  v3 = objc_alloc_init(AMSBinaryPromise);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CFA60;
  v17[3] = &unk_100327378;
  v17[4] = v3;
  [v2 setCompletionBlock:v17];
  v4 = +[ISOperationQueue mainQueue];
  v22 = v2;
  [v4 addOperations:+[NSArray arrayWithObjects:count:](NSArray waitUntilFinished:{"arrayWithObjects:count:", &v22, 1), 1}];
  v16 = 0;
  if ([v3 resultWithTimeout:&v16 error:60.0])
  {
    return +[AMSBagValue frozenBagValueWithKey:value:valueType:](AMSBagValue, "frozenBagValueWithKey:value:valueType:", @"trustedDomains", [objc_msgSend(v2 "URLBag")], 0);
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = AMSLogableError();
    v18 = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed to get the trustedDomains from the bag. error = %{public}@", &v18, 22);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v15 = v14;
      SSFileLog();
    }
  }

  return [AMSBagValue failingBagValueWithKey:@"trustedDomains" valueType:0 error:v16, v15];
}

- (void)batterySaverWatcherDidChangeState:(id)state
{
  batterySaverEnabled = [state batterySaverEnabled];
  v4 = +[SSLogConfig sharedDaemonConfig];
  v5 = v4;
  if (batterySaverEnabled)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: battery saver mode started", &v19, 12);
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4];
        free(v10);
        v18 = v11;
        SSFileLog();
      }
    }

    [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
  }

  else
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog2;
    }

    oSLogObject2 = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: battery saver mode ended", &v19, 12);
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4];
        free(v16);
        v18 = v17;
        SSFileLog();
      }
    }

    [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
  }
}

- (void)_getShowingDialogWithMessage:(id)message connection:(id)connection
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFD58;
  block[3] = &unk_1003273E0;
  block[4] = message;
  block[5] = self;
  block[6] = connection;
  dispatch_async(dispatchQueue, block);
}

- (void)_networkUsageStateChangeNotification:(id)notification
{
  if ([+[ISNetworkObserver isUsingNetwork:notification]])
  {

    [(Daemon *)self _reloadWiFiManager];
  }

  else
  {
    v4 = dispatch_time(0, 5000000000);
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CFE88;
    block[3] = &unk_100327378;
    block[4] = self;
    dispatch_after(v4, dispatchQueue, block);
  }
}

- (void)_operationCountChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFF04;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_expireCachedObjectForKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_cachedObjects objectForKey:?];
  if (v5)
  {
    [v5 setExpirationTimer:0];
    cachedObjects = self->_cachedObjects;

    [(NSMutableDictionary *)cachedObjects removeObjectForKey:key];
  }
}

- (void)_handleWakeWithName:(const char *)name job:(id)job
{
  v7 = [[NSString alloc] initWithUTF8String:name];
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v30 = 138412546;
    v31 = objc_opt_class();
    v32 = 2080;
    nameCopy = name;
    v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Background task status changed: [%s]", &v30, 22);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v22 = v14;
      SSFileLog();
    }
  }

  v15 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  backgroundTaskObservers = self->_backgroundTaskObservers;
  v17 = [(NSMutableDictionary *)backgroundTaskObservers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(backgroundTaskObservers);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        if ([v7 hasPrefix:{v21, v22}])
        {
          [v15 unionSet:{-[NSMutableDictionary objectForKey:](self->_backgroundTaskObservers, "objectForKey:", v21)}];
        }
      }

      v18 = [(NSMutableDictionary *)backgroundTaskObservers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D023C;
    block[3] = &unk_10032AE90;
    block[4] = v15;
    block[5] = v7;
    block[6] = job;
    v24 = dispatch_queue_create("com.apple.itunesstored.Daemon.observers", 0);
    dispatch_async(v24, block);
  }

  xpc_dictionary_set_value(self->_satisfiedWakeRequests, name, job);
}

- (void)_initBackgroundTaskAgent
{
  self->_bagTimers = objc_alloc_init(NSMutableArray);
  v3 = +[URLBagTimer subscriptionRenewTimer];
  [v3 setEventBlock:&stru_10032BAB8];
  [v3 setPreconditionsBlock:&stru_10032BAF8];
  bagTimers = self->_bagTimers;

  [(NSMutableArray *)bagTimers addObject:v3];
}

- (void)_finishProtectionClassCMigrationIfNeeded
{
  if (!+[ISFileProtectionClassMigrator isMigrationNeeded])
  {
    return;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    goto LABEL_3;
  }

  out_token = -1;
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001D091C;
  handler[3] = &unk_10032BB40;
  v19 = -1;
  v10 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, dispatchQueue, handler);
  if (!v10)
  {
    if (MKBDeviceUnlockedSinceBoot() != 1)
    {
      return;
    }

LABEL_3:
    if ((+[ISFileProtectionClassMigrator migrate]& 1) == 0)
    {
      v3 = +[SSLogConfig sharedDaemonConfig];
      if (!v3)
      {
        v3 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v3 shouldLog];
      v5 = [v3 shouldLogToDisk] ? shouldLog | 2 : shouldLog;
      oSLogObject = [v3 OSLogObject];
      v7 = os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR) ? v5 : v5 & 2u;
      if (v7)
      {
        LOWORD(v21[0]) = 0;
        v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "Data Protection migration to class C failed");
        goto LABEL_25;
      }
    }

    return;
  }

  v11 = v10;
  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog2 | 2;
  }

  else
  {
    v14 = shouldLog2;
  }

  oSLogObject2 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (v16)
  {
    v21[0] = 67109120;
    v21[1] = v11;
    v8 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "Registration for device first unlock notification failed: %u", v21);
LABEL_25:
    if (v8)
    {
      v17 = v8;
      [NSString stringWithCString:v8 encoding:4];
      free(v17);
      SSFileLog();
    }
  }
}

- (void)_observeNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = off_100383668();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1001D0BF4, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserverForName:SSDeviceStoreFrontChangedNotification object:0 queue:0 usingBlock:&stru_10032BB80];
  [(NSNotificationCenter *)v5 addObserverForName:SSAccountStoreChangedNotification object:0 queue:0 usingBlock:&stru_10032BBA0];
  v6 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 2uLL, 0);
  self->_jetsamSource = v6;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001D15B8;
  handler[3] = &unk_100327378;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_resume(self->_jetsamSource);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1001D1734, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_10032BBC0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10032BBE0);
  xpc_set_event_stream_handler(kNSURLSessionLaunchOnDemandNotificationName, &_dispatch_main_q, &stru_10032BC00);
}

- (void)_setGlobalState
{
  SSSetIsDaemon();
  [SSSQLiteDatabase _setTakesTaskCompletionAssertions:0];
  v3 = objc_alloc_init(SSLogFileOptions);
  [v3 setLogFileBaseName:@"itunesstored"];
  [v3 setLogDirectoryPath:{objc_msgSend(objc_msgSend(objc_msgSend(CPSharedResourcesDirectory(), "stringByAppendingPathComponent:", @"Library", "stringByAppendingPathComponent:", @"Logs", "stringByAppendingPathComponent:", @"com.apple.itunesstored"}];
  SSDebugSetFileLoggingOptions();

  copyProtocolConditionalContext = [+[ISDevice sharedInstance](ISDevice copyProtocolConditionalContext];
  [SSProtocolConditionalEvaluator setDefaultConditionalContext:copyProtocolConditionalContext];

  +[ISNetworkObserver sharedInstance];

  [(Daemon *)self _reloadWiFiManager];
}

@end