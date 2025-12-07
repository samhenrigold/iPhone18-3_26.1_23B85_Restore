@interface LTSpeechTranslationAssetInfo
@end

@implementation LTSpeechTranslationAssetInfo

void __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v7 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1 + 5;
  if (*(*(a1[5] + 8) + 40))
  {
    v4 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31_cold_1();
    }
  }

  else
  {
    v5 = [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:*(*(a1[6] + 8) + 40) assets:*(*(a1[7] + 8) + 40) validateIfNeeded:0];
    v7 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(a1[6] + 8) + 40);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "All asset downloads for language pair %{public}@ completed successfully", &v10, 0xCu);
    }
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(*v3 + 8) + 40));
  }

  return result;
}

void __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v7 = _LTOSLogAssets(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_cold_1();
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  objc_storeStrong(v9, v12);
  dispatch_group_leave(*(a1 + 40));
}

void __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_34(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = _LTOSLogAssets(WeakRetained, v3);
    v7 = v6;
    if (v5)
    {
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_34_cold_1();
      }
    }

    else
    {
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v8)
      {
        v10 = v4[2];
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "All assets purged for language pair %{public}@ finished", &v16, 0xCu);
      }
    }

    v11 = _LTOSLogAssets(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v4[1];
      v13 = v11;
      v14 = [v12 assetIdentifierReferenceCountDictionary];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Reference counts after purge %@", &v16, 0xCu);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, *(*(*(a1 + 40) + 8) + 40));
    }
  }
}

void __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed asset downloads for language pair %{public}@ with error: %@");
}

void __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31_cold_1()
{
  OUTLINED_FUNCTION_5_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Finished downloads; some assets downloads for language pair %{public}@ failed: %@");
}

@end