@interface CPSSessionManager
+ (CPSSessionManager)sharedManager;
- (CPSSessionManager)init;
- (NSArray)allSessions;
- (id)sessionWithURL:(id)l createIfNoExist:(BOOL)exist;
- (void)_handleMemoryPressure:(unint64_t)pressure;
- (void)_localeChanged:(id)changed;
- (void)_setUpMemoryPressureHandler;
- (void)clearSessionWithURL:(id)l;
- (void)getSessionWithURL:(id)l configuration:(id)configuration completion:(id)completion;
- (void)handleManagedConfigurationChanged;
@end

@implementation CPSSessionManager

+ (CPSSessionManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[CPSSessionManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __34__CPSSessionManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(CPSSessionManager);

  return MEMORY[0x2821F96F8]();
}

- (CPSSessionManager)init
{
  v17.receiver = self;
  v17.super_class = CPSSessionManager;
  v2 = [(CPSSessionManager *)&v17 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessions = v2->_sessions;
    v2->_sessions = dictionary;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.ClipServices.clipserviced.CPSSessionManager", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_alloc_init(CPSBusinessItemFetcher);
    businessItemFetcher = v2->_businessItemFetcher;
    v2->_businessItemFetcher = v8;

    v10 = objc_alloc_init(CPSAppInfoFetcher);
    appInfoFetcher = v2->_appInfoFetcher;
    v2->_appInfoFetcher = v10;

    v12 = [[CPSInstallationController alloc] initWithAppInfoFetcher:v2->_appInfoFetcher];
    clipInstaller = v2->_clipInstaller;
    v2->_clipInstaller = v12;

    [(CPSSessionManager *)v2 _setUpMemoryPressureHandler];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__localeChanged_ name:*MEMORY[0x277CBE620] object:0];

    v15 = v2;
  }

  return v2;
}

- (void)_setUpMemoryPressureHandler
{
  v3 = dispatch_source_create(MEMORY[0x277D85D18], 0, 2uLL, 0);
  memoryPressureSource = self->_memoryPressureSource;
  self->_memoryPressureSource = v3;

  objc_initWeak(&location, self);
  v5 = self->_memoryPressureSource;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CPSSessionManager__setUpMemoryPressureHandler__block_invoke;
  v6[3] = &unk_278DCE2A0;
  objc_copyWeak(&v7, &location);
  dispatch_source_set_event_handler(v5, v6);
  dispatch_resume(self->_memoryPressureSource);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__CPSSessionManager__setUpMemoryPressureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    data = dispatch_source_get_data(*(WeakRetained + 3));
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices(data, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_DEFAULT, "Received memory warning", buf, 2u);
    }

    v6 = v2[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__CPSSessionManager__setUpMemoryPressureHandler__block_invoke_9;
    v7[3] = &unk_278DCE278;
    v7[4] = v2;
    v7[5] = data;
    dispatch_async(v6, v7);
  }
}

- (void)_handleMemoryPressure:(unint64_t)pressure
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_DEFAULT, "Handling memory pressure (warning) by purging cached sessions.", buf, 2u);
  }

  allValues = [(NSMutableDictionary *)self->_sessions allValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isPurgeable])
        {
          sessions = self->_sessions;
          v12 = [v10 url];
          [(NSMutableDictionary *)sessions removeObjectForKey:v12];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)handleManagedConfigurationChanged
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CPSSessionManager_handleManagedConfigurationChanged__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __54__CPSSessionManager_handleManagedConfigurationChanged__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [*(*(a1 + 32) + 8) allValues];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 metadata];
        v8 = [v7 invocationPolicy];
        v9 = [v8 isIneligibleDueToContentRestriction];

        if (v9)
        {
          v10 = [MEMORY[0x277CBEAA8] date];
          v11 = [v6 metadata];
          [v11 setExpirationDate:v10];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (NSArray)allSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__CPSSessionManager_allSessions__block_invoke;
  v5[3] = &unk_278DCE2C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__CPSSessionManager_allSessions__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) allValues];

  return MEMORY[0x2821F96F8]();
}

- (id)sessionWithURL:(id)l createIfNoExist:(BOOL)exist
{
  lCopy = l;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CPSSessionManager_sessionWithURL_createIfNoExist___block_invoke;
  v11[3] = &unk_278DCE2F0;
  v12 = lCopy;
  v13 = &v15;
  v11[4] = self;
  existCopy = exist;
  v8 = lCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __52__CPSSessionManager_sessionWithURL_createIfNoExist___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 56) == 1)
  {
    v5 = [[CPSSession alloc] initWithURL:*(a1 + 40) usingQueue:*(*(a1 + 32) + 16)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 48) + 8) + 40) setBusinessItemFetcher:*(*(a1 + 32) + 56)];
    [*(*(*(a1 + 48) + 8) + 40) setAppInfoFetcher:*(*(a1 + 32) + 48)];
    v8 = *(a1 + 40);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(*(a1 + 32) + 8);

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (void)clearSessionWithURL:(id)l
{
  lCopy = l;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CPSSessionManager_clearSessionWithURL___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_async(queue, v7);
}

uint64_t __41__CPSSessionManager_clearSessionWithURL___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = [v5 objectForKeyedSubscript:v4];
    v8 = *(a1 + 40);
    v10 = 138412547;
    v11 = v7;
    v12 = 2113;
    v13 = v8;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_DEFAULT, "Clearing session: %@ for URL: %{private}@", &v10, 0x16u);
  }

  return [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
}

- (void)getSessionWithURL:(id)l configuration:(id)configuration completion:(id)completion
{
  lCopy = l;
  configurationCopy = configuration;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__CPSSessionManager_getSessionWithURL_configuration_completion___block_invoke;
  v15[3] = &unk_278DCE070;
  v15[4] = self;
  v16 = lCopy;
  v17 = configurationCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = configurationCopy;
  v14 = lCopy;
  dispatch_async(queue, v15);
}

void __64__CPSSessionManager_getSessionWithURL_configuration_completion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 metadata];
  v4 = [v3 isExpired];

  if (v4)
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412547;
      v39 = v2;
      v40 = 2117;
      v41 = v8;
      _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "Metadata associated with cached session: %@ for url: %{sensitive}@ is expired. Clearing and refetching metadata.", buf, 0x16u);
    }

    [v2 clearMetadataAndRefetch];
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    goto LABEL_24;
  }

  if (v2 && ([v9 usedByPPT] & 1) == 0)
  {
    v19 = [v2 configuration];
    if (v19)
    {
      v20 = v19;
      if ([*(a1 + 48) useLocalContent])
      {

LABEL_23:
        v32 = [*(a1 + 48) isForSwitcherOverlay];
        v33 = [v2 configuration];
        [v33 setIsForSwitcherOverlay:v32];

LABEL_24:
        v34 = *(a1 + 56);
        v11 = [v2 metadata];
        v22 = [v11 clipBundleID];
        (*(v34 + 16))(v34, v2, v22);
        goto LABEL_25;
      }

      v24 = [v2 configuration];
      v25 = [v24 sourceBundleID];
      v26 = [*(a1 + 48) sourceBundleID];
      if ([v25 isEqualToString:v26])
      {
        v27 = [v2 configuration];
        v28 = [v27 referrerBundleID];
        v29 = [*(a1 + 48) referrerBundleID];
        if ([v28 isEqualToString:v29])
        {
          v35 = [v2 configuration];
          v30 = [v35 launchReason];
          [*(a1 + 48) launchReason];
          v31 = v36 = v27;
          v37 = [v30 isEqualToString:v31];

          if (v37)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }
    }

LABEL_22:
    [v2 setConfiguration:*(a1 + 48)];
    goto LABEL_23;
  }

  v10 = [[CPSSession alloc] initWithURL:*(a1 + 40) usingQueue:*(*(a1 + 32) + 16) configuration:*(a1 + 48)];

  v11 = [CPSDeveloperOverride overrideForURL:*(a1 + 40)];
  if (v11)
  {
    v12 = [[CPSClipMetadata alloc] initWithDeveloperOverride:v11 invocationURL:*(a1 + 40)];
    [(CPSSession *)v10 setPreloadedMetadata:v12];

    v15 = CPS_LOG_CHANNEL_PREFIXClipServices(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(CPSSession *)v10 logID];
      v18 = [v11 clipBundleID];
      *buf = 138412547;
      v39 = v17;
      v40 = 2113;
      v41 = v18;
      _os_log_impl(&dword_2436ED000, v16, OS_LOG_TYPE_DEFAULT, "Use an overriden app clip experince for session: %@, bundleID: %{private}@", buf, 0x16u);
    }
  }

  else
  {
    [(CPSSession *)v10 setBusinessItemFetcher:*(*(a1 + 32) + 56)];
    [(CPSSession *)v10 setAppInfoFetcher:*(*(a1 + 32) + 48)];
  }

  [(CPSSession *)v10 setConfiguration:*(a1 + 48)];
  [*(*(a1 + 32) + 8) setObject:v10 forKeyedSubscript:*(a1 + 40)];
  v21 = *(a1 + 56);
  v22 = [(CPSSession *)v10 metadata];
  v23 = [v22 clipBundleID];
  (*(v21 + 16))(v21, v10, v23);

  v2 = v10;
LABEL_25:
}

- (void)_localeChanged:(id)changed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CPSSessionManager__localeChanged___block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__CPSSessionManager__localeChanged___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = *(*(a1 + 32) + 48);
        v9 = [v7 metadata];
        v10 = [v9 clipBundleID];
        [v8 evictCachedMetadataForClipBundleID:v10];

        v11 = *(*(a1 + 32) + 8);
        v12 = [v7 url];
        [v11 removeObjectForKey:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

@end