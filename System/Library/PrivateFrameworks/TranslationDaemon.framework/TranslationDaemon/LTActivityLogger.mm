@interface LTActivityLogger
@end

@implementation LTActivityLogger

void __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 hasAllData];
    if ((v5 & 1) == 0)
    {
      v7 = _LTOSLogAssets(v5, v6);
      v5 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke_cold_1(v7);
      }
    }

    v8 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke_cold_2(v3, v8);
    }

    v9 = objc_loadWeakRetained(WeakRetained + 2);
    [v9 activityLogger:WeakRetained logAssetSnapshot:v3 forDate:*(a1 + 32)];
  }
}

void __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Finished collecting an asset snapshot to report in analytics: %{public}@", &v2, 0xCu);
}

@end