@interface QLNetworkStateObserver
+ (BOOL)networkAccessShouldGoThroughCloudDocsDaemon;
+ (BOOL)usingRemoteNetworkObserver;
+ (id)sharedInstance;
- (BOOL)isWifiCapable;
- (QLNetworkStateObserver)init;
- (void)_commonInit;
- (void)_setNetworkState:(unint64_t)state;
- (void)_unregisterReachability;
- (void)_update;
- (void)_updateCompletionBlocks;
- (void)_updateNetworkActivityIndicator;
- (void)_updateNetworkStateWithFlags:(unsigned int)flags;
- (void)_updateNetworkStateWithNotifyToken:(int)token;
- (void)_updateRemoteObserver;
- (void)airplaneModeChanged;
- (void)dealloc;
- (void)networkStateWithCompletionBlock:(id)block;
- (void)popOperation;
- (void)pushOperation;
- (void)setNetworkState:(unint64_t)state;
- (void)setRemoteObserver:(id)observer;
- (void)startObserving;
- (void)stopObserving;
- (void)updateState:(unint64_t)state;
@end

@implementation QLNetworkStateObserver

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__QLNetworkStateObserver_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __40__QLNetworkStateObserver_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (QLNetworkStateObserver)init
{
  v5.receiver = self;
  v5.super_class = QLNetworkStateObserver;
  v2 = [(QLNetworkStateObserver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(QLNetworkStateObserver *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = v3;

  self->_iCloudDriveReachabilityToken = -1;
  if (!+[QLNetworkStateObserver usingRemoteNetworkObserver])
  {
    v5 = dispatch_queue_create("com.apple.quicklook.networkwatcher", 0);
    queue = self->_queue;
    self->_queue = v5;

    v7 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__QLNetworkStateObserver__commonInit__block_invoke;
    block[3] = &unk_279AE1158;
    block[4] = self;
    dispatch_sync(v7, block);
    [(QLNetworkStateObserver *)self startObserving];
  }
}

uint64_t __37__QLNetworkStateObserver__commonInit__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(*(a1 + 32) + 80);

  return [v5 setDelegate:?];
}

- (void)setRemoteObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  remoteObserver = selfCopy->_remoteObserver;
  selfCopy->_remoteObserver = observerCopy;

  objc_sync_exit(selfCopy);

  [(QLNetworkStateObserver *)selfCopy _updateRemoteObserver];
}

- (void)pushOperation
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_stack;
  [(QLNetworkStateObserver *)obj _updateNetworkActivityIndicator];
  objc_sync_exit(obj);
}

- (void)popOperation
{
  obj = self;
  objc_sync_enter(obj);
  --obj->_stack;
  [(QLNetworkStateObserver *)obj _updateNetworkActivityIndicator];
  objc_sync_exit(obj);
}

- (void)_updateNetworkStateWithNotifyToken:(int)token
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v5 = state;
    v6 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v5;
      _os_log_impl(&dword_261653000, v7, OS_LOG_TYPE_DEFAULT, "Could not get state of the CloudDocs availability notification: error %u #Downloading", buf, 8u);
    }

    [(QLNetworkStateObserver *)self _setNetworkState:0];
  }

  else
  {
    [(QLNetworkStateObserver *)self _updateNetworkStateWithFlags:state64];
  }
}

- (void)startObserving
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__QLNetworkStateObserver_startObserving__block_invoke;
  v2[3] = &unk_279AE1158;
  v2[4] = self;
  QLRunInBackgroundThread(v2);
}

void __40__QLNetworkStateObserver_startObserving__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [objc_opt_class() networkAccessShouldGoThroughCloudDocsDaemon];
  v4 = *(a1 + 32);
  if (!v3)
  {
    if (*(v4 + 64))
    {
      goto LABEL_25;
    }

    *(v4 + 32) = v4;
    *(*(a1 + 32) + 64) = SCNetworkReachabilityCreateWithName(0, "apple.com");
    v14 = *(a1 + 32);
    v15 = *(v14 + 64);
    if (v15)
    {
      if (SCNetworkReachabilitySetCallback(v15, _reachabilityDidChange, (v14 + 24)) && SCNetworkReachabilitySetDispatchQueue(*(*(a1 + 32) + 64), *(*(a1 + 32) + 16)))
      {
        goto LABEL_25;
      }

      v16 = MEMORY[0x277D43EF8];
      v17 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v17 = *v16;
      }

      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_22:
        *(*(a1 + 32) + 76) = 0;
        [*(a1 + 32) _setNetworkState:2];
        goto LABEL_25;
      }

      LOWORD(location[0]) = 0;
      v18 = "Couldn't set reachability callback or queue #Downloading";
      v19 = v17;
      v20 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v21 = MEMORY[0x277D43EF8];
      v22 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v22 = *v21;
      }

      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      LOWORD(location[0]) = 0;
      v18 = "Couldn't create reachability object #Downloading";
      v19 = v22;
      v20 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_261653000, v19, v20, v18, location, 2u);
    goto LABEL_22;
  }

  if ((*(v4 + 72) & 0x80000000) != 0)
  {
    objc_initWeak(location, v4);
    v6 = BRNotificationNameForServerAvailabilityChanges_delayInitStub(v5);
    v7 = v6;
    v8 = [v6 UTF8String];
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__QLNetworkStateObserver_startObserving__block_invoke_2;
    handler[3] = &unk_279AE1180;
    objc_copyWeak(&v24, location);
    v11 = notify_register_dispatch(v8, (v9 + 72), v10, handler);

    if (v11)
    {
      v12 = MEMORY[0x277D43EF8];
      v13 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v27 = v11;
        _os_log_impl(&dword_261653000, v13, OS_LOG_TYPE_DEFAULT, "Could not register for the CloudDocs availability notification: error %u #Downloading", buf, 8u);
      }

      [*(a1 + 32) _setNetworkState:0];
    }

    else
    {
      [*(a1 + 32) _updateNetworkStateWithNotifyToken:*(*(a1 + 32) + 72)];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

LABEL_25:
  objc_sync_exit(v2);
}

void __40__QLNetworkStateObserver_startObserving__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNetworkStateWithNotifyToken:a2];
}

- (void)stopObserving
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__QLNetworkStateObserver_stopObserving__block_invoke;
  v2[3] = &unk_279AE1158;
  v2[4] = self;
  QLRunInBackgroundThread(v2);
}

void __39__QLNetworkStateObserver_stopObserving__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _unregisterReachability];
  v2 = *(*(a1 + 32) + 72);
  if (v2 >= 1)
  {
    notify_cancel(v2);
    *(*(a1 + 32) + 72) = -1;
  }

  objc_sync_exit(obj);
}

- (void)_unregisterReachability
{
  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilitySetCallback(reachability, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(self->_reachability, 0);
    CFRelease(self->_reachability);
    self->_reachability = 0;
    self->_reachabilityFlags = 0;
    self->_networkState = 0;
  }
}

- (void)dealloc
{
  [(QLNetworkStateObserver *)self _unregisterReachability];
  v3.receiver = self;
  v3.super_class = QLNetworkStateObserver;
  [(QLNetworkStateObserver *)&v3 dealloc];
}

- (BOOL)isWifiCapable
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return MGGetBoolAnswer();
}

- (void)_update
{
  flags = 0;
  if (SCNetworkReachabilityGetFlags(self->_reachability, &flags))
  {
    [(QLNetworkStateObserver *)self _updateNetworkStateWithFlags:flags];
  }
}

- (void)_updateNetworkActivityIndicator
{
  obj = self;
  objc_sync_enter(obj);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:obj->_stack != 0];

  objc_sync_exit(obj);
}

- (void)_setNetworkState:(unint64_t)state
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_networkState != state)
  {
    self->_networkState = state;
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      networkState = self->_networkState;
      if (networkState > 4)
      {
        v7 = @"Undefined QLNetworkState";
      }

      else
      {
        v7 = off_279AE11C8[networkState];
      }

      *v9 = 138412290;
      *&v9[4] = v7;
      v8 = v5;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_INFO, "Network state changed to %@ #Downloading", v9, 0xCu);
    }

    [(QLNetworkStateObserver *)self _updateRemoteObserver:*v9];
  }
}

- (void)_updateNetworkStateWithFlags:(unsigned int)flags
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__QLNetworkStateObserver__updateNetworkStateWithFlags___block_invoke;
  v4[3] = &unk_279AE11A8;
  v4[4] = self;
  flagsCopy = flags;
  dispatch_async(queue, v4);
}

uint64_t __55__QLNetworkStateObserver__updateNetworkStateWithFlags___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 76) = *(a1 + 40);
  v2 = MEMORY[0x277D43EF8];
  v3 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_261653000, v3, OS_LOG_TYPE_INFO, "Network reachability flags changed to 0x%x #Downloading", v9, 8u);
  }

  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 32);
    if ((v5 & 0x40000) != 0)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    [*(*(a1 + 32) + 80) refresh];
    if ([*(*(a1 + 32) + 80) airplaneMode])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = *(a1 + 32);
  }

  return [v7 _setNetworkState:v6];
}

- (void)setNetworkState:(unint64_t)state
{
  self->_networkState = state;
  if (state)
  {
    [(QLNetworkStateObserver *)self _updateCompletionBlocks];
  }
}

- (void)networkStateWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v8 = blockCopy;
    if ([(QLNetworkStateObserver *)self networkState])
    {
      v8[2](v8, self->_networkState);
    }

    else
    {
      v5 = self->_completionBlocks;
      objc_sync_enter(v5);
      completionBlocks = self->_completionBlocks;
      v7 = MEMORY[0x266708AD0](v8);
      [(NSMutableArray *)completionBlocks addObject:v7];

      objc_sync_exit(v5);
    }

    blockCopy = v8;
  }
}

- (void)_updateCompletionBlocks
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = self->_completionBlocks;
  objc_sync_enter(v3);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_completionBlocks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7), [(QLNetworkStateObserver *)self networkState]);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  objc_sync_exit(v3);
}

- (void)airplaneModeChanged
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__QLNetworkStateObserver_airplaneModeChanged__block_invoke;
  block[3] = &unk_279AE1158;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __45__QLNetworkStateObserver_airplaneModeChanged__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) airplaneMode];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _setNetworkState:1];
  }

  else
  {

    return [v3 _update];
  }
}

- (void)updateState:(unint64_t)state
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (state > 4)
    {
      v7 = @"Undefined QLNetworkState";
    }

    else
    {
      v7 = off_279AE11C8[state];
    }

    *v9 = 138412290;
    *&v9[4] = v7;
    v8 = v6;
    _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_INFO, "Network state update from host %@ #Downloading", v9, 0xCu);
  }

  [(QLNetworkStateObserver *)self _setNetworkState:state, *v9, *&v9[8]];
}

+ (BOOL)usingRemoteNetworkObserver
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqualToString:@"com.apple.quicklook.UIExtension"];
  return mainBundle;
}

+ (BOOL)networkAccessShouldGoThroughCloudDocsDaemon
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.iCloudDriveApp"];

  return v4;
}

- (void)_updateRemoteObserver
{
  obj = self;
  objc_sync_enter(obj);
  [(QLNetworkStateListener *)obj->_remoteObserver updateState:[(QLNetworkStateObserver *)obj networkState]];
  objc_sync_exit(obj);
}

@end