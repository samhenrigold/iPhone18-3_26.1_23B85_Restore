@interface LTHotfixManager
@end

@implementation LTHotfixManager

uint64_t __26___LTHotfixManager_shared__block_invoke()
{
  shared_shared = objc_alloc_init(_LTHotfixManager);

  return MEMORY[0x2821F96F8]();
}

void __34___LTHotfixManager_refreshHotfix___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __34___LTHotfixManager_refreshHotfix___block_invoke_2;
    v3[3] = &unk_2789B6B38;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained _replaceHotfix:1 completion:v3];

    objc_destroyWeak(&v5);
  }
}

void __34___LTHotfixManager_refreshHotfix___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v7 = _LTOSLogHotfix(WeakRetained, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __34___LTHotfixManager_refreshHotfix___block_invoke_2_cold_1();
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __34___LTHotfixManager_refreshHotfix___block_invoke_26;
      v8[3] = &unk_2789B6B38;
      objc_copyWeak(&v10, (a1 + 40));
      v9 = *(a1 + 32);
      [v6 _updateHotfixInternal:v8];

      objc_destroyWeak(&v10);
    }
  }
}

void __34___LTHotfixManager_refreshHotfix___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v7 = _LTOSLogHotfix(WeakRetained, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __34___LTHotfixManager_refreshHotfix___block_invoke_26_cold_1();
      }

      v8 = *(a1 + 32);
      WeakRetained = v6;
      v9 = 2;
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = 3;
    }

    [WeakRetained _replaceHotfix:v9 completion:v8];
  }
}

void __42___LTHotfixManager__updateHotfixInternal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_36;
  }

  if (!v6)
  {
    v35 = a1;
    v36 = WeakRetained;
    v11 = [MEMORY[0x277D07278] minimumSupportedConfigurationVersion];
    v12 = [v11 intValue];

    v13 = [MEMORY[0x277D07278] maximumSupportedConfigurationVersion];
    v37 = [v13 intValue];

    v14 = [v5 objectForKeyedSubscript:@"Mapping"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v14 lt_ensureElementType:objc_opt_class()])
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {

      v14 = 0;
      v15 = 0;
    }

    v16 = v15;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v34 = v5;
      v20 = 0;
      v21 = *v39;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          v24 = [v23 objectForKeyedSubscript:{@"FormatVersion", v34}];
          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = v24;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          v27 = [v26 intValue];
          if (v26 && v27 >= v12 && v27 <= v37 && v27 >= 1)
          {
            v28 = v23;

            v20 = v28;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v19);

      v5 = v34;
      if (v20)
      {
        v9 = v36;
        [v36 _downloadHotfix:v20 completion:*(v35 + 32)];
        v6 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v29 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = @"Cannot find any compatible hotfix";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v6 = [v29 errorWithDomain:@"LTDHotfixManagerError" code:0 userInfo:v30];

    v33 = _LTOSLogHotfix(v31, v32);
    v9 = v36;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      __42___LTHotfixManager__updateHotfixInternal___block_invoke_cold_2();
    }

    (*(*(v35 + 32) + 16))();
    v20 = 0;
    goto LABEL_35;
  }

  v10 = _LTOSLogHotfix(WeakRetained, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __42___LTHotfixManager__updateHotfixInternal___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
LABEL_36:
}

void __33___LTHotfixManager_deleteHotfix___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = _LTOSLogHotfix(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = hotfixBasePath;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Attempting to delete hotfix at base path %{public}@", buf, 0xCu);
  }

  v5 = [hotfixBasePath path];
  v6 = [v2 fileExistsAtPath:v5];

  if (v6)
  {
    v11 = 0;
    [v2 removeItemAtURL:hotfixBasePath error:&v11];
    v7 = v11;
    v9 = v7;
    if (v7)
    {
      v10 = _LTOSLogHotfix(v7, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __33___LTHotfixManager_deleteHotfix___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  [*(a1 + 32) setHotfixURL:0];
  (*(*(a1 + 40) + 16))();
}

void __48___LTHotfixManager__downloadWithURL_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = v6;
  if (!a2 || v6)
  {
    v10 = _LTOSLogHotfix(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48___LTHotfixManager__downloadWithURL_completion___block_invoke_cold_1(a1, v8, v10);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

void __42___LTHotfixManager__downloadMappingPlist___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v8[1] = MEMORY[0x277D85DD0];
    v8[2] = 3221225472;
    v8[3] = __42___LTHotfixManager__downloadMappingPlist___block_invoke_2;
    v8[4] = &unk_2789B59E0;
    v6 = v5;
    v8[5] = v6;
    AnalyticsSendEventLazy();
    (*(*(a1 + 32) + 16))();
    v7 = v6;
  }

  else
  {
    v8[0] = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithData:a2 options:0 format:0 error:v8];
    v6 = v8[0];
    (*(*(a1 + 32) + 16))();
  }
}

id __42___LTHotfixManager__downloadMappingPlist___block_invoke_2(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v3 = [v2 stringValue];
  v8[0] = v3;
  v7[1] = @"domain";
  v4 = [*(a1 + 32) domain];
  v7[2] = @"file";
  v8[1] = v4;
  v8[2] = &unk_284868098;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

uint64_t __47___LTHotfixManager__downloadHotfix_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setHotfixURL:*(a1 + 40)];
  v4 = _LTOSLogHotfix(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Found existing hotfix", v6, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

void __47___LTHotfixManager__downloadHotfix_completion___block_invoke_67(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v15[1] = MEMORY[0x277D85DD0];
      v15[2] = 3221225472;
      v15[3] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke_2;
      v15[4] = &unk_2789B59E0;
      v16 = v6;
      AnalyticsSendEventLazy();
      (*(a1[6] + 2))();
    }

    else
    {
      v9 = WeakRetained[1];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70;
      v10[3] = &unk_2789B6C28;
      objc_copyWeak(v15, a1 + 7);
      v11 = a1[4];
      v14 = a1[6];
      v12 = a1[5];
      v13 = v5;
      dispatch_async(v9, v10);

      objc_destroyWeak(v15);
    }
  }
}

id __47___LTHotfixManager__downloadHotfix_completion___block_invoke_2(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v3 = [v2 stringValue];
  v8[0] = v3;
  v7[1] = @"domain";
  v4 = [*(a1 + 32) domain];
  v7[2] = @"file";
  v8[1] = v4;
  v8[2] = &unk_2848680B0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [hotfixBasePath path];
    LODWORD(v3) = [v3 fileExistsAtPath:v4];

    if (v3 && (v5 = *(a1 + 32), v30 = 0, [v5 removeItemAtURL:hotfixBasePath error:&v30], (v6 = v30) != 0))
    {
      v8 = v6;
      v9 = _LTOSLogHotfix(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_1();
      }

      (*(*(a1 + 56) + 16))();
      v10 = *(a1 + 32);
      v29 = v8;
      [v10 removeItemAtURL:hotfixBasePath error:&v29];
      v11 = v29;
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v28 = 0;
      [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v28];
      v14 = v28;
      if (v14)
      {
        v8 = v14;
        v16 = _LTOSLogHotfix(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_2();
        }

        (*(*(a1 + 56) + 16))();
        v17 = *(a1 + 32);
        v27 = v8;
        [v17 removeItemAtURL:hotfixBasePath error:&v27];
        v11 = v27;
      }

      else
      {
        v19 = *(a1 + 40);
        v18 = *(a1 + 48);
        v26 = 0;
        [WeakRetained _decompressArchive:v18 to:v19 error:&v26];
        v20 = v26;
        if (!v20)
        {
          [WeakRetained setHotfixURL:*(a1 + 40)];
          (*(*(a1 + 56) + 16))();
          goto LABEL_16;
        }

        v8 = v20;
        v22 = _LTOSLogHotfix(v20, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_3();
        }

        (*(*(a1 + 56) + 16))();
        v23 = *(a1 + 32);
        v25 = v8;
        [v23 removeItemAtURL:hotfixBasePath error:&v25];
        v11 = v25;
      }
    }

    v24 = v11;
  }

LABEL_16:
}

void __48___LTHotfixManager__downloadWithURL_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "Failed to download hotfix at URL '%{public}@' with error: %@", &v4, 0x16u);
}

@end