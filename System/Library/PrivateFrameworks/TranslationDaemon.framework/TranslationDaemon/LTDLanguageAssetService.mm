@interface LTDLanguageAssetService
@end

@implementation LTDLanguageAssetService

uint64_t __33___LTDLanguageAssetService_queue__block_invoke()
{
  queue__queue_1 = dispatch_queue_create("com.apple.translationd.LanguageAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

void __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2;
  block[3] = &unk_2789B61A8;
  v12 = v6;
  v8 = *(a1 + 32);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = +[_LTDLanguageAssetCache shared];
    v12 = [*(a1 + 40) languageIdentifiers];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [v11 assetForIdentifier:{*(*(&v20 + 1) + 8 * v18), v20}];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }

    [v11 markReadyForFilter:16];
    (*(*(a1 + 48) + 16))();
  }
}

void __58___LTDLanguageAssetService__selectedAssetsWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = [*(a1 + 40) _selectedIdentifiers];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v2 assetForIdentifier:{*(*(&v12 + 1) + 8 * v9), v12}];
        v11 = [v10 progress];
        [v11 setGreaterThanOrEqualToOfflineState:1];

        [v4 addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v2 markReadyForFilter:32];
  (*(*(a1 + 32) + 16))();
}

void __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[6] queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2;
  v10[3] = &unk_2789B61F8;
  v11 = v6;
  v14 = a1[5];
  v12 = a1[4];
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = +[_LTDLanguageAssetCache shared];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = *(a1 + 40);
    v14 = [v13 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v54;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v54 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v53 + 1) + 8 * i) _ltLocaleIdentifier];
          v19 = [v11 assetForIdentifier:v18];

          v20 = [v19 ltIdentifier];
          [v12 setObject:v19 forKeyedSubscript:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v15);
    }

    v39 = v11;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = *(a1 + 48);
    v21 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v49 + 1) + 8 * j);
          v26 = [v25 assetType];
          v27 = v26 > 0xA || ((1 << v26) & 0x504) == 0;
          if (!v27 && ([v25 isInstalled] & 1) == 0)
          {
            v28 = [v25 localeIdentifiers];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v29 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v46;
              do
              {
                for (k = 0; k != v30; ++k)
                {
                  if (*v46 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  [v12 setObject:0 forKeyedSubscript:*(*(&v45 + 1) + 8 * k)];
                }

                v30 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
              }

              while (v30);
            }
          }
        }

        v22 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v22);
    }

    v33 = [v12 allValues];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v42;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v41 + 1) + 8 * m) progress];
          [v38 setGreaterThanOrEqualToOfflineState:2];
        }

        v35 = [v33 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v35);
    }

    [v39 markReadyForFilter:64];
    (*(*(a1 + 56) + 16))();
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  +[_LTDLanguageAssetService _cacheInstalledLanguages];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = _LTOSLogAssets(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_24_cold_1();
    }

    [*(a1 + 80) syncInstalledLocalesIfPowerAllows];
    if (*(a1 + 56))
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    [*(a1 + 32) setRequiredAssets:v5 localeRanks:*(a1 + 40)];
    v10 = *(a1 + 48);
    v11 = *(a1 + 88);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_25;
    v21[3] = &unk_2789B6240;
    v15 = *(a1 + 72);
    v12 = v15;
    v22 = v15;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_30;
    v16[3] = &unk_2789B6268;
    v13 = *(a1 + 48);
    v14 = *(a1 + 80);
    v17 = v13;
    v20 = v14;
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    [_LTDAssetService downloadAssets:v5 forLocales:v10 options:v11 progress:v21 completion:v16];
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 40) _applyRequiredProgressUpdate:?] & 1) == 0)
  {
    [_LTDAssetService purgeAsset:v5 completion:&__block_literal_global_28];
  }

  if (*(a1 + 32))
  {
    v3 = +[_LTDLanguageAssetCache shared];
    v4 = [v3 assetsFilteredUsing:0];

    (*(*(a1 + 32) + 16))();
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v7 = _LTOSLogAssets(v5, v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_2(v8);
  }
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_LTDAssetAnalytics shared];
    [v4 markEventsAsRetriedForLocales:*(a1 + 32)];

    v7 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_30_cold_1();
    }

    [*(a1 + 56) syncInstalledLocalesIfPowerAllows];
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v12 + 1) + 8 * v10) installationStatus];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke_2_cold_1();
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = _LTOSLogAssets(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Sync install query selected ended", buf, 2u);
  }

  if (v6)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }

  else
  {
    v10 = [v5 count];
    if (v10)
    {
      v12 = _LTOSLogAssets(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "Sync install set assets begin", buf, 2u);
      }

      v13 = [*(a1 + 40) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_34;
      block[3] = &unk_2789B6300;
      v21 = *(a1 + 40);
      v19 = v5;
      v20 = *(a1 + 32);
      dispatch_async(v13, block);
    }

    else
    {
      v14 = [*(a1 + 40) selectedLocales];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [MEMORY[0x277CCA9B8] ltd_invalidResultError];
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a1 + 32);
      if (v17)
      {
        (*(v17 + 16))(v17, v16);
      }
    }
  }
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_37;
  v3[3] = &unk_2789B5D20;
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 setAssets:v1 options:8 progress:&__block_literal_global_36_0 completion:v3];
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = _LTOSLogAssets(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_2_cold_1(v4);
  }
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogAssets(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Sync install set assets ended", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke(uint64_t a1)
{
  if (!_syncInstalledLocalesWithRetry_gateID__retryGate || [_syncInstalledLocalesWithRetry_gateID__retryGate isEqual:*(a1 + 32)])
  {
    objc_storeStrong(&_syncInstalledLocalesWithRetry_gateID__retryGate, *(a1 + 32));
    v2 = *(a1 + 40);
    v3 = 10 * v2;
    v4 = dispatch_time(0, 10000000000 * v2);
    v5 = [*(a1 + 48) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    v6 = *(a1 + 48);
    block[4] = *(a1 + 40);
    block[5] = v6;
    block[6] = v3;
    dispatch_after(v4, v5, block);
  }
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = _LTOSLogAssets(a1, a2);
  v5 = v4;
  if (v3 < 10)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = _syncInstalledLocalesWithRetry_gateID__retryGate;
      v9 = v5;
      v10 = [v8 UUIDString];
      *buf = 134218242;
      v15 = v7;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Sync retry attempt %zd:[%{public}@] begin", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38;
    v13[3] = &__block_descriptor_56_e17_v16__0__NSError_8l;
    v11 = a1[5];
    v12 = a1[6];
    v13[4] = a1[4];
    v13[5] = v12;
    v13[6] = v11;
    [v11 _syncInstalledLocalesWithCompletion:v13];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2_cold_1(v5);
    }

    v6 = _syncInstalledLocalesWithRetry_gateID__retryGate;
    _syncInstalledLocalesWithRetry_gateID__retryGate = 0;
  }
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = _LTOSLogAssets(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38_cold_1(a1, v6, v3);
    }

    [*(a1 + 48) _syncInstalledLocalesWithRetry:*(a1 + 32) + 1 gateID:_syncInstalledLocalesWithRetry_gateID__retryGate];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = _syncInstalledLocalesWithRetry_gateID__retryGate;
      v9 = v6;
      v10 = [v8 UUIDString];
      v12 = 134218242;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Sync retry attempt %zd:[%{public}@] succeeded", &v12, 0x16u);
    }

    v11 = _syncInstalledLocalesWithRetry_gateID__retryGate;
    _syncInstalledLocalesWithRetry_gateID__retryGate = 0;
  }
}

uint64_t __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "Sync on asset update begin", buf, 2u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke_41;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v6[4] = v4;
  return [v4 _syncInstalledLocalesWithCompletion:v6];
}

void __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogAssets(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke_41_cold_1();
    }

    [*(a1 + 32) _syncInstalledLocales];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Sync on asset update succeeded", v7, 2u);
  }
}

void __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = _LTOSLogAssets(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke_cold_1();
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_17:
      v11();
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v5);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if (([*(a1 + 40) _applyRequiredProgressUpdate:v16] & 1) == 0)
          {
            [_LTDAssetService purgeAsset:v16 completion:&__block_literal_global_46];
          }
        }

        v13 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v11 = *(v17 + 16);
      goto LABEL_17;
    }
  }
}

void __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v7 = _LTOSLogAssets(v5, v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_2(v8);
  }
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = v2;
  if ((_block_invoke_preheating & 1) == 0)
  {
    v4 = [v2 isReadyForAllFilters];
    if (v4)
    {
      if ((_block_invoke_preheating & 1) == 0)
      {
        [*(a1 + 32) _syncInstalledLocales];
      }
    }

    else
    {
      _block_invoke_preheating = 1;
      v6 = _LTOSLogAssets(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Preheat language cache starting", buf, 2u);
      }

      v7 = dispatch_group_create();
      if (([v3 isReadyForFilter:16] & 1) == 0)
      {
        dispatch_group_enter(v7);
        v10 = _LTOSLogAssets(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Preheat language cache for available state", buf, 2u);
        }

        v11 = *(a1 + 32);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_53;
        v32[3] = &unk_2789B63D0;
        v33 = v7;
        [v11 assetsWithOptions:16 completion:v32];
      }

      v12 = [v3 isReadyForFilter:32];
      if ((v12 & 1) == 0)
      {
        v14 = _LTOSLogAssets(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Preheat language cache for selected state", buf, 2u);
        }

        dispatch_group_enter(v7);
        v15 = *(a1 + 32);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_54;
        v30[3] = &unk_2789B63D0;
        v31 = v7;
        [v15 assetsWithOptions:32 completion:v30];
      }

      v16 = [v3 isReadyForFilter:64];
      if ((v16 & 1) == 0)
      {
        v18 = _LTOSLogAssets(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, "Preheat language cache for installed state", buf, 2u);
        }

        dispatch_group_enter(v7);
        v19 = *(a1 + 32);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_55;
        v28[3] = &unk_2789B63D0;
        v29 = v7;
        [v19 assetsWithOptions:64 completion:v28];
      }

      v20 = [*(a1 + 32) queue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_56;
      v24[3] = &unk_2789B6368;
      v21 = v3;
      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v25 = v21;
      v26 = v22;
      v27 = v23;
      dispatch_group_notify(v7, v20, v24);
    }
  }
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_53(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Language cache ready for available state", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_54(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Language cache is ready for selected state", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_55(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Language cache is ready for installed state", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke_56(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Preheat language cache completed", v6, 2u);
  }

  _block_invoke_preheating = 0;
  if ([*(a1 + 32) isReadyForAllFilters])
  {
    return [*(a1 + 48) _syncInstalledLocales];
  }

  v5 = *(a1 + 40);
  if (v5 >= 50)
  {
    v5 = 50;
  }

  return [*(a1 + 48) _preheatMissingCacheStatesAfter:v5 + 10];
}

void __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = [[_LTDLanguageAssetCacheObserver alloc] initWithID:*(a1 + 32) taskHint:*(a1 + 56) progress:*(a1 + 72) observations:*(a1 + 40) completion:*(a1 + 48)];
  v4 = [v2 isReadyForAllFilters];
  if ((v4 & 1) == 0)
  {
    v6 = _LTOSLogAssets(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Cache is not ready, returning immediate data from Defaults", v11, 2u);
    }

    v7 = [*(a1 + 64) _synthesizeInitialObservationsFromDefaults];
    v9 = _LTOSLogAssets(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke_cold_1();
    }

    v10 = [(_LTDLanguageAssetCacheObserver *)v3 observations];
    (v10)[2](v10, v7);
  }

  [v2 addObserver:v3];
  [*(a1 + 64) _preheatMissingCacheStatesAfter:0];
}

void __56___LTDLanguageAssetService_cancelLanguageStatusSession___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetCache shared];
  [v2 removeObserverForID:*(a1 + 32)];
}

void __53___LTDLanguageAssetService_addLanguages_useCellular___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = +[_LTDAssetAnalytics shared];
        v9 = [v8 getEventWithNSLocale:v7];

        v10 = [v9 didRetry];
        if (a2)
        {
          v11 = 3;
        }

        else
        {
          v11 = v10;
        }

        v12 = [v7 _ltLocaleIdentifier];
        [v9 stopTimerWithOutcome:v11 hasClientReportedError:a2 != 0 localeIdentifier:v12];

        v13 = +[_LTDAssetAnalytics shared];
        [v13 sendEventToAnalytics:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void __44___LTDLanguageAssetService_removeLanguages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedLocales];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 32) _resetSymlinkDirectory];
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = _LTOSLogAssets(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Removal of symlink folder aborted due to locale selections prior to dequeue", v9, 2u);
  }

  if (v3)
  {
LABEL_5:
    v3[2](v3, v5 == 0);
  }

LABEL_6:
}

id __73___LTDLanguageAssetService__languageModelsForLocales_initialState_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 _ltLocaleIdentifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v3 state:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Language asset service available assets read error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Language asset service installed assets read error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_2() identifier];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Purge of unused asset %{public}@ failed %@, expected if multiple downloads are in progress", v6, v7, v8, v9);
}

void __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_2_cold_2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "Purged unused asset %{public}@ completed", v6, v7, v8, v9);
}

void __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() count];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v3, v4, "Sync install set assets progress count: %zd", v5, v6, v7, v8);
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() UUIDString];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v4, v5, "Sync retry attempt [%{public}@] retries exhausted", v6, v7, v8, v9);
}

void __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke_38_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = _syncInstalledLocalesWithRetry_gateID__retryGate;
  v7 = a2;
  v8 = [v6 UUIDString];
  v9 = *(a1 + 40);
  v10 = 134218754;
  v11 = v5;
  v12 = 2114;
  v13 = v8;
  v14 = 2048;
  v15 = v9;
  v16 = 2112;
  v17 = a3;
  _os_log_error_impl(&dword_232E53000, v7, OS_LOG_TYPE_ERROR, "Sync retry attempt %zd:[%{public}@] in %zd secs for failure: %@", &v10, 0x2Au);
}

void __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end