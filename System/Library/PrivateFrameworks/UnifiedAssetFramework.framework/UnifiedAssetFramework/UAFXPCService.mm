@interface UAFXPCService
+ (unint64_t)_currentAssistantMode:(id *)mode;
+ (void)daemonLaunchTasks;
- (BOOL)_assistantEnabledChanged;
- (BOOL)_assistantLanguageChanged;
- (BOOL)_dictationEnabledChanged;
- (BOOL)_gmsEnabledChanged;
- (BOOL)_systemLanguageChanged;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UAFXPCService)initWithMachServiceName:(id)name subscriptionService:(BOOL)service;
- (UAFXPCService)initWithXPCListener:(id)listener subscriptionService:(BOOL)service;
- (void)_assistantGMSAvailabilityUpdate;
- (void)_assistantLanguageUpdate;
- (void)_assistantPreferencesUpdate;
- (void)_invalidate;
- (void)_startObservers;
- (void)_stopObservers;
- (void)_systemLanguageUpdate;
- (void)_updateAssetUtilitiesLanguage;
- (void)_updateAssistantSubscription;
- (void)_updateGMSSiriLanguageSubscription;
- (void)_updateMorphunSystemLanguageSubscription;
- (void)checkAssetStatus:(id)status;
- (void)configureCacheDeleteWithConfig:(id)config completion:(id)completion;
- (void)dealloc;
- (void)diagnosticInformation:(id)information;
- (void)diskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client completion:(id)completion;
- (void)downloadDictationAssetsForLanguage:(id)language;
- (void)downloadSiriAssets;
- (void)downloadSiriAssetsOverCellular;
- (void)expireSubscriptions:(id)subscriptions;
- (void)invalidate;
- (void)lockLatestAtomicInstance:(id)instance completion:(id)completion;
- (void)markAssetsExpired:(id)expired completion:(id)completion;
- (void)operationWithConfig:(id)config completion:(id)completion;
- (void)postAssetNotificationIfNeeded;
- (void)postDictationAssetNotificationForLanguage:(id)language;
- (void)runUpdates;
- (void)setSystemConfigurationForKey:(id)key withValue:(id)value completion:(id)completion;
- (void)start;
- (void)startAsync;
- (void)stop;
- (void)stopAsync;
- (void)subscribeWithConfig:(id)config userInitiated:(BOOL)initiated completion:(id)completion;
- (void)subscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user completion:(id)completion;
- (void)unsubscribeWithConfig:(id)config userInitiated:(BOOL)initiated completion:(id)completion;
@end

@implementation UAFXPCService

+ (void)daemonLaunchTasks
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[UAFXPCService daemonLaunchTasks]";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Running UAF daemon launch tasks", &v6, 0xCu);
  }

  v3 = +[UAFSubscriptionStoreManager writeManager];
  [v3 performDbUpgrade];

  +[UAFUserManager performUserCleanup];
  if (!+[UAFCommonUtilities isGameModeEnabled])
  {
    v4 = +[UAFSubscriptionStoreManager writeManager];
    v5 = +[UAFConfigurationManager defaultManager];
    [UAFAssetSetManager configureAssetDelivery:v4 configurationManager:v5 lockIfUnchanged:0];
  }
}

- (UAFXPCService)initWithMachServiceName:(id)name subscriptionService:(BOOL)service
{
  serviceCopy = service;
  v6 = MEMORY[0x1E696B0D8];
  nameCopy = name;
  v8 = [[v6 alloc] initWithMachServiceName:nameCopy];

  v9 = [(UAFXPCService *)self initWithXPCListener:v8 subscriptionService:serviceCopy];
  return v9;
}

- (UAFXPCService)initWithXPCListener:(id)listener subscriptionService:(BOOL)service
{
  listenerCopy = listener;
  v18.receiver = self;
  v18.super_class = UAFXPCService;
  v8 = [(UAFXPCService *)&v18 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    serviceName = [listenerCopy serviceName];
    v12 = [serviceName stringByAppendingString:@".queue"];

    v13 = dispatch_queue_create([v12 cStringUsingEncoding:1], v10);
    queue = v8->_queue;
    v8->_queue = v13;

    if (!v8->_subscriptionService)
    {
      v15 = objc_alloc_init(UAFAssetUtilitiesService);
      assetUtilitiesService = v8->_assetUtilitiesService;
      v8->_assetUtilitiesService = v15;

      [(UAFAssetUtilitiesService *)v8->_assetUtilitiesService suspend];
    }

    objc_storeStrong(&v8->_xpcListener, listener);
    [(NSXPCListener *)v8->_xpcListener _setQueue:v8->_queue];
    [(NSXPCListener *)v8->_xpcListener setDelegate:v8];
    v8->_subscriptionService = service;
    if (!+[UAFConfiguration subscriptionServiceEnabled](UAFConfiguration, "subscriptionServiceEnabled") && !v8->_subscriptionService || +[UAFConfiguration subscriptionServiceEnabled]&& v8->_subscriptionService)
    {
      +[UAFAutoAssetManager observeAllAssetSets];
    }
  }

  return v8;
}

- (void)dealloc
{
  [(UAFXPCService *)self _invalidate];
  v3.receiver = self;
  v3.super_class = UAFXPCService;
  [(UAFXPCService *)&v3 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__UAFXPCService_invalidate__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  [(UAFXPCService *)self stop];
  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    [(NSXPCListener *)xpcListener invalidate];
    v4 = self->_xpcListener;
    self->_xpcListener = 0;
  }
}

- (void)startAsync
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__UAFXPCService_startAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  [(UAFXPCService *)self runUpdates];
  xpcListener = self->_xpcListener;

  [(NSXPCListener *)xpcListener resume];
}

- (void)_startObservers
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[UAFXPCService _startObservers]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting observers", &v10, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = getAFLanguageCodeDidChangeDarwinNotification_0();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AFLanguageDidChangeCallback_0, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = getkAFPreferencesDidChangeDarwinNotification_0();
  CFNotificationCenterAddObserver(v6, self, _AFPreferencesDidChangeCallback_0, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, _LanguageChangedCallback, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, self, _GMSAvailabilityDidChangeCallback, @"com.apple.gms.availability.notification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)stopAsync
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__UAFXPCService_stopAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stop
{
  if (!self->_subscriptionService)
  {
    [(UAFXPCService *)self _stopObservers];
  }

  xpcListener = self->_xpcListener;

  [(NSXPCListener *)xpcListener suspend];
}

- (void)_stopObservers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[UAFXPCService _stopObservers]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Stopping observers", &v12, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = getAFLanguageCodeDidChangeDarwinNotification_0();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v5, 0);

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = getkAFPreferencesDidChangeDarwinNotification_0();
  CFNotificationCenterRemoveObserver(v6, self, v7, 0);

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"com.apple.language.changed", 0);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v9, self, @"com.apple.gms.availability.notification", 0);
  platformAssetSetObserver = self->_platformAssetSetObserver;
  if (platformAssetSetObserver)
  {
    v11 = +[UAFAssetSetManager sharedManager];
    [v11 removeObserver:self->_platformAssetSetObserver];

    platformAssetSetObserver = self->_platformAssetSetObserver;
  }

  self->_platformAssetSetObserver = 0;
}

- (void)runUpdates
{
  v17 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27__UAFXPCService_runUpdates__block_invoke;
  v12[3] = &unk_1E7FFD110;
  objc_copyWeak(&v13, &location);
  v3 = MEMORY[0x1BFB33950](v12);
  if (self->_subscriptionService)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__UAFXPCService_runUpdates__block_invoke_375;
    v10[3] = &unk_1E7FFD110;
    objc_copyWeak(&v11, &location);
    v4 = MEMORY[0x1BFB33950](v10);

    objc_destroyWeak(&v11);
    v3 = v4;
  }

  if (objc_opt_class() && [MEMORY[0x1E69C5D00] isClassCLocked])
  {
    v5 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[UAFXPCService runUpdates]";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Device is locked, scheduling subscription update for unlock", buf, 0xCu);
    }

    v6 = MEMORY[0x1E69C5D00];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __27__UAFXPCService_runUpdates__block_invoke_379;
    v8[3] = &unk_1E7FFD4E8;
    v9 = v3;
    [v6 runBlockWhenDeviceIsClassCUnlocked:v8];
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[UAFXPCService runUpdates]";
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Device is unlocked, running subscription update", buf, 0xCu);
    }

    v3[2](v3);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __27__UAFXPCService_runUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[48] = +[UAFCommonUtilities isDictationEnabled];
    WeakRetained[49] = +[UAFCommonUtilities isAssistantEnabled];
    v2 = +[UAFCommonUtilities currentAssistantLanguage];
    v3 = *(WeakRetained + 7);
    *(WeakRetained + 7) = v2;

    WeakRetained[50] = +[UAFCommonUtilities gmsWantsAssets];
    v4 = +[UAFCommonUtilities systemLanguage];
    v5 = *(WeakRetained + 8);
    *(WeakRetained + 8) = v4;

    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__UAFXPCService_runUpdates__block_invoke_2;
    block[3] = &unk_1E7FFCFD0;
    block[4] = WeakRetained;
    dispatch_async(v6, block);
  }
}

uint64_t __27__UAFXPCService_runUpdates__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    +[UAFAssetSetSubscriptionManager daemonSubscriptionMigration];
  }

  [*(a1 + 32) _updateAssistantSubscription];
  [*(a1 + 32) _updateMorphunSystemLanguageSubscription];
  [*(a1 + 32) _updateGMSSiriLanguageSubscription];
  [*(a1 + 32) _updateNLSystemLanguageSubscription];
  if (!+[UAFConfiguration subscriptionServiceEnabled]&& !*(*(a1 + 32) + 24))
  {
    v2 = +[UAFManagedSubscriptions managePlatformSubscription];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  +[UAFManagedSubscriptions manageSummarizationKitSubscription];
  if (!+[UAFConfiguration subscriptionServiceEnabled])
  {
    +[UAFXPCService daemonLaunchTasks];
  }

  [*(a1 + 32) _startObservers];
  [*(*(a1 + 32) + 40) resume];
  [*(*(a1 + 32) + 40) switchLanguage:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 40) startObserver];
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__UAFXPCService_runUpdates__block_invoke_3;
    v9[3] = &unk_1E7FFD5D0;
    v10 = v5;
    v6 = v5;
    [UAFUserManager updateLastSeenForCurrentUserOnQueue:0 completion:v9];
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[UAFXPCService runUpdates]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Posting notification of subscription availability", buf, 0xCu);
  }

  return notify_post(kUAFStartedNotification);
}

void __27__UAFXPCService_runUpdates__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[UAFXPCService runUpdates]_block_invoke_3";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Error updating last seen time for current user: %@", &v5, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __27__UAFXPCService_runUpdates__block_invoke_375(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  +[UAFStagingLogManager rollStagingLogsUponNewBuildVersion];
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    if (!+[UAFCommonUtilities isSiriknowledgedSupported])
    {
      v2 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v8 = "[UAFXPCService runUpdates]_block_invoke";
        _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Detected non-UI build. Setting inhibitremoval to NO.", buf, 0xCu);
      }

      v3 = +[UAFAssetSetManager defaults];
      [v3 setBool:0 forKey:@"InhibitRemoval"];
    }

    +[UAFXPCService daemonLaunchTasks];
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__UAFXPCService_runUpdates__block_invoke_377;
    block[3] = &unk_1E7FFD110;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);

    objc_destroyWeak(&v6);
  }
}

void __27__UAFXPCService_runUpdates__block_invoke_377(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (!WeakRetained[3])
    {
      v3 = +[UAFManagedSubscriptions managePlatformSubscription];
      v4 = v2[3];
      v2[3] = v3;
    }

    v5 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[UAFXPCService runUpdates]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Posting notification of assetsubscriptiond availability", &v6, 0xCu);
    }

    notify_post(kUAFSubscriptionServiceStarted);
  }
}

uint64_t __27__UAFXPCService_runUpdates__block_invoke_379(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UAFXPCService runUpdates]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Device has been unlocked, running subscription update", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)subscribeWithConfig:(id)config userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  v59 = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = [configCopy objectForKeyedSubscript:@"Subscriptions"];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = MEMORY[0x1E696ABC0];
          v56 = *MEMORY[0x1E696A578];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an NSArray of %@", @"Subscriptions", objc_opt_class()];
          v57 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v20 = [v21 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v23];

          v24 = UAFGetLogCategory(&UAFLogContextXPCService);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v40 = objc_opt_class();
            *buf = 136315650;
            v53 = "[UAFXPCService subscribeWithConfig:userInitiated:completion:]";
            v54 = 2112;
            *v55 = @"Subscriptions";
            *&v55[8] = 2112;
            *&v55[10] = v40;
            v41 = v40;
            _os_log_error_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is not an NSArray of %@", buf, 0x20u);
          }

          completionCopy[2](completionCopy, v20);
          goto LABEL_30;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v9 = [configCopy objectForKeyedSubscript:@"Subscriber"];
  v14 = [configCopy objectForKeyedSubscript:@"SubscriptionUser"];
  if (!v14)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    if (+[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", [currentConnection effectiveUserIdentifier]))
    {
      v14 = [UAFUser currentConsoleUserWithUID:0];
      if (!v14)
      {
        v16 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          processIdentifier = [currentConnection processIdentifier];
          *buf = 136315650;
          v53 = "[UAFXPCService subscribeWithConfig:userInitiated:completion:]";
          v54 = 1024;
          *v55 = processIdentifier;
          *&v55[4] = 2114;
          *&v55[6] = v9;
          _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Received subscription request without user from pid %d for subscriber: %{public}@, could not determine console user", buf, 0x1Cu);
        }

        v17 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696A588];
        v51 = @"could not determine console user";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v19 = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v18];
        completionCopy[2](completionCopy, v19);

        v20 = 0;
        v14 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v25 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        effectiveUserIdentifier = [currentConnection effectiveUserIdentifier];
        *buf = 136315394;
        v53 = "[UAFXPCService subscribeWithConfig:userInitiated:completion:]";
        v54 = 1024;
        *v55 = effectiveUserIdentifier;
        _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s No user received, looking up %d", buf, 0x12u);
      }

      v43 = 0;
      v14 = +[UAFUser userWithNodeForUID:uid:error:](UAFUser, "userWithNodeForUID:uid:error:", 0, [currentConnection effectiveUserIdentifier], &v43);
      v27 = v43;
      v20 = v27;
      if (!v14 || v27)
      {
        v35 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        effectiveUserIdentifier2 = [currentConnection effectiveUserIdentifier];
        *buf = 136315650;
        v53 = "[UAFXPCService subscribeWithConfig:userInitiated:completion:]";
        v54 = 1024;
        *v55 = effectiveUserIdentifier2;
        *&v55[4] = 2114;
        *&v55[6] = v20;
        v37 = "%s No user received and could not look up user for uid %d: %{public}@";
        v38 = v35;
        v39 = 28;
        goto LABEL_34;
      }
    }

    v28 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      effectiveUserIdentifier3 = [currentConnection effectiveUserIdentifier];
      *buf = 136315650;
      v53 = "[UAFXPCService subscribeWithConfig:userInitiated:completion:]";
      v54 = 2112;
      *v55 = v14;
      *&v55[8] = 1024;
      *&v55[10] = effectiveUserIdentifier3;
      _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s Using user '%@' for uid %d", buf, 0x1Cu);
    }
  }

  currentConnection = [configCopy objectForKeyedSubscript:@"Subscriptions"];
  v30 = [configCopy objectForKeyedSubscript:@"Subscriber"];
  v31 = [UAFAssetSetManager subscribe:v30 subscriptions:currentConnection user:v14 storeManager:0 configurationManager:0 userInitiated:initiatedCopy];

  v20 = 0;
  if (!v31)
  {
    v32 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to subscribe to subscriptions %@ for subscriber %@", currentConnection, v9];
    v49 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v20 = [v32 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v34];

    v35 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_27:

      goto LABEL_28;
    }

    *buf = 136315650;
    v53 = "[UAFXPCService subscribeWithConfig:userInitiated:completion:]";
    v54 = 2112;
    *v55 = currentConnection;
    *&v55[8] = 2112;
    *&v55[10] = v9;
    v37 = "%s Failed to subscribe to subscriptions %@ for subscriber %@";
    v38 = v35;
    v39 = 32;
LABEL_34:
    _os_log_error_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
    goto LABEL_27;
  }

LABEL_28:
  completionCopy[2](completionCopy, v20);
LABEL_29:

LABEL_30:
}

- (void)unsubscribeWithConfig:(id)config userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  v59 = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = [configCopy objectForKeyedSubscript:@"Subscriptions"];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = MEMORY[0x1E696ABC0];
          v56 = *MEMORY[0x1E696A578];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an NSArray of %@", @"Subscriptions", objc_opt_class()];
          v57 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v20 = [v21 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v23];

          v24 = UAFGetLogCategory(&UAFLogContextXPCService);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v40 = objc_opt_class();
            *buf = 136315650;
            v53 = "[UAFXPCService unsubscribeWithConfig:userInitiated:completion:]";
            v54 = 2112;
            *v55 = @"Subscriptions";
            *&v55[8] = 2112;
            *&v55[10] = v40;
            v41 = v40;
            _os_log_error_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is not an NSArray of %@", buf, 0x20u);
          }

          completionCopy[2](completionCopy, v20);
          goto LABEL_30;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v9 = [configCopy objectForKeyedSubscript:@"Subscriber"];
  v14 = [configCopy objectForKeyedSubscript:@"SubscriptionUser"];
  if (!v14)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    if (+[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", [currentConnection effectiveUserIdentifier]))
    {
      v14 = [UAFUser currentConsoleUserWithUID:0];
      if (!v14)
      {
        v16 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          processIdentifier = [currentConnection processIdentifier];
          *buf = 136315650;
          v53 = "[UAFXPCService unsubscribeWithConfig:userInitiated:completion:]";
          v54 = 1024;
          *v55 = processIdentifier;
          *&v55[4] = 2114;
          *&v55[6] = v9;
          _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Received subscription request without user from pid %d for subscriber: %{public}@, could not determine console user", buf, 0x1Cu);
        }

        v17 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696A588];
        v51 = @"could not determine console user";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v19 = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v18];
        completionCopy[2](completionCopy, v19);

        v20 = 0;
        v14 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v25 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        effectiveUserIdentifier = [currentConnection effectiveUserIdentifier];
        *buf = 136315394;
        v53 = "[UAFXPCService unsubscribeWithConfig:userInitiated:completion:]";
        v54 = 1024;
        *v55 = effectiveUserIdentifier;
        _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s No user received, looking up %d", buf, 0x12u);
      }

      v43 = 0;
      v14 = +[UAFUser userWithNodeForUID:uid:error:](UAFUser, "userWithNodeForUID:uid:error:", 0, [currentConnection effectiveUserIdentifier], &v43);
      v27 = v43;
      v20 = v27;
      if (!v14 || v27)
      {
        v35 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        effectiveUserIdentifier2 = [currentConnection effectiveUserIdentifier];
        *buf = 136315650;
        v53 = "[UAFXPCService unsubscribeWithConfig:userInitiated:completion:]";
        v54 = 1024;
        *v55 = effectiveUserIdentifier2;
        *&v55[4] = 2114;
        *&v55[6] = v20;
        v37 = "%s No user received and could not look up user for uid %d: %{public}@";
        v38 = v35;
        v39 = 28;
        goto LABEL_34;
      }
    }

    v28 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      effectiveUserIdentifier3 = [currentConnection effectiveUserIdentifier];
      *buf = 136315650;
      v53 = "[UAFXPCService unsubscribeWithConfig:userInitiated:completion:]";
      v54 = 2112;
      *v55 = v14;
      *&v55[8] = 1024;
      *&v55[10] = effectiveUserIdentifier3;
      _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s Using user '%@' for uid %d", buf, 0x1Cu);
    }
  }

  currentConnection = [configCopy objectForKeyedSubscript:@"Subscriptions"];
  v30 = [configCopy objectForKeyedSubscript:@"Subscriber"];
  v31 = [UAFAssetSetManager unsubscribe:v30 subscriptions:currentConnection user:v14 storeManager:0 configurationManager:0 userInitiated:initiatedCopy];

  v20 = 0;
  if (!v31)
  {
    v32 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to unsubscribe from subscriptions %@ for subscriber %@", currentConnection, v9];
    v49 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v20 = [v32 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v34];

    v35 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_27:

      goto LABEL_28;
    }

    *buf = 136315650;
    v53 = "[UAFXPCService unsubscribeWithConfig:userInitiated:completion:]";
    v54 = 2112;
    *v55 = currentConnection;
    *&v55[8] = 2112;
    *&v55[10] = v9;
    v37 = "%s Failed to unsubscribe from subscriptions %@ for subscriber %@";
    v38 = v35;
    v39 = 32;
LABEL_34:
    _os_log_error_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
    goto LABEL_27;
  }

LABEL_28:
  completionCopy[2](completionCopy, v20);
LABEL_29:

LABEL_30:
}

- (void)configureCacheDeleteWithConfig:(id)config completion:(id)completion
{
  v50[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  v7 = [configCopy objectForKeyedSubscript:@"CacheDeleteDisabled"];
  if (!v7 || (v8 = v7, [configCopy objectForKeyedSubscript:@"CacheDeleteDisabled"], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8, (isKindOfClass & 1) == 0))
  {
    v22 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an %@", @"CacheDeleteDisabled", objc_opt_class()];
    v50[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v25 = [v22 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v24];

    v26 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v44 = "[UAFXPCService configureCacheDeleteWithConfig:completion:]";
      v45 = 2112;
      v46 = @"CacheDeleteDisabled";
      v47 = 2112;
      v48 = objc_opt_class();
      v27 = v48;
LABEL_12:
      _os_log_error_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is not an %@", buf, 0x20u);
    }

LABEL_13:

    completionCopy[2](completionCopy, v25);
    goto LABEL_14;
  }

  v11 = [configCopy objectForKeyedSubscript:@"AutoAssetType"];
  if (!v11 || (v12 = v11, [configCopy objectForKeyedSubscript:@"AutoAssetType"], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) == 0))
  {
    v28 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an %@", @"AutoAssetType", objc_opt_class()];
    v42 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v25 = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v30];

    v26 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      *buf = 136315650;
      v44 = "[UAFXPCService configureCacheDeleteWithConfig:completion:]";
      v45 = 2112;
      v46 = @"AutoAssetType";
      v47 = 2112;
      v48 = v31;
      v27 = v31;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v15 = [configCopy objectForKeyedSubscript:@"AssetSpecifier"];
  if (v15 && (v16 = v15, [configCopy objectForKeyedSubscript:@"AssetSpecifier"], v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v18 = objc_opt_isKindOfClass(), v17, v16, (v18 & 1) != 0))
  {
    v19 = [configCopy objectForKeyedSubscript:@"CacheDeleteDisabled"];
    v20 = [configCopy objectForKeyedSubscript:@"AutoAssetType"];
    v21 = [configCopy objectForKeyedSubscript:@"AssetSpecifier"];
    +[UAFAssetSetManager disableCacheDelete:forAutoAssetType:autoAssetSpecifier:](UAFAssetSetManager, "disableCacheDelete:forAutoAssetType:autoAssetSpecifier:", [v19 BOOLValue], v20, v21);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v32 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an %@", @"AssetSpecifier", objc_opt_class(), v39];
    v40 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v35 = [v32 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v34];

    v36 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      *buf = 136315650;
      v44 = "[UAFXPCService configureCacheDeleteWithConfig:completion:]";
      v45 = 2112;
      v46 = @"AssetSpecifier";
      v47 = 2112;
      v48 = v37;
      v38 = v37;
      _os_log_error_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is not an %@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, v35);
  }

LABEL_14:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  if (connection)
  {
    v4 = self->_xpcListener == listener;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v4)
  {
    connectionCopy = connection;
    [connectionCopy setRemoteObjectInterface:0];
    v8 = +[UAFXPCProxyServiceInterface defaultInterface];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  return v5;
}

- (void)operationWithConfig:(id)config completion:(id)completion
{
  v139[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  if (!configCopy)
  {
    v16 = MEMORY[0x1E696ABC0];
    v138 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing configuration dictionary"];
    v139[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:&v138 count:1];
    v9 = [v16 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v18];

    v19 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v129 = "[UAFXPCService operationWithConfig:completion:]";
      _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s Missing configuration dictionary", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v118 = 0;
  v8 = [UAFConfiguration isValidValue:configCopy key:@"Operation" kind:objc_opt_class() required:1 error:&v118];
  v9 = v118;
  if (v8)
  {
    v10 = [configCopy objectForKeyedSubscript:@"UserInitiated"];
    if (v10 && (v11 = v10, [configCopy objectForKeyedSubscript:@"UserInitiated"], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) != 0))
    {
      v14 = [configCopy objectForKeyedSubscript:@"UserInitiated"];
      bOOLValue = [v14 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v20 = [configCopy objectForKeyedSubscript:@"Operation"];
    if ([v20 isEqualToString:@"Subscribe"])
    {
    }

    else
    {
      v21 = [configCopy objectForKeyedSubscript:@"Operation"];
      v22 = [v21 isEqualToString:@"Unsubscribe"];

      if (!v22)
      {
        goto LABEL_19;
      }
    }

    v117 = v9;
    v23 = [UAFConfiguration isValidValue:configCopy key:@"Subscriber" kind:objc_opt_class() required:1 error:&v117];
    v24 = v117;

    if (!v23)
    {
      goto LABEL_50;
    }

    v116 = v24;
    v25 = [UAFConfiguration isValidValue:configCopy key:@"Subscriptions" kind:objc_opt_class() required:1 error:&v116];
    v9 = v116;

    if (v25)
    {
      v115 = v9;
      v26 = [UAFConfiguration isValidValue:configCopy key:@"SubscriptionUser" kind:objc_opt_class() required:0 error:&v115];
      v24 = v115;

      if (!v26)
      {
        goto LABEL_50;
      }

      v9 = v24;
LABEL_19:
      if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
      {
        currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
        v37 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [configCopy objectForKeyedSubscript:@"Operation"];
          processIdentifier = [currentConnection processIdentifier];
          *buf = 136315650;
          v129 = "[UAFXPCService operationWithConfig:completion:]";
          v130 = 2114;
          v131 = v38;
          v132 = 1024;
          LODWORD(v133) = processIdentifier;
          _os_log_impl(&dword_1BCF2C000, v37, OS_LOG_TYPE_DEFAULT, "%s Received '%{public}@' request, proxying to subscription service on behalf of pid %d", buf, 0x1Cu);
        }

        v40 = +[UAFAssetSetManager createSubscriptionXPCConnection];
        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke;
        v110[3] = &unk_1E7FFDD58;
        v111 = configCopy;
        v112 = currentConnection;
        v113 = v40;
        v114 = completionCopy;
        currentConnection2 = v40;
        v29 = currentConnection;
        [currentConnection2 operationWithConfig:v111 completion:v110];

        goto LABEL_34;
      }

      if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
      {
        v27 = MEMORY[0x1E696ABC0];
        v136 = *MEMORY[0x1E696A588];
        v137 = @"Request to UAF subscription service when subscription service is disabled";
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
        v29 = [v27 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v28];

        currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
        v31 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          processIdentifier2 = [currentConnection2 processIdentifier];
          *buf = 136315394;
          v129 = "[UAFXPCService operationWithConfig:completion:]";
          v130 = 1024;
          LODWORD(v131) = processIdentifier2;
          _os_log_error_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
        }

LABEL_26:
        (*(completionCopy + 2))(completionCopy, v29);
        goto LABEL_34;
      }

      v32 = [configCopy objectForKeyedSubscript:@"Operation"];
      v33 = [v32 isEqualToString:@"Subscribe"];

      if (v33)
      {
        [(UAFXPCService *)self subscribeWithConfig:configCopy userInitiated:bOOLValue completion:completionCopy];
        goto LABEL_10;
      }

      v34 = [configCopy objectForKeyedSubscript:@"Operation"];
      v35 = [v34 isEqualToString:@"Unsubscribe"];

      if (v35)
      {
        [(UAFXPCService *)self unsubscribeWithConfig:configCopy userInitiated:bOOLValue completion:completionCopy];
        goto LABEL_10;
      }

      v41 = [configCopy objectForKeyedSubscript:@"Operation"];
      v42 = [v41 isEqualToString:@"ConfigureCacheDelete"];

      if (v42)
      {
        [(UAFXPCService *)self configureCacheDeleteWithConfig:configCopy completion:completionCopy];
        goto LABEL_10;
      }

      v43 = [configCopy objectForKeyedSubscript:@"Operation"];
      v44 = [v43 isEqualToString:@"ConfigureAssetDelivery"];

      if (v44)
      {
        v45 = [configCopy objectForKeyedSubscript:@"LockIfUnchanged"];
        if (v45)
        {
          v46 = [configCopy objectForKeyedSubscript:@"LockIfUnchanged"];
          objc_opt_class();
          v47 = objc_opt_isKindOfClass();

          if (v47)
          {
            v48 = [configCopy objectForKeyedSubscript:@"LockIfUnchanged"];
            LOBYTE(v45) = [v48 BOOLValue];
          }

          else
          {
            LOBYTE(v45) = 0;
          }
        }

        v61 = +[UAFAssetSetManager getSerialQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke_410;
        block[3] = &__block_descriptor_34_e5_v8__0l;
        v108 = v45;
        v109 = 1;
        dispatch_sync(v61, block);

        goto LABEL_57;
      }

      v49 = [configCopy objectForKeyedSubscript:@"Operation"];
      v50 = [v49 isEqualToString:@"UpdateLastSeen"];

      if (v50)
      {
        v106 = v9;
        v51 = [UAFConfiguration isValidValue:configCopy key:@"SubscriptionUser" kind:objc_opt_class() required:1 error:&v106];
        v24 = v106;

        if (v51)
        {
          v29 = [configCopy objectForKeyedSubscript:@"SubscriptionUser"];
          v105 = v24;
          currentConnection2 = [UAFUser nodeForUser:v29 error:&v105];
          v9 = v105;

          if (currentConnection2 && !v9)
          {
            v52 = +[UAFSubscriptionStoreManager writeManager];
            v53 = [MEMORY[0x1E695DF00] now];
            v9 = [v52 setUserLastSeenTime:v29 node:currentConnection2 time:v53];

            v54 = UAFGetLogCategory(&UAFLogContextXPCService);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v129 = "[UAFXPCService operationWithConfig:completion:]";
              v130 = 2112;
              v131 = v29;
              v132 = 2112;
              v133 = currentConnection2;
              v134 = 2114;
              v135 = v9;
              _os_log_impl(&dword_1BCF2C000, v54, OS_LOG_TYPE_DEFAULT, "%s Updated last seen time for user %@ on node %@ with result: %{public}@", buf, 0x2Au);
            }
          }

          (*(completionCopy + 2))(completionCopy, v9);
LABEL_34:

LABEL_35:
          goto LABEL_10;
        }

LABEL_50:
        (*(completionCopy + 2))(completionCopy, v24);
        v9 = v24;
        goto LABEL_10;
      }

      v55 = [configCopy objectForKeyedSubscript:@"Operation"];
      v56 = [v55 isEqualToString:@"RemoveUser"];

      if (v56)
      {
        v104 = v9;
        v57 = [UAFConfiguration isValidValue:configCopy key:@"SubscriptionUser" kind:objc_opt_class() required:1 error:&v104];
        v58 = v104;

        if (!v57)
        {
          (*(completionCopy + 2))(completionCopy, v58);
          v9 = v58;
          goto LABEL_10;
        }

        v59 = [configCopy objectForKeyedSubscript:@"SubscriptionUser"];
        v9 = [UAFUserManager removeUser:v59];

LABEL_54:
        goto LABEL_9;
      }

      v62 = [configCopy objectForKeyedSubscript:@"Operation"];
      v63 = [v62 isEqualToString:@"UserCleanup"];

      if (v63)
      {
        +[UAFUserManager performUserCleanup];
LABEL_57:
        (*(completionCopy + 2))(completionCopy, 0);
        goto LABEL_10;
      }

      v64 = [configCopy objectForKeyedSubscript:@"Operation"];
      v65 = [v64 isEqualToString:@"MigrateSubscriptions"];

      if (v65)
      {
        v66 = +[UAFAssetSetManager getSerialQueue];
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke_412;
        v101[3] = &unk_1E7FFD5A8;
        v102 = configCopy;
        v103 = completionCopy;
        dispatch_async(v66, v101);

        v67 = v102;
      }

      else
      {
        v68 = [configCopy objectForKeyedSubscript:@"Operation"];
        v69 = [v68 isEqualToString:@"RunMaintenanceTask"];

        if (!v69)
        {
          v70 = [configCopy objectForKeyedSubscript:@"Operation"];
          v71 = [v70 isEqualToString:@"ResetAssetSets"];

          if (v71)
          {
            v98 = 0;
            v72 = [UAFConfiguration isValidValue:configCopy key:@"AssetSets" kind:objc_opt_class() required:0 error:&v98];
            v29 = v98;
            if (v72)
            {
              v73 = [configCopy objectForKeyedSubscript:@"AssetSets"];

              if (v73)
              {
                v96 = 0u;
                v97 = 0u;
                v94 = 0u;
                v95 = 0u;
                currentConnection2 = [configCopy objectForKeyedSubscript:@"AssetSets"];
                v74 = [currentConnection2 countByEnumeratingWithState:&v94 objects:v127 count:16];
                if (v74)
                {
                  v75 = v74;
                  v76 = *v95;
                  while (2)
                  {
                    for (i = 0; i != v75; ++i)
                    {
                      if (*v95 != v76)
                      {
                        objc_enumerationMutation(currentConnection2);
                      }

                      v78 = *(*(&v94 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v89 = MEMORY[0x1E696ABC0];
                        if (v29)
                        {
                          v125[0] = *MEMORY[0x1E696A578];
                          v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset Set '%@' is not a string", v78];
                          v125[1] = *MEMORY[0x1E696AA08];
                          v126[0] = v90;
                          v126[1] = v29;
                          v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2];
                          v92 = [v89 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v91];

                          v29 = v92;
                        }

                        else
                        {
                          v123 = *MEMORY[0x1E696A578];
                          v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset Set '%@' is not a string", v78];
                          v124 = v90;
                          v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
                          v29 = [v89 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v91];
                        }

                        v93 = UAFGetLogCategory(&UAFLogContextXPCService);
                        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v129 = "[UAFXPCService operationWithConfig:completion:]";
                          v130 = 2112;
                          v131 = v78;
                          _os_log_error_impl(&dword_1BCF2C000, v93, OS_LOG_TYPE_ERROR, "%s Asset Set '%@' is not a string", buf, 0x16u);
                        }

                        goto LABEL_26;
                      }
                    }

                    v75 = [currentConnection2 countByEnumeratingWithState:&v94 objects:v127 count:16];
                    if (v75)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              v79 = [configCopy objectForKeyedSubscript:@"AssetSets"];
              v80 = [UAFAssetSetManager resetAssetSets:v79];

              (*(completionCopy + 2))(completionCopy, v80);
              v29 = v80;
            }

            else
            {
              (*(completionCopy + 2))(completionCopy, v29);
            }

            goto LABEL_35;
          }

          v81 = MEMORY[0x1E696ABC0];
          if (v9)
          {
            v121[0] = *MEMORY[0x1E696A578];
            v82 = MEMORY[0x1E696AEC0];
            v83 = [configCopy objectForKeyedSubscript:@"Operation"];
            v84 = [v82 stringWithFormat:@"Configuration key %@ is set to invalid value %@", @"Operation", v83];
            v121[1] = *MEMORY[0x1E696AA08];
            v122[0] = v84;
            v122[1] = v9;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:2];
            v86 = [v81 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v85];

            v9 = v86;
          }

          else
          {
            v119 = *MEMORY[0x1E696A578];
            v87 = MEMORY[0x1E696AEC0];
            v83 = [configCopy objectForKeyedSubscript:@"Operation"];
            v84 = [v87 stringWithFormat:@"Configuration key %@ is set to invalid value %@", @"Operation", v83];
            v120 = v84;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
            v9 = [v81 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v85];
          }

          v59 = UAFGetLogCategory(&UAFLogContextXPCService);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v88 = [configCopy objectForKeyedSubscript:@"Operation"];
            *buf = 136315650;
            v129 = "[UAFXPCService operationWithConfig:completion:]";
            v130 = 2112;
            v131 = @"Operation";
            v132 = 2112;
            v133 = v88;
            _os_log_error_impl(&dword_1BCF2C000, v59, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is set to invalid value %@", buf, 0x20u);
          }

          goto LABEL_54;
        }

        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke_2;
        v99[3] = &unk_1E7FFD4E8;
        v100 = completionCopy;
        [UAFXPCActivity maintenanceTaskWithCompletion:v99];
        v67 = v100;
      }

      goto LABEL_10;
    }
  }

LABEL_9:
  (*(completionCopy + 2))(completionCopy, v9);
LABEL_10:
}

void __48__UAFXPCService_operationWithConfig_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"Operation"];
    v6 = [*(a1 + 40) processIdentifier];
    v7 = 136315650;
    v8 = "[UAFXPCService operationWithConfig:completion:]_block_invoke";
    v9 = 2114;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying '%{public}@' request on behalf of pid %d", &v7, 0x1Cu);
  }

  [*(a1 + 48) invalidate];
  (*(*(a1 + 56) + 16))();
}

void __48__UAFXPCService_operationWithConfig_completion___block_invoke_412(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  LOBYTE(v2) = [UAFConfiguration isValidValue:v2 key:@"SubscriptionUser" kind:objc_opt_class() required:1 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = *(a1 + 32);
    v8 = v3;
    LOBYTE(v4) = [UAFConfiguration isValidValue:v4 key:@"SubscriptionsToMigrate" kind:objc_opt_class() required:1 error:&v8];
    v5 = v8;

    if (v4)
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:@"SubscriptionsToMigrate"];
      v7 = [*(a1 + 32) objectForKeyedSubscript:@"SubscriptionUser"];
      [UAFAssetSetSubscriptionManager migrateSubscriptions:v6 user:v7 completion:*(a1 + 40)];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    v3 = v5;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)diagnosticInformation:(id)information
{
  informationCopy = information;
  v4 = objc_autoreleasePoolPush();
  v7 = 0;
  v5 = [UAFAssetSetManager generateInformationWithError:&v7];
  v6 = v7;
  objc_autoreleasePoolPop(v4);
  informationCopy[2](informationCopy, v5, v6);
}

- (void)lockLatestAtomicInstance:(id)instance completion:(id)completion
{
  v35[1] = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  completionCopy = completion;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v19 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[UAFXPCService lockLatestAtomicInstance:completion:]";
      v30 = 1024;
      LODWORD(v31) = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v20 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __53__UAFXPCService_lockLatestAtomicInstance_completion___block_invoke;
    v24[3] = &unk_1E7FFD648;
    v25 = currentConnection;
    v26 = v20;
    v27 = completionCopy;
    currentConnection2 = v20;
    v10 = currentConnection;
    [currentConnection2 lockLatestAtomicInstance:instanceCopy completion:v24];
  }

  else
  {
    if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
    {
      v8 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A588];
      v35[0] = @"Request to UAF subscription service when subscription service is disabled";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v10 = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v9];

      currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
      v12 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[UAFXPCService lockLatestAtomicInstance:completion:]";
        v30 = 1024;
        LODWORD(v31) = [currentConnection2 processIdentifier];
        v13 = "%s Received request from pid %d while subscription service disabled";
        v14 = v12;
        v15 = 18;
LABEL_19:
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v16 = objc_alloc(MEMORY[0x1E69B1918]);
    v17 = +[UAFAutoAssetManager getConcurrentQueue];
    v23 = 0;
    currentConnection2 = [v16 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:instanceCopy comprisedOfEntries:0 completingFromQueue:v17 error:&v23];
    v10 = v23;

    if (v10)
    {
      v12 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v29 = "[UAFXPCService lockLatestAtomicInstance:completion:]";
        v30 = 2114;
        v31 = instanceCopy;
        v32 = 2114;
        v33 = v10;
        v13 = "%s Could not initialize auto asset set %{public}@ for updating: %{public}@";
        v14 = v12;
        v15 = 32;
        goto LABEL_19;
      }

LABEL_9:

      (*(completionCopy + 2))(completionCopy, v10);
      goto LABEL_17;
    }

    if (currentConnection2)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __53__UAFXPCService_lockLatestAtomicInstance_completion___block_invoke_421;
      v21[3] = &unk_1E7FFD530;
      v22 = completionCopy;
      [UAFAutoAssetManager lockLatestAssetSet:currentConnection2 completion:v21];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    v10 = 0;
  }

LABEL_17:
}

void __53__UAFXPCService_lockLatestAtomicInstance_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = 136315394;
    v7 = "[UAFXPCService lockLatestAtomicInstance:completion:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v6, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();
}

- (void)markAssetsExpired:(id)expired completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  completionCopy = completion;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v14 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[UAFXPCService markAssetsExpired:completion:]";
      v26 = 1024;
      processIdentifier = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v15 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__UAFXPCService_markAssetsExpired_completion___block_invoke;
    v18[3] = &unk_1E7FFD648;
    v19 = currentConnection;
    v20 = v15;
    v21 = completionCopy;
    currentConnection2 = v15;
    v10 = currentConnection;
    [currentConnection2 markAssetsExpired:expiredCopy completion:v18];

    goto LABEL_12;
  }

  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v8 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A588];
    v23 = @"Request to UAF subscription service when subscription service is disabled";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v9];

    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    v12 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [currentConnection2 processIdentifier];
      *buf = 136315394;
      v25 = "[UAFXPCService markAssetsExpired:completion:]";
      v26 = 1024;
      processIdentifier = processIdentifier2;
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    (*(completionCopy + 2))(completionCopy, v10);
LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
  [UAFExpiredAssets markAssetsExpired:expiredCopy error:&v17];
  v10 = v17;
  (*(completionCopy + 2))(completionCopy, v10);
LABEL_13:
}

void __46__UAFXPCService_markAssetsExpired_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = 136315394;
    v7 = "[UAFXPCService markAssetsExpired:completion:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v6, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();
}

- (void)setSystemConfigurationForKey:(id)key withValue:(id)value completion:(id)completion
{
  v32[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  completionCopy = completion;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v19 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]";
      v27 = 1024;
      LODWORD(v28) = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v20 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__UAFXPCService_setSystemConfigurationForKey_withValue_completion___block_invoke;
    v21[3] = &unk_1E7FFD648;
    v22 = currentConnection;
    v23 = v20;
    v24 = completionCopy;
    currentConnection2 = v20;
    v13 = currentConnection;
    [currentConnection2 setSystemConfigurationForKey:keyCopy withValue:valueCopy completion:v21];

    goto LABEL_14;
  }

  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v11 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A588];
    v32[0] = @"Request to UAF subscription service when subscription service is disabled";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v12];

    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    v15 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]";
      v27 = 1024;
      LODWORD(v28) = [currentConnection2 processIdentifier];
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    (*(completionCopy + 2))(completionCopy, v13);
LABEL_14:

    goto LABEL_15;
  }

  v16 = +[UAFSubscriptionStoreManager writeManager];
  [v16 setSystemConfigurationForKey:keyCopy withValue:valueCopy];

  v17 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]";
    v27 = 2114;
    v28 = keyCopy;
    v29 = 2114;
    v30 = valueCopy;
    _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Ran setSystemConfigurationForKey:%{public}@ withValue:%{public}@ as requested via XPC", buf, 0x20u);
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_15:
}

void __67__UAFXPCService_setSystemConfigurationForKey_withValue_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = 136315394;
    v7 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v6, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();
}

- (void)expireSubscriptions:(id)subscriptions
{
  v26 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v13 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[UAFXPCService expireSubscriptions:]";
      v24 = 1024;
      processIdentifier = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v14 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __37__UAFXPCService_expireSubscriptions___block_invoke;
    v16[3] = &unk_1E7FFD648;
    v17 = currentConnection;
    v18 = v14;
    v19 = subscriptionsCopy;
    currentConnection2 = v14;
    v7 = currentConnection;
    [currentConnection2 expireSubscriptions:v16];

    goto LABEL_14;
  }

  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v5 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A588];
    v21 = @"Request to UAF subscription service when subscription service is disabled";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v6];

    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    v9 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [currentConnection2 processIdentifier];
      *buf = 136315394;
      v23 = "[UAFXPCService expireSubscriptions:]";
      v24 = 1024;
      processIdentifier = processIdentifier2;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    (*(subscriptionsCopy + 2))(subscriptionsCopy, v7);
LABEL_14:

    goto LABEL_15;
  }

  v10 = +[UAFSubscriptionStoreManager writeManager];
  [v10 expireSubscriptions];

  v11 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[UAFXPCService expireSubscriptions:]";
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Ran expireSubscriptions as requested via XPC", buf, 0xCu);
  }

  (*(subscriptionsCopy + 2))(subscriptionsCopy, 0);
LABEL_15:
}

void __37__UAFXPCService_expireSubscriptions___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = 136315394;
    v7 = "[UAFXPCService expireSubscriptions:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v6, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();
}

- (void)subscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user completion:(id)completion
{
  v44[1] = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  subscriberCopy = subscriber;
  userCopy = user;
  completionCopy = completion;
  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v14 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A588];
    v44[0] = @"Request to UAF subscription service when subscription service is disabled";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v15];

    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v18 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      v37 = 1024;
      *v38 = [currentConnection processIdentifier];
      _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    completionCopy[2](completionCopy, 0, v16);
    goto LABEL_26;
  }

  currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
  v16 = currentConnection2;
  if (userCopy)
  {
    goto LABEL_7;
  }

  v24 = +[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", [currentConnection2 effectiveUserIdentifier]);
  v25 = UAFGetLogCategory(&UAFLogContextXPCService);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      *buf = 136315138;
      v36 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s No user received and request is from uid 0, looking up console user", buf, 0xCu);
    }

    userCopy = [UAFUser currentConsoleUserWithUID:0];
    if (!userCopy)
    {
      v27 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v36 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
        _os_log_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_DEFAULT, "%s Could not lookup console user", buf, 0xCu);
      }

      v28 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A588];
      v42 = @"Could not lookup console user";
      currentConnection = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v29 = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:currentConnection];
      completionCopy[2](completionCopy, 0, v29);

      userCopy = 0;
      goto LABEL_26;
    }

LABEL_7:
    v20 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      effectiveUserIdentifier = [v16 effectiveUserIdentifier];
      *buf = 136316162;
      v36 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      v37 = 2112;
      *v38 = userCopy;
      *&v38[8] = 1024;
      *&v38[10] = effectiveUserIdentifier;
      *&v38[14] = 2114;
      *&v38[16] = subscriptionsCopy;
      v39 = 2114;
      v40 = subscriberCopy;
      _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s Using user '%@' for uid %d querying subscription: %{public}@ for subscriber: %{public}@", buf, 0x30u);
    }

    v33 = 0;
    currentConnection = [UAFAssetSetSubscriptionManager getSubscription:subscriptionsCopy subscriber:subscriberCopy user:userCopy storeManager:0 error:&v33];
    v22 = v33;
    v23 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v36 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      v37 = 2114;
      *v38 = subscriberCopy;
      *&v38[8] = 2114;
      *&v38[10] = v22;
      _os_log_debug_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEBUG, "%s Subscriber: %{public}@, error: %{public}@", buf, 0x20u);
    }

    (completionCopy)[2](completionCopy, currentConnection, v22);
    goto LABEL_26;
  }

  if (v26)
  {
    *buf = 136315394;
    v36 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
    v37 = 1024;
    *v38 = [v16 effectiveUserIdentifier];
    _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s No user received, looking up %d", buf, 0x12u);
  }

  v34 = 0;
  userCopy = +[UAFUser userWithNodeForUID:uid:error:](UAFUser, "userWithNodeForUID:uid:error:", 0, [v16 effectiveUserIdentifier], &v34);
  v30 = v34;
  currentConnection = v30;
  if (userCopy && !v30)
  {
    goto LABEL_7;
  }

  v31 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    effectiveUserIdentifier2 = [v16 effectiveUserIdentifier];
    *buf = 136315650;
    v36 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
    v37 = 1024;
    *v38 = effectiveUserIdentifier2;
    *&v38[4] = 2114;
    *&v38[6] = currentConnection;
    _os_log_error_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_ERROR, "%s No user received and could not look up user for uid %d: %{public}@", buf, 0x1Cu);
  }

  completionCopy[2](completionCopy, 0, currentConnection);
LABEL_26:
}

- (void)downloadSiriAssets
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v2 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[UAFXPCService downloadSiriAssets]";
      _os_log_error_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v4, 0xCu);
    }
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;

    [(UAFAssetUtilitiesService *)assetUtilitiesService downloadSiriAssets];
  }
}

- (void)downloadSiriAssetsOverCellular
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v2 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[UAFXPCService downloadSiriAssetsOverCellular]";
      _os_log_error_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v4, 0xCu);
    }
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;

    [(UAFAssetUtilitiesService *)assetUtilitiesService downloadSiriAssetsOverCellular];
  }
}

- (void)postAssetNotificationIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v2 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[UAFXPCService postAssetNotificationIfNeeded]";
      _os_log_error_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v4, 0xCu);
    }
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;

    [(UAFAssetUtilitiesService *)assetUtilitiesService postAssetNotificationIfNeeded];
  }
}

- (void)downloadDictationAssetsForLanguage:(id)language
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v3 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UAFXPCService downloadDictationAssetsForLanguage:]";
      _os_log_error_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v5, 0xCu);
    }
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;

    [(UAFAssetUtilitiesService *)assetUtilitiesService downloadDictationAssetsForLanguage:language];
  }
}

- (void)postDictationAssetNotificationForLanguage:(id)language
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v3 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UAFXPCService postDictationAssetNotificationForLanguage:]";
      _os_log_error_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v5, 0xCu);
    }
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;

    [(UAFAssetUtilitiesService *)assetUtilitiesService postDictationAssetNotificationForLanguage:language];
  }
}

- (void)checkAssetStatus:(id)status
{
  v13 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if (self->_subscriptionService)
  {
    v5 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[UAFXPCService checkAssetStatus:]";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", buf, 0xCu);
    }

    if (statusCopy)
    {
      v6 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A578];
      v10 = @"XPC sent to wrong endpoint";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v8 = [v6 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v7];

      statusCopy[2](statusCopy, 0, v8);
    }
  }

  else
  {
    [(UAFAssetUtilitiesService *)self->_assetUtilitiesService checkAssetStatus:statusCopy];
  }
}

- (void)diskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (self->_subscriptionService)
  {
    v9 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[UAFXPCService diskSpaceNeededInBytesForLanguage:forClient:completion:]";
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", buf, 0xCu);
    }

    if (completionCopy)
    {
      v10 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14 = @"XPC sent to wrong endpoint";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v12 = [v10 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v11];

      completionCopy[2](completionCopy, 0, v12);
    }
  }

  else
  {
    [(UAFAssetUtilitiesService *)self->_assetUtilitiesService diskSpaceNeededInBytesForLanguage:language forClient:client completion:completionCopy];
  }
}

- (BOOL)_dictationEnabledChanged
{
  v15 = *MEMORY[0x1E69E9840];
  dictationEnabled = self->_dictationEnabled;
  v4 = +[UAFCommonUtilities isDictationEnabled];
  self->_dictationEnabled = v4;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (dictationEnabled == v4)
  {
    if (v6)
    {
      v9 = @"disabled";
      if (self->_dictationEnabled)
      {
        v9 = @"enabled";
      }

      v11 = 136315394;
      v12 = "[UAFXPCService _dictationEnabledChanged]";
      v13 = 2114;
      v14 = v9;
      v8 = "%s Not updating Dictation enablement as it is unchanged from : %{public}@";
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    v7 = @"disabled";
    if (self->_dictationEnabled)
    {
      v7 = @"enabled";
    }

    v11 = 136315394;
    v12 = "[UAFXPCService _dictationEnabledChanged]";
    v13 = 2114;
    v14 = v7;
    v8 = "%s Dictation enablement changed to : %{public}@";
LABEL_10:
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x16u);
  }

  return dictationEnabled != v4;
}

- (BOOL)_assistantEnabledChanged
{
  v15 = *MEMORY[0x1E69E9840];
  assistantEnabled = self->_assistantEnabled;
  v4 = +[UAFCommonUtilities isAssistantEnabled];
  self->_assistantEnabled = v4;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (assistantEnabled == v4)
  {
    if (v6)
    {
      v9 = @"disabled";
      if (self->_assistantEnabled)
      {
        v9 = @"enabled";
      }

      v11 = 136315394;
      v12 = "[UAFXPCService _assistantEnabledChanged]";
      v13 = 2114;
      v14 = v9;
      v8 = "%s Not updating Assistant enablement as it is unchanged from : %{public}@";
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    v7 = @"disabled";
    if (self->_assistantEnabled)
    {
      v7 = @"enabled";
    }

    v11 = 136315394;
    v12 = "[UAFXPCService _assistantEnabledChanged]";
    v13 = 2114;
    v14 = v7;
    v8 = "%s Assistant enablement changed to : %{public}@";
LABEL_10:
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x16u);
  }

  return assistantEnabled != v4;
}

- (BOOL)_gmsEnabledChanged
{
  v15 = *MEMORY[0x1E69E9840];
  gmsEnabled = self->_gmsEnabled;
  v4 = +[UAFCommonUtilities gmsWantsAssets];
  self->_gmsEnabled = v4;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (gmsEnabled == v4)
  {
    if (v6)
    {
      v9 = @"disabled";
      if (self->_gmsEnabled)
      {
        v9 = @"enabled";
      }

      v11 = 136315394;
      v12 = "[UAFXPCService _gmsEnabledChanged]";
      v13 = 2114;
      v14 = v9;
      v8 = "%s Not updating GMS enablement as it is unchanged from : %{public}@";
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    v7 = @"disabled";
    if (self->_gmsEnabled)
    {
      v7 = @"enabled";
    }

    v11 = 136315394;
    v12 = "[UAFXPCService _gmsEnabledChanged]";
    v13 = 2114;
    v14 = v7;
    v8 = "%s GMS enablement changed to : %{public}@";
LABEL_10:
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x16u);
  }

  return gmsEnabled != v4;
}

- (BOOL)_assistantLanguageChanged
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_assistantLanguage;
  v4 = +[UAFCommonUtilities currentAssistantLanguage];
  assistantLanguage = self->_assistantLanguage;
  self->_assistantLanguage = v4;

  v6 = self->_assistantLanguage;
  if (v3)
  {
    if ([(NSString *)v3 isEqualToString:v6])
    {
LABEL_3:
      v7 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_assistantLanguage;
        v12 = 136315394;
        v13 = "[UAFXPCService _assistantLanguageChanged]";
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Not updating Assistant language as value is unchanged from : %{public}@", &v12, 0x16u);
      }

      v9 = 0;
      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v7 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_assistantLanguage;
    v12 = 136315394;
    v13 = "[UAFXPCService _assistantLanguageChanged]";
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Assistant language changed to : %{public}@", &v12, 0x16u);
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (BOOL)_systemLanguageChanged
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_systemLanguage;
  v4 = +[UAFCommonUtilities systemLanguage];
  systemLanguage = self->_systemLanguage;
  self->_systemLanguage = v4;

  v6 = self->_systemLanguage;
  if (v3)
  {
    if ([(NSString *)v3 isEqualToString:v6])
    {
LABEL_3:
      v7 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_systemLanguage;
        v12 = 136315394;
        v13 = "[UAFXPCService _systemLanguageChanged]";
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Not updating system language as value is unchanged from : %{public}@", &v12, 0x16u);
      }

      v9 = 0;
      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v7 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_systemLanguage;
    v12 = 136315394;
    v13 = "[UAFXPCService _systemLanguageChanged]";
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s System language changed to : %{public}@", &v12, 0x16u);
  }

  v9 = 1;
LABEL_10:

  return v9;
}

+ (unint64_t)_currentAssistantMode:(id *)mode
{
  if (+[UAFCommonUtilities deviceSupportAssistantEngine])
  {
    v4 = @"assistantengine";
    result = 4;
  }

  else if (+[UAFCommonUtilities deviceSupportFullUOD])
  {
    v4 = @"full";
    result = 2;
  }

  else
  {
    v6 = +[UAFCommonUtilities deviceSupportAndUseHybridASR];
    v7 = !v6;
    if (v6)
    {
      result = 3;
    }

    else
    {
      result = 1;
    }

    v4 = @"legacy";
    if (!v7)
    {
      v4 = @"hybrid";
    }
  }

  *mode = v4;
  return result;
}

- (void)_updateAssistantSubscription
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = self->_assistantLanguage;
  v4 = v3;
  if (!self->_assistantEnabled)
  {

    v4 = 0;
  }

  v11 = 0;
  v5 = [UAFXPCService _currentAssistantMode:&v11];
  v6 = v11;
  if (v5 != 1 && !+[UAFXPCService _isOnDemandAssetSubscriptionAllowed])
  {
    v7 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[UAFXPCService _updateAssistantSubscription]";
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Assistant Subscription not allowed", buf, 0xCu);
    }

    v4 = 0;
  }

  v8 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    assistantEnabled = self->_assistantEnabled;
    assistantLanguage = self->_assistantLanguage;
    *buf = 136316162;
    v13 = "[UAFXPCService _updateAssistantSubscription]";
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    v18 = 1024;
    v19 = assistantEnabled;
    v20 = 2114;
    v21 = assistantLanguage;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Siri configured for: language %{public}@, mode: %{public}@ (assistant enabled: %d, assistant language: %{public}@)", buf, 0x30u);
  }

  [UAFManagedSubscriptions manageAssistantSubscription:v4 withMode:v5];
}

- (void)_updateAssetUtilitiesLanguage
{
  v3 = self->_assistantLanguage;
  v4 = v3;
  if (!self->_assistantEnabled)
  {

    v4 = 0;
  }

  v5 = v4;
  [(UAFAssetUtilitiesService *)self->_assetUtilitiesService switchLanguage:v4];
}

- (void)_updateMorphunSystemLanguageSubscription
{
  if (self->_assistantEnabled)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [UAFManagedSubscriptions manageMorphunSystemLocaleSubscription:currentLocale];
  }

  else
  {

    [UAFManagedSubscriptions manageMorphunSystemLocaleSubscription:0];
  }
}

- (void)_updateGMSSiriLanguageSubscription
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [UAFXPCService _currentAssistantMode:&v8];
  v4 = v8;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    gmsEnabled = self->_gmsEnabled;
    assistantLanguage = self->_assistantLanguage;
    *buf = 136315906;
    v10 = "[UAFXPCService _updateGMSSiriLanguageSubscription]";
    v11 = 1024;
    v12 = gmsEnabled;
    v13 = 2114;
    v14 = assistantLanguage;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Siri IE is now: wants assets: %d, language: %{public}@, mode: %{public}@", buf, 0x26u);
  }

  [UAFManagedSubscriptions manageGMSSiriLanguageSubscription:self->_gmsEnabled language:self->_assistantLanguage mode:v3];
}

- (void)_assistantLanguageUpdate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UAFXPCService _assistantLanguageUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to assistant language", &v4, 0xCu);
  }

  if ([(UAFXPCService *)self _assistantLanguageChanged])
  {
    [(UAFXPCService *)self _updateAssistantSubscription];
    [(UAFXPCService *)self _updateAssetUtilitiesLanguage];
    [(UAFXPCService *)self _updateGMSSiriLanguageSubscription];
  }
}

- (void)_assistantPreferencesUpdate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[UAFXPCService _assistantPreferencesUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to assistant preferences", &v7, 0xCu);
  }

  [(UAFXPCService *)self _dictationEnabledChanged];
  _assistantEnabledChanged = [(UAFXPCService *)self _assistantEnabledChanged];
  _assistantLanguageChanged = [(UAFXPCService *)self _assistantLanguageChanged];
  v6 = _assistantLanguageChanged;
  if (_assistantEnabledChanged || _assistantLanguageChanged)
  {
    if (_assistantEnabledChanged)
    {
      [(UAFXPCService *)self _updateMorphunSystemLanguageSubscription];
    }

    if (v6)
    {
      [(UAFXPCService *)self _updateGMSSiriLanguageSubscription];
    }

    [(UAFXPCService *)self _updateAssistantSubscription];
    [(UAFXPCService *)self _updateAssetUtilitiesLanguage];
  }
}

- (void)_assistantGMSAvailabilityUpdate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UAFXPCService _assistantGMSAvailabilityUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to gms availability", &v4, 0xCu);
  }

  if ([(UAFXPCService *)self _gmsEnabledChanged])
  {
    [(UAFXPCService *)self _updateAssistantSubscription];
    [(UAFXPCService *)self _updateGMSSiriLanguageSubscription];
  }
}

- (void)_systemLanguageUpdate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UAFXPCService _systemLanguageUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to system language", &v4, 0xCu);
  }

  if ([(UAFXPCService *)self _systemLanguageChanged])
  {
    [(UAFXPCService *)self _updateNLSystemLanguageSubscription];
    [(UAFXPCService *)self _updateMorphunSystemLanguageSubscription];
  }
}

@end