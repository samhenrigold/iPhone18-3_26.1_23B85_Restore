@interface WKWallpaperBundleDownloadManager
+ (WKWallpaperBundleDownloadManager)defaultManager;
- (WKWallpaperBundleDownloadManager)initWithAssetDownloadIdentifier:(id)identifier;
- (WKWallpaperBundleDownloadManagerDelegate)delegate;
- (id)_startCatalogDownload;
- (id)localWallpaperRepresentingWithIdentifier:(id)identifier wallpaperName:(id)name;
- (void)cancelDownloadForWallpaperRepresenting:(id)representing withCompletion:(id)completion;
- (void)downloadWallpaperRepresentingIfNeeded:(id)needed progress:(id)progress withCompletion:(id)completion;
@end

@implementation WKWallpaperBundleDownloadManager

- (WKWallpaperBundleDownloadManager)initWithAssetDownloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = WKWallpaperBundleDownloadManager;
  v5 = [(WKWallpaperBundleDownloadManager *)&v20 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    assetDownloadIdentifier = v5->_assetDownloadIdentifier;
    v5->_assetDownloadIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create([identifierCopy cStringUsingEncoding:1], v8);
    loadingQueue = v5->__loadingQueue;
    v5->__loadingQueue = v9;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    localAssetLookup = v5->__localAssetLookup;
    v5->__localAssetLookup = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    activeDownloads = v5->__activeDownloads;
    v5->__activeDownloads = dictionary2;

    objc_initWeak(&location, v5);
    _loadingQueue = [(WKWallpaperBundleDownloadManager *)v5 _loadingQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__WKWallpaperBundleDownloadManager_initWithAssetDownloadIdentifier___block_invoke;
    v17[3] = &unk_1E8767158;
    objc_copyWeak(&v18, &location);
    dispatch_async(_loadingQueue, v17);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __68__WKWallpaperBundleDownloadManager_initWithAssetDownloadIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc(MEMORY[0x1E69B18E8]);
  v3 = [WeakRetained assetDownloadIdentifier];
  v4 = [v2 initWithType:v3];

  if (![v4 queryMetaDataSync])
  {
    v5 = [v4 results];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__WKWallpaperBundleDownloadManager_initWithAssetDownloadIdentifier___block_invoke_2;
    v6[3] = &unk_1E8767130;
    v7 = WeakRetained;
    [v5 na_each:v6];
  }
}

void __68__WKWallpaperBundleDownloadManager_initWithAssetDownloadIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state] != 1)
  {
    objc_opt_class();
    v4 = [v3 attributes];
    v5 = [v4 objectForKeyedSubscript:@"WallpaperBundleName"];
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 stringByAppendingPathExtension:@"wallpaper"];
    v9 = [v3 getLocalUrl];
    v10 = [v9 URLByAppendingPathComponent:v8];

    v11 = [[WKWallpaperBundle alloc] initWithURL:v10];
    v12 = [(WKWallpaperBundle *)v11 identifierString];
    v17[0] = v12;
    v13 = [(WKWallpaperBundle *)v11 name];
    v17[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v15 = [v14 componentsJoinedByString:@"."];

    v16 = [*(a1 + 32) _localAssetLookup];
    [v16 setObject:v11 forKeyedSubscript:v15];
  }
}

+ (WKWallpaperBundleDownloadManager)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WKWallpaperBundleDownloadManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_onceToken_0 != -1)
  {
    dispatch_once(&defaultManager_onceToken_0, block);
  }

  v2 = defaultManager__defaultManager;

  return v2;
}

uint64_t __50__WKWallpaperBundleDownloadManager_defaultManager__block_invoke(uint64_t a1)
{
  defaultManager__defaultManager = [objc_alloc(*(a1 + 32)) initWithAssetDownloadIdentifier:@"com.apple.MobileAsset.Wallpaper"];

  return MEMORY[0x1EEE66BB8]();
}

- (void)downloadWallpaperRepresentingIfNeeded:(id)needed progress:(id)progress withCompletion:(id)completion
{
  v31[2] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  progressCopy = progress;
  completionCopy = completion;
  if ([neededCopy isOffloaded])
  {
    identifierString = [neededCopy identifierString];
    v31[0] = identifierString;
    name = [neededCopy name];
    v31[1] = name;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v14 = [v13 componentsJoinedByString:@"."];

    v15 = objc_alloc_init(MEMORY[0x1E69B1948]);
    [v15 setDiscretionary:0];
    _startCatalogDownload = [(WKWallpaperBundleDownloadManager *)self _startCatalogDownload];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke;
    v29[3] = &unk_1E87671D0;
    v29[4] = self;
    v30 = neededCopy;
    v17 = [_startCatalogDownload flatMap:v29];
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_4;
    v23[3] = &unk_1E8767270;
    objc_copyWeak(&v27, &location);
    v24 = progressCopy;
    v25 = v14;
    v26 = v15;
    v18 = [v17 flatMap:v23];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_8;
    v20[3] = &unk_1E87672C0;
    objc_copyWeak(&v22, &location);
    v20[4] = v14;
    v21 = completionCopy;
    v19 = [v18 addCompletionBlock:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, neededCopy, 0);
  }
}

id __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B18E8]);
  v3 = [*(a1 + 32) assetDownloadIdentifier];
  v4 = [v2 initWithType:v3];

  v5 = [*(a1 + 40) logicalScreenClass];
  [v4 addKeyValuePair:@"WallpaperLogicalScreenClass" with:v5];

  v6 = [*(a1 + 40) identifierString];
  [v4 addKeyValuePair:@"WallpaperIdentifier" with:v6];

  v7 = [*(a1 + 40) name];
  [v4 addKeyValuePair:@"WallpaperName" with:v7];

  v8 = MEMORY[0x1E69B3780];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_2;
  v12[3] = &unk_1E87671A8;
  v13 = v4;
  v9 = v4;
  v10 = [v8 lazyFutureWithBlock:v12];

  return v10;
}

void __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_3;
  v6[3] = &unk_1E8767180;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = v4;
  v5 = v3;
  [v4 queryMetaDataWithError:v6];
}

void __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v7 = [v4 results];
  v6 = [v7 firstObject];
  [v3 finishWithResult:v6 error:v5];
}

id __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69B3780];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_5;
  v8[3] = &unk_1E8767248;
  objc_copyWeak(&v12, (a1 + 56));
  v5 = v3;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6 = [v4 lazyFutureWithBlock:v8];

  objc_destroyWeak(&v12);

  return v6;
}

void __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_opt_class();
  v5 = [*(a1 + 32) attributes];
  v6 = [v5 objectForKeyedSubscript:@"WallpaperBundleName"];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 stringByAppendingPathExtension:@"wallpaper"];
  if ([*(a1 + 32) state] == 1)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(a1 + 32);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_6;
      v22[3] = &unk_1E87671F8;
      v23 = v10;
      [v11 attachProgressCallBack:v22];
    }

    v12 = *(a1 + 32);
    v13 = [WeakRetained _activeDownloads];
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 48)];

    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_7;
    v18[3] = &unk_1E8767220;
    v19 = v3;
    v20 = *(a1 + 32);
    v21 = v9;
    [v14 startDownload:v15 completionWithError:v18];
  }

  else
  {
    v16 = [*(a1 + 32) getLocalUrl];
    v17 = [v16 URLByAppendingPathComponent:v9];
    [v3 finishWithResult:v17];
  }
}

uint64_t __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setTotalUnitCount:{objc_msgSend(v3, "totalExpected")}];
  v4 = [v3 totalWritten];

  v5 = *(a1 + 32);

  return [v5 setCompletedUnitCount:v4];
}

void __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_7(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a3;
  v8 = [v5 getLocalUrl];
  v7 = [v8 URLByAppendingPathComponent:a1[6]];
  [v4 finishWithResult:v7 error:v6];
}

void __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained _activeDownloads];
  [v8 removeObjectForKey:*(a1 + 32)];

  if (!v6)
  {
    if ([WKWallpaperBundle shouldLoadWallpaperBundleAtURL:v5])
    {
      v10 = [[WKWallpaperBundle alloc] initWithURL:v5];
      v11 = [WeakRetained _loadingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_9;
      block[3] = &unk_1E8767298;
      v12 = *(a1 + 32);
      block[4] = WeakRetained;
      block[5] = v12;
      block[6] = v10;
      dispatch_async(v11, block);

      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v10, 0);
      }
    }

    else
    {
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_10;
      }

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:WKWallpaperKitErrorDomain code:-10028 userInfo:0];
      (*(v14 + 16))(v14, 0, v10);
    }

    goto LABEL_10;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v6);
  }

LABEL_10:
}

void __98__WKWallpaperBundleDownloadManager_downloadWallpaperRepresentingIfNeeded_progress_withCompletion___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) _localAssetLookup];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)cancelDownloadForWallpaperRepresenting:(id)representing withCompletion:(id)completion
{
  v21[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  representingCopy = representing;
  identifierString = [representingCopy identifierString];
  v21[0] = identifierString;
  name = [representingCopy name];

  v21[1] = name;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v11 = [v10 componentsJoinedByString:@"."];

  _activeDownloads = [(WKWallpaperBundleDownloadManager *)self _activeDownloads];
  v13 = [_activeDownloads objectForKeyedSubscript:v11];

  _activeDownloads2 = [(WKWallpaperBundleDownloadManager *)self _activeDownloads];
  [_activeDownloads2 removeObjectForKey:v11];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__WKWallpaperBundleDownloadManager_cancelDownloadForWallpaperRepresenting_withCompletion___block_invoke;
  v20[3] = &unk_1E87671A8;
  v20[4] = v13;
  v15 = [MEMORY[0x1E69B3780] lazyFutureWithBlock:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__WKWallpaperBundleDownloadManager_cancelDownloadForWallpaperRepresenting_withCompletion___block_invoke_2;
  v18[3] = &unk_1E8767310;
  v19 = completionCopy;
  v16 = completionCopy;
  v17 = [v15 addCompletionBlock:v18];
}

void __90__WKWallpaperBundleDownloadManager_cancelDownloadForWallpaperRepresenting_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__WKWallpaperBundleDownloadManager_cancelDownloadForWallpaperRepresenting_withCompletion___block_invoke_317;
    v6[3] = &unk_1E87672E8;
    v7 = v3;
    [v5 cancelDownload:v6];
  }

  else
  {
    [v3 finishWithResult:&unk_1F5EAA778];
  }
}

void __90__WKWallpaperBundleDownloadManager_cancelDownloadForWallpaperRepresenting_withCompletion___block_invoke_317(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = WKWallpaperKitErrorDomain;
    v9 = @"CancelDownloadResult";
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v3 errorWithDomain:v4 code:-10029 userInfo:v6];
    [v2 finishWithError:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v2 finishWithResult:?];
  }
}

uint64_t __90__WKWallpaperBundleDownloadManager_cancelDownloadForWallpaperRepresenting_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)localWallpaperRepresentingWithIdentifier:(id)identifier wallpaperName:(id)name
{
  v22[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v22[0] = identifierCopy;
  v22[1] = nameCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v9 = [v8 componentsJoinedByString:@"."];

  objc_initWeak(&location, self);
  _loadingQueue = [(WKWallpaperBundleDownloadManager *)self _loadingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WKWallpaperBundleDownloadManager_localWallpaperRepresentingWithIdentifier_wallpaperName___block_invoke;
  block[3] = &unk_1E8767338;
  objc_copyWeak(&v14, &location);
  block[4] = v9;
  block[5] = &v16;
  dispatch_sync(_loadingQueue, block);

  v11 = v17[5];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __91__WKWallpaperBundleDownloadManager_localWallpaperRepresentingWithIdentifier_wallpaperName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _localAssetLookup];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_startCatalogDownload
{
  _catalogDownloadResult = [(WKWallpaperBundleDownloadManager *)self _catalogDownloadResult];
  if (_catalogDownloadResult && (v4 = _catalogDownloadResult, [(WKWallpaperBundleDownloadManager *)self _catalogDownloadError], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v8 = MEMORY[0x1E69B3780];
    _catalogDownloadResult2 = [(WKWallpaperBundleDownloadManager *)self _catalogDownloadResult];
    v7 = [v8 futureWithResult:_catalogDownloadResult2];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69B3780];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__WKWallpaperBundleDownloadManager__startCatalogDownload__block_invoke;
    v11[3] = &unk_1E8767388;
    v11[4] = self;
    objc_copyWeak(&v12, &location);
    v7 = [v6 lazyFutureWithBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __57__WKWallpaperBundleDownloadManager__startCatalogDownload__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69B1948]);
  [v4 setDiscretionary:0];
  [v4 setTimeoutIntervalForResource:10];
  v5 = WKLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[WKWallpaperBundleDownloadManager _startCatalogDownload]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: started download for catalog", buf, 0xCu);
  }

  v6 = MEMORY[0x1E69B18D8];
  v7 = [*(a1 + 32) assetDownloadIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__WKWallpaperBundleDownloadManager__startCatalogDownload__block_invoke_326;
  v9[3] = &unk_1E8767360;
  objc_copyWeak(&v11, (a1 + 40));
  v8 = v3;
  v10 = v8;
  [v6 startCatalogDownload:v7 options:v4 completionWithError:v9];

  objc_destroyWeak(&v11);
}

void __57__WKWallpaperBundleDownloadManager__startCatalogDownload__block_invoke_326(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WKLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[WKWallpaperBundleDownloadManager _startCatalogDownload]_block_invoke";
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1E4A23000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: completed for catalog, error: %@", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [WeakRetained set_catalogDownloadResult:v8];

  [WeakRetained set_catalogDownloadError:v5];
  v9 = [v5 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"checkTimeoutConditions"];

  if (v10)
  {
    v11 = WKLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = "[WKWallpaperBundleDownloadManager _startCatalogDownload]_block_invoke";
      _os_log_impl(&dword_1E4A23000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: received error with MAIsErrorKeySuggestingCheckTimeoutConditions for catalog", buf, 0xCu);
    }

    v12 = [WeakRetained delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__WKWallpaperBundleDownloadManager__startCatalogDownload__block_invoke_332;
      block[3] = &unk_1E8767070;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v14 = *(a1 + 32);
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v14 finishWithResult:v15 error:v5];
}

void __57__WKWallpaperBundleDownloadManager__startCatalogDownload__block_invoke_332(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 downloadManagerDidEncounterNetworkConnectionError];
}

- (WKWallpaperBundleDownloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end