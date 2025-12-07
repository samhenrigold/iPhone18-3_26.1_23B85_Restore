@interface DDSMAAutoAssetProvider
+ (id)fetchAssetUpdateStatusDateForAutoAsset:(id)asset;
+ (void)setFetchAssetUpdateStatusDateForAutoAsset:(id)asset;
- (id)autoAssetForAssetSelector:(id)selector;
- (id)lockAutoAssetSync:(id)sync forReason:(id)reason error:(id *)error;
- (void)eliminateInterestForAutoAsset:(id)asset;
- (void)fetchLockReasonCountForAutoAsset:(id)asset callback:(id)callback;
- (void)fetchUpdateStatusForAutoAsset:(id)asset completion:(id)completion;
- (void)interestInContentForAutoAsset:(id)asset completion:(id)completion;
- (void)lockAutoAsset:(id)asset forReason:(id)reason withTimeout:(int64_t)timeout completion:(id)completion;
- (void)unlockAutoAsset:(id)asset forReason:(id)reason;
- (void)updateAutoAsset:(id)asset forReason:(id)reason completion:(id)completion;
@end

@implementation DDSMAAutoAssetProvider

- (id)autoAssetForAssetSelector:(id)selector
{
  selectorCopy = selector;
  v4 = objc_alloc(MEMORY[0x1E69B18F8]);
  assetSelector = [selectorCopy assetSelector];
  v12 = 0;
  v6 = [v4 initForClientName:@"com.apple.DataDeliveryServices" selectingAsset:assetSelector error:&v12];
  v7 = v12;

  if (v7)
  {
    v9 = AutoAssetLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DDSMAAutoAssetProvider autoAssetForAssetSelector:selectorCopy];
    }

    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (void)fetchLockReasonCountForAutoAsset:(id)asset callback:(id)callback
{
  assetCopy = asset;
  callbackCopy = callback;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke;
  v9[3] = &unk_1E86C5E80;
  v10 = assetCopy;
  v11 = callbackCopy;
  v7 = callbackCopy;
  v8 = assetCopy;
  [v8 currentStatus:v9];
}

void __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v6 = [v6 code];
    if (v6 == 6301)
    {
      v8 = AutoAssetLog(6301);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) assetSelector];
        v20 = 138543362;
        v21 = v9;
        _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Auto asset status is not available for assetSelector: %{public}@", &v20, 0xCu);
      }

      v10 = *(*(a1 + 40) + 16);
LABEL_13:
      v10();
      goto LABEL_14;
    }
  }

  v11 = AutoAssetLog(v6);
  v12 = v11;
  if (!v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke_cold_1(a1);
    }

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 currentLockUsage];
    v14 = [v13 count];
    v15 = [*(a1 + 32) assetSelector];
    v20 = 134218242;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Auto asset lock reason count: %lu for assetSelector: %{public}@", &v20, 0x16u);
  }

  v16 = *(a1 + 40);
  v17 = MEMORY[0x1E696AD98];
  v18 = [v5 currentLockUsage];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
  (*(v16 + 16))(v16, v19, 0);

LABEL_14:
}

- (void)lockAutoAsset:(id)asset forReason:(id)reason withTimeout:(int64_t)timeout completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionCopy = completion;
  reasonCopy = reason;
  v12 = AutoAssetLog(reasonCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector = [assetCopy assetSelector];
    *buf = 138412290;
    v21 = assetSelector;
    _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Lock auto asset: %@", buf, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x1E69B1908]);
  [v14 setUserInitiated:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__DDSMAAutoAssetProvider_lockAutoAsset_forReason_withTimeout_completion___block_invoke;
  v17[3] = &unk_1E86C5EA8;
  v18 = assetCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = assetCopy;
  [v16 lockContent:reasonCopy withUsagePolicy:v14 withTimeout:timeout completion:v17];
}

void __73__DDSMAAutoAssetProvider_lockAutoAsset_forReason_withTimeout_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  v10 = AutoAssetLog(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = [*(a1 + 32) assetSelector];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Auto asset: %{public}@ present at path: %{public}@", &v14, 0x16u);
    }
  }

  else if (v11)
  {
    v13 = [*(a1 + 32) assetSelector];
    v14 = 138543618;
    v15 = v13;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get content localContentURL for: %{public}@ with error: %{public}@", &v14, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)lockAutoAssetSync:(id)sync forReason:(id)reason error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v7 = [syncCopy lockContentSync:reason withTimeout:0 lockedAssetSelector:&v34 newerInProgress:&v33 error:&v32];
  v8 = v34;
  v9 = v33;
  v10 = v32;
  v11 = AutoAssetLog(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v12)
    {
      assetSelector = [syncCopy assetSelector];
      *buf = 138412546;
      v36 = assetSelector;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "lockContentSync completed for auto asset: %@ with error: %@", buf, 0x16u);
    }

    v31 = v10;
    v11 = [objc_alloc(MEMORY[0x1E69B18F8]) initForClientName:@"data-delivery-service" selectingAsset:v8 error:&v31];
    v14 = v31;

    if (!v11)
    {
      v16 = AutoAssetLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v8;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&dword_1DF7C6000, v16, OS_LOG_TYPE_DEFAULT, "Cannot create auto asset instance with selector: %@, error: %@", buf, 0x16u);
      }

      v22 = 0;
      v10 = v14;
      goto LABEL_24;
    }

    v30 = v14;
    v16 = [v11 currentStatusSync:&v30];
    v10 = v30;

    if (!v16)
    {
      v18 = AutoAssetLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        assetSelector2 = [v11 assetSelector];
        *buf = 138412546;
        v36 = assetSelector2;
        v37 = 2112;
        v38 = v10;
        _os_log_impl(&dword_1DF7C6000, v18, OS_LOG_TYPE_DEFAULT, "Fetch status for locked auto asset: %@ completed with error: %@", buf, 0x16u);
      }

      v22 = 0;
      goto LABEL_23;
    }

    v18 = objc_opt_new();
    availableForUseAttributes = [v16 availableForUseAttributes];

    if (availableForUseAttributes)
    {
      availableForUseAttributes2 = [v16 availableForUseAttributes];
    }

    else
    {
      newerVersionAttributes = [v16 newerVersionAttributes];

      if (!newerVersionAttributes)
      {
LABEL_20:
        v27 = AutoAssetLog(v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          assetSelector3 = [v11 assetSelector];
          *buf = 138412546;
          v36 = assetSelector3;
          v37 = 2112;
          v38 = v18;
          _os_log_impl(&dword_1DF7C6000, v27, OS_LOG_TYPE_DEFAULT, "Auto Asset: %@, Attributes: %@", buf, 0x16u);
        }

        v22 = [[DDSAsset alloc] initWithAttributes:v18 localURL:v7];
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      availableForUseAttributes2 = [v16 newerVersionAttributes];
    }

    v26 = availableForUseAttributes2;
    [v18 addEntriesFromDictionary:availableForUseAttributes2];

    goto LABEL_20;
  }

  if (v12)
  {
    assetSelector4 = [syncCopy assetSelector];
    *buf = 138412546;
    v36 = assetSelector4;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "lockContentSync failed for auto asset: %@ with error: %@", buf, 0x16u);
  }

  v22 = 0;
LABEL_25:

  return v22;
}

- (void)unlockAutoAsset:(id)asset forReason:(id)reason
{
  assetCopy = asset;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__DDSMAAutoAssetProvider_unlockAutoAsset_forReason___block_invoke;
  v7[3] = &unk_1E86C5ED0;
  v8 = assetCopy;
  v6 = assetCopy;
  [v6 endLockUsage:reason completion:v7];
}

void __52__DDSMAAutoAssetProvider_unlockAutoAsset_forReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AutoAssetLog(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1 + 32) assetSelector];
      v12 = 138543362;
      v13 = v8;
      v9 = "Auto asset: %{public}@ unlocked successfully";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    }
  }

  else if (v7)
  {
    v8 = [*(a1 + 32) assetSelector];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    v9 = "End lock for auto asset: %{public}@ failed with error: %{public}@";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }
}

- (void)interestInContentForAutoAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke;
  v9[3] = &unk_1E86C5EF8;
  v10 = assetCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = assetCopy;
  [v8 interestInContent:@"dds-auto-asset-interest" completion:v9];
}

void __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AutoAssetLog(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "interestInContent successful for asset selector: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)eliminateInterestForAutoAsset:(id)asset
{
  assetCopy = asset;
  v4 = MEMORY[0x1E69B18F8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke;
  v6[3] = &unk_1E86C5ED0;
  v7 = assetCopy;
  v5 = assetCopy;
  [v4 eliminateAllForSelector:v5 completion:v6];
}

void __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AutoAssetLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "eliminateAllForSelector successful for asset selector: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke_cold_1(a1, v5);
  }
}

+ (void)setFetchAssetUpdateStatusDateForAutoAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = MEMORY[0x1E696AEC0];
  assetSelector = [assetCopy assetSelector];
  assetType = [assetSelector assetType];
  assetSelector2 = [assetCopy assetSelector];
  assetSpecifier = [assetSelector2 assetSpecifier];
  v9 = [v4 stringWithFormat:@"%@-%@-%@", @"DDSAutoAssetPreferences", assetType, assetSpecifier];

  date = [MEMORY[0x1E695DF00] date];
  v11 = AutoAssetLog(date);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector3 = [assetCopy assetSelector];
    *buf = 138412546;
    v14 = assetSelector3;
    v15 = 2112;
    v16 = date;
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "Did server lookup for auto asset: %@ on %@", buf, 0x16u);
  }

  DDSSetPreferenceObjectForKey(v9, date);
}

+ (id)fetchAssetUpdateStatusDateForAutoAsset:(id)asset
{
  v3 = MEMORY[0x1E696AEC0];
  assetCopy = asset;
  assetSelector = [assetCopy assetSelector];
  assetType = [assetSelector assetType];
  assetSelector2 = [assetCopy assetSelector];

  assetSpecifier = [assetSelector2 assetSpecifier];
  v9 = [v3 stringWithFormat:@"%@-%@-%@", @"DDSAutoAssetPreferences", assetType, assetSpecifier];

  v10 = DDSGetPreferenceObjectForKey(v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (void)fetchUpdateStatusForAutoAsset:(id)asset completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionCopy = completion;
  v7 = AutoAssetLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector = [assetCopy assetSelector];
    *buf = 138412290;
    v23 = assetSelector;
    _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Fetch asset update status for auto asset: %@", buf, 0xCu);
  }

  v9 = [DDSMAAutoAssetProvider fetchAssetUpdateStatusDateForAutoAsset:assetCopy];
  v10 = v9;
  if (v9 && (v9 = [v9 timeIntervalSinceNow], v11 > -86400.0))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke;
    v20[3] = &unk_1E86C5F20;
    v12 = &v21;
    v21 = completionCopy;
    v13 = completionCopy;
    [assetCopy currentStatus:v20];
  }

  else
  {
    v14 = AutoAssetLog(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DDSMAAutoAssetProvider fetchUpdateStatusForAutoAsset:assetCopy completion:v14];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_36;
    v17[3] = &unk_1E86C5F48;
    v12 = &v18;
    v15 = assetCopy;
    v18 = v15;
    v19 = completionCopy;
    v16 = completionCopy;
    [v15 determineIfAvailable:@"dds-asset-download-ui-determine-if-available" withTimeout:-2 completion:v17];
  }
}

void __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [a2 notifications];
    (*(v7 + 16))(v7, [v8 newerVersionDiscovered], 0);
  }

  else
  {
    v9 = AutoAssetLog(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Cannot fetch the current status of auto asset due to error: %@", &v10, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_36(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    v18 = 0;
    v10 = [objc_alloc(MEMORY[0x1E69B18F8]) initForClientName:@"com.apple.DataDeliveryServices" selectingAsset:v7 error:&v18];
    v11 = v18;
    v12 = v11;
    if (v10)
    {
      [DDSMAAutoAssetProvider setFetchAssetUpdateStatusDateForAutoAsset:v10];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_37;
      v16[3] = &unk_1E86C5F20;
      v17 = *(a1 + 40);
      [v10 currentStatus:v16];
    }

    else
    {
      v15 = AutoAssetLog(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "Cannot create auto asset for asset selector: %@ due to error: %@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v13 = AutoAssetLog(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) assetSelector];
      *buf = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "Auto asset: %@, determineIfAvailable failed with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    if ([v9 code] == 6201)
    {
      [DDSMAAutoAssetProvider setFetchAssetUpdateStatusDateForAutoAsset:*(a1 + 32)];
    }
  }
}

void __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [a2 notifications];
    (*(v7 + 16))(v7, [v8 newerVersionDiscovered], 0);
  }

  else
  {
    v9 = AutoAssetLog(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Cannot fetch the current status of auto asset due to error: %@", &v10, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)updateAutoAsset:(id)asset forReason:(id)reason completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  reasonCopy = reason;
  completionCopy = completion;
  v11 = AutoAssetLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector = [assetCopy assetSelector];
    *buf = 138412290;
    v19 = assetSelector;
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "Download latest version of auto asset: %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__DDSMAAutoAssetProvider_updateAutoAsset_forReason_completion___block_invoke;
  v15[3] = &unk_1E86C5F98;
  v16 = reasonCopy;
  v17 = completionCopy;
  v15[4] = self;
  v13 = reasonCopy;
  v14 = completionCopy;
  [assetCopy determineIfAvailable:v13 withTimeout:-2 completion:v15];
}

void __63__DDSMAAutoAssetProvider_updateAutoAsset_forReason_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v18 = 0;
    v9 = [objc_alloc(MEMORY[0x1E69B18F8]) initForClientName:@"com.apple.DataDeliveryServices" selectingAsset:v6 error:&v18];
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __63__DDSMAAutoAssetProvider_updateAutoAsset_forReason_completion___block_invoke_39;
      v16[3] = &unk_1E86C5F70;
      v17 = *(a1 + 48);
      [v12 lockAutoAsset:v9 forReason:v13 withTimeout:-1 completion:v16];
    }

    else
    {
      v15 = AutoAssetLog(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "Cannot create auto asset for asset selector: %@ due to error: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v14 = AutoAssetLog(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Cannot determine the latest auto asset version due to error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)autoAssetForAssetSelector:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 assetSelector];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) assetSelector];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 32) assetSelector];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "eliminateAllForSelector failed for auto asset selector: %@", &v3, 0xCu);
}

- (void)fetchUpdateStatusForAutoAsset:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetSelector];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Determine latest version of auto asset: %@ on server", &v4, 0xCu);
}

@end