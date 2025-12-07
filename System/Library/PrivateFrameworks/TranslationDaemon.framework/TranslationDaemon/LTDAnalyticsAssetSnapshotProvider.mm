@interface LTDAnalyticsAssetSnapshotProvider
@end

@implementation LTDAnalyticsAssetSnapshotProvider

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [_LTDAssetService filterConfigAssetFromAssets:a2];
  v8 = v6;
  if (!v5 && v6)
  {
    goto LABEL_5;
  }

  v9 = _LTOSLogAssets(v6, v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_cold_1();
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
LABEL_5:
    v12 = [v8 assetVersion];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_6;
  }

  v23 = _LTOSLogAssets(v10, v11);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_cold_2();
  }

LABEL_6:
  v16 = [v8 assetBuild];

  if (!v16)
  {
    v19 = _LTOSLogAssets(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_cold_3();
    }
  }

  v20 = [v8 assetBuild];
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  dispatch_group_leave(*(a1 + 32));
}

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [_LTDAssetService filterConfigAssetFromAssets:a2];
  v8 = v6;
  if (v5 || !v6)
  {
    v13 = _LTOSLogAssets(v6, v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_3_cold_1();
    }
  }

  else
  {
    v9 = [v6 assetVersion];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __73___LTDAnalyticsAssetSnapshotProvider_collectAssetSnapshotWithCompletion___block_invoke_4(void *a1)
{
  v2 = [[_LTDAnalyticsAssetSnapshot alloc] initWithAssetBuild:*(*(a1[5] + 8) + 40) expectedAssetVersion:*(*(a1[6] + 8) + 40) installedAssetVersion:*(*(a1[7] + 8) + 40)];
  (*(a1[4] + 16))();
}

@end