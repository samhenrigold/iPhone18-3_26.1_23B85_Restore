@interface PPNearbyWatchNotifier
+ (BOOL)isWatchAppRemoved;
+ (id)sharedNotifier;
- (id)discoverForNearbyWatchesWithCompletion:(id)completion;
- (id)discoverForTimeInterval:(double)interval signalLimit:(int64_t)limit completion:(id)completion;
- (void)_cleanupDiscoveryDidFindDevice:(BOOL)device error:(id)error;
- (void)cancelDiscovery;
- (void)didDiscoverDeviceWithAdvertisingID:(id)d signalStrength:(int64_t)strength;
- (void)prepareServiceConnectionIfNeeded;
@end

@implementation PPNearbyWatchNotifier

+ (BOOL)isWatchAppRemoved
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Bridge" allowPlaceholder:0 error:&v8];
  v3 = v8;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v10 = @"com.apple.Bridge";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_25DF4A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Error while retrieving application record %@ with error %@", buf, 0x16u);
  }

  applicationState = [v2 applicationState];
  if ([applicationState isInstalled])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    applicationState2 = [v2 applicationState];
    v5 = [applicationState2 isPlaceholder] ^ 1;
  }

  return v5;
}

+ (id)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    +[PPNearbyWatchNotifier sharedNotifier];
  }

  v3 = sharedNotifier_shareNotifier;

  return v3;
}

uint64_t __39__PPNearbyWatchNotifier_sharedNotifier__block_invoke()
{
  sharedNotifier_shareNotifier = objc_alloc_init(PPNearbyWatchNotifier);

  return MEMORY[0x2821F96F8]();
}

- (id)discoverForNearbyWatchesWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PPNearbyWatchNotifier_discoverForNearbyWatchesWithCompletion___block_invoke;
  v10[3] = &unk_2799FD438;
  v11 = completionCopy;
  v5 = completionCopy;
  v6 = [(PPNearbyWatchNotifier *)self discoverForTimeInterval:-55 signalLimit:v10 completion:30.0];
  v7 = v6;
  if (v6)
  {
    v8 = pbb_shared_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_25DF4A000, v8, OS_LOG_TYPE_DEFAULT, "Failed to begin discovering: %@", buf, 0xCu);
    }
  }

  return v7;
}

void __64__PPNearbyWatchNotifier_discoverForNearbyWatchesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = pbb_shared_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"No Watch Found";
    if (a3)
    {
      v7 = @"Found Watch";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_25DF4A000, v6, OS_LOG_TYPE_DEFAULT, "Finished discoverForNearbyWatches: %@", &v9, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, a3);
  }
}

- (id)discoverForTimeInterval:(double)interval signalLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v9 = +[PPNearbyWatchNotifier shouldScanForNearbyDevices];
  if (v9)
  {
    if (self->_timerSource)
    {
      v10 = pbb_shared_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25DF4A000, v10, OS_LOG_TYPE_DEFAULT, "Can't Discover While Already Discovering!", buf, 2u);
      }
    }

    else
    {
      v11 = +[PPDiscoveryManager sharedDiscoveryManager];
      [v11 setSignalLimitOverride:limit];

      v12 = +[PPDiscoveryManager sharedDiscoveryManager];
      [v12 setDiscoveryDelegate:self];

      v13 = +[PPDiscoveryManager sharedDiscoveryManager];
      [v13 begin];

      if (completionCopy)
      {
        v14 = [completionCopy copy];
        discoveryCompletion = self->_discoveryCompletion;
        self->_discoveryCompletion = v14;
      }

      v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      timerSource = self->_timerSource;
      self->_timerSource = v16;

      objc_initWeak(buf, self);
      v18 = self->_timerSource;
      v19 = dispatch_time(0, 1000000000 * interval);
      dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 100000000 * interval);
      v20 = self->_timerSource;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __72__PPNearbyWatchNotifier_discoverForTimeInterval_signalLimit_completion___block_invoke;
      handler[3] = &unk_2799FD460;
      objc_copyWeak(&v23, buf);
      dispatch_source_set_event_handler(v20, handler);
      dispatch_resume(self->_timerSource);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  return 0;
}

void __72__PPNearbyWatchNotifier_discoverForTimeInterval_signalLimit_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didStopDiscovering];
}

- (void)cancelDiscovery
{
  v3 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v3 end];

  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v5 = self->_timerSource;
    self->_timerSource = 0;
  }

  discoveryCompletion = self->_discoveryCompletion;
  self->_discoveryCompletion = 0;
}

- (void)_cleanupDiscoveryDidFindDevice:(BOOL)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  v6 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v6 end];

  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v8 = self->_timerSource;
    self->_timerSource = 0;
  }

  discoveryCompletion = self->_discoveryCompletion;
  if (discoveryCompletion)
  {
    discoveryCompletion[2](discoveryCompletion, errorCopy, deviceCopy);
    v10 = self->_discoveryCompletion;
    self->_discoveryCompletion = 0;
  }

  MEMORY[0x2821F96F8]();
}

- (void)didDiscoverDeviceWithAdvertisingID:(id)d signalStrength:(int64_t)strength
{
  dCopy = d;
  [(PPNearbyWatchNotifier *)self _cleanupDiscoveryDidFindDevice:1 error:0];
  v6 = +[PPNearbyWatchNotifier shouldScanForNearbyDevices];
  if (v6)
  {
    v7 = pbb_shared_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25DF4A000, v7, OS_LOG_TYPE_DEFAULT, " ", v10, 2u);
    }

    [(PPNearbyWatchNotifier *)self prepareServiceConnectionIfNeeded];
    notificationService = [(PPNearbyWatchNotifier *)self notificationService];
    v9 = [notificationService remoteObjectProxyWithErrorHandler:&__block_literal_global_13_0];
    [v9 notifyOfNearbyDevice:dCopy withReply:&__block_literal_global_17];
  }
}

void __75__PPNearbyWatchNotifier_didDiscoverDeviceWithAdvertisingID_signalStrength___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = pbb_shared_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_25DF4A000, v4, OS_LOG_TYPE_DEFAULT, "Error %@", &v5, 0xCu);
    }
  }
}

void __75__PPNearbyWatchNotifier_didDiscoverDeviceWithAdvertisingID_signalStrength___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_shared_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_25DF4A000, v3, OS_LOG_TYPE_DEFAULT, "PPNotifierService Success %@", &v5, 0xCu);
  }
}

- (void)prepareServiceConnectionIfNeeded
{
  v3 = pbb_shared_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25DF4A000, v3, OS_LOG_TYPE_DEFAULT, " ", v6, 2u);
  }

  notificationService = [(PPNearbyWatchNotifier *)self notificationService];
  if (!notificationService)
  {
    notificationService = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.Bridge.ppNotifierService"];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC6298];
    [notificationService setRemoteObjectInterface:v5];
    [(PPNearbyWatchNotifier *)self setNotificationService:notificationService];
    [notificationService resume];
  }
}

@end