@interface DDSMobileAssetv2QueryAdapter
+ (id)maAssetQueryForddsAssetQuery:(id)query compatiblilityVersion:(int64_t)version platformVersion:(id)platformVersion internalInstall:(BOOL)install;
@end

@implementation DDSMobileAssetv2QueryAdapter

+ (id)maAssetQueryForddsAssetQuery:(id)query compatiblilityVersion:(int64_t)version platformVersion:(id)platformVersion internalInstall:(BOOL)install
{
  installCopy = install;
  v43[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  platformVersionCopy = platformVersion;
  v11 = objc_alloc(MEMORY[0x1E69B18E8]);
  assetType = [queryCopy assetType];
  v13 = [v11 initWithType:assetType];

  [v13 setDoNotBlockBeforeFirstUnlock:1];
  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    v15 = QueryLog([v13 setDoNotBlockOnNetworkStatus_]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:v15 compatiblilityVersion:? platformVersion:? internalInstall:?];
    }
  }

  else
  {
    v15 = QueryLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "WARNING: The version of DataDeliveryServices in this build does not set doNotBlockOnNetworkStatusSetter=YES, possibly resulting in hangs.", buf, 2u);
    }
  }

  filter = [queryCopy filter];
  filters = [filter filters];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke;
  v36 = &unk_1E86C5D38;
  v18 = v13;
  v37 = v18;
  [filters enumerateKeysAndObjectsUsingBlock:&v33];

  if (version >= 1)
  {
    v19 = [objc_opt_class() stringFromInteger:{version, v33, v34, v35, v36}];
    v20 = *MEMORY[0x1E69B1840];
    v21 = [v18 addKeyValuePair:*MEMORY[0x1E69B1840] with:v19];
    if (v21)
    {
      v22 = QueryLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:compatiblilityVersion:platformVersion:internalInstall:];
      }
    }

    if (installCopy)
    {
      v23 = [objc_opt_class() stringFromInteger:version];
      v24 = [v18 addKeyValuePair:v20 with:v23];
      if (v24)
      {
        v25 = QueryLog(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:compatiblilityVersion:platformVersion:internalInstall:];
        }
      }
    }
  }

  if (platformVersionCopy)
  {
    v43[0] = platformVersionCopy;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    v27 = [v26 mutableCopy];
    v28 = [v18 addKeyValueArray:@"_SupportedPlatforms" with:v27];

    if (v28)
    {
      v30 = QueryLog(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v38 = platformVersionCopy;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        *buf = 138543618;
        v40 = @"_SupportedPlatforms";
        v41 = 2114;
        v42 = v32;
        _os_log_error_impl(&dword_1DF7C6000, v30, OS_LOG_TYPE_ERROR, "Unexpected failure adding key (%{public}@)/value (%{public}@) pair", buf, 0x16u);
      }
    }
  }

  return v18;
}

void __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 anyObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = QueryLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_1();
    }

    goto LABEL_17;
  }

  if ([v6 count] == 1)
  {
    v10 = [v6 allObjects];
    v11 = [v10 firstObject];

    v12 = [v11 isEqualToString:&stru_1F5ABCB80];
    v13 = *(a1 + 32);
    if (v12)
    {
      v14 = [v13 addKeyValueNull:v5];
      if (v14)
      {
        v15 = QueryLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v20 = [v13 addKeyValuePair:v5 with:v11];
      if (v20)
      {
        v15 = QueryLog(v20);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_13:
          +[DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:compatiblilityVersion:platformVersion:internalInstall:];
        }

LABEL_14:
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = [v6 count];
  if (v16 < 2)
  {
    v11 = QueryLog(v16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_2(v5, v11);
    }

    goto LABEL_17;
  }

  v17 = *(a1 + 32);
  v18 = [v6 allObjects];
  v19 = [v18 mutableCopy];
  [v17 addKeyValueArray:v5 with:v19];

LABEL_18:
}

void __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "Skipping key: %{public}@ values: %{public}@ (is this the region dict? that's handled elsewhere)", v1, 0x16u);
}

void __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "No values specified for key (%{public}@)", &v2, 0xCu);
}

@end