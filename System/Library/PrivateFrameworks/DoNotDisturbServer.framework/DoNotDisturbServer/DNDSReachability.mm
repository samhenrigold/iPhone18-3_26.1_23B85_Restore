@interface DNDSReachability
+ (id)commonReachability;
- (DNDSReachability)init;
- (void)_informDelegates;
- (void)_setReachable:(BOOL)reachable;
- (void)_updateHandlerForPath:(id)path;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)setupPathMonitor;
@end

@implementation DNDSReachability

- (DNDSReachability)init
{
  v13.receiver = self;
  v13.super_class = DNDSReachability;
  v2 = [(DNDSReachability *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.donotdisturb.reachability", v3);
    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 3));
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = nw_path_monitor_create();
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v11 = *(v2 + 5);
    *(v2 + 5) = weakObjectsHashTable;

    *(v2 + 10) = 0;
    [v2 setupPathMonitor];
  }

  return v2;
}

+ (id)commonReachability
{
  if (commonReachability_onceToken != -1)
  {
    +[DNDSReachability commonReachability];
  }

  v3 = commonReachability_reachability;

  return v3;
}

uint64_t __38__DNDSReachability_commonReachability__block_invoke()
{
  v0 = objc_alloc_init(DNDSReachability);
  v1 = commonReachability_reachability;
  commonReachability_reachability = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  debounceTimer = [(DNDSReachability *)self debounceTimer];
  dispatch_resume(debounceTimer);

  debounceTimer2 = [(DNDSReachability *)self debounceTimer];
  dispatch_source_cancel(debounceTimer2);

  v5.receiver = self;
  v5.super_class = DNDSReachability;
  [(DNDSReachability *)&v5 dealloc];
}

- (void)_updateHandlerForPath:(id)path
{
  pathCopy = path;
  queue = [(DNDSReachability *)self queue];
  dispatch_assert_queue_V2(queue);

  status = nw_path_get_status(pathCopy);
  [(DNDSReachability *)self _setReachable:(status & 0xFFFFFFFD) == 1];
  if (![(DNDSReachability *)self isInitialized])
  {
    [(DNDSReachability *)self setInitialized:1];

    [(DNDSReachability *)self setLastInformedReachability:(status & 0xFFFFFFFD) == 1];
  }
}

- (void)setupPathMonitor
{
  pathMonitor = [(DNDSReachability *)self pathMonitor];
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __36__DNDSReachability_setupPathMonitor__block_invoke;
  update_handler[3] = &unk_278F8AAA0;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(pathMonitor, update_handler);

  pathMonitor2 = [(DNDSReachability *)self pathMonitor];
  queue = [(DNDSReachability *)self queue];
  nw_path_monitor_set_queue(pathMonitor2, queue);

  debounceTimer = self->_debounceTimer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__DNDSReachability_setupPathMonitor__block_invoke_2;
  v7[3] = &unk_278F89ED0;
  v7[4] = self;
  dispatch_source_set_event_handler(debounceTimer, v7);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(DNDSReachability *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__DNDSReachability_addDelegate___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

void __32__DNDSReachability_addDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 count];

  if (!v3)
  {
    v4 = [*(a1 + 32) debounceTimer];
    dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);

    v5 = [*(a1 + 32) debounceTimer];
    dispatch_resume(v5);

    v6 = [*(a1 + 32) pathMonitor];
    nw_path_monitor_start(v6);

    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    if (evaluator_for_endpoint)
    {
      v8 = nw_path_evaluator_copy_path();
      [*(a1 + 32) _updateHandlerForPath:v8];
    }
  }

  v9 = [*(a1 + 32) delegates];
  [v9 addObject:*(a1 + 40)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(DNDSReachability *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DNDSReachability_removeDelegate___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

void __35__DNDSReachability_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) delegates];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [*(a1 + 32) debounceTimer];
    dispatch_suspend(v5);

    v6 = [*(a1 + 32) pathMonitor];
    nw_path_monitor_cancel(v6);

    v7 = *(a1 + 32);

    [v7 setInitialized:0];
  }
}

- (void)_setReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v14 = *MEMORY[0x277D85DE8];
  queue = [(DNDSReachability *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(DNDSReachability *)self isReachable]!= reachableCopy)
  {
    self->_reachable = reachableCopy;
    if ([(DNDSReachability *)self isInitialized])
    {
      v6 = DNDSLogSystemState;
      if (os_log_type_enabled(DNDSLogSystemState, OS_LOG_TYPE_INFO))
      {
        v7 = MEMORY[0x277CCABB0];
        v8 = v6;
        v9 = [v7 numberWithBool:reachableCopy];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_INFO, "Informed of reachability change to %@", &v12, 0xCu);
      }

      debounceTimer = [(DNDSReachability *)self debounceTimer];
      v11 = dispatch_walltime(0, 1000000000);
      dispatch_source_set_timer(debounceTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    }
  }
}

- (void)_informDelegates
{
  v26 = *MEMORY[0x277D85DE8];
  queue = [(DNDSReachability *)self queue];
  dispatch_assert_queue_V2(queue);

  isReachable = [(DNDSReachability *)self isReachable];
  lastInformedReachability = [(DNDSReachability *)self lastInformedReachability];
  v6 = DNDSLogSystemState;
  v7 = os_log_type_enabled(DNDSLogSystemState, OS_LOG_TYPE_DEFAULT);
  if (isReachable == lastInformedReachability)
  {
    if (v7)
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = v6;
      v18 = [v16 numberWithBool:isReachable];
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Debounced reachability state (%@) did not change. Ignoring.", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = v6;
      v10 = [v8 numberWithBool:isReachable];
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Informing delegates of debounced reachability state: %@", buf, 0xCu);
    }

    [(DNDSReachability *)self setLastInformedReachability:isReachable];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    delegates = [(DNDSReachability *)self delegates];
    v12 = [delegates countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(delegates);
          }

          [*(*(&v19 + 1) + 8 * v15++) reachabilityChangedTo:isReachable];
        }

        while (v13 != v15);
        v13 = [delegates countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }
}

@end