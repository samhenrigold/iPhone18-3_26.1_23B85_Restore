@interface PSYInitialSyncStateObserver
- (PSYInitialSyncStateObserver)initWithDelegate:(id)delegate;
- (PSYInitialSyncStateObserverDelegate)delegate;
- (id)syncProviderWithErrorHandler:(id)handler;
- (void)_handleConnectionInvalidated;
- (void)_queue_initializeIfNotInitialized;
- (void)_queue_notifyCanRetryFailedRequests;
- (void)_queue_querySyncState;
- (void)_queue_updateSyncStates:(id)states notifyDelegateOfChanges:(BOOL)changes;
- (void)dealloc;
- (void)didUpdateSyncForPairingID:(id)d;
- (void)registry:(id)registry changed:(id)changed properties:(id)properties;
- (void)requestInitialNonMigrationSyncStateForPairingIdentifier:(id)identifier completion:(id)completion;
- (void)requestInitialSyncStateForPairingIdentifier:(id)identifier completion:(id)completion;
- (void)requestSyncStateForPairingIdentifier:(id)identifier completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation PSYInitialSyncStateObserver

- (void)_queue_initializeIfNotInitialized
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(PSYInitialSyncStateObserver *)self syncProviderWithErrorHandler:0];
  [v3 registerSyncStateObserverIfNeeded];

  if (!self->_init)
  {
    v4 = +[PSYRegistrySingleton registry];
    getAllDevices = [v4 getAllDevices];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = [getAllDevices count];
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    if (*(v19 + 6))
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      obj = getAllDevices;
      v5 = [obj countByEnumeratingWithState:&v12 objects:v22 count:16];
      if (v5)
      {
        v6 = *v13;
        do
        {
          v7 = 0;
          do
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(obj);
            }

            pairingID = [*(*(&v12 + 1) + 8 * v7) pairingID];
            v11[0] = MEMORY[0x277D85DD0];
            v11[1] = 3221225472;
            v11[2] = __64__PSYInitialSyncStateObserver__queue_initializeIfNotInitialized__block_invoke;
            v11[3] = &unk_2799FB5D8;
            v11[5] = v16;
            v11[6] = &v18;
            v11[4] = self;
            [(PSYInitialSyncStateObserver *)self requestSyncStateForPairingIdentifier:pairingID completion:v11];

            ++v7;
          }

          while (v5 != v7);
          v5 = [obj countByEnumeratingWithState:&v12 objects:v22 count:16];
        }

        while (v5);
      }
    }

    else
    {
      self->_init = 1;
    }

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v18, 8);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  daemonStartedNotifyToken = self->_daemonStartedNotifyToken;
  if (daemonStartedNotifyToken != -1)
  {
    notify_cancel(daemonStartedNotifyToken);
  }

  syncSwitchNotifyToken = self->_syncSwitchNotifyToken;
  if (syncSwitchNotifyToken != -1)
  {
    notify_cancel(syncSwitchNotifyToken);
  }

  v5.receiver = self;
  v5.super_class = PSYInitialSyncStateObserver;
  [(PSYInitialSyncStateObserver *)&v5 dealloc];
}

void __59__PSYInitialSyncStateObserver__handleConnectionInvalidated__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_handleConnectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PSYInitialSyncStateObserver__handleConnectionInvalidated__block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

- (PSYInitialSyncStateObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v35.receiver = self;
  v35.super_class = PSYInitialSyncStateObserver;
  v5 = [(PSYInitialSyncStateObserver *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v7 = psy_log(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = psy_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25DF25000, v10, OS_LOG_TYPE_DEFAULT, "Initializing PSYInitialSyncStateObserver to monitor sync state", buf, 2u);
      }
    }

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncStateCache = v6->_syncStateCache;
    v6->_syncStateCache = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    initialSyncStateCache = v6->_initialSyncStateCache;
    v6->_initialSyncStateCache = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncStateEntryCache = v6->_syncStateEntryCache;
    v6->_syncStateEntryCache = v16;

    v18 = dispatch_queue_create("com.apple.pairedsync.syncobserver", v11);
    queue = v6->_queue;
    v6->_queue = v18;

    v20 = dispatch_queue_create("com.apple.pairedsync.delegate", v11);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v20;

    [(PSYInitialSyncStateObserver *)v6 setDelegate:delegateCopy];
    objc_initWeak(buf, v6);
    uTF8String = [@"com.apple.pairedsyncd.launched" UTF8String];
    v23 = v6->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke;
    handler[3] = &unk_2799FB538;
    objc_copyWeak(&v33, buf);
    notify_register_dispatch(uTF8String, &v6->_daemonStartedNotifyToken, v23, handler);
    uTF8String2 = [@"com.apple.pairedsync.lastsyncswitchid" UTF8String];
    v25 = v6->_queue;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke_2;
    v30[3] = &unk_2799FB538;
    objc_copyWeak(&v31, buf);
    notify_register_dispatch(uTF8String2, &v6->_syncSwitchNotifyToken, v25, v30);
    [PSYRegistrySingleton addDelegate:v6];
    v26 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke_3;
    block[3] = &unk_2799FB560;
    v29 = v6;
    dispatch_async(v26, block);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  return v6;
}

void __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _queue_querySyncState];
    [v2 _queue_notifyCanRetryFailedRequests];
    WeakRetained = v2;
  }
}

void __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_querySyncState];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PSYInitialSyncStateObserver_setDelegate___block_invoke;
  v7[3] = &unk_2799FB588;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

- (PSYInitialSyncStateObserverDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  delegateQueue = self->_delegateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PSYInitialSyncStateObserver_delegate__block_invoke;
  v5[3] = &unk_2799FB5B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(delegateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__PSYInitialSyncStateObserver_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

void __64__PSYInitialSyncStateObserver__queue_initializeIfNotInitialized__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  if (!--*(*(a1[6] + 8) + 24) && !*(*(a1[5] + 8) + 24))
  {
    v5 = a1[4];
    v6 = *(v5 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PSYInitialSyncStateObserver__queue_initializeIfNotInitialized__block_invoke_2;
    block[3] = &unk_2799FB560;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

- (void)requestSyncStateForPairingIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (identifierCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke;
    block[3] = &unk_2799FB6A0;
    block[4] = self;
    v13 = completionCopy;
    v12 = identifierCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = PSYErrorForCode(5);
    (v8)[2](v8, 0, v10);
  }
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_2;
  v9[3] = &unk_2799FB628;
  v9[4] = v2;
  v10 = *(a1 + 48);
  v3 = [v2 syncProviderWithErrorHandler:v9];
  v11[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_4;
  v6[3] = &unk_2799FB678;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [v3 requestDeviceSyncStateEntriesForPairingIDs:v4 completion:v6];
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_3;
  v7[3] = &unk_2799FB600;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_5;
  v8[3] = &unk_2799FB650;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_5(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_updateSyncStates:*(a1 + 40) notifyDelegateOfChanges:0];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [v2 hasCompletedSync];

  v4 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];

  if (v4)
  {
    v6 = psy_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (!v7)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v9 = psy_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 48) UUIDString];
      v11 = v10;
      v12 = @"NO";
      if (v3)
      {
        v12 = @"YES";
      }

      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_25DF25000, v9, OS_LOG_TYPE_DEFAULT, "requestSyncStateForPairingIdentifier:%@ hasCompletedSync=%@", &v18, 0x16u);
    }

    v13 = 0;
    goto LABEL_11;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.pairedsync" code:43 userInfo:0];
  v14 = psy_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v9 = psy_log(v16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 48) UUIDString];
      v18 = 138412546;
      v19 = v17;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_25DF25000, v9, OS_LOG_TYPE_DEFAULT, "requestSyncStateForPairingIdentifier:%@ error=%@", &v18, 0x16u);
    }

LABEL_11:
  }

LABEL_13:
  (*(*(a1 + 56) + 16))();
}

- (void)requestInitialSyncStateForPairingIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke;
  block[3] = &unk_2799FB6A0;
  v12 = identifierCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_2;
  v9[3] = &unk_2799FB628;
  v9[4] = v2;
  v10 = *(a1 + 48);
  v3 = [v2 syncProviderWithErrorHandler:v9];
  v11[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_4;
  v6[3] = &unk_2799FB678;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [v3 requestDeviceSyncStateEntriesForPairingIDs:v4 completion:v6];
}

void __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_3;
  v7[3] = &unk_2799FB600;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_5;
  v8[3] = &unk_2799FB650;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_updateSyncStates:*(a1 + 40) notifyDelegateOfChanges:0];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [v2 hasCompletedInitialOrMigrationSync];

  v5 = psy_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = psy_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) UUIDString];
      v10 = v9;
      v11 = @"NO";
      if (v3)
      {
        v11 = @"YES";
      }

      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "requestInitialSyncStateForPairingIdentifier:%@ hasCompletedInitialOrMigrationSync=%@", &v13, 0x16u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)requestInitialNonMigrationSyncStateForPairingIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke;
  block[3] = &unk_2799FB6A0;
  v12 = identifierCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_2;
  v9[3] = &unk_2799FB628;
  v9[4] = v2;
  v10 = *(a1 + 48);
  v3 = [v2 syncProviderWithErrorHandler:v9];
  v11[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_4;
  v6[3] = &unk_2799FB678;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [v3 requestDeviceSyncStateEntriesForPairingIDs:v4 completion:v6];
}

void __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_3;
  v7[3] = &unk_2799FB600;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_5;
  v8[3] = &unk_2799FB650;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_updateSyncStates:*(a1 + 40) notifyDelegateOfChanges:0];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [v2 hasCompletedInitialSync];

  v5 = psy_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = psy_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) UUIDString];
      v10 = v9;
      v11 = @"NO";
      if (v3)
      {
        v11 = @"YES";
      }

      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "requestInitialNonMigrationSyncStateForPairingIdentifier:%@ hasCompletedInitialSync=%@", &v13, 0x16u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (id)syncProviderWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  if (!connection)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.pairedsyncd.syncstate" options:4096];
    v7 = self->_connection;
    self->_connection = v6;

    v8 = objc_alloc_init(PSYSyncStateObserverExportedObject);
    [(PSYSyncStateObserverExportedObject *)v8 setDelegate:self];
    [(NSXPCConnection *)self->_connection setExportedObject:v8];
    v9 = self->_connection;
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC3990];
    [(NSXPCConnection *)v9 setExportedInterface:v10];

    v11 = self->_connection;
    v12 = PSYSyncStateProviderXPCInterface();
    [(NSXPCConnection *)v11 setRemoteObjectInterface:v12];

    objc_initWeak(&location, self);
    v13 = self->_connection;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __60__PSYInitialSyncStateObserver_syncProviderWithErrorHandler___block_invoke;
    v19 = &unk_2799FB6C8;
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:&v16];
    [(NSXPCConnection *)self->_connection resume:v16];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    connection = self->_connection;
  }

  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v14;
}

void __60__PSYInitialSyncStateObserver_syncProviderWithErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInvalidated];
}

- (void)_queue_querySyncState
{
  [(PSYInitialSyncStateObserver *)self _queue_initializeIfNotInitialized];
  keyEnumerator = [(NSMutableDictionary *)self->_syncStateCache keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  if ([allObjects count])
  {
    v5 = [(PSYInitialSyncStateObserver *)self syncProviderWithErrorHandler:0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__PSYInitialSyncStateObserver__queue_querySyncState__block_invoke;
    v6[3] = &unk_2799FB6F0;
    v6[4] = self;
    [v5 requestDeviceSyncStateEntriesForPairingIDs:allObjects completion:v6];
  }
}

void __52__PSYInitialSyncStateObserver__queue_querySyncState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PSYInitialSyncStateObserver__queue_querySyncState__block_invoke_2;
  v7[3] = &unk_2799FB588;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_queue_notifyCanRetryFailedRequests
{
  delegate = [(PSYInitialSyncStateObserver *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PSYInitialSyncStateObserver *)self delegate];
    [delegate2 initialSyncStateObserverClientCanRetryFailedRequests:self];
  }
}

- (void)_queue_updateSyncStates:(id)states notifyDelegateOfChanges:(BOOL)changes
{
  changesCopy = changes;
  v93 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  dispatch_assert_queue_V2(self->_queue);
  if (changesCopy)
  {
    v67 = [MEMORY[0x277CBEB58] set];
    v64 = [MEMORY[0x277CBEB58] set];
    v65 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v67 = 0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [statesCopy keyEnumerator];
  v7 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  v66 = statesCopy;
  if (v7)
  {
    v9 = v7;
    v69 = *v84;
    *&v8 = 138412290;
    v63 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v84 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v83 + 1) + 8 * i);
        v12 = [statesCopy objectForKeyedSubscript:{v11, v63}];
        [(NSMutableDictionary *)self->_syncStateEntryCache setObject:v12 forKeyedSubscript:v11];
        v13 = [(NSMutableDictionary *)self->_syncStateCache objectForKeyedSubscript:v11];
        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "hasCompletedSync")}];
        if ([v13 BOOLValue] & 1) == 0 && (v15 = objc_msgSend(v14, "BOOLValue"), v16 = v67, (v15) || objc_msgSend(v13, "BOOLValue") && (v17 = objc_msgSend(v14, "BOOLValue"), v16 = v65, (v17 & 1) == 0))
        {
          [v16 addObject:v11];
          [(NSMutableDictionary *)self->_syncStateCache setObject:v14 forKeyedSubscript:v11];
        }

        v18 = [(NSMutableDictionary *)self->_initialSyncStateCache objectForKeyedSubscript:v11];

        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "hasCompletedInitialOrMigrationSync")}];

        if (([v18 BOOLValue] & 1) == 0 && objc_msgSend(v19, "BOOLValue"))
        {
          [v64 addObject:v11];
LABEL_23:
          [(NSMutableDictionary *)self->_initialSyncStateCache setObject:v19 forKeyedSubscript:v11];
          statesCopy = v66;
          goto LABEL_24;
        }

        if ([v18 BOOLValue])
        {
          bOOLValue = [v19 BOOLValue];
          if ((bOOLValue & 1) == 0)
          {
            v21 = psy_log(bOOLValue);
            v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

            if (v22)
            {
              v24 = psy_log(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v63;
                v91 = v11;
                _os_log_impl(&dword_25DF25000, v24, OS_LOG_TYPE_DEFAULT, "Initial sync status changed, reset cached value for: %@", buf, 0xCu);
              }
            }

            goto LABEL_23;
          }
        }

LABEL_24:
      }

      v9 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v9);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v70 = v65;
  v25 = [v70 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v80;
    do
    {
      v28 = 0;
      do
      {
        if (*v80 != v27)
        {
          objc_enumerationMutation(v70);
        }

        v29 = *(*(&v79 + 1) + 8 * v28);
        v30 = psy_log(v25);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

        if (v31)
        {
          v33 = psy_log(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v91 = v29;
            _os_log_impl(&dword_25DF25000, v33, OS_LOG_TYPE_DEFAULT, "Resetting sync state for %{public}@", buf, 0xCu);
          }
        }

        delegate = [(PSYInitialSyncStateObserver *)self delegate];
        v35 = objc_opt_respondsToSelector();

        if (v35)
        {
          delegate2 = [(PSYInitialSyncStateObserver *)self delegate];
          [delegate2 initialSyncStateObserver:self syncDidResetForPairingIdentifier:v29];
        }

        ++v28;
      }

      while (v26 != v28);
      v25 = [v70 countByEnumeratingWithState:&v79 objects:v89 count:16];
      v26 = v25;
    }

    while (v25);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v37 = v64;
  v38 = [v37 countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    do
    {
      v41 = 0;
      do
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v75 + 1) + 8 * v41);
        v43 = psy_log(v38);
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

        if (v44)
        {
          v46 = psy_log(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v91 = v42;
            _os_log_impl(&dword_25DF25000, v46, OS_LOG_TYPE_DEFAULT, "Setting completed Initial sync state for %{public}@", buf, 0xCu);
          }
        }

        delegate3 = [(PSYInitialSyncStateObserver *)self delegate];
        v48 = objc_opt_respondsToSelector();

        if (v48)
        {
          delegate4 = [(PSYInitialSyncStateObserver *)self delegate];
          [delegate4 initialSyncStateObserver:self initialSyncDidCompleteForPairingIdentifier:v42];
        }

        ++v41;
      }

      while (v39 != v41);
      v38 = [v37 countByEnumeratingWithState:&v75 objects:v88 count:16];
      v39 = v38;
    }

    while (v38);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v50 = v67;
  v51 = [v50 countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v72;
    do
    {
      v54 = 0;
      do
      {
        if (*v72 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v71 + 1) + 8 * v54);
        v56 = psy_log(v51);
        v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);

        if (v57)
        {
          v59 = psy_log(v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v91 = v55;
            _os_log_impl(&dword_25DF25000, v59, OS_LOG_TYPE_DEFAULT, "Setting completed Reunion sync state for %{public}@", buf, 0xCu);
          }
        }

        delegate5 = [(PSYInitialSyncStateObserver *)self delegate];
        v61 = objc_opt_respondsToSelector();

        if (v61)
        {
          delegate6 = [(PSYInitialSyncStateObserver *)self delegate];
          [delegate6 initialSyncStateObserver:self syncDidCompleteForPairingIdentifier:v55];
        }

        ++v54;
      }

      while (v52 != v54);
      v51 = [v50 countByEnumeratingWithState:&v71 objects:v87 count:16];
      v52 = v51;
    }

    while (v51);
  }
}

- (void)registry:(id)registry changed:(id)changed properties:(id)properties
{
  propertiesCopy = properties;
  if (([propertiesCopy containsObject:*MEMORY[0x277D37BD0]] & 1) != 0 || objc_msgSend(propertiesCopy, "containsObject:", *MEMORY[0x277D37BB8]))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PSYInitialSyncStateObserver_registry_changed_properties___block_invoke;
    block[3] = &unk_2799FB560;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)didUpdateSyncForPairingID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PSYInitialSyncStateObserver_didUpdateSyncForPairingID___block_invoke;
  v7[3] = &unk_2799FB588;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __57__PSYInitialSyncStateObserver_didUpdateSyncForPairingID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [[PSYDeviceSyncStateEntry alloc] initWithPairingID:*(a1 + 32) syncState:3];
    v3 = v2;
    if (v2)
    {
      v5 = *(a1 + 32);
      v6[0] = v2;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 40) _queue_updateSyncStates:v4 notifyDelegateOfChanges:1];
}

@end