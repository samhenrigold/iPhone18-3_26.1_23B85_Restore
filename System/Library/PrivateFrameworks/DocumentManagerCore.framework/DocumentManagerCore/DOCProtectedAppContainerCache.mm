@interface DOCProtectedAppContainerCache
+ (BOOL)enabled;
- (CSSearchQuery)searchQuery;
- (DOCAppProtectionContextProviding)appProtectionContext;
- (DOCProtectedAppContainerCache)initWithDelegate:(id)delegate;
- (DOCProtectedAppContainerCacheDelegate)delegate;
- (NSArray)apps;
- (id)appForAppContainerBundleID:(id)d;
- (id)appForAppContainerOID:(id)d;
- (id)description;
- (void)appForAppContainerBundleID:(id)d completion:(id)completion;
- (void)appForAppContainerOID:(id)d completion:(id)completion;
- (void)createProtectedAppLookupTablesFromResultSet:(id)set completionHandler:(id)handler;
- (void)fetchAllAppContainerIDsFromCoreSpotlightAsync:(id)async;
- (void)fetchAllAppContainerIDsFromCoreSpotlightIfNeeded;
- (void)lookupOIDs:(id)ds;
@end

@implementation DOCProtectedAppContainerCache

+ (BOOL)enabled
{
  if (enabled_onceToken != -1)
  {
    +[DOCProtectedAppContainerCache enabled];
  }

  return enabled_enabled;
}

BOOL __40__DOCProtectedAppContainerCache_enabled__block_invoke()
{
  result = +[DOCFeature protectedAppsEnabled];
  enabled_enabled = result;
  return result;
}

- (DOCProtectedAppContainerCache)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DOCProtectedAppContainerCache;
  v5 = [(DOCProtectedAppContainerCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_cacheStatus = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DOCProtectedAppContainerCache;
  v4 = [(DOCProtectedAppContainerCache *)&v11 description];
  cacheStatus = [(DOCProtectedAppContainerCache *)self cacheStatus];
  v6 = [(NSMutableArray *)self->_appList count];
  appList = self->_appList;
  allKeys = [(NSMutableDictionary *)self->_oidToAppMap allKeys];
  v9 = [v3 stringWithFormat:@"%@ cacheStatus=%lu, app count: %lu, apps=%@, oids=%@", v4, cacheStatus, v6, appList, allKeys];

  return v9;
}

- (NSArray)apps
{
  [(DOCProtectedAppContainerCache *)self fetchAllAppContainerIDsFromCoreSpotlightIfNeeded];
  if (self->_appList)
  {
    appList = self->_appList;
  }

  else
  {
    appList = MEMORY[0x277CBEBF8];
  }

  return appList;
}

- (id)appForAppContainerOID:(id)d
{
  dCopy = d;
  [(DOCProtectedAppContainerCache *)self fetchAllAppContainerIDsFromCoreSpotlightIfNeeded];
  v5 = [(NSMutableDictionary *)self->_oidToAppMap objectForKey:dCopy];

  return v5;
}

- (id)appForAppContainerBundleID:(id)d
{
  dCopy = d;
  [(DOCProtectedAppContainerCache *)self fetchAllAppContainerIDsFromCoreSpotlightIfNeeded];
  v5 = [(NSMutableDictionary *)self->_appIdToAppMap objectForKey:dCopy];

  return v5;
}

- (void)appForAppContainerOID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__DOCProtectedAppContainerCache_appForAppContainerOID_completion___block_invoke;
  v10[3] = &unk_278F9C050;
  v10[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(DOCProtectedAppContainerCache *)self fetchAllAppContainerIDsFromCoreSpotlightAsync:v10];
}

void __66__DOCProtectedAppContainerCache_appForAppContainerOID_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  (*(a1[6] + 16))();
}

- (void)appForAppContainerBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__DOCProtectedAppContainerCache_appForAppContainerBundleID_completion___block_invoke;
  v10[3] = &unk_278F9C050;
  v10[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(DOCProtectedAppContainerCache *)self fetchAllAppContainerIDsFromCoreSpotlightAsync:v10];
}

void __71__DOCProtectedAppContainerCache_appForAppContainerBundleID_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  (*(a1[6] + 16))();
}

- (void)fetchAllAppContainerIDsFromCoreSpotlightIfNeeded
{
  cacheStatus = [(DOCProtectedAppContainerCache *)self cacheStatus];
  v4 = docLogHandle;
  if (cacheStatus)
  {
    if (!docLogHandle)
    {
      DOCInitLogging();
      v4 = docLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [DOCProtectedAppContainerCache fetchAllAppContainerIDsFromCoreSpotlightIfNeeded];
    }
  }

  else
  {
    if (!docLogHandle)
    {
      DOCInitLogging();
      v4 = docLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [DOCProtectedAppContainerCache fetchAllAppContainerIDsFromCoreSpotlightIfNeeded];
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __81__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightIfNeeded__block_invoke;
    v5[3] = &unk_278F9B408;
    v5[4] = self;
    [(DOCProtectedAppContainerCache *)self fetchAllAppContainerIDsFromCoreSpotlightAsync:v5];
  }
}

void __81__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightIfNeeded__block_invoke(uint64_t a1)
{
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightIfNeeded__block_invoke_cold_1(a1, v2);
  }
}

- (void)fetchAllAppContainerIDsFromCoreSpotlightAsync:(id)async
{
  asyncCopy = async;
  v5 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v5 = docLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DOCProtectedAppContainerCache fetchAllAppContainerIDsFromCoreSpotlightAsync:];
  }

  if (([objc_opt_class() enabled] & 1) == 0)
  {
    v9 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v9 = docLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DOCProtectedAppContainerCache fetchAllAppContainerIDsFromCoreSpotlightAsync:];
    }

    goto LABEL_20;
  }

  appProtectionContext = [(DOCProtectedAppContainerCache *)self appProtectionContext];
  hasAnyProtectedApps = [appProtectionContext hasAnyProtectedApps];

  if ((hasAnyProtectedApps & 1) == 0)
  {
    v10 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v10 = docLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [DOCProtectedAppContainerCache fetchAllAppContainerIDsFromCoreSpotlightAsync:];
    }

    goto LABEL_20;
  }

  if ([(DOCProtectedAppContainerCache *)self cacheStatus])
  {
    v8 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v8 = docLogHandle;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if ([(DOCProtectedAppContainerCache *)self cacheStatus])
  {
    v8 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v8 = docLogHandle;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

LABEL_11:
    [(DOCProtectedAppContainerCache *)v8 fetchAllAppContainerIDsFromCoreSpotlightAsync:?];
LABEL_20:
    asyncCopy[2](asyncCopy);
    goto LABEL_21;
  }

  [(DOCProtectedAppContainerCache *)self setCacheStatus:1];
  v11 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v11 = docLogHandle;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DOCProtectedAppContainerCache fetchAllAppContainerIDsFromCoreSpotlightAsync:];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightAsync___block_invoke;
  v12[3] = &unk_278F9C688;
  v12[4] = self;
  v13 = asyncCopy;
  [(DOCProtectedAppContainerCache *)self lookupOIDs:v12];

LABEL_21:
}

void __79__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightAsync___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [a2 mutableCopy];
  v13 = *(a1 + 32);
  v14 = *(v13 + 8);
  *(v13 + 8) = v12;

  v15 = [v11 copy];
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = v15;

  v18 = [v10 copy];
  v19 = *(a1 + 32);
  v20 = *(v19 + 24);
  *(v19 + 24) = v18;

  v21 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v21 = docLogHandle;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __79__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightAsync___block_invoke_cold_1();
  }

  [*(a1 + 32) setCacheStatus:2];
  (*(*(a1 + 40) + 16))();
  v22 = [*(a1 + 32) delegate];
  [v22 appProtectionCacheDidUpdate:*(a1 + 32)];
}

- (CSSearchQuery)searchQuery
{
  searchQuery = self->_searchQuery;
  if (!searchQuery)
  {
    v4 = objc_alloc_init(MEMORY[0x277CC34A0]);
    [v4 setFetchAttributes:&unk_285C77F28];
    v5 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:@"FPAppContainerBundleID == *" queryContext:v4];
    v6 = self->_searchQuery;
    self->_searchQuery = v5;

    searchQuery = self->_searchQuery;
  }

  return searchQuery;
}

- (void)lookupOIDs:(id)ds
{
  dsCopy = ds;
  v5 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v5 = docLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DOCProtectedAppContainerCache lookupOIDs:];
  }

  Current = CFAbsoluteTimeGetCurrent();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke;
  v19[3] = &unk_278F9C6B0;
  v21 = Current;
  v8 = dictionary;
  v20 = v8;
  searchQuery = [(DOCProtectedAppContainerCache *)self searchQuery];
  [searchQuery setFoundItemsHandler:v19];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke_21;
  v14[3] = &unk_278F9C700;
  objc_copyWeak(v17, &location);
  v10 = v8;
  v15 = v10;
  v17[1] = *&Current;
  v11 = dsCopy;
  v16 = v11;
  searchQuery2 = [(DOCProtectedAppContainerCache *)self searchQuery];
  [searchQuery2 setCompletionHandler:v14];

  searchQuery3 = [(DOCProtectedAppContainerCache *)self searchQuery];
  [searchQuery3 start];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 40);
  v6 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v6 = docLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v30 = v6;
    v31 = [v3 count];
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:Current - v5];
    *buf = 136315650;
    v40 = "[DOCProtectedAppContainerCache lookupOIDs:]_block_invoke";
    v41 = 2048;
    v42 = v31;
    v43 = 2112;
    v44 = v32;
    _os_log_debug_impl(&dword_249340000, v30, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] AppCache: %s found items: %lu took: %@ ms", buf, 0x20u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    v33 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = CFAbsoluteTimeGetCurrent();
        v14 = *(a1 + 40);
        v15 = [v12 attributeSet];
        v16 = [v15 attributeForKey:@"FPAppContainerBundleID"];

        v17 = [v12 attributeSet];
        v18 = [v17 attributeForKey:@"_kMDItemOID"];

        v19 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v19 = docLogHandle;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v27 = MEMORY[0x277CCABB0];
          v28 = v19;
          v29 = [v27 numberWithDouble:v13 - v14];
          *buf = 136315650;
          v40 = "[DOCProtectedAppContainerCache lookupOIDs:]_block_invoke";
          v41 = 2112;
          v42 = v12;
          v43 = 2112;
          v44 = v29;
          _os_log_debug_impl(&dword_249340000, v28, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] AppCache: %s found item: %@ took: %@ ms", buf, 0x20u);

          v7 = v33;
        }

        if (v16)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          v21 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v21 = docLogHandle;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v40 = "[DOCProtectedAppContainerCache lookupOIDs:]_block_invoke";
            v41 = 2112;
            v42 = v16;
            v43 = 2112;
            v44 = v18;
            _os_log_debug_impl(&dword_249340000, v21, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] AppCache: %s appID: %@ or oid: %@ were nil, skipping", buf, 0x20u);
          }
        }

        else
        {
          v22 = [*(a1 + 32) valueForKey:v16];
          v23 = v22;
          if (v22)
          {
            [v22 addObject:v18];
            v24 = docLogHandle;
            if (!docLogHandle)
            {
              DOCInitLogging();
              v24 = docLogHandle;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v40 = "[DOCProtectedAppContainerCache lookupOIDs:]_block_invoke";
              v41 = 2112;
              v42 = v16;
              v43 = 2112;
              v44 = v18;
              _os_log_debug_impl(&dword_249340000, v24, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] AppCache: %s existing appID: %@ adding oid: %@ to cache", buf, 0x20u);
            }
          }

          else
          {
            v25 = [MEMORY[0x277CBEB58] set];
            [v25 addObject:v18];
            [*(a1 + 32) setValue:v25 forKey:v16];

            v7 = v33;
          }

          v26 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v26 = docLogHandle;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v40 = "[DOCProtectedAppContainerCache lookupOIDs:]_block_invoke";
            v41 = 2112;
            v42 = v16;
            v43 = 2112;
            v44 = v18;
            _os_log_debug_impl(&dword_249340000, v26, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] AppCache: %s adding appID: %@ oid: %@ to cache", buf, 0x20u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }
}

void __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke_2;
    v7[3] = &unk_278F9C6D8;
    v9 = *(a1 + 56);
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    [WeakRetained createProtectedAppLookupTablesFromResultSet:v5 completionHandler:v7];
  }

  else
  {
    v6 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v6 = docLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke_21_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = *(a1 + 40);
  v15 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v15 = docLogHandle;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = v15;
    v18 = [v16 numberWithDouble:Current - v14];
    v19 = 136315650;
    v20 = "[DOCProtectedAppContainerCache lookupOIDs:]_block_invoke_2";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v18;
    _os_log_debug_impl(&dword_249340000, v17, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] AppCache: %s finished searching for all app container items. Error: %@. Took: %@ ms", &v19, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)createProtectedAppLookupTablesFromResultSet:(id)set completionHandler:(id)handler
{
  setCopy = set;
  v6 = MEMORY[0x277CBEB18];
  handlerCopy = handler;
  array = [v6 array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v11 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v11 = docLogHandle;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DOCProtectedAppContainerCache createProtectedAppLookupTablesFromResultSet:completionHandler:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__DOCProtectedAppContainerCache_createProtectedAppLookupTablesFromResultSet_completionHandler___block_invoke;
  v16[3] = &unk_278F9C728;
  v12 = array;
  v17 = v12;
  v13 = dictionary;
  v18 = v13;
  v14 = dictionary2;
  v19 = v14;
  [setCopy enumerateKeysAndObjectsUsingBlock:v16];
  v15 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v15 = docLogHandle;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [DOCProtectedAppContainerCache createProtectedAppLookupTablesFromResultSet:completionHandler:];
  }

  handlerCopy[2](handlerCopy, v12, v13, v14, 0);
}

void __95__DOCProtectedAppContainerCache_createProtectedAppLookupTablesFromResultSet_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[DOCProtectedApp alloc] initWith:v5 oids:v6];
  [a1[4] addObject:v7];
  [a1[5] setObject:v7 forKey:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [a1[6] setObject:v7 forKey:{*(*(&v13 + 1) + 8 * v12++), v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (DOCAppProtectionContextProviding)appProtectionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionContext);

  return WeakRetained;
}

- (DOCProtectedAppContainerCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __81__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightIfNeeded__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  [v2 count];
  v10 = 136315394;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2(&dword_249340000, v4, v5, "[PROTECTED APPS] AppCache: %s fetched %lu apps", v6, v7, v8, v9, v10);
}

- (void)fetchAllAppContainerIDsFromCoreSpotlightAsync:(void *)a1 .cold.4(void *a1, void *a2)
{
  v3 = a1;
  [a2 cacheStatus];
  v10 = 136315394;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2(&dword_249340000, v4, v5, "[PROTECTED APPS] AppCache: %s cacheStatus: %lu fetching or already fetched, returning", v6, v7, v8, v9, v10);
}

void __79__DOCProtectedAppContainerCache_fetchAllAppContainerIDsFromCoreSpotlightAsync___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__DOCProtectedAppContainerCache_lookupOIDs___block_invoke_21_cold_1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)createProtectedAppLookupTablesFromResultSet:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)createProtectedAppLookupTablesFromResultSet:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end