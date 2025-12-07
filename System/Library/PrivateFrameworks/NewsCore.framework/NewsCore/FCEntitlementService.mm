@interface FCEntitlementService
- (FCEntitlementService)initWithConfigurationManager:(id)manager;
- (void)_performEntitlementWithIgnoreCache:(BOOL)cache requestTimeoutDuration:(int64_t)duration completion:(id)completion;
- (void)clearTimer;
- (void)performEntitlementWithIgnoreCache:(BOOL)cache completion:(id)completion;
- (void)startTimerWithTimeoutDuration:(double)duration;
@end

@implementation FCEntitlementService

- (FCEntitlementService)initWithConfigurationManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = FCEntitlementService;
  v6 = [(FCEntitlementService *)&v12 init];
  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    blocks = v6->_blocks;
    v6->_blocks = array;

    v9 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    accessLock = v6->_accessLock;
    v6->_accessLock = v9;

    objc_storeStrong(&v6->_configurationManager, manager);
  }

  return v6;
}

- (void)performEntitlementWithIgnoreCache:(BOOL)cache completion:(id)completion
{
  completionCopy = completion;
  configurationManager = [(FCEntitlementService *)self configurationManager];
  v8 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__FCEntitlementService_performEntitlementWithIgnoreCache_completion___block_invoke;
  v10[3] = &unk_1E7C3F478;
  cacheCopy = cache;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [configurationManager fetchConfigurationIfNeededWithCompletionQueue:v8 completion:v10];
}

uint64_t __69__FCEntitlementService_performEntitlementWithIgnoreCache_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = [a2 entitlementsRequestTimeoutDurationInSeconds];
  v6 = *(a1 + 40);

  return [v3 _performEntitlementWithIgnoreCache:v4 requestTimeoutDuration:v5 completion:v6];
}

- (void)_performEntitlementWithIgnoreCache:(BOOL)cache requestTimeoutDuration:(int64_t)duration completion:(id)completion
{
  cacheCopy = cache;
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  accessLock = [(FCEntitlementService *)self accessLock];
  [accessLock lock];

  blocks = [(FCEntitlementService *)self blocks];
  v11 = _Block_copy(completionCopy);

  [blocks addObject:v11];
  if ([(FCEntitlementService *)self requestInProgress])
  {
    v12 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEBUG))
    {
      v18 = v12;
      *buf = 138412290;
      v26 = objc_opt_class();
      _os_log_debug_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEBUG, "%@ Entitlements request in progress returning early", buf, 0xCu);
    }

    accessLock2 = [(FCEntitlementService *)self accessLock];
    [accessLock2 unlock];
  }

  else
  {
    [(FCEntitlementService *)self startTimerWithTimeoutDuration:duration];
    [(FCEntitlementService *)self setRequestInProgress:1];
    date = [MEMORY[0x1E695DF00] date];
    v15 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v26) = cacheCopy;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Fetching Entitlements with ignoreCaches: %d", buf, 8u);
    }

    mEMORY[0x1E698B560] = [MEMORY[0x1E698B560] sharedInstance];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __93__FCEntitlementService__performEntitlementWithIgnoreCache_requestTimeoutDuration_completion___block_invoke;
    v22 = &unk_1E7C3F4A0;
    selfCopy = self;
    v24 = date;
    accessLock2 = date;
    [mEMORY[0x1E698B560] getSubscriptionEntitlementsForSegment:0 ignoreCaches:cacheCopy withResultHandler:&v19];

    v17 = [(FCEntitlementService *)self accessLock:v19];
    [v17 unlock];
  }
}

void __93__FCEntitlementService__performEntitlementWithIgnoreCache_requestTimeoutDuration_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = FCPurchaseLog;
  if (v8)
  {
    if (!os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = v9;
    *buf = 138412802;
    v31 = objc_opt_class();
    v32 = 2114;
    v33 = v7;
    v34 = 2114;
    v35 = v8;
    _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "%@ failed to fetch entitlements with entitlements:%{public}@, error: %{public}@", buf, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = v9;
    v11 = objc_opt_class();
    v12 = [*(a1 + 40) fc_millisecondTimeIntervalUntilNow];
    *buf = 138412802;
    v31 = v11;
    v32 = 2048;
    v33 = v12;
    v34 = 2114;
    v35 = v7;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%@ Entitlements response received in %llums with entitlements: %{public}@", buf, 0x20u);
  }

LABEL_7:
  v13 = [*(a1 + 32) accessLock];
  [v13 lock];

  v14 = [*(a1 + 32) blocks];
  v15 = [v14 copy];

  if ([*(a1 + 32) requestInProgress])
  {
    v16 = [*(a1 + 32) entitlementRequestTimer];
    [v16 invalidate];

    [*(a1 + 32) setEntitlementRequestTimer:0];
    v17 = [*(a1 + 32) blocks];
    [v17 removeAllObjects];

    [*(a1 + 32) setRequestInProgress:0];
  }

  v18 = [*(a1 + 32) accessLock];
  [v18 unlock];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v25 + 1) + 8 * i);
        if (v24)
        {
          (*(v24 + 16))(v24, v7, a3, v8);
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }
}

- (void)startTimerWithTimeoutDuration:(double)duration
{
  entitlementRequestTimer = [(FCEntitlementService *)self entitlementRequestTimer];

  if (!entitlementRequestTimer)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__FCEntitlementService_startTimerWithTimeoutDuration___block_invoke;
    v6[3] = &unk_1E7C3C970;
    v6[4] = self;
    *&v6[5] = duration;
    FCPerformBlockOnMainThread(v6);
  }
}

void __54__FCEntitlementService_startTimerWithTimeoutDuration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_clearTimer selector:0 userInfo:0 repeats:*(a1 + 40)];
  [*(a1 + 32) setEntitlementRequestTimer:v2];
}

- (void)clearTimer
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138412290;
    v24 = objc_opt_class();
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%@ clearing the timer", buf, 0xCu);
  }

  accessLock = [(FCEntitlementService *)self accessLock];
  [accessLock lock];

  blocks = [(FCEntitlementService *)self blocks];
  v7 = [blocks copy];

  blocks2 = [(FCEntitlementService *)self blocks];
  [blocks2 removeAllObjects];

  entitlementRequestTimer = [(FCEntitlementService *)self entitlementRequestTimer];
  [entitlementRequestTimer invalidate];

  [(FCEntitlementService *)self setEntitlementRequestTimer:0];
  [(FCEntitlementService *)self setRequestInProgress:0];
  accessLock2 = [(FCEntitlementService *)self accessLock];
  [accessLock2 unlock];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EntitlementsProviderErrorDomain" code:3001 userInfo:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (v17)
        {
          (*(v17 + 16))(v17, 0, 0, v11);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

@end