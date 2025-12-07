@interface DDSMAAutoAssetManager
- (DDSMAAutoAssetManager)init;
- (DDSMAAutoAssetManager)initWithProvider:(id)provider dataSource:(id)source;
- (id)assetsAvailableOnDeviceForQuery:(id)query;
- (id)assetsForQuery:(id)query;
- (id)autoAssetSelectorsForQuery:(id)query;
- (id)autoAssetTypeForAsserType:(id)type;
- (id)autoAssetsForQuery:(id)query;
- (void)fetchAssetUpdateStatusForQuery:(id)query callback:(id)callback;
- (void)lockAssetsForQuery:(id)query;
- (void)registerInterestInContentForQuery:(id)query;
- (void)serverDidUpdateAssetsWithType:(id)type;
- (void)unregisterInterestInContentForAssetSelector:(id)selector;
- (void)updateAssetForQuery:(id)query callback:(id)callback;
@end

@implementation DDSMAAutoAssetManager

- (DDSMAAutoAssetManager)init
{
  v3 = objc_alloc_init(DDSMAAutoAssetProvider);
  v4 = objc_alloc_init(DDSMAAutoAssetManagerDataSource);
  v5 = [(DDSMAAutoAssetManager *)self initWithProvider:v3 dataSource:v4];

  return v5;
}

- (DDSMAAutoAssetManager)initWithProvider:(id)provider dataSource:(id)source
{
  providerCopy = provider;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = DDSMAAutoAssetManager;
  v9 = [(DDSMAAutoAssetManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeStrong(&v10->_dataSource, source);
    v11 = objc_alloc_init(DDSAssetQueryResultCache);
    assetQueryResultsCache = v10->_assetQueryResultsCache;
    v10->_assetQueryResultsCache = v11;
  }

  return v10;
}

- (id)autoAssetTypeForAsserType:(id)type
{
  typeCopy = type;
  dataSource = [(DDSMAAutoAssetManager *)self dataSource];
  shouldDownloadAutoAsset = [dataSource shouldDownloadAutoAsset];

  if (shouldDownloadAutoAsset)
  {
    if ([typeCopy isEqualToString:@"com.apple.MobileAsset.LinguisticData"])
    {
      v8 = @"com.apple.MobileAsset.LinguisticDataAuto";
      goto LABEL_8;
    }
  }

  else
  {
    v9 = AutoAssetLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "AutoAsset support is disabled", v11, 2u);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)autoAssetSelectorsForQuery:(id)query
{
  queryCopy = query;
  dataSource = [(DDSMAAutoAssetManager *)self dataSource];
  shouldDownloadAutoAsset = [dataSource shouldDownloadAutoAsset];

  if (shouldDownloadAutoAsset)
  {
    dataSource2 = [(DDSMAAutoAssetManager *)self dataSource];
    supportedAutoAssetSpecifiers = [dataSource2 supportedAutoAssetSpecifiers];
    v10 = [DDSMAAutoAssetSelector createWithQuery:queryCopy supportedAssetSpecifiers:supportedAutoAssetSpecifiers];
  }

  else
  {
    v11 = AutoAssetLog(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "AutoAsset support is disabled", v13, 2u);
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)autoAssetsForQuery:(id)query
{
  v27 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(DDSMAAutoAssetManager *)self autoAssetSelectorsForQuery:queryCopy];
  if ([v6 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v18 = v6;
      v19 = queryCopy;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [(DDSMAAutoAssetManager *)self provider:v18];
          v14 = [v13 autoAssetForAssetSelector:v12];

          if (v14)
          {
            [array addObject:v14];
          }

          else
          {
            v16 = AutoAssetLog(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v26 = v12;
              _os_log_impl(&dword_1DF7C6000, v16, OS_LOG_TYPE_DEFAULT, "Auto asset object cannot be created for asset selector: %{public}@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
      v6 = v18;
      queryCopy = v19;
    }
  }

  else
  {
    v7 = AutoAssetLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = queryCopy;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset is not supported for query: %{public}@", buf, 0xCu);
    }
  }

  return array;
}

- (void)registerInterestInContentForQuery:(id)query
{
  v22 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v5 = AutoAssetLog(queryCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = queryCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Register interest in auto assets for query: %{public}@", buf, 0xCu);
  }

  [(DDSMAAutoAssetManager *)self autoAssetsForQuery:queryCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        provider = [(DDSMAAutoAssetManager *)self provider];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke;
        v13[3] = &unk_1E86C6838;
        v13[4] = v10;
        v13[5] = self;
        v14 = @"dds-add-assertion-lock";
        [provider interestInContentForAutoAsset:v10 completion:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

void __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = AutoAssetLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) assetSelector];
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Interest in auto asset: %{public}@ submitted, now lock the auto asset to download the content", buf, 0xCu);
    }

    v5 = [*(a1 + 40) provider];
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke_8;
    v7[3] = &unk_1E86C6810;
    v8 = *(a1 + 32);
    v9 = v6;
    [v5 lockAutoAsset:v8 forReason:v9 withTimeout:-1 completion:v7];
  }
}

void __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AutoAssetLog(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1 + 32) assetSelector];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Auto asset content is downloaded now unlock the auto asset: %{public}@", &v10, 0xCu);
    }

    v6 = [*(a1 + 40) provider];
    [v6 unlockAutoAsset:*(a1 + 32) forReason:*(a1 + 48)];
  }

  else if (v7)
  {
    v9 = [*(a1 + 32) assetSelector];
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Auto asset lock failed for asset: %{public}@ with error: %{public}@", &v10, 0x16u);
  }
}

- (void)unregisterInterestInContentForAssetSelector:(id)selector
{
  v10 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  v5 = AutoAssetLog(selectorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = selectorCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Eliminate interest in content for asset selector: %{public}@", &v8, 0xCu);
  }

  provider = [(DDSMAAutoAssetManager *)self provider];
  assetSelector = [selectorCopy assetSelector];
  [provider eliminateInterestForAutoAsset:assetSelector];
}

- (void)lockAssetsForQuery:(id)query
{
  v30 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v5 = AutoAssetLog(queryCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = queryCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Locking auto asset for query: %{public}@", buf, 0xCu);
  }

  [(DDSMAAutoAssetManager *)self autoAssetsForQuery:queryCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        provider = [(DDSMAAutoAssetManager *)self provider];
        v20 = 0;
        v12 = [provider lockAutoAssetSync:v10 forReason:@"dds-periodic-update-lock" error:&v20];
        v13 = v20;

        provider2 = AutoAssetLog(v14);
        v16 = os_log_type_enabled(provider2, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v16)
          {
            assetSelector = [v10 assetSelector];
            *buf = 138543362;
            v26 = assetSelector;
            _os_log_impl(&dword_1DF7C6000, provider2, OS_LOG_TYPE_DEFAULT, "Unlocking auto asset: %{public}@", buf, 0xCu);
          }

          provider2 = [(DDSMAAutoAssetManager *)self provider];
          [provider2 unlockAutoAsset:v10 forReason:@"dds-periodic-update-lock"];
        }

        else if (v16)
        {
          assetSelector2 = [v10 assetSelector];
          *buf = 138543618;
          v26 = assetSelector2;
          v27 = 2114;
          v28 = v13;
          _os_log_impl(&dword_1DF7C6000, provider2, OS_LOG_TYPE_DEFAULT, "Failed to lock the auto asset: %{public}@, with error: %{public}@", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }
}

- (id)assetsAvailableOnDeviceForQuery:(id)query
{
  v35 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v22 = objc_opt_new();
  [(DDSMAAutoAssetManager *)self autoAssetsForQuery:queryCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v24 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        provider = [(DDSMAAutoAssetManager *)self provider];
        v25 = 0;
        v9 = [provider lockAutoAssetSync:v7 forReason:@"dds-asset-for-query" error:&v25];
        v10 = v25;

        if (v9)
        {
          compatibilityVersion = [v9 compatibilityVersion];
          dataSource = [(DDSMAAutoAssetManager *)self dataSource];
          linguisticAssetCompatabilityVersion = [dataSource linguisticAssetCompatabilityVersion];

          if (compatibilityVersion == linguisticAssetCompatabilityVersion)
          {
            [v22 addObject:v9];
            provider2 = [(DDSMAAutoAssetManager *)self provider];
            [provider2 unlockAutoAsset:v7 forReason:@"dds-asset-for-query"];
          }

          else
          {
            provider2 = AutoAssetLog(v15);
            if (os_log_type_enabled(provider2, OS_LOG_TYPE_DEFAULT))
            {
              assetSelector = [v7 assetSelector];
              contentVersion = [v9 contentVersion];
              *buf = 138543618;
              v31 = assetSelector;
              v32 = 2048;
              v33 = contentVersion;
              _os_log_impl(&dword_1DF7C6000, provider2, OS_LOG_TYPE_DEFAULT, "Skip auto asset: %{public}@ with content version: %lu due to mismatch in compatibility version", buf, 0x16u);
            }
          }
        }

        else
        {
          provider2 = AutoAssetLog(v11);
          if (os_log_type_enabled(provider2, OS_LOG_TYPE_DEFAULT))
          {
            assetSelector2 = [v7 assetSelector];
            *buf = 138543618;
            v31 = assetSelector2;
            v32 = 2114;
            v33 = v10;
            _os_log_impl(&dword_1DF7C6000, provider2, OS_LOG_TYPE_DEFAULT, "Failed to lock the auto asset: %{public}@, with error: %{public}@", buf, 0x16u);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v5);
  }

  return v22;
}

- (id)assetsForQuery:(id)query
{
  v25 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  assetQueryResultsCache = [(DDSMAAutoAssetManager *)self assetQueryResultsCache];
  v6 = [assetQueryResultsCache cachedAssetsForQuery:queryCopy];

  if (v6)
  {
    cachedOnly = v6;
    v8 = cachedOnly;
  }

  else
  {
    cachedOnly = [queryCopy cachedOnly];
    if (cachedOnly)
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v8 = [(DDSMAAutoAssetManager *)self assetsAvailableOnDeviceForQuery:queryCopy];
      assetQueryResultsCache2 = [(DDSMAAutoAssetManager *)self assetQueryResultsCache];
      [assetQueryResultsCache2 cacheAssets:v8 forQuery:queryCopy];

      v11 = QueryLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [DDSAsset debuggingIDsForAssets:v8];
        v17 = 138544130;
        v18 = queryCopy;
        v19 = 2114;
        v20 = v12;
        v21 = 1024;
        v22 = 0;
        v23 = 1024;
        cachedOnly2 = [queryCopy cachedOnly];
        _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "Updated cache for query: %{public}@ assets: %{public}@ was cached: %d, cachedOnly: %d", &v17, 0x22u);
      }
    }
  }

  v13 = QueryLog(cachedOnly);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [DDSAsset debuggingIDsForAssets:v8];
    cachedOnly3 = [queryCopy cachedOnly];
    v17 = 138544130;
    v18 = queryCopy;
    v19 = 2114;
    v20 = v14;
    v21 = 1024;
    v22 = v6 != 0;
    v23 = 1024;
    cachedOnly2 = cachedOnly3;
    _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "assetsForQuery: %{public}@ final result: %{public}@ was cached: %d, cachedOnly: %d", &v17, 0x22u);
  }

  return v8;
}

- (void)serverDidUpdateAssetsWithType:(id)type
{
  v9 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = AutoAssetLog(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Updated the assets for asset type: %@", &v7, 0xCu);
  }

  assetQueryResultsCache = [(DDSMAAutoAssetManager *)self assetQueryResultsCache];
  [assetQueryResultsCache clearCacheForAssetType:typeCopy];
}

- (void)fetchAssetUpdateStatusForQuery:(id)query callback:(id)callback
{
  v33 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  callbackCopy = callback;
  v5 = AutoAssetLog(callbackCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = queryCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Fetch asset update status for query: %{public}@", &buf, 0xCu);
  }

  v12 = [(DDSMAAutoAssetManager *)self autoAssetsForQuery:queryCopy];
  if ([v12 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x2020000000;
    v32 = [v12 count];
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 1;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v12;
    v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          provider = [(DDSMAAutoAssetManager *)self provider];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke;
          v16[3] = &unk_1E86C6860;
          p_buf = &buf;
          v19 = v27;
          v16[4] = v9;
          v20 = v25;
          v17 = callbackCopy;
          [provider fetchUpdateStatusForAutoAsset:v9 completion:v16];

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v6);
    }

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, 0, 0);
  }
}

void __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  --*(*(a1[6] + 8) + 24);
  *(*(a1[7] + 8) + 24) |= a2;
  if (v5)
  {
    v7 = [v5 code];
    if (v7 != 6201)
    {
      v8 = AutoAssetLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1(a1, v6, v8);
      }

      *(*(a1[8] + 8) + 24) = 0;
    }
  }

  if (!*(*(a1[6] + 8) + 24))
  {
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      (*(a1[5] + 16))();
    }

    else
    {
      v9 = a1[5];
      v10 = DDSAssetDownloadUIError(4);
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)updateAssetForQuery:(id)query callback:(id)callback
{
  v32 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  callbackCopy = callback;
  v6 = AutoAssetLog(callbackCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = queryCopy;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Update auto asset for query: %{public}@", &buf, 0xCu);
  }

  v13 = [(DDSMAAutoAssetManager *)self autoAssetsForQuery:queryCopy];
  if ([v13 count])
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = [v13 count];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__5;
    v30 = __Block_byref_object_dispose__5;
    v31 = MEMORY[0x1E695E118];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v13;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          provider = [(DDSMAAutoAssetManager *)self provider];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54__DDSMAAutoAssetManager_updateAssetForQuery_callback___block_invoke;
          v16[3] = &unk_1E86C6888;
          v16[4] = v10;
          v16[5] = self;
          v19 = v25;
          p_buf = &buf;
          v17 = @"dds-asset-download-ui-lock";
          v18 = callbackCopy;
          [provider updateAutoAsset:v10 forReason:@"dds-asset-download-ui-lock" completion:v16];

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v25, 8);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, MEMORY[0x1E695E118], 0);
  }
}

void __54__DDSMAAutoAssetManager_updateAssetForQuery_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  --*(*(*(a1 + 64) + 8) + 24);
  v7 = AutoAssetLog(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = [*(a1 + 32) assetSelector];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset content is updated, now unlock the auto asset: %{public}@", &v14, 0xCu);
    }

    v10 = [*(a1 + 40) provider];
    [v10 unlockAutoAsset:*(a1 + 32) forReason:*(a1 + 48)];
    goto LABEL_5;
  }

  if (v8)
  {
    v12 = [*(a1 + 32) assetSelector];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset lock failed for asset: %{public}@ with error: %{public}@", &v14, 0x16u);
  }

  if (v6 && [v6 code] != 6201)
  {
    v13 = *(*(a1 + 72) + 8);
    v10 = *(v13 + 40);
    *(v13 + 40) = MEMORY[0x1E695E110];
LABEL_5:
  }

  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = DDSAssetDownloadUIError(2);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) assetSelector];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1DF7C6000, a3, OS_LOG_TYPE_ERROR, "Fetch auto asset update status failed for asset: %{public}@ with error: %{public}@", &v6, 0x16u);
}

@end