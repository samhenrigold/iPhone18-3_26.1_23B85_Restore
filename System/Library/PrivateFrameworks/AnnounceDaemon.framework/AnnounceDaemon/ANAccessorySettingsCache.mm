@interface ANAccessorySettingsCache
- (ANAccessorySettingsCache)initWithAccessorySettingsDataSource:(id)source;
- (id)_fetchSettingsForAccessory:(id)accessory useCache:(BOOL)cache;
- (id)settingsForAccessory:(id)accessory;
- (void)_removeSettingsForAccessoryWithIdentifier:(id)identifier;
- (void)_updateSettings:(id)settings forAccessoryWithIdentifier:(id)identifier;
- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
@end

@implementation ANAccessorySettingsCache

- (ANAccessorySettingsCache)initWithAccessorySettingsDataSource:(id)source
{
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = ANAccessorySettingsCache;
  v6 = [(ANAccessorySettingsCache *)&v16 init];
  if (v6)
  {
    v7 = ANLogWithCategory();
    log = v6->_log;
    v6->_log = v7;

    v9 = dispatch_queue_create("com.apple.announce.settingsCache", 0);
    settingsQueue = v6->_settingsQueue;
    v6->_settingsQueue = v9;

    v11 = objc_opt_new();
    cachedAccessorySettings = v6->_cachedAccessorySettings;
    v6->_cachedAccessorySettings = v11;

    v13 = objc_opt_new();
    lastAccessorySettingsFetch = v6->_lastAccessorySettingsFetch;
    v6->_lastAccessorySettingsFetch = v13;

    objc_storeStrong(&v6->_accessorySettingsDataSource, source);
    [sourceCopy setDelegate:v6];
  }

  return v6;
}

- (id)settingsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  objc_initWeak(&location, self);
  settingsQueue = [(ANAccessorySettingsCache *)self settingsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ANAccessorySettingsCache_settingsForAccessory___block_invoke;
  block[3] = &unk_278C86750;
  objc_copyWeak(&v13, &location);
  v6 = accessoryCopy;
  selfCopy = self;
  v12 = &v15;
  v10 = v6;
  dispatch_sync(settingsQueue, block);

  v7 = [(ANAccessorySettingsCache *)self _fetchSettingsForAccessory:v6 useCache:*(v16 + 24)];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __49__ANAccessorySettingsCache_settingsForAccessory___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained lastAccessorySettingsFetch];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [MEMORY[0x277CEAB80] sharedInstance];
  v7 = [v6 numberForDefault:*MEMORY[0x277CEA808]];
  [v7 doubleValue];
  v9 = v8;

  if (v5 && ([MEMORY[0x277CBEAA8] now], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceDate:", v5), v12 = v11, v10, v12 < v9))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v13 = [*(a1 + 40) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) name];
      v15 = [*(a1 + 32) uniqueIdentifier];
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v16 = "WARNING: Using cached settings for accessory. Value may be stale. %@, %@";
LABEL_7:
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, v16, &v17, 0x16u);
    }
  }

  else
  {
    v13 = [*(a1 + 40) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) name];
      v15 = [*(a1 + 32) uniqueIdentifier];
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v16 = "Settings need refresh for accessory %@, %@";
      goto LABEL_7;
    }
  }
}

- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  sourceCopy = source;
  identifierCopy = identifier;
  settingsCopy = settings;
  objc_initWeak(&location, self);
  settingsQueue = [(ANAccessorySettingsCache *)self settingsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__ANAccessorySettingsCache_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke;
  block[3] = &unk_278C86778;
  block[4] = self;
  v15 = identifierCopy;
  v16 = settingsCopy;
  v12 = settingsCopy;
  v13 = identifierCopy;
  objc_copyWeak(&v17, &location);
  dispatch_async(settingsQueue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __117__ANAccessorySettingsCache_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Received Settings Updates for Accessory Identifier %@: %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateSettings:*(a1 + 48) forAccessoryWithIdentifier:*(a1 + 40)];
}

- (id)_fetchSettingsForAccessory:(id)accessory useCache:(BOOL)cache
{
  cacheCopy = cache;
  v57 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  settingsQueue = [(ANAccessorySettingsCache *)self settingsQueue];
  dispatch_assert_queue_not_V2(settingsQueue);

  v8 = @"Settings";
  if (cacheCopy)
  {
    v8 = @"Cached Settings";
  }

  v9 = v8;
  v10 = [(ANAccessorySettingsCache *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [accessoryCopy name];
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    *buf = 138543874;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = name;
    *&buf[22] = 2112;
    v54 = uniqueIdentifier;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "Fetching %{public}@ for Accessory %@, %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  objc_initWeak(&location, self);
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke;
  aBlock[3] = &unk_278C867F0;
  objc_copyWeak(&v43, &location);
  aBlock[4] = self;
  v14 = v9;
  v39 = v14;
  v15 = accessoryCopy;
  v40 = v15;
  v42 = buf;
  v16 = v13;
  v41 = v16;
  v17 = _Block_copy(aBlock);
  [(ANAccessorySettingsCache *)self accessorySettingsDataSource];
  if (cacheCopy)
    v18 = {;
    home = [v15 home];
    uniqueIdentifier2 = [home uniqueIdentifier];
    uniqueIdentifier3 = [v15 uniqueIdentifier];
    v52 = @"root.announce.enabled";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    [v18 fetchCachedAccessorySettingsWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:uniqueIdentifier3 keyPaths:v22 completionHandler:v17];
  }

  else
    v18 = {;
    home = [v15 home];
    uniqueIdentifier2 = [home uniqueIdentifier];
    uniqueIdentifier3 = [v15 uniqueIdentifier];
    v51 = @"root.announce.enabled";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [v18 fetchAccessorySettingsWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:uniqueIdentifier3 keyPaths:v22 completionHandler:v17];
  }

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v24 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA800]];
  [v24 doubleValue];
  v26 = v25;

  v27 = dispatch_time(0, (v26 * 1000000000.0));
  if (dispatch_group_wait(v16, v27))
  {
    v28 = [(ANAccessorySettingsCache *)self log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      name2 = [v15 name];
      uniqueIdentifier4 = [v15 uniqueIdentifier];
      *v45 = 138543874;
      v46 = v14;
      v47 = 2112;
      v48 = name2;
      v49 = 2112;
      v50 = uniqueIdentifier4;
      _os_log_error_impl(&dword_23F525000, v28, OS_LOG_TYPE_ERROR, "Timed-out waiting for Accessory %{public}@ for %@, %@", v45, 0x20u);
    }

    settingsQueue2 = [(ANAccessorySettingsCache *)self settingsQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_13;
    v34[3] = &unk_278C86818;
    objc_copyWeak(&v37, &location);
    v36 = buf;
    v35 = v15;
    dispatch_sync(settingsQueue2, v34);

    objc_destroyWeak(&v37);
  }

  v30 = *(*&buf[8] + 40);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  return v30;
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = [*(a1 + 32) log];
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_cold_1(a1, v5, v9);
    }

    v10 = [WeakRetained settingsQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_9;
    block[3] = &unk_278C867A0;
    v11 = *(a1 + 32);
    v29 = *(a1 + 64);
    block[4] = v11;
    block[5] = WeakRetained;
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    dispatch_async(v10, block);

    v12 = v27;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) name];
      v15 = [*(a1 + 48) uniqueIdentifier];
      *buf = 138544130;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ for Accessory %@, %@: %@", buf, 0x2Au);
    }

    v16 = [WeakRetained settingsQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_10;
    v21[3] = &unk_278C867C8;
    v21[4] = WeakRetained;
    v22 = v6;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v23 = v17;
    v24 = v18;
    v20 = *(a1 + 56);
    v19 = v20;
    v25 = v20;
    dispatch_async(v16, v21);

    v12 = v22;
  }
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to use locally-cached settings", v9, 2u);
  }

  v3 = [*(a1 + 40) cachedAccessorySettings];
  v4 = [*(a1 + 48) uniqueIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 copy];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_group_leave(*(a1 + 56));
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uniqueIdentifier];
  [v2 _updateSettings:v3 forAccessoryWithIdentifier:v4];

  v5 = [*(a1 + 32) cachedAccessorySettings];
  v6 = [*(a1 + 48) uniqueIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 copy];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [*(a1 + 56) lastAccessorySettingsFetch];
  v13 = [*(a1 + 48) uniqueIdentifier];
  [v12 setObject:v11 forKeyedSubscript:v13];

  v14 = *(a1 + 64);

  dispatch_group_leave(v14);
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to use locally-cached settings", v10, 2u);
  }

  v4 = [WeakRetained cachedAccessorySettings];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 copy];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)_updateSettings:(id)settings forAccessoryWithIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  settingsQueue = [(ANAccessorySettingsCache *)self settingsQueue];
  dispatch_assert_queue_V2(settingsQueue);

  cachedAccessorySettings = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
  v10 = [cachedAccessorySettings objectForKeyedSubscript:identifierCopy];

  v22 = v10;
  if (!v10)
  {
    v11 = objc_opt_new();
    cachedAccessorySettings2 = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
    [cachedAccessorySettings2 setObject:v11 forKeyedSubscript:identifierCopy];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = settingsCopy;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        cachedAccessorySettings3 = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
        v20 = [cachedAccessorySettings3 objectForKeyedSubscript:identifierCopy];
        keyPath = [v18 keyPath];
        [v20 setObject:v18 forKeyedSubscript:keyPath];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }
}

- (void)_removeSettingsForAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  settingsQueue = [(ANAccessorySettingsCache *)self settingsQueue];
  dispatch_assert_queue_V2(settingsQueue);

  cachedAccessorySettings = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
  [cachedAccessorySettings setObject:0 forKeyedSubscript:identifierCopy];
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) name];
  v8 = [*(a1 + 48) uniqueIdentifier];
  v9 = 138544130;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_23F525000, a3, OS_LOG_TYPE_ERROR, "Failed to retrieve %{public}@ for Accessory %@, %@: %@", &v9, 0x2Au);
}

@end