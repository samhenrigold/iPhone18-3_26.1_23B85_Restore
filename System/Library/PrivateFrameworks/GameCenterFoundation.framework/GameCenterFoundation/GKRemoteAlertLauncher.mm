@interface GKRemoteAlertLauncher
+ (id)shared;
- (GKRemoteAlertLauncher)init;
- (void)cancelLaunchTimeoutTimer;
- (void)dealloc;
- (void)launchBypassingPreAuthentication:(BOOL)authentication forGame:(id)game hostPID:(int)d deeplink:(id)deeplink launchContext:(id)context observer:(id)observer;
- (void)notifyDashboardDidLaunch;
- (void)startLaunchTimeoutTimer;
@end

@implementation GKRemoteAlertLauncher

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[GKRemoteAlertLauncher shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

uint64_t __31__GKRemoteAlertLauncher_shared__block_invoke()
{
  v0 = objc_alloc_init(GKRemoteAlertLauncher);
  v1 = shared_sharedInstance;
  shared_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (GKRemoteAlertLauncher)init
{
  v5.receiver = self;
  v5.super_class = GKRemoteAlertLauncher;
  v2 = [(GKRemoteAlertLauncher *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.gamed.remoteAlertQueue", 0);
    [(GKRemoteAlertLauncher *)v2 setQueue:v3];
  }

  return v2;
}

- (void)startLaunchTimeoutTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v4 = dispatch_walltime(0, 5000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__GKRemoteAlertLauncher_startLaunchTimeoutTimer__block_invoke;
  handler[3] = &unk_2785DD760;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "RemoteAlert: _launchTimeoutTimer started.", v7, 2u);
  }

  dispatch_resume(v3);
  [(GKRemoteAlertLauncher *)self setLaunchTimeoutTimer:v3];
}

void __48__GKRemoteAlertLauncher_startLaunchTimeoutTimer__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = 0;
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "RemoteAlert: _launchTimeoutTimer fired. Did the dashboard successfully launch? GKRemoteAlertLauncher.isLaunching is set to %d", v5, 8u);
  }
}

- (void)notifyDashboardDidLaunch
{
  v7 = *MEMORY[0x277D85DE8];
  self->_isLaunching = 0;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    isLaunching = self->_isLaunching;
    v6[0] = 67109120;
    v6[1] = isLaunching;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "RemoteAlert: notifyDashboardDidLaunch -> GKRemoteAlertLauncher.isLaunching is set to %d", v6, 8u);
  }

  [(GKRemoteAlertLauncher *)self cancelLaunchTimeoutTimer];
}

- (void)cancelLaunchTimeoutTimer
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "RemoteAlert: _launchTimeoutTimer cancelled.", v6, 2u);
  }

  launchTimeoutTimer = self->_launchTimeoutTimer;
  if (launchTimeoutTimer)
  {
    dispatch_source_cancel(launchTimeoutTimer);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[GKRemoteAlertLauncher dealloc]";
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "RemoteAlert: %s", buf, 0xCu);
  }

  [(GKRemoteAlertLauncher *)self cancelLaunchTimeoutTimer];
  v5.receiver = self;
  v5.super_class = GKRemoteAlertLauncher;
  [(GKRemoteAlertLauncher *)&v5 dealloc];
}

- (void)launchBypassingPreAuthentication:(BOOL)authentication forGame:(id)game hostPID:(int)d deeplink:(id)deeplink launchContext:(id)context observer:(id)observer
{
  v11 = *&d;
  authenticationCopy = authentication;
  v61 = *MEMORY[0x277D85DE8];
  gameCopy = game;
  deeplinkCopy = deeplink;
  contextCopy = context;
  observerCopy = observer;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    bundleIdentifier = [gameCopy bundleIdentifier];
    [MEMORY[0x277CCABB0] numberWithInt:v11];
    v20 = v19 = gameCopy;
    *buf = 67110402;
    v50 = authenticationCopy;
    v51 = 2112;
    v52 = bundleIdentifier;
    v53 = 2112;
    v54 = v20;
    v55 = 2112;
    v56 = deeplinkCopy;
    v57 = 2112;
    v58 = contextCopy;
    v59 = 2112;
    v60 = observerCopy;
    _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "RemoteAlert: launchBypassingPreAuthentication:%d\n forGame:%@\n hostPID:%@\n deeplink:%@\n launchContext:%@\n observer:%@", buf, 0x3Au);

    gameCopy = v19;
  }

  self->_isLaunching = 1;
  if (!os_log_GKGeneral)
  {
    v21 = GKOSLoggers();
  }

  v22 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    isLaunching = self->_isLaunching;
    *buf = 67109120;
    v50 = isLaunching;
    _os_log_impl(&dword_227904000, v22, OS_LOG_TYPE_INFO, "RemoteAlert: GKRemoteAlertLauncher.isLaunching is set to %d", buf, 8u);
  }

  [(GKRemoteAlertLauncher *)self cancelLaunchTimeoutTimer];
  [(GKRemoteAlertLauncher *)self startLaunchTimeoutTimer];
  v46 = 0;
  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:gameCopy requiringSecureCoding:1 error:&v46];
  v25 = v46;
  if (v25)
  {
    if (!os_log_GKGeneral)
    {
      v26 = GKOSLoggers();
    }

    v27 = os_log_GKError;
    v28 = deeplinkCopy;
    v29 = observerCopy;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKRemoteAlertLauncher launchBypassingPreAuthentication:v25 forGame:v27 hostPID:? deeplink:? launchContext:? observer:?];
    }
  }

  else
  {
    v42 = gameCopy;
    v48[0] = v24;
    v47[0] = @"serialized-game";
    v47[1] = @"host-pid";
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v48[1] = v30;
    v47[2] = @"bypass-pre-authentication";
    v31 = [MEMORY[0x277CCABB0] numberWithBool:authenticationCopy];
    v47[3] = @"dashboard-launch-context";
    v48[2] = v31;
    v48[3] = contextCopy;
    v32 = contextCopy;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];
    v34 = [v33 mutableCopy];

    v28 = deeplinkCopy;
    if (deeplinkCopy)
    {
      allKeys = [deeplinkCopy allKeys];
      v36 = [allKeys count];

      if (v36)
      {
        [v34 setObject:deeplinkCopy forKeyedSubscript:@"deeplink"];
      }
    }

    v37 = objc_alloc_init(MEMORY[0x277D66BD0]);
    [v37 setUserInfo:v34];
    v38 = objc_alloc_init(MEMORY[0x277D66BC0]);
    [v38 setUserInfo:v34];
    v39 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.GameCenterRemoteAlert" viewControllerClassName:@"GKRemoteAlertViewController"];
    v40 = [MEMORY[0x277D66BF0] lookupHandlesForDefinition:v39 creatingIfNone:1 configurationContext:v37];
    firstObject = [v40 firstObject];

    v29 = observerCopy;
    if (observerCopy)
    {
      [firstObject registerObserver:observerCopy];
    }

    [firstObject activateWithContext:v38];

    gameCopy = v42;
    contextCopy = v32;
  }
}

- (void)launchBypassingPreAuthentication:(uint64_t)a1 forGame:(NSObject *)a2 hostPID:deeplink:launchContext:observer:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "RemoteAlert: Could not activate the remote alert due to archiving error=%@", &v2, 0xCu);
}

@end