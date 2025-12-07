@interface LTOfflineAssetManager
@end

@implementation LTOfflineAssetManager

uint64_t __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 description];
  v6 = [v4 description];

  v7 = [v5 compare:v6];
  return v7;
}

id __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke_9(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v13 = 0;
  v6 = [v3 _speechTranslationAssetInfoForLocalePair:a2 installedAssets:v2 catalogAssets:v4 offlineConfig:v5 error:&v13];
  v7 = v13;
  v9 = v7;
  if (v7)
  {
    v10 = _LTOSLogAssets(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke_9_cold_1();
    }
  }

  v11 = [v6 availabilityInfo];

  return v11;
}

void __49___LTOfflineAssetManager_deleteAsset_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = _LTOSLogAssets(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Asset purge finished", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }
}

void __50___LTOfflineAssetManager__removeOldAssetDirectory__block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  if ((_removeOldAssetDirectory_removed & 1) == 0)
  {
    v0 = [MEMORY[0x277CCAA00] defaultManager];
    v1 = +[_LTDAssetService assetDirectoryURL];
    v22 = 0;
    v2 = [_LTDConfigurationService assetConfigurationWithError:&v22];
    v3 = v22;
    if (v3)
    {
      v5 = v3;
      v6 = _LTOSLogAssets(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineAssetManager removeObsoleteAssets];
      }
    }

    else
    {
      v7 = [v2 assetDirectoryNames];
      if ([v7 count] < 2 || objc_msgSend(v7, "count") == 1)
      {
        v5 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        *&v8 = 138412290;
        v19 = v8;
        do
        {
          v11 = [v7 objectAtIndexedSubscript:{v10, v19}];
          v12 = [v1 URLByAppendingPathComponent:v11];
          v21 = 0;
          v13 = [v12 path];
          v14 = [v0 fileExistsAtPath:v13 isDirectory:&v21];

          if (v14 && v21 == 1)
          {
            v15 = [v12 path];
            v20 = v9;
            [v0 removeItemAtPath:v15 error:&v20];
            v5 = v20;

            if (v5)
            {
              v18 = _LTOSLogAssets(v16, v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v19;
                v24 = v5;
                _os_log_error_impl(&dword_232E53000, v18, OS_LOG_TYPE_ERROR, "Failed to remove old asset directory %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v5 = v9;
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < [v7 count] - 1);
      }

      _removeOldAssetDirectory_removed = 1;
    }
  }
}

uint64_t __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3;
  v6[3] = &unk_2789B6B60;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_cold_1();
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *v3);
  }

  return result;
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26;
  block[3] = &unk_2789B6E20;
  v9 = v3;
  v7 = *(a1 + 32);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26_cold_1();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 40;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = _LTOSLogAssets(a1, a2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "All assets purged successfully", v8, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*v3 + 8) + 40));
  }

  return result;
}

void __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_cold_1();
    }

    dispatch_group_leave(*(a1 + 32));
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_28;
    v9[3] = &unk_2789B54E0;
    v10 = *(a1 + 32);
    [v7 deleteAsset:v8 completion:v9];
    (*(*(a1 + 56) + 16))();
  }
}

void __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v6 = _LTOSLogAssets(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke_28_cold_1();
    }
  }
}

void __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "----------------------------- Determine pairs to update ------------------------------------ ", buf, 2u);
  }

  v69 = 0;
  v4 = [_LTDConfigurationService offlineConfigurationWithError:&v69];
  v5 = v69;
  if (v5)
  {
    v7 = v5;
    v8 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager updateAllAssets:];
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = [v4 languagePairs];
    v47 = [MEMORY[0x277CBEB18] array];
    v48 = [MEMORY[0x277CBEB18] array];
    v44 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) debugDumpAssets:*(a1 + 40)];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v66;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          v15 = v12;
          if (*v66 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [MEMORY[0x277CE1B38] pairWithIdentifiers:*(*(&v65 + 1) + 8 * i)];
          v18 = *(a1 + 40);
          v17 = *(a1 + 48);
          v19 = *(a1 + 32);
          v64 = v12;
          v20 = [v19 _speechTranslationAssetInfoForLocalePair:v16 installedAssets:v17 catalogAssets:v18 offlineConfig:v4 error:&v64];
          v12 = v64;

          v21 = [v20 availabilityInfo];
          [v48 addObject:v16];
          if ([v21 needsUpdate])
          {
            [v47 addObject:v16];
          }

          if ([*(a1 + 56) containsObject:v16] && objc_msgSend(v21, "pairState") != 2)
          {
            [v47 addObject:v16];
            [v44 addObject:v20];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v24 = _LTOSLogAssets(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v24, OS_LOG_TYPE_INFO, "----------------------------- Assets to download ------------------------------------ ", buf, 2u);
    }

    v43 = v12;
    v25 = dispatch_group_create();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v26 = *(a1 + 48);
    v27 = [v26 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v61;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v61 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v60 + 1) + 8 * j);
          if (([v31 isConfig] & 1) == 0)
          {
            [*(a1 + 32) _updateAsset:v31 catalogAssets:*(a1 + 40) downloadGroup:v25 completion:&__block_literal_global_32];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v28);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = v44;
    v32 = [v45 countByEnumeratingWithState:&v56 objects:v71 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v57;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v57 != v34)
          {
            objc_enumerationMutation(v45);
          }

          v36 = *(*(&v56 + 1) + 8 * k);
          dispatch_group_enter(v25);
          v37 = _queue;
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2_33;
          v54[3] = &unk_2789B54E0;
          v55 = v25;
          [v36 downloadAssetsUserInitiated:0 queue:v37 completion:v54];
        }

        v33 = [v45 countByEnumeratingWithState:&v56 objects:v71 count:16];
      }

      while (v33);
    }

    v38 = _queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke_34;
    block[3] = &unk_2789B6EE0;
    v50 = v47;
    v51 = v48;
    v52 = *(a1 + 32);
    v42 = *(a1 + 64);
    v39 = v42;
    v53 = v42;
    v40 = v48;
    v41 = v47;
    dispatch_group_notify(v25, v38, block);

    v7 = v43;
  }
}

void __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2_33(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v6 = _LTOSLogAssets(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2_33_cold_1();
    }
  }
}

void __42___LTOfflineAssetManager_updateAllAssets___block_invoke_34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = v2;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v5 = _LTOSLogAssets(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Config asset updated", v8, 2u);
    }

    v6 = *(a1 + 40);

    v4 = v6;
  }

  [*(a1 + 48) updateAssetSymLinksForLocalePairs:v4];
  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }
}

void __86___LTOfflineAssetManager__downloadPassthroughAssetForLocale_userInitiated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86___LTOfflineAssetManager__downloadPassthroughAssetForLocale_userInitiated_completion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5 && ([v5 isInstalled] & 1) != 0)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v29 = 0;
      v13 = [v11 _speechTranslationAssetInfoForLocalePair:v12 error:&v29];
      v8 = v29;
      if (!v8)
      {
        v14 = *(a1 + 56);
        v15 = _queue;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_47;
        v27[3] = &unk_2789B58D0;
        v27[4] = *(a1 + 32);
        v28 = *(a1 + 48);
        [v13 downloadAssetsUserInitiated:v14 queue:v15 completion:v27];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CE1C58];
      v30[0] = *MEMORY[0x277CCA450];
      v18 = [v13 localizedStringForKey:@"CONFIGURATION_ASSET_MISSING_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
      v31[0] = v18;
      v30[1] = *MEMORY[0x277CCA470];
      v19 = MEMORY[0x277CCACA8];
      v20 = [v13 localizedStringForKey:@"CONFIGURATION_ASSET_MISSING_ERROR_DESCRIPTION_REASON" value:&stru_284834138 table:0];
      v21 = [v19 stringWithFormat:v20];
      v31[1] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v8 = [v16 errorWithDomain:v17 code:5 userInfo:v22];

      v25 = _LTOSLogAssets(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_cold_1();
      }
    }

    v26 = *(a1 + 48);
    if (v26)
    {
      (*(v26 + 16))(v26, v8);
    }

    goto LABEL_14;
  }

  v8 = v6;
  v9 = _LTOSLogAssets(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_cold_1();
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }

LABEL_15:
}

void __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = _LTOSLogAssets(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 assetIdentifierReferenceCountDictionary];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Reference counts after download %@", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to delete hotfix file when trying to purge all assets: %@", v2, v3, v4, v5);
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_3_26_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to delete hotfix when purging assets: %@", v2, v3, v4, v5);
}

void __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "At least one asset failed to purge: %@", v2, v3, v4, v5);
}

@end