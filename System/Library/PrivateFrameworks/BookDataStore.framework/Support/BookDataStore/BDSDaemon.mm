@interface BDSDaemon
+ (id)daemon;
- (BDSDaemon)init;
- (BOOL)preflightStartup;
- (void)dealloc;
- (void)lrq_setupBeforeListenersWithCompletion:(id)completion;
- (void)lrq_setupListeners;
- (void)serviceDelegate:(id)delegate didAcceptConnection:(id)connection;
- (void)sq_finishedStartingUp;
- (void)start;
@end

@implementation BDSDaemon

+ (id)daemon
{
  if (qword_1002748E8 != -1)
  {
    sub_1001BD28C();
  }

  v3 = qword_1002748E0;

  return v3;
}

- (BDSDaemon)init
{
  v16.receiver = self;
  v16.super_class = BDSDaemon;
  v2 = [(BDSDaemon *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_1000023E8(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BD2A0();
    }

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UNSPECIFIED, 0);
    v7 = dispatch_queue_create("com.apple.bookdatastored.xpc-listener-ready", v6);
    listenersReadyQueue = v3->_listenersReadyQueue;
    v3->_listenersReadyQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("com.apple.bookdatastored.startup-queue", v10);
    startupQueue = v3->_startupQueue;
    v3->_startupQueue = v11;

    v13 = _set_user_dir_suffix();
    if ((v13 & 1) == 0)
    {
      v14 = sub_1000023E8(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001BD2E0(v14);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_1000023E8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Daemon shutting down.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = BDSDaemon;
  [(BDSDaemon *)&v4 dealloc];
}

- (void)start
{
  v3 = sub_1000023E8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Startup: Daemon starting up.", buf, 2u);
  }

  listenersReadyQueue = [(BDSDaemon *)self listenersReadyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C50C;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_sync(listenersReadyQueue, block);
}

- (void)serviceDelegate:(id)delegate didAcceptConnection:(id)connection
{
  connectionCopy = connection;
  notificationConnection = [(BDSDaemon *)self notificationConnection];
  [notificationConnection didAcceptConnection:connectionCopy];
}

- (BOOL)preflightStartup
{
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = [[PDCPreflightManager alloc] initWithTargetQueue:0];
  v4 = [LSApplicationIdentity alloc];
  v5 = +[BDSAppBundleIdentifier bdsAppBundleIdentifier];
  v6 = [v4 initWithBundleIdentifier:v5 URL:0 personaUniqueString:0 personaType:4];

  v7 = [v3 requiresPreflightForApplication:v6];
  v8 = +[PDCPreflightManager isPreflightFeatureEnabled];
  v9 = BYSetupAssistantNeedsToRun();
  if (v2 == 1)
  {
    if (v9)
    {
      v10 = sub_1000023E8(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001BD49C();
      }
    }

    else
    {
      if ((v8 & v7) == 0)
      {
        v11 = 1;
        goto LABEL_8;
      }

      v10 = sub_1000023E8(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001BD460();
      }
    }
  }

  else
  {
    v10 = sub_1000023E8(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD424();
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)lrq_setupBeforeListenersWithCompletion:(id)completion
{
  completionCopy = completion;
  listenersReadyQueue = [(BDSDaemon *)self listenersReadyQueue];
  dispatch_assert_queue_V2(listenersReadyQueue);

  v6 = [[BDSServiceDelegate alloc] initWithServiceConnectionClient:self];
  [(BDSDaemon *)self setServiceDelegate:v6];

  v8 = objc_retainBlock(completionCopy);
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)lrq_setupListeners
{
  listenersReadyQueue = [(BDSDaemon *)self listenersReadyQueue];
  dispatch_assert_queue_V2(listenersReadyQueue);

  v5 = sub_1000023E8(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting up listeners.", buf, 2u);
  }

  v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.iBooks.BookDataStoreService"];
  [(BDSDaemon *)self setServiceListener:v6];

  serviceDelegate = [(BDSDaemon *)self serviceDelegate];
  serviceListener = [(BDSDaemon *)self serviceListener];
  [serviceListener setDelegate:serviceDelegate];

  serviceListener2 = [(BDSDaemon *)self serviceListener];
  [serviceListener2 resume];

  v10 = notify_post("com.apple.iBooks.BookDataStoreService.Started");
  LODWORD(serviceListener) = v10;
  v11 = sub_1000023E8(v10);
  v12 = v11;
  if (serviceListener)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD4D8();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posted Service Started notification", v15, 2u);
  }

  v13 = objc_alloc_init(BDSNotificationConnection);
  [(BDSDaemon *)self setNotificationConnection:v13];

  notificationConnection = [(BDSDaemon *)self notificationConnection];
  [notificationConnection startListeningForNotifications];
}

- (void)sq_finishedStartingUp
{
  startupQueue = [(BDSDaemon *)self startupQueue];
  dispatch_assert_queue_V2(startupQueue);

  v4 = +[BDSSyncUserDefaults makeOSStateHandler];
  [(BDSDaemon *)self setSyncUserDefaultsStateHandler:v4];
}

@end