@interface SFDeviceAssetManager
- (BOOL)pathInLocalCache:(id)cache;
- (SFDeviceAssetManager)init;
- (id)cacheDirectory;
- (id)hardcodedMappedProducts;
- (id)localCacheWithFileName:(id)name;
- (id)locallyCachedProductMappings;
- (id)locallyCachedQueryResults;
- (id)onqueue_assetMappedProductTypeForProductType:(id)type;
- (id)onqueue_mappedProductTypeForProductType:(id)type;
- (id)onqueue_sharingManagementAsset;
- (void)activate;
- (void)addQueryResultToLocalCache:(id)cache url:(id)url isFallback:(BOOL)fallback;
- (void)cacheDirectory;
- (void)clearQueryResultFromLocalCache:(id)cache;
- (void)getAssetBundleForDeviceQuery:(id)query withRequestConfiguration:(id)configuration;
- (void)invalidate;
- (void)logNetworkStatus;
- (void)mappedProductTypeForProductType:(id)type completionHandler:(id)handler;
- (void)onqueue_activate;
- (void)onqueue_downloadAsset:(id)asset ucat:(LogCategory *)ucat queryLogString:(id)string withCompletionHandler:(id)handler;
- (void)onqueue_executeNextMAQueryForTask:(id)task;
- (void)onqueue_findAssetBundleForAssetQuery:(id)query ucat:(LogCategory *)ucat queryType:(id)type fallback:(BOOL)fallback retryAttempt:(BOOL)attempt withCompletionHandler:(id)handler;
- (void)onqueue_getAssetBundleForDeviceQuery:(id)query withRequestConfiguration:(id)configuration;
- (void)onqueue_getCachedAssetBundleForTask:(id)task;
- (void)onqueue_invalidate;
- (void)onqueue_manuallyFindFallbackAssetBundleMatchingQuery:(id)query withCompletionHandler:(id)handler;
- (void)onqueue_purgeAssetsMatchingQuery:(id)query;
- (void)onqueue_updateMetaDataWithCompletionHandler:(id)handler;
- (void)onqueue_updateSharingManagementAssetIfNecessary;
- (void)onqueue_validateProductTypeInQuery:(id)query;
- (void)onqueue_variantsMatchingQuery:(id)query completionHandler:(id)handler;
- (void)purgeAssetsMatchingQuery:(id)query;
- (void)setDispatchQueue:(id)queue;
- (void)storeEntries:(id)entries inLocalCacheWithFileName:(id)name;
- (void)variantsMatchingQuery:(id)query completionHandler:(id)handler;
@end

@implementation SFDeviceAssetManager

- (SFDeviceAssetManager)init
{
  v8.receiver = self;
  v8.super_class = SFDeviceAssetManager;
  v2 = [(SFDeviceAssetManager *)&v8 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("com.apple.sharingd.device-assets-work-queue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF("Attempt to set dispatch queue after activate has been called");
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)activate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFDeviceAssetManager_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)onqueue_activate
{
  dispatch_assert_queue_V2(self->_workQueue);
  activateCalled = self->_activateCalled;
  v5 = asset_log(v4);
  v6 = v5;
  if (activateCalled)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SFDeviceAssetManager onqueue_activate];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Activating", v7, 2u);
    }

    self->_activateCalled = 1;
    [(SFDeviceAssetManager *)self logNetworkStatus];
    if (gSFRunningInSharingD == 1)
    {
      [(SFDeviceAssetManager *)self onqueue_updateMetaDataWithCompletionHandler:0];
    }
  }
}

- (void)logNetworkStatus
{
  v19 = *MEMORY[0x1E69E9840];
  networkStatus = [(SFDeviceAssetManager *)self networkStatus];

  if (networkStatus)
  {
    v5 = asset_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      networkStatus2 = [(SFDeviceAssetManager *)self networkStatus];
      *buf = 138412290;
      v18 = networkStatus2;
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (IsAppleInternalBuild())
    {
      [(CUReachabilityMonitor *)self->_reachabilityMonitor invalidate];
      v7 = objc_opt_new();
      reachabilityMonitor = self->_reachabilityMonitor;
      self->_reachabilityMonitor = v7;

      [(CUReachabilityMonitor *)self->_reachabilityMonitor setTimeout:10.0];
      v9 = [MEMORY[0x1E695DFF8] URLWithString:@"https://basejumper.apple.com/"];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor setDestinationURL:v9];

      [(CUReachabilityMonitor *)self->_reachabilityMonitor setCompletionHandler:&__block_literal_global_26];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor activate];
    }
  }

  else if (IsAppleInternalBuild())
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_605;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = MGCopyAnswer();
    v12 = v11;
    v13 = @"Production";
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Network status: %@", v14];

    [(SFDeviceAssetManager *)self setNetworkStatus:v15];

    [(SFDeviceAssetManager *)self logNetworkStatus];
  }
}

void __40__SFDeviceAssetManager_logNetworkStatus__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 code] == -6743)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  v6 = asset_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 localizedDescription];
    v8 = v7;
    v9 = @"Reachable";
    if (v7)
    {
      v9 = v7;
    }

    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Basejumper reachability: %@", &v10, 0xCu);
  }
}

void __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_605(uint64_t a1)
{
  v2 = WiFiCopyCurrentNetworkInfo();
  v3 = [v2 objectForKeyedSubscript:@"ssid"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Network status: Internal device connected to %@", v3];
  [*(a1 + 32) setNetworkStatus:v4];

  if (gSFRunningInSharingD == 1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__6;
    v21 = __Block_byref_object_dispose__6;
    v22 = 0;
    v5 = [(objc_class *)getNEConfigurationManagerClass() sharedManager];
    if (v5)
    {
      v6 = dispatch_get_global_queue(0, 0);
      v7 = dispatch_semaphore_create(0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_612;
      v14[3] = &unk_1E788D630;
      v16 = &v17;
      v8 = v7;
      v15 = v8;
      [v5 loadConfigurationsWithCompletionQueue:v6 handler:v14];
      v9 = dispatch_time(0, 2000000000);
      dispatch_semaphore_wait(v8, v9);
    }

    if (v18[5])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VPN: %@", v18[5]];
    }

    else
    {
      v10 = @"no VPN";
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = [*(a1 + 32) networkStatus];
    v13 = [v11 stringWithFormat:@"%@ with %@", v12, v10];
    [*(a1 + 32) setNetworkStatus:v13];

    _Block_object_dispose(&v17, 8);
  }

  [*(a1 + 32) logNetworkStatus];
}

void __40__SFDeviceAssetManager_logNetworkStatus__block_invoke_612(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 count];
  if (!v5 || v6)
  {
    v8 = [v12 firstObject];
    v9 = [v8 name];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v5 localizedDescription];
    v9 = [v7 stringWithFormat:@"Failed to load due to %@", v8];
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)onqueue_updateMetaDataWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_workQueue);
  v6 = asset_metadata_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[SFDeviceAssetManager onqueue_updateMetaDataWithCompletionHandler:]";
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  getMADownloadOptionsClass(v7);
  v8 = objc_opt_new();
  [v8 setDiscretionary:0];
  v9 = [v8 setAllowsCellularAccess:1];
  MAAssetClass = getMAAssetClass(v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E788D680;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [MAAssetClass startCatalogDownload:@"com.apple.MobileAsset.SharingDeviceAssets" options:v8 then:v12];
}

void __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = asset_metadata_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = a2;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Download meta data completed with result %d", buf, 8u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke_635;
  block[3] = &unk_1E788D658;
  v10 = a2;
  block[4] = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __68__SFDeviceAssetManager_onqueue_updateMetaDataWithCompletionHandler___block_invoke_635(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    [*(a1 + 32) onqueue_updateSharingManagementAssetIfNecessary];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)onqueue_updateSharingManagementAssetIfNecessary
{
  onqueue_sharingManagementAsset = [(SFDeviceAssetManager *)self onqueue_sharingManagementAsset];
  attributes = [onqueue_sharingManagementAsset attributes];
  v5 = getASAttributeContentVersion(attributes);
  v6 = [attributes objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

  v8 = [objc_alloc(getMAAssetQueryClass()) initWithType:@"com.apple.MobileAsset.SharingDeviceAssets"];
  [v8 returnTypes:0];
  SFDeviceAssetAddKeyValuePair(@"Management", @"YES", v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke;
  v10[3] = &unk_1E788D6F8;
  v10[4] = self;
  v11 = v8;
  v12 = integerValue;
  v9 = v8;
  [v9 queryMetaData:v10];
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2;
  v6[3] = &unk_1E788D6D0;
  v9 = a2;
  v4 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, v6);
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v25 = v1;
    v26 = v2;
    v4 = (a1 + 32);
    v5 = [*(a1 + 32) results];
    v6 = [v5 count];

    if (v6)
    {
      v8 = [*v4 results];
      v9 = [v8 count];

      if (v9 >= 2)
      {
        v11 = asset_log(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_cold_1(v4);
        }
      }

      v12 = [*(a1 + 32) results];
      v13 = [v12 firstObject];

      v14 = [v13 attributes];
      v15 = getASAttributeContentVersion(v14);
      v16 = [v14 objectForKeyedSubscript:v15];
      v17 = [v16 integerValue];

      v18 = *(a1 + 56);
      v20 = asset_log(v19);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v17 <= v18)
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "Installed management asset is up-to-date", buf, 2u);
        }
      }

      else
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "Found new management catalog asset", buf, 2u);
        }

        getMADownloadOptionsClass(v22);
        v20 = objc_opt_new();
        [v20 setDiscretionary:0];
        [v20 setAllowsCellularAccess:1];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_640;
        v23[3] = &unk_1E788D6A8;
        v23[4] = *(a1 + 40);
        [v13 startDownload:v20 then:v23];
      }
    }

    else
    {
      v13 = asset_log(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_cold_2();
      }
    }
  }
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_640(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = charging_log(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_640_cold_1();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_641;
    block[3] = &unk_1E788B198;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_641(uint64_t a1)
{
  v2 = asset_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Downloaded new management catalog asset", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v6 = asset_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Updating cached management catalog asset", v7, 2u);
  }

  [*(a1 + 32) onqueue_sharingManagementAsset];
}

- (void)invalidate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFDeviceAssetManager_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)onqueue_invalidate
{
  dispatch_assert_queue_V2(self->_workQueue);
  if (!self->_invalidateCalled)
  {
    *&self->_invalidateCalled = 257;
  }
}

- (void)variantsMatchingQuery:(id)query completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  handlerCopy = handler;
  v8 = asset_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SFDeviceAssetManager variantsMatchingQuery:completionHandler:]";
    v17 = 2112;
    v18 = queryCopy;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SFDeviceAssetManager_variantsMatchingQuery_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v13 = queryCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queryCopy;
  dispatch_async(workQueue, block);
}

void __64__SFDeviceAssetManager_variantsMatchingQuery_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  if (*(a1[4] + 16))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[4];

    [v5 onqueue_variantsMatchingQuery:v3 completionHandler:v4];
  }

  else
  {
    v6 = __64__SFDeviceAssetManager_variantsMatchingQuery_completionHandler___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v6 onqueue_variantsMatchingQuery:v7 completionHandler:v8, v9];
  }
}

- (void)onqueue_variantsMatchingQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_workQueue);
  [(SFDeviceAssetManager *)self onqueue_validateProductTypeInQuery:queryCopy];
  v8 = [objc_alloc(getMAAssetQueryClass()) initWithType:@"com.apple.MobileAsset.SharingDeviceAssets"];
  [v8 returnTypes:2];
  effectiveProductType = [queryCopy effectiveProductType];
  SFDeviceAssetAddKeyValuePair(@"ProductType", effectiveProductType, v8);

  if ([queryCopy legacyAsset])
  {
    if ([queryCopy h264])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    SFDeviceAssetAddKeyValuePair(@"H264", v10, v8);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke;
  v13[3] = &unk_1E788D748;
  v13[4] = self;
  v14 = v8;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = v8;
  [v12 queryMetaData:v13];
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_2;
  block[3] = &unk_1E788A570;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_2(id *a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [a1[4] results];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_3;
  v19[3] = &unk_1E788D720;
  v5 = v2;
  v20 = v5;
  v6 = v3;
  v21 = v6;
  [v4 enumerateObjectsUsingBlock:v19];

  v7 = [a1[4] results];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_4;
  v16[3] = &unk_1E788D720;
  v17 = v6;
  v8 = v5;
  v18 = v8;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v16];

  v10 = [a1[5] dispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_5;
  v13[3] = &unk_1E788B318;
  v11 = a1[6];
  v14 = v8;
  v15 = v11;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 state] == 5)
  {
    v3 = *(a1 + 32);
    v4 = [v8 attributes];
    [v3 addObject:v4];

    v5 = *(a1 + 40);
    v6 = [v8 attributes];
    v7 = [v6 objectForKeyedSubscript:@"VariantName"];
    [v5 addObject:v7];
  }
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 attributes];
  v4 = [v3 objectForKeyedSubscript:@"VariantName"];

  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [v7 attributes];
    [v5 addObject:v6];
  }
}

void __72__SFDeviceAssetManager_onqueue_variantsMatchingQuery_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)getAssetBundleForDeviceQuery:(id)query withRequestConfiguration:(id)configuration
{
  queryCopy = query;
  configurationCopy = configuration;
  if (*[queryCopy ucat] <= 50)
  {
    if (*[queryCopy ucat] != -1 || (objc_msgSend(queryCopy, "ucat"), _LogCategory_Initialize()))
    {
      [SFDeviceAssetManager getAssetBundleForDeviceQuery:queryCopy withRequestConfiguration:configurationCopy];
    }
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SFDeviceAssetManager_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = queryCopy;
  v13 = configurationCopy;
  v9 = configurationCopy;
  v10 = queryCopy;
  dispatch_async(workQueue, block);
}

void __78__SFDeviceAssetManager_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke(void *a1, uint64_t a2)
{
  if (*(a1[4] + 16))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[4];

    [v5 onqueue_getAssetBundleForDeviceQuery:v3 withRequestConfiguration:v4];
  }

  else
  {
    v6 = __78__SFDeviceAssetManager_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v6 onqueue_getCachedAssetBundleForTask:v7, v8];
  }
}

- (void)onqueue_getCachedAssetBundleForTask:(id)task
{
  taskCopy = task;
  locallyCachedQueryResults = [(SFDeviceAssetManager *)self locallyCachedQueryResults];
  deviceAssetQuery = [taskCopy deviceAssetQuery];
  stringIdentifier = [deviceAssetQuery stringIdentifier];
  v7 = [locallyCachedQueryResults objectForKey:stringIdentifier];

  if (!v7)
  {
    deviceAssetQuery2 = [taskCopy deviceAssetQuery];
    if (*[deviceAssetQuery2 ucat] <= 50)
    {
      deviceAssetQuery3 = [taskCopy deviceAssetQuery];
      if (*[deviceAssetQuery3 ucat] == -1)
      {
        deviceAssetQuery4 = [taskCopy deviceAssetQuery];
        [deviceAssetQuery4 ucat];
        v16 = _LogCategory_Initialize();

        if (!v16)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      deviceAssetQuery2 = [taskCopy deviceAssetQuery];
      LogPrintF([deviceAssetQuery2 ucat], "-[SFDeviceAssetManager onqueue_getCachedAssetBundleForTask:]", 50, "No cached entry to take advantage of. Proceeding with query");
    }

    goto LABEL_21;
  }

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v9 = [taskCopy updateTaskWithAssetURL:v8 error:0 isFallback:1 isImperfectMatch:0 isCached:1];

  [taskCopy completeIfPossible];
  deviceAssetQuery2 = [taskCopy deviceAssetQuery];
  v11 = *[deviceAssetQuery2 ucat];
  if (!v9)
  {
    if (v11 <= 90)
    {
      deviceAssetQuery5 = [taskCopy deviceAssetQuery];
      if (*[deviceAssetQuery5 ucat] == -1)
      {
        deviceAssetQuery6 = [taskCopy deviceAssetQuery];
        [deviceAssetQuery6 ucat];
        v20 = _LogCategory_Initialize();

        if (!v20)
        {
LABEL_20:
          deviceAssetQuery2 = [taskCopy deviceAssetQuery];
          [(SFDeviceAssetManager *)self clearQueryResultFromLocalCache:deviceAssetQuery2];
          goto LABEL_21;
        }
      }

      else
      {
      }

      deviceAssetQuery2 = [taskCopy deviceAssetQuery];
      LogPrintF([deviceAssetQuery2 ucat], "-[SFDeviceAssetManager onqueue_getCachedAssetBundleForTask:]", 90, "Invalid bundle at cached path. Clearing cache entry");
    }

    goto LABEL_20;
  }

  if (v11 <= 50)
  {
    deviceAssetQuery7 = [taskCopy deviceAssetQuery];
    if (*[deviceAssetQuery7 ucat] == -1)
    {
      deviceAssetQuery8 = [taskCopy deviceAssetQuery];
      [deviceAssetQuery8 ucat];
      v18 = _LogCategory_Initialize();

      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    deviceAssetQuery2 = [taskCopy deviceAssetQuery];
    LogPrintF([deviceAssetQuery2 ucat], "-[SFDeviceAssetManager onqueue_getCachedAssetBundleForTask:]", 50, "Loaded bundle from cached path. Using cached path, but proceeding with query to potentially update cache");
  }

LABEL_21:

LABEL_22:
}

- (void)onqueue_getAssetBundleForDeviceQuery:(id)query withRequestConfiguration:(id)configuration
{
  queryCopy = query;
  workQueue = self->_workQueue;
  configurationCopy = configuration;
  dispatch_assert_queue_V2(workQueue);
  [(SFDeviceAssetManager *)self onqueue_validateProductTypeInQuery:queryCopy];
  v9 = [SFDeviceAssetTask alloc];
  dispatchQueue = [(SFDeviceAssetManager *)self dispatchQueue];
  v11 = [(SFDeviceAssetTask *)v9 initWithDeviceQuery:queryCopy requestConfiguration:configurationCopy dispatchQueue:dispatchQueue useProcessLocalCache:[(SFDeviceAssetManager *)self useProcessLocalCache]];

  if ([(SFDeviceAssetManager *)self useProcessLocalCache])
  {
    [(SFDeviceAssetManager *)self onqueue_getCachedAssetBundleForTask:v11];
  }

  if ([(SFDeviceAssetManager *)self canUseMobileAssetSPI])
  {
    [(SFDeviceAssetManager *)self onqueue_executeNextMAQueryForTask:v11];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SFDeviceAssetManager_onqueue_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke;
    v12[3] = &unk_1E788D770;
    v13 = v11;
    [(SFDeviceAssetManager *)self onqueue_manuallyFindFallbackAssetBundleMatchingQuery:queryCopy withCompletionHandler:v12];
  }
}

void __86__SFDeviceAssetManager_onqueue_getAssetBundleForDeviceQuery_withRequestConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  [*(a1 + 32) cancelTimeout];
  v6 = [*(a1 + 32) deviceAssetQuery];
  if (*[v6 ucat] <= 50)
  {
    v7 = [*(a1 + 32) deviceAssetQuery];
    if (*[v7 ucat] == -1)
    {
      v8 = [*(a1 + 32) deviceAssetQuery];
      [v8 ucat];
      v9 = _LogCategory_Initialize();

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v6 = [*(a1 + 32) deviceAssetQuery];
    LogPrintF([v6 ucat], "-[SFDeviceAssetManager onqueue_getAssetBundleForDeviceQuery:withRequestConfiguration:]_block_invoke", 50, "Before first unlock so returning manually found asset as match");
  }

LABEL_7:
  [*(a1 + 32) updateTaskWithAssetBundleURL:v10 error:v5 isFallback:0 isImperfectMatch:0 isCached:0];
  [*(a1 + 32) completeIfPossible];
}

- (void)purgeAssetsMatchingQuery:(id)query
{
  queryCopy = query;
  if (*[queryCopy ucat] <= 50)
  {
    if (*[queryCopy ucat] != -1 || (objc_msgSend(queryCopy, "ucat"), _LogCategory_Initialize()))
    {
      [SFDeviceAssetManager purgeAssetsMatchingQuery:queryCopy];
    }
  }

  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFDeviceAssetManager_purgeAssetsMatchingQuery___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
  dispatch_async(workQueue, v7);
}

void __49__SFDeviceAssetManager_purgeAssetsMatchingQuery___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 16))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    [v4 onqueue_purgeAssetsMatchingQuery:v3];
  }

  else
  {
    v5 = __49__SFDeviceAssetManager_purgeAssetsMatchingQuery___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v5 onqueue_purgeAssetsMatchingQuery:v6, v7];
  }
}

- (void)onqueue_purgeAssetsMatchingQuery:(id)query
{
  v26 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dispatch_assert_queue_V2(self->_workQueue);
  [(SFDeviceAssetManager *)self onqueue_validateProductTypeInQuery:queryCopy];
  v5 = objc_opt_new();
  v6 = [[SFDeviceQueryParameters alloc] initWithDeviceAssetQuery:queryCopy installedOnly:1 imperfectMatch:0 fallback:0];
  maQuery = [(SFDeviceQueryParameters *)v6 maQuery];
  SFDeviceAssetAddKeyValuePairsForStrictMatch(queryCopy, maQuery);

  v17 = v6;
  [v5 addObject:v6];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        maQuery2 = [v12 maQuery];
        ucat = [queryCopy ucat];
        queryType = [v12 queryType];
        fallback = [v12 fallback];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke;
        v19[3] = &unk_1E788D798;
        v20 = queryCopy;
        [(SFDeviceAssetManager *)self onqueue_findAssetBundleForAssetQuery:maQuery2 ucat:ucat queryType:queryType fallback:fallback retryAttempt:0 withCompletionHandler:v19];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

void __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = *[v8 ucat];
  if (v5)
  {
    if (v9 <= 50)
    {
      if (*[*v7 ucat] != -1 || (objc_msgSend(*v7, "ucat"), _LogCategory_Initialize()))
      {
        __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_cold_1(v7);
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2;
    v10[3] = &unk_1E788D6A8;
    v11 = *v7;
    [v5 purge:v10];
  }

  else if (v9 <= 10)
  {
    if (*[*v7 ucat] != -1 || (objc_msgSend(*v7, "ucat"), _LogCategory_Initialize()))
    {
      __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_cold_2(v7, v6);
    }
  }
}

int *__57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = (a1 + 32);
  result = [*(a1 + 32) ucat];
  if (*result <= 50)
  {
    if (*[*v3 ucat] != -1)
    {
      return __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2_cold_1(v3, v2);
    }

    [*v3 ucat];
    result = _LogCategory_Initialize();
    if (result)
    {
      return __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_2_cold_1(v3, v2);
    }
  }

  return result;
}

- (id)cacheDirectory
{
  v22[1] = *MEMORY[0x1E69E9840];
  cacheDirectory = self->_cacheDirectory;
  if (!cacheDirectory)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    firstObject = [v4 firstObject];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:firstObject isDirectory:1];
    v7 = [v6 URLByAppendingPathComponent:@"com.apple.sharing" isDirectory:1];

    v20 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v7 path];
    v10 = [defaultManager fileExistsAtPath:path isDirectory:&v20];
    v11 = v20;

    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 && ([defaultManager removeItemAtURL:v7 error:0], v21 = *MEMORY[0x1E696A3A8], v22[0] = MEMORY[0x1E695E118], objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1), v13 = objc_claimAutoreleasedReturnValue(), v19 = 0, objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v7, 1, v13, &v19), v14 = v19, v13, v14))
    {
      v16 = asset_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceAssetManager cacheDirectory];
      }
    }

    else
    {
      v17 = v7;
      v14 = self->_cacheDirectory;
      self->_cacheDirectory = v17;
    }

    cacheDirectory = self->_cacheDirectory;
  }

  return cacheDirectory;
}

- (id)locallyCachedProductMappings
{
  cachedProductMappingsTable = self->_cachedProductMappingsTable;
  if (!cachedProductMappingsTable)
  {
    v4 = [(SFDeviceAssetManager *)self localCacheWithFileName:@"DeviceMapping.plist"];
    v5 = self->_cachedProductMappingsTable;
    self->_cachedProductMappingsTable = v4;

    cachedProductMappingsTable = self->_cachedProductMappingsTable;
  }

  return cachedProductMappingsTable;
}

- (id)locallyCachedQueryResults
{
  cachedQueryPaths = self->_cachedQueryPaths;
  if (!cachedQueryPaths)
  {
    v4 = objc_opt_new();
    v5 = self->_cachedQueryPaths;
    self->_cachedQueryPaths = v4;

    v6 = self->_cachedQueryPaths;
    v7 = [(SFDeviceAssetManager *)self localCacheWithFileName:@"QueryResults.plist"];
    [(NSMutableDictionary *)v6 addEntriesFromDictionary:v7];

    cachedQueryPaths = self->_cachedQueryPaths;
  }

  return cachedQueryPaths;
}

- (void)addQueryResultToLocalCache:(id)cache url:(id)url isFallback:(BOOL)fallback
{
  cacheCopy = cache;
  path = [url path];
  if (path)
  {
    cachedQueryPaths = self->_cachedQueryPaths;
    stringIdentifier = [cacheCopy stringIdentifier];
    v11 = [(NSMutableDictionary *)cachedQueryPaths objectForKeyedSubscript:stringIdentifier];

    if (v11)
    {
      if (fallback || v11 == path || ([v11 isEqual:path] & 1) != 0)
      {
        goto LABEL_14;
      }

      if (*[cacheCopy ucat] > 50 || *objc_msgSend(cacheCopy, "ucat") == -1 && (objc_msgSend(cacheCopy, "ucat"), !_LogCategory_Initialize()))
      {
LABEL_13:
        v13 = self->_cachedQueryPaths;
        stringIdentifier2 = [cacheCopy stringIdentifier];
        [(NSMutableDictionary *)v13 setObject:path forKeyedSubscript:stringIdentifier2];

        [(SFDeviceAssetManager *)self storeEntries:self->_cachedQueryPaths inLocalCacheWithFileName:@"QueryResults.plist"];
LABEL_14:

        goto LABEL_15;
      }

      v12 = "Replacing query result in cache";
    }

    else
    {
      if (*[cacheCopy ucat] > 50)
      {
        goto LABEL_13;
      }

      if (*[cacheCopy ucat] == -1)
      {
        [cacheCopy ucat];
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }
      }

      v12 = "Adding query result to cache";
    }

    [SFDeviceAssetManager addQueryResultToLocalCache:cacheCopy url:v12 isFallback:?];
    goto LABEL_13;
  }

LABEL_15:
}

- (void)clearQueryResultFromLocalCache:(id)cache
{
  cacheCopy = cache;
  cachedQueryPaths = self->_cachedQueryPaths;
  v10 = cacheCopy;
  stringIdentifier = [cacheCopy stringIdentifier];
  v7 = [(NSMutableDictionary *)cachedQueryPaths objectForKeyedSubscript:stringIdentifier];

  if (v7)
  {
    if (*[v10 ucat] <= 50)
    {
      if (*[v10 ucat] != -1 || (objc_msgSend(v10, "ucat"), _LogCategory_Initialize()))
      {
        [SFDeviceAssetManager clearQueryResultFromLocalCache:v10];
      }
    }

    v8 = self->_cachedQueryPaths;
    stringIdentifier2 = [v10 stringIdentifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:stringIdentifier2];

    [(SFDeviceAssetManager *)self storeEntries:self->_cachedQueryPaths inLocalCacheWithFileName:@"QueryResults.plist"];
  }
}

- (BOOL)pathInLocalCache:(id)cache
{
  cacheCopy = cache;
  locallyCachedQueryResults = [(SFDeviceAssetManager *)self locallyCachedQueryResults];
  allValues = [locallyCachedQueryResults allValues];
  v7 = [allValues containsObject:cacheCopy];

  return v7;
}

- (void)onqueue_manuallyFindFallbackAssetBundleMatchingQuery:(id)query withCompletionHandler:(id)handler
{
  v34[3] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  handlerCopy = handler;
  if (*[queryCopy ucat] <= 50)
  {
    if (*[queryCopy ucat] != -1 || (objc_msgSend(queryCopy, "ucat"), _LogCategory_Initialize()))
    {
      [SFDeviceAssetManager onqueue_manuallyFindFallbackAssetBundleMatchingQuery:queryCopy withCompletionHandler:?];
    }
  }

  v24 = queryCopy;
  effectiveProductType = [queryCopy effectiveProductType];
  v7 = [effectiveProductType stringByReplacingOccurrencesOfString:@" withString:{", @"_"}];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/PreinstalledAssetsV2/RequiredByOs/com_apple_MobileAsset_SharingDeviceAssets/" isDirectory:1];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = *MEMORY[0x1E695DC30];
  v11 = *MEMORY[0x1E695DB78];
  v34[0] = *MEMORY[0x1E695DC30];
  v34[1] = v11;
  v34[2] = *MEMORY[0x1E695DBA0];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  v23 = v8;
  v13 = [defaultManager enumeratorAtURL:v8 includingPropertiesForKeys:v12 options:6 errorHandler:0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      v26 = v16;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v28 = 0;
        [v19 getResourceValue:&v28 forKey:v11 error:0];
        v20 = v28;
        v27 = 0;
        [v19 getResourceValue:&v27 forKey:v10 error:0];
        v21 = v27;
        if ([v20 BOOLValue] && objc_msgSend(v21, "hasPrefix:", v7))
        {
          if (*[v24 ucat] <= 50)
          {
            if (*[v24 ucat] != -1 || (objc_msgSend(v24, "ucat"), _LogCategory_Initialize()))
            {
              [SFDeviceAssetManager onqueue_manuallyFindFallbackAssetBundleMatchingQuery:v24 withCompletionHandler:?];
            }
          }

          handlerCopy[2](handlerCopy, v19, 0);
          v16 = v26;
        }

        ++v18;
      }

      while (v16 != v18);
      v22 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v16 = v22;
    }

    while (v22);
  }
}

- (void)onqueue_executeNextMAQueryForTask:(id)task
{
  v25[1] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  dispatch_assert_queue_V2(self->_workQueue);
  deviceAssetQuery = [taskCopy deviceAssetQuery];
  deviceQueryParameters = [taskCopy deviceQueryParameters];
  firstObject = [deviceQueryParameters firstObject];

  deviceQueryParameters2 = [taskCopy deviceQueryParameters];
  [deviceQueryParameters2 removeObject:firstObject];

  if (firstObject)
  {
    queryType = [firstObject queryType];
    fallback = [firstObject fallback];
    maQuery = [firstObject maQuery];
    ucat = [deviceAssetQuery ucat];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke;
    v18[3] = &unk_1E788D7C0;
    v19 = deviceAssetQuery;
    selfCopy = self;
    v23 = fallback;
    v21 = taskCopy;
    v22 = firstObject;
    [(SFDeviceAssetManager *)self onqueue_findAssetBundleForAssetQuery:maQuery ucat:ucat queryType:queryType fallback:fallback retryAttempt:0 withCompletionHandler:v18];
  }

  else
  {
    if (*[deviceAssetQuery ucat] <= 50)
    {
      if (*[deviceAssetQuery ucat] != -1 || (objc_msgSend(deviceAssetQuery, "ucat"), _LogCategory_Initialize()))
      {
        [SFDeviceAssetManager onqueue_executeNextMAQueryForTask:deviceAssetQuery];
      }
    }

    if (([taskCopy queryResultCalled] & 1) == 0)
    {
      fallbackBundle = [taskCopy fallbackBundle];

      if (!fallbackBundle)
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = *MEMORY[0x1E696A798];
        v24 = *MEMORY[0x1E696A578];
        v25[0] = @"No assets found";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v17 = [v14 errorWithDomain:v15 code:22 userInfo:v16];
        [taskCopy updateTaskWithBundle:0 error:v17 isFallback:0 isImperfectMatch:0 isCached:0];

        [taskCopy completeWithBundle:0 isFallback:0 isCached:0];
      }
    }
  }
}

void __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 getLocalFileUrl];
  if (v5)
  {
    v8 = (a1 + 32);
    if (*[*(a1 + 32) ucat] <= 50)
    {
      if (*[*v8 ucat] != -1 || (objc_msgSend(*v8, "ucat"), _LogCategory_Initialize()))
      {
        __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke_cold_1((a1 + 32), v5);
      }
    }
  }

  if ([*(a1 + 40) useProcessLocalCache])
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [*(a1 + 40) addQueryResultToLocalCache:*(a1 + 32) url:v7 isFallback:*(a1 + 64)];
  }

  [*(a1 + 48) updateTaskWithAssetURL:v7 error:v6 isFallback:*(a1 + 64) isImperfectMatch:objc_msgSend(*(a1 + 56) isCached:{"imperfectMatch"), 0}];

  if ([*(a1 + 48) completeIfPossible])
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(v11 + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke_2;
    v13[3] = &unk_1E788A658;
    v13[4] = v11;
    v14 = v10;
    dispatch_async(v12, v13);
  }
}

- (void)onqueue_findAssetBundleForAssetQuery:(id)query ucat:(LogCategory *)ucat queryType:(id)type fallback:(BOOL)fallback retryAttempt:(BOOL)attempt withCompletionHandler:(id)handler
{
  attemptCopy = attempt;
  queryCopy = query;
  typeCopy = type;
  handlerCopy = handler;
  v29 = 0;
  v16 = LogCategoryCreateEx();
  v17 = v16;
  if (*v16 <= 50 && (*v16 != -1 || _LogCategory_Initialize()))
  {
    v18 = &stru_1F1D30528;
    if (attemptCopy)
    {
      v18 = @"Retrying ";
    }

    LogPrintF(v17, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]", 50, "%@Finding %@", v18, typeCopy);
  }

  dispatch_assert_queue_V2(self->_workQueue);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke;
  v22[3] = &unk_1E788D888;
  v22[4] = self;
  v23 = queryCopy;
  v25 = handlerCopy;
  v26 = v17;
  v24 = typeCopy;
  fallbackCopy = fallback;
  v28 = attemptCopy;
  v19 = handlerCopy;
  v20 = typeCopy;
  v21 = queryCopy;
  [v21 queryMetaData:v22];
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E788D860;
  v12 = a2;
  v4 = *(a1 + 40);
  v13 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = v6;
  v14 = *(a1 + 72);
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, block);
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = [*(a1 + 32) results];
    v3 = [v2 count];

    if (!v3)
    {
      v7 = *(a1 + 64);
      if (v7 != 5)
      {
        if (v7 != 2 || (*(a1 + 81) & 1) != 0)
        {
          v8 = *(a1 + 72);
          if (*v8 <= 90)
          {
            if (*v8 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_24;
              }

              v7 = *(a1 + 64);
              v8 = *(a1 + 72);
            }

            LogPrintF(v8, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_2", 90, "Failed to query for metadata for %@ with result %d", *(a1 + 40), v7);
          }

LABEL_24:
          v26 = 14;
LABEL_27:
          v27 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E696A798];
          v50 = *MEMORY[0x1E696A578];
          v29 = *(a1 + 56);
          v30 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 64)];
          v51 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v32 = [v27 errorWithDomain:v28 code:v26 userInfo:v31];
          (*(v29 + 16))(v29, 0, v32);

          return;
        }

        v25 = *(a1 + 72);
        if (*v25 <= 50)
        {
          if (*v25 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_30;
            }

            v25 = *(a1 + 72);
          }

          LogPrintF(v25, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_2", 50, "Attempting to retrieve missing XML");
        }

LABEL_30:
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_5;
        v39[3] = &unk_1E788D838;
        v33 = *(a1 + 48);
        v34 = *(a1 + 32);
        v42 = *(a1 + 72);
        v35 = *(a1 + 40);
        v44 = *(a1 + 80);
        v36 = *(a1 + 56);
        *&v37 = v35;
        *(&v37 + 1) = v36;
        *&v38 = v33;
        *(&v38 + 1) = v34;
        v40 = v38;
        v41 = v37;
        v43 = *(a1 + 64);
        [v33 onqueue_updateMetaDataWithCompletionHandler:v39];

        v17 = *(&v40 + 1);
        goto LABEL_15;
      }

      v23 = *(a1 + 72);
      if (*v23 <= 90)
      {
        if (*v23 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          v23 = *(a1 + 72);
        }

        v24 = [*(a1 + 32) assetType];
        LogPrintF(v23, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_2", 90, "Process is not entitled to access %@", v24);
      }

LABEL_26:
      v26 = 80;
      goto LABEL_27;
    }
  }

  v4 = *(a1 + 72);
  if (*v4 <= 50)
  {
    if (*v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 72);
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) results];
    LogPrintF(v4, "-[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_2", 50, "Query for %@ returned %d results", v5, [v6 count]);
  }

LABEL_13:
  v9 = [*(a1 + 32) results];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [*(a1 + 32) results];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_3;
    v45[3] = &unk_1E788D810;
    v48 = *(a1 + 72);
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v49 = *(a1 + 80);
    v14 = *(a1 + 56);
    *&v15 = *(a1 + 48);
    *(&v15 + 1) = v14;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v46 = v16;
    v47 = v15;
    [v11 enumerateObjectsUsingBlock:v45];

    v17 = v46;
LABEL_15:

    return;
  }

  v18 = *(a1 + 56);
  v19 = MEMORY[0x1E696ABC0];
  v20 = *MEMORY[0x1E696A798];
  v52 = *MEMORY[0x1E696A578];
  v53[0] = @"Failed to find any assets";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v22 = [v19 errorWithDomain:v20 code:2 userInfo:v21];
  (*(v18 + 16))(v18, 0, v22);
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, char *a3, _BYTE *a4)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(a1 + 64);
  if (*v8 <= 50)
  {
    if (*v8 != -1)
    {
LABEL_3:
      v9 = *(a1 + 32);
      v10 = [v7 assetId];
      v11 = [v7 state];
      v12 = [v7 attributes];
      v13 = SFCompactStringFromCollection(v12);
      LogPrintF(v8, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_3", 50, "%@ with identifier %@ has state %d and attributes %@", v9, v10, v11, v13);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v8 = *(a1 + 64);
      goto LABEL_3;
    }
  }

LABEL_5:
  [v7 logAsset];
  v14 = [*(a1 + 40) results];
  v15 = [v14 count];

  v16 = [v7 state];
  if (v16 == 5)
  {
    goto LABEL_13;
  }

  v17 = (v15 - 1);
  if (v16 == 3)
  {
    v21 = *(a1 + 64);
    if (*v21 <= 50)
    {
      if (*v21 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v21 = *(a1 + 64);
      }

      v22 = [v7 attributes];
      v23 = SFCompactStringFromCollection(v22);
      LogPrintF(v21, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_3", 50, "Found installed asset that no longer is downloadable with attributes %@.", v23);
    }

LABEL_23:
    v25 = [v7 getLocalFileUrl];
    v26 = [v25 path];

    if (!v26 || ![*(a1 + 48) useProcessLocalCache] || !objc_msgSend(*(a1 + 48), "pathInLocalCache:", v26))
    {
      v28 = *(a1 + 64);
      if (*v28 <= 50)
      {
        if (*v28 != -1 || (v29 = _LogCategory_Initialize(), v28 = *(a1 + 64), v29))
        {
          LogPrintF(v28, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_3", 50, "Purging installed asset");
          v28 = *(a1 + 64);
        }
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_4;
      v35[3] = &unk_1E788D7E8;
      v37 = v28;
      v36 = v7;
      [v36 purge:v35];

      goto LABEL_34;
    }

    v27 = *(a1 + 64);
    if (*v27 <= 50)
    {
      if (*v27 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        v27 = *(a1 + 64);
      }

      LogPrintF(v27, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_3", 50, "Delaying purging as installed asset is still referenced in the cache");
    }

LABEL_34:
    if (v17 == a3)
    {
      v30 = *(a1 + 56);
      v31 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A798];
      v38 = *MEMORY[0x1E696A578];
      v39[0] = @"Failed to find any still valid assets";
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v34 = [v31 errorWithDomain:v32 code:79 userInfo:v33];
      (*(v30 + 16))(v30, 0, v34);
    }

    goto LABEL_37;
  }

  if (v16 != 2)
  {
    [*(a1 + 48) onqueue_downloadAsset:v7 ucat:*(a1 + 64) queryLogString:*(a1 + 32) withCompletionHandler:*(a1 + 56)];
    goto LABEL_18;
  }

  if (*(a1 + 72) != 1)
  {
LABEL_13:
    (*(*(a1 + 56) + 16))();
LABEL_18:
    *a4 = 1;
    goto LABEL_37;
  }

  v18 = *(a1 + 64);
  v19 = *v18;
  if (v17 == a3)
  {
    if (v19 <= 90)
    {
      if (v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v18 = *(a1 + 64);
      }

      v20 = [v7 assetId];
      LogPrintF(v18, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_3", 90, "Found no fallback asset, so picking asset with identifier %@ as a fallback %@", v20, *(a1 + 32));
    }

LABEL_39:
    (*(*(a1 + 56) + 16))();
    goto LABEL_37;
  }

  if (v19 <= 50)
  {
    if (v19 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }

      v18 = *(a1 + 64);
    }

    v24 = [v7 assetId];
    LogPrintF(v18, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_3", 50, "Skipping asset with identifier %@ as we are just looking for %@", v24, *(a1 + 32));
  }

LABEL_37:
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (*v2 <= 50)
  {
    if (*v2 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(a1 + 40);
    }

    v5 = [*(a1 + 32) assetId];
    LogPrintF(v2, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_4", 50, "Purging of %@ that is no longer downladable completed with result %d", v5, a2);
  }
}

void __120__SFDeviceAssetManager_onqueue_findAssetBundleForAssetQuery_ucat_queryType_fallback_retryAttempt_withCompletionHandler___block_invoke_5(uint64_t a1, int a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v9 = *(a1 + 64);
    if (*v9 <= 60)
    {
      if (*v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v9 = *(a1 + 64);
      }

      LogPrintF(v9, "[SFDeviceAssetManager onqueue_findAssetBundleForAssetQuery:ucat:queryType:fallback:retryAttempt:withCompletionHandler:]_block_invoke_5", 60, "Failed to retrieve missing XML");
    }

LABEL_9:
    v10 = *(a1 + 56);
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v16 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v11 errorWithDomain:v12 code:6 userInfo:v14];
    (*(v10 + 16))(v10, 0, v15);

    return;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 48);

  [v3 onqueue_findAssetBundleForAssetQuery:v4 ucat:v5 queryType:v8 fallback:v7 retryAttempt:1 withCompletionHandler:v6];
}

- (void)onqueue_downloadAsset:(id)asset ucat:(LogCategory *)ucat queryLogString:(id)string withCompletionHandler:(id)handler
{
  assetCopy = asset;
  stringCopy = string;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_workQueue);
  if (ucat->var0 <= 50)
  {
    if (ucat->var0 != -1 || (v13 = _LogCategory_Initialize(), v13))
    {
      v13 = LogPrintF(ucat, "[SFDeviceAssetManager onqueue_downloadAsset:ucat:queryLogString:withCompletionHandler:]", 50, "Downloading %@", stringCopy);
    }
  }

  getMADownloadOptionsClass(v13);
  v14 = objc_opt_new();
  [v14 setDiscretionary:0];
  [v14 setAllowsCellularAccess:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke;
  v18[3] = &unk_1E788D8D8;
  v21 = handlerCopy;
  ucatCopy = ucat;
  v18[4] = self;
  v19 = stringCopy;
  v20 = assetCopy;
  v15 = assetCopy;
  v16 = handlerCopy;
  v17 = stringCopy;
  [v15 startDownload:v14 then:v18];
}

void __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E788D8B0;
  v4 = *(a1 + 64);
  v9 = a2;
  v10 = v4;
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  dispatch_async(v3, block);
}

void __88__SFDeviceAssetManager_onqueue_downloadAsset_ucat_queryLogString_withCompletionHandler___block_invoke_2(void *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a1[7];
  v2 = a1[8];
  v4 = *v2;
  if (v3)
  {
    if (v4 <= 90)
    {
      if (v4 == -1)
      {
        v6 = _LogCategory_Initialize();
        v3 = a1[7];
        if (!v6)
        {
          goto LABEL_10;
        }

        v2 = a1[8];
      }

      LogPrintF(v2, "[SFDeviceAssetManager onqueue_downloadAsset:ucat:queryLogString:withCompletionHandler:]_block_invoke_2", 90, "Failed to download the %@ with result %d", a1[4], v3);
      v3 = a1[7];
    }

LABEL_10:
    v7 = a1[6];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v14 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v8 errorWithDomain:v9 code:35 userInfo:v11];
    (*(v7 + 16))(v7, 0, v12);

    return;
  }

  if (v4 <= 50)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v2 = a1[8];
      v5 = *(a1 + 14);
    }

    else
    {
      v5 = 0;
    }

    LogPrintF(v2, "[SFDeviceAssetManager onqueue_downloadAsset:ucat:queryLogString:withCompletionHandler:]_block_invoke_2", 50, "Got the download asset result %d for %@", v5, a1[4]);
  }

LABEL_12:
  v13 = *(a1[6] + 16);

  v13();
}

- (void)onqueue_validateProductTypeInQuery:(id)query
{
  workQueue = self->_workQueue;
  queryCopy = query;
  dispatch_assert_queue_V2(workQueue);
  productType = [queryCopy productType];
  v8 = [(SFDeviceAssetManager *)self onqueue_mappedProductTypeForProductType:productType];

  if ([v8 length])
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  [queryCopy setMappedProductType:v7];
}

- (void)mappedProductTypeForProductType:(id)type completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  v8 = asset_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SFDeviceAssetManager mappedProductTypeForProductType:completionHandler:]";
    v17 = 2112;
    v18 = typeCopy;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SFDeviceAssetManager_mappedProductTypeForProductType_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v13 = typeCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = typeCopy;
  dispatch_async(workQueue, block);
}

void __74__SFDeviceAssetManager_mappedProductTypeForProductType_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[16])
  {
    v9 = [v2 onqueue_mappedProductTypeForProductType:a1[5]];
    v3 = a1[6];
    v4 = [v9 length];
    v5 = v9;
    if (!v4)
    {
      v5 = a1[5];
    }

    (*(v3 + 16))(v3, v5);
  }

  else
  {
    __74__SFDeviceAssetManager_mappedProductTypeForProductType_completionHandler___block_invoke_cold_1();
    [(SFDeviceAssetManager *)v6 onqueue_mappedProductTypeForProductType:v7, v8];
  }
}

- (id)onqueue_mappedProductTypeForProductType:(id)type
{
  v18 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dispatch_assert_queue_V2(self->_workQueue);
  hardcodedMappedProducts = [(SFDeviceAssetManager *)self hardcodedMappedProducts];
  v6 = [hardcodedMappedProducts objectForKey:typeCopy];

  if (v6)
  {
    v8 = asset_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = typeCopy;
      v16 = 2112;
      v17 = v6;
      v9 = "Mapped product type using hardcoded mapping %@ => %@";
LABEL_11:
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 0x16u);
    }
  }

  else if (-[SFDeviceAssetManager useProcessLocalCache](self, "useProcessLocalCache") && (-[SFDeviceAssetManager locallyCachedProductMappings](self, "locallyCachedProductMappings"), v10 = objc_claimAutoreleasedReturnValue(), [v10 objectForKey:typeCopy], v6 = objc_claimAutoreleasedReturnValue(), v10, v6))
  {
    v8 = asset_log(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = typeCopy;
      v16 = 2112;
      v17 = v6;
      v9 = "Mapped product type using cached mapping %@ => %@";
      goto LABEL_11;
    }
  }

  else
  {
    v12 = [(SFDeviceAssetManager *)self onqueue_assetMappedProductTypeForProductType:typeCopy];
    v6 = v12;
    if (!v12)
    {
      goto LABEL_13;
    }

    v8 = asset_log(v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = typeCopy;
      v16 = 2112;
      v17 = v6;
      v9 = "Mapped product type using remote mapping %@ => %@";
      goto LABEL_11;
    }
  }

LABEL_13:

  return v6;
}

- (id)onqueue_sharingManagementAsset
{
  dispatch_assert_queue_V2(self->_workQueue);
  deviceAssetManagement = self->_deviceAssetManagement;
  if (deviceAssetManagement)
  {
LABEL_6:
    v7 = deviceAssetManagement;
    goto LABEL_7;
  }

  if ([(SFDeviceAssetManager *)self canUseMobileAssetSPI])
  {
    v4 = [objc_alloc(getMAAssetQueryClass()) initWithType:@"com.apple.MobileAsset.SharingDeviceAssets"];
    [v4 returnTypes:1];
    SFDeviceAssetAddKeyValuePair(@"Management", @"YES", v4);
    if (![v4 queryMetaDataSync])
    {
      results = [v4 results];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke;
      v10[3] = &unk_1E788D900;
      v10[4] = self;
      [results enumerateObjectsUsingBlock:v10];

      results2 = [v4 results];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke_2;
      v9[3] = &unk_1E788D900;
      v9[4] = self;
      [results2 enumerateObjectsUsingBlock:v9];
    }

    deviceAssetManagement = self->_deviceAssetManagement;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

void __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v4 = [*(*(a1 + 32) + 24) attributes];
  v5 = getASAttributeContentVersion(v4);
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  v8 = [v12 attributes];
  v9 = getASAttributeContentVersion(v8);
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 integerValue];

  if (v11 > v7)
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
  }
}

void __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqual:*(*(a1 + 32) + 24)] & 1) == 0 && objc_msgSend(v3, "state") != 5)
  {
    [v3 purge:&__block_literal_global_718];
  }
}

void __54__SFDeviceAssetManager_onqueue_sharingManagementAsset__block_invoke_3(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = asset_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Purging of old management asset completed with result %d", v4, 8u);
  }
}

- (id)onqueue_assetMappedProductTypeForProductType:(id)type
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dispatch_assert_queue_V2(self->_workQueue);
  productTypesMappingTable = self->_productTypesMappingTable;
  if (!productTypesMappingTable)
  {
    onqueue_sharingManagementAsset = [(SFDeviceAssetManager *)self onqueue_sharingManagementAsset];
    hardcodedMappedProducts = [(SFDeviceAssetManager *)self hardcodedMappedProducts];
    v8 = [hardcodedMappedProducts mutableCopy];

    getLocalFileUrl = [onqueue_sharingManagementAsset getLocalFileUrl];
    v10 = [getLocalFileUrl URLByAppendingPathComponent:@"DeviceMapping.plist" isDirectory:0];
    if (v10)
    {
      v21 = onqueue_sharingManagementAsset;
      v23 = 0;
      v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:0 error:&v23];
      v12 = v23;
      v13 = v12;
      if (v11)
      {
        v22 = 0;
        v14 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v22];
        v15 = v22;

        if (v14)
        {
          v17 = asset_log([v8 addEntriesFromDictionary:v14]);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v14 count];
            *buf = 136315394;
            v25 = "[SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:]";
            v26 = 1024;
            v27 = v18;
            _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "%s Loaded mapping table with %d entries", buf, 0x12u);
          }
        }

        else
        {
          v17 = asset_log(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:];
          }
        }
      }

      else
      {
        v14 = asset_log(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:];
        }

        v15 = v13;
      }

      onqueue_sharingManagementAsset = v21;
    }

    else
    {
      v11 = asset_log(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceAssetManager onqueue_assetMappedProductTypeForProductType:];
      }

      v15 = 0;
    }

    objc_storeStrong(&self->_productTypesMappingTable, v8);
    if ([(SFDeviceAssetManager *)self useProcessLocalCache])
    {
      [(SFDeviceAssetManager *)self storeProductMappingsInLocalCache:v8];
    }

    productTypesMappingTable = self->_productTypesMappingTable;
  }

  v19 = [(NSDictionary *)productTypesMappingTable objectForKeyedSubscript:typeCopy];

  return v19;
}

- (id)hardcodedMappedProducts
{
  if (hardcodedMappedProducts_onceToken != -1)
  {
    [SFDeviceAssetManager hardcodedMappedProducts];
  }

  v3 = hardcodedMappedProducts_hardcodedMappedProducts;

  return v3;
}

void __47__SFDeviceAssetManager_hardcodedMappedProducts__block_invoke()
{
  v27[31] = *MEMORY[0x1E69E9840];
  v26[0] = @"AudioAccessory1,1";
  v26[1] = @"Device1,8194";
  v27[0] = &stru_1F1D30528;
  v27[1] = @"AirPods1,1";
  v26[2] = @"Device1,8195";
  v26[3] = @"Device1,8197";
  v27[2] = @"PowerBeats3,1";
  v27[3] = @"BeatsX1,1";
  v26[4] = @"Device1,8198";
  v26[5] = @"Device1,8199";
  v27[4] = @"BeatsSolo3,1";
  v27[5] = @"BeatsStudio3,1";
  v26[6] = @"Device1,8201";
  v26[7] = @"Device1,8203";
  v27[6] = @"BeatsStudio3,2";
  v27[7] = @"PowerbeatsPro1,1";
  v26[8] = @"Device1,8206";
  v26[9] = @"Device1,8207";
  v27[8] = @"AirPodsPro1,1";
  v27[9] = @"AirPods1,2";
  v26[10] = @"Device1,8209";
  v26[11] = @"Device1,65536";
  v27[10] = @"BeatsStudioBuds1,1";
  v27[11] = @"AirPods1,2";
  v26[12] = @"Device1,8205";
  v26[13] = @"AirTag1,1";
  v27[12] = @"Powerbeats4,1";
  v27[13] = @"AirTag1,1";
  v26[14] = @"Device1,8204";
  v26[15] = @"Device1,8202";
  v27[14] = @"BeatsSoloPro1,1";
  v27[15] = @"AirPodsMax1,1";
  v26[16] = @"Device1,8208";
  v26[17] = @"AudioAccessory5,1";
  v27[16] = @"BeatsX2,1";
  v27[17] = &stru_1F1D30528;
  v25 = +[SFHeadphoneProduct b688];
  v24 = [v25 bluetoothModel];
  v26[18] = v24;
  v27[18] = @"AirPods1,3";
  v23 = +[SFHeadphoneProduct b768e];
  v22 = [v23 bluetoothModel];
  v26[19] = v22;
  v27[19] = @"AirPods1,4";
  v21 = +[SFHeadphoneProduct b768m];
  v20 = [v21 bluetoothModel];
  v26[20] = v20;
  v27[20] = @"AirPods1,5";
  v19 = +[SFHeadphoneProduct b494];
  v18 = [v19 bluetoothModel];
  v26[21] = v18;
  v27[21] = @"BeatsFitPro1,1";
  v17 = +[SFHeadphoneProduct b698];
  v16 = [v17 bluetoothModel];
  v26[22] = v16;
  v26[23] = @"Device1,8228";
  v27[22] = @"AirPodsPro1,2";
  v27[23] = @"AirPodsPro1,2";
  v15 = +[SFHeadphoneProduct b788];
  v14 = [v15 bluetoothModel];
  v26[24] = v14;
  v27[24] = @"AirPodsPro1,3";
  v13 = +[SFHeadphoneProduct b607];
  v12 = [v13 bluetoothModel];
  v26[25] = v12;
  v27[25] = @"BeatsStudioBuds1,2";
  v0 = +[SFHeadphoneProduct b463];
  v1 = [v0 bluetoothModel];
  v26[26] = v1;
  v27[26] = @"BeatsSoloBuds1,1";
  v2 = +[SFHeadphoneProduct b453];
  v3 = [v2 bluetoothModel];
  v26[27] = v3;
  v27[27] = @"BeatsStudioPro1,1";
  v4 = +[SFHeadphoneProduct b465];
  v5 = [v4 bluetoothModel];
  v26[28] = v5;
  v27[28] = @"BeatsSolo4,1";
  v6 = +[SFHeadphoneProduct b487];
  v7 = [v6 bluetoothModel];
  v26[29] = v7;
  v27[29] = @"BeatsPill1,2";
  v8 = +[SFHeadphoneProduct b498];
  v9 = [v8 bluetoothModel];
  v26[30] = v9;
  v27[30] = @"PowerbeatsPro2,1";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:31];
  v11 = hardcodedMappedProducts_hardcodedMappedProducts;
  hardcodedMappedProducts_hardcodedMappedProducts = v10;
}

- (id)localCacheWithFileName:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  cacheDirectory = [(SFDeviceAssetManager *)self cacheDirectory];
  v6 = [cacheDirectory URLByAppendingPathComponent:nameCopy isDirectory:0];

  v20 = 0;
  CanAccessURL = SFDeviceAssetProcessCanAccessURL(v6, &v20);
  v8 = v20;
  if (CanAccessURL)
  {
    v19 = v8;
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6 options:0 error:&v19];
    v10 = v19;

    if (v9)
    {
      v17 = 0;
      v18 = 0;
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:&v18 error:&v17];
      v8 = v17;

      v12 = [v11 count];
      if (v12)
      {
        v13 = asset_log(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v11 count];
          *buf = 67109378;
          v22 = v14;
          v23 = 2112;
          v24 = nameCopy;
          _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Loaded %d %@ entries from cache", buf, 0x12u);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v8 = v10;
    }
  }

  if (!v8 || [v8 code] == -1100 || objc_msgSend(v8, "code") == 260 || (v15 = objc_msgSend(v8, "code"), v15 == 4))
  {
    v11 = 0;
    goto LABEL_19;
  }

  v9 = asset_log(v15);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SFDeviceAssetManager localCacheWithFileName:];
  }

  v11 = 0;
LABEL_18:

LABEL_19:

  return v11;
}

- (void)storeEntries:(id)entries inLocalCacheWithFileName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  nameCopy = name;
  v8 = asset_log(nameCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v19 = [entriesCopy count];
    v20 = 2112;
    v21 = nameCopy;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Persisting %d entries to %@ cache", buf, 0x12u);
  }

  cacheDirectory = [(SFDeviceAssetManager *)self cacheDirectory];
  v10 = [cacheDirectory URLByAppendingPathComponent:nameCopy isDirectory:0];

  v17 = 0;
  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:entriesCopy format:200 options:0 error:&v17];
  v12 = v11;
  if (v11)
  {
    v16 = 0;
    [v11 writeToURL:v10 options:0x10000000 error:&v16];
    v13 = v16;
    if (v13)
    {
      v14 = v13;
      v15 = asset_log(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceAssetManager storeEntries:inLocalCacheWithFileName:];
      }
    }
  }
}

void __71__SFDeviceAssetManager_onqueue_updateSharingManagementAssetIfNecessary__block_invoke_2_cold_1(id *a1)
{
  v1 = [*a1 results];
  [v1 count];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

uint64_t __57__SFDeviceAssetManager_onqueue_purgeAssetsMatchingQuery___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 ucat];

  return LogPrintF(v1, "[SFDeviceAssetManager onqueue_purgeAssetsMatchingQuery:]_block_invoke", 50, "Purging asset");
}

- (void)cacheDirectory
{
  OUTLINED_FUNCTION_3_6();
  path = [v0 path];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (uint64_t)addQueryResultToLocalCache:(void *)a1 url:(const char *)a2 isFallback:.cold.1(void *a1, const char *a2)
{
  v3 = [a1 ucat];

  return LogPrintF(v3, "[SFDeviceAssetManager addQueryResultToLocalCache:url:isFallback:]", 50, a2);
}

- (uint64_t)clearQueryResultFromLocalCache:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 ucat];

  return LogPrintF(v1, "[SFDeviceAssetManager clearQueryResultFromLocalCache:]", 50, "Removing query result from cache");
}

void __58__SFDeviceAssetManager_onqueue_executeNextMAQueryForTask___block_invoke_cold_1(id *a1, void *a2)
{
  v3 = [*a1 ucat];
  v5 = [a2 attributes];
  v4 = [v5 objectForKeyedSubscript:@"VariantName"];
  LogPrintF(v3, "[SFDeviceAssetManager onqueue_executeNextMAQueryForTask:]_block_invoke", 50, "Found variant with name %@", v4);
}

- (void)onqueue_assetMappedProductTypeForProductType:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  [v0 length];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)onqueue_assetMappedProductTypeForProductType:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)onqueue_assetMappedProductTypeForProductType:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)localCacheWithFileName:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v1 = [v0 path];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)storeEntries:inLocalCacheWithFileName:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v1 = [v0 path];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end