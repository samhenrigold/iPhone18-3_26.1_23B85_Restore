@interface SLHighlightsCache
+ (id)highlightFetchQueue;
+ (id)highlightQueryHandlerQueue;
+ (id)sharedCache;
+ (id)userInitiatedHighlightFetchQueue;
- (NSArray)highlights;
- (NSString)appIdentifier;
- (OS_dispatch_group)initialFetchGroup;
- (SLHighlightsCache)init;
- (SLInteractionHandler)interactionHandler;
- (id)_updateHighlightsWithPreviousUpdateBlock:(id)block debounceInterval:(unint64_t)interval;
- (id)clientUpdateHighlightsBlock;
- (id)currentDelegates;
- (id)systemUpdateHighlightsBlock;
- (void)_fetchAndUpdateHighlightsImmediately;
- (void)_leaveInitialFetchGroupIfNecessary;
- (void)_notifyDelegatesWithNotificationType:(int64_t)type withHighlights:(id)highlights;
- (void)_registerNotifications;
- (void)_updateHighlightsForSystemNotification;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)didDeleteHighlightsOrAttributions;
- (void)fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant completionBlock:(id)block;
- (void)fetchHighlightsWithLimit:(unint64_t)limit variant:(id)variant completionBlock:(id)block;
- (void)interactionHandler;
- (void)removeDelegate:(id)delegate;
- (void)runAfterInitialFetch:(id)fetch onQueue:(id)queue;
- (void)setClientUpdateHighlightsBlock:(id)block;
- (void)setHighlights:(id)highlights;
- (void)setInitialFetchGroup:(id)group;
- (void)setSystemUpdateHighlightsBlock:(id)block;
- (void)updateHighlights;
@end

@implementation SLHighlightsCache

+ (id)sharedCache
{
  WeakRetained = objc_loadWeakRetained(&sSharedCache);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(SLHighlightsCache);
    objc_storeWeak(&sSharedCache, WeakRetained);
  }

  return WeakRetained;
}

- (SLHighlightsCache)init
{
  v19.receiver = self;
  v19.super_class = SLHighlightsCache;
  v2 = [(SLHighlightsCache *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_notificationTokenRefreshHighlights = -1;
    v2->_notificationTokenDeleteHighlights = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.SocialLayer.PropertyQueue", v4);
    threadSafePropertyQueue = v3->_threadSafePropertyQueue;
    v3->_threadSafePropertyQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    highlightsCache = v3->_highlightsCache;
    v3->_highlightsCache = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v3->_delegates;
    v3->_delegates = weakObjectsHashTable;

    v11 = dispatch_group_create();
    initialFetchGroup = v3->_initialFetchGroup;
    v3->_initialFetchGroup = v11;

    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.SocialLayer.InitialFetchWaitingQueue", v13);
    initialFetchWaitingQueue = v3->_initialFetchWaitingQueue;
    v3->_initialFetchWaitingQueue = v14;

    dispatch_group_enter(v3->_initialFetchGroup);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__SLHighlightsCache_init__block_invoke;
    block[3] = &unk_278925D90;
    v18 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v3;
}

- (void)_fetchAndUpdateHighlightsImmediately
{
  objc_initWeak(&location, self);
  highlights = [(SLHighlightsCache *)self highlights];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke;
  v5[3] = &unk_278926660;
  objc_copyWeak(&v7, &location);
  v4 = highlights;
  v6 = v4;
  [(SLHighlightsCache *)self fetchHighlightsWithLimit:0x7FFFFFFFFFFFFFFFLL reason:0 variant:0 completionBlock:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)updateHighlights
{
  v3 = SLFrameworkLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "_updateHighlights for client: ", v6, 2u);
  }

  clientUpdateHighlightsBlock = [(SLHighlightsCache *)self clientUpdateHighlightsBlock];
  v5 = [(SLHighlightsCache *)self _updateHighlightsWithPreviousUpdateBlock:clientUpdateHighlightsBlock debounceInterval:0];
  [(SLHighlightsCache *)self setClientUpdateHighlightsBlock:v5];
}

- (id)clientUpdateHighlightsBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__46;
  v11 = __Block_byref_object_dispose__47;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SLHighlightsCache_clientUpdateHighlightsBlock__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __48__SLHighlightsCache_clientUpdateHighlightsBlock__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __40__SLHighlightsCache_highlightFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SocialLayer.HighlightFetchQueue", v2);
  v1 = highlightFetchQueue_queue;
  highlightFetchQueue_queue = v0;
}

+ (id)highlightFetchQueue
{
  if (highlightFetchQueue_onceToken != -1)
  {
    +[SLHighlightsCache highlightFetchQueue];
  }

  v3 = highlightFetchQueue_queue;

  return v3;
}

- (NSArray)highlights
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__8;
  v7[4] = __Block_byref_object_dispose__8;
  appIdentifier = [(SLHighlightsCache *)self appIdentifier];
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SLHighlightsCache_highlights__block_invoke;
  block[3] = &unk_2789266D8;
  block[4] = self;
  block[5] = &v9;
  block[6] = v7;
  dispatch_sync(threadSafePropertyQueue, block);

  v4 = v10[5];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (NSString)appIdentifier
{
  appIdentifier = [(SLInteractionHandler *)self->_interactionHandler appIdentifier];
  if (appIdentifier)
  {
    appIdentifier2 = [(SLInteractionHandler *)self->_interactionHandler appIdentifier];
  }

  else
  {
    appIdentifier2 = @"highlights";
  }

  return appIdentifier2;
}

void __31__SLHighlightsCache_highlights__block_invoke(void *a1)
{
  v2 = MEMORY[0x277CBEA60];
  v6 = [*(a1[4] + 24) objectForKey:*(*(a1[6] + 8) + 40)];
  v3 = [v2 arrayWithArray:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)currentDelegates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SLHighlightsCache_currentDelegates__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__SLHighlightsCache_currentDelegates__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegates];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (SLInteractionHandler)interactionHandler
{
  interactionHandler = self->_interactionHandler;
  if (!interactionHandler)
  {
    currentDelegates = [(SLHighlightsCache *)self currentDelegates];
    firstObject = [currentDelegates firstObject];

    if (objc_opt_respondsToSelector())
    {
      appIdentifierForHighlightsCache = [firstObject appIdentifierForHighlightsCache];
      v7 = SLFrameworkLogHandle(appIdentifierForHighlightsCache);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SLHighlightsCache interactionHandler];
      }

      if ([appIdentifierForHighlightsCache length])
      {
        v8 = [[SLInteractionHandler alloc] initWithAppIdentifier:appIdentifierForHighlightsCache];
      }

      else
      {
        v8 = objc_alloc_init(SLInteractionHandler);
      }

      v9 = self->_interactionHandler;
      self->_interactionHandler = v8;
    }

    interactionHandler = self->_interactionHandler;
  }

  return interactionHandler;
}

+ (id)highlightQueryHandlerQueue
{
  if (highlightQueryHandlerQueue_onceToken != -1)
  {
    +[SLHighlightsCache highlightQueryHandlerQueue];
  }

  v3 = highlightQueryHandlerQueue_queue;

  return v3;
}

void __47__SLHighlightsCache_highlightQueryHandlerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SocialLayer.HighlightQueryHandlerQueue", v2);
  v1 = highlightQueryHandlerQueue_queue;
  highlightQueryHandlerQueue_queue = v0;
}

- (void)_leaveInitialFetchGroupIfNecessary
{
  initialFetchGroup = [(SLHighlightsCache *)self initialFetchGroup];
  v4 = initialFetchGroup;
  if (initialFetchGroup)
  {
    v5 = SLFrameworkLogHandle(initialFetchGroup);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "Leaving initial fetch group to invoke callbacks waiting on the first fetch.", v6, 2u);
    }

    dispatch_group_leave(v4);
    [(SLHighlightsCache *)self setInitialFetchGroup:0];
  }
}

- (OS_dispatch_group)initialFetchGroup
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SLHighlightsCache_initialFetchGroup__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained highlights];
  if (v3)
  {
    v4 = v3;
    v5 = [WeakRetained highlights];
    v6 = [v5 isEqualToArray:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      v7 = [WeakRetained currentDelegates];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            v13 = objc_opt_respondsToSelector();
            if (v13)
            {
              v14 = SLFrameworkLogHandle([v12 legacyDidAddHighlights]);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v22 = v12;
                _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_DEFAULT, "legacyDidAddHighlights: delegate: %@", buf, 0xCu);
              }
            }

            else
            {
              v14 = SLFrameworkLogHandle(v13);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke_cold_1(&v15, v16);
              }
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)_registerNotifications
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = self;
}

+ (id)userInitiatedHighlightFetchQueue
{
  if (userInitiatedHighlightFetchQueue_onceToken != -1)
  {
    +[SLHighlightsCache userInitiatedHighlightFetchQueue];
  }

  v3 = userInitiatedHighlightFetchQueue_queue;

  return v3;
}

void __53__SLHighlightsCache_userInitiatedHighlightFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SocialLayer.UserInitiatedHighlightFetchQueue", v2);
  v1 = userInitiatedHighlightFetchQueue_queue;
  userInitiatedHighlightFetchQueue_queue = v0;
}

void __43__SLHighlightsCache__registerNotifications__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v2 = SLFrameworkLogHandle(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "_updateHighlights for SLSocialHighlightsRefreshedNotification: ", v4, 2u);
  }

  v3 = objc_loadWeakRetained(&to);
  [v3 _updateHighlightsForSystemNotification];

  objc_destroyWeak(&to);
}

- (void)_updateHighlightsForSystemNotification
{
  v3 = SLFrameworkLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "_updateHighlightsForSystemNotification: ", v6, 2u);
  }

  systemUpdateHighlightsBlock = [(SLHighlightsCache *)self systemUpdateHighlightsBlock];
  v5 = [(SLHighlightsCache *)self _updateHighlightsWithPreviousUpdateBlock:systemUpdateHighlightsBlock debounceInterval:5];
  [(SLHighlightsCache *)self setSystemUpdateHighlightsBlock:v5];
}

- (id)systemUpdateHighlightsBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__46;
  v11 = __Block_byref_object_dispose__47;
  v12 = 0;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SLHighlightsCache_systemUpdateHighlightsBlock__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(threadSafePropertyQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __48__SLHighlightsCache_systemUpdateHighlightsBlock__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)runAfterInitialFetch:(id)fetch onQueue:(id)queue
{
  fetchCopy = fetch;
  queueCopy = queue;
  objc_initWeak(&location, self);
  initialFetchWaitingQueue = [(SLHighlightsCache *)self initialFetchWaitingQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke;
  v11[3] = &unk_278926638;
  objc_copyWeak(&v14, &location);
  v12 = queueCopy;
  v13 = fetchCopy;
  v9 = fetchCopy;
  v10 = queueCopy;
  dispatch_async(initialFetchWaitingQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained initialFetchGroup];
  v4 = v3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (v3)
  {
    v5 = SLFrameworkLogHandle(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[SLHighlightsCache runAfterInitialFetch:onQueue:]_block_invoke";
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "%s Waiting on initial fetch group before running target block.", buf, 0xCu);
    }

    v6 = [WeakRetained initialFetchGroup];
    v7 = dispatch_time(0, 3000000000);
    v8 = dispatch_group_wait(v6, v7);

    if (v8)
    {
      *(v21 + 24) = 1;
    }

    v10 = SLFrameworkLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (*(v21 + 24))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 136315394;
      v25 = "[SLHighlightsCache runAfterInitialFetch:onQueue:]_block_invoke";
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "%s Finished waiting on initial fetch group, and invoking target block. didTimeout: %@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke_28;
    v18[3] = &unk_278926610;
    v12 = v19;
    v13 = *(a1 + 32);
    v19[0] = *(a1 + 40);
    v19[1] = &v20;
    v14 = v18;
  }

  else
  {
    v15 = SLFrameworkLogHandle(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke_cold_1();
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__SLHighlightsCache_runAfterInitialFetch_onQueue___block_invoke_30;
    v16[3] = &unk_278926610;
    v12 = v17;
    v13 = *(a1 + 32);
    v17[0] = *(a1 + 40);
    v17[1] = &v20;
    v14 = v16;
  }

  dispatch_async(v13, v14);

  _Block_object_dispose(&v20, 8);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SLHighlightsCache_addDelegate___block_invoke;
  v7[3] = &unk_278925CF0;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __33__SLHighlightsCache_addDelegate___block_invoke(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__SLHighlightsCache_addDelegate___block_invoke_cold_1();
  }

  return [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SLHighlightsCache_removeDelegate___block_invoke;
  v7[3] = &unk_278925CF0;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __36__SLHighlightsCache_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __36__SLHighlightsCache_removeDelegate___block_invoke_cold_1();
  }

  return [*(*(a1 + 40) + 56) removeObject:*(a1 + 32)];
}

void __43__SLHighlightsCache__registerNotifications__block_invoke_37(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v2 = SLFrameworkLogHandle(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "_updateHighlights for SLScreenTimeConversationDidObserveChangesNotification: ", v4, 2u);
  }

  v3 = objc_loadWeakRetained(&to);
  [v3 _updateHighlightsForSystemNotification];

  objc_destroyWeak(&to);
}

void __43__SLHighlightsCache__registerNotifications__block_invoke_39(uint64_t a1)
{
  v2 = SLFrameworkLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "SLHighlightsCache notify_register_dispatch: com.apple.spotlight.SyndicatedContentDeleted observed.", buf, 2u);
  }

  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);
  [v3 didDeleteHighlightsOrAttributions];

  objc_destroyWeak(&to);
}

- (id)_updateHighlightsWithPreviousUpdateBlock:(id)block debounceInterval:(unint64_t)interval
{
  blockCopy = block;
  v7 = SLFrameworkLogHandle(blockCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SLHighlightsCache _updateHighlightsWithPreviousUpdateBlock:debounceInterval:];
  }

  v8 = _Block_copy(blockCopy);
  v9 = v8;
  if (v8)
  {
    dispatch_block_cancel(v8);
  }

  v10 = SLFrameworkLogHandle(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "_updateHighlightsWithPreviousUpdateBlock: ", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SLHighlightsCache__updateHighlightsWithPreviousUpdateBlock_debounceInterval___block_invoke;
  block[3] = &unk_278925C50;
  objc_copyWeak(&v17, buf);
  v11 = dispatch_block_create(0, block);
  v12 = dispatch_time(0, 1000000000 * interval);
  v13 = +[SLHighlightsCache highlightFetchQueue];
  dispatch_after(v12, v13, v11);

  v14 = _Block_copy(v11);
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  return v14;
}

void __79__SLHighlightsCache__updateHighlightsWithPreviousUpdateBlock_debounceInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchAndUpdateHighlightsImmediately];
}

- (void)didDeleteHighlightsOrAttributions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = SLFrameworkLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SLHighlightsCache didDeleteHighlightsOrAttributions];
  }

  highlights = [(SLHighlightsCache *)self highlights];
  v5 = SLFrameworkLogHandle(highlights);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [highlights count];
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "SLHighlightsCache didDeleteHighlightsOrAttributions: Stored %lu old highlights", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  array = [MEMORY[0x277CBEB18] array];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v6 = +[SLHighlightsCache sharedCache];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke;
  v8[3] = &unk_278926688;
  v8[4] = self;
  v7 = highlights;
  v9 = v7;
  p_buf = &buf;
  v11 = v12;
  [v6 fetchHighlightsWithLimit:0x7FFFFFFFFFFFFFFFLL reason:@"deleteHighlights" variant:0 completionBlock:v8];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&buf, 8);
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = [*(a1 + 32) highlights];
    v4 = [v3 count];

    if (v4)
    {
      v6 = SLFrameworkLogHandle(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_1();
      }

      v7 = objc_alloc(MEMORY[0x277CBEB38]);
      v8 = [*(a1 + 32) highlights];
      v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

      v10 = objc_alloc(MEMORY[0x277CBEB38]);
      v11 = [*(a1 + 32) highlights];
      v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v13 = *(a1 + 40);
      v14 = [v13 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v53;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v53 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v52 + 1) + 8 * i);
            v19 = [v18 identifier];
            [v9 setObject:v18 forKey:v19];
          }

          v15 = [v13 countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v15);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v20 = [*(a1 + 32) highlights];
      v21 = [v20 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v49;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v49 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v48 + 1) + 8 * j);
            v26 = [v25 identifier];
            [v12 setObject:v25 forKey:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v22);
      }

      v27 = a1;

      v43 = v12;
      v28 = [v12 allKeys];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v29 = [v9 allKeys];
      v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v45;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v45 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v44 + 1) + 8 * k);
            v35 = [v28 containsObject:v34];
            v36 = [v9 objectForKey:v34];
            if (v35)
            {
              v37 = [v43 objectForKey:v34];
              if (([v36 isEqual:v37] & 1) == 0)
              {
                *(*(*(v27 + 56) + 8) + 24) = 1;
              }
            }

            else
            {
              [*(*(*(v27 + 48) + 8) + 40) addObject:v36];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
        }

        while (v31);
      }

      v38 = [*(*(*(v27 + 48) + 8) + 40) count];
      v39 = SLFrameworkLogHandle(v38);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
      if (v38)
      {
        if (v40)
        {
          __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_2(v27 + 48);
        }

        [*(v27 + 32) _notifyDelegatesWithNotificationType:2 withHighlights:*(*(*(v27 + 48) + 8) + 40)];
      }

      else
      {
        if (v40)
        {
          __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_3();
        }
      }

      if (*(*(*(v27 + 56) + 8) + 24) == 1)
      {
        [*(v27 + 32) _notifyDelegatesWithNotificationType:1 withHighlights:0];
      }
    }

    else
    {
      v41 = *(a1 + 32);
      v42 = *(a1 + 40);

      [v41 _notifyDelegatesWithNotificationType:2 withHighlights:v42];
    }
  }
}

- (void)_notifyDelegatesWithNotificationType:(int64_t)type withHighlights:(id)highlights
{
  v48 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  currentDelegates = [(SLHighlightsCache *)self currentDelegates];
  v8 = currentDelegates;
  switch(type)
  {
    case 2:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v23 = [currentDelegates countByEnumeratingWithState:&v29 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v30;
        do
        {
          v26 = 0;
          do
          {
            if (*v30 != v25)
            {
              objc_enumerationMutation(v8);
            }

            v27 = *(*(&v29 + 1) + 8 * v26);
            if (v27 && (v23 = objc_opt_respondsToSelector(), (v23 & 1) != 0))
            {
              v23 = [v27 legacyDidRemoveHighlights:highlightsCopy];
            }

            else
            {
              v28 = SLFrameworkLogHandle(v23);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [SLHighlightsCache _notifyDelegatesWithNotificationType:v40 withHighlights:?];
              }
            }

            ++v26;
          }

          while (v24 != v26);
          v23 = [v8 countByEnumeratingWithState:&v29 objects:v45 count:16];
          v24 = v23;
        }

        while (v23);
      }

      break;
    case 1:
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = [currentDelegates countByEnumeratingWithState:&v33 objects:v46 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v8);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = objc_opt_respondsToSelector();
            if (v21)
            {
              [v20 legacyDidAddHighlights];
            }

            else
            {
              v22 = SLFrameworkLogHandle(v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                __57__SLHighlightsCache__fetchAndUpdateHighlightsImmediately__block_invoke_cold_1(&v39, v40);
              }
            }
          }

          v17 = [v8 countByEnumeratingWithState:&v33 objects:v46 count:16];
        }

        while (v17);
      }

      break;
    case 0:
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      highlightsChanged = [currentDelegates countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (highlightsChanged)
      {
        v10 = highlightsChanged;
        v11 = *v42;
        do
        {
          v12 = 0;
          do
          {
            if (*v42 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v41 + 1) + 8 * v12);
            v14 = SLFrameworkLogHandle(highlightsChanged);
            v15 = v14;
            if (v13)
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                [SLHighlightsCache _notifyDelegatesWithNotificationType:v40 withHighlights:?];
              }

              highlightsChanged = [v13 highlightsChanged];
            }

            else
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                [SLHighlightsCache _notifyDelegatesWithNotificationType:v38 withHighlights:?];
              }
            }

            ++v12;
          }

          while (v10 != v12);
          highlightsChanged = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
          v10 = highlightsChanged;
        }

        while (highlightsChanged);
      }

      break;
  }
}

- (void)setInitialFetchGroup:(id)group
{
  groupCopy = group;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SLHighlightsCache_setInitialFetchGroup___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

- (void)setClientUpdateHighlightsBlock:(id)block
{
  blockCopy = block;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SLHighlightsCache_setClientUpdateHighlightsBlock___block_invoke;
  v7[3] = &unk_2789266B0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __52__SLHighlightsCache_setClientUpdateHighlightsBlock___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setSystemUpdateHighlightsBlock:(id)block
{
  blockCopy = block;
  threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SLHighlightsCache_setSystemUpdateHighlightsBlock___block_invoke;
  v7[3] = &unk_2789266B0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_sync(threadSafePropertyQueue, v7);
}

uint64_t __52__SLHighlightsCache_setSystemUpdateHighlightsBlock___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setHighlights:(id)highlights
{
  highlightsCopy = highlights;
  highlights = [(SLHighlightsCache *)self highlights];
  v6 = [highlightsCopy isEqualToArray:highlights];

  if ((v6 & 1) == 0)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__8;
    v12[4] = __Block_byref_object_dispose__8;
    appIdentifier = [(SLHighlightsCache *)self appIdentifier];
    threadSafePropertyQueue = [(SLHighlightsCache *)self threadSafePropertyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SLHighlightsCache_setHighlights___block_invoke;
    block[3] = &unk_278926700;
    block[4] = self;
    v10 = highlightsCopy;
    v11 = v12;
    dispatch_barrier_sync(threadSafePropertyQueue, block);

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SLHighlightsCache_setHighlights___block_invoke_2;
    v8[3] = &unk_278925D90;
    v8[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    _Block_object_dispose(v12, 8);
  }
}

void __35__SLHighlightsCache_setHighlights___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:a1[5]];
  [v2 setObject:v3 forKey:*(*(a1[6] + 8) + 40)];
}

- (void)fetchHighlightsWithLimit:(unint64_t)limit variant:(id)variant completionBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  variantCopy = variant;
  v10 = SLFrameworkLogHandle(variantCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    limitCopy = limit;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "Fetching highlights with limit: %lu", &v11, 0xCu);
  }

  [(SLHighlightsCache *)self fetchHighlightsWithLimit:limit reason:0 variant:variantCopy completionBlock:blockCopy];
}

- (void)fetchHighlightsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant completionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  variantCopy = variant;
  blockCopy = block;
  v13 = SLFrameworkLogHandle(blockCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    limitCopy = limit;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "Fetching highlights with limit: %lu", buf, 0xCu);
  }

  if ([reasonCopy isEqualToString:@"deleteHighlights"])
  {
    +[SLHighlightsCache userInitiatedHighlightFetchQueue];
  }

  else
  {
    +[SLHighlightsCache highlightFetchQueue];
  }
  v14 = ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke;
  block[3] = &unk_278926750;
  v19 = variantCopy;
  selfCopy = self;
  v22 = blockCopy;
  limitCopy2 = limit;
  v21 = reasonCopy;
  v15 = blockCopy;
  v16 = reasonCopy;
  v17 = variantCopy;
  dispatch_async(v14, block);
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (![v2 length])
  {
    v3 = *MEMORY[0x277D3A740];

    v2 = v3;
  }

  v4 = [*(a1 + 40) interactionHandler];
  v5 = *(a1 + 64);
  v6 = *(a1 + 48);
  v19 = 0;
  v7 = [v4 fetchInteractionsWithLimit:v5 reason:v6 variant:v2 error:&v19];
  v8 = v19;

  if (v7)
  {
    v10 = +[SLHighlightsCache highlightQueryHandlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2;
    block[3] = &unk_278926728;
    block[4] = *(a1 + 40);
    v16 = v7;
    v18 = *(a1 + 56);
    v17 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = SLFrameworkLogHandle(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 localizedDescription];
      v13 = *(a1 + 64);
      v14 = *(a1 + 32);
      *buf = 138412802;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_error_impl(&dword_231772000, v11, OS_LOG_TYPE_ERROR, "Failed to obtain results due to %@. Limit: %lu, Variant: %@", buf, 0x20u);
    }
  }

  [*(a1 + 40) _leaveInitialFetchGroupIfNecessary];
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = SLFrameworkLogHandle([*(a1 + 32) setHighlights:*(a1 + 40)]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_1(v2);
  }

  if (*(a1 + 56))
  {
    v5 = SLFrameworkLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_2();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)interactionHandler
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_2(uint64_t a1)
{
  [*(*(*a1 + 8) + 40) count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3(&dword_231772000, v1, v2, "SLHighlightsCache didDeleteHighlightsOrAttributions: Notify delegates of deletion of %lu highlights", v3, v4, v5, v6);
}

void __54__SLHighlightsCache_didDeleteHighlightsOrAttributions__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_1(id *a1)
{
  [*a1 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3(&dword_231772000, v1, v2, "Got %tu results from InteractionHandler", v3, v4, v5, v6);
}

void __77__SLHighlightsCache_fetchHighlightsWithLimit_reason_variant_completionBlock___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end