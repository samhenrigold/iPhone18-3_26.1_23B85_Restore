@interface LTDUAFAssetService
@end

@implementation LTDUAFAssetService

uint64_t __29___LTDUAFAssetService__queue__block_invoke()
{
  _queue__queue_2 = dispatch_queue_create("com.apple.translationd.UAFAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t __42___LTDUAFAssetService__deferredTimerQueue__block_invoke()
{
  _deferredTimerQueue__queue = dispatch_queue_create("com.apple.translationd.deferredTimerQueue", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t __65___LTDUAFAssetService_pendingDownloadSchedulingAssetsNameToEntry__block_invoke()
{
  pendingDownloadSchedulingAssetsNameToEntry__pendingDownloadSchedulingAssets_0 = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

void __39___LTDUAFAssetService__allAssetLocales__block_invoke()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D779F8] sharedManager];
  v1 = [v0 knownUsagesForAssetSet:@"com.apple.sequoia.asset" usageType:@"asr.language"];
  v2 = [v1 mutableCopy];

  v3 = [MEMORY[0x277D779F8] sharedManager];
  v4 = [v3 knownUsagesForAssetSet:@"com.apple.sequoia.asset" usageType:@"mt.language"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138543362;
    v16 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __39___LTDUAFAssetService__allAssetLocales__block_invoke_2;
        v18[3] = &unk_2789B68E8;
        v18[4] = v10;
        if ([v2 indexOfObjectPassingTest:{v18, v16}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [&unk_2848681D0 objectForKeyedSubscript:v10];
          if (v12)
          {
            [v2 addObject:v12];
          }

          else
          {
            v13 = _LTOSLogAssets(0, v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v24 = v10;
              _os_log_error_impl(&dword_232E53000, v13, OS_LOG_TYPE_ERROR, "Failed to map language %{public}@", buf, 0xCu);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = [v2 _ltCompactMap:&__block_literal_global_364];
  v15 = _allAssetLocales_result;
  _allAssetLocales_result = v14;
}

void __52___LTDUAFAssetService__allAssetSpecifiersByLocaleId__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [*(a1 + 32) _allAssetLocales];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v9 = [_LTDUAFBridge assetSpecifiersForAssetType:2 locale:v7];
        [v8 unionSet:v9];
        v10 = [_LTDUAFBridge assetSpecifiersForAssetType:10 locale:v7];
        [v8 unionSet:v10];
        v11 = [_LTDUAFBridge assetSpecifiersForAssetType:8 locale:v7];
        [v8 unionSet:v11];
        v12 = [v7 _ltLocaleIdentifier];
        [v2 setObject:v8 forKeyedSubscript:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v13 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.sequoia.asset.config"];
  [v2 setObject:v13 forKeyedSubscript:&stru_284834138];

  v14 = [v2 copy];
  v15 = _allAssetSpecifiersByLocaleId_result;
  _allAssetSpecifiersByLocaleId_result = v14;
}

void __42___LTDUAFAssetService__allAssetSpecifiers__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [*(a1 + 32) _allAssetSpecifiersByLocaleId];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v2 addObjectsFromArray:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v2 copy];
  v10 = _allAssetSpecifiers_result;
  _allAssetSpecifiers_result = v9;
}

void __56___LTDUAFAssetService_queryAssetType_filter_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v7 = 0;
  v5 = [v3 queryAssetType:v2 filter:v4 error:&v7];
  v6 = v7;
  (*(a1[5] + 16))();
}

_LTDAssetModel *__51___LTDUAFAssetService_queryAssetType_filter_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isInstalled])
  {
    v3 = [[_LTDAssetModel alloc] initWithProvider:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

_LTDAssetModel *__51___LTDUAFAssetService_queryAssetType_filter_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[_LTDAssetModel alloc] initWithProvider:v2];

  return v3;
}

uint64_t __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = _LTOSLogAssets(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Asset download %{public}@ complete", &v9, 0xCu);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  [*(a1 + 56) _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:*(a1 + 40)];
}

void __45___LTDUAFAssetService_purgeAsset_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) progress];
  [v4 setOfflineState:0];

  v7 = _LTOSLogAssets(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Asset purge completed with error %@", &v10, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (v3)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 32);
    }

    (*(v8 + 16))(v8, v9, v3);
  }
}

uint64_t __46___LTDUAFAssetService__registerChangeHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "UAF asset update event", v5, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __53___LTDUAFAssetService__registerOneTimeChangeHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "UAF asset download one time update event", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v4 = [MEMORY[0x277D779F8] sharedManager];
  [v4 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogAssets(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_cold_1(a1, v5, v3);
  }

  v6 = [v3 downloadStatus];
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 7)
      {
        v7 = a1[7];
        v8 = @"UAF asset download failure due to network issue";
        v9 = 22;
        goto LABEL_14;
      }
    }

    else if (v6 != 4)
    {
      v7 = a1[7];
      v8 = @"UAF asset download failure due to lack of space";
      v9 = 15;
LABEL_14:
      v14 = [v7 _errorFor:v9 message:v8];
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

LABEL_15:
    v13 = a1[5];
    v10 = a1 + 4;
    goto LABEL_16;
  }

  if ((v6 - 2) >= 2 && v6)
  {
    goto LABEL_15;
  }

  if ([v3 completedBytes] >= 2)
  {
    v11 = a1[4];
    v10 = a1 + 4;
    v12 = [v11 progress];
    [v12 updatePercentComplete:{objc_msgSend(v3, "completedBytes") / objc_msgSend(v3, "totalBytes")}];

    v13 = v10[1];
LABEL_16:
    (*(v13 + 16))(v13, *v10);
  }
}

void __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_400(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1 + 56;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v4 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_400_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [*(a1 + 64) _ensureAssetDownloadCompletion:*(a1 + 32) progress:*(a1 + 48)];
    if (v11)
    {
      v13 = *(*(a1 + 40) + 16);

      v13();
    }

    else
    {
      v14 = _LTOSLogAssets(v11, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = v14;
        v17 = [v15 assetName];
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEFAULT, "UAF asset download completed but not found, scheduling update event observation for %@", buf, 0xCu);
      }

      v18 = *(a1 + 64);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_401;
      v23[3] = &unk_2789B69D0;
      v26 = v18;
      v19 = *(a1 + 32);
      v20 = *(a1 + 48);
      *&v21 = *(a1 + 40);
      *(&v21 + 1) = *(a1 + 56);
      *&v22 = v19;
      *(&v22 + 1) = v20;
      v24 = v22;
      v25 = v21;
      [v18 _registerOneTimeChangeHandler:v23];
    }
  }
}

uint64_t __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_401(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 64) _ensureAssetDownloadCompletion:*(a1 + 32) progress:*(a1 + 40)];
  v3 = v2;
  v5 = _LTOSLogAssets(v2, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 assetName];
      v13 = 138412290;
      v14 = v9;
      v10 = "UAF asset download fully completed: %@";
LABEL_6:
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
    }
  }

  else if (v6)
  {
    v11 = *(a1 + 32);
    v8 = v5;
    v9 = [v11 assetName];
    v13 = 138412290;
    v14 = v9;
    v10 = "UAF asset download completed but still not found after receiving update event for %@";
    goto LABEL_6;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(*(a1 + 56) + 8) + 40));
}

uint64_t __54___LTDUAFAssetService__updateDeferredUnsubscribeTimer__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "MT assets purging timer fired", v5, 2u);
  }

  return [*(a1 + 32) _deferredUnsubscribe];
}

void __66___LTDUAFAssetService__downloadAsset_options_progress_completion___block_invoke_2_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_232E53000, v1, v2, "Asset download %{public}@ failure %@", v3, DWORD2(v3));
}

void __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 identifier];
  v7 = [a3 downloadStatus];
  [a3 completedPercent];
  v9 = 138543874;
  v10 = v6;
  v11 = 2048;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  _os_log_debug_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEBUG, "UAF progress %{public}@ status: %zd [%f]", &v9, 0x20u);
}

void __69___LTDUAFAssetService__registerForAsset_options_progress_completion___block_invoke_400_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "UAF asset download failure: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end