@interface STStorageAppsMonitor
+ (id)sharedMonitor;
- (NSArray)apps;
- (STStorageAppsMonitor)init;
- (id)appSizesDict;
- (id)appWithIdentifier:(id)identifier;
- (id)appsSortedBySize;
- (id)categorySizesDict;
- (id)childAppsForApp:(id)app;
- (id)filteredApps:(id)apps sortedUsingBlock:(id)block;
- (id)storageInfoDict;
- (id)updateApps;
- (void)_logAppSizes:(id)sizes;
- (void)addDeviceInfoToDict:(id)dict;
- (void)addNumber:(int64_t)number toDict:(id)dict forKey:(id)key;
- (void)addTimestampToDict:(id)dict;
- (void)applicationInstallsDidChange:(id)change;
- (void)dealloc;
- (void)loadApps;
- (void)logAppSizes;
- (void)notifyAppsChanged;
- (void)startMonitor;
- (void)stopMonitor;
- (void)sync;
@end

@implementation STStorageAppsMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_monitorOnce != -1)
  {
    +[STStorageAppsMonitor sharedMonitor];
  }

  v3 = _gSharedMonitor;

  return v3;
}

uint64_t __37__STStorageAppsMonitor_sharedMonitor__block_invoke()
{
  _gSharedMonitor = objc_alloc_init(STStorageAppsMonitor);

  return MEMORY[0x2821F96F8]();
}

- (STStorageAppsMonitor)init
{
  v18.receiver = self;
  v18.super_class = STStorageAppsMonitor;
  v2 = [(STStorageAppsMonitor *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    [(NSOperationQueue *)v2->_serialQueue setMaxConcurrentOperationCount:1];
    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    appsLock = v2->_appsLock;
    v2->_appsLock = v5;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    appsByID = v2->_appsByID;
    v2->_appsByID = dictionary;

    v2->_sharedContainerClass = NSClassFromString(&cfstr_Ststorageshare.isa);
    objc_initWeak(&location, v2);
    v9 = MEMORY[0x277CCA8C8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __28__STStorageAppsMonitor_init__block_invoke;
    v14[3] = &unk_279D1CE18;
    objc_copyWeak(&v16, &location);
    v10 = v2;
    v15 = v10;
    v11 = [v9 blockOperationWithBlock:v14];
    initialLoadOperation = v10->_initialLoadOperation;
    v10->_initialLoadOperation = v11;

    [(NSOperationQueue *)v2->_serialQueue addOperation:v10->_initialLoadOperation];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __28__STStorageAppsMonitor_init__block_invoke(uint64_t a1)
{
  v2 = +[STMSizer sharedAppSizer];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAppSizer:v2];

  v4 = *(a1 + 32);
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 appSizer];
  [v6 setDelegate:v4];

  v8 = objc_alloc_init(STUsageBundleRegistry);
  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setUsageBundles:v8];
}

- (void)dealloc
{
  [(STStorageAppsMonitor *)self stopMonitor];
  v3.receiver = self;
  v3.super_class = STStorageAppsMonitor;
  [(STStorageAppsMonitor *)&v3 dealloc];
}

- (void)startMonitor
{
  v3 = +[STUpdateMonitor sharedMonitor];
  [v3 startMonitor];

  v4 = +[STFileProviderMonitor sharedMonitor];
  [v4 startMonitor];

  v5 = +[STStorageMediaMonitor sharedMonitor];
  [v5 startMonitor];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];

  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __36__STStorageAppsMonitor_startMonitor__block_invoke;
  v18 = &unk_279D1CE40;
  objc_copyWeak(&v19, &location);
  [(NSOperationQueue *)serialQueue addOperationWithBlock:&v15];
  v8 = [(STStorageAppsMonitor *)self updateApps:v15];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = +[STStorageDataNotifier sharedNotifier];
  [defaultCenter addObserver:self selector:sel_refreshApps_ name:@"STNotify_AppsAdded" object:v10];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = +[STStorageDataNotifier sharedNotifier];
  [defaultCenter2 addObserver:self selector:sel_appsStateChanged_ name:@"STNotify_AppsStateChanged" object:v12];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = +[STStorageDataNotifier sharedNotifier];
  [defaultCenter3 addObserver:self selector:sel_mediaSizesChanged_ name:@"STNotify_MediaSizesChanged" object:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __36__STStorageAppsMonitor_startMonitor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained appSizer];
  [v1 startSizer];
}

- (void)stopMonitor
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = +[STStorageDataNotifier sharedNotifier];
  [defaultCenter removeObserver:self name:@"STNotify_AppsAdded" object:v4];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = +[STStorageDataNotifier sharedNotifier];
  [defaultCenter2 removeObserver:self name:@"STNotify_AppsStateChanged" object:v6];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = +[STStorageDataNotifier sharedNotifier];
  [defaultCenter3 removeObserver:self name:@"STNotify_MediaSizesChanged" object:v8];

  v9 = +[STUpdateMonitor sharedMonitor];
  [v9 stopMonitor];

  v10 = +[STFileProviderMonitor sharedMonitor];
  [v10 stopMonitor];

  v11 = +[STStorageMediaMonitor sharedMonitor];
  [v11 stopMonitor];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  appSizer = self->_appSizer;

  [(STMSizer *)appSizer stopSizer];
}

- (void)loadApps
{
  v113 = *MEMORY[0x277D85DE8];
  STLog(1, @"%s", v2, v3, v4, v5, v6, v7, "[STStorageAppsMonitor loadApps]");
  v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  prevApps = [(STStorageAppsMonitor *)self prevApps];
  usageBundles = [(STStorageAppsMonitor *)self usageBundles];
  v94 = prevApps;
  v12 = [STStorageDataManager updateAppsWithPrevious:prevApps usageBundles:usageBundles skipAppRecordBlock:&__block_literal_global_31];

  [(STStorageAppsMonitor *)self setPrevApps:v12];
  v96 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [(STMSizer *)self->_appSizer addApps:v12];
  v14 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v15 = +[STLaunchDates sharedDates];
  [v15 refreshDates];

  v16 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  selfCopy = self;
  [(STMSizer *)self->_appSizer flushCacheAsynchronously];
  v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v106;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v106 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v105 + 1) + 8 * i) refreshAppState];
      }

      v20 = [v18 countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v20);
  }

  v23 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v24 = [STStorageDataManager computeCategoriesForApps:v18];
  categorySizes = selfCopy->_categorySizes;
  selfCopy->_categorySizes = v24;

  v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  STLog(1, @"%0.3f secs: update apps", v27, v28, v29, v30, v31, v32, COERCE__INT64((v13 - v9) / 1000000000.0));
  STLog(1, @"%0.3f secs: add entries to cache", v33, v34, v35, v36, v37, v38, COERCE__INT64((v14 - v13) / 1000000000.0));
  STLog(1, @"%0.3f secs: update launch times", v39, v40, v41, v42, v43, v44, COERCE__INT64((v16 - v14) / 1000000000.0));
  STLog(1, @"%0.3f secs: sync cache sizes", v45, v46, v47, v48, v49, v50, COERCE__INT64((v17 - v16) / 1000000000.0));
  STLog(1, @"%0.3f secs: update app info", v51, v52, v53, v54, v55, v56, COERCE__INT64((v23 - v17) / 1000000000.0));
  STLog(1, @"%0.3f secs: compute categories", v57, v58, v59, v60, v61, v62, COERCE__INT64((v26 - v23) / 1000000000.0));
  STLog(1, @"%0.3f secs total load time", v63, v64, v65, v66, v67, v68, COERCE__INT64((v26 - v9) / 1000000000.0));
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v69 = v18;
  v70 = [v69 countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (!v70)
  {
    v72 = 0;
    goto LABEL_28;
  }

  v71 = v70;
  v72 = 0;
  v73 = *v102;
  do
  {
    for (j = 0; j != v71; ++j)
    {
      if (*v102 != v73)
      {
        objc_enumerationMutation(v69);
      }

      v75 = *(*(&v101 + 1) + 8 * j);
      appRecord = [v75 appRecord];
      linkedParentApplication = [appRecord linkedParentApplication];

      if (linkedParentApplication)
      {
        bundleIdentifier = [linkedParentApplication bundleIdentifier];
        if ([bundleIdentifier length])
        {
          if (!v72)
          {
            v72 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
          }

          v79 = [(NSDictionary *)v72 objectForKey:bundleIdentifier];
          if (v79)
          {
            v80 = v79;
            v81 = [v79 arrayByAddingObject:v75];
          }

          else
          {
            v110 = v75;
            v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
          }

          [(NSDictionary *)v72 setObject:v81 forKey:bundleIdentifier];
        }
      }

      else
      {
        if (![v75 userVisible])
        {
          goto LABEL_24;
        }

        bundleIdentifier = [v75 appIdentifier];
        [(NSDictionary *)v96 setObject:v75 forKey:bundleIdentifier];
      }

LABEL_24:
    }

    v71 = [v69 countByEnumeratingWithState:&v101 objects:v111 count:16];
  }

  while (v71);
LABEL_28:

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v82 = v69;
  v83 = [v82 countByEnumeratingWithState:&v97 objects:v109 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v98;
    do
    {
      for (k = 0; k != v84; ++k)
      {
        if (*v98 != v85)
        {
          objc_enumerationMutation(v82);
        }

        v87 = *(*(&v97 + 1) + 8 * k);
        bundleIdentifier2 = [v87 bundleIdentifier];
        if ([bundleIdentifier2 length])
        {
          v89 = [(NSDictionary *)v72 objectForKey:bundleIdentifier2];
          [v87 setChildApps:v89];
        }

        else
        {
          [v87 setChildApps:0];
        }
      }

      v84 = [v82 countByEnumeratingWithState:&v97 objects:v109 count:16];
    }

    while (v84);
  }

  [(NSLock *)selfCopy->_appsLock lock];
  appsByID = selfCopy->_appsByID;
  selfCopy->_appsByID = v96;
  v91 = v96;

  childAppsByParentID = selfCopy->_childAppsByParentID;
  selfCopy->_childAppsByParentID = v72;
  v93 = v72;

  selfCopy->_sortNeeded = 1;
  [(NSLock *)selfCopy->_appsLock unlock];
  [(STStorageAppsMonitor *)selfCopy logAppSizes];
  [(STStorageAppsMonitor *)selfCopy notifyAppsChanged];
}

BOOL __32__STStorageAppsMonitor_loadApps__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 developerType] == 3 || (objc_msgSend(v2, "isDeletable") & 1) != 0 || (objc_msgSend(v2, "isPlaceholder") & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5 = [v2 bundleIdentifier];
    v6 = [STAppOverrides overridesFor:v5];
    v7 = v6;
    v3 = !v6 || ([v6 forceVisible] & 1) == 0;
  }

  return v3;
}

- (id)updateApps
{
  STLog(1, @"%s", v2, v3, v4, v5, v6, v7, "[STStorageAppsMonitor updateApps]");
  selfCopy = self;
  objc_sync_enter(selfCopy);
  updateAppsOperation = selfCopy->_updateAppsOperation;
  if (!updateAppsOperation || [(NSOperation *)updateAppsOperation isFinished])
  {
    objc_initWeak(&location, selfCopy);
    v11 = MEMORY[0x277CCA8C8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__STStorageAppsMonitor_updateApps__block_invoke;
    v16[3] = &unk_279D1CE40;
    objc_copyWeak(&v17, &location);
    v12 = [v11 blockOperationWithBlock:v16];
    v13 = selfCopy->_updateAppsOperation;
    selfCopy->_updateAppsOperation = v12;

    [(NSOperation *)selfCopy->_updateAppsOperation addDependency:selfCopy->_initialLoadOperation];
    [(NSOperationQueue *)selfCopy->_serialQueue addOperation:selfCopy->_updateAppsOperation];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v14 = selfCopy->_updateAppsOperation;
  objc_sync_exit(selfCopy);

  return v14;
}

void __34__STStorageAppsMonitor_updateApps__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_autoreleasePoolPush();
  v2 = objc_loadWeakRetained(&to);
  [v2 loadApps];

  objc_autoreleasePoolPop(v1);
  objc_destroyWeak(&to);
}

- (void)applicationInstallsDidChange:(id)change
{
  changeCopy = change;
  v5 = STSharedSerialQueue(changeCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__STStorageAppsMonitor_applicationInstallsDidChange___block_invoke;
  v7[3] = &unk_279D1CEB0;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(v5, v7);
}

void __53__STStorageAppsMonitor_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  [*(*(a1 + 40) + 16) lock];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v21 + 1) + 8 * v7) bundleIdentifier];
        if ([v8 length])
        {
          v9 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v8];
          if (v9)
          {
            [v2 addObject:v9];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 16) unlock];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v2;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * v14++) refreshAppState];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__STStorageAppsMonitor_applicationInstallsDidChange___block_invoke_2;
  block[3] = &unk_279D1CE88;
  block[4] = *(a1 + 40);
  dispatch_after(v15, MEMORY[0x277D85CD0], block);
}

- (void)notifyAppsChanged
{
  v2 = +[STStorageDataNotifier sharedNotifier];
  [v2 postAppSizesChanged:0];
}

- (id)filteredApps:(id)apps sortedUsingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  blockCopy = block;
  apps = [(STStorageAppsMonitor *)self apps];
  v9 = [apps mutableCopy];

  if ([v9 count])
  {
    if (appsCopy)
    {
      v10 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            if ((appsCopy[2](appsCopy, v15) & 1) == 0)
            {
              [v9 removeObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }

    if (blockCopy)
    {
      if (STStorageAppSortBySizeBlock == blockCopy)
      {
        goto LABEL_18;
      }

      v16 = v9;
      v17 = blockCopy;
    }

    else
    {
      v17 = STStorageAppSortByNameBlock;
      v16 = v9;
    }

    [v16 sortUsingComparator:v17];
  }

LABEL_18:

  return v9;
}

- (id)appsSortedBySize
{
  v41 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_appsLock lock];
  allValues = [(NSDictionary *)self->_appsByID allValues];
  [(NSLock *)self->_appsLock unlock];
  v30 = [allValues count];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:?];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = allValues;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        appSizeIfComputed = [v10 appSizeIfComputed];
        v12 = appSizeIfComputed;
        if (appSizeIfComputed)
        {
          userTotal = [appSizeIfComputed userTotal];
          if (userTotal <= 4096)
          {
            goto LABEL_16;
          }

          v14 = userTotal;
          if (userTotal <= 0xF423F && (objc_opt_isKindOfClass() & 1) != 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
        v16 = [v4 objectForKey:v15];
        v17 = v16;
        if (v16)
        {
          [v16 addObject:v10];
        }

        else
        {
          v18 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
          [v4 setObject:v18 forKey:v15];
        }

LABEL_16:
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  allKeys = [v4 allKeys];
  v20 = [allKeys sortedArrayUsingComparator:&__block_literal_global_66];

  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:v30];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [v4 objectForKey:*(*(&v31 + 1) + 8 * j)];
        if ([v27 count] >= 2)
        {
          v28 = [v27 sortedArrayUsingComparator:STStorageAppSortByNameBlock];

          v27 = v28;
        }

        [v21 addObjectsFromArray:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v24);
  }

  return v21;
}

uint64_t __40__STStorageAppsMonitor_appsSortedBySize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 longLongValue];
  v6 = [v4 longLongValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v6 > v5;
  }
}

- (NSArray)apps
{
  [(NSLock *)self->_appsLock lock];
  if (self->_sortNeeded)
  {
    [(NSLock *)self->_appsLock unlock];
    appsSortedBySize = [(STStorageAppsMonitor *)self appsSortedBySize];
    [(NSLock *)self->_appsLock lock];
    self->_sortNeeded = 0;
    allApps = self->_allApps;
    self->_allApps = appsSortedBySize;
  }

  v5 = self->_allApps;
  [(NSLock *)self->_appsLock unlock];

  return v5;
}

- (id)appWithIdentifier:(id)identifier
{
  appsLock = self->_appsLock;
  identifierCopy = identifier;
  [(NSLock *)appsLock lock];
  v6 = [(NSDictionary *)self->_appsByID objectForKey:identifierCopy];

  [(NSLock *)self->_appsLock unlock];

  return v6;
}

- (id)childAppsForApp:(id)app
{
  bundleIdentifier = [app bundleIdentifier];
  if ([bundleIdentifier length])
  {
    [(NSLock *)self->_appsLock lock];
    v5 = [(NSDictionary *)self->_childAppsByParentID objectForKey:bundleIdentifier];
    [(NSLock *)self->_appsLock unlock];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (void)addNumber:(int64_t)number toDict:(id)dict forKey:(id)key
{
  if (number)
  {
    v7 = MEMORY[0x277CCABB0];
    keyCopy = key;
    dictCopy = dict;
    v10 = [v7 numberWithLongLong:number];
    [dictCopy setObject:v10 forKey:keyCopy];
  }
}

- (void)addDeviceInfoToDict:(id)dict
{
  dictCopy = dict;
  v4 = MGGetStringAnswer();
  [dictCopy setObject:v4 forKey:@"device-type"];
  v5 = MGGetStringAnswer();
  [dictCopy setObject:v5 forKey:@"os-version"];
  v6 = +[STStorageDiskMonitor sharedMonitor];
  storageSpace = [v6 storageSpace];
  -[STStorageAppsMonitor addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v6 deviceSize], dictCopy, @"device-size");
  -[STStorageAppsMonitor addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [storageSpace usedBytes], dictCopy, @"device-used");
  -[STStorageAppsMonitor addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [storageSpace purgeableBytes], dictCopy, @"device-purgeable");
  if ([storageSpace isLowSpace])
  {
    [dictCopy setObject:MEMORY[0x277CBEC38] forKey:@"is-low-space"];
    if ([storageSpace isVeryLowSpace])
    {
      [dictCopy setObject:MEMORY[0x277CBEC38] forKey:@"is-very-low-space"];
    }
  }
}

- (void)addTimestampToDict:(id)dict
{
  v3 = MEMORY[0x277CCAA68];
  dictCopy = dict;
  v7 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v7 stringFromDate:v5];
  [dictCopy setObject:v6 forKey:@"date"];
}

- (id)storageInfoDict
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
  [(STStorageAppsMonitor *)self addTimestampToDict:v3];
  v21 = v3;
  [(STStorageAppsMonitor *)self addDeviceInfoToDict:v3];
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
  dictionary = [(STSizeDict *)self->_categorySizes dictionary];
  for (i = 0; i != 9; ++i)
  {
    v6 = STKeyForCategory(i);
    v7 = [dictionary objectForKey:v6];
    v8 = v7;
    if (v7 && ([v7 isZero] & 1) == 0)
    {
      v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
      [v9 setObject:v6 forKeyedSubscript:@"id"];
      v10 = STNameForCategoryKey(v6);
      [v9 setObject:v10 forKeyedSubscript:@"name"];

      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
      -[STStorageAppsMonitor addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v8 userTotal], v11, @"total");
      -[STStorageAppsMonitor addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v8 fixed], v11, @"fixed");
      -[STStorageAppsMonitor addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v8 dynamic], v11, @"dynamic");
      -[STStorageAppsMonitor addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v8 purgeable], v11, @"purgeable");
      [v9 setObject:v11 forKeyedSubscript:@"sizes"];
      [v22 addObject:v9];
    }
  }

  apps = [(STStorageAppsMonitor *)self apps];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(apps, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = apps;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        infoDict = [*(*(&v23 + 1) + 8 * j) infoDict];
        [v13 addObject:infoDict];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [v21 setObject:v22 forKeyedSubscript:@"categories"];
  [v21 setObject:v13 forKeyedSubscript:@"apps"];

  return v21;
}

- (id)appSizesDict
{
  v20 = *MEMORY[0x277D85DE8];
  apps = [(STStorageAppsMonitor *)self apps];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(apps, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = apps;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        appSize = [v9 appSize];
        userTotal = [appSize userTotal];

        if (userTotal)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithLongLong:userTotal];
          bundleIdentifier = [v9 bundleIdentifier];
          [v3 setObject:v12 forKey:bundleIdentifier];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)categorySizesDict
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
  [(STStorageAppsMonitor *)self addTimestampToDict:v3];
  [(STStorageAppsMonitor *)self addDeviceInfoToDict:v3];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:9];
  dictionary = [(STSizeDict *)self->_categorySizes dictionary];
  for (i = 0; i != 9; ++i)
  {
    v7 = STKeyForCategory(i);
    v8 = [dictionary objectForKey:v7];
    v9 = v8;
    if (v8 && ([v8 isZero] & 1) == 0)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "userTotal")}];
      [v4 setObject:v10 forKey:v7];
    }
  }

  [v3 setObject:v4 forKey:@"categories"];

  return v3;
}

- (void)sync
{
  [(NSOperation *)self->_initialLoadOperation waitUntilFinished];
  v3 = +[STFileProviderMonitor sharedMonitor];
  [v3 sync];

  v4 = +[STUpdateMonitor sharedMonitor];
  [v4 sync];

  v5 = +[STStorageDiskMonitor sharedMonitor];
  [v5 sync];

  v6 = +[STStorageMediaMonitor sharedMonitor];
  [v6 sync];

  v7 = objc_autoreleasePoolPush();
  [(STMSizer *)self->_appSizer startSizer];
  updateApps = [(STStorageAppsMonitor *)self updateApps];
  [updateApps waitUntilFinished];
  [(STMSizer *)self->_appSizer stopSizer];
  [(STMSizeCache *)self->_appSizer writeCacheToPref];

  objc_autoreleasePoolPop(v7);
}

- (void)_logAppSizes:(id)sizes
{
  allValues = [(NSDictionary *)self->_appsByID allValues];
  dictionary = [(STSizeDict *)self->_categorySizes dictionary];
  v6 = dispatch_get_global_queue(17, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__STStorageAppsMonitor__logAppSizes___block_invoke;
  v9[3] = &unk_279D1CEB0;
  v10 = allValues;
  v11 = dictionary;
  v7 = dictionary;
  v8 = allValues;
  dispatch_async(v6, v9);
}

void __37__STStorageAppsMonitor__logAppSizes___block_invoke(uint64_t a1)
{
  v182 = *MEMORY[0x277D85DE8];
  v175 = [*(a1 + 32) sortedArrayUsingComparator:&__block_literal_global_82];
  STLog(1, @"Categories", v2, v3, v4, v5, v6, v7, v163);
  v8 = 0;
  for (i = 0; i != 9; ++i)
  {
    v10 = STKeyForCategory(i);
    v11 = [*(a1 + 40) objectForKey:v10];
    if (v11)
    {
      v12 = MEMORY[0x277CCAB68];
      v13 = STNameForCategoryKey(v10);
      v14 = STFormattedSize([v11 userTotal]);
      v15 = [v12 stringWithFormat:@"%@: %@", v13, v14];

      if ([v11 purgeable])
      {
        v22 = STFormattedSize([v11 purgeable]);
        [v15 appendFormat:@" (+ %@ purgeable)", v22];
      }

      STLog(1, @"%@", v16, v17, v18, v19, v20, v21, v15);
      v8 = v15;
    }
  }

  STLog(1, @"Application Sizes", v23, v24, v25, v26, v27, v28, v164);
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = v175;
  v172 = [obj countByEnumeratingWithState:&v177 objects:v181 count:16];
  if (v172)
  {
    v174 = 0;
    v176 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v170 = *v178;
    do
    {
      v32 = 0;
      v33 = v8;
      do
      {
        if (*v178 != v170)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v177 + 1) + 8 * v32);
        v35 = [v34 appSize];
        v36 = [v35 userTotal];

        v37 = MEMORY[0x277CCAB68];
        v38 = STFormattedSize(v36);
        v39 = [v34 bundleIdentifier];
        v40 = [v34 appIdentifier];
        v8 = [v37 stringWithFormat:@"%@: %@ (%@)", v38, v39, v40];

        v41 = [v34 appSize];
        v42 = [v41 fixed];

        v31 += v42;
        AppendSizeInfo(v8, @"APP", v42);
        v43 = [v34 dataContainerSize];
        v44 = v43 + v174;
        AppendSizeInfo(v8, @"DAT", v43);
        v45 = [v34 coreMLDataSize];
        v174 = v44 + v45;
        AppendSizeInfo(v8, @"CML", v45);
        v46 = [v34 sharedContainerSize];
        v30 += v46;
        AppendSizeInfo(v8, @"SHR", v46);
        v47 = [v34 externalSize];
        v29 += v47;
        AppendSizeInfo(v8, @"EXT", v47);
        v48 = [v34 dataPurgeableSize];
        v49 = [v34 sharedPurgeableSize] + v48;
        v50 = v49 + [v34 assetPurgeableSize];
        AppendSizeInfo(v8, @"PRG", v50);
        v51 = [v34 externalPurgeableSize];
        v176 += v50 + v51;
        AppendSizeInfo(v8, @"EPRG", v51);
        STLog(4, @"%@", v52, v53, v54, v55, v56, v57, v8);
        ++v32;
        v33 = v8;
      }

      while (v172 != v32);
      v172 = [obj countByEnumeratingWithState:&v177 objects:v181 count:16];
    }

    while (v172);
  }

  else
  {
    v174 = 0;
    v176 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  v58 = +[STStorageApp sizeOfPluginKitContainers];
  v59 = [v58 dynamic];
  v60 = [v58 purgeable];
  v61 = MEMORY[0x277CCAB68];
  v173 = v58;
  v62 = STFormattedSize([v58 userTotal]);
  v63 = [v61 stringWithFormat:@"%@: PluginKit", v62];

  AppendSizeInfo(v63, @"DAT", v59);
  AppendSizeInfo(v63, @"PRG", v60);
  v171 = v63;
  STLog(4, @"%@", v64, v65, v66, v67, v68, v69, v63);
  v70 = STSizeOfPath(@"/var/mobile/Library/Logs");
  v71 = [v70 longLongValue];
  v72 = STSizeOfPath(@"/Library/Logs");

  v73 = [v72 longLongValue] + v71;
  v74 = STSizeOfPath(@"/var/log");

  v75 = [v74 longLongValue];
  v76 = STSizeOfPath(@"/var/logs");

  v77 = v73 + v75 + [v76 longLongValue];
  v78 = STSizeOfPath(@"/var/tmp/powerlog");

  v79 = [v78 longLongValue];
  v80 = STSizeOfPath(@"/var/wireless/Library/Logs");

  v168 = v80;
  v81 = v77 + v79 + [v80 longLongValue];
  v82 = +[STStorageCacheDelete sharedMonitor];
  v83 = [v82 cacheDeleteDict];

  v167 = v83;
  v84 = [v83 objectForKey:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v85 = [v84 objectForKey:@"com.apple.logd.cachedelete"];
  v86 = v81 + [v85 longLongValue];

  if (v86 >= 10000001)
  {
    v93 = STFormattedSize(v86);
    STLog(1, @"Logs: %@", v94, v95, v96, v97, v98, v99, v93);
  }

  v100 = v59 + v174;
  STLog(1, &stru_287C88100, v87, v88, v89, v90, v91, v92, v165);
  v101 = STFormattedSize(v31);
  STLog(1, @"Total static: %@", v102, v103, v104, v105, v106, v107, v101);

  v108 = STFormattedSize(v100);
  STLog(1, @"Total dynamic: %@", v109, v110, v111, v112, v113, v114, v108);

  v115 = STFormattedSize(v30);
  STLog(1, @"Total shared: %@", v116, v117, v118, v119, v120, v121, v115);

  v122 = STFormattedSize(v29);
  STLog(1, @"Total external: %@", v123, v124, v125, v126, v127, v128, v122);

  v129 = STFormattedSize(v60 + v176);
  STLog(1, @"Total purgeable: %@", v130, v131, v132, v133, v134, v135, v129);

  v136 = STFormattedSize(v30 + v29 + v31 + v100 - (v60 + v176));
  STLog(1, @"User footprint: %@", v137, v138, v139, v140, v141, v142, v136);

  v145 = STSizeOfSystemVolume(v143, v144);
  v146 = STFormattedSize(v145);
  STLog(1, @"System disk size: %@", v147, v148, v149, v150, v151, v152, v146);

  v153 = +[STStorageDiskMonitor sharedMonitor];
  v154 = [v153 storageSpace];
  v155 = STFormattedSize([v154 usedBytes]);
  v156 = STFormattedSize([v153 deviceSize]);
  v166 = STFormattedSize([v154 purgeableBytes]);
  STLog(1, @"%@ of %@ used on device (%@ total purgeable)", v157, v158, v159, v160, v161, v162, v155);
}

uint64_t __37__STStorageAppsMonitor__logAppSizes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 appSize];
  v7 = [v6 userTotal];
  v8 = [v5 appSize];
  v9 = [v8 userTotal];

  if (v7 <= v9)
  {
    v11 = [v5 appSize];
    v12 = [v11 userTotal];
    v13 = [v4 appSize];
    v14 = [v13 userTotal];

    if (v12 <= v14)
    {
      v15 = [v4 name];
      v16 = [v5 name];
      v10 = [v15 localizedCaseInsensitiveCompare:v16];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)logAppSizes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__STStorageAppsMonitor_logAppSizes__block_invoke;
  block[3] = &unk_279D1CE88;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __35__STStorageAppsMonitor_logAppSizes__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__logAppSizes_ object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__logAppSizes_ withObject:0 afterDelay:3.0];
}

@end