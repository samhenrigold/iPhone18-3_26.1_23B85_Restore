@interface NRDUpdateDaemonServerImpl
+ (id)sharedInstance;
- (BOOL)_isBrainRelaunchRequired:(id)required;
- (BOOL)isConnectionEntitled:(id)entitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NRDUpdateDaemonServerImpl)init;
- (void)getNRDUpdateBrainEndpoint:(id)endpoint;
- (void)requestExit:(int)exit reason:(id)reason relaunchError:(id)error;
- (void)runUntilExit;
- (void)updateCompleted:(id)completed;
- (void)updateHelper:(id)helper callback:(id)callback;
@end

@implementation NRDUpdateDaemonServerImpl

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[NRDUpdateDaemonServerImpl sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __43__NRDUpdateDaemonServerImpl_sharedInstance__block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(NRDUpdateDaemonServerImpl);
  v3 = sharedInstance___instance;
  sharedInstance___instance = v2;

  objc_autoreleasePoolPop(v1);
}

- (void)runUntilExit
{
  allowBackgroundActivity = [(NRDUpdateDaemonServerImpl *)self allowBackgroundActivity];
  v4 = objc_autoreleasePoolPush();
  +[NSXPCListener enableTransactions];
  v5 = dispatch_queue_create("com.apple.NRDUpdated.connectionQueue", &_dispatch_queue_attr_concurrent);
  v6 = __connectionQueue;
  __connectionQueue = v5;

  v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.NRDUpdated"];
  v8 = __listener;
  __listener = v7;

  [__listener setDelegate:self];
  [__listener _setQueue:__connectionQueue];
  v9 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download"];
  [v9 setPreregistered:1];
  v10 = [v9 description];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke;
  v27[3] = &unk_100018890;
  v28 = allowBackgroundActivity;
  v27[4] = self;
  v11 = objc_retainBlock(v27);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_309;
  v24[3] = &unk_1000188B8;
  v12 = v10;
  v25 = v12;
  v26 = @"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download";
  [v9 setCheckInHandler:v24];
  if (allowBackgroundActivity)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_310;
    v20[3] = &unk_1000188E0;
    v21 = v12;
    v22 = @"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download";
    v23 = v11;
    [v9 scheduleWithBlock:v20];
  }

  v13 = dispatch_get_global_queue(17, 0);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_312;
  v18 = &unk_100018908;
  v19 = v11;
  v14 = v11;
  dispatch_async(v13, &v15);

  objc_autoreleasePoolPop(v4);
  [(NRDUpdateDaemonServerImpl *)self _run:v15];
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_2;
  v1[3] = &unk_100018890;
  v2 = *(a1 + 40);
  v1[4] = *(a1 + 32);
  if (__listener_block_invoke_onceToken != -1)
  {
    dispatch_once(&__listener_block_invoke_onceToken, v1);
  }
}

id __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_2(uint64_t a1)
{
  v2 = MGCopyAnswer();
  if (v2 != kCFBooleanFalse || (v35 = 0u, v36 = 0u, v33 = 0u, v34 = 0u, v31 = 0u, v32 = 0u, v29 = 0u, v30 = 0u, v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, v23 = 0u, v24 = 0u, *buf = 0u, v22 = 0u, v20 = 256, sysctlbyname("kern.bootargs", buf, &v20, 0, 0)))
  {
    CFRelease(v2);
    v4 = (a1 + 40);
    if (*(a1 + 40))
    {
      goto LABEL_4;
    }

LABEL_18:
    v13 = nrdSharedLogger(v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Skipping RecoveryOSUpdateBrain launch on startup because background activity is not allowed.";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v16 = strstr(buf, "msu_nrd_brain_no_launch=1");
  CFRelease(v2);
  v4 = (a1 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v16)
  {
    v13 = nrdSharedLogger(v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Skipping RecoveryOSUpdateBrain launch on startup due to nvram boot-arg msu_nrd_brain_no_launch=1";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_4:
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"EnableUpdateOnLaunch"];
  if (v6)
  {
    v7 = v6;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"EnableUpdateOnLaunch"];

    if (!v9)
    {
      v11 = nrdSharedLogger(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping RecoveryOSUpdateBrain launch on startup", buf, 2u);
      }

      v13 = nrdSharedLogger(v12);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v14 = "To enable RecoveryOSUpdateBrain launch on startup set the following for the 'mobile' user: defaults write com.apple.mobile.NRDUpdated EnableUpdateOnLaunch -BOOL YES";
      goto LABEL_20;
    }
  }

  else
  {
  }

  v15 = nrdSharedLogger(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Attempting RecoveryOSUpdateBrain download/launch on startup", buf, 2u);
  }

  [*(a1 + 32) update:&__block_literal_global_308];
LABEL_22:
  if (*v4 == 1)
  {
    v17 = [*(a1 + 32) core];
    [v17 scheduleNRDUpdateBrainReScan:1];

    v18 = [*(a1 + 32) core];
    [v18 scheduleNRDUpdateBrainPeriodicScan];
  }

  return [__listener resume];
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_305(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nrdSharedLogger(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_305_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RecoveryOSUpdateBrain launch completed successfully", v5, 2u);
  }
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_309(uint64_t a1)
{
  v2 = nrdSharedLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in.", &v9, 0x16u);
  }

  v6 = nrdSharedLogger(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in complete.", &v9, 0x16u);
  }
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_310(void *a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ fired.", &v11, 0x16u);
  }

  v7 = (*(a1[6] + 16))();
  v8 = nrdSharedLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ completed.", &v11, 0x16u);
  }

  v3[2](v3, 1);
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_312(uint64_t a1)
{
  v2 = nrdSharedLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Startup task executing", buf, 2u);
  }

  v3 = (*(*(a1 + 32) + 16))();
  v4 = nrdSharedLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Startup task execution complete.", v5, 2u);
  }
}

- (NRDUpdateDaemonServerImpl)init
{
  v8.receiver = self;
  v8.super_class = NRDUpdateDaemonServerImpl;
  v2 = [(NRDUpdateDaemonServerImpl *)&v8 init];
  if (v2)
  {
    v3 = [objc_opt_new() initWithDelegate:v2];
    [(NRDUpdateDaemonServerImpl *)v2 setCore:v3];
    v4 = dispatch_queue_create("com.apple.NRDUpdateDServer.update", 0);
    [(NRDUpdateDaemonServerImpl *)v2 setUpdateQueue:v4];

    v5 = dispatch_semaphore_create(0);
    updateSemaphore = v2->_updateSemaphore;
    v2->_updateSemaphore = v5;
  }

  return v2;
}

- (void)updateHelper:(id)helper callback:(id)callback
{
  helperCopy = helper;
  callbackCopy = callback;
  updateQueue = [(NRDUpdateDaemonServerImpl *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__NRDUpdateDaemonServerImpl_updateHelper_callback___block_invoke;
  block[3] = &unk_100018930;
  v12 = helperCopy;
  v13 = callbackCopy;
  block[4] = self;
  v9 = helperCopy;
  v10 = callbackCopy;
  dispatch_async(updateQueue, block);
}

void __51__NRDUpdateDaemonServerImpl_updateHelper_callback___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) needsRelaunchError];
  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) core];
    [v3 setUpdateOptions:v2];

    v4 = [*(a1 + 32) core];
    [v4 performUpdate:0];

    dispatch_semaphore_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) completedWithError];
    (*(v5 + 16))(v5, v6);
  }
}

- (BOOL)_isBrainRelaunchRequired:(id)required
{
  requiredCopy = required;
  if (!requiredCopy)
  {
    return 0;
  }

  v4 = requiredCopy;
  do
  {
    domain = [v4 domain];
    if ([domain isEqualToString:@"NRDUpdateErrorDomain"])
    {
      code = [v4 code];

      if (code == 112)
      {
        v9 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    userInfo = [v4 userInfo];
    v8 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    v4 = v8;
  }

  while (v8);
  v9 = 0;
LABEL_10:

  return v9;
}

- (void)updateCompleted:(id)completed
{
  completedCopy = completed;
  v5 = nrdSharedLogger([(NRDUpdateDaemonServerImpl *)self setCompletedWithError:completedCopy]);
  v6 = v5;
  if (completedCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl updateCompleted:];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "update completed successfully", v7, 2u);
  }

  if ([(NRDUpdateDaemonServerImpl *)self _isBrainRelaunchRequired:completedCopy])
  {
    [(NRDUpdateDaemonServerImpl *)self requestExit:0 reason:@"NRD brain has downloaded a new brain (via NSError)" relaunchError:completedCopy];
  }

  dispatch_semaphore_signal(self->_updateSemaphore);
}

- (void)requestExit:(int)exit reason:(id)reason relaunchError:(id)error
{
  reasonCopy = reason;
  errorCopy = error;
  v10 = nrdSharedLogger(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Daemon exit requested for reason: %{public}@", buf, 0xCu);
  }

  if (errorCopy)
  {
    [(NRDUpdateDaemonServerImpl *)self setNeedsRelaunchError:errorCopy];
  }

  updateQueue = [(NRDUpdateDaemonServerImpl *)self updateQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __62__NRDUpdateDaemonServerImpl_requestExit_reason_relaunchError___block_invoke;
  v13[3] = &unk_100018958;
  exitCopy = exit;
  v14 = reasonCopy;
  v12 = reasonCopy;
  dispatch_async(updateQueue, v13);
}

void __62__NRDUpdateDaemonServerImpl_requestExit_reason_relaunchError___block_invoke(uint64_t a1)
{
  v2 = sleep(1u);
  v3 = nrdSharedLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v4;
    v7 = 2114;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Exiting with status:%d for reason:%{public}@", v6, 0x12u);
  }

  exit(*(a1 + 40));
}

- (void)getNRDUpdateBrainEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  core = [(NRDUpdateDaemonServerImpl *)self core];

  if (!core)
  {
    v15 = NSDebugDescriptionErrorKey;
    v16 = @"core is not initialized";
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = 604;
LABEL_6:
    v12 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:v11 userInfo:v10];
    endpointCopy[2](endpointCopy, 0, v12);

    goto LABEL_7;
  }

  core2 = [(NRDUpdateDaemonServerImpl *)self core];
  runningBrain = [core2 runningBrain];

  if (!runningBrain)
  {
    v13 = NSDebugDescriptionErrorKey;
    v14 = @"no running brain";
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = 605;
    goto LABEL_6;
  }

  core3 = [(NRDUpdateDaemonServerImpl *)self core];
  runningBrain2 = [core3 runningBrain];
  [runningBrain2 getListenerEndpoint:endpointCopy];

LABEL_7:
}

- (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.allow-NRDUpdated"];
  if (!v3)
  {
    v7 = nrdSharedLogger(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl isConnectionEntitled:];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v7 = nrdSharedLogger(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl isConnectionEntitled:];
    }

    goto LABEL_11;
  }

  bOOLValue = [v3 BOOLValue];
  if ((bOOLValue & 1) == 0)
  {
    v7 = nrdSharedLogger(bOOLValue);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl isConnectionEntitled:];
    }

LABEL_11:

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = nrdSharedLogger(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection", buf, 2u);
  }

  v7 = [(NRDUpdateDaemonServerImpl *)self isConnectionEntitled:connectionCopy];
  v8 = v7;
  if (v7)
  {
    [connectionCopy _setQueue:__connectionQueue];
    [connectionCopy setInterruptionHandler:&__block_literal_global_337];
    [connectionCopy setInvalidationHandler:&__block_literal_global_340];
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDUpdatedProtocol];
    [connectionCopy setExportedInterface:v9];
    [connectionCopy setExportedObject:self];
    v10 = nrdSharedLogger([connectionCopy resume]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection resumed", v13, 2u);
    }
  }

  else
  {
    v11 = nrdSharedLogger(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl listener:shouldAcceptNewConnection:];
    }

    [connectionCopy invalidate];
  }

  return v8;
}

void __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke(id a1)
{
  v1 = nrdSharedLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke_338(id a1)
{
  v1 = nrdSharedLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke_338_cold_1();
  }
}

@end