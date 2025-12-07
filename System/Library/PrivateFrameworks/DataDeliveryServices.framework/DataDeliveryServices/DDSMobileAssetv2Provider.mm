@interface DDSMobileAssetv2Provider
+ (id)latestAssetsOnlyFromAssets:(id)assets;
+ (id)latestBetweenAssetA:(id)a AssetB:(id)b;
+ (id)platformVersion;
+ (void)platformVersion;
- (BOOL)shouldMatchAttributeValue:(id)value givenValue:(id)givenValue;
- (DDSMobileAssetv2Provider)init;
- (DDSMobileAssetv2Provider)initWithDataSource:(id)source;
- (id)allContentItemsMatchingQuery:(id)query error:(id *)error;
- (id)assetsForQuery:(id)query errorPtr:(id *)ptr;
- (id)assetsInCatalogForQuery:(id)query errorPtr:(id *)ptr;
- (id)contentItemsFromAssets:(id)assets matchingFilter:(id)filter;
- (id)downloadOptionsForCatalogWithType:(id)type discretionaryDownload:(BOOL)download;
- (id)downloadOptionsForPolicy:(id)policy discretionaryDownload:(BOOL)download;
- (id)updatableAssetsForAssertion:(id)assertion;
- (int64_t)compatabilityVersionForAssetType:(id)type;
- (void)beginDownloadForAssertion:(id)assertion discretionaryDownload:(BOOL)download handler:(id)handler;
- (void)beginDownloadForAssertions:(id)assertions discretionaryDownload:(BOOL)download;
- (void)beginDownloadForAssets:(id)assets withPolicy:(id)policy discretionaryDownload:(BOOL)download error:(id *)error handler:(id)handler;
- (void)didChangeDownloadState:(unint64_t)state forAsset:(id)asset;
- (void)didCompleteDownloadForAssertion:(id)assertion error:(id)error;
- (void)didUpdateCatalogWithAssetType:(id)type error:(id)error;
- (void)removeAssets:(id)assets;
- (void)removeAssetsForAssertions:(id)assertions;
- (void)removeOldAssetsForAssertions:(id)assertions;
- (void)serverDidUpdateAssetsWithType:(id)type;
- (void)setCompatabilityVersion:(int64_t)version forAssetType:(id)type;
- (void)startCatalogDownloadForAssetType:(id)type withDownloadOptions:(id)options withCompletion:(id)completion;
- (void)startDownloadForAsset:(id)asset withOptions:(id)options progress:(id)progress handler:(id)handler;
- (void)updateCatalogForAssetType:(id)type discretionaryDownload:(BOOL)download withCompletion:(id)completion;
@end

@implementation DDSMobileAssetv2Provider

- (DDSMobileAssetv2Provider)init
{
  v3 = objc_alloc_init(DDSMobileAssetv2ProviderDataSource);
  v4 = [(DDSMobileAssetv2Provider *)self initWithDataSource:v3];

  return v4;
}

- (DDSMobileAssetv2Provider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = DDSMobileAssetv2Provider;
  v6 = [(DDSMobileAssetv2Provider *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(DDSAssetQueryResultCache);
    assetQueryResultsCache = v6->_assetQueryResultsCache;
    v6->_assetQueryResultsCache = v7;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    downloadStateByAssetID = v6->_downloadStateByAssetID;
    v6->_downloadStateByAssetID = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    compatibilityVersionByAssetType = v6->_compatibilityVersionByAssetType;
    v6->_compatibilityVersionByAssetType = dictionary2;

    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v6;
}

- (int64_t)compatabilityVersionForAssetType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"com.apple.MobileAsset.LinguisticData"])
  {
    dataSource = [(DDSMobileAssetv2Provider *)self dataSource];
    linguisticAssetCompatabilityVersion = [dataSource linguisticAssetCompatabilityVersion];
LABEL_7:
    v9 = linguisticAssetCompatabilityVersion;
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"com.apple.MobileAsset.MecabraDictionaryRapidUpdates"])
  {
    dataSource = [(DDSMobileAssetv2Provider *)self dataSource];
    linguisticAssetCompatabilityVersion = [dataSource mecabraDictionaryRapidUpdatesAssetCompatabilityVersion];
    goto LABEL_7;
  }

  os_unfair_lock_lock(&self->_lock);
  compatibilityVersionByAssetType = [(DDSMobileAssetv2Provider *)self compatibilityVersionByAssetType];
  dataSource = [compatibilityVersionByAssetType objectForKey:typeCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (dataSource)
  {
    linguisticAssetCompatabilityVersion = [dataSource integerValue];
    goto LABEL_7;
  }

  v11 = QueryLog(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [DDSMobileAssetv2Provider compatabilityVersionForAssetType:];
  }

  v9 = -1;
LABEL_8:

  return v9;
}

- (void)setCompatabilityVersion:(int64_t)version forAssetType:(id)type
{
  v6 = MEMORY[0x1E696AD98];
  typeCopy = type;
  v9 = [v6 numberWithInteger:version];
  os_unfair_lock_lock(&self->_lock);
  compatibilityVersionByAssetType = [(DDSMobileAssetv2Provider *)self compatibilityVersionByAssetType];
  [compatibilityVersionByAssetType setObject:v9 forKeyedSubscript:typeCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)contentItemsFromAssets:(id)assets matchingFilter:(id)filter
{
  v24 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  filterCopy = filter;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = assetsCopy;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        attributes = [v12 attributes];
        v14 = [attributes objectForKeyedSubscript:@"Contents"];
        filters = [filterCopy filters];
        v16 = [DDSContentItemMatcher assetContentItemsMatching:filters contentItems:v14 parentAsset:v12];

        [v7 addObjectsFromArray:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)allContentItemsMatchingQuery:(id)query error:(id *)error
{
  v6 = [(DDSMobileAssetv2Provider *)self assetsForQuery:query errorPtr:?];
  v7 = v6;
  if (*error)
  {
    v8 = QueryLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DDSMobileAssetv2Provider *)error allContentItemsMatchingQuery:v8 error:v9, v10, v11, v12, v13, v14];
    }

    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v15 = [(DDSMobileAssetv2Provider *)self contentItemsFromAssets:v6 matchingFilter:0];
  }

  return v15;
}

- (id)assetsForQuery:(id)query errorPtr:(id *)ptr
{
  v23 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  assetQueryResultsCache = [(DDSMobileAssetv2Provider *)self assetQueryResultsCache];
  v8 = [assetQueryResultsCache cachedAssetsForQuery:queryCopy];

  if (v8)
  {
    cachedOnly = v8;
    v10 = cachedOnly;
  }

  else
  {
    cachedOnly = [queryCopy cachedOnly];
    if (cachedOnly)
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v10 = [(DDSMobileAssetv2Provider *)self assetsInCatalogForQuery:queryCopy errorPtr:ptr];
      assetQueryResultsCache2 = [(DDSMobileAssetv2Provider *)self assetQueryResultsCache];
      [assetQueryResultsCache2 cacheAssets:v10 forQuery:queryCopy];
    }
  }

  v12 = QueryLog(cachedOnly);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [DDSAsset debuggingIDsForAssets:v10];
    v15 = 138544130;
    v16 = queryCopy;
    v17 = 2114;
    v18 = v13;
    v19 = 1024;
    v20 = v8 != 0;
    v21 = 1024;
    cachedOnly2 = [queryCopy cachedOnly];
    _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "assetsForQuery: %{public}@ final result: %{public}@ was cached: %d, cachedOnly: %d", &v15, 0x22u);
  }

  return v10;
}

- (id)assetsInCatalogForQuery:(id)query errorPtr:(id *)ptr
{
  v73 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dataSource = [(DDSMobileAssetv2Provider *)self dataSource];
  assetType = [queryCopy assetType];
  v8 = [(DDSMobileAssetv2Provider *)self compatabilityVersionForAssetType:assetType];
  selfCopy = self;
  platformVersion = [objc_opt_class() platformVersion];
  v11 = [dataSource maAssetQueryForDDSAssetQuery:queryCopy compatabilityVersion:v8 platformVersion:platformVersion internalInstall:{DDS_IS_INTERNAL_INSTALL(platformVersion, v10)}];

  [v11 returnTypes:2];
  v47 = v11;
  queryMetaDataSync = [v11 queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v13 = QueryLog(queryMetaDataSync);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
    }
  }

  v14 = QueryLog(queryMetaDataSync);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
  }

  filter = [queryCopy filter];
  filters = [filter filters];
  v17 = [filters objectForKeyedSubscript:?];
  allObjects = [v17 allObjects];

  v20 = QueryLog(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [v47 results];
  v53 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v53)
  {
    v22 = *v64;
    v50 = allObjects;
    v51 = queryCopy;
    v48 = *v64;
    v49 = v21;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v64 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v63 + 1) + 8 * i);
        if (allObjects)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
          }

          v54 = v24;
          v55 = i;
          attributes = [v24 attributes];
          v26 = [attributes objectForKeyedSubscript:@"AssetRegion"];

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v56 = allObjects;
          v27 = [v56 countByEnumeratingWithState:&v59 objects:v71 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = 0;
            v58 = *v60;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v60 != v58)
                {
                  objc_enumerationMutation(v56);
                }

                v31 = *(*(&v59 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
                }

                v32 = [v31 objectForKeyedSubscript:@"Country"];
                v33 = [v26 objectForKeyedSubscript:@"Country"];
                v34 = [(DDSMobileAssetv2Provider *)selfCopy shouldMatchAttributeValue:v32 givenValue:v33];

                v35 = [v31 objectForKeyedSubscript:@"Province"];
                v36 = [v26 objectForKeyedSubscript:@"Province"];
                v37 = [(DDSMobileAssetv2Provider *)selfCopy shouldMatchAttributeValue:v35 givenValue:v36];

                v38 = [v31 objectForKeyedSubscript:@"City"];
                v39 = [v26 objectForKeyedSubscript:@"City"];
                v40 = [(DDSMobileAssetv2Provider *)selfCopy shouldMatchAttributeValue:v38 givenValue:v39];

                if (!v29 && v34)
                {
                  v29 = v37 && v40;
                }

                v42 = QueryLog(v41);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138478083;
                  v68 = v26;
                  v69 = 1024;
                  v70 = v29;
                  _os_log_debug_impl(&dword_1DF7C6000, v42, OS_LOG_TYPE_DEBUG, "Found asset region: %{private}@ didMatch: %d", buf, 0x12u);
                }
              }

              v28 = [v56 countByEnumeratingWithState:&v59 objects:v71 count:16];
            }

            while (v28);
          }

          else
          {
            v29 = 0;
          }

          queryCopy = v51;
          if (([v51 installedOnly] & 1) == 0)
          {
            v21 = v49;
            allObjects = v50;
            v22 = v48;
            v24 = v54;
            i = v55;
            if (!v29)
            {
              continue;
            }

LABEL_38:
            v43 = [[DDSMAAsset alloc] initWithMAAsset:v24];
            [v21 addObject:v43];

            continue;
          }

          v21 = v49;
          allObjects = v50;
          v22 = v48;
          v24 = v54;
          i = v55;
          if (!v29)
          {
            continue;
          }
        }

        else if (([queryCopy installedOnly] & 1) == 0)
        {
          goto LABEL_38;
        }

        if ([v24 state] == 2 || objc_msgSend(v24, "state") == 3)
        {
          goto LABEL_38;
        }
      }

      v53 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v53);
  }

  if ([queryCopy latestOnly])
  {
    v44 = [objc_opt_class() latestAssetsOnlyFromAssets:v21];
  }

  else
  {
    v44 = v21;
  }

  v45 = v44;

  return v45;
}

- (BOOL)shouldMatchAttributeValue:(id)value givenValue:(id)givenValue
{
  valueCopy = value;
  v6 = DDSObjectsAreEqualOrNil(valueCopy, givenValue);
  v7 = [valueCopy isEqualToString:&stru_1F5ABCB80];

  return (givenValue == 0) & ((valueCopy != 0) | v7) | v6 & 1;
}

- (void)beginDownloadForAssertions:(id)assertions discretionaryDownload:(BOOL)download
{
  downloadCopy = download;
  v38 = *MEMORY[0x1E69E9840];
  assertionsCopy = assertions;
  v6 = DefaultLog(assertionsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [assertionsCopy count];
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Begin download for %lu assertions", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = assertionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&buf + 1) + 40) addObject:*(*(&v27 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allObjects = [v7 allObjects];
  v12 = [allObjects countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(allObjects);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke;
        v17[3] = &unk_1E86C6370;
        v17[4] = self;
        p_buf = &buf;
        v20 = v25;
        v18 = v7;
        [(DDSMobileAssetv2Provider *)self beginDownloadForAssertion:v15 discretionaryDownload:downloadCopy handler:v17];

        ++v14;
      }

      while (v12 != v14);
      v12 = [allObjects countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&buf, 8);
}

void __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = DefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke_cold_1();
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(*(a1 + 48) + 8) + 40) removeObject:v5];
  v9 = [*(*(*(a1 + 48) + 8) + 40) count];
  if (v7)
  {
    v10 = *(*(a1 + 56) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      *(v10 + 24) = 1;
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v12 = UpdateLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke_cold_2();
  }

  if (!v9)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error updating assertions"];
      v14 = MEMORY[0x1E696ABC0];
      v15 = ErrorDomainv2;
      v19 = @"message";
      v20[0] = v13;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = [v14 errorWithDomain:v15 code:1 userInfo:v16];
    }

    else
    {
      v17 = 0;
    }

    v18 = [*(a1 + 32) delegate];
    [v18 didCompleteDownloadForAssertions:*(a1 + 40) error:v17];
  }
}

- (void)beginDownloadForAssertion:(id)assertion discretionaryDownload:(BOOL)download handler:(id)handler
{
  downloadCopy = download;
  v37 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  handlerCopy = handler;
  v10 = DefaultLog(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = assertionCopy;
    _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Begin download for assertion: %{public}@", &buf, 0xCu);
  }

  query = [assertionCopy query];
  if ([query installedOnly])
  {
  }

  else
  {
    query2 = [assertionCopy query];
    localOnly = [query2 localOnly];

    if (!localOnly)
    {
      goto LABEL_9;
    }
  }

  v15 = DefaultLog(v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [DDSMobileAssetv2Provider beginDownloadForAssertion:assertionCopy discretionaryDownload:? handler:?];
  }

LABEL_9:
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke;
  v30[3] = &unk_1E86C6398;
  v30[4] = self;
  v16 = handlerCopy;
  v31 = v16;
  v17 = MEMORY[0x1E12DF5E0](v30);
  query3 = [assertionCopy query];
  v29 = 0;
  v19 = [(DDSMobileAssetv2Provider *)self assetsInCatalogForQuery:query3 errorPtr:&v29];
  v20 = v29;

  if (v20 || (v21 = [v19 count]) == 0)
  {
    (v17)[2](v17, assertionCopy, v20);
  }

  else
  {
    v22 = DefaultLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [DDSAsset debuggingIDsForAssets:v19];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_1DF7C6000, v22, OS_LOG_TYPE_DEFAULT, "Downloading assets %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__2;
    v35 = __Block_byref_object_dispose__2;
    v36 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v19];
    policy = [assertionCopy policy];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312;
    v25[3] = &unk_1E86C63C0;
    p_buf = &buf;
    v27 = v17;
    v26 = assertionCopy;
    [(DDSMobileAssetv2Provider *)self beginDownloadForAssets:v19 withPolicy:policy discretionaryDownload:downloadCopy error:0 handler:v25];

    _Block_object_dispose(&buf, 8);
  }
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) didCompleteDownloadForAssertion:v7 error:v5];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312(uint64_t a1, void *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = DefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_1();
  }

  if ((a3 - 9) > 1)
  {
    if (a3 == 11)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v5 debuggingID];
      v11 = [v9 stringWithFormat:@"Error downloading asset: %@", v10];

      v12 = MEMORY[0x1E696ABC0];
      v13 = ErrorDomainv2;
      v16 = @"message";
      v17[0] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v15 = [v12 errorWithDomain:v13 code:1 userInfo:v14];

      (*(*(a1 + 40) + 16))();
      goto LABEL_12;
    }
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) removeObject:v5];
    v7 = [*(*(*(a1 + 48) + 8) + 40) count];
    if (v7)
    {
      v8 = DefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_2(a1 + 48);
      }
    }
  }

  if (![*(*(*(a1 + 48) + 8) + 40) count])
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_12:
}

- (void)startDownloadForAsset:(id)asset withOptions:(id)options progress:(id)progress handler:(id)handler
{
  progressCopy = progress;
  handlerCopy = handler;
  optionsCopy = options;
  maAsset = [asset maAsset];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke;
  v17[3] = &unk_1E86C63E8;
  v18 = progressCopy;
  v13 = progressCopy;
  [maAsset attachProgressCallBack:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke_2;
  v15[3] = &unk_1E86C6410;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [maAsset startDownload:optionsCopy then:v15];
}

uint64_t __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)beginDownloadForAssets:(id)assets withPolicy:(id)policy discretionaryDownload:(BOOL)download error:(id *)error handler:(id)handler
{
  downloadCopy = download;
  v28 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  policyCopy = policy;
  handlerCopy = handler;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [assetsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [(DDSMobileAssetv2Provider *)self downloadOptionsForPolicy:policyCopy discretionaryDownload:downloadCopy];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke;
        v22[3] = &unk_1E86C6438;
        v22[4] = self;
        v22[5] = v17;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2;
        v20[3] = &unk_1E86C6460;
        v20[4] = v17;
        v20[5] = self;
        v21 = handlerCopy;
        [(DDSMobileAssetv2Provider *)self startDownloadForAsset:v17 withOptions:v18 progress:v22 handler:v20];
        [(DDSMobileAssetv2Provider *)self didChangeDownloadState:1 forAsset:v17];
      }

      v14 = [assetsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }
}

void __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isStalled])
  {
    v3 = 4;
  }

  else if ([v5 totalWritten] < 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v5 totalWritten];
    if (v4 >= [v5 totalExpected])
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }
  }

  [*(a1 + 32) didChangeDownloadState:v3 forAsset:*(a1 + 40)];
}

uint64_t __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 > 22)
  {
    if (a2 == 23 || a2 == 36)
    {
      v2 = 10;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a2)
    {
      v2 = 9;
      goto LABEL_12;
    }

    if (a2 == 10)
    {
      goto LABEL_12;
    }
  }

  v4 = DefaultLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2_cold_1(a1, v2, v4);
  }

  v2 = 11;
LABEL_12:
  [*(a1 + 40) didChangeDownloadState:v2 forAsset:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), v2);
  }

  return result;
}

- (id)downloadOptionsForPolicy:(id)policy discretionaryDownload:(BOOL)download
{
  downloadCopy = download;
  v5 = MEMORY[0x1E69B1948];
  policyCopy = policy;
  v7 = objc_alloc_init(v5);
  [v7 setAllowsCellularAccess:1];
  [v7 setAllowsExpensiveAccess:0];
  downloadWithoutPower = [policyCopy downloadWithoutPower];

  [v7 setRequiresPowerPluggedIn:downloadWithoutPower ^ 1u];
  [v7 setDiscretionary:downloadCopy];

  return v7;
}

- (id)downloadOptionsForCatalogWithType:(id)type discretionaryDownload:(BOOL)download
{
  downloadCopy = download;
  v5 = objc_alloc_init(MEMORY[0x1E69B1948]);
  [v5 setAllowsCellularAccess:1];
  [v5 setAllowsExpensiveAccess:0];
  [v5 setRequiresPowerPluggedIn:0];
  [v5 setDiscretionary:downloadCopy];

  return v5;
}

- (void)startCatalogDownloadForAssetType:(id)type withDownloadOptions:(id)options withCompletion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E69B18D8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__DDSMobileAssetv2Provider_startCatalogDownloadForAssetType_withDownloadOptions_withCompletion___block_invoke;
  v10[3] = &unk_1E86C6410;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 startCatalogDownload:type options:options then:v10];
}

uint64_t __96__DDSMobileAssetv2Provider_startCatalogDownloadForAssetType_withDownloadOptions_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateCatalogForAssetType:(id)type discretionaryDownload:(BOOL)download withCompletion:(id)completion
{
  downloadCopy = download;
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  v10 = UpdateLog(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Updating catalog for asset type %{public}@", buf, 0xCu);
  }

  v11 = [(DDSMobileAssetv2Provider *)self downloadOptionsForCatalogWithType:typeCopy discretionaryDownload:downloadCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__DDSMobileAssetv2Provider_updateCatalogForAssetType_discretionaryDownload_withCompletion___block_invoke;
  v15[3] = &unk_1E86C6460;
  v16 = typeCopy;
  selfCopy = self;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = typeCopy;
  [(DDSMobileAssetv2Provider *)self startCatalogDownloadForAssetType:v13 withDownloadOptions:v11 withCompletion:v15];
  delegate = [(DDSMobileAssetv2Provider *)self delegate];
  [delegate didBeginUpdateCatalog];
}

void __91__DDSMobileAssetv2Provider_updateCatalogForAssetType_discretionaryDownload_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = UpdateLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Fail";
    if (!a2)
    {
      v5 = @"Success";
    }

    *buf = 138543618;
    v17 = v5;
    v18 = 2048;
    v19 = a2;
    _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Updated catalog result %{public}@ (result: %lu)", buf, 0x16u);
  }

  if (a2)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error updating catalog for %@: %lu", *(a1 + 32), a2];
    v7 = MEMORY[0x1E696ABC0];
    v8 = ErrorDomainv2;
    v14 = @"message";
    v15 = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:1 userInfo:v9];

    v12 = UpdateLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __91__DDSMobileAssetv2Provider_updateCatalogForAssetType_discretionaryDownload_withCompletion___block_invoke_cold_1();
    }
  }

  else
  {
    v10 = 0;
  }

  [*(a1 + 40) didUpdateCatalogWithAssetType:*(a1 + 32) error:v10];
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v10);
  }
}

+ (id)latestAssetsOnlyFromAssets:(id)assets
{
  v22 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        uniqueIdentifier = [v10 uniqueIdentifier];
        v12 = [v4 objectForKeyedSubscript:uniqueIdentifier];

        if (v12)
        {
          v13 = [v4 objectForKeyedSubscript:uniqueIdentifier];
          v14 = [objc_opt_class() latestBetweenAssetA:v13 AssetB:v10];
          [v4 setObject:v14 forKeyedSubscript:uniqueIdentifier];
        }

        else
        {
          [v4 setObject:v10 forKeyedSubscript:uniqueIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  allValues = [v4 allValues];

  return allValues;
}

+ (id)latestBetweenAssetA:(id)a AssetB:(id)b
{
  aCopy = a;
  bCopy = b;
  compatibilityVersion = [aCopy compatibilityVersion];
  compatibilityVersion2 = [bCopy compatibilityVersion];
  v9 = aCopy;
  if (compatibilityVersion <= compatibilityVersion2)
  {
    v9 = bCopy;
    if (compatibilityVersion2 <= compatibilityVersion)
    {
      contentVersion = [aCopy contentVersion];
      contentVersion2 = [bCopy contentVersion];
      if (contentVersion2 <= contentVersion)
      {
        v12 = aCopy;
      }

      else
      {
        v12 = bCopy;
      }

      if (contentVersion <= contentVersion2)
      {
        v9 = v12;
      }

      else
      {
        v9 = aCopy;
      }
    }
  }

  v13 = v9;

  return v9;
}

- (void)removeAssetsForAssertions:(id)assertions
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke;
  v3[3] = &unk_1E86C6488;
  v3[4] = self;
  [assertions enumerateObjectsUsingBlock:v3];
}

void __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 query];
  v4 = [v3 copy];

  [v4 setInstalledOnly:1];
  [v4 setLocalOnly:1];
  [v4 setLatestOnly:0];
  v5 = *(a1 + 32);
  v10 = 0;
  v6 = [v5 assetsForQuery:v4 errorPtr:&v10];
  v7 = v10;
  v8 = v7;
  if (v7)
  {
    v9 = UpdateLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) removeAssets:v6];
  }
}

- (void)removeOldAssetsForAssertions:(id)assertions
{
  v9 = *MEMORY[0x1E69E9840];
  assertionsCopy = assertions;
  v5 = UpdateLog(assertionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = assertionsCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Removing old assets for assertions: %{public}@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__DDSMobileAssetv2Provider_removeOldAssetsForAssertions___block_invoke;
  v6[3] = &unk_1E86C6488;
  v6[4] = self;
  [assertionsCopy enumerateObjectsUsingBlock:v6];
}

void __57__DDSMobileAssetv2Provider_removeOldAssetsForAssertions___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [a2 query];
  v4 = [v3 copy];

  [v4 setInstalledOnly:1];
  [v4 setLocalOnly:1];
  [v4 setLatestOnly:0];
  v5 = *(a1 + 32);
  v20 = 0;
  v6 = [v5 assetsInCatalogForQuery:v4 errorPtr:&v20];
  v7 = v20;
  v8 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v9 = UpdateLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [DDSAsset debuggingIDsForAssets:v6];
    *buf = 138543362;
    v22 = v10;
    _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "All assets being evaluated for removal: %{public}@", buf, 0xCu);
  }

  v11 = MEMORY[0x1E695DFD8];
  v12 = [objc_opt_class() latestAssetsOnlyFromAssets:v6];
  v13 = [v11 setWithArray:v12];

  v15 = UpdateLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 allObjects];
    v17 = [DDSAsset debuggingIDsForAssets:v16];
    *buf = 138543362;
    v22 = v17;
    _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "Latest assets not eligible for removal: %{public}@", buf, 0xCu);
  }

  [v8 minusSet:v13];
  v18 = *(a1 + 32);
  v19 = [v8 allObjects];
  [v18 removeAssets:v19];
}

- (void)removeAssets:(id)assets
{
  v21 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = UpdateLog(assetsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [DDSAsset debuggingIDsForAssets:assetsCopy];
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Removing assets: %{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        maAsset = [v11 maAsset];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __41__DDSMobileAssetv2Provider_removeAssets___block_invoke;
        v13[3] = &unk_1E86C64B0;
        v13[4] = v11;
        [maAsset purge:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

void __41__DDSMobileAssetv2Provider_removeAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = DefaultLog(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__DDSMobileAssetv2Provider_removeAssets___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) debuggingID];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Purged asset (%{public}@) successfully", &v7, 0xCu);
  }
}

- (void)serverDidUpdateAssetsWithType:(id)type
{
  typeCopy = type;
  assetQueryResultsCache = [(DDSMobileAssetv2Provider *)self assetQueryResultsCache];
  [assetQueryResultsCache clearCacheForAssetType:typeCopy];
}

- (void)didChangeDownloadState:(unint64_t)state forAsset:(id)asset
{
  assetCopy = asset;
  downloadStateByAssetID = [(DDSMobileAssetv2Provider *)self downloadStateByAssetID];
  uniqueIdentifier = [assetCopy uniqueIdentifier];
  v8 = [downloadStateByAssetID objectForKeyedSubscript:uniqueIdentifier];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (unsignedIntegerValue != state)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    downloadStateByAssetID2 = [(DDSMobileAssetv2Provider *)self downloadStateByAssetID];
    uniqueIdentifier2 = [assetCopy uniqueIdentifier];
    [downloadStateByAssetID2 setObject:v10 forKeyedSubscript:uniqueIdentifier2];

    if (state - 9 <= 2)
    {
      downloadStateByAssetID3 = [(DDSMobileAssetv2Provider *)self downloadStateByAssetID];
      uniqueIdentifier3 = [assetCopy uniqueIdentifier];
      [downloadStateByAssetID3 removeObjectForKey:uniqueIdentifier3];
    }

    delegate = [(DDSMobileAssetv2Provider *)self delegate];
    [delegate didChangeDownloadState:state forAsset:assetCopy];
  }
}

- (void)didCompleteDownloadForAssertion:(id)assertion error:(id)error
{
  assertionCopy = assertion;
  errorCopy = error;
  v8 = DefaultLog(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider didCompleteDownloadForAssertion:error:];
  }

  delegate = [(DDSMobileAssetv2Provider *)self delegate];
  [delegate didCompleteDownloadForAssertion:assertionCopy error:errorCopy];
}

- (void)didUpdateCatalogWithAssetType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = DefaultLog(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider didUpdateCatalogWithAssetType:error:];
  }

  delegate = [(DDSMobileAssetv2Provider *)self delegate];
  [delegate didUpdateCatalogWithAssetType:typeCopy error:errorCopy];
}

+ (id)platformVersion
{
  v2 = MGCopyAnswer();
  intValue = [v2 intValue];
  v4 = intValue;
  if (v2)
  {
    CFRelease(v2);
  }

  v5 = v4 - 1;
  if (v4 - 1) < 0xB && ((0x52Fu >> v5))
  {
    return off_1E86C64D0[v5];
  }

  v7 = DefaultLog(intValue);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[(DDSMobileAssetv2Provider *)v4];
  }

  return 0;
}

- (id)updatableAssetsForAssertion:(id)assertion
{
  assertionCopy = assertion;
  query = [assertionCopy query];
  v15 = 0;
  v6 = [(DDSMobileAssetv2Provider *)self assetsInCatalogForQuery:query errorPtr:&v15];
  v7 = v15;

  query2 = [assertionCopy query];

  v9 = [query2 copy];
  [v9 setInstalledOnly:1];
  [v9 setLocalOnly:1];
  [v9 setLatestOnly:0];
  v14 = 0;
  v10 = [(DDSMobileAssetv2Provider *)self assetsInCatalogForQuery:v9 errorPtr:&v14];
  v11 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v12 = [MEMORY[0x1E695DFA8] setWithArray:v10];
  [v11 minusSet:v12];

  return v11;
}

- (void)allContentItemsMatchingQuery:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, a2, a3, "assets query: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)assetsInCatalogForQuery:errorPtr:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [v0 results];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v2, v3, "assetsForQuery raw results: %{public}@, result value: %{public}lu", v4, v5, v6, v7);
}

- (void)assetsInCatalogForQuery:errorPtr:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v1 = [v0 filter];
  v2 = [v1 filters];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v3, v4, "Searching for regions in filters: %@, found allowed regions: %@", v5, v6, v7, v8);
}

void __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "Downloading assertions remaining: %lu", v1, 0xCu);
}

- (void)beginDownloadForAssertion:(void *)a1 discretionaryDownload:handler:.cold.1(void *a1)
{
  v1 = [a1 query];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [v0 debuggingID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v2, v3, "handling asset: %{public}@, state: %ld", v4, v5, v6, v7);
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_2(uint64_t a1)
{
  [*(*(*a1 + 8) + 40) count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v1, v2, "Remaining: %ld in set: %{public}@", v3, v4, v5, v6);
}

void __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1DF7C6000, log, OS_LOG_TYPE_ERROR, "Unexpected error downloading asset %{public}@, result: %ld", &v4, 0x16u);
}

void __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [DDSAsset debuggingIDsForAssets:v0];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __41__DDSMobileAssetv2Provider_removeAssets___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [*(v0 + 32) debuggingID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)didCompleteDownloadForAssertion:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "didCompleteDownloadForAssertion: %{public}@", v1, 0xCu);
}

- (void)didUpdateCatalogWithAssetType:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_DEBUG, "didUpdateCatalogWithAssetType for asset type: %{public}@ error: %{public}@", v2, 0x16u);
}

+ (void)platformVersion
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Unrecognized device class: %d", v2, 8u);
}

@end