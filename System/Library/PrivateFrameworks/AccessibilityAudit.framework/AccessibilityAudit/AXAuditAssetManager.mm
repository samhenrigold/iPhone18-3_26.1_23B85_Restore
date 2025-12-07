@interface AXAuditAssetManager
+ (AXAuditAssetManager)shared;
- (AXAuditAssetManager)init;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)downloadAssetsIfNecessary;
@end

@implementation AXAuditAssetManager

+ (AXAuditAssetManager)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__AXAuditAssetManager_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_instance;

  return v2;
}

uint64_t __29__AXAuditAssetManager_shared__block_invoke(uint64_t a1)
{
  shared_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXAuditAssetManager)init
{
  v8.receiver = self;
  v8.super_class = AXAuditAssetManager;
  v2 = [(AXAuditAssetManager *)&v8 init];
  if (v2)
  {
    policy = [MEMORY[0x277CE6690] policy];
    iconVisionModelAssetPolicy = v2->__iconVisionModelAssetPolicy;
    v2->__iconVisionModelAssetPolicy = policy;

    policy2 = [MEMORY[0x277CE6688] policy];
    elementVisionModelAssetPolicy = v2->__elementVisionModelAssetPolicy;
    v2->__elementVisionModelAssetPolicy = policy2;
  }

  return v2;
}

- (void)downloadAssetsIfNecessary
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "[AXAuditAssetManager downloadAssetsIfNecessary]";
  _os_log_debug_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s", &v0, 0xCu);
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  assetsCopy = assets;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    assetPolicy = [controllerCopy assetPolicy];
    *buf = 136315394;
    v30 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
    v31 = 2112;
    v32 = assetPolicy;
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: for policy: %@", buf, 0x16u);
  }

  if (successful)
  {
    if ([assetsCopy count])
    {
      v22 = controllerCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
        v31 = 2112;
        v32 = assetsCopy;
        _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Found assets: %@", buf, 0x16u);
      }

      array = [MEMORY[0x277CBEB18] array];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = assetsCopy;
      v13 = assetsCopy;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        v17 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            if ([v19 isInstalled])
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v30 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
                v31 = 2112;
                v32 = v19;
                _os_log_impl(&dword_23D6FE000, v17, OS_LOG_TYPE_INFO, "%s: Asset already downloaded! Asset: %@", buf, 0x16u);
              }
            }

            else if (([v19 isInstalled] & 1) == 0 && (objc_msgSend(v19, "isDownloading") & 1) == 0)
            {
              [array addObject:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }

      controllerCopy = v22;
      errorCopy = v20;
      if ([array count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v30 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
          v31 = 2112;
          v32 = array;
          _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Need to download assets: %@", buf, 0x16u);
        }

        [v22 downloadAssets:array successStartBlock:&__block_literal_global_21];
      }

      assetsCopy = v21;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
  }
}

void __85__AXAuditAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = 136315138;
      v3 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]_block_invoke";
      _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Successfully downloaded assets!", &v2, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __85__AXAuditAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1();
  }
}

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  assetCopy = asset;
  errorCopy = error;
  if (successful)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[AXAuditAssetManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:]";
      v15 = 2112;
      v16 = assetCopy;
      _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: asset successfully installed! %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditAssetManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:];
  }
}

- (void)assetController:didFinishRefreshingAssets:wasSuccessful:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end