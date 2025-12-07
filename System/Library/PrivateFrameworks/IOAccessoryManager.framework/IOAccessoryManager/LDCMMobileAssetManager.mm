@interface LDCMMobileAssetManager
- (LDCMMobileAssetManager)init;
- (LDCMMobileAssetManagerDelegate)delegate;
- (void)downloadAsset:(id)asset;
- (void)downloadCatalog;
- (void)processAsset:(id)asset;
- (void)queryMetadata;
- (void)scheduleNextQueryAsRetry:(BOOL)retry;
- (void)updateMetadata;
@end

@implementation LDCMMobileAssetManager

- (LDCMMobileAssetManager)init
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = LDCMMobileAssetManager;
  v2 = [(LDCMMobileAssetManager *)&v23 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[LDCMMobileAssetManager init]";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Initializing LDCM Asset Manager", buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(9, 0);
  v5 = dispatch_queue_create_with_target_V2("LDCMAssetManagerQueue", 0, v4);
  assetManagerQueue = v3->_assetManagerQueue;
  v3->_assetManagerQueue = v5;

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3->_assetManagerQueue);
  timer = v3->_timer;
  v3->_timer = v7;

  if (v3->_timer)
  {
    v3->_lastProcessedAssetVersion = 0;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [(LDCMMobileAssetManager *)standardUserDefaults integerForKey:@"LDCMAssetQueryFrequency"];
    v11 = [(LDCMMobileAssetManager *)standardUserDefaults integerForKey:@"LDCMAssetQueryFrequencyTolerance"];
    v12 = [(LDCMMobileAssetManager *)standardUserDefaults integerForKey:@"LDCMAssetRetryQueryFrequency"];
    v13 = [(LDCMMobileAssetManager *)standardUserDefaults integerForKey:@"LDCMAssetRetryQueryFrequencyTolerance"];
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = 259200;
    }

    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = 172800;
    }

    v3->_queryFrequencySec = v14;
    v3->_queryFrequencyToleranceSec = v15;
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = 86400;
    }

    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = 86400;
    }

    v3->_retryQueryFrequencySec = v16;
    v3->_retryQueryFrequencyToleranceSec = v17;
    v18 = v3->_timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__LDCMMobileAssetManager_init__block_invoke;
    handler[3] = &unk_279793120;
    v19 = v3;
    v22 = v19;
    dispatch_source_set_event_handler(v18, handler);
    dispatch_source_set_timer(v3->_timer, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v3->_timer);

    v3 = standardUserDefaults;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __30__LDCMMobileAssetManager_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__LDCMMobileAssetManager_init__block_invoke_2;
  block[3] = &unk_279793120;
  v4 = v1;
  dispatch_async(v2, block);
}

uint64_t __30__LDCMMobileAssetManager_init__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[LDCMMobileAssetManager init]_block_invoke_2";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM Asset timer fired, querying metadata", &v3, 0xCu);
  }

  return [*(a1 + 32) queryMetadata];
}

- (void)queryMetadata
{
  v5 = 136315394;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to query metadata (%ld)", v1, v2, v3, v4, v5);
}

- (void)downloadCatalog
{
  v3 = objc_opt_new();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__LDCMMobileAssetManager_downloadCatalog__block_invoke;
  v4[3] = &unk_2797933E8;
  v4[4] = self;
  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.IOAccessoryManager" options:v3 then:v4];
}

void __41__LDCMMobileAssetManager_downloadCatalog__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2;
  v4[3] = &unk_2797933C0;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

uint64_t __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  if (*(a1 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return [*(a1 + 32) scheduleNextQueryAsRetry:1];
  }

  else
  {
    v11 = *(a1 + 32);

    return [v11 updateMetadata];
  }
}

- (void)updateMetadata
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.IOAccessoryManager"];
  [v2 setDoNotBlockBeforeFirstUnlock:1];
  [v2 queryMetaDataSync];
  results = [v2 results];
  if (!results || (v4 = results, [v2 results], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, !v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v43 = "[LDCMMobileAssetManager updateMetadata]";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s Query had no results", buf, 0xCu);
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = v2;
  obj = [v2 results];
  v7 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (!v7)
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
    goto LABEL_30;
  }

  v8 = v7;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v34 = *v39;
  v9 = *MEMORY[0x277D288E8];
  v10 = *MEMORY[0x277D28900];
  v11 = MEMORY[0x277D86220];
  do
  {
    v12 = 0;
    do
    {
      if (*v39 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v38 + 1) + 8 * v12);
      attributes = [v13 attributes];
      v15 = [attributes objectForKeyedSubscript:v9];
      intValue = [v15 intValue];

      attributes2 = [v13 attributes];
      v18 = [attributes2 objectForKeyedSubscript:v10];
      intValue2 = [v18 intValue];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        state = [v13 state];
        *buf = 136315650;
        v43 = "[LDCMMobileAssetManager updateMetadata]";
        v44 = 2048;
        *v45 = state;
        *&v45[8] = 1024;
        v46[0] = intValue2;
        _os_log_impl(&dword_2548F1000, v11, OS_LOG_TYPE_INFO, "%s found asset state:%ld version:%d", buf, 0x1Cu);
      }

      if ([(LDCMMobileAssetManager *)self supportsCompatabilityVersion:intValue])
      {
        if ([v13 state] != 2)
        {
          if (SHIDWORD(v32) >= intValue2)
          {
            goto LABEL_24;
          }

          v25 = v30;
          HIDWORD(v32) = intValue2;
          v30 = v13;
          goto LABEL_23;
        }

        if (v32 >= intValue2)
        {
          goto LABEL_24;
        }

        v21 = v13;
        if (v31)
        {
          attributes3 = [v31 attributes];
          v23 = [attributes3 objectForKeyedSubscript:v10];
          intValue3 = [v23 intValue];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v43 = "[LDCMMobileAssetManager updateMetadata]";
            v44 = 1024;
            *v45 = intValue3;
            _os_log_impl(&dword_2548F1000, v11, OS_LOG_TYPE_INFO, "%s requesting purge of asset version %d", buf, 0x12u);
          }

          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __40__LDCMMobileAssetManager_updateMetadata__block_invoke;
          v36[3] = &__block_descriptor_36_e8_v16__0q8l;
          v37 = intValue3;
          v25 = v31;
          [v31 purge:v36];
          LODWORD(v32) = intValue2;
          v31 = v21;
LABEL_23:

          goto LABEL_24;
        }

        LODWORD(v32) = intValue2;
        v31 = v21;
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "[LDCMMobileAssetManager updateMetadata]";
        v44 = 1024;
        *v45 = intValue2;
        _os_log_impl(&dword_2548F1000, v11, OS_LOG_TYPE_INFO, "%s asset version %d not compatible, skipping", buf, 0x12u);
      }

LABEL_24:
      ++v12;
    }

    while (v8 != v12);
    v26 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    v8 = v26;
  }

  while (v26);
LABEL_30:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    lastProcessedAssetVersion = self->_lastProcessedAssetVersion;
    *buf = 136315906;
    v43 = "[LDCMMobileAssetManager updateMetadata]";
    v44 = 1024;
    *v45 = v32;
    *&v45[4] = 1024;
    *&v45[6] = HIDWORD(v32);
    LOWORD(v46[0]) = 1024;
    *(v46 + 2) = lastProcessedAssetVersion;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s bestInstalledAssetVersion:%d bestNotInstalledAssetVersion:%d _lastProcessedAssetVersion:%d", buf, 0x1Eu);
  }

  v28 = self->_lastProcessedAssetVersion;
  if (v32 > v28 || SHIDWORD(v32) > v28)
  {
    if (SHIDWORD(v32) >= v32)
    {
      [(LDCMMobileAssetManager *)self downloadAsset:v30];
    }

    else
    {
      [(LDCMMobileAssetManager *)self processAsset:v31];
      self->_lastProcessedAssetVersion = v32;
    }
  }
}

void __40__LDCMMobileAssetManager_updateMetadata__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __40__LDCMMobileAssetManager_updateMetadata__block_invoke_cold_1(a1, a2);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[LDCMMobileAssetManager updateMetadata]_block_invoke";
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s purge of asset version %d succeeded", &v5, 0x12u);
  }
}

- (void)processAsset:(id)asset
{
  v15 = *MEMORY[0x277D85DE8];
  getLocalFileUrl = [asset getLocalFileUrl];
  v5 = [getLocalFileUrl URLByAppendingPathComponent:@"LDCMBehavior.plist"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[LDCMMobileAssetManager processAsset:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Attempting to process plist found in %@", buf, 0x16u);
  }

  if (v5)
  {
    v6 = objc_opt_new();
    v10 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v10];
    v8 = v10;

    if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LDCMMobileAssetManager processAsset:v8];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained receiveBehaviorDictionary:v7];
  }
}

- (void)downloadAsset:(id)asset
{
  assetCopy = asset;
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__LDCMMobileAssetManager_downloadAsset___block_invoke;
  v7[3] = &unk_279793430;
  v8 = assetCopy;
  selfCopy = self;
  v6 = assetCopy;
  [v6 startDownload:v5 then:v7];
}

void *__40__LDCMMobileAssetManager_downloadAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __40__LDCMMobileAssetManager_downloadAsset___block_invoke_cold_1();
    }

    return [*(a1 + 40) scheduleNextQueryAsRetry:1];
  }

  else
  {
    v4 = [*(a1 + 32) attributes];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D28900]];
    v6 = [v5 intValue];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[LDCMMobileAssetManager downloadAsset:]_block_invoke";
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s downloaded asset version %d successfully", &v7, 0x12u);
    }

    result = [*(a1 + 40) processAsset:*(a1 + 32)];
    *(*(a1 + 40) + 8) = v6;
  }

  return result;
}

- (void)scheduleNextQueryAsRetry:(BOOL)retry
{
  v4 = 12;
  if (retry)
  {
    v4 = 20;
  }

  v5 = 16;
  if (retry)
  {
    v5 = 24;
  }

  v6 = *(&self->super.isa + v4);
  v7 = arc4random_uniform(*(&self->super.isa + v5) + 1);
  timer = self->_timer;
  v9 = dispatch_walltime(0, 1000000000 * (v7 + v6));

  dispatch_source_set_timer(timer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (LDCMMobileAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __41__LDCMMobileAssetManager_downloadCatalog__block_invoke_2_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "[LDCMMobileAssetManager downloadCatalog]_block_invoke_2";
  *&v8[12] = 2048;
  *&v8[14] = *a1;
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], a3, "%s Failed to download catalog (%ld)", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x277D85DE8]);
}

void __40__LDCMMobileAssetManager_updateMetadata__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 136315650;
  v4 = "[LDCMMobileAssetManager updateMetadata]_block_invoke";
  v5 = 1024;
  v6 = v2;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s purge of asset version %d failed (%ld)", &v3, 0x1Cu);
}

- (void)processAsset:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  *v7 = 136315394;
  *&v7[4] = "[LDCMMobileAssetManager processAsset:]";
  *&v7[12] = 2112;
  *&v7[14] = v1;
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], v2, "%s failed to create behavior dictionary from plist (%@)", v3, v4, v5, v6, *v7, *&v7[8], *&v7[16]);
}

void __40__LDCMMobileAssetManager_downloadAsset___block_invoke_cold_1()
{
  v5 = 136315394;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to download asset (%ld)", v1, v2, v3, v4, v5);
}

@end