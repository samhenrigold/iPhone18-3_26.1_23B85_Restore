@interface BRCCloudDocsAppsMonitor
+ (id)cloudDocsAppsMonitor;
- (BOOL)hasFetchedInitialApps;
- (BOOL)isApplicationInstalledForContainerID:(id)d;
- (BRCCloudDocsAppsMonitor)init;
- (id)allApplicationIdentifiers;
- (id)applicationIdentifiersForContainerID:(id)d;
- (id)containerIDsForApplicationIdentifier:(id)identifier;
- (void)_dumpAppIDsByAppLibraryIDToContext:(id)context;
- (void)_dumpCloudDocsAppLibrariesByAppIDToContext:(id)context;
- (void)_refetchApps;
- (void)_refetchPendingApps;
- (void)_start;
- (void)_updateMappingsAndNotifyObservers:(id)observers appIDsByAppLibraryID:(id)d markInitialFetch:(BOOL)fetch;
- (void)addObserver:(id)observer;
- (void)appListDidUpdateForBundleIDs:(id)ds;
- (void)dumpToContext:(id)context;
- (void)forceRefetchAppList;
- (void)removeObserver:(id)observer;
@end

@implementation BRCCloudDocsAppsMonitor

- (BOOL)hasFetchedInitialApps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__BRCCloudDocsAppsMonitor_hasFetchedInitialApps__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateMappingsAndNotifyObservers:(id)observers appIDsByAppLibraryID:(id)d markInitialFetch:(BOOL)fetch
{
  v38 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke;
  block[3] = &unk_2785044D8;
  block[4] = self;
  v11 = observersCopy;
  v27 = v11;
  v12 = dCopy;
  v28 = v12;
  fetchCopy = fetch;
  dispatch_sync(queue, block);
  callbackQueue = self->_callbackQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke_2;
  v24[3] = &unk_2784FF478;
  v24[4] = self;
  v14 = v12;
  v25 = v14;
  v15 = callbackQueue;
  v16 = v24;
  v17 = objc_autoreleasePoolPush();
  v30 = 0uLL;
  v31 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v30);
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v22 = v30;
    label = dispatch_queue_get_label(v15);
    *buf = 134218498;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v33 = v18;
    _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  v36 = v30;
  v37 = v31;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __dispatch_async_with_logs_block_invoke_21;
  v33 = &unk_2784FF568;
  v20 = v15;
  v34 = v20;
  v21 = v16;
  v35 = v21;
  dispatch_async(v20, buf);

  objc_autoreleasePoolPop(v17);
}

void __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 48));
  if (*(a1 + 56) == 1)
  {
    *(*(a1 + 32) + 80) = 1;
  }
}

void __99__BRCCloudDocsAppsMonitor__updateMappingsAndNotifyObservers_appIDsByAppLibraryID_markInitialFetch___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cloudDocsAppsListDidChange:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_refetchApps
{
  dispatch_assert_queue_V2(self->_fetchInstalledAppsQueue);
  memset(v24, 0, sizeof(v24));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor _refetchApps]", 111, 0, v24);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor _refetchApps];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.TextInput"];
  [dictionary setObject:v7 forKey:@"com.apple.kbd"];

  v8 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.shoebox"];
  [dictionary setObject:v8 forKey:@"com.apple.passd"];

  v9 = [MEMORY[0x277CBEB58] setWithObject:@"com.apple.kbd"];
  [dictionary2 setObject:v9 forKey:@"com.apple.TextInput"];

  v10 = [MEMORY[0x277CBEB58] setWithObject:@"com.apple.passd"];
  [dictionary2 setObject:v10 forKey:*MEMORY[0x277CFACE0]];

  v11 = [BRCUserDefaults defaultsForMangledID:0];
  bundleIDsExcludedFromAppLibraryExtraction = [v11 bundleIDsExcludedFromAppLibraryExtraction];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __39__BRCCloudDocsAppsMonitor__refetchApps__block_invoke;
  v20 = &unk_278508030;
  v14 = bundleIDsExcludedFromAppLibraryExtraction;
  v21 = v14;
  v15 = dictionary;
  v22 = v15;
  v16 = dictionary2;
  v23 = v16;
  [defaultWorkspace enumerateBundlesOfType:1 block:&v17];

  [(BRCCloudDocsAppsMonitor *)self _updateMappingsAndNotifyObservers:v15 appIDsByAppLibraryID:v16 markInitialFetch:1, v17, v18, v19, v20];
  __brc_leave_section(v24);
}

void __39__BRCCloudDocsAppsMonitor__refetchApps__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 bundleIdentifier];
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __39__BRCCloudDocsAppsMonitor__refetchApps__block_invoke_cold_1();
    }

LABEL_4:

    goto LABEL_17;
  }

  v6 = BREntitledContainerIdentifiersForProxy();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
      [v8 setObject:v9 forKey:v5];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v16 = v4;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            v15 = [*(a1 + 48) objectForKeyedSubscript:v14];
            if (!v15)
            {
              v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
              [*(a1 + 48) setObject:v15 forKeyedSubscript:v14];
            }

            [v15 addObject:v5];
          }

          v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
        v6 = v7;
        v4 = v16;
      }

      else
      {
        v6 = v7;
      }

      goto LABEL_4;
    }
  }

LABEL_17:

  objc_autoreleasePoolPop(v4);
}

- (void)forceRefetchAppList
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BRCCloudDocsAppsMonitor *)v2 forceRefetchAppList];
  }

  br_pacer_signal();
}

- (void)appListDidUpdateForBundleIDs:(id)ds
{
  dsCopy = ds;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor appListDidUpdateForBundleIDs:];
  }

  fetchInstalledAppsQueue = self->_fetchInstalledAppsQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__BRCCloudDocsAppsMonitor_appListDidUpdateForBundleIDs___block_invoke;
  v9[3] = &unk_2784FF478;
  v9[4] = self;
  v10 = dsCopy;
  v8 = dsCopy;
  dispatch_async(fetchInstalledAppsQueue, v9);
}

void __56__BRCCloudDocsAppsMonitor_appListDidUpdateForBundleIDs___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = [v2 count];
  v7 = [BRCUserDefaults defaultsForMangledID:0];
  v8 = [v7 bundleIDsExcludedFromAppLibraryExtraction];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (([v8 containsObject:{v14, v15}] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"com.apple.kbd") & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"com.apple.passd") & 1) == 0)
        {
          [*(*(a1 + 32) + 32) addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if (v6 != [*(*(a1 + 32) + 32) count])
  {
    br_pacer_signal();
  }
}

- (void)_refetchPendingApps
{
  v75 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_fetchInstalledAppsQueue);
  pendingBundleIDsToRefetch = self->_pendingBundleIDsToRefetch;
  if (pendingBundleIDsToRefetch && [(NSMutableSet *)pendingBundleIDsToRefetch count])
  {
    selfCopy = self;
    v4 = self->_pendingBundleIDsToRefetch;
    memset(v63, 0, sizeof(v63));
    __brc_create_section(0, "[BRCCloudDocsAppsMonitor _refetchPendingApps]", 187, 0, v63);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v71 = 134218498;
      *&v71[4] = v63[0];
      *&v71[12] = 2112;
      *&v71[14] = v4;
      *&v71[22] = 2112;
      v72 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx refetching specific apps: %@%@", v71, 0x20u);
    }

    *v71 = 0;
    *&v71[8] = v71;
    *&v71[16] = 0x3032000000;
    v72 = __Block_byref_object_copy__55;
    v73 = __Block_byref_object_dispose__55;
    v74 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__55;
    v61 = __Block_byref_object_dispose__55;
    v62 = 0;
    queue = selfCopy->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__BRCCloudDocsAppsMonitor__refetchPendingApps__block_invoke;
    block[3] = &unk_2784FFB30;
    block[4] = selfCopy;
    block[5] = v71;
    block[6] = &v57;
    dispatch_sync(queue, block);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v4;
    v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v52 objects:v70 count:16];
    if (v8)
    {
      v9 = 0;
      v37 = *v53;
      do
      {
        v38 = v8;
        for (i = 0; i != v38; ++i)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v52 + 1) + 8 * i);
          v51 = 0;
          v12 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:v11 allowPlaceholder:1 error:&v51];
          v39 = v51;
          v40 = v12;
          if (v12)
          {
            entitlements = [v12 entitlements];
            v42 = BREntitledContainerIdentifiersForPropertyList();
          }

          else
          {
            entitlements = brc_bread_crumbs();
            v14 = brc_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v67 = v11;
              v68 = 2112;
              v69 = entitlements;
              _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] No bundleRecord found for bundle identifier %@ - treating as uninstalled app%@", buf, 0x16u);
            }

            v42 = 0;
          }

          v15 = [*(*&v71[8] + 40) objectForKeyedSubscript:v11];
          v16 = v42;
          if (v42)
          {
            v16 = [MEMORY[0x277CBEB98] setWithArray:?];
          }

          v41 = v16;
          if (v15 | v16 && ([v15 isEqualToSet:?] & 1) == 0)
          {
            if (v15)
            {
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v17 = v15;
              v18 = [v17 countByEnumeratingWithState:&v47 objects:v65 count:16];
              if (v18)
              {
                v19 = *v48;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v48 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v21 = *(*(&v47 + 1) + 8 * j);
                    v22 = [v58[5] objectForKeyedSubscript:v21];
                    [v22 removeObject:v11];
                    if (![v22 count])
                    {
                      [v58[5] removeObjectForKey:v21];
                    }
                  }

                  v18 = [v17 countByEnumeratingWithState:&v47 objects:v65 count:16];
                }

                while (v18);
              }
            }

            v23 = [v41 count];
            v24 = *(*&v71[8] + 40);
            if (v23)
            {
              v25 = MEMORY[0x277CBEB98];
              allObjects = [v41 allObjects];
              v27 = [v25 setWithArray:allObjects];
              [v24 setObject:v27 forKey:v11];

              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              allObjects2 = [v41 allObjects];
              v29 = [allObjects2 countByEnumeratingWithState:&v43 objects:v64 count:16];
              if (v29)
              {
                v30 = *v44;
                do
                {
                  for (k = 0; k != v29; ++k)
                  {
                    if (*v44 != v30)
                    {
                      objc_enumerationMutation(allObjects2);
                    }

                    v32 = *(*(&v43 + 1) + 8 * k);
                    v33 = [v58[5] objectForKeyedSubscript:v32];
                    if (!v33)
                    {
                      v33 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
                      [v58[5] setObject:v33 forKeyedSubscript:v32];
                    }

                    [v33 addObject:v11];
                  }

                  v29 = [allObjects2 countByEnumeratingWithState:&v43 objects:v64 count:16];
                }

                while (v29);
              }
            }

            else
            {
              [*(*&v71[8] + 40) removeObjectForKey:v11];
            }

            v9 = 1;
          }
        }

        v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v52 objects:v70 count:16];
      }

      while (v8);

      v34 = selfCopy;
      if (v9)
      {
        [(BRCCloudDocsAppsMonitor *)selfCopy _updateMappingsAndNotifyObservers:*(*&v71[8] + 40) appIDsByAppLibraryID:v58[5] markInitialFetch:0];
      }
    }

    else
    {

      v34 = selfCopy;
    }

    [(NSMutableSet *)v34->_pendingBundleIDsToRefetch removeAllObjects];
    _Block_object_dispose(&v57, 8);

    _Block_object_dispose(v71, 8);
    __brc_leave_section(v63);
  }
}

uint64_t __46__BRCCloudDocsAppsMonitor__refetchPendingApps__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) mutableCopy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[6] + 8) + 40) = [*(a1[4] + 16) mutableCopy];

  return MEMORY[0x2821F96F8]();
}

- (void)_start
{
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor _start]", 260, 0, v6);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor _start];
  }

  v5 = +[BRCSystemResourcesManager manager];
  [v5 addAppListObserver:self];

  [(BRCCloudDocsAppsMonitor *)self forceRefetchAppList];
  __brc_leave_section(v6);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(callbackQueue, v7);
}

void __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__55;
  v9 = __Block_byref_object_dispose__55;
  v10 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke_2;
  v4[3] = &unk_278502000;
  v4[4] = v2;
  v4[5] = &v5;
  dispatch_sync(v3, v4);
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  if (v6[5])
  {
    [*(a1 + 40) cloudDocsAppsListDidChange:?];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __39__BRCCloudDocsAppsMonitor_addObserver___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__BRCCloudDocsAppsMonitor_removeObserver___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(callbackQueue, v7);
}

- (id)applicationIdentifiersForContainerID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  memset(v16, 0, sizeof(v16));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:]", 290, 0, v16);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v16[0];
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    *&buf[22] = 2112;
    v18 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asked appIDs for %@%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__55;
  v19 = __Block_byref_object_dispose__55;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__BRCCloudDocsAppsMonitor_applicationIdentifiersForContainerID___block_invoke;
  v13[3] = &unk_278500D08;
  v15 = buf;
  v13[4] = self;
  v8 = dCopy;
  v14 = v8;
  dispatch_sync(queue, v13);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:];
  }

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  __brc_leave_section(v16);

  return v11;
}

uint64_t __64__BRCCloudDocsAppsMonitor_applicationIdentifiersForContainerID___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (id)containerIDsForApplicationIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  memset(v16, 0, sizeof(v16));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor containerIDsForApplicationIdentifier:]", 301, 0, v16);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v16[0];
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    v18 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asked containerIDs for %@%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__55;
  v19 = __Block_byref_object_dispose__55;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__BRCCloudDocsAppsMonitor_containerIDsForApplicationIdentifier___block_invoke;
  v13[3] = &unk_278500D08;
  v15 = buf;
  v13[4] = self;
  v8 = identifierCopy;
  v14 = v8;
  dispatch_sync(queue, v13);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:];
  }

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  __brc_leave_section(v16);

  return v11;
}

uint64_t __64__BRCCloudDocsAppsMonitor_containerIDsForApplicationIdentifier___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (id)allApplicationIdentifiers
{
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRCCloudDocsAppsMonitor allApplicationIdentifiers]", 328, 0, v17);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor allApplicationIdentifiers];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__55;
  v15 = __Block_byref_object_dispose__55;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BRCCloudDocsAppsMonitor_allApplicationIdentifiers__block_invoke;
  block[3] = &unk_278502000;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(queue, block);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCCloudDocsAppsMonitor applicationIdentifiersForContainerID:];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  __brc_leave_section(v17);

  return v8;
}

void __52__BRCCloudDocsAppsMonitor_allApplicationIdentifiers__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isApplicationInstalledForContainerID:(id)d
{
  v3 = [(BRCCloudDocsAppsMonitor *)self applicationIdentifiersForContainerID:d];
  v4 = [v3 count] != 0;

  return v4;
}

+ (id)cloudDocsAppsMonitor
{
  if (cloudDocsAppsMonitor_once != -1)
  {
    +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
  }

  v3 = cloudDocsAppsMonitor_gMonitor;

  return v3;
}

uint64_t __47__BRCCloudDocsAppsMonitor_cloudDocsAppsMonitor__block_invoke()
{
  cloudDocsAppsMonitor_gMonitor = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BRCCloudDocsAppsMonitor)init
{
  v27.receiver = self;
  v27.super_class = BRCCloudDocsAppsMonitor;
  v2 = [(BRCCloudDocsAppsMonitor *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.bird.apps-monitor", v4);

    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.bird.apps-monitor.fetch-apps", v8);

    fetchInstalledAppsQueue = v2->_fetchInstalledAppsQueue;
    v2->_fetchInstalledAppsQueue = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.bird.apps-monitor.callback", v12);

    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observers = v2->_observers;
    v2->_observers = v15;

    v17 = [BRCUserDefaults defaultsForMangledID:0];
    [v17 appsFetchPacerDelay];
    v18 = br_pacer_create();
    refetchPacer = v2->_refetchPacer;
    v2->_refetchPacer = v18;

    objc_initWeak(&location, v2);
    v24[1] = MEMORY[0x277D85DD0];
    v24[2] = 3221225472;
    v24[3] = __31__BRCCloudDocsAppsMonitor_init__block_invoke;
    v24[4] = &unk_2784FF400;
    objc_copyWeak(&v25, &location);
    br_pacer_set_event_handler();
    br_pacer_resume();
    v20 = [BRCUserDefaults defaultsForMangledID:0];
    [v20 appsFetchPacerDelay];
    v21 = br_pacer_create();
    incrementalRefetchPacer = v2->_incrementalRefetchPacer;
    v2->_incrementalRefetchPacer = v21;

    objc_copyWeak(v24, &location);
    br_pacer_set_event_handler();
    br_pacer_resume();
    [(BRCCloudDocsAppsMonitor *)v2 _start];
    objc_destroyWeak(v24);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__BRCCloudDocsAppsMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refetchApps];
}

void __31__BRCCloudDocsAppsMonitor_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refetchPendingApps];
}

- (void)dumpToContext:(id)context
{
  contextCopy = context;
  [contextCopy writeLineWithFormat:@"apps monitor"];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  [contextCopy pushIndentation];
  [(BRCCloudDocsAppsMonitor *)self _dumpCloudDocsAppLibrariesByAppIDToContext:contextCopy];
  [contextCopy writeLineWithFormat:&stru_2837504F0];
  [(BRCCloudDocsAppsMonitor *)self _dumpAppIDsByAppLibraryIDToContext:contextCopy];
  [contextCopy popIndentation];
  [contextCopy writeLineWithFormat:&stru_2837504F0];
}

- (void)_dumpCloudDocsAppLibrariesByAppIDToContext:(id)context
{
  contextCopy = context;
  [contextCopy writeLineWithFormat:@"app library IDs by App ID"];
  [contextCopy writeLineWithFormat:@"======================="];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = contextCopy;
  selfCopy = self;
  v6 = contextCopy;
  dispatch_sync(queue, v7);
}

void __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke(uint64_t a1)
{
  if (fp_shouldObfuscateFilenames())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(*(a1 + 40) + 8), "count")}];
    v3 = *(*(a1 + 40) + 8);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_2;
    v8 = &unk_278508058;
    v9 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:&v5];
    [*(a1 + 32) writeLineWithFormat:@"%@", v4, v5, v6, v7, v8];
  }

  else
  {
    [*(a1 + 32) writeLineWithFormat:@"%@", *(*(a1 + 40) + 8)];
  }
}

void __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 fp_obfuscatedDotSeparatedComponents];
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_3;
  v9[3] = &unk_278501EF8;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void __70__BRCCloudDocsAppsMonitor__dumpCloudDocsAppLibrariesByAppIDToContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fp_obfuscatedDotSeparatedComponents];
  [v2 addObject:v3];
}

- (void)_dumpAppIDsByAppLibraryIDToContext:(id)context
{
  contextCopy = context;
  [contextCopy writeLineWithFormat:@"app IDs by app library IDs"];
  [contextCopy writeLineWithFormat:@"======================="];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = contextCopy;
  selfCopy = self;
  v6 = contextCopy;
  dispatch_sync(queue, v7);
}

void __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke(uint64_t a1)
{
  if (fp_shouldObfuscateFilenames())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(*(a1 + 40) + 16), "count")}];
    v3 = *(*(a1 + 40) + 16);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_2;
    v8 = &unk_278508058;
    v9 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:&v5];
    [*(a1 + 32) writeLineWithFormat:@"%@", v4, v5, v6, v7, v8];
  }

  else
  {
    [*(a1 + 32) writeLineWithFormat:@"%@", *(*(a1 + 40) + 16)];
  }
}

void __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 fp_obfuscatedDotSeparatedComponents];
  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_3;
  v11[3] = &unk_278501EF8;
  v12 = v9;
  v10 = v9;
  [v7 enumerateObjectsUsingBlock:v11];

  [*(a1 + 32) setObject:v10 forKeyedSubscript:v8];
  *a4 = 0;
}

void __62__BRCCloudDocsAppsMonitor__dumpAppIDsByAppLibraryIDToContext___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 fp_obfuscatedDotSeparatedComponents];
  [v4 addObject:v5];

  *a3 = 0;
}

@end