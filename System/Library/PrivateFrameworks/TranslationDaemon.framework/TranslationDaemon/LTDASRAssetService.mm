@interface LTDASRAssetService
@end

@implementation LTDASRAssetService

uint64_t __48___LTDASRAssetService_deferredUnsubscribeAssets__block_invoke()
{
  deferredUnsubscribeAssets__deferredUnsubscribeAssets = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

uint64_t __65___LTDASRAssetService_pendingDownloadSchedulingAssetsNameToEntry__block_invoke()
{
  pendingDownloadSchedulingAssetsNameToEntry__pendingDownloadSchedulingAssets = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

uint64_t __28___LTDASRAssetService_queue__block_invoke()
{
  queue__queue = dispatch_queue_create("com.apple.translationd.ASRAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

void __56___LTDASRAssetService_queryAssetType_filter_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v7 = 0;
  v5 = [v3 queryAssetType:v2 filter:v4 error:&v7];
  v6 = v7;
  (*(a1[5] + 16))();
}

void __39___LTDASRAssetService__availableAssets__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v28 = [*(a1 + 32) _supportsNGASR];
  if ([*(a1 + 32) _supportsGASR])
  {
    v3 = [*(a1 + 32) _supportedLTLocaleIdentifiers];
    v27 = [*(a1 + 32) _supportedGASRLocaleIdentifiers];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v3;
    v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v29)
    {
      v25 = v2;
      v26 = *v36;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v35 + 1) + 8 * i);
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR-%@", v5];
          v7 = [MEMORY[0x277CBEB18] array];
          if (v28)
          {
            v8 = objc_alloc(MEMORY[0x277CDCE88]);
            v9 = _LTLocaleIdentifierMappedForASR();
            v10 = [v8 initWithLanguage:v9 assetType:3];

            if (v10)
            {
              v11 = [[_LTDASRAssetModel alloc] initWithAssetIdentifier:v6 provider:v10];
              [v7 addObject:v11];
            }
          }

          if ([v27 containsObject:v5])
          {
            v12 = objc_alloc(MEMORY[0x277CDCE88]);
            v13 = _LTLocaleIdentifierMappedForASR();
            v14 = [v12 initWithLanguage:v13 assetType:7];

            if (v14)
            {
              v15 = [[_LTDASRAssetModel alloc] initWithAssetIdentifier:v6 provider:v14];
              [v7 addObject:v15];
            }
          }

          if ([v7 count])
          {
            v30 = v6;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = v7;
            v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = 0;
              v20 = *v32;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v32 != v20)
                  {
                    objc_enumerationMutation(v16);
                  }

                  if (v19)
                  {
                    [(_LTDAssetModel *)v19 addComponentAsset:*(*(&v31 + 1) + 8 * j)];
                  }

                  else
                  {
                    v19 = [[_LTDAssetModel alloc] initWithProvider:*(*(&v31 + 1) + 8 * j)];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v18);
            }

            else
            {
              v19 = 0;
            }

            v2 = v25;
            [v25 setObject:v19 forKeyedSubscript:v5];

            v6 = v30;
          }
        }

        v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v29);
    }

    v22 = [v2 copy];
    v23 = _availableAssets_shared;
    _availableAssets_shared = v22;
  }

  else
  {
    objc_storeStrong(&_availableAssets_shared, v2);
  }
}

uint64_t __54___LTDASRAssetService__subscribe_progress_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = _LTOSLogAssets(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2_cold_1(a1, v9);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

void __47___LTDASRAssetService__unsubscribe_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47___LTDASRAssetService__unsubscribe_completion___block_invoke_cold_1(a1, v6);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

uint64_t __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = a2 / 100.0;
  if (v2 < 1.0)
  {
    v3 = result;
    v4 = [*(result + 32) progress];
    [v4 updatePercentComplete:v2];

    result = *(v3 + 40);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

void __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = _LTOSLogAssets(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2_cold_1(a1, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 assetName];
      v10 = [*(a1 + 32) getLocalFileUrl];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "ASR Asset download completed name %@, location %@", &v14, 0x16u);
    }

    v11 = [*(a1 + 32) progress];
    [v11 setOfflineState:2];

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, *(a1 + 32));
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }

  [*(a1 + 64) _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:*(a1 + 40)];
}

void __45___LTDASRAssetService_purgeAsset_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) progress];
  [v3 setOfflineState:0];

  (*(*(a1 + 40) + 16))();
}

uint64_t __53___LTDASRAssetService_updateDeferredUnsubscribeTimer__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "ASR assets purging timer fired", v5, 2u);
  }

  return [*(a1 + 32) deferredUnsubscribe];
}

void __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() language];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v5, v6, "ASR subscribe for %{public}@ failure: %@", v7, v8, v9, v10);
}

void __47___LTDASRAssetService__unsubscribe_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() language];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v5, v6, "ASR unsubscribe for %{public}@ failure: %@", v7, v8, v9, v10);
}

void __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() asset];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v5, v6, "ASR failed to complete asset download %{public}@: %@", v7, v8, v9, v10);
}

@end