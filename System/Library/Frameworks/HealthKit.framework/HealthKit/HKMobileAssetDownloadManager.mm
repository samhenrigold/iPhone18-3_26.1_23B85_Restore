@interface HKMobileAssetDownloadManager
@end

@implementation HKMobileAssetDownloadManager

void __63___HKMobileAssetDownloadManager_downloadAssetsWithQueryParams___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  if (v2)
  {
    _HKInitializeLogging(v2, v3);
    v4 = HKLogMobileAsset;
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v12 = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Load requested for queryParams already in progress: %@", &v12, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 32));
    _HKInitializeLogging(v7, v8);
    v9 = HKLogMobileAsset;
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning load for queryParams: %@", &v12, 0x16u);
    }

    [*(a1 + 32) _queue_fetchAssetsWithLocalInformation:*(*(a1 + 32) + 40) shouldRequery:1 queryParams:*(a1 + 40) returnTypes:*(*(a1 + 32) + 72)];
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  }
}

void __93___HKMobileAssetDownloadManager_fetchAssetsWithQueryParams_onlyLocal_returnTypes_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _generateAssetQueryFromQueryParams:*(a1 + 40) returnTypes:*(a1 + 56)];
  _HKInitializeLogging(v2, v3);
  v4 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning non-downloading fetch for query: %@", &v6, 0x16u);
  }

  [*(a1 + 32) _queue_fetchAssetsWithQuery:v2 onlyLocal:*(a1 + 64) completion:*(a1 + 48)];
}

uint64_t __65___HKMobileAssetDownloadManager_downloadMobileAssets_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(a1, a2);
  v3 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = [v4 count];
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning download operation for %ld assets", &v8, 0x16u);
  }

  return [*(a1 + 32) _queue_downloadAssets:*(a1 + 40) completion:*(a1 + 48)];
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1[4] + 24));
  if (!*(*(a1[6] + 8) + 24))
  {
    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))(v3, *(*(a1[7] + 8) + 24), v4);
    }
  }
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_303(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v14 + 1) + 8 * v6);
          if ([v7 state] == 2 || objc_msgSend(v7, "state") == 3 || objc_msgSend(v7, "state") == 6)
          {
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2;
            v11[3] = &unk_1E7384AB8;
            v13 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
            v8 = *(a1 + 48);
            v11[4] = *(a1 + 40);
            v11[5] = v7;
            v12 = v8;
            [v7 purge:v11];
          }

          else
          {
            --*(*(*(a1 + 56) + 8) + 24);
            (*(*(a1 + 48) + 16))();
          }

          ++v6;
        }

        while (v4 != v6);
        v9 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v4 = v9;
      }

      while (v9);
    }
  }

  else
  {
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2(id *a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    a1 = [a1[4] _errorWithDomain:@"MAPurgeResult" code:a2];
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(v2 + 56) + 8) + 24) &= v3 == 0;
  --*(*(*(v2 + 64) + 8) + 24);
  _HKInitializeLogging(a1, a2);
  v4 = HKLogMobileAsset;
  if (v3)
  {
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_1(v3, v2, v4);
    }
  }

  else if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEBUG))
  {
    __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_2(v2, v4);
  }

  v5 = *(*(v2 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_304;
  v8[3] = &unk_1E7376AC0;
  v6 = *(v2 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _errorWithDomain:@"MADownloadResult" code:a2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  if (*(*(v3 + 8) + 40))
  {
    _HKInitializeLogging(a1, a2);
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_cold_1();
    }

    v3 = *v4;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_307;
  v6[3] = &unk_1E7384B58;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v9 = v3;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  [v5 queryMetaData:v6];
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_307(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_308;
  block[3] = &unk_1E7384B30;
  v10 = a2;
  block[4] = v3;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_308(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = [*(a1 + 32) _errorWithDomain:@"MAQueryResult" code:?];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) results];
  (*(v5 + 16))(v5, v6, *(*(*(a1 + 56) + 8) + 40));
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _errorWithDomain:@"MADownloadResult" code:a2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v3)
  {
    v6 = [v4[2] removeObject:*(a1 + 40)];
    _HKInitializeLogging(v6, v7);
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_cold_1();
    }

    [*v5 _callErrorHandlerWithError:*(*(*v2 + 8) + 40)];
  }

  else
  {
    v8 = [v4 _generateAssetQueryFromQueryParams:*(a1 + 40) returnTypes:*(a1 + 56)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_309;
    v12[3] = &unk_1E7384BF8;
    v12[4] = *(a1 + 32);
    v13 = v8;
    v16 = *(a1 + 64);
    v11 = *(a1 + 40);
    v9 = v11;
    v14 = v11;
    v15 = *(a1 + 56);
    v10 = v8;
    [v10 queryMetaData:v12];
  }
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_309(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v3 = *(a1 + 56);
  v7 = *(a1 + 32);
  v4 = *(v7 + 24);
  block[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310;
  block[3] = &unk_1E7384BD0;
  v11 = a2;
  v5 = *(&v7 + 1);
  v13 = *(a1 + 72);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v3;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 64);
  dispatch_async(v4, block);
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) _errorWithDomain:@"MAQueryResult" code:?];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    _HKInitializeLogging(v6, v7);
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310_cold_1();
    }

    [*v2 _callErrorHandlerWithError:*(*(*(a1 + 56) + 8) + 40)];
  }

  v8 = [*(a1 + 40) results];
  if (v8)
  {

    goto LABEL_14;
  }

  if (*(a1 + 80) != 1)
  {
LABEL_14:
    v12 = *(a1 + 32);
    v13 = v12[41];
    v14 = [*(a1 + 40) results];
    if (v13 == 1)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_317;
      v15[3] = &unk_1E7384BA8;
      v15[4] = *(a1 + 32);
      v16 = *(a1 + 48);
      [v12 _queue_downloadAssets:v14 completion:v15];
    }

    else
    {
      [v12 _callDownloadCompletionHandlerWithAssets:v14 queryParams:*(a1 + 48)];
    }

    return;
  }

  _HKInitializeLogging(0, v9);
  v10 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 81))
    {
      v11 = @"remote";
    }

    else
    {
      v11 = @"local";
    }

    *buf = 138543362;
    v18 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "Unable to fetch assets, fetching %{public}@ results.", buf, 0xCu);
  }

  [*(a1 + 32) _queue_fetchAssetsWithLocalInformation:(*(a1 + 81) & 1) == 0 shouldRequery:0 queryParams:*(a1 + 48) returnTypes:*(a1 + 72)];
}

uint64_t __66___HKMobileAssetDownloadManager__queue_downloadAssets_completion___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v1 = result;
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, *(*(*(v1 + 48) + 8) + 40), *(*(*(v1 + 56) + 8) + 40));
    }
  }

  return result;
}

void __66___HKMobileAssetDownloadManager__queue_downloadAssets_completion___block_invoke_2(void *a1, uint64_t a2, int a3, void *a4)
{
  v17 = a4;
  [*(a1[4] + 8) removeObject:a2];
  if (a3)
  {
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = *(a1[7] + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    [*(*(a1[7] + 8) + 40) addObject:a1[5]];
  }

  --*(*(a1[8] + 8) + 24);
  v14 = *(a1[9] + 8);
  v16 = *(v14 + 40);
  v15 = (v14 + 40);
  if (!v16)
  {
    objc_storeStrong(v15, a4);
  }

  (*(a1[6] + 16))();
}

void __86___HKMobileAssetDownloadManager__callDownloadCompletionHandlerWithAssets_queryParams___block_invoke(void *a1)
{
  [*(a1[4] + 16) removeObject:a1[5]];
  v2 = _Block_copy(*(a1[4] + 88));
  v5 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, a1[6]);
  }

  if (![*(a1[4] + 8) count])
  {
    v3 = a1[4];
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

void __60___HKMobileAssetDownloadManager__callErrorHandlerWithError___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 64));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40));
    v2 = v3;
  }
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 40);
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "Failed to purge asset with error: %{public}@\n(%@)", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "Purged asset (%@)", &v3, 0xCu);
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "%{public}@: Error querying remote assets: %{public}@, returning local assets.");
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "%{public}@: Error downloading catalog: %{public}@");
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310_cold_1()
{
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "%{public}@: Error querying metadata: %{public}@");
}

@end