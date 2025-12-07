@interface DNDSAppInfoCache
+ (id)_fallbackAppInfoByBundleIdentifier;
- (DNDSAppInfoCache)initWithKeybag:(id)keybag;
- (id)_cacheURL;
- (id)_fallbackAppInfoForBundleIdentifier:(id)identifier;
- (id)_installedBundleIdentifiers;
- (id)_parseAppStoreResponseForBundleIdentifiers:(id)identifiers response:(id)response data:(id)data error:(id)error;
- (id)_queue_bundleIdentifiersWithMissingInfo;
- (id)_sanitizeAppInfo:(id)info;
- (id)appInfoForBundleIdentifier:(id)identifier;
- (id)appInfoForBundleIdentifiers:(id)identifiers;
- (void)_fetchAppStoreInfoForBundleIdentifiers:(id)identifiers timeoutInterval:(double)interval limit:(unint64_t)limit completionHandler:(id)handler;
- (void)_fetchIconForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler;
- (void)_fetchIconsForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler;
- (void)_queue_fetchMissingAppInfo;
- (void)_queue_monitorBundleIdentifiers:(id)identifiers;
- (void)_queue_read;
- (void)_queue_removeCachedDataForAppInfo:(id)info;
- (void)_queue_removeUnusedAppInfo;
- (void)_queue_write;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)monitorApplicationIdentifiers:(id)identifiers;
@end

@implementation DNDSAppInfoCache

- (DNDSAppInfoCache)initWithKeybag:(id)keybag
{
  keybagCopy = keybag;
  v23.receiver = self;
  v23.super_class = DNDSAppInfoCache;
  v6 = [(DNDSAppInfoCache *)&v23 init];
  if (v6)
  {
    v7 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.AppInfoCache"];
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    inflightBundleIdentifiers = v6->_inflightBundleIdentifiers;
    v6->_inflightBundleIdentifiers = v9;

    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    mEMORY[0x277CCACD8] = [MEMORY[0x277CCACD8] sharedURLCache];
    [ephemeralSessionConfiguration setURLCache:mEMORY[0x277CCACD8]];

    [ephemeralSessionConfiguration setRequestCachePolicy:2];
    [ephemeralSessionConfiguration setHTTPShouldUsePipelining:1];
    v13 = objc_opt_new();
    [v13 setName:@"com.apple.donotdisturb.iconcache"];
    [v13 setUnderlyingQueue:v6->_queue];
    v14 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:0 delegateQueue:v13];
    urlSession = v6->_urlSession;
    v6->_urlSession = v14;

    v16 = v6->_urlSession;
    name = [v13 name];
    [(NSURLSession *)v16 setSessionDescription:name];

    objc_storeStrong(&v6->_keybag, keybag);
    [(DNDSKeybagStateProviding *)v6->_keybag addObserver:v6];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v6];

    v19 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__DNDSAppInfoCache_initWithKeybag___block_invoke;
    block[3] = &unk_278F89ED0;
    v22 = v6;
    dispatch_async(v19, block);
  }

  return v6;
}

- (void)monitorApplicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__DNDSAppInfoCache_monitorApplicationIdentifiers___block_invoke;
  v7[3] = &unk_278F89F48;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(queue, v7);
}

void __50__DNDSAppInfoCache_monitorApplicationIdentifiers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) bundleID];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) _queue_monitorBundleIdentifiers:v2];
}

- (id)appInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DNDSAppInfoCache_appInfoForBundleIdentifier___block_invoke;
  block[3] = &unk_278F8ACF0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__DNDSAppInfoCache_appInfoForBundleIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  if (*(*(a1[6] + 8) + 40))
  {
    [v5 _sanitizeAppInfo:?];
  }

  else
  {
    [v5 _fallbackAppInfoForBundleIdentifier:a1[5]];
  }
  v6 = ;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[4];
  v10 = *(v9 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DNDSAppInfoCache_appInfoForBundleIdentifier___block_invoke_2;
  block[3] = &unk_278F89ED0;
  block[4] = v9;
  dispatch_async(v10, block);
}

- (id)appInfoForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDSAppInfoCache_appInfoForBundleIdentifiers___block_invoke;
  block[3] = &unk_278F89E30;
  v13 = identifiersCopy;
  selfCopy = self;
  v7 = dictionary;
  v15 = v7;
  v8 = identifiersCopy;
  dispatch_sync(queue, block);
  v9 = v15;
  v10 = v7;

  return v7;
}

void __48__DNDSAppInfoCache_appInfoForBundleIdentifiers___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v7];
        v9 = *(a1 + 40);
        if (v8)
        {
          v10 = [v9 _sanitizeAppInfo:v8];
        }

        else
        {
          v10 = [v9 _fallbackAppInfoForBundleIdentifier:v7];
        }

        [*(a1 + 48) setObject:v10 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDSAppInfoCache_appInfoForBundleIdentifiers___block_invoke_2;
  block[3] = &unk_278F89ED0;
  block[4] = v11;
  dispatch_async(v12, block);
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DNDSAppInfoCache_keybagDidUnlockForTheFirstTime___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__DNDSAppInfoCache_keybagDidUnlockForTheFirstTime___block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 8);
  [*(a1 + 32) _queue_read];
  v2 = v3;
  if (v3)
  {
    [*(a1 + 32) _queue_monitorBundleIdentifiers:v3];
    v2 = v3;
  }
}

- (void)applicationsDidInstall:(id)install
{
  v4 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "App was installed", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DNDSAppInfoCache_applicationsDidInstall___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v4 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "App was removed", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DNDSAppInfoCache_applicationsDidUninstall___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_cacheURL
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = BSCurrentUserDirectory();
  v7[0] = v3;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v7[4] = @"IconCache";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v5 = [v2 fileURLWithPathComponents:v4];

  return v5;
}

- (void)_queue_write
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    v4 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    allValues = [(NSMutableDictionary *)self->_appInfoByBundleIdentifier allValues];
    v6 = [allValues countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = [*(*(&v25 + 1) + 8 * v9) dictionaryRepresentationWithContext:v4];
          [array addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v7);
    }

    v30[0] = @"appInfo";
    v30[1] = @"monitoredBundleIdentifiers";
    v31[0] = array;
    allObjects = [(NSSet *)self->_monitoredBundleIdentifiers allObjects];
    v31[1] = allObjects;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

    _cacheURL = [(DNDSAppInfoCache *)self _cacheURL];
    v14 = [_cacheURL URLByAppendingPathComponent:@"AppInfoMetadata.plist"];
    v24 = 0;
    v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:100 options:0 error:&v24];
    v16 = v24;
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSAppInfoCache _queue_write];
      }
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v23 = 0;
      [defaultManager createDirectoryAtURL:_cacheURL withIntermediateDirectories:1 attributes:0 error:&v23];
      v20 = v23;

      if (v20)
      {
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
        {
          [DNDSAppInfoCache _queue_write];
        }

        v17 = 0;
      }

      else
      {
        v22 = 0;
        v21 = [v15 writeToURL:v14 options:1073741825 error:&v22];
        v17 = v22;
        if ((v21 & 1) == 0 && os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
        {
          [DNDSAppInfoCache _queue_write];
        }
      }
    }
  }

  else
  {
    v18 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Will not write cache as keybag is locked", buf, 2u);
    }
  }
}

- (void)_queue_read
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    appInfoByBundleIdentifier = self->_appInfoByBundleIdentifier;
    self->_appInfoByBundleIdentifier = dictionary;

    _cacheURL = [(DNDSAppInfoCache *)self _cacheURL];
    v22 = [_cacheURL URLByAppendingPathComponent:@"AppInfoMetadata.plist"];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v5 = [v21 objectForKeyedSubscript:@"appInfo"];
    v6 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277D058B0] newWithDictionaryRepresentation:*(*(&v24 + 1) + 8 * i) context:v6];
          applicationIdentifier = [v12 applicationIdentifier];
          bundleID = [applicationIdentifier bundleID];

          [(NSMutableDictionary *)self->_appInfoByBundleIdentifier setObject:v12 forKeyedSubscript:bundleID];
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    v15 = MEMORY[0x277CBEB98];
    v16 = [v21 objectForKeyedSubscript:@"monitoredBundleIdentifiers"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }

    v19 = [v15 setWithArray:v18];

    [(DNDSAppInfoCache *)self _queue_monitorBundleIdentifiers:v19];
  }

  else
  {
    v20 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Will not read cache as keybag is locked", buf, 2u);
    }
  }
}

- (void)_fetchAppStoreInfoForBundleIdentifiers:(id)identifiers timeoutInterval:(double)interval limit:(unint64_t)limit completionHandler:(id)handler
{
  v37[4] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    if ([identifiersCopy count])
    {
      v12 = [MEMORY[0x277CCACE0] componentsWithString:@"https://itunes.apple.com/lookup"];
      v13 = MEMORY[0x277CCAD18];
      allObjects = [identifiersCopy allObjects];
      v15 = [allObjects componentsJoinedByString:{@", "}];
      v16 = [v13 queryItemWithName:@"bundleId" value:v15];

      v17 = MEMORY[0x277CCAD18];
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      countryCode = [currentLocale countryCode];
      v20 = [v17 queryItemWithName:@"country" value:countryCode];

      v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"entity" value:{@"software, iPadSoftware, macSoftware"}];
      v22 = MEMORY[0x277CCAD18];
      limit = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", limit];
      v24 = [v22 queryItemWithName:@"limit" value:limit];

      v37[0] = v16;
      v37[1] = v20;
      v37[2] = v21;
      v37[3] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
      [v12 setQueryItems:v25];

      objc_initWeak(&location, self);
      v26 = MEMORY[0x277CCAD20];
      v27 = [v12 URL];
      if (interval <= 0.0)
      {
        [v26 requestWithURL:v27];
      }

      else
      {
        [v26 requestWithURL:v27 cachePolicy:2 timeoutInterval:interval];
      }
      v29 = ;

      urlSession = self->_urlSession;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __99__DNDSAppInfoCache__fetchAppStoreInfoForBundleIdentifiers_timeoutInterval_limit_completionHandler___block_invoke;
      v32[3] = &unk_278F8B410;
      objc_copyWeak(&v35, &location);
      v33 = identifiersCopy;
      v34 = handlerCopy;
      v31 = [(NSURLSession *)urlSession dataTaskWithRequest:v29 completionHandler:v32];
      [v31 resume];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v28 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Will not fetch app info as keybag is locked", &location, 2u);
    }
  }
}

void __99__DNDSAppInfoCache__fetchAppStoreInfoForBundleIdentifiers_timeoutInterval_limit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained _parseAppStoreResponseForBundleIdentifiers:*(a1 + 32) response:v8 data:v9 error:v7];

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchIconsForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = infoCopy;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        dispatch_group_enter(v10);
        v17 = [v11 objectForKeyedSubscript:v16];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __76__DNDSAppInfoCache__fetchIconsForAppInfo_timeoutInterval_completionHandler___block_invoke;
        v25[3] = &unk_278F8B438;
        v26 = dictionary;
        v27 = v16;
        v28 = v10;
        [(DNDSAppInfoCache *)self _fetchIconForAppInfo:v17 timeoutInterval:v25 completionHandler:interval];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__DNDSAppInfoCache__fetchIconsForAppInfo_timeoutInterval_completionHandler___block_invoke_2;
  block[3] = &unk_278F8B460;
  v23 = dictionary;
  v24 = handlerCopy;
  v19 = dictionary;
  v20 = handlerCopy;
  dispatch_group_notify(v10, queue, block);
}

void __76__DNDSAppInfoCache__fetchIconsForAppInfo_timeoutInterval_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

- (void)_fetchIconForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v10 = [infoCopy mutableCopy];
  storeIconURL = [v10 storeIconURL];

  if (storeIconURL)
  {
    v12 = MEMORY[0x277CCAD20];
    storeIconURL2 = [infoCopy storeIconURL];
    if (interval <= 0.0)
    {
      [v12 requestWithURL:storeIconURL2];
    }

    else
    {
      [v12 requestWithURL:storeIconURL2 cachePolicy:2 timeoutInterval:interval];
    }
    v16 = ;

    urlSession = self->_urlSession;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__DNDSAppInfoCache__fetchIconForAppInfo_timeoutInterval_completionHandler___block_invoke;
    v23[3] = &unk_278F8B488;
    v24 = infoCopy;
    selfCopy = self;
    v26 = v10;
    v27 = handlerCopy;
    v17 = handlerCopy;
    v15 = v10;
    v19 = [(NSURLSession *)urlSession downloadTaskWithRequest:v16 completionHandler:v23];
    [v19 resume];
  }

  else
  {
    queue = self->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__DNDSAppInfoCache__fetchIconForAppInfo_timeoutInterval_completionHandler___block_invoke_78;
    v20[3] = &unk_278F8B460;
    v21 = v10;
    v22 = handlerCopy;
    v15 = handlerCopy;
    v16 = v10;
    dispatch_async(queue, v20);

    v17 = v22;
  }
}

void __75__DNDSAppInfoCache__fetchIconForAppInfo_timeoutInterval_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!a4)
  {
    v7 = [*(a1 + 32) storeIconURL];
    v8 = [v7 pathExtension];

    v9 = MEMORY[0x277CCACA8];
    v10 = [*(a1 + 32) applicationIdentifier];
    v11 = [v10 bundleID];
    v12 = MEMORY[0x277CCABB0];
    v13 = [*(a1 + 32) applicationIdentifier];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "platform")}];
    v15 = [v9 stringWithFormat:@"%@_%@.%@", v11, v14, v8];

    v16 = [*(a1 + 40) _cacheURL];
    v17 = MEMORY[0x277CBEBC0];
    v18 = [v16 path];
    v38[0] = v18;
    v38[1] = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v20 = [v17 fileURLWithPathComponents:v19];

    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = 0;
    [v21 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v31];
    v22 = v31;

    if (v22)
    {
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSAppInfoCache _queue_write];
      }

      v23 = 0;
    }

    else
    {
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      [v24 removeItemAtURL:v20 error:0];

      v25 = [MEMORY[0x277CCAA00] defaultManager];
      v30 = 0;
      [v25 copyItemAtURL:v6 toURL:v20 error:&v30];
      v23 = v30;

      if (v23)
      {
        v26 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 32);
          v28 = v26;
          v29 = [v27 applicationIdentifier];
          *buf = 138478339;
          v33 = v29;
          v34 = 2113;
          v35 = v20;
          v36 = 2114;
          v37 = v23;
          _os_log_error_impl(&dword_24912E000, v28, OS_LOG_TYPE_ERROR, "Could not copy icon for %{private}@ to %{private}@: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        [*(a1 + 48) setCachedIconURL:v20];
      }
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (id)_parseAppStoreResponseForBundleIdentifiers:(id)identifiers response:(id)response data:(id)data error:(id)error
{
  v55 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  v13 = errorCopy;
  if (!dataCopy || errorCopy)
  {
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppInfoCache _parseAppStoreResponseForBundleIdentifiers:response:data:error:];
    }

    dictionary = 0;
  }

  else
  {
    v49 = 0;
    v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v49];
    v15 = v49;
    v16 = v15;
    if (v14)
    {
      v37 = v15;
      v39 = dataCopy;
      v40 = responseCopy;
      v41 = identifiersCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v38 = v14;
      [v14 bs_safeArrayForKey:@"results"];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v48 = 0u;
      v17 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (!v17)
      {
        goto LABEL_30;
      }

      v18 = v17;
      v19 = @"bundleId";
      v44 = *v46;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v45 + 1) + 8 * i);
          v22 = [v21 bs_safeStringForKey:v19];
          v23 = [v21 bs_safeStringForKey:@"trackName"];
          v24 = [v21 bs_safeStringForKey:@"artworkUrl100"];
          v25 = [v21 bs_safeStringForKey:@"kind"];
          if (![v22 length])
          {
            v27 = DNDSLogGeneral;
            if (!os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            *buf = 138543362;
            v51 = v21;
            v28 = v27;
            v29 = "Unable to parse store response, bundle identifier is missing: %{public}@";
LABEL_18:
            _os_log_error_impl(&dword_24912E000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
            goto LABEL_28;
          }

          if (![v23 length])
          {
            v30 = DNDSLogGeneral;
            if (!os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            *buf = 138543362;
            v51 = v21;
            v28 = v30;
            v29 = "Unable to parse store response, display name is missing: %{public}@";
            goto LABEL_18;
          }

          if ([v25 isEqualToString:@"software"] & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"ipad-software"))
          {
            v26 = 1;
          }

          else if ([v25 isEqualToString:@"mac-software"])
          {
            v26 = 2;
          }

          else
          {
            v26 = 0;
          }

          v31 = v19;
          v32 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v22 platform:v26];
          v33 = objc_alloc_init(MEMORY[0x277D059F8]);
          [v33 setSource:2];
          [v33 setDisplayName:v23];
          [v33 setApplicationIdentifier:v32];
          if ([v24 length])
          {
            v34 = [MEMORY[0x277CBEBC0] URLWithString:v24];
            [v33 setStoreIconURL:v34];
          }

          else
          {
            [v33 setStoreIconURL:0];
          }

          [dictionary setObject:v33 forKeyedSubscript:v22];
          v35 = DNDSLogGeneral;
          if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v51 = v22;
            v52 = 2113;
            v53 = v33;
            _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Got app %{private}@ details from the store: %{private}@", buf, 0x16u);
          }

          v19 = v31;
LABEL_28:
        }

        v18 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (!v18)
        {
LABEL_30:

          responseCopy = v40;
          identifiersCopy = v41;
          v13 = 0;
          dataCopy = v39;
          v16 = v37;
          v14 = v38;
          goto LABEL_37;
        }
      }
    }

    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppInfoCache _parseAppStoreResponseForBundleIdentifiers:response:data:error:];
    }

    dictionary = 0;
LABEL_37:
  }

  return dictionary;
}

- (void)_queue_removeCachedDataForAppInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  appInfoByBundleIdentifier = self->_appInfoByBundleIdentifier;
  applicationIdentifier = [infoCopy applicationIdentifier];
  bundleID = [applicationIdentifier bundleID];
  [(NSMutableDictionary *)appInfoByBundleIdentifier setObject:0 forKeyedSubscript:bundleID];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  cachedIconURL = [infoCopy cachedIconURL];
  v14 = 0;
  [defaultManager removeItemAtURL:cachedIconURL error:&v14];
  v10 = v14;

  v11 = DNDSLogGeneral;
  if (v10)
  {
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [(DNDSAppInfoCache *)v11 _queue_removeCachedDataForAppInfo:infoCopy, v10];
    }
  }

  else if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    applicationIdentifier2 = [infoCopy applicationIdentifier];
    *buf = 138477827;
    v16 = applicationIdentifier2;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Cleaned up %{private}@", buf, 0xCu);
  }
}

- (void)_queue_removeUnusedAppInfo
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_appInfoByBundleIdentifier allKeys];
  v5 = [v3 setWithArray:allKeys];

  v6 = [v5 mutableCopy];
  [v6 minusSet:self->_relevantBundleIdentifiers];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_appInfoByBundleIdentifier objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v11), v13];
        [(DNDSAppInfoCache *)self _queue_removeCachedDataForAppInfo:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_queue_monitorBundleIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_queue);
  v6 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifiersCopy;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Monitoring bundle identifiers: %{public}@", &v12, 0xCu);
  }

  monitoredBundleIdentifiers = self->_monitoredBundleIdentifiers;
  if (monitoredBundleIdentifiers == identifiersCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    if (identifiersCopy && monitoredBundleIdentifiers)
    {
      v8 = [(NSSet *)monitoredBundleIdentifiers isEqual:identifiersCopy]^ 1;
    }
  }

  objc_storeStrong(&self->_monitoredBundleIdentifiers, identifiers);
  _installedBundleIdentifiers = [(DNDSAppInfoCache *)self _installedBundleIdentifiers];
  v10 = [(NSSet *)identifiersCopy mutableCopy];
  [(NSSet *)v10 minusSet:_installedBundleIdentifiers];
  objc_storeStrong(&self->_relevantBundleIdentifiers, v10);
  v11 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Relevant bundle identifiers: %{public}@", &v12, 0xCu);
  }

  [(DNDSAppInfoCache *)self _queue_removeUnusedAppInfo];
  if ([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot])
  {
    if (v8)
    {
      [(DNDSAppInfoCache *)self _queue_write];
    }

    [(DNDSAppInfoCache *)self _queue_fetchMissingAppInfo];
  }
}

- (id)_queue_bundleIdentifiersWithMissingInfo
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_relevantBundleIdentifiers;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_appInfoByBundleIdentifier objectForKeyedSubscript:v9, v14];
        v11 = v10;
        if (!v10 || ([v10 cachedIconURL], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_queue_fetchMissingAppInfo
{
  _queue_bundleIdentifiersWithMissingInfo = [(DNDSAppInfoCache *)self _queue_bundleIdentifiersWithMissingInfo];
  allObjects = [_queue_bundleIdentifiersWithMissingInfo allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke;
  v5[3] = &unk_278F8B4D8;
  v5[4] = self;
  [allObjects enumerateBatchesOfSize:50 handler:v5];
}

void __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB58] setWithArray:a2];
  [v3 minusSet:*(*(a1 + 32) + 24)];
  [*(*(a1 + 32) + 24) unionSet:v3];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_2;
  v6[3] = &unk_278F8B4B0;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _fetchAppStoreInfoForBundleIdentifiers:v5 timeoutInterval:50 limit:v6 completionHandler:10.0];
}

void __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_3;
  v4[3] = &unk_278F8B4B0;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _fetchIconsForAppInfo:a2 timeoutInterval:v4 completionHandler:10.0];
}

void __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  [*(*(a1 + 32) + 24) minusSet:*(a1 + 40)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 16) containsObject:{v9, v13}];
        v11 = [v4 objectForKeyedSubscript:v9];
        v12 = *(a1 + 32);
        if (v10)
        {
          [v12[4] setObject:v11 forKeyedSubscript:v9];
        }

        else
        {
          [v12 _queue_removeCachedDataForAppInfo:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) _queue_write];
}

- (id)_installedBundleIdentifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        bundleIdentifier = [*(*(&v10 + 1) + 8 * i) bundleIdentifier];
        [v2 addObject:bundleIdentifier];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)_sanitizeAppInfo:(id)info
{
  infoCopy = info;
  applicationIdentifier = [infoCopy applicationIdentifier];
  bundleID = [applicationIdentifier bundleID];
  v7 = [(DNDSAppInfoCache *)self _fallbackAppInfoForBundleIdentifier:bundleID];

  if (v7)
  {
    v8 = [infoCopy mutableCopy];
    displayName = [v7 displayName];
    [v8 setDisplayName:displayName];

    v10 = [v8 copy];
  }

  else
  {
    v10 = infoCopy;
  }

  return v10;
}

- (id)_fallbackAppInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _fallbackAppInfoByBundleIdentifier = [objc_opt_class() _fallbackAppInfoByBundleIdentifier];
  v5 = [_fallbackAppInfoByBundleIdentifier objectForKeyedSubscript:identifierCopy];

  return v5;
}

+ (id)_fallbackAppInfoByBundleIdentifier
{
  if (_fallbackAppInfoByBundleIdentifier_fallbackAppInfoByBundleIdentifierOnceToken != -1)
  {
    +[DNDSAppInfoCache _fallbackAppInfoByBundleIdentifier];
  }

  v3 = _fallbackAppInfoByBundleIdentifier___fallbackAppInfoByBundleIdentifier;

  return v3;
}

void __54__DNDSAppInfoCache__fallbackAppInfoByBundleIdentifier__block_invoke()
{
  v66[21] = *MEMORY[0x277D85DE8];
  v65[0] = @"com.apple.NanoStopwatch";
  v0 = objc_alloc(MEMORY[0x277D058B0]);
  v64 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoStopwatch" platform:3];
  v63 = [v0 initWithSource:0 applicationIdentifier:v64 displayName:@"APP_NAME_STOPWATCH" storeIconURL:0 cachedIconURL:0];
  v66[0] = v63;
  v65[1] = @"com.apple.NanoMenstrualCycles";
  v1 = objc_alloc(MEMORY[0x277D058B0]);
  v62 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoMenstrualCycles" platform:3];
  v61 = [v1 initWithSource:0 applicationIdentifier:v62 displayName:@"APP_NAME_CYCLE_TRACKING" storeIconURL:0 cachedIconURL:0];
  v66[1] = v61;
  v65[2] = @"com.apple.watchmemojieditor";
  v2 = objc_alloc(MEMORY[0x277D058B0]);
  v60 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.watchmemojieditor" platform:3];
  v59 = [v2 initWithSource:0 applicationIdentifier:v60 displayName:@"APP_NAME_MEMOJI" storeIconURL:0 cachedIconURL:0];
  v66[2] = v59;
  v65[3] = @"com.apple.NanoHeartRhythm";
  v3 = objc_alloc(MEMORY[0x277D058B0]);
  v58 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoHeartRhythm" platform:3];
  v57 = [v3 initWithSource:0 applicationIdentifier:v58 displayName:@"APP_NAME_ECG" storeIconURL:0 cachedIconURL:0];
  v66[3] = v57;
  v65[4] = @"com.apple.private.NanoTimer";
  v4 = objc_alloc(MEMORY[0x277D058B0]);
  v56 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.private.NanoTimer" platform:3];
  v55 = [v4 initWithSource:0 applicationIdentifier:v56 displayName:@"APP_NAME_TIMER" storeIconURL:0 cachedIconURL:0];
  v66[4] = v55;
  v65[5] = @"com.apple.NanoOxygenSaturation.watchkitapp";
  v5 = objc_alloc(MEMORY[0x277D058B0]);
  v54 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoOxygenSaturation.watchkitapp" platform:3];
  v53 = [v5 initWithSource:0 applicationIdentifier:v54 displayName:@"APP_NAME_BLOOD_OXYGEN" storeIconURL:0 cachedIconURL:0];
  v66[5] = v53;
  v65[6] = @"com.apple.NanoAlarm";
  v6 = objc_alloc(MEMORY[0x277D058B0]);
  v52 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoAlarm" platform:3];
  v51 = [v6 initWithSource:0 applicationIdentifier:v52 displayName:@"APP_NAME_ALARMS" storeIconURL:0 cachedIconURL:0];
  v66[6] = v51;
  v65[7] = @"com.apple.NanoTips";
  v7 = objc_alloc(MEMORY[0x277D058B0]);
  v50 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoTips" platform:3];
  v49 = [v7 initWithSource:0 applicationIdentifier:v50 displayName:@"APP_NAME_TIPS" storeIconURL:0 cachedIconURL:0];
  v66[7] = v49;
  v65[8] = @"com.apple.NanoSleep.watchkitapp";
  v8 = objc_alloc(MEMORY[0x277D058B0]);
  v48 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoSleep.watchkitapp" platform:3];
  v47 = [v8 initWithSource:0 applicationIdentifier:v48 displayName:@"APP_NAME_SLEEP" storeIconURL:0 cachedIconURL:0];
  v66[8] = v47;
  v65[9] = @"com.apple.Mind";
  v9 = objc_alloc(MEMORY[0x277D058B0]);
  v46 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Mind" platform:3];
  v45 = [v9 initWithSource:0 applicationIdentifier:v46 displayName:@"APP_NAME_MINDFULNESS" storeIconURL:0 cachedIconURL:0];
  v66[9] = v45;
  v65[10] = @"com.apple.NanoNowPlaying";
  v10 = objc_alloc(MEMORY[0x277D058B0]);
  v44 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoNowPlaying" platform:3];
  v43 = [v10 initWithSource:0 applicationIdentifier:v44 displayName:@"APP_NAME_NOW_PLAYING" storeIconURL:0 cachedIconURL:0];
  v66[10] = v43;
  v65[11] = @"com.apple.Noise";
  v11 = objc_alloc(MEMORY[0x277D058B0]);
  v42 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Noise" platform:3];
  v41 = [v11 initWithSource:0 applicationIdentifier:v42 displayName:@"APP_NAME_NOISE" storeIconURL:0 cachedIconURL:0];
  v66[11] = v41;
  v65[12] = @"com.apple.NanoRemote";
  v12 = objc_alloc(MEMORY[0x277D058B0]);
  v40 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoRemote" platform:3];
  v39 = [v12 initWithSource:0 applicationIdentifier:v40 displayName:@"APP_NAME_REMOTE" storeIconURL:0 cachedIconURL:0];
  v66[12] = v39;
  v65[13] = @"com.apple.HeartRate";
  v13 = objc_alloc(MEMORY[0x277D058B0]);
  v38 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.HeartRate" platform:3];
  v37 = [v13 initWithSource:0 applicationIdentifier:v38 displayName:@"APP_NAME_HEART_RATE" storeIconURL:0 cachedIconURL:0];
  v66[13] = v37;
  v65[14] = @"com.apple.MobileStore";
  v14 = objc_alloc(MEMORY[0x277D058B0]);
  v36 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.MobileStore" platform:1];
  v35 = [v14 initWithSource:0 applicationIdentifier:v36 displayName:@"APP_NAME_ITUNES_STORE" storeIconURL:0 cachedIconURL:0];
  v66[14] = v35;
  v65[15] = @"com.apple.Health";
  v15 = objc_alloc(MEMORY[0x277D058B0]);
  v34 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Health" platform:1];
  v33 = [v15 initWithSource:0 applicationIdentifier:v34 displayName:@"APP_NAME_HEALTH" storeIconURL:0 cachedIconURL:0];
  v66[15] = v33;
  v65[16] = @"com.apple.Bridge";
  v16 = objc_alloc(MEMORY[0x277D058B0]);
  v32 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Bridge" platform:1];
  v17 = [v16 initWithSource:0 applicationIdentifier:v32 displayName:@"APP_NAME_WATCH" storeIconURL:0 cachedIconURL:0];
  v66[16] = v17;
  v65[17] = @"com.apple.Passbook";
  v18 = objc_alloc(MEMORY[0x277D058B0]);
  v19 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Passbook" platform:1];
  v20 = [v18 initWithSource:0 applicationIdentifier:v19 displayName:@"APP_NAME_WALLET" storeIconURL:0 cachedIconURL:0];
  v66[17] = v20;
  v65[18] = @"com.apple.camera";
  v21 = objc_alloc(MEMORY[0x277D058B0]);
  v22 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.camera" platform:1];
  v23 = [v21 initWithSource:0 applicationIdentifier:v22 displayName:@"APP_NAME_CAMERA" storeIconURL:0 cachedIconURL:0];
  v66[18] = v23;
  v65[19] = @"com.apple.store.Jolly";
  v24 = objc_alloc(MEMORY[0x277D058B0]);
  v25 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.store.Jolly" platform:1];
  v26 = [v24 initWithSource:0 applicationIdentifier:v25 displayName:@"APP_NAME_APPLE_STORE" storeIconURL:0 cachedIconURL:0];
  v66[19] = v26;
  v65[20] = @"com.apple.mobilephone";
  v27 = objc_alloc(MEMORY[0x277D058B0]);
  v28 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.mobilephone" platform:1];
  v29 = [v27 initWithSource:0 applicationIdentifier:v28 displayName:@"APP_NAME_PHONE" storeIconURL:0 cachedIconURL:0];
  v66[20] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:21];
  v31 = _fallbackAppInfoByBundleIdentifier___fallbackAppInfoByBundleIdentifier;
  _fallbackAppInfoByBundleIdentifier___fallbackAppInfoByBundleIdentifier = v30;
}

- (void)_queue_removeCachedDataForAppInfo:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 cachedIconURL];
  OUTLINED_FUNCTION_0_2();
  v8 = a3;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Failed to removed cached icon at %{private}@: %{public}@", v7, 0x16u);
}

@end