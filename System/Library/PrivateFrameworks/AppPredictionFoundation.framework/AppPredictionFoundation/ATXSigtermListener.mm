@interface ATXSigtermListener
+ (id)sharedInstance;
- (ATXSigtermListener)init;
- (void)_notifyObserversOfSigterm;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation ATXSigtermListener

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ATXSigtermListener_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7, block);
  }

  v2 = sharedInstance__pasExprOnceResult;

  return v2;
}

void __36__ATXSigtermListener_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v1);
}

- (ATXSigtermListener)init
{
  v12.receiver = self;
  v12.super_class = ATXSigtermListener;
  v2 = [(ATXSigtermListener *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v2->_observers;
    v2->_observers = v3;

    signal(15, 1);
    v5 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, 0);
    v6 = init_sigterm_source;
    init_sigterm_source = v5;

    objc_initWeak(&location, v2);
    v7 = init_sigterm_source;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__ATXSigtermListener_init__block_invoke;
    v9[3] = &unk_27858FD38;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v7, v9);
    dispatch_activate(init_sigterm_source);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__ATXSigtermListener_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversOfSigterm];
}

- (void)_notifyObserversOfSigterm
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = selfCopy->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) handleSigterm];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

@end