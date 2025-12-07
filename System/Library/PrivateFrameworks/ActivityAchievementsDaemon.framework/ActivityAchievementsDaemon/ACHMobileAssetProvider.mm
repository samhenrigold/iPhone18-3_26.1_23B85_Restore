@interface ACHMobileAssetProvider
- (ACHMobileAssetProvider)init;
- (ACHMobileAssetProvider)initWithMobileAssetDownloadManager:(id)manager;
- (BOOL)_assetIsInstalled:(id)installed;
- (double)_downloadDelay;
- (id)_assetsGroupedByUniqueNameAndType:(id)type;
- (id)_compatibilityVersionQueryParameters;
- (int64_t)downloadedAssetDiskUsageInBytes;
- (int64_t)purgeAllDownloadedAssets;
- (void)_downloadAssets:(id)assets withCompletion:(id)completion;
- (void)_downloadDelay;
- (void)_downloadRemoteAssets:(id)assets installedAssets:(id)installedAssets;
- (void)_downloadRemoteCatalogAndAssets;
- (void)_fetchLocalAssetsWithCompletion:(id)completion;
- (void)_getCurrentAsssetAndOlderAssetsFromAssets:(id)assets completion:(id)completion;
- (void)_processAssets:(id)assets completion:(id)completion;
- (void)_removeAssets:(id)assets;
- (void)availableAssetsWithCompletion:(id)completion;
- (void)downloadRemoteCatalog;
@end

@implementation ACHMobileAssetProvider

- (ACHMobileAssetProvider)initWithMobileAssetDownloadManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ACHMobileAssetProvider;
  v6 = [(ACHMobileAssetProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mobileAssetDownloadManager, manager);
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = [v8 initWithSuiteName:*MEMORY[0x277CE8C00]];
    nanoUserDefaults = v7->_nanoUserDefaults;
    v7->_nanoUserDefaults = v9;

    v7->_downloadDelayOverride = -1.0;
  }

  return v7;
}

- (ACHMobileAssetProvider)init
{
  v3 = objc_alloc(MEMORY[0x277CCDE00]);
  v4 = *MEMORY[0x277CE8D68];
  v5 = HKCreateSerialDispatchQueue();
  v6 = [v3 initWithMobileAssetTypeName:v4 queue:v5];

  [v6 setShouldAutoDownloadRemoteAssets:0];
  [v6 setMobileAssetDownloadCompletionHandler:&__block_literal_global_1];
  [v6 setErrorHandler:&__block_literal_global_300];
  v7 = [(ACHMobileAssetProvider *)self initWithMobileAssetDownloadManager:v6];

  return v7;
}

void __30__ACHMobileAssetProvider_init__block_invoke()
{
  v0 = ACHLogAssets();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __30__ACHMobileAssetProvider_init__block_invoke_cold_1(v0);
  }
}

void __30__ACHMobileAssetProvider_init__block_invoke_297(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ACHLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__ACHMobileAssetProvider_init__block_invoke_297_cold_1();
  }
}

- (void)availableAssetsWithCompletion:(id)completion
{
  [(ACHMobileAssetProvider *)self _fetchLocalAssetsWithCompletion:completion];

  [(ACHMobileAssetProvider *)self _downloadRemoteCatalogAndAssets];
}

- (int64_t)downloadedAssetDiskUsageInBytes
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  v4 = dispatch_semaphore_create(0);
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ACHMobileAssetProvider_downloadedAssetDiskUsageInBytes__block_invoke;
  v9[3] = &unk_278490A80;
  v9[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:1 completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __57__ACHMobileAssetProvider_downloadedAssetDiskUsageInBytes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__ACHMobileAssetProvider_downloadedAssetDiskUsageInBytes__block_invoke_cold_1();
    }
  }

  v20 = v6;
  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu local assets for CacheDelete disk usage reporting", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    v13 = *MEMORY[0x277D28920];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if ([*(a1 + 32) _assetIsInstalled:v15])
        {
          v16 = [v15 attributes];
          v17 = [v16 objectForKeyedSubscript:v13];
          v18 = [v17 longLongValue];

          v19 = ACHLogAssets();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v26 = v18;
            v27 = 2112;
            v28 = v15;
            _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "Adding %ld bytes disk usage reporting for asset %@", buf, 0x16u);
          }

          *(*(*(a1 + 48) + 8) + 24) += v18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (int64_t)purgeAllDownloadedAssets
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  v4 = dispatch_semaphore_create(0);
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke;
  v9[3] = &unk_278490A80;
  v9[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:1 completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_cold_1();
    }
  }

  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu local assets for CacheDelete purging", buf, 0xCu);
  }

  v21 = v6;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = *MEMORY[0x277D28920];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([*(a1 + 32) _assetIsInstalled:v15])
        {
          v16 = [v15 attributes];
          v17 = [v16 objectForKeyedSubscript:v13];
          v18 = [v17 longLongValue];

          v19 = ACHLogAssets();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = v15;
            v30 = 2048;
            v31 = v18;
            _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "Purging asset (%@) to reclaim %ld bytes of disk usage.", buf, 0x16u);
          }

          *(*(*(a1 + 48) + 8) + 24) += v18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v11);
  }

  v20 = [*(a1 + 32) mobileAssetDownloadManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_302;
  v22[3] = &unk_278490AA8;
  v23 = *(a1 + 40);
  [v20 removeMobileAssets:v9 completion:v22];
}

void __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_302(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = ACHLogAssets();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Successfully purged assets for CacheDelete", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_302_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_assetIsInstalled:(id)installed
{
  installedCopy = installed;
  v4 = [installedCopy state] == 2 || objc_msgSend(installedCopy, "state") == 3 || objc_msgSend(installedCopy, "state") == 4;

  return v4;
}

- (void)_downloadRemoteCatalogAndAssets
{
  [(ACHMobileAssetProvider *)self _downloadDelay];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACHMobileAssetProvider__downloadRemoteCatalogAndAssets__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (double)_downloadDelay
{
  v3 = arc4random_uniform(0xE10u);
  v4 = [(NSUserDefaults *)self->_nanoUserDefaults objectForKey:@"MobileAssetDownloadDelayOverride"];

  if (v4)
  {
    [(NSUserDefaults *)self->_nanoUserDefaults doubleForKey:@"MobileAssetDownloadDelayOverride"];
    downloadDelayOverride = v5;
  }

  else if (self->_downloadDelayOverride >= 0.0)
  {
    downloadDelayOverride = self->_downloadDelayOverride;
  }

  else
  {
    downloadDelayOverride = (v3 + 1);
  }

  v7 = ACHLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACHMobileAssetProvider *)v7 _downloadDelay];
  }

  return downloadDelayOverride;
}

- (void)_fetchLocalAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke;
  v8[3] = &unk_278490AF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:1 completion:v8];
}

void __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke_cold_1();
    }
  }

  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu local assets", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    [v9 addObjectsFromArray:v5];
  }

  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke_306;
  v11[3] = &unk_278490AD0;
  v11[4] = v10;
  v12 = *(a1 + 40);
  [v10 _processAssets:v9 completion:v11];
}

void __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke_306(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ACHLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    v12 = [v9 count];
    v13 = 2048;
    v14 = [v7 count];
    v15 = 2048;
    v16 = [v8 count];
    _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "%lu assets are installed, %lu assets are not downloaded, removing %lu old assets", &v11, 0x20u);
  }

  [*(a1 + 32) _removeAssets:v8];
  (*(*(a1 + 40) + 16))();
}

- (void)downloadRemoteCatalog
{
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  objc_initWeak(&location, self);
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke;
  v5[3] = &unk_278490B48;
  objc_copyWeak(&v6, &location);
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:0 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_cold_1();
    }
  }

  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu remote assets", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    [v9 addObjectsFromArray:v5];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_308;
  v11[3] = &unk_278490B20;
  objc_copyWeak(&v12, (a1 + 32));
  [WeakRetained _processAssets:v9 completion:v11];

  objc_destroyWeak(&v12);
}

void __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_308(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ACHLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v14 = [v7 count];
    v15 = 2048;
    v16 = [v8 count];
    v17 = 2048;
    v18 = [v9 count];
    _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Downloading %lu assets, removing %lu assets, %lu assets already installed", &v13, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeAssets:v8];

  if ([v7 count])
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    [v12 _downloadRemoteAssets:v7 installedAssets:v9];
  }

  else
  {
    v12 = ACHLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_308_cold_1(v12);
    }
  }
}

- (void)_downloadRemoteAssets:(id)assets installedAssets:(id)installedAssets
{
  assetsCopy = assets;
  installedAssetsCopy = installedAssets;
  [(ACHMobileAssetProvider *)self _downloadDelay];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  v10 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke;
  block[3] = &unk_278490B98;
  block[4] = self;
  v14 = assetsCopy;
  v15 = installedAssetsCopy;
  v11 = installedAssetsCopy;
  v12 = assetsCopy;
  dispatch_after(v9, v10, block);
}

void __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2;
  v3[3] = &unk_278490B70;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _downloadAssets:v2 withCompletion:v3];
}

void __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) remoteDownloadCompleteCompletion];

  if (v7)
  {
    v8 = [*(a1 + 32) remoteDownloadCompleteCompletion];
    v8[2]();
  }

  v9 = ACHLogAssets();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2_cold_2(a1, v5);
  }
}

- (void)_downloadAssets:(id)assets withCompletion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  if ([assetsCopy count])
  {
    mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke;
    v10[3] = &unk_278490BC0;
    v11 = completionCopy;
    [mobileAssetDownloadManager downloadMobileAssets:assetsCopy completion:v10];
  }

  else
  {
    v9 = ACHLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACHMobileAssetProvider _downloadAssets:v9 withCompletion:?];
    }

    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
  }
}

void __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ACHLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke_cold_1(v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_removeAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
    [mobileAssetDownloadManager removeMobileAssets:assetsCopy completion:&__block_literal_global_310];
  }
}

void __40__ACHMobileAssetProvider__removeAssets___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = ACHLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__ACHMobileAssetProvider__removeAssets___block_invoke_cold_1();
    }
  }
}

- (void)_processAssets:(id)assets completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  completionCopy = completion;
  selfCopy = self;
  v22 = [(ACHMobileAssetProvider *)self _assetsGroupedByUniqueNameAndType:assetsCopy];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v22 allKeys];
  v23 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v23)
  {
    v18 = *v42;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [v22 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * i)];
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__0;
        v39 = __Block_byref_object_dispose__0;
        v40 = 0;
        v29 = 0;
        v30 = &v29;
        v31 = 0x3032000000;
        v32 = __Block_byref_object_copy__0;
        v33 = __Block_byref_object_dispose__0;
        v34 = 0;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __52__ACHMobileAssetProvider__processAssets_completion___block_invoke;
        v28[3] = &unk_278490C08;
        v28[4] = &v35;
        v28[5] = &v29;
        [(ACHMobileAssetProvider *)selfCopy _getCurrentAsssetAndOlderAssetsFromAssets:v8 completion:v28];
        if ([v36[5] state] == 2)
        {
          v9 = v20;
        }

        else
        {
          v9 = v21;
        }

        [v9 addObject:v36[5]];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v30[5];
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v45 count:16];
        if (v11)
        {
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              if ([v14 state] == 2)
              {
                [v6 addObject:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v24 objects:v45 count:16];
          }

          while (v11);
        }

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v35, 8);
      }

      v23 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v23);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v21, v6, v20);
  }
}

void __52__ACHMobileAssetProvider__processAssets_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_assetsGroupedByUniqueNameAndType:(id)type
{
  v25 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(typeCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = typeCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v21;
    v7 = *MEMORY[0x277CE8D80];
    v8 = *MEMORY[0x277CE8D70];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        attributes = [v10 attributes];
        v12 = [attributes objectForKeyedSubscript:v7];

        attributes2 = [v10 attributes];
        v14 = [attributes2 objectForKeyedSubscript:v8];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v12, v14];
        v16 = [v4 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v16 forKeyedSubscript:v15];
        }

        [v16 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_getCurrentAsssetAndOlderAssetsFromAssets:(id)assets completion:(id)completion
{
  completionCopy = completion;
  assetsCopy = assets;
  v6 = [assetsCopy sortedArrayUsingComparator:&__block_literal_global_319];
  v7 = [MEMORY[0x277CBEB58] setWithArray:assetsCopy];

  lastObject = [v6 lastObject];
  if (lastObject)
  {
    [v7 removeObject:lastObject];
  }

  if (completionCopy)
  {
    allObjects = [v7 allObjects];
    completionCopy[2](completionCopy, lastObject, allObjects);
  }
}

uint64_t __79__ACHMobileAssetProvider__getCurrentAsssetAndOlderAssetsFromAssets_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 attributes];
  v7 = *MEMORY[0x277D288E8];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D288E8]];
  v9 = [v8 integerValue];

  v10 = [v4 attributes];
  v11 = [v10 objectForKeyedSubscript:v7];
  v12 = [v11 integerValue];

  v13 = [v5 attributes];
  v14 = *MEMORY[0x277D28900];
  v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D28900]];
  v16 = [v15 integerValue];

  v17 = [v4 attributes];
  v18 = [v17 objectForKeyedSubscript:v14];
  v19 = [v18 integerValue];

  v20 = [v5 attributes];

  v21 = *MEMORY[0x277D28918];
  v22 = [v20 objectForKeyedSubscript:*MEMORY[0x277D28918]];
  v23 = [v22 integerValue];

  v24 = [v4 attributes];

  v25 = [v24 objectForKeyedSubscript:v21];
  v26 = [v25 integerValue];

  if (v9 < v12)
  {
    return -1;
  }

  if (v9 > v12)
  {
    return 1;
  }

  if (v16 < v19)
  {
    return -1;
  }

  if (v16 > v19)
  {
    return 1;
  }

  if (v23 < v26)
  {
    return -1;
  }

  return v23 > v26;
}

- (id)_compatibilityVersionQueryParameters
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  for (i = 3; i != 9; ++i)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    stringValue = [v4 stringValue];
    [v2 addObject:stringValue];
  }

  v8 = *MEMORY[0x277D288E8];
  v9[0] = v2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (void)_downloadDelay
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_221DDC000, log, OS_LOG_TYPE_DEBUG, "Mobile Assets download delay is %f", &v2, 0xCu);
}

void __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  *v9 = 134218240;
  *&v9[4] = [*(a1 + 40) count];
  *&v9[12] = 2048;
  *&v9[14] = [a2 count];
  OUTLINED_FUNCTION_2(&dword_221DDC000, v3, v4, "Combining installed assets count %lu with downloaded assets count: %lu", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_221DDC000, v1, v2, "Received downloaded asset count %lu, error: %@", v3, v4, v5, v6);
}

@end