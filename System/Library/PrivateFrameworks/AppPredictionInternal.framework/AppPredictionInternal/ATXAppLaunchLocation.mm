@interface ATXAppLaunchLocation
@end

@implementation ATXAppLaunchLocation

void __51___ATXAppLaunchLocation_resetAppIntentLocationData__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = objc_opt_new();
  v3 = v10[3];
  v10[3] = v2;

  v4 = objc_opt_new();
  v5 = v10[4];
  v10[4] = v4;

  v6 = objc_opt_new();
  v7 = v10[5];
  v10[5] = v6;

  v8 = objc_opt_new();
  v9 = v10[7];
  v10[7] = v8;

  [objc_opt_class() writeModel:v10];
}

void __57___ATXAppLaunchLocation_launchProbabilityAtLOI_bundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 uuid];
  v7 = [v3 objectForKeyedSubscript:v6];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v8 intValue];

  v9 = v5[6];
  v11 = [*(a1 + 32) uuid];
  v10 = [v9 objectForKeyedSubscript:v11];
  *(*(*(a1 + 56) + 8) + 24) = [v10 intValue];
}

void __51___ATXAppLaunchLocation_launchCountAtLOI_bundleId___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = [*(a1 + 32) uuid];
  v4 = [v3 objectForKeyedSubscript:v6];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v5 intValue];
}

void __58___ATXAppLaunchLocation_launchProbabilityAtLOI_appIntent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 uuid];
  v7 = [v3 objectForKeyedSubscript:v6];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v8 intValue];

  v9 = v5[7];
  v11 = [*(a1 + 32) uuid];
  v10 = [v9 objectForKeyedSubscript:v11];
  *(*(*(a1 + 56) + 8) + 24) = [v10 intValue];
}

void __73___ATXAppLaunchLocation_launchProbabilityAtLOI_appForAllIntentsBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[5];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 uuid];
  v7 = [v3 objectForKeyedSubscript:v6];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v8 intValue];

  v9 = v5[7];
  v11 = [*(a1 + 32) uuid];
  v10 = [v9 objectForKeyedSubscript:v11];
  *(*(*(a1 + 56) + 8) + 24) = [v10 intValue];
}

void __43___ATXAppLaunchLocation_trainWithCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
    [*(a1 + 32) _trainModelWithLOI:v5 startDate:v8];
  }

  else
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43___ATXAppLaunchLocation_trainWithCallback___block_invoke_cold_1();
    }
  }

  v10 = __atxlog_handle_default(v9);
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v15 = 136446210;
    v16 = "_ATXAppLaunchLocation";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_END, v12, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v15, 0xCu);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }

  v14 = objc_opt_self();
}

void __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = v20;
    v8 = [v6 objectForKeyedSubscript:v5];

    if (!v8)
    {
      v9 = objc_opt_new();
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
    }

    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v12 = [v7 bundleId];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v10 numberWithInteger:{objc_msgSend(v13, "integerValue") + 1}];
    v15 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v16 = [v7 bundleId];

    [v15 setObject:v14 forKeyedSubscript:v16];
    v17 = MEMORY[0x277CCABB0];
    v18 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue") + 1}];
    [*(a1 + 40) setObject:v19 forKeyedSubscript:v5];
  }
}

void __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_3_cold_1(a1);
  }

  v7 = a1[5];
  v40 = v5;
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = objc_opt_new();
    [a1[5] setObject:v9 forKeyedSubscript:v6];
  }

  v10 = [a1[6] objectForKeyedSubscript:v6];

  if (!v10)
  {
    v11 = objc_opt_new();
    [a1[6] setObject:v11 forKeyedSubscript:v6];
  }

  v12 = [a1[7] objectForKeyedSubscript:v6];

  if (!v12)
  {
    v13 = objc_opt_new();
    [a1[7] setObject:v13 forKeyedSubscript:v6];
  }

  v14 = MEMORY[0x277CEB2C8];
  v15 = [v40 bundleId];
  v16 = [v40 intentType];
  v17 = [v14 getActionKeyForBundleId:v15 actionType:v16];

  v18 = MEMORY[0x277CCABB0];
  v19 = [a1[5] objectForKeyedSubscript:v6];
  v20 = [v19 objectForKeyedSubscript:v17];
  v21 = [v18 numberWithInteger:{objc_msgSend(v20, "integerValue") + 1}];
  v22 = [a1[5] objectForKeyedSubscript:v6];
  [v22 setObject:v21 forKeyedSubscript:v17];

  v23 = MEMORY[0x277CCABB0];
  v24 = [a1[6] objectForKeyedSubscript:v6];
  v25 = [v40 intentType];
  v26 = [v24 objectForKeyedSubscript:v25];
  v27 = [v23 numberWithInteger:{objc_msgSend(v26, "integerValue") + 1}];
  v28 = [a1[6] objectForKeyedSubscript:v6];
  v29 = [v40 intentType];
  [v28 setObject:v27 forKeyedSubscript:v29];

  v30 = MEMORY[0x277CCABB0];
  v31 = [a1[7] objectForKeyedSubscript:v6];
  v32 = [v40 bundleId];
  v33 = [v31 objectForKeyedSubscript:v32];
  v34 = [v30 numberWithInteger:{objc_msgSend(v33, "integerValue") + 1}];
  v35 = [a1[7] objectForKeyedSubscript:v6];
  v36 = [v40 bundleId];

  [v35 setObject:v34 forKeyedSubscript:v36];
  v37 = MEMORY[0x277CCABB0];
  v38 = [a1[8] objectForKeyedSubscript:v6];
  v39 = [v37 numberWithInteger:{objc_msgSend(v38, "integerValue") + 1}];
  [a1[8] setObject:v39 forKeyedSubscript:v6];
}

void __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_4(id *a1, id *a2)
{
  objc_storeStrong(a2 + 2, a1[4]);
  v4 = a2;
  objc_storeStrong(v4 + 3, a1[5]);
  objc_storeStrong(v4 + 4, a1[6]);
  objc_storeStrong(v4 + 5, a1[7]);
  objc_storeStrong(v4 + 6, a1[8]);
  objc_storeStrong(v4 + 7, a1[9]);
  [objc_opt_class() writeModel:v4];
}

uint64_t __43___ATXAppLaunchLocation_sortTimeIntervals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3[1])
  {
    objc_initWeak(&location, *(a1 + 32));
    v4 = MEMORY[0x277D42598];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke_2;
    v7[3] = &unk_27859BA88;
    objc_copyWeak(&v9, &location);
    v8 = *(a1 + 40);
    v5 = [v4 registerForLockStateChangeNotifications:v7];
    v6 = v3[1];
    v3[1] = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 3 || !a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = __atxlog_handle_default(WeakRetained);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Model data unlocked! Loading...", v6, 2u);
      }

      [v4[2] runWithLockAcquired:&__block_literal_global_91_0];
      [v4 loadModelAtPath:*(a1 + 32)];
    }
  }
}

void __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D42598];
  v4 = a2[1];
  v5 = a2;
  [v3 unregisterForLockStateChangeNotifications:v4];
  v6 = a2[1];
  a2[1] = 0;
}

void __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"appLaunchCountMapKey"];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"appIntentLaunchCountMapKey"];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"intentLaunchCountMapKey"];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"appForAllIntentsLaunchCountMapKey"];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [*(a1 + 32) objectForKeyedSubscript:@"totalLaunchCountMapKey"];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [*(a1 + 32) objectForKeyedSubscript:@"totalIntentLaunchCountMapKey"];
  v16 = v4[7];
  v4[7] = v15;
}

void __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"_ATXAppLaunchLocation.m" lineNumber:228 description:@"Expected ATXIntentEvent class"];
}

@end