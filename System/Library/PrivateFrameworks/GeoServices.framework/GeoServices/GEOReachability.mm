@interface GEOReachability
+ (id)sharedReachability;
- (GEOReachability)init;
- (void)_resetErrors;
@end

@implementation GEOReachability

+ (id)sharedReachability
{
  if (sharedReachability_onceToken != -1)
  {
    dispatch_once(&sharedReachability_onceToken, &__block_literal_global_145441);
  }

  v3 = sharedReachability_singleton;

  return v3;
}

- (void)_resetErrors
{
  if (self->_errorCount || self->_xpcErrors)
  {
    self->_errorCount = 0;
    self->_xpcErrors = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"GEOReachabilityChangedNotification" object:self];
  }
}

void __37__GEOReachability_sharedReachability__block_invoke()
{
  v0 = objc_alloc_init(GEOReachability);
  v1 = sharedReachability_singleton;
  sharedReachability_singleton = v0;
}

- (GEOReachability)init
{
  v15.receiver = self;
  v15.super_class = GEOReachability;
  v2 = [(GEOReachability *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_networkReachable = 1;
    v4 = +[GEOResourceManifestManager modernManager];
    v5 = MEMORY[0x1E69E96A0];
    [v4 addTileGroupObserver:v3 queue:MEMORY[0x1E69E96A0]];

    v6 = +[GEONetworkObserver sharedNetworkObserver];
    v3->_networkReachable = [v6 isNetworkReachable];

    v7 = +[GEONetworkObserver sharedNetworkObserver];
    [v7 addNetworkReachableObserver:v3 selector:sel__reachabilityChanged_];

    objc_initWeak(&location, v3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __23__GEOReachability_init__block_invoke;
    handler[3] = &unk_1E7070108;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch("com.apple.symptoms.hasAlternateAdvice", &v3->_symptomsAlternateAdviceToken, v5, handler);

    if (GEOConfigGetBOOL(475, &GeoServicesConfig_DaemonLaunchShouldRetryFailedXPCTileLoads_Metadata))
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __23__GEOReachability_init__block_invoke_2;
      v10[3] = &unk_1E7070108;
      objc_copyWeak(&v11, &location);
      notify_register_dispatch("GEODaemonDidStartDarwinNotification", &v3->_daemonLaunchNotifyToken, MEMORY[0x1E69E96A0], v10);

      objc_destroyWeak(&v11);
    }

    else
    {
      v3->_daemonLaunchNotifyToken = -1;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__offlineStateChanged_ name:@"GEOOfflineStateChangedNotification" object:0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end