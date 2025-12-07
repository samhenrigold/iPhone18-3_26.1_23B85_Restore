@interface SYDStoreBundleMap
+ (id)disabledStoreIdentifiers;
+ (id)sharedInstance;
- (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)identifier;
- (BOOL)isStoreIdentifierUsedOnThisDevice:(id)device;
- (BOOL)shouldSyncStoreWithIdentifier:(id)identifier;
- (SYDStoreBundleMap)init;
- (id)bundleIdentifiersForStoreIdentifier:(id)identifier;
- (id)generateStoreBundleMap;
- (id)storeIdentifiersForInstalledBundles;
- (void)clearCachedStoreBundleMap;
- (void)dealloc;
- (void)generateStoreBundleMapIfNecessary;
- (void)installedAppsDidChange:(id)change;
- (void)setCloudSyncUserDefaultEnabled:(BOOL)enabled storeIdentifier:(id)identifier;
@end

@implementation SYDStoreBundleMap

- (void)generateStoreBundleMapIfNecessary
{
  queue = [(SYDStoreBundleMap *)self queue];
  dispatch_assert_queue_V2(queue);

  cachedStoreBundleMap = [(SYDStoreBundleMap *)self cachedStoreBundleMap];

  if (!cachedStoreBundleMap)
  {
    v5 = SYDGetMiscLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SYDStoreBundleMap *)v5 generateStoreBundleMapIfNecessary:v6];
    }

    generateStoreBundleMap = [(SYDStoreBundleMap *)self generateStoreBundleMap];
    [(SYDStoreBundleMap *)self setCachedStoreBundleMap:generateStoreBundleMap];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SYDStoreBundleMap sharedInstance];
  }

  v3 = sharedInstance_helper;

  return v3;
}

+ (id)disabledStoreIdentifiers
{
  if (disabledStoreIdentifiers_onceToken != -1)
  {
    +[SYDStoreBundleMap disabledStoreIdentifiers];
  }

  v3 = disabledStoreIdentifiers_disabledStoreIdentifiers;

  return v3;
}

- (id)storeIdentifiersForInstalledBundles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  queue = [(SYDStoreBundleMap *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SYDStoreBundleMap_storeIdentifiersForInstalledBundles__block_invoke;
  v6[3] = &unk_279D2F650;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__SYDStoreBundleMap_storeIdentifiersForInstalledBundles__block_invoke(uint64_t a1)
{
  [*(a1 + 32) generateStoreBundleMapIfNecessary];
  v2 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) cachedStoreBundleMap];
  v3 = [v7 allKeys];
  v4 = [v2 setWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __35__SYDStoreBundleMap_sharedInstance__block_invoke()
{
  sharedInstance_helper = objc_alloc_init(SYDStoreBundleMap);

  return MEMORY[0x2821F96F8]();
}

- (SYDStoreBundleMap)init
{
  v9.receiver = self;
  v9.super_class = SYDStoreBundleMap;
  v2 = [(SYDStoreBundleMap *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.kvs.bundle-store-map", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_installedAppsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_installedAppsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SYDStoreBundleMap;
  [(SYDStoreBundleMap *)&v4 dealloc];
}

- (BOOL)shouldSyncStoreWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(SYDStoreBundleMap *)self isStoreIdentifierUsedOnThisDevice:identifierCopy])
  {
    v5 = +[SYDTCCHelper sharedHelper];
    v6 = [v5 isUbiquityDisabledForStoreIdentifier:identifierCopy];

    if (v6)
    {
      v7 = SYDGetConnectionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SYDStoreBundleMap shouldSyncStoreWithIdentifier:];
      }
    }

    else
    {
      if ([(SYDStoreBundleMap *)self isCloudSyncUserDefaultEnabledForStoreIdentifier:identifierCopy])
      {
        v8 = 1;
        goto LABEL_8;
      }

      v7 = SYDGetConnectionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SYDStoreBundleMap shouldSyncStoreWithIdentifier:];
      }
    }
  }

  else
  {
    v7 = SYDGetConnectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDStoreBundleMap shouldSyncStoreWithIdentifier:];
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  queue = [(SYDStoreBundleMap *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke;
  v9[3] = &unk_279D2F5B0;
  v10 = identifierCopy;
  selfCopy = self;
  v12 = &v14;
  v13 = a2;
  v7 = identifierCopy;
  dispatch_sync(queue, v9);

  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return self;
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (![*(a1 + 32) length])
  {
    __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_1(a1);
  }

  v3 = [@"com.apple.kvs.disable-sync" stringByAppendingString:*v2];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:v3];

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_3(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_2(v2, v6, v13, v14, v15, v16, v17, v18);
    }
  }
}

- (void)setCloudSyncUserDefaultEnabled:(BOOL)enabled storeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(SYDStoreBundleMap *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke;
  v10[3] = &unk_279D2F5D8;
  selfCopy = self;
  v13 = a2;
  v11 = identifierCopy;
  enabledCopy = enabled;
  v9 = identifierCopy;
  dispatch_sync(queue, v10);
}

void __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) length])
  {
    __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke_cold_1(a1);
  }

  v2 = [@"com.apple.kvs.disable-sync" stringByAppendingString:*(a1 + 32)];
  v3 = *(a1 + 56);
  v4 = SYDGetConnectionLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_26C384000, v4, OS_LOG_TYPE_INFO, "Enabling cloud sync for store <(%@)>", &v9, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 removeObjectForKey:v2];
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_26C384000, v4, OS_LOG_TYPE_INFO, "Disabling cloud sync for store <(%@)>", &v9, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 setBool:1 forKey:v2];
  }
}

void __45__SYDStoreBundleMap_disabledStoreIdentifiers__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v0 = [v2 copy];
  v1 = disabledStoreIdentifiers_disabledStoreIdentifiers;
  disabledStoreIdentifiers_disabledStoreIdentifiers = v0;
}

- (BOOL)isStoreIdentifierUsedOnThisDevice:(id)device
{
  deviceCopy = device;
  disabledStoreIdentifiers = [objc_opt_class() disabledStoreIdentifiers];
  v6 = [disabledStoreIdentifiers containsObject:deviceCopy];

  if (v6)
  {
    v7 = SYDGetConnectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDStoreBundleMap isStoreIdentifierUsedOnThisDevice:];
    }

    v8 = 0;
  }

  else
  {
    storeIdentifiersForInstalledBundles = [(SYDStoreBundleMap *)self storeIdentifiersForInstalledBundles];
    v10 = [storeIdentifiersForInstalledBundles containsObject:deviceCopy];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = [deviceCopy hasPrefix:@"com.apple."];
    }
  }

  return v8;
}

- (id)bundleIdentifiersForStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(SYDStoreBundleMap *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SYDStoreBundleMap_bundleIdentifiersForStoreIdentifier___block_invoke;
  block[3] = &unk_279D2F600;
  block[4] = self;
  v12 = &v13;
  v6 = identifierCopy;
  v11 = v6;
  dispatch_sync(queue, block);

  if ([v14[5] count])
  {
    v7 = SYDGetMiscLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDStoreBundleMap bundleIdentifiersForStoreIdentifier:];
    }
  }

  else
  {
    v7 = SYDGetMiscLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDStoreBundleMap bundleIdentifiersForStoreIdentifier:];
    }
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__SYDStoreBundleMap_bundleIdentifiersForStoreIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) generateStoreBundleMapIfNecessary];
  v5 = [*(a1 + 32) cachedStoreBundleMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)clearCachedStoreBundleMap
{
  queue = [(SYDStoreBundleMap *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SYDStoreBundleMap_clearCachedStoreBundleMap__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __46__SYDStoreBundleMap_clearCachedStoreBundleMap__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedStoreBundleMap];

  if (v2)
  {
    v3 = SYDGetMiscLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __46__SYDStoreBundleMap_clearCachedStoreBundleMap__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [*(a1 + 32) setCachedStoreBundleMap:0];
  }
}

- (id)generateStoreBundleMap
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(SYDStoreBundleMap *)v2 generateStoreBundleMap:v3];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v38 = v60 = 0u;
  v39 = v11;
  v69[0] = v11;
  v69[1] = v38;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v42 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v42)
  {
    v41 = *v58;
    do
    {
      v12 = 0;
      do
      {
        if (*v58 != v41)
        {
          v13 = v12;
          objc_enumerationMutation(obj);
          v12 = v13;
        }

        v43 = v12;
        v14 = *(*(&v57 + 1) + 8 * v12);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v46 = v14;
        v15 = [v46 countByEnumeratingWithState:&v53 objects:v68 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v54;
          v44 = *v54;
          do
          {
            v18 = 0;
            v45 = v16;
            do
            {
              if (*v54 != v17)
              {
                objc_enumerationMutation(v46);
              }

              v19 = *(*(&v53 + 1) + 8 * v18);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                effectiveBundleIdentifier = [v19 effectiveBundleIdentifier];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v34 = SYDGetMiscLog();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v63 = v19;
                    _os_log_debug_impl(&dword_26C384000, v34, OS_LOG_TYPE_DEBUG, "LSBundleRecord did not map to an effectiveBundleIdentifier or contain one: %@", buf, 0xCu);
                  }

                  goto LABEL_39;
                }

                effectiveBundleIdentifier = [v19 bundleIdentifier];
              }

              v21 = effectiveBundleIdentifier;
              if (effectiveBundleIdentifier)
              {
                v22 = SYDGetMiscLog();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v63 = v21;
                  _os_log_debug_impl(&dword_26C384000, v22, OS_LOG_TYPE_DEBUG, "Checking if bundle identifier: %@ is entitled for KVS", buf, 0xCu);
                }

                v23 = [objc_alloc(MEMORY[0x277D6B878]) initWithBundleRecord:v19];
                storeIdentifiers = [v23 storeIdentifiers];
                if ([storeIdentifiers count])
                {
                  v48 = v18;
                  v25 = SYDGetMiscLog();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    v35 = [storeIdentifiers count];
                    *buf = 134218498;
                    v63 = v35;
                    v64 = 2112;
                    v65 = v21;
                    v66 = 2112;
                    v67 = storeIdentifiers;
                    _os_log_debug_impl(&dword_26C384000, v25, OS_LOG_TYPE_DEBUG, "Found %ld store identifiers for bundle identifier: %@ %@ ", buf, 0x20u);
                  }

                  v51 = 0u;
                  v52 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  v47 = storeIdentifiers;
                  v26 = storeIdentifiers;
                  v27 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *v50;
                    do
                    {
                      for (i = 0; i != v28; ++i)
                      {
                        if (*v50 != v29)
                        {
                          objc_enumerationMutation(v26);
                        }

                        v31 = *(*(&v49 + 1) + 8 * i);
                        v32 = [v10 objectForKeyedSubscript:v31];
                        if (!v32)
                        {
                          v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
                          [v10 setObject:v32 forKeyedSubscript:v31];
                        }

                        [v32 addObject:v21];
                        v33 = [v23 relatedApplicationsForStoreIdentifier:v31];
                        if ([v33 count])
                        {
                          [v32 addObjectsFromArray:v33];
                        }
                      }

                      v28 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
                    }

                    while (v28);
                  }

                  v17 = v44;
                  v16 = v45;
                  storeIdentifiers = v47;
                  v18 = v48;
                }

                goto LABEL_41;
              }

LABEL_39:
              v21 = SYDGetMiscLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v63 = v19;
                _os_log_debug_impl(&dword_26C384000, v21, OS_LOG_TYPE_DEBUG, "No bundle identifier found using LSBundleRecord for: %@", buf, 0xCu);
              }

LABEL_41:

              ++v18;
            }

            while (v18 != v16);
            v16 = [v46 countByEnumeratingWithState:&v53 objects:v68 count:16];
          }

          while (v16);
        }

        v12 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v42);
  }

  v36 = SYDGetMiscLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v63 = v10;
    _os_log_impl(&dword_26C384000, v36, OS_LOG_TYPE_INFO, "Generated new store bundle mapping: %@", buf, 0xCu);
  }

  return v10;
}

- (void)installedAppsDidChange:(id)change
{
  changeCopy = change;
  queue = [(SYDStoreBundleMap *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

uint64_t __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke(uint64_t a1)
{
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(a1 + 40) setCachedStoreBundleMap:0];
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"SYDStoreBundleMap.m" lineNumber:82 description:@"storeIdentifier must not be empty"];
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_26C384000, a2, a3, "Checking cloud sync status for store <(%@)> Status is enabled.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __69__SYDStoreBundleMap_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_26C384000, a2, a3, "Checking cloud sync status for store <(%@)> Status is disabled.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __68__SYDStoreBundleMap_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"SYDStoreBundleMap.m" lineNumber:98 description:@"storeIdentifier must not be empty"];
}

- (void)bundleIdentifiersForStoreIdentifier:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_26C384000, v1, OS_LOG_TYPE_DEBUG, "Found bundle identifiers for store %@: %@", v2, 0x16u);
}

void __44__SYDStoreBundleMap_installedAppsDidChange___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0(&dword_26C384000, a2, a3, "Installed apps changed. Clearing cached store bundle map. Notification=%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end