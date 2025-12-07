@interface WLKSubscriptionStore
+ (id)sharedInstance;
- (BOOL)_isSubscriptionSyncInProgress;
- (WLKSubscriptionStore)init;
- (id)_connection;
- (id)cachedSubscriptionData;
- (void)_setIsSubscriptionSyncInProgress:(BOOL)progress;
- (void)dealloc;
- (void)fetchSubscriptionData:(BOOL)data completion:(id)completion;
- (void)refreshSubscriptionDataIfNeeded;
@end

@implementation WLKSubscriptionStore

+ (id)sharedInstance
{
  if (sharedInstance___once_3 != -1)
  {
    +[WLKSubscriptionStore sharedInstance];
  }

  v3 = sharedInstance___singleInstance_0;

  return v3;
}

uint64_t __38__WLKSubscriptionStore_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WLKSubscriptionStore);
  v1 = sharedInstance___singleInstance_0;
  sharedInstance___singleInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WLKSubscriptionStore)init
{
  v13.receiver = self;
  v13.super_class = WLKSubscriptionStore;
  v2 = [(WLKSubscriptionStore *)&v13 init];
  if (v2)
  {
    subscriptionSyncInProgress = 0;
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28__WLKSubscriptionStore_init__block_invoke;
    handler[3] = &unk_279E5F220;
    v5 = v2;
    v10 = v5;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.WatchListKit._WLKSubscriptionStoreSubscriptionDataDidChangeInternal", &v2->_subscriptionSyncSubscriptionDataDidChangeNotificationToken, v3, handler);

    v6 = dispatch_queue_create("com.apple.WatchListKit.SubscriptionStoreClient", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)refreshSubscriptionDataIfNeeded
{
  _isSubscriptionSyncInProgress = [(WLKSubscriptionStore *)self _isSubscriptionSyncInProgress];
  v4 = _isSubscriptionSyncInProgress;
  v5 = WLKSubscriptionSyncLogObject(_isSubscriptionSyncInProgress);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "Not refreshing subscription data as subscription sync is already in-progress", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "Start subscription refresh request", v8, 2u);
    }

    _connection = [(WLKSubscriptionStore *)self _connection];
    v5 = [_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_15];

    [v5 refreshSubscriptionData:0];
  }
}

- (BOOL)_isSubscriptionSyncInProgress
{
  os_unfair_lock_lock(&__syncInProgressLock);
  v2 = subscriptionSyncInProgress;
  os_unfair_lock_unlock(&__syncInProgressLock);
  return v2;
}

- (id)_connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = selfCopy->_connection;
    selfCopy->_connection = v4;

    v6 = selfCopy->_connection;
    v7 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)selfCopy->_connection setExportedObject:selfCopy];
    v8 = selfCopy->_connection;
    v9 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:&__block_literal_global_21];
    objc_initWeak(&location, selfCopy);
    v10 = selfCopy->_connection;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __35__WLKSubscriptionStore__connection__block_invoke_22;
    v16 = &unk_279E5EC50;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v13];
    [(NSXPCConnection *)selfCopy->_connection resume:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    connection = selfCopy->_connection;
  }

  v11 = connection;
  objc_sync_exit(selfCopy);

  return v11;
}

void __28__WLKSubscriptionStore_init__block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 24), &state64);
  v2 = getpid();
  if (state64 != v2)
  {
    v3 = WLKSubscriptionSyncLogObject(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "Handling internal sync notification", v5, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained fetchSubscriptionData:0 completion:&__block_literal_global_6];
  }
}

void __28__WLKSubscriptionStore_init__block_invoke_3(uint64_t a1)
{
  v1 = WLKSubscriptionSyncLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "Internal sync complete", v2, 2u);
  }
}

- (void)dealloc
{
  subscriptionSyncSubscriptionDataDidChangeNotificationToken = self->_subscriptionSyncSubscriptionDataDidChangeNotificationToken;
  if (subscriptionSyncSubscriptionDataDidChangeNotificationToken)
  {
    notify_cancel(subscriptionSyncSubscriptionDataDidChangeNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = WLKSubscriptionStore;
  [(WLKSubscriptionStore *)&v4 dealloc];
}

- (void)fetchSubscriptionData:(BOOL)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  _connection = [(WLKSubscriptionStore *)self _connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__WLKSubscriptionStore_fetchSubscriptionData_completion___block_invoke;
  v18[3] = &unk_279E5EB38;
  v8 = completionCopy;
  v19 = v8;
  v9 = [_connection remoteObjectProxyWithErrorHandler:v18];

  v11 = WLKSubscriptionSyncLogObject(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "calling out to daemon to fetch subscription data", &buf, 2u);
  }

  [(WLKSubscriptionStore *)self _setIsSubscriptionSyncInProgress:1];
  objc_initWeak(&buf, self);
  v12 = getpid();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__WLKSubscriptionStore_fetchSubscriptionData_completion___block_invoke_12;
  v14[3] = &unk_279E5FD28;
  objc_copyWeak(&v16, &buf);
  v14[4] = self;
  v13 = v8;
  v15 = v13;
  [v9 fetchSubscriptionData:dataCopy callerProcessID:v12 completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&buf);
}

void __57__WLKSubscriptionStore_fetchSubscriptionData_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSubscriptionSyncLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "Error: Unable to communicate with the remote object proxy (%@)", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __57__WLKSubscriptionStore_fetchSubscriptionData_completion___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setIsSubscriptionSyncInProgress:0];
  v8 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__WLKSubscriptionStore_fetchSubscriptionData_completion___block_invoke_2;
  v12[3] = &unk_279E5FD00;
  objc_copyWeak(&v16, (a1 + 48));
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, v12);

  objc_destroyWeak(&v16);
}

void __57__WLKSubscriptionStore_fetchSubscriptionData_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    objc_storeStrong(v3 + 4, *(a1 + 32));
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {

LABEL_11:
        v12 = WLKSubscriptionSyncLogObject(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKSubscriptionData did change. Firing in-process notification", buf, 2u);
        }

        v13 = [MEMORY[0x277CCAB98] defaultCenter];
        [v13 postNotificationName:@"WLKSubscriptionStoreSubscriptionDataDidChange" object:0];

        goto LABEL_14;
      }

      v10 = [v6 isEqual:v7];

      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
  }

  if (*(a1 + 48))
  {
    v14 = WLKSubscriptionSyncLogObject(WeakRetained);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "Fetched subscription data", v15, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __55__WLKSubscriptionStore_refreshSubscriptionDataIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKSubscriptionSyncLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "Error: Unable to communicate with the remote object proxy (%@)", &v4, 0xCu);
  }
}

- (id)cachedSubscriptionData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__WLKSubscriptionStore_cachedSubscriptionData__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__WLKSubscriptionStore__connection__block_invoke(uint64_t a1)
{
  v1 = WLKSubscriptionSyncLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "Connection interrupted.", v2, 2u);
  }
}

void __35__WLKSubscriptionStore__connection__block_invoke_22(uint64_t a1)
{
  v2 = WLKSubscriptionSyncLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;
  }
}

- (void)_setIsSubscriptionSyncInProgress:(BOOL)progress
{
  os_unfair_lock_lock(&__syncInProgressLock);
  subscriptionSyncInProgress = progress;

  os_unfair_lock_unlock(&__syncInProgressLock);
}

@end