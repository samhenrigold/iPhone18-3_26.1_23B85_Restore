@interface MTSubscriptionEntitlementsObserver
- (MTSubscriptionEntitlementsObserver)initWithDelegate:(id)delegate onQueue:(id)queue;
- (MTSubscriptionEntitlementsObserverDelegate)delegate;
- (void)entitlementsDidChange:(id)change;
@end

@implementation MTSubscriptionEntitlementsObserver

- (MTSubscriptionEntitlementsObserver)initWithDelegate:(id)delegate onQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = MTSubscriptionEntitlementsObserver;
  v8 = [(MTSubscriptionEntitlementsObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v9->_subscriptionsEntitlementsLock._os_unfair_lock_opaque = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke;
    block[3] = &unk_1E8568E28;
    v12 = v9;
    dispatch_async(queueCopy, block);
  }

  return v9;
}

void __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v2 = getASDSubscriptionEntitlementsClass_softClass;
  v23 = getASDSubscriptionEntitlementsClass_softClass;
  if (!getASDSubscriptionEntitlementsClass_softClass)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getASDSubscriptionEntitlementsClass_block_invoke;
    v18 = &unk_1E856B060;
    v19 = &v20;
    __getASDSubscriptionEntitlementsClass_block_invoke(&v15);
    v2 = v21[3];
  }

  v3 = v2;
  _Block_object_dispose(&v20, 8);
  v4 = objc_opt_new();
  [*(a1 + 32) setEntitlements:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *(a1 + 32);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v7 = getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr;
  v23 = getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_block_invoke;
    v18 = &unk_1E856B060;
    v19 = &v20;
    v8 = AppStoreDaemonLibrary();
    v9 = dlsym(v8, "ASDSubscriptionEntitlementsPodcastDidChangeNotification");
    *(v19[1] + 24) = v9;
    getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr = *(v19[1] + 24);
    v7 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v7)
  {
    __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke_cold_1();
    v14 = v13;
    _Block_object_dispose(&v20, 8);
    _Unwind_Resume(v14);
  }

  v10 = *(a1 + 32);
  v11 = *v7;
  v12 = [v10 entitlements];
  [v5 addObserver:v6 selector:sel_entitlementsDidChange_ name:v11 object:v12];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

- (void)entitlementsDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MTSubscriptionEntitlementsObserver_entitlementsDidChange___block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__MTSubscriptionEntitlementsObserver_entitlementsDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 entitlementsDidChange];
}

- (MTSubscriptionEntitlementsObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  __getASDSubscriptionEntitlementsClass_block_invoke_cold_1();
}

@end