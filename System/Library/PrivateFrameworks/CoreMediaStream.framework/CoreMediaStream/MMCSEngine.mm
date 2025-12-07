@interface MMCSEngine
+ (id)logStringForGetItemState:(int)state;
+ (id)logStringForPutItemState:(int)state;
- (BOOL)_getFileDescriptorAndContentTypeFromItemID:(unint64_t)d outFD:(int *)fD outItemType:(id *)type outError:(id *)error;
- (BOOL)isActive;
- (MMCSEngine)initWithWorkPath:(id)path appIDHeader:(id)header dataClass:(id)class options:(id)options;
- (MMCSEngine)initWithWorkPath:(id)path appIDHeader:(id)header dataClass:(id)class options:(id)options modes:(id)modes;
- (MMCSEngineDelegate)delegate;
- (id)_assetWithItemID:(unint64_t)d;
- (unint64_t)_nextItemID;
- (void)_getItemDoneItemID:(unint64_t)d path:(id)path requestorContext:(id)context error:(id)error;
- (void)_getItemProgressItemID:(unint64_t)d state:(int)state progress:(double)progress requestorContext:(id)context error:(id)error;
- (void)_initItemIDPersistence;
- (void)_putItemDoneItemID:(unint64_t)d requestorContext:(id)context putReceipt:(id)receipt error:(id)error;
- (void)_putItemProgressItemID:(unint64_t)d state:(int)state progress:(double)progress requestorContext:(id)context error:(id)error;
- (void)_registerAsset:(id)asset;
- (void)_registerRequestorContext:(id)context;
- (void)_removeAssetForItemID:(unint64_t)d;
- (void)_removeRequestorContext:(id)context;
- (void)_requestCompletedRequestorContext:(id)context;
- (void)cancelAllOperations;
- (void)cancelOperationsWithContext:(id)context;
- (void)getAssets:(id)assets requestURL:(id)l DSID:(id)d options:(id)options;
- (void)performBlockOnWorkThread:(id)thread waitUntilDone:(BOOL)done;
- (void)putAssets:(id)assets requestURL:(id)l DSID:(id)d options:(id)options;
- (void)registerAssetForUpload:(id)upload completionBlock:(id)block;
- (void)registerAssets:(id)assets forDownloadCompletionBlock:(id)block;
- (void)reregisterAssetForDownload:(id)download;
- (void)reregisterAssetForUpload:(id)upload;
- (void)setIsMetricsGatheringEnabled:(BOOL)enabled;
- (void)shutDownCompletionBlock:(id)block;
- (void)threadMain:(id)main;
- (void)unregisterAsset:(id)asset;
- (void)unregisterAssets:(id)assets;
@end

@implementation MMCSEngine

- (MMCSEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)_nextItemID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  autoItemIDDictionaryQueue = self->_autoItemIDDictionaryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__MMCSEngine__nextItemID__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(autoItemIDDictionaryQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__MMCSEngine__nextItemID__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initItemIDPersistence];
  v2 = [*(*(a1 + 32) + 144) objectForKey:@"nextItemID"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 unsignedLongLongValue];

  v3 = *(*(a1 + 32) + 144);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1 + 40) + 8) + 24) + 1];
  [v3 setObject:v4 forKey:@"nextItemID"];

  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  v7 = *(v5 + 152);

  return [v6 writeToURL:v7 atomically:1];
}

- (void)_initItemIDPersistence
{
  if (!self->_autoItemIDPersistenceURL)
  {
    v4 = [(NSURL *)self->_workPathURL URLByAppendingPathComponent:@"nextItemID.plist"];
    autoItemIDPersistenceURL = self->_autoItemIDPersistenceURL;
    self->_autoItemIDPersistenceURL = v4;

    self->_autoItemIDDictionary = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:self->_autoItemIDPersistenceURL];

    MEMORY[0x2821F96F8]();
  }
}

- (void)_removeRequestorContext:(id)context
{
  contextCopy = context;
  reqestorContextQueue = self->_reqestorContextQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__MMCSEngine__removeRequestorContext___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(reqestorContextQueue, v7);
}

- (void)_registerRequestorContext:(id)context
{
  contextCopy = context;
  reqestorContextQueue = self->_reqestorContextQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MMCSEngine__registerRequestorContext___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(reqestorContextQueue, v7);
}

- (void)_removeAssetForItemID:(unint64_t)d
{
  itemIDToAssetMapQueue = self->_itemIDToAssetMapQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__MMCSEngine__removeAssetForItemID___block_invoke;
  v4[3] = &unk_278E92750;
  v4[4] = self;
  v4[5] = d;
  dispatch_sync(itemIDToAssetMapQueue, v4);
}

void __36__MMCSEngine__removeAssetForItemID___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  [v1 removeObjectForKey:v2];
}

- (id)_assetWithItemID:(unint64_t)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5532;
  v11 = __Block_byref_object_dispose__5533;
  v12 = 0;
  itemIDToAssetMapQueue = self->_itemIDToAssetMapQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MMCSEngine__assetWithItemID___block_invoke;
  block[3] = &unk_278E91908;
  block[4] = self;
  block[5] = &v7;
  block[6] = d;
  dispatch_sync(itemIDToAssetMapQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__MMCSEngine__assetWithItemID___block_invoke(void *a1)
{
  v2 = *(a1[4] + 112);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKey:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_registerAsset:(id)asset
{
  assetCopy = asset;
  itemIDToAssetMapQueue = self->_itemIDToAssetMapQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__MMCSEngine__registerAsset___block_invoke;
  v7[3] = &unk_278E927C8;
  v8 = assetCopy;
  selfCopy = self;
  v6 = assetCopy;
  dispatch_sync(itemIDToAssetMapQueue, v7);
}

void __29__MMCSEngine__registerAsset___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "MMCSItemID")}];
  v3 = [*(*(a1 + 40) + 112) objectForKey:v2];
  v4 = v3;
  if (v3 && ([v3 MMCSHash], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "MMCSHash"), v6 = objc_claimAutoreleasedReturnValue(), v7 = MSObjectsAreEquivalent(v5, v6), v6, v5, !v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v4;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Attempting to register two different assets under the same MMCS ID. Rejecting.\nNew asset: %{public}@\nOld asset: %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    v9 = a1 + 32;
    v8 = *(a1 + 32);
    v10 = *(*(v9 + 8) + 112);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "MMCSItemID")}];
    [v10 setObject:v8 forKey:v11];
  }
}

- (void)putAssets:(id)assets requestURL:(id)l DSID:(id)d options:(id)options
{
  assetsCopy = assets;
  lCopy = l;
  dCopy = d;
  optionsCopy = options;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__MMCSEngine_putAssets_requestURL_DSID_options___block_invoke;
  v18[3] = &unk_278E92688;
  v19 = assetsCopy;
  selfCopy = self;
  v21 = lCopy;
  v22 = dCopy;
  v23 = optionsCopy;
  v14 = optionsCopy;
  v15 = dCopy;
  v16 = lCopy;
  v17 = assetsCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v18];
}

void __48__MMCSEngine_putAssets_requestURL_DSID_options___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      *buf = 134217984;
      v40 = v2;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Begin putting %lu assets.", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      v30 = *(a1 + 64);
      *buf = 138544130;
      v40 = v27;
      v41 = 2114;
      v42 = v28;
      v43 = 2112;
      v44 = v29;
      v45 = 2114;
      v46 = v30;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Assets: %{public}@\nURL: %{public}@\nDSID: %@\nOptions: %{public}@\n", buf, 0x2Au);
    }

    v32 = [MMCSRequestorContext contextWithEngine:*(a1 + 40) type:1];
    v4 = malloc_type_malloc(8 * v2, 0x100004000313F17uLL);
    v5 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
    v6 = malloc_type_malloc(8 * v2, 0x10040436913F5uLL);
    v7 = malloc_type_malloc(8 * v2, 0x10040436913F5uLL);
    for (i = 0; i != v2; ++i)
    {
      v9 = [*(a1 + 32) objectAtIndex:i];
      v4[i] = [v9 MMCSItemID];
      v5[i] = [v9 MMCSItemFlags];
      v10 = [v9 MMCSHash];
      v6[i] = [v10 bytes];

      v11 = [v9 MMCSAccessHeader];
      v12 = [v11 cStringUsingEncoding:4];

      if (v12)
      {
        v13 = strlen(v12);
        v14 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
        v7[i] = v14;
        strcpy(v14, v12);
      }

      else
      {
        v7[i] = 0;
      }
    }

    v15 = v32;
    [v32 setCount:v2];
    [v32 setItemIDs:v4];
    [v32 setItemFlags:v5];
    [v32 setSignatures:v6];
    [v32 setAuthTokens:v7];
    [*(a1 + 40) _registerRequestorContext:v32];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 176));
    [WeakRetained MMCSEngine:*(a1 + 40) didCreateRequestorContext:v32 forAssets:*(a1 + 32)];

    v37 = 0;
    [v32 itemIDs];
    [v32 signatures];
    v17 = [v32 authTokens];
    v31 = [v32 itemFlags];
    if (!MMCSPutItems())
    {
      v18 = v37;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = v37;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Put items failed with error: %{public}@", buf, 0xCu);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = *(a1 + 32);
      v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:{16, v17, v31, &v37}];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v33 + 1) + 8 * j);
            v25 = objc_loadWeakRetained((*(a1 + 40) + 176));
            [v25 MMCSEngine:*(a1 + 40) didFinishPuttingAsset:v24 putReceipt:0 error:v18];
          }

          v21 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v21);
      }

      v26 = objc_loadWeakRetained((*(a1 + 40) + 176));
      [v26 didFinishPuttingAllAssets];
    }
  }

  else
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Put assets called with zero assets.", buf, 2u);
    }

    v15 = objc_loadWeakRetained((*(a1 + 40) + 176));
    [v15 didFinishPuttingAllAssets];
  }
}

- (void)getAssets:(id)assets requestURL:(id)l DSID:(id)d options:(id)options
{
  assetsCopy = assets;
  lCopy = l;
  dCopy = d;
  optionsCopy = options;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__MMCSEngine_getAssets_requestURL_DSID_options___block_invoke;
  v18[3] = &unk_278E92688;
  v19 = assetsCopy;
  selfCopy = self;
  v21 = lCopy;
  v22 = dCopy;
  v23 = optionsCopy;
  v14 = optionsCopy;
  v15 = dCopy;
  v16 = lCopy;
  v17 = assetsCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v18];
}

void __48__MMCSEngine_getAssets_requestURL_DSID_options___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) count];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v36 = v2;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Begin getting %lu assets.", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      *buf = 138544130;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      v41 = 2114;
      v42 = v26;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Assets: %{public}@\nURL: %{public}@\nDSID: %@\nOptions:%{public}@", buf, 0x2Au);
    }

    v28 = [MMCSRequestorContext contextWithEngine:*(a1 + 40) type:0];
    v3 = malloc_type_malloc(8 * v2, 0x100004000313F17uLL);
    v4 = malloc_type_malloc(8 * v2, 0x10040436913F5uLL);
    v5 = malloc_type_malloc(8 * v2, 0x10040436913F5uLL);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v7 = [*(a1 + 32) objectAtIndex:i];
        v3[i] = [v7 MMCSItemID];
        v8 = [v7 MMCSHash];
        v4[i] = [v8 bytes];

        v9 = [v7 MMCSAccessHeader];
        v10 = [v9 cStringUsingEncoding:4];

        if (v10)
        {
          v11 = strlen(v10);
          v12 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
          v5[i] = v12;
          strcpy(v12, v10);
        }

        else
        {
          v5[i] = 0;
        }
      }
    }

    v13 = v28;
    [v28 setCount:v2];
    [v28 setItemIDs:v3];
    [v28 setSignatures:v4];
    [v28 setAuthTokens:v5];
    [*(a1 + 40) _registerRequestorContext:v28];
    v33 = 0;
    [v28 itemIDs];
    [v28 signatures];
    v27 = [v28 authTokens];
    if (!MMCSGetItems())
    {
      v14 = v33;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = v33;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Get Items failed with error: %{public}@", buf, 0xCu);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = *(a1 + 32);
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:{16, v27, &v33}];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * j);
            WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 176));
            [WeakRetained MMCSEngine:*(a1 + 40) didFinishGettingAsset:v20 path:0 error:v14];
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v17);
      }

      v22 = objc_loadWeakRetained((*(a1 + 40) + 176));
      [v22 didFinishGettingAllAssets];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Get assets called with zero assets.", buf, 2u);
    }

    v13 = objc_loadWeakRetained((*(a1 + 40) + 176));
    [v13 didFinishGettingAllAssets];
  }
}

- (void)unregisterAssets:(id)assets
{
  assetsCopy = assets;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__MMCSEngine_unregisterAssets___block_invoke;
  v6[3] = &unk_278E927C8;
  v7 = assetsCopy;
  selfCopy = self;
  v5 = assetsCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v6];
}

void __31__MMCSEngine_unregisterAssets___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_malloc(8 * [*(a1 + 32) count], 0x100004000313F17uLL);
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = [*(a1 + 32) objectAtIndex:v3];
      v2[v3] = [v4 MMCSItemID];

      ++v3;
    }

    while (v3 < [*(a1 + 32) count]);
  }

  if ([*(a1 + 32) count] >> 32)
  {
    __assert_rtn("[MMCSEngine unregisterAssets:]_block_invoke", "MMCSEngine.m", 563, "count <= UINT32_MAX");
  }

  v12 = v2;
  MMCSUnregisterFiles();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v18 = v11;
          _os_log_debug_impl(&dword_245B99000, v9, OS_LOG_TYPE_DEBUG, "Unregistered asset: %{public}@", buf, 0xCu);
        }

        [*(a1 + 40) _removeAssetForItemID:{objc_msgSend(v11, "MMCSItemID")}];
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  free(v12);
}

- (void)unregisterAsset:(id)asset
{
  assetCopy = asset;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__MMCSEngine_unregisterAsset___block_invoke;
  v6[3] = &unk_278E927C8;
  v7 = assetCopy;
  selfCopy = self;
  v5 = assetCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v6];
}

uint64_t __30__MMCSEngine_unregisterAsset___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Unregistered asset: %{public}@", &v4, 0xCu);
  }

  [*(a1 + 32) MMCSItemID];
  MMCSUnregisterFile();
  return [*(a1 + 40) _removeAssetForItemID:{objc_msgSend(*(a1 + 32), "MMCSItemID")}];
}

- (void)registerAssets:(id)assets forDownloadCompletionBlock:(id)block
{
  assetsCopy = assets;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MMCSEngine_registerAssets_forDownloadCompletionBlock___block_invoke;
  v10[3] = &unk_278E91E38;
  v11 = assetsCopy;
  selfCopy = self;
  v13 = blockCopy;
  v8 = blockCopy;
  v9 = assetsCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v10];
}

uint64_t __56__MMCSEngine_registerAssets_forDownloadCompletionBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    v7 = MEMORY[0x277D86220];
    *&v4 = 138543362;
    v12 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = *(a1 + 40);
        if (v10[168] == 1)
        {
          [v9 setMMCSItemID:{objc_msgSend(v10, "_nextItemID")}];
          v10 = *(a1 + 40);
        }

        [v10 _registerAsset:{v9, v12, v13}];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = v12;
          v18 = v9;
          _os_log_debug_impl(&dword_245B99000, v7, OS_LOG_TYPE_DEBUG, "Registered asset for download: %{public}@ ", buf, 0xCu);
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)reregisterAssetForDownload:(id)download
{
  downloadCopy = download;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__MMCSEngine_reregisterAssetForDownload___block_invoke;
  v6[3] = &unk_278E927C8;
  v6[4] = self;
  v7 = downloadCopy;
  v5 = downloadCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v6];
}

- (void)reregisterAssetForUpload:(id)upload
{
  uploadCopy = upload;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MMCSEngine_reregisterAssetForUpload___block_invoke;
  v6[3] = &unk_278E927C8;
  v6[4] = self;
  v7 = uploadCopy;
  v5 = uploadCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v6];
}

- (void)registerAssetForUpload:(id)upload completionBlock:(id)block
{
  uploadCopy = upload;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__MMCSEngine_registerAssetForUpload_completionBlock___block_invoke;
  v10[3] = &unk_278E91E38;
  v10[4] = self;
  v11 = uploadCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = uploadCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v10];
}

void __53__MMCSEngine_registerAssetForUpload_completionBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[168] == 1)
  {
    [*(a1 + 40) setMMCSItemID:{objc_msgSend(v2, "_nextItemID")}];
    v2 = *(a1 + 32);
  }

  [v2 _registerAsset:*(a1 + 40)];
  [*(a1 + 40) MMCSItemID];
  MMCSRegisterFile();
  [*(a1 + 32) _removeAssetForItemID:{objc_msgSend(*(a1 + 40), "MMCSItemID")}];
  v3 = [MEMORY[0x277CCA9B8] MMCSErrorWithDomain:@"kMMCSKitErrorDomain" code:2 description:@"ERROR_CANNOT_REGISTER_FILE"];
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      *buf = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not register asset: %{public}@\nError: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 40);
      *buf = 138543362;
      v7 = v4;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Registered asset for upload: %{public}@", buf, 0xCu);
    }

    v3 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)isActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__MMCSEngine_isActive__block_invoke;
  v4[3] = &unk_278E92700;
  v4[4] = self;
  v4[5] = &v5;
  [(MMCSEngine *)self performBlockOnWorkThread:v4 waitUntilDone:1];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __22__MMCSEngine_isActive__block_invoke(uint64_t a1)
{
  result = MMCSEngineIsActive();
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)shutDownCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MMCSEngine_shutDownCompletionBlock___block_invoke;
  v6[3] = &unk_278E927A0;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v6];
}

uint64_t __38__MMCSEngine_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    MMCSEngineCancelRequests();
    MMCSEngineDestroy();
    *(*(a1 + 32) + 40) = 0;
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 160);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MMCSEngine_shutDownCompletionBlock___block_invoke_2;
  block[3] = &unk_278E926D8;
  block[4] = v2;
  dispatch_sync(v3, block);
  v4 = [*(a1 + 32) threadKeepAliveTimer];
  [v4 invalidate];

  [*(a1 + 32) setThreadKeepAliveTimer:0];
  [*(a1 + 32) setIsDone:1];
  return (*(*(a1 + 40) + 16))();
}

void __38__MMCSEngine_shutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = 0;
}

- (void)cancelAllOperations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__MMCSEngine_cancelAllOperations__block_invoke;
  v2[3] = &unk_278E926D8;
  v2[4] = self;
  [(MMCSEngine *)self performBlockOnWorkThread:v2 waitUntilDone:1];
}

- (void)cancelOperationsWithContext:(id)context
{
  contextCopy = context;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MMCSEngine_cancelOperationsWithContext___block_invoke;
  v6[3] = &unk_278E927C8;
  v7 = contextCopy;
  selfCopy = self;
  v5 = contextCopy;
  [(MMCSEngine *)self performBlockOnWorkThread:v6 waitUntilDone:1];
}

void __42__MMCSEngine_cancelOperationsWithContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {

    MMCSEngineCancelRequests();
  }

  else
  {
    v4 = v1;
    v5 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cancel operations: Could not find context. Ignoring", v3, 2u);
    }
  }
}

- (void)_requestCompletedRequestorContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Request completed.", v12, 2u);
  }

  if ([(MMCSEngine *)self isMetricsGatheringEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      RequestMetrics = MMCSEngineGetRequestMetrics();
      v8 = MEMORY[0x245D7B420](RequestMetrics);
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 MMCSEngine:self logPerformanceMetrics:v8];
    }
  }

  if (![contextCopy type])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 didFinishGettingAllAssets];
    goto LABEL_10;
  }

  if ([contextCopy type] == 1)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 didFinishPuttingAllAssets];
LABEL_10:

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    type = [contextCopy type];
    v12[0] = 67109120;
    v12[1] = type;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown requestor context type %d found at request completion. Ignoring.", v12, 8u);
  }

LABEL_13:
  [(MMCSEngine *)self _removeRequestorContext:contextCopy];
}

- (void)_putItemDoneItemID:(unint64_t)d requestorContext:(id)context putReceipt:(id)receipt error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  errorCopy = error;
  v11 = [(MMCSEngine *)self _assetWithItemID:d];
  if (v11)
  {
    if (errorCopy)
    {
      if (([errorCopy MMCSIsAuthorizationError] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = 138543618;
        dCopy = errorCopy;
        v15 = 2114;
        v16 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Put item failed. Error: %{public}@\nAsset: %{public}@", &v13, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      dCopy = v11;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Put item completed. Asset: %{public}@", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained MMCSEngine:self didFinishPuttingAsset:v11 putReceipt:receiptCopy error:errorCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    dCopy = d;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Put item done: Could not get asset for item ID %lld.", &v13, 0xCu);
  }
}

- (void)_putItemProgressItemID:(unint64_t)d state:(int)state progress:(double)progress requestorContext:(id)context error:(id)error
{
  v8 = *&state;
  v25 = *MEMORY[0x277D85DE8];
  error = [(MMCSEngine *)self _assetWithItemID:d, *&state, context, error];
  if (error)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (progress == -1.0)
    {
      if (v12)
      {
        v13 = [MMCSEngine logStringForPutItemState:v8];
        v19 = 138543618;
        progressCopy = *&v13;
        v21 = 2048;
        v22 = error;
        v14 = MEMORY[0x277D86220];
        v15 = "Put item progress state: %{public}@ asset: %p";
        v16 = 22;
        goto LABEL_11;
      }
    }

    else if (v12)
    {
      v13 = [MMCSEngine logStringForPutItemState:v8];
      v19 = 134218498;
      progressCopy = progress;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      v24 = error;
      v14 = MEMORY[0x277D86220];
      v15 = "Put item progress: %f state: %{public}@ asset: %p";
      v16 = 32;
LABEL_11:
      _os_log_debug_impl(&dword_245B99000, v14, OS_LOG_TYPE_DEBUG, v15, &v19, v16);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *&v18 = progress;
    [WeakRetained MMCSEngine:self didMakePutProgress:v8 state:error onAsset:v18];

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = 134217984;
    progressCopy = *&d;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Put item progress: Could not get asset for item ID %lld. Ignoring.", &v19, 0xCu);
  }

LABEL_9:
}

- (void)_getItemDoneItemID:(unint64_t)d path:(id)path requestorContext:(id)context error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  v11 = [(MMCSEngine *)self _assetWithItemID:d];
  if (v11)
  {
    if (errorCopy)
    {
      if (([errorCopy MMCSIsAuthorizationError] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = 138543618;
        dCopy = errorCopy;
        v15 = 2114;
        v16 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Get item failed. Error: %{public}@\nAsset: %{public}@", &v13, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = 138543618;
      dCopy = v11;
      v15 = 2112;
      v16 = pathCopy;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Get item completed. Asset: %{public}@. Path: %@", &v13, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained MMCSEngine:self didFinishGettingAsset:v11 path:pathCopy error:errorCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    dCopy = d;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Get item done: Could not get asset for item ID %lld.", &v13, 0xCu);
  }
}

- (void)_getItemProgressItemID:(unint64_t)d state:(int)state progress:(double)progress requestorContext:(id)context error:(id)error
{
  v8 = *&state;
  v25 = *MEMORY[0x277D85DE8];
  error = [(MMCSEngine *)self _assetWithItemID:d, *&state, context, error];
  if (error)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (progress == -1.0)
    {
      if (v12)
      {
        v13 = [MMCSEngine logStringForGetItemState:v8];
        v19 = 138543618;
        progressCopy = *&v13;
        v21 = 2048;
        v22 = error;
        v14 = MEMORY[0x277D86220];
        v15 = "Get item progress state: %{public}@ asset: %p";
        v16 = 22;
        goto LABEL_11;
      }
    }

    else if (v12)
    {
      v13 = [MMCSEngine logStringForGetItemState:v8];
      v19 = 134218498;
      progressCopy = progress;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      v24 = error;
      v14 = MEMORY[0x277D86220];
      v15 = "Get item progress: %f state: %{public}@ asset: %p";
      v16 = 32;
LABEL_11:
      _os_log_debug_impl(&dword_245B99000, v14, OS_LOG_TYPE_DEBUG, v15, &v19, v16);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *&v18 = progress;
    [WeakRetained MMCSEngine:self didMakeGetProgress:v8 state:error onAsset:v18];

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = 134217984;
    progressCopy = *&d;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Get item progress: Could not get asset for item ID %lld. Ignoring.", &v19, 0xCu);
  }

LABEL_9:
}

- (BOOL)_getFileDescriptorAndContentTypeFromItemID:(unint64_t)d outFD:(int *)fD outItemType:(id *)type outError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v21 = d;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Getting file descriptor for itemID %lld", buf, 0xCu);
  }

  v11 = [(MMCSEngine *)self _assetWithItemID:d];
  v12 = v11;
  if (v11)
  {
    mMCSOpenNewFileDescriptor = [v11 MMCSOpenNewFileDescriptor];
    if (mMCSOpenNewFileDescriptor != -1)
    {
      v14 = mMCSOpenNewFileDescriptor;
      mMCSItemType = [v12 MMCSItemType];
      goto LABEL_13;
    }

    [MEMORY[0x277CCA9B8] MMCSErrorWithDomain:@"kMMCSKitErrorDomain" code:1 description:{@"ERROR_CANNOT_GET_FD_P_ASSET", v12}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] MMCSErrorWithDomain:@"kMMCSKitErrorDomain" code:0 description:{@"ERROR_CANNOT_FIND_ASSET_P_ITEMID", d}];
  }
  v16 = ;
  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *v21 = d;
      *&v21[8] = 2114;
      *&v21[10] = v16;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not get file descriptor for itemID %lld. Error: %{public}@", buf, 0x16u);
      if (error)
      {
        goto LABEL_11;
      }
    }

    else if (error)
    {
LABEL_11:
      v17 = v16;
      mMCSItemType = 0;
      *error = v16;
      goto LABEL_23;
    }

    mMCSItemType = 0;
LABEL_23:
    v14 = -1;
    if (!fD)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  mMCSItemType = 0;
  v14 = -1;
LABEL_13:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    *v21 = v14;
    *&v21[4] = 2048;
    *&v21[6] = d;
    *&v21[14] = 2114;
    *&v21[16] = mMCSItemType;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Got file descriptor %d for itemID %lld. UTI: %{public}@", buf, 0x1Cu);
  }

  v16 = 0;
  if (type && mMCSItemType)
  {
    v18 = mMCSItemType;
    v16 = 0;
    *type = mMCSItemType;
  }

  if (fD)
  {
LABEL_19:
    *fD = v14;
  }

LABEL_20:

  return v14 != -1;
}

- (void)setIsMetricsGatheringEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__MMCSEngine_setIsMetricsGatheringEnabled___block_invoke;
  v3[3] = &unk_278E918E0;
  enabledCopy = enabled;
  v3[4] = self;
  [(MMCSEngine *)self performBlockOnWorkThread:v3];
}

void __43__MMCSEngine_setIsMetricsGatheringEnabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != *(*(a1 + 32) + 169))
  {
    MMCSEngineSetMetricsEnabled();
    *(*(a1 + 32) + 169) = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((*(a1 + 32) + 176));
      v6 = v4;
      if (*(a1 + 40))
      {
        v5 = @"Performance logging enabled.";
      }

      else
      {
        v5 = @"Performance logging disabled.";
      }

      [v4 MMCSEngine:*(a1 + 32) logPerformanceMetrics:v5];
    }
  }
}

- (void)threadMain:(id)main
{
  mainCopy = main;
  v5 = objc_autoreleasePoolPush();
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop getCFRunLoop];
  [mainCopy objectForKey:@"modes"];
  [mainCopy objectForKey:@"workPathURL"];
  [mainCopy objectForKey:@"appIDHeader"];
  [mainCopy objectForKey:@"dataClass"];
  [mainCopy objectForKey:@"options"];
  self->_engine = MMCSEngineCreate();

  if (self->_engine)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemIDToAssetMap = self->_itemIDToAssetMap;
    self->_itemIDToAssetMap = v7;

    v9 = dispatch_queue_create("com.apple.MMCSKit.itemIDToAssetMapQueue", 0);
    itemIDToAssetMapQueue = self->_itemIDToAssetMapQueue;
    self->_itemIDToAssetMapQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestorContexts = self->_requestorContexts;
    self->_requestorContexts = v11;

    v13 = dispatch_queue_create("com.apple.MMCSKit.requestorContextQueue", 0);
    reqestorContextQueue = self->_reqestorContextQueue;
    self->_reqestorContextQueue = v13;

    v15 = dispatch_queue_create("com.apple.MMCSKit.autoItemIDDictionaryQueue", 0);
    autoItemIDDictionaryQueue = self->_autoItemIDDictionaryQueue;
    self->_autoItemIDDictionaryQueue = v15;

    v17 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__doNothingTimerHandler_ selector:0 userInfo:1 repeats:10000000.0];
    threadKeepAliveTimer = self->_threadKeepAliveTimer;
    self->_threadKeepAliveTimer = v17;

    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop2 addTimer:self->_threadKeepAliveTimer forMode:*MEMORY[0x277CBE738]];

    if (![(MMCSEngine *)self isDone])
    {
      v20 = *MEMORY[0x277CBE640];
      do
      {
        currentRunLoop3 = [MEMORY[0x277CBEB88] currentRunLoop];
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
        v23 = [currentRunLoop3 runMode:v20 beforeDate:distantFuture];

        if ((v23 & 1) == 0)
        {
          [(MMCSEngine *)self setIsDone:1];
        }
      }

      while (![(MMCSEngine *)self isDone]);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not create MMCS Engine!", v24, 2u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)performBlockOnWorkThread:(id)thread waitUntilDone:(BOOL)done
{
  doneCopy = done;
  v6 = MEMORY[0x277CCACC8];
  threadCopy = thread;
  currentThread = [v6 currentThread];
  v8 = [currentThread isEqual:self->_workThread];

  if (v8)
  {
    threadCopy[2]();
  }

  else
  {
    workThread = self->_workThread;
    v10 = [threadCopy copy];

    [(MMCSEngine *)self performSelector:sel_performBlock_ onThread:workThread withObject:v10 waitUntilDone:doneCopy];
    threadCopy = v10;
  }
}

- (MMCSEngine)initWithWorkPath:(id)path appIDHeader:(id)header dataClass:(id)class options:(id)options
{
  v10 = MEMORY[0x277CBEA60];
  v11 = *MEMORY[0x277CBE640];
  optionsCopy = options;
  classCopy = class;
  headerCopy = header;
  pathCopy = path;
  v16 = [v10 arrayWithObject:v11];
  v17 = [(MMCSEngine *)self initWithWorkPath:pathCopy appIDHeader:headerCopy dataClass:classCopy options:optionsCopy modes:v16];

  return v17;
}

- (MMCSEngine)initWithWorkPath:(id)path appIDHeader:(id)header dataClass:(id)class options:(id)options modes:(id)modes
{
  pathCopy = path;
  headerCopy = header;
  classCopy = class;
  optionsCopy = options;
  modesCopy = modes;
  v25.receiver = self;
  v25.super_class = MMCSEngine;
  v18 = [(MMCSEngine *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_workPathURL, path);
    v19->_engineClientContext.version = 2;
    v19->_engineClientContext.context = v19;
    v19->_engineClientContext.getFileDescriptorAndContentTypeFromItemCallback = _getFileDescriptorAndContentTypeFromItemCallback;
    v19->_engineClientContext.getItemProgressCallback = _getItemProgressCallback_5614;
    v19->_engineClientContext.getItemDoneCallback = _getItemDoneCallback_5613;
    v19->_engineClientContext.putItemProgressCallback = _putItemProgressCallback_5612;
    v19->_engineClientContext.putItemDoneCallback = _putItemDoneCallback_5611;
    v19->_engineClientContext.requestCompletedCallback = _requestCompletedCallback_5610;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21 = dictionary;
    if (pathCopy)
    {
      [dictionary setObject:pathCopy forKey:@"workPathURL"];
    }

    if (headerCopy)
    {
      [v21 setObject:headerCopy forKey:@"appIDHeader"];
    }

    if (classCopy)
    {
      [v21 setObject:classCopy forKey:@"dataClass"];
    }

    if (optionsCopy)
    {
      [v21 setObject:optionsCopy forKey:@"options"];
    }

    if (modesCopy)
    {
      [v21 setObject:modesCopy forKey:@"modes"];
    }

    v22 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:v19 selector:sel_threadMain_ object:v21];
    workThread = v19->_workThread;
    v19->_workThread = v22;

    [(NSThread *)v19->_workThread start];
  }

  return v19;
}

+ (id)logStringForPutItemState:(int)state
{
  if (state > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E91958[state];
  }
}

+ (id)logStringForGetItemState:(int)state
{
  if (state > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E91928[state];
  }
}

@end