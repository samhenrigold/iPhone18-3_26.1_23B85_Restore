@interface DCAssetFetcher
+ (id)sharedFetcher;
- (id)_assetQuery;
- (id)_validateAsset:(id)asset error:(id *)error;
- (void)_fetchAssetWithContext:(id)context completionHandler:(id)handler;
- (void)_handleMissingMetadataWithContext:(id)context completion:(id)completion;
- (void)_handleSuccessForQuery:(id)query completion:(id)completion;
- (void)_queryMetadataWithContext:(id)context completion:(id)completion;
- (void)fetchPublicKeyAssetWithCompletion:(id)completion;
- (void)initiateMetadataFetchIgnoringCachesWithCompletion:(id)completion;
@end

@implementation DCAssetFetcher

+ (id)sharedFetcher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DCAssetFetcher_sharedFetcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedFetcher_onceToken != -1)
  {
    dispatch_once(&sharedFetcher_onceToken, block);
  }

  v2 = sharedFetcher_sharedFetcher;

  return v2;
}

uint64_t __31__DCAssetFetcher_sharedFetcher__block_invoke(uint64_t a1)
{
  sharedFetcher_sharedFetcher = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)fetchPublicKeyAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(DCAssetFetcherContext);
  [(DCAssetFetcherContext *)v5 setAllowCatalogRefresh:0];
  [(DCAssetFetcher *)self _fetchAssetWithContext:v5 completionHandler:completionCopy];
}

- (void)initiateMetadataFetchIgnoringCachesWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v4 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    v6 = 0;
    v7 = 47;
    do
    {
      v8 = &aLibraryCachesC_1[v5];
      if (v7 == 47)
      {
        v6 = &aLibraryCachesC_1[v5];
      }

      v7 = v8[1];
      if (!v8[1])
      {
        break;
      }
    }

    while (v5++ < 0xFFF);
    if (v6)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v11 = 136315394;
    v12 = v10;
    v13 = 1024;
    v14 = 44;
    _os_log_impl(&dword_2488FB000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initiating an out of band catalog download", &v11, 0x12u);
  }

  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.DeviceCheck" then:&__block_literal_global_1];
  completionCopy[2](completionCopy, 1, 0);
}

void __68__DCAssetFetcher_initiateMetadataFetchIgnoringCachesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v3 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0;
    v5 = 0;
    v6 = 47;
    do
    {
      v7 = &aLibraryCachesC_1[v4];
      if (v6 == 47)
      {
        v5 = &aLibraryCachesC_1[v4];
      }

      v6 = v7[1];
      if (!v7[1])
      {
        break;
      }
    }

    while (v4++ < 0xFFF);
    if (v5)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v10 = 136315650;
    v11 = v9;
    v12 = 1024;
    v13 = 47;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_2488FB000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initiated an out of band catalog download completed. { result=%ld }", &v10, 0x1Cu);
  }
}

- (void)_fetchAssetWithContext:(id)context completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v15 = 136315650;
    v16 = v14;
    v17 = 1024;
    v18 = 63;
    v19 = 2112;
    v20 = contextCopy;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to fetch asset, querying metadata. { context=%@ }", &v15, 0x1Cu);
  }

  [(DCAssetFetcher *)self _queryMetadataWithContext:contextCopy completion:handlerCopy];
}

- (void)_queryMetadataWithContext:(id)context completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }

      v13 = v9++ >= 0xFFF;
    }

    while (!v13);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v24 = 136315650;
    v25 = v14;
    v26 = 1024;
    v27 = 68;
    v28 = 2112;
    v29 = contextCopy;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetching asset. { context=%@ }", &v24, 0x1Cu);
  }

  _assetQuery = [(DCAssetFetcher *)self _assetQuery];
  queryMetaDataSync = [_assetQuery queryMetaDataSync];
  if (([contextCopy ignoreCachedMetadata] & 1) != 0 || queryMetaDataSync == 2)
  {
    [(DCAssetFetcher *)self _handleMissingMetadataWithContext:contextCopy completion:completionCopy];
  }

  else if (queryMetaDataSync)
  {
    if (DCInternalLogSystem_onceToken_1 != -1)
    {
      [DCAssetFetcher _queryMetadataWithContext:completion:];
    }

    v17 = DCInternalLogSystem_log_1;
    if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v19 = 0;
      v20 = 47;
      do
      {
        v21 = &aLibraryCachesC_1[v18];
        if (v20 == 47)
        {
          v19 = &aLibraryCachesC_1[v18];
        }

        v20 = v21[1];
        if (!v21[1])
        {
          break;
        }

        v13 = v18++ >= 0xFFF;
      }

      while (!v13);
      if (v19)
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
      }

      v24 = 136315650;
      v25 = v22;
      v26 = 1024;
      v27 = 81;
      v28 = 2048;
      v29 = queryMetaDataSync;
      _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to query metadata. { result=%ld }", &v24, 0x1Cu);
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3000 userInfo:0];
    completionCopy[2](completionCopy, 0, v23);
  }

  else
  {
    [(DCAssetFetcher *)self _handleSuccessForQuery:_assetQuery completion:completionCopy];
  }
}

- (id)_assetQuery
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.DeviceCheck"];

  return v2;
}

- (void)_handleMissingMetadataWithContext:(id)context completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }

      v13 = v9++ >= 0xFFF;
    }

    while (!v13);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    *buf = 136315394;
    v33 = v14;
    v34 = 1024;
    v35 = 92;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Query sync result indicated missing asset catalog.", buf, 0x12u);
  }

  if ([contextCopy allowCatalogRefresh])
  {
    [contextCopy setAllowCatalogRefresh:0];
    [contextCopy setIgnoreCachedMetadata:0];
    if (DCInternalLogSystem_onceToken_1 != -1)
    {
      [DCAssetFetcher _queryMetadataWithContext:completion:];
    }

    v15 = DCInternalLogSystem_log_1;
    if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v17 = 0;
      v18 = 47;
      do
      {
        v19 = &aLibraryCachesC_1[v16];
        if (v18 == 47)
        {
          v17 = &aLibraryCachesC_1[v16];
        }

        v18 = v19[1];
        if (!v19[1])
        {
          break;
        }

        v13 = v16++ >= 0xFFF;
      }

      while (!v13);
      if (v17)
      {
        v20 = v17 + 1;
      }

      else
      {
        v20 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
      }

      *buf = 136315394;
      v33 = v20;
      v34 = 1024;
      v35 = 100;
      _os_log_impl(&dword_2488FB000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to download catalog.", buf, 0x12u);
    }

    v21 = MEMORY[0x277D289C0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __63__DCAssetFetcher__handleMissingMetadataWithContext_completion___block_invoke;
    v29[3] = &unk_278F59C88;
    v31 = completionCopy;
    v29[4] = self;
    v30 = contextCopy;
    [v21 startCatalogDownload:@"com.apple.MobileAsset.DeviceCheck" then:v29];

    v22 = v31;
  }

  else
  {
    if (DCInternalLogSystem_onceToken_1 != -1)
    {
      [DCAssetFetcher _queryMetadataWithContext:completion:];
    }

    v23 = DCInternalLogSystem_log_1;
    if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_ERROR))
    {
      v24 = 0;
      v25 = 0;
      v26 = 47;
      do
      {
        v27 = &aLibraryCachesC_1[v24];
        if (v26 == 47)
        {
          v25 = &aLibraryCachesC_1[v24];
        }

        v26 = v27[1];
        if (!v27[1])
        {
          break;
        }

        v13 = v24++ >= 0xFFF;
      }

      while (!v13);
      if (v25)
      {
        v28 = v25 + 1;
      }

      else
      {
        v28 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
      }

      *buf = 136315394;
      v33 = v28;
      v34 = 1024;
      v35 = 110;
      _os_log_impl(&dword_2488FB000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch catalog, not allowed.", buf, 0x12u);
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3001 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v22);
  }
}

void __63__DCAssetFetcher__handleMissingMetadataWithContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v4 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    v6 = 0;
    v7 = 47;
    do
    {
      v8 = &aLibraryCachesC_1[v5];
      if (v7 == 47)
      {
        v6 = &aLibraryCachesC_1[v5];
      }

      v7 = v8[1];
      if (!v8[1])
      {
        break;
      }
    }

    while (v5++ < 0xFFF);
    if (v6)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v13 = 136315650;
    v14 = v10;
    v15 = 1024;
    v16 = 102;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_2488FB000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Downloaded catalog. { result=%ld }", &v13, 0x1Cu);
  }

  if (a2)
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3001 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    [*(a1 + 32) _queryMetadataWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_handleSuccessForQuery:(id)query completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  completionCopy = completion;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }

      v13 = v9++ >= 0xFFF;
    }

    while (!v13);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    results = [queryCopy results];
    *buf = 136315650;
    v34 = v14;
    v35 = 1024;
    v36 = 116;
    v37 = 2048;
    v38 = [results count];
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Executed query successfully. { numResults=%lu }", buf, 0x1Cu);
  }

  results2 = [queryCopy results];
  v17 = [results2 count];

  if (v17)
  {
    results3 = [queryCopy results];
    v19 = [results3 count];

    if (v19 >= 2)
    {
      if (DCInternalLogSystem_onceToken_1 != -1)
      {
        [DCAssetFetcher _queryMetadataWithContext:completion:];
      }

      v20 = DCInternalLogSystem_log_1;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 0;
        v22 = 0;
        v23 = 47;
        do
        {
          v24 = &aLibraryCachesC_1[v21];
          if (v23 == 47)
          {
            v22 = &aLibraryCachesC_1[v21];
          }

          v23 = v24[1];
          if (!v24[1])
          {
            break;
          }

          v13 = v21++ >= 0xFFF;
        }

        while (!v13);
        if (v22)
        {
          v25 = v22 + 1;
        }

        else
        {
          v25 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
        }

        results4 = [queryCopy results];
        v27 = [results4 count];
        *buf = 136315650;
        v34 = v25;
        v35 = 1024;
        v36 = 129;
        v37 = 2048;
        v38 = v27;
        _os_log_impl(&dword_2488FB000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected result count. { numResults=%lu }", buf, 0x1Cu);
      }
    }

    results5 = [queryCopy results];
    firstObject = [results5 firstObject];

    v32 = 0;
    v30 = [(DCAssetFetcher *)self _validateAsset:firstObject error:&v32];
    v31 = v32;
    completionCopy[2](completionCopy, v30, v31);
  }

  else
  {
    firstObject = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3100 userInfo:0];
    completionCopy[2](completionCopy, 0, firstObject);
  }
}

- (id)_validateAsset:(id)asset error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v6 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    v8 = 0;
    v9 = 47;
    do
    {
      v10 = &aLibraryCachesC_1[v7];
      if (v9 == 47)
      {
        v8 = &aLibraryCachesC_1[v7];
      }

      v9 = v10[1];
      if (!v10[1])
      {
        break;
      }
    }

    while (v7++ < 0xFFF);
    if (v8)
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    state = [assetCopy state];
    attributes = [assetCopy attributes];
    v18 = 136316162;
    v19 = v12;
    v20 = 1024;
    v21 = 139;
    v22 = 2112;
    v23 = assetCopy;
    v24 = 2048;
    v25 = state;
    v26 = 2112;
    v27 = attributes;
    _os_log_impl(&dword_2488FB000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to validate asset: { asset=%@, state=%ld, attributes=%@ }", &v18, 0x30u);
  }

  v15 = [DCAsset assetWithMobileAsset:assetCopy];
  if (v15)
  {
    v16 = +[DCBGSTaskController sharedInstance];
    [v15 publicKeyRefreshInterval];
    [v16 updateTaskWithIdentifier:@"com.apple.devicecheck.notify" withRefreshInterval:?];
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3200 userInfo:0];
  }

  return v15;
}

@end