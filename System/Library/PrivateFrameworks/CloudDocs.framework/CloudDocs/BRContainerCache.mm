@interface BRContainerCache
+ (BOOL)hasDaemonicParts;
+ (BOOL)isManagedProvider;
+ (BOOL)isPersonalProvider;
+ (id)containerCache;
+ (id)containerCacheForPersonaID:(id)d;
+ (id)containerHelper;
- (BOOL)_updateContainersCache;
- (BRContainerCache)initWithHelper:(id)helper personaID:(id)d;
- (id)_allContainersByIDNoCopyBlocking:(BOOL)blocking;
- (id)allContainersBlockIfNeeded:(BOOL)needed;
- (id)allContainersByID;
- (id)containerByID:(id)d;
- (id)documentContainers;
- (void)_accountWillChange;
- (void)_updateContainersCache;
- (void)dealloc;
- (void)invalidateAndClearCache:(BOOL)cache;
- (void)subscribeToContainerStatusUpdate;
- (void)unsubscribeToContainerStatusUpdate;
@end

@implementation BRContainerCache

+ (BOOL)isPersonalProvider
{
  if (isPersonalProvider_once != -1)
  {
    +[BRContainerCache isPersonalProvider];
  }

  return isPersonalProvider_isPersonalProvider;
}

void __38__BRContainerCache_isPersonalProvider__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isPersonalProvider_isPersonalProvider = [v0 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
}

+ (BOOL)isManagedProvider
{
  if (isManagedProvider_once != -1)
  {
    +[BRContainerCache isManagedProvider];
  }

  return isManagedProvider_isManagedProvider;
}

void __37__BRContainerCache_isManagedProvider__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isManagedProvider_isManagedProvider = [v0 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
}

+ (id)containerCache
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];

  v5 = [self containerCacheForPersonaID:br_currentPersonaID];

  return v5;
}

- (BRContainerCache)initWithHelper:(id)helper personaID:(id)d
{
  helperCopy = helper;
  dCopy = d;
  if (!helperCopy)
  {
    [BRContainerCache initWithHelper:personaID:];
  }

  v64.receiver = self;
  v64.super_class = BRContainerCache;
  v9 = [(BRContainerCache *)&v64 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_helper, helper);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    containersByID = v10->_containersByID;
    v10->_containersByID = v11;

    v13 = objc_opt_new();
    fetchedContainerIDs = v10->_fetchedContainerIDs;
    v10->_fetchedContainerIDs = v13;

    v10->_containerCacheUptodate = 0;
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(v15, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.clouddocs.container-cache-queue", v16);

    queue = v10->_queue;
    v10->_queue = v17;

    v19 = br_pacer_create("com.apple.clouddocs.container-invalidation-pacer", v10->_queue, 1.0);
    invalidationPacer = v10->_invalidationPacer;
    v10->_invalidationPacer = v19;

    objc_initWeak(&location, v10);
    v21 = v10->_invalidationPacer;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __45__BRContainerCache_initWithHelper_personaID___block_invoke;
    v61[3] = &unk_1E7A15630;
    objc_copyWeak(&v62, &location);
    br_pacer_set_event_handler(v21, v61);
    v52 = dCopy;
    br_pacer_resume(v10->_invalidationPacer);
    v22 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, 0);
    memoryPressureSource = v10->_memoryPressureSource;
    v10->_memoryPressureSource = v22;

    v24 = v10->_memoryPressureSource;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __45__BRContainerCache_initWithHelper_personaID___block_invoke_527;
    v59[3] = &unk_1E7A15630;
    objc_copyWeak(&v60, &location);
    v25 = v24;
    v26 = v59;
    v27 = v25;
    v28 = v26;
    v29 = v28;
    v30 = v28;
    if (brc_block_remember_persona)
    {
      v30 = brc_block_remember_persona(v28);
    }

    v51 = helperCopy;
    v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v30);
    dispatch_source_set_event_handler(v27, v31);

    dispatch_resume(v10->_memoryPressureSource);
    out_token = 0;
    br_libnotifyPerUserNotificationName = [@"BRContainerCacheDidChangeDistributedNotification" br_libnotifyPerUserNotificationName];
    uTF8String = [br_libnotifyPerUserNotificationName UTF8String];
    v34 = dispatch_get_global_queue(0, 0);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __45__BRContainerCache_initWithHelper_personaID___block_invoke_528;
    v56[3] = &unk_1E7A16700;
    objc_copyWeak(&v57, &location);
    v35 = v34;
    v36 = v56;
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];

    handler = MEMORY[0x1E69E9820];
    v66 = 3221225472;
    v67 = __br_notify_register_dispatch_block_invoke_5;
    v68 = &unk_1E7A14940;
    v39 = br_currentPersonaID;
    v69 = v39;
    v71 = uTF8String;
    v40 = v36;
    v70 = v40;
    notify_register_dispatch(uTF8String, &out_token, v35, &handler);

    objc_storeStrong(&v10->_personaID, d);
    v55 = 0;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __45__BRContainerCache_initWithHelper_personaID___block_invoke_2;
    v53[3] = &unk_1E7A16700;
    objc_copyWeak(&v54, &location);
    v41 = v35;
    v42 = v53;
    mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID2 = [mEMORY[0x1E69DF068]2 br_currentPersonaID];

    handler = MEMORY[0x1E69E9820];
    v66 = 3221225472;
    v67 = __br_notify_register_dispatch_block_invoke_5;
    v68 = &unk_1E7A14940;
    v45 = br_currentPersonaID2;
    v69 = v45;
    v71 = "com.apple.tcc.access.changed";
    v46 = v42;
    v70 = v46;
    LODWORD(v42) = notify_register_dispatch("com.apple.tcc.access.changed", &v55, v41, &handler);

    helperCopy = v51;
    dCopy = v52;
    if (v42)
    {
      v47 = brc_bread_crumbs("[BRContainerCache initWithHelper:personaID:]", 2680);
      v48 = brc_default_log(0, 0);
      if (os_log_type_enabled(v48, 0x90u))
      {
        [BRContainerCache initWithHelper:personaID:];
      }
    }

    +[BRAccount startAccountTokenChangeObserverIfNeeded];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__accountWillChange name:@"BRAccountTokenWillChangeNotification" object:0];

    objc_destroyWeak(&v54);
    objc_destroyWeak(&v57);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __45__BRContainerCache_initWithHelper_personaID___block_invoke(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  __brc_create_section(0, "[BRContainerCache initWithHelper:personaID:]_block_invoke", 2653, 0, v5);
  v2 = brc_bread_crumbs("[BRContainerCache initWithHelper:personaID:]_block_invoke", 2653);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __45__BRContainerCache_initWithHelper_personaID___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateAndClearCache:0];

  __brc_leave_section(v5);
}

void __45__BRContainerCache_initWithHelper_personaID___block_invoke_527(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  __brc_create_section(0, "[BRContainerCache initWithHelper:personaID:]_block_invoke", 2662, 0, v5);
  v2 = brc_bread_crumbs("[BRContainerCache initWithHelper:personaID:]_block_invoke", 2662);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __45__BRContainerCache_initWithHelper_personaID___block_invoke_527_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateAndClearCache:1];

  __brc_leave_section(v5);
}

void __45__BRContainerCache_initWithHelper_personaID___block_invoke_528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _containerListDidChange];
}

void __45__BRContainerCache_initWithHelper_personaID___block_invoke_2(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRContainerCache initWithHelper:personaID:]_block_invoke_2", 2676);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __45__BRContainerCache_initWithHelper_personaID___block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateAndClearCache:1];
}

- (void)dealloc
{
  br_pacer_cancel(self->_invalidationPacer);
  dispatch_source_cancel(self->_memoryPressureSource);
  memoryPressureSource = self->_memoryPressureSource;
  self->_memoryPressureSource = 0;

  [(BRContainerCache *)self unsubscribeToContainerStatusUpdate];
  v4.receiver = self;
  v4.super_class = BRContainerCache;
  [(BRContainerCache *)&v4 dealloc];
}

+ (id)containerHelper
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__BRContainerCache_containerHelper__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (containerHelper_once != -1)
  {
    dispatch_once(&containerHelper_once, block);
  }

  v2 = containerHelper_helper;

  return v2;
}

uint64_t __35__BRContainerCache_containerHelper__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasDaemonicParts])
  {
    v1 = NSClassFromString(@"BRCDaemonContainerHelper");
  }

  else
  {
    v1 = objc_opt_class();
  }

  containerHelper_helper = [v1 sharedHelper];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)containerCacheForPersonaID:(id)d
{
  dCopy = d;
  if (containerCacheForPersonaID__onceToken != -1)
  {
    +[BRContainerCache containerCacheForPersonaID:];
  }

  v5 = containerCacheForPersonaID__containerCacheByPersona;
  objc_sync_enter(v5);
  v6 = [containerCacheForPersonaID__containerCacheByPersona objectForKeyedSubscript:dCopy];
  if (!v6)
  {
    v7 = [BRContainerCache alloc];
    containerHelper = [self containerHelper];
    v6 = [(BRContainerCache *)v7 initWithHelper:containerHelper personaID:dCopy];

    [containerCacheForPersonaID__containerCacheByPersona setObject:v6 forKeyedSubscript:dCopy];
  }

  objc_sync_exit(v5);

  return v6;
}

uint64_t __47__BRContainerCache_containerCacheForPersonaID___block_invoke()
{
  containerCacheForPersonaID__containerCacheByPersona = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)allContainersBlockIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = -[BRContainerCache _allContainersByIDNoCopyBlocking:](selfCopy, "_allContainersByIDNoCopyBlocking:", [objc_opt_class() hasDaemonicParts] | neededCopy);
  allValues = [v5 allValues];

  objc_sync_exit(selfCopy);

  return allValues;
}

- (id)documentContainers
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BRContainerCache *)selfCopy _allContainersByIDNoCopyBlocking:1, 0];
  allValues = [v4 allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isDocumentScopePublic] && (objc_msgSend(v9, "isCloudSyncTCCDisabled") & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = brc_bread_crumbs("[BRContainerCache documentContainers]", 2765);
  v11 = brc_default_log(1, 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRContainerCache documentContainers];
  }

  return array;
}

- (void)_accountWillChange
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v3 = self->_personaID) == 0)
  {
    if (_accountWillChange___personaOnceToken != -1)
    {
      [BRContainerCache _accountWillChange];
    }

    v4 = _accountWillChange___personalPersona;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v24 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = userPersonaUniqueString;
  if (userPersonaUniqueString == v4 || [(NSString *)userPersonaUniqueString isEqualToString:v4])
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v23 = 0;
    v13 = [currentPersona copyCurrentPersonaContextWithError:&v23];
    v14 = v23;
    v15 = v24;
    v24 = v13;

    if (v14)
    {
      v16 = brc_bread_crumbs("[BRContainerCache _accountWillChange]", 2771);
      v17 = brc_default_log(0, 0);
      if (os_log_type_enabled(v17, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v10 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

    if (v10)
    {
      v18 = brc_bread_crumbs("[BRContainerCache _accountWillChange]", 2771);
      v19 = brc_default_log(0, 0);
      if (os_log_type_enabled(v19, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v26 = personaID;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v18;
        _os_log_error_impl(&dword_1AE2A9000, v19, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v5 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v18 = brc_bread_crumbs("[BRContainerCache _accountWillChange]", 2771);
      v19 = brc_default_log(1, 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v10 = 0;
      goto LABEL_29;
    }

    v21 = brc_bread_crumbs("[BRContainerCache _accountWillChange]", 2771);
    v22 = brc_default_log(1, 0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v11 = brc_bread_crumbs("[BRContainerCache _accountWillChange]", 2772);
  v12 = brc_default_log(1, 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRContainerCache _accountWillChange];
  }

  [(BRContainerCache *)self invalidateAndClearCache:1];
  _BRRestorePersona(&v24);
}

void __38__BRContainerCache__accountWillChange__block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _accountWillChange___personalPersona;
  _accountWillChange___personalPersona = v0;
}

- (id)allContainersByID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(BRContainerCache *)selfCopy _allContainersByIDNoCopyBlocking:1];
  v4 = [v3 copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)containerByID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_containerCacheUptodate || ([(NSMutableSet *)selfCopy->_fetchedContainerIDs containsObject:dCopy]& 1) != 0)
  {
    containersByID = selfCopy->_containersByID;
    appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
    v8 = [(NSMutableDictionary *)containersByID objectForKeyedSubscript:appLibraryOrZoneName];

    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = [(BRContainerHelper *)selfCopy->_helper fetchContainerForMangledID:dCopy personaID:selfCopy->_personaID];
  if (!v8)
  {
LABEL_9:
    v13 = brc_bread_crumbs("[BRContainerCache containerByID:]", 2799);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] could not find container for id: %@%@", &v16, 0x16u);
    }

    v8 = 0;
    goto LABEL_12;
  }

  v9 = brc_bread_crumbs("[BRContainerCache containerByID:]", 2791);
  v10 = brc_default_log(1, 0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRContainerCache containerByID:];
  }

  v11 = selfCopy->_containersByID;
  appLibraryOrZoneName2 = [dCopy appLibraryOrZoneName];
  [(NSMutableDictionary *)v11 setObject:v8 forKeyedSubscript:appLibraryOrZoneName2];

  [(NSMutableSet *)selfCopy->_fetchedContainerIDs addObject:dCopy];
LABEL_12:
  objc_sync_exit(selfCopy);

  return v8;
}

- (void)subscribeToContainerStatusUpdate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_containerStatusObserver)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    objc_initWeak(&location, selfCopy);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __52__BRContainerCache_subscribeToContainerStatusUpdate__block_invoke;
    v11 = &unk_1E7A16728;
    objc_copyWeak(&v12, &location);
    v4 = MEMORY[0x1B26FEA90](&v8);
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v5 setMaxConcurrentOperationCount:{1, v8, v9, v10, v11}];
    v6 = [defaultCenter addObserverForName:BRContainerDidChangeStatusDistributedNotification object:0 queue:v5 usingBlock:v4];
    containerStatusObserver = selfCopy->_containerStatusObserver;
    selfCopy->_containerStatusObserver = v6;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __52__BRContainerCache_subscribeToContainerStatusUpdate__block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v16 userInfo];
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = [v5 _allContainersByIDNoCopyBlocking:1];
    v7 = [v4 objectForKeyedSubscript:BRContainerIDKey];
    v8 = [v6 objectForKeyedSubscript:v7];

    objc_sync_exit(v5);
    v9 = [v4 objectForKeyedSubscript:BRContainerCurrentStatusKey];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:BRContainerCurrentStatusKey];
      [v8 setCurrentStatus:{objc_msgSend(v10, "unsignedIntegerValue")}];
    }

    v11 = [v4 objectForKeyedSubscript:BRContainerlastServerUpdateKey];

    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:BRContainerlastServerUpdateKey];
      v13 = [MEMORY[0x1E695DF00] distantPast];
      v14 = [v12 isEqualToDate:v13];

      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12;
      }

      [v8 setLastServerUpdate:v15];
    }
  }
}

- (void)unsubscribeToContainerStatusUpdate
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_containerStatusObserver)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:obj->_containerStatusObserver];
    containerStatusObserver = obj->_containerStatusObserver;
    obj->_containerStatusObserver = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

+ (BOOL)hasDaemonicParts
{
  if (hasDaemonicParts_once_0 != -1)
  {
    +[BRContainerCache hasDaemonicParts];
  }

  return hasDaemonicParts_hasDaemonicParts_0;
}

void __36__BRContainerCache_hasDaemonicParts__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  hasDaemonicParts_hasDaemonicParts_0 = [v0 isEqualToString:@"com.apple.bird"];
}

- (void)invalidateAndClearCache:(BOOL)cache
{
  cacheCopy = cache;
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRContainerCache *)selfCopy unsubscribeToContainerStatusUpdate];
  if (cacheCopy)
  {
    v5 = brc_bread_crumbs("[BRContainerCache invalidateAndClearCache:]", 2901);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(NSMutableDictionary *)selfCopy->_containersByID count];
      personaID = selfCopy->_personaID;
      v13 = 134218498;
      v14 = v11;
      v15 = 2112;
      v16 = personaID;
      v17 = 2112;
      v18 = v5;
      _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] removing %lu containers from cache of persona: %@%@", &v13, 0x20u);
    }

    [(NSMutableDictionary *)selfCopy->_containersByID removeAllObjects];
  }

  else
  {
    v7 = brc_bread_crumbs("[BRContainerCache invalidateAndClearCache:]", 2904);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRContainerCache invalidateAndClearCache:];
    }
  }

  selfCopy->_containerCacheUptodate = 0;
  [(NSMutableSet *)selfCopy->_fetchedContainerIDs removeAllObjects];
  objc_sync_exit(selfCopy);

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:BRContainerListDidChangeDistributedNotification object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:BRContainerListDidChangeNotification object:0];
}

- (BOOL)_updateContainersCache
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_containerCacheUptodate)
  {
    return 0;
  }

  helper = self->_helper;
  v12 = 0;
  v5 = [(BRContainerHelper *)helper fetchAllContainersByIDWithError:&v12];
  v6 = v12;
  v2 = v5 != 0;
  if (v5)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_containersByID removeAllObjects];
    [(NSMutableSet *)selfCopy->_fetchedContainerIDs removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_containersByID addEntriesFromDictionary:v5];
    self->_containerCacheUptodate = 1;
    v8 = brc_bread_crumbs("[BRContainerCache _updateContainersCache]", 2934);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(BRContainerCache *)v8 _updateContainersCache:buf];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = brc_bread_crumbs("[BRContainerCache _updateContainersCache]", 2938);
    v10 = brc_default_log(1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = selfCopy;
      _os_log_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to fetch all containers: %@%@", buf, 0x16u);
    }
  }

  return v2;
}

- (id)_allContainersByIDNoCopyBlocking:(BOOL)blocking
{
  blockingCopy = blocking;
  v17 = *MEMORY[0x1E69E9840];
  if ([(BRContainerHelper *)self->_helper canFetchAllContainersByID])
  {
    if (!self->_containerCacheUptodate)
    {
      if (blockingCopy)
      {
        [(BRContainerCache *)self _updateContainersCache];
      }

      else
      {
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__BRContainerCache__allContainersByIDNoCopyBlocking___block_invoke;
        block[3] = &unk_1E7A14798;
        block[4] = self;
        dispatch_async(queue, block);
      }
    }
  }

  else
  {
    v5 = brc_bread_crumbs("[BRContainerCache _allContainersByIDNoCopyBlocking:]", 2964);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      IsContainerProxy = BRCurrentProcessIsContainerProxy();
      v8 = @"NO";
      if (IsContainerProxy)
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] client can't fetch all containers by ID (isContainerProxy: %@)%@", buf, 0x16u);
    }
  }

  containersByID = self->_containersByID;

  return containersByID;
}

void __53__BRContainerCache__allContainersByIDNoCopyBlocking___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _updateContainersCache])
  {
    v1 = [MEMORY[0x1E696AD88] defaultCenter];
    [v1 postNotificationName:BRContainerListDidChangeNotification object:0];
  }
}

- (void)initWithHelper:personaID:.cold.1()
{
  brc_bread_crumbs("[BRContainerCache initWithHelper:personaID:]", 2641);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: helper%@", v7, v8, v9, v10);
  }
}

- (void)invalidateAndClearCache:.cold.1()
{
  OUTLINED_FUNCTION_14(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] Marking container cache stale for persona: %@%@");
}

- (void)_updateContainersCache
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = self;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] added %lu containers to cache%@", buf, 0x16u);
}

@end