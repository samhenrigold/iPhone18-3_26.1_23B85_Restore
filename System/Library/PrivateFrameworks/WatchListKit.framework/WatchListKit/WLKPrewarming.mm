@interface WLKPrewarming
+ (id)sharedInstance;
- (WLKPrewarming)init;
- (id)_connection;
- (id)_init;
- (void)_onQueue_prewarmDevice;
- (void)_prefetchAppLibrary;
- (void)_prefetchIfNeeded:(id)needed alwaysPrefetchConfig:(BOOL)config;
- (void)_prewarmConfigurationWithConfigCachePolicy:(unint64_t)policy;
- (void)prewarmDevice;
- (void)prewarmDeviceAndNetwork;
- (void)prewarmSubscriptionData;
- (void)prewarmWithConfigCachePolicy:(unint64_t)policy;
@end

@implementation WLKPrewarming

uint64_t __31__WLKPrewarming_sharedInstance__block_invoke()
{
  v0 = [[WLKPrewarming alloc] _init];
  v1 = sharedInstance___sharedInstance_1;
  sharedInstance___sharedInstance_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = WLKPrewarming;
  v2 = [(WLKPrewarming *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.watchlistkit.prewarm", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.watchlistkit.prefetch", v5);
    prefetchQueue = v2->_prefetchQueue;
    v2->_prefetchQueue = v6;
  }

  return v2;
}

- (void)_prefetchAppLibrary
{
  v2 = WLKSystemLogObject(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - prefetchAppLibrary begin", v4, 2u);
  }

  v3 = dispatch_get_global_queue(17, 0);
  dispatch_async(v3, &__block_literal_global_21_0);
}

+ (id)sharedInstance
{
  if (sharedInstance___once_4 != -1)
  {
    +[WLKPrewarming sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_38];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __28__WLKPrewarming__connection__block_invoke_39;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __36__WLKPrewarming__prefetchAppLibrary__block_invoke(uint64_t a1)
{
  v1 = WLKStartupSignpostLogObject(a1);
  v2 = os_signpost_id_generate(v1);

  v4 = WLKStartupSignpostLogObject(v3);
  v5 = v4;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Config.prefetchAppLibrary", &unk_272A8884E, buf, 2u);
  }

  v6 = WLKStartupSignpostLogObject(+[WLKAppLibrary defaultAppLibrary]);
  v7 = v6;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, v2, "Config.prefetchAppLibrary", &unk_272A8884E, v11, 2u);
  }

  v9 = WLKSystemLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - prefetchAppLibrary end", v10, 2u);
  }
}

- (WLKPrewarming)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)prewarmWithConfigCachePolicy:(unint64_t)policy
{
  [(WLKPrewarming *)self _prewarmConfigurationWithConfigCachePolicy:policy];

  [(WLKPrewarming *)self _prefetchAppLibrary];
}

- (void)_prewarmConfigurationWithConfigCachePolicy:(unint64_t)policy
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke;
  v6[3] = &unk_279E60CC0;
  v7[1] = policy;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  dispatch_async(workQueue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming", &unk_272A8884E, buf, 2u);
  }

  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 134217984;
    v16 = v5;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Start prewarm, configCachePolicy = %lu", buf, 0xCu);
  }

  v7 = WLKStartupSignpostLogObject(v6);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LocationManager.init", &unk_272A8884E, buf, 2u);
  }

  v8 = WLKStartupSignpostLogObject(+[WLKLocationManager defaultLocationManager]);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LocationManager.init", &unk_272A8884E, buf, 2u);
  }

  v10 = WLKStartupSignpostLogObject(v9);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch", &unk_272A8884E, buf, 2u);
  }

  v11 = +[WLKConfigurationManager sharedInstance];
  v12 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke_13;
  v13[3] = &unk_279E60C98;
  v14[1] = v12;
  objc_copyWeak(v14, (a1 + 40));
  v13[4] = *(a1 + 32);
  [v11 fetchConfigurationWithOptions:0 cachePolicy:v12 queryParameters:0 completion:v13];

  objc_destroyWeak(v14);
}

void __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke_13(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23[0]) = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - done fetching config", v23, 2u);
  }

  v6 = WLKStartupSignpostLogObject(v5);
  if (os_signpost_enabled(v6))
  {
    LOWORD(v23[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch", &unk_272A8884E, v23, 2u);
  }

  v7 = (*(a1 + 48) < 6uLL) & (0x32u >> *(a1 + 48));
  v8 = +[WLKLaunchConfiguration sharedInstance];
  v9 = [v8 alwaysPrefetchAppConfiguration];

  v10 = [v3 isFromDiskCache];
  v11 = v10;
  v12 = WLKSystemLogObject(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 67109632;
    v23[1] = v11;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v9;
    _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Check prefetching: isFromDiskCache: %d, doesPolicyAllowInvalidConfig: %d, alwaysPrefetchConfig: %d", v23, 0x14u);
  }

  if ((v11 & (v7 | v9)) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _prefetchIfNeeded:v3 alwaysPrefetchConfig:v9];
  }

  v15 = WLKStartupSignpostLogObject(v13);
  if (os_signpost_enabled(v15))
  {
    LOWORD(v23[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Daemon", &unk_272A8884E, v23, 2u);
  }

  v16 = [*(a1 + 32) _connection];
  v17 = [v16 remoteObjectProxyWithErrorHandler:&__block_literal_global_18_1];

  [v17 ping];
  v18 = WLKStartupSignpostLogObject([v17 checkPendingPlaybackReports]);
  if (os_signpost_enabled(v18))
  {
    LOWORD(v23[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Daemon", &unk_272A8884E, v23, 2u);
  }

  v20 = WLKStartupSignpostLogObject(v19);
  if (os_signpost_enabled(v20))
  {
    LOWORD(v23[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming", &unk_272A8884E, v23, 2u);
  }

  v22 = WLKSystemLogObject(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23[0]) = 0;
    _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - end prewarm", v23, 2u);
  }
}

void __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke_15(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKSystemLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Error: Unable to communicate with the remote object proxy (%@)", &v4, 0xCu);
  }
}

- (void)_prefetchIfNeeded:(id)needed alwaysPrefetchConfig:(BOOL)config
{
  neededCopy = needed;
  prefetchQueue = self->_prefetchQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke;
  v9[3] = &unk_279E602F0;
  configCopy = config;
  v10 = neededCopy;
  v8 = neededCopy;
  dispatch_async(prefetchQueue, v9);
}

void __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  if ((*(a1 + 40) & 1) != 0 || (a1 = *(a1 + 32)) == 0 || (a1 = [a1 isValid], (a1 & 1) == 0))
  {
    v2 = WLKSystemLogObject(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v1;
      _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Prefetching the configuration, cachePolicy=%lu", buf, 0xCu);
    }

    v4 = WLKStartupSignpostLogObject(v3);
    v5 = os_signpost_id_generate(v4);

    v7 = WLKStartupSignpostLogObject(v6);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Config.SilentFetch", &unk_272A8884E, buf, 2u);
    }

    v9 = +[WLKConfigurationManager sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke_23;
    v10[3] = &__block_descriptor_40_e52_v24__0__WLKServerConfigurationResponse_8__NSError_16l;
    v10[4] = v5;
    [v9 fetchConfigurationWithOptions:0 cachePolicy:v1 queryParameters:0 completion:v10];
  }
}

void __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke_23(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Config.SilentFetch", &unk_272A8884E, buf, 2u);
  }

  v6 = WLKSystemLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Done silent fetching", v7, 2u);
  }
}

- (void)prewarmDevice
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__WLKPrewarming_prewarmDevice__block_invoke;
  v4[3] = &unk_279E5EC50;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__WLKPrewarming_prewarmDevice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WLKStartupSignpostLogObject(WeakRetained);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Device", &unk_272A8884E, buf, 2u);
  }

  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - start prewarmDevice", v10, 2u);
  }

  v5 = WLKStartupSignpostLogObject([WeakRetained _onQueue_prewarmDevice]);
  if (os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Device", &unk_272A8884E, v9, 2u);
  }

  v7 = WLKSystemLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - end prewarmDevice", v8, 2u);
  }
}

- (void)prewarmSubscriptionData
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WLKPrewarming_prewarmSubscriptionData__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __40__WLKPrewarming_prewarmSubscriptionData__block_invoke(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Subscriptions.Fetch", &unk_272A8884E, buf, 2u);
  }

  v3 = +[WLKSubscriptionStore sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__WLKPrewarming_prewarmSubscriptionData__block_invoke_25;
  v4[3] = &unk_279E60D08;
  v4[4] = *(a1 + 32);
  [v3 fetchSubscriptionData:0 completion:v4];
}

void __40__WLKPrewarming_prewarmSubscriptionData__block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v15 = @"WLKPrewarmSubscriptionDataNotificationErrorKey";
    v7 = [WLKSanitizer sanitizeError:v6];
    v16[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"WLKPrewarmSubscriptionDataDidComplete" object:*(a1 + 32) userInfo:v8];

  v11 = WLKSystemLogObject(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - done refreshing subs", v14, 2u);
  }

  v13 = WLKStartupSignpostLogObject(v12);
  if (os_signpost_enabled(v13))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Subscriptions.Fetch", &unk_272A8884E, v14, 2u);
  }
}

- (void)_onQueue_prewarmDevice
{
  dispatch_assert_queue_V2(self->_workQueue);
  v2 = +[WLKConfigurationManager sharedInstance];
  v3 = +[WLKAppLibrary defaultAppLibrary];
}

- (void)prewarmDeviceAndNetwork
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke;
  v4[3] = &unk_279E5EC50;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WLKStartupSignpostLogObject(WeakRetained);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.start", &unk_272A8884E, buf, 2u);
  }

  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - start prewarmNonPersonalized", buf, 2u);
  }

  v5 = dispatch_semaphore_create(0);
  v6 = WLKStartupSignpostLogObject(v5);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.bag.start", &unk_272A8884E, buf, 2u);
  }

  v7 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke_31;
  v14[3] = &unk_279E60390;
  v8 = v5;
  v15 = v8;
  [v7 isFullTVAppEnabledwithCompletion:v14];
  [WeakRetained _onQueue_prewarmDevice];
  v9 = dispatch_time(0, 10000000000);
  v10 = dispatch_semaphore_wait(v8, v9);
  v11 = WLKStartupSignpostLogObject(v10);
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.end", &unk_272A8884E, buf, 2u);
  }

  v13 = WLKSystemLogObject(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - end prewarmNonPersonalized", buf, 2u);
  }
}

intptr_t __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke_31(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.bag.end", &unk_272A8884E, v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __28__WLKPrewarming__connection__block_invoke(uint64_t a1)
{
  v1 = WLKSystemLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Connection interrupted.", v2, 2u);
  }
}

void __28__WLKPrewarming__connection__block_invoke_39(uint64_t a1)
{
  v2 = WLKSystemLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;
  }
}

@end