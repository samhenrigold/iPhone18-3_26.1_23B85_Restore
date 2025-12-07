uint64_t SRIsRunningInServer(uint64_t a1, uint64_t a2)
{
  if (SRIsRunningInServer_onceToken != -1)
  {
    SRIsRunningInServer_cold_1();
  }

  return SRIsRunningInServer_sRunningInServer;
}

void __SRIsRunningInServer_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];

  v3 = [v4 isEqualToString:@"com.apple.Search.framework"];
  if (v3)
  {
    LOBYTE(v3) = [v2 isEqualToString:@"searchd"];
  }

  SRIsRunningInServer_sRunningInServer = v3;
}

id SRLogCategoryAssets(uint64_t a1)
{
  if (SRLogCategoryAssets_onceToken != -1)
  {
    SRLogCategoryAssets_cold_1();
  }

  v2 = SRLogCategoryAssets_assetsLog;

  return v2;
}

uint64_t __SRLogCategoryAssets_block_invoke()
{
  SRLogCategoryAssets_assetsLog = os_log_create("com.apple.spotlight.resources", "Assets");

  return MEMORY[0x1EEE66BB8]();
}

id getMobileAssetPropertiesFromPath(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [[v3 alloc] initWithFormat:@"%@/Info.plist", v4];

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6 error:a2];
  v8 = v7;
  if (*a2)
  {
    v9 = SRLogCategoryAssets(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      getMobileAssetPropertiesFromPath_cold_1(a2, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = 0;
  }

  else
  {
    v16 = [v7 objectForKeyedSubscript:@"MobileAssetProperties"];
  }

  return v16;
}

uint64_t deliveryTypeID(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Required"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Optional"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Optional2024"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Delta"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Optional2025"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Delta2025"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Optional2025Test"])
  {
    v2 = 68;
  }

  else
  {
    v3 = [v1 isEqualToString:@"Delta2025Test"];
    if (v3)
    {
      v2 = 69;
    }

    else
    {
      v4 = SRLogCategoryAssets(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        deliveryTypeID_cold_1();
      }

      v2 = -1;
    }
  }

  return v2;
}

uint64_t SRIsAppleInternalInstall(uint64_t a1, uint64_t a2)
{
  if (SRIsAppleInternalInstall_onceToken != -1)
  {
    SRIsAppleInternalInstall_cold_1();
  }

  return SRIsAppleInternalInstall_isInternalInstall;
}

void __SRIsAppleInternalInstall_block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 isEqualToString:@"Internal"];
  }

  else
  {
    v0 = 0;
  }

  SRIsAppleInternalInstall_isInternalInstall = v0;
}

__CFString *deliveryTypeString(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 67)
    {
      if (a1 == 68)
      {
        return @"Optional2025Test";
      }

      if (a1 == 69)
      {
        return @"Delta2025Test";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return @"Optional2025";
      }

      if (a1 == 5)
      {
        return @"Delta2025";
      }
    }

    return @"Unknown";
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"Required";
    }

    if (a1 == 1)
    {
      return @"Optional";
    }

    return @"Unknown";
  }

  if (a1 == 2)
  {
    return @"Optional2024";
  }

  else
  {
    return @"Delta";
  }
}

id SRLogCategorySafety(uint64_t a1)
{
  if (SRLogCategorySafety_onceToken != -1)
  {
    SRLogCategorySafety_cold_1();
  }

  v2 = SRLogCategorySafety_safetyLog;

  return v2;
}

uint64_t __SRLogCategorySafety_block_invoke()
{
  SRLogCategorySafety_safetyLog = os_log_create("com.apple.spotlight.resources", "Safety");

  return MEMORY[0x1EEE66BB8]();
}

id SRLogCategoryTrial(uint64_t a1)
{
  if (SRLogCategoryTrial_onceToken != -1)
  {
    SRLogCategoryTrial_cold_1();
  }

  v2 = SRLogCategoryTrial_trialLog;

  return v2;
}

uint64_t __SRLogCategoryTrial_block_invoke()
{
  SRLogCategoryTrial_trialLog = os_log_create("com.apple.spotlight.resources", "Trial");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1AE59053C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE590914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SRAssetBundleQuery *assetBundleCacheQuery(void *a1, void *a2, char a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v20 = a2;
  v17 = v5;
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
  v23 = objc_alloc_init(SRAssetBundleQuery);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v19 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v7;
        v8 = *(*(&v28 + 1) + 8 * v7);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = v20;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * i);
              v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if ([v14 isEqualToString:@"com.apple.MobileAsset.SpotlightResources"] && (a3 & 1) == 0)
              {
                [v15 addObject:&unk_1F2427C38];
                [v15 addObject:&unk_1F2427C50];
              }

              if ([v15 count])
              {
                [(SRAssetBundleQuery *)v23 addQueryEntriesForLanguage:v8 assetType:v14 deliveryTypes:v15];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }

        v7 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  return v23;
}

uint64_t assetTypeID(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MobileAsset.SpotlightResources"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"com.apple.MobileAsset.LinguisticData"])
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

id normalizedLocaleForIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v1];
  }

  else
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v3 = v2;
  if (!v2)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v4 = [v2 countryCode];
  v5 = getValidRegions();
  v6 = v5;
  if (!v4 || ([v5 containsObject:v4] & 1) == 0)
  {

    v4 = @"US";
  }

  v7 = [v3 languageCode];
  v8 = [v3 scriptCode];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@_%@", v7, v8, v4];
  }

  else
  {
    if (!v7)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v7, v4, v14];
  }

  v12 = v10;
  v11 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v10];

LABEL_15:
LABEL_16:

  return v11;
}

id getValidRegions()
{
  if (getValidRegions_onceToken != -1)
  {
    getValidRegions_cold_1();
  }

  v1 = getValidRegions_gRegions;

  return v1;
}

void __getValidRegions_block_invoke()
{
  v0 = getValidRegions_gRegions;
  getValidRegions_gRegions = &unk_1F2427C08;
}

id languageCodeForLocale(void *a1)
{
  v1 = a1;
  v2 = [v1 languageCode];
  v3 = [v1 scriptCode];
  if ([v2 isEqualToString:@"zh"])
  {
    v4 = [v1 countryCode];
    v5 = v4;
    if (v3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v2, v3];
    }

    else if (v4 && [&unk_1F2427BF0 containsObject:v4])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Hant", v2, v9];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Hans", v2, v9];
    }
    v6 = ;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;

  return v6;
}

void refreshCacheWithQuery(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v8 = SRIsRunningInServer(v6, v7);
  v9 = v8;
  v10 = SRLogCategoryAssets(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      refreshCacheWithQuery_cold_2();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      refreshCacheWithQuery_cold_1();
    }

    v12 = +[SRAssetBundleCache sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __refreshCacheWithQuery_block_invoke;
    v13[3] = &unk_1E7A2B870;
    v14 = v6;
    [v12 queryServerCache:v5 force:a2 completion:v13];

    v11 = v14;
  }
}

id SRGetResourcePath()
{
  if (SRGetResourcePath_onceToken != -1)
  {
    SRGetResourcePath_cold_1();
  }

  v1 = SRGetResourcePath_sResourcePath;

  return v1;
}

void __SRGetResourcePath_block_invoke()
{
  v0 = SRGetResourcePath_sResourcePath;
  SRGetResourcePath_sResourcePath = @"/var/mobile/Library/Spotlight/Assets";
}

void sub_1AE592C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE593168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t trialFlagsForProcess(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (trialFlagsForProcess_onceToken != -1)
  {
    trialFlagsForProcess_cold_1();
  }

  v1 = SRLogCategoryTrial(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = trialFlagsForProcess_sTrialFlagsForProcess;
    _os_log_impl(&dword_1AE58E000, v1, OS_LOG_TYPE_INFO, "Process has trial access flags 0x%x", v3, 8u);
  }

  return trialFlagsForProcess_sTrialFlagsForProcess;
}

void __trialFlagsForProcess_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];

  if ([v4 isEqualToString:@"com.apple.Search.framework"] && (objc_msgSend(v2, "isEqualToString:", @"searchd") & 1) != 0)
  {
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"com.apple.Spotlight"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.spotlightui.cli"))
  {
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"com.apple.CoreSpotlight.framework"] && (objc_msgSend(v2, "isEqualToString:", @"spotlightknowledged") & 1) != 0)
  {
    v3 = 2;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"com.apple.mobilemail"])
  {
    v3 = 4;
    goto LABEL_7;
  }

  if ([v4 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"com.apple.intelligenceflow") & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"com.apple.ondeviceeval"))
  {
LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  if (([v4 hasPrefix:@"com.apple.dt.xctest"] & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"com.apple.") && objc_msgSend(v4, "hasSuffix:", @".xctrunner"))
  {
LABEL_3:
    v3 = 7;
LABEL_7:
    trialFlagsForProcess_sTrialFlagsForProcess = v3;
  }
}

__CFString *assetTypeString(uint64_t a1)
{
  if (!a1)
  {
    return @"com.apple.MobileAsset.SpotlightResources";
  }

  if (a1 == 1)
  {
    return @"com.apple.MobileAsset.LinguisticData";
  }

  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    assetTypeString_cold_1();
  }

  return @"Unknown";
}

id SRLogCategoryLifeCycle(uint64_t a1)
{
  if (SRLogCategoryLifeCycle_onceToken != -1)
  {
    SRLogCategoryLifeCycle_cold_1();
  }

  v2 = SRLogCategoryLifeCycle_lifecycleLog;

  return v2;
}

uint64_t __SRLogCategoryLifeCycle_block_invoke()
{
  SRLogCategoryLifeCycle_lifecycleLog = os_log_create("com.apple.spotlight.resources", "LifeCycle");

  return MEMORY[0x1EEE66BB8]();
}

id SRLogCategoryGeneral()
{
  if (SRLogCategoryGeneral_onceToken != -1)
  {
    SRLogCategoryGeneral_cold_1();
  }

  v1 = SRLogCategoryGeneral_generalLog;

  return v1;
}

uint64_t __SRLogCategoryGeneral_block_invoke()
{
  SRLogCategoryGeneral_generalLog = os_log_create("com.apple.spotlight.resources", "General");

  return MEMORY[0x1EEE66BB8]();
}

id localeIdentifierForLocale(void *a1)
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v1 = a1;
  v2 = [v1 countryCode];
  v3 = getValidRegions();
  v4 = v3;
  if (!v2 || ([v3 containsObject:v2] & 1) == 0)
  {

    v2 = @"US";
  }

  v5 = [v1 languageCode];
  v6 = [v1 scriptCode];

  if (v5 && v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@_%@", v5, v6, v2];
  }

  else
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v5, v2, v10];
  }

  v8 = v7;
LABEL_12:

LABEL_13:

  return v8;
}

id getBundleVersionFromPath(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/Info.plist", v1];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = MEMORY[0x1E695DF20];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    v17 = 0;
    v7 = [v5 dictionaryWithContentsOfURL:v6 error:&v17];
    v8 = v17;

    if (v8)
    {
      v10 = SRLogCategoryAssets(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        getBundleVersionFromPath_cold_1();
      }

      v11 = 0;
      v12 = v7;
      v7 = v8;
    }

    else
    {
      v14 = [v7 objectForKeyedSubscript:@"MobileAssetProperties"];
      if (v14)
      {
        v15 = [v7 objectForKeyedSubscript:@"MobileAssetProperties"];
        v11 = [v15 objectForKeyedSubscript:@"SRBundleVersion"];
      }

      else
      {
        v11 = 0;
      }

      v16 = [v11 isEqualToString:@"9999.99.99"];
      if (!v16)
      {
        goto LABEL_7;
      }

      v12 = SRLogCategoryAssets(v16);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v1;
        _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "Asset is from roots: %@", buf, 0xCu);
      }
    }

LABEL_7:
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

id assetUUIDFromPath(void *a1)
{
  v1 = [a1 stringByDeletingPathExtension];
  v2 = [v1 lastPathComponent];

  return v2;
}

void sub_1AE5953EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id SRLogCategoryTool(uint64_t a1)
{
  if (SRLogCategoryTool_onceToken != -1)
  {
    SRLogCategoryTool_cold_1();
  }

  v2 = SRLogCategoryTool_toolLog;

  return v2;
}

uint64_t __SRLogCategoryTool_block_invoke()
{
  SRLogCategoryTool_toolLog = os_log_create("com.apple.spotlight.resources", "Tool");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1AE59E9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t SRIsAssetAvailable(void *a1, void *a2, void *a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = deliveryTypeFromLowerCaseString(v10);
  v13 = languageFromLowerCaseString(v11);
  if (SRIsRunningInServer(v13, v14))
  {
    v15 = +[SRDefaultsManager sharedDefaultsManager];
    v16 = [v15 langConfig];

    if ([v12 isEqualToString:@"Required"])
    {
      goto LABEL_3;
    }

    v31 = [v12 hasSuffix:@"Test"];
    v32 = [v16 hasTestAssets];
    if (v31)
    {
      if (v32)
      {
LABEL_3:
        if ([v16 isSupportedLanguage:v13 deliveryType:v12])
        {
          goto LABEL_4;
        }

LABEL_34:
        v26 = 2;
        goto LABEL_37;
      }
    }

    else if ((v32 & 1) == 0)
    {
      if ([v16 isSupportedLanguage:v13 deliveryType:v12])
      {
LABEL_4:
        v34 = getAssetBundleInfo(v12, v13, (a4 | a5 | a6) == 0);
        v17 = SRLogCategoryTool(v34);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          if (v18)
          {
            *buf = 138412546;
            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_DEFAULT, "Yes asset for (%@, %@)", buf, 0x16u);
          }

          if (a3)
          {
            v19 = [v34 objectForKeyedSubscript:@"Path"];
            *a3 = v19;
            v20 = SRLogCategoryTool(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              SRIsAssetAvailable_cold_1();
            }
          }

          if (a4)
          {
            v21 = [v34 objectForKeyedSubscript:@"Compatibility Version"];
            *a4 = v21;
            v22 = SRLogCategoryTool(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              SRIsAssetAvailable_cold_2();
            }
          }

          if (a5)
          {
            v23 = [v34 objectForKeyedSubscript:@"Content Version"];
            *a5 = v23;
            v24 = SRLogCategoryTool(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              SRIsAssetAvailable_cold_3();
            }
          }

          if (!a6)
          {
            v26 = 1;
            goto LABEL_36;
          }

          v25 = [v34 objectForKeyedSubscript:@"Bundle Version"];
          *a6 = v25;
          v17 = SRLogCategoryTool(v25);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            SRIsAssetAvailable_cold_4();
          }

          v26 = 1;
        }

        else
        {
          if (v18)
          {
            *buf = 138412546;
            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_DEFAULT, "No asset for (%@, %@)", buf, 0x16u);
          }

          v26 = 0;
        }

LABEL_36:
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v26 = 0;
LABEL_37:

    goto LABEL_38;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v38 = 0;
  empty = xpc_dictionary_create_empty();
  v28 = v12;
  xpc_dictionary_set_string(empty, "d", [v12 UTF8String]);
  v29 = v13;
  xpc_dictionary_set_string(empty, "l", [v13 UTF8String]);
  v30 = +[SRXPCConnection sharedConnection];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __SRIsAssetAvailable_block_invoke;
  v36[3] = &unk_1E7A2B0D8;
  v36[4] = buf;
  [v30 sendCommand:1 info:empty sync:1 completion:v36];

  v26 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_38:

  return v26;
}

void sub_1AE5A0B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id deliveryTypeFromLowerCaseString(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"test"])
  {
    v2 = [v1 substringWithRange:{0, objc_msgSend(v1, "length") - objc_msgSend(@"test", "length")}];
    if ([v2 hasPrefix:@"optional"])
    {
      v3 = 68;
    }

    else if ([v2 hasPrefix:@"delta"])
    {
      v3 = 69;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v4 = [v1 hasPrefix:@"required"];
    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v4 = [v1 hasPrefix:@"optional"];
      if (v4)
      {
        v3 = 4;
      }

      else
      {
        v4 = [v1 hasPrefix:@"delta"];
        if (v4)
        {
          v3 = 5;
        }

        else
        {
          v3 = -1;
        }
      }
    }
  }

  v5 = SRLogCategoryTool(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    deliveryTypeFromLowerCaseString_cold_1();
  }

  v6 = deliveryTypeString(v3);

  return v6;
}

id languageFromLowerCaseString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v1];
  v3 = languageCodeForLocale(v2);

  v5 = SRLogCategoryTool(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    languageFromLowerCaseString_cold_1();
  }

  return v3;
}

NSObject *getAssetBundleInfo(void *a1, void *a2, unsigned int a3)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = SRLogCategoryTool(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v63 = v5;
    v64 = 2112;
    v65 = v6;
    v66 = 1024;
    v67 = a3;
    _os_log_debug_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEBUG, "getAssetBundleInfo(%@, %@, %d)", buf, 0x1Cu);
  }

  v8 = [v5 isEqualToString:@"Required"];
  if ((v8 & 1) != 0 || (v8 = [v5 hasSuffix:@"Test"], v8))
  {
    v9 = SRLogCategoryTool(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      getAssetBundleInfo_cold_4(v9);
    }

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@Assets_%@", v5, v6];
    v11 = +[SRDefaultsManager sharedDefaultsManager];
    v12 = [v11 resourceBundle];

    if (v12)
    {
      v14 = [v12 pathForResource:v10 ofType:@"bundle"];
      if (v14)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v16 = [v15 setObject:v14 forKeyedSubscript:@"Path"];
        if (a3)
        {
          v17 = SRLogCategoryTool(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            getAssetBundleInfo_cold_2();
          }
        }

        else
        {
          v59 = v6;
          v33 = getBundleVersionFromPath(v14);
          [v15 setObject:v33 forKeyedSubscript:@"Bundle Version"];

          v61 = 0;
          v34 = getMobileAssetPropertiesFromPath(v14, &v61);
          v35 = v61;
          v36 = [v34 mutableCopy];

          v37 = [v36 objectForKeyedSubscript:@"_CompatibilityVersion"];
          [v15 setObject:v37 forKeyedSubscript:@"Compatibility Version"];

          v38 = +[SRDefaultsManager sharedDefaultsManager];
          v39 = [v38 requiredAssetsContentVersion];
          [v15 setObject:v39 forKeyedSubscript:@"Content Version"];

          v40 = +[SRDefaultsManager sharedDefaultsManager];
          v41 = [v40 requiredAssetsContentVersion];
          [v36 setObject:v41 forKeyedSubscript:@"_ContentVersion"];

          v42 = SRLogCategoryTool([v15 setObject:v36 forKeyedSubscript:@"MobileAsset Properties"]);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            getAssetBundleInfo_cold_2();
          }

          v17 = v15;
          v15 = v17;
          v6 = v59;
        }
      }

      else
      {
        v17 = SRLogCategoryTool(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v63 = v5;
          v64 = 2112;
          v65 = v6;
          _os_log_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_DEFAULT, "getAssetBundleInfo(%@, %@) failed to get path", buf, 0x16u);
        }

        v15 = 0;
      }

      goto LABEL_41;
    }

    v14 = SRLogCategoryTool(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v63 = v5;
      v64 = 2112;
      v65 = v6;
      _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "getAssetBundleInfo(%@, %@) failed to get resource bundle", buf, 0x16u);
    }

LABEL_36:
    v15 = 0;
    goto LABEL_41;
  }

  v18 = SRLogCategoryTool(v8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    getAssetBundleInfo_cold_1(v18);
  }

  v10 = objc_alloc_init(SRAssetBundleQuery);
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:deliveryTypeID(v5)];
  v74[0] = v19;
  v20 = 1;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  [(SRAssetBundleQuery *)v10 addQueryEntriesForLanguage:v6 assetType:@"com.apple.MobileAsset.SpotlightResources" deliveryTypes:v21];

  v22 = +[SRAssetBundleCache sharedInstance];
  [v22 queryCache:v10 loading:0];

  v23 = [(SRAssetBundleQuery *)v10 queryEntries];
  v24 = [v23 objectForKeyedSubscript:v6];
  v25 = [v24 objectForKeyedSubscript:@"com.apple.MobileAsset.SpotlightResources"];
  v12 = [v25 objectForKeyedSubscript:v5];

  v26 = [v12 isResult];
  if (!v26)
  {
    goto LABEL_33;
  }

  v26 = [v12 bundleVersion];
  if (!v26)
  {
    goto LABEL_31;
  }

  v27 = v26;
  v28 = [v12 path];
  if (!v28)
  {

LABEL_31:
    v20 = 1;
    goto LABEL_33;
  }

  v29 = v28;
  v30 = [v12 onDevice];

  if (v30)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = [v12 path];
    [v15 setObject:v31 forKeyedSubscript:@"Path"];

    if (a3)
    {
      v14 = SRLogCategoryTool(v32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        getAssetBundleInfo_cold_2();
      }
    }

    else
    {
      v50 = [v12 bundleVersion];
      v51 = [v50 version];
      [v15 setObject:v51 forKeyedSubscript:@"Bundle Version"];

      v52 = [v12 path];
      v60 = 0;
      v53 = getMobileAssetPropertiesFromPath(v52, &v60);
      v54 = v60;

      v55 = [v53 objectForKeyedSubscript:@"_CompatibilityVersion"];
      [v15 setObject:v55 forKeyedSubscript:@"Compatibility Version"];

      v56 = [v53 objectForKeyedSubscript:@"_ContentVersion"];
      [v15 setObject:v56 forKeyedSubscript:@"Content Version"];

      v57 = SRLogCategoryTool([v15 setObject:v53 forKeyedSubscript:@"MobileAsset Properties"]);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        getAssetBundleInfo_cold_2();
      }

      v14 = v15;
      v15 = v14;
    }

    goto LABEL_41;
  }

  v20 = 0;
LABEL_33:
  v14 = SRLogCategoryTool(v26);
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_36;
  }

  v43 = v20;
  v44 = [v12 isResult];
  v45 = [v12 bundleVersion];
  v46 = v6;
  if (v45)
  {
    v58 = [v12 bundleVersion];
    v47 = [v58 version];
  }

  else
  {
    v47 = 0;
  }

  v48 = [v12 path];
  *buf = 138413570;
  v63 = v5;
  v64 = 2112;
  v65 = v46;
  v66 = 1024;
  v67 = v44;
  v68 = 2112;
  v69 = v47;
  v70 = 2112;
  v71 = v48;
  v72 = 1024;
  v73 = v43;
  _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "getAssetBundleInfo(%@, %@) = (%d, %@, %@, %d)", buf, 0x36u);

  if (v45)
  {
  }

  v15 = 0;
  v6 = v46;
LABEL_41:

  return v15;
}

void __SRIsAssetAvailable_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = SRLogCategoryAssets(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __SRIsAssetAvailable_block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(v5, "av");
  }
}

uint64_t SRAreAssetsAvailableForLocale(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = languageCodeForLocale(v1);
  if (SRIsRunningInServer(v2, v3))
  {
    v4 = SRIsAssetAvailable(@"required", v2, 0, 0, 0, 0);
    v5 = SRIsAssetAvailable(@"optional", v2, 0, 0, 0, 0);
    v6 = SRIsAssetAvailable(@"optionaltest", v2, 0, 0, 0, 0);
    if (v4 == 2 && v5 == 2)
    {
      v7 = SRLogCategoryAssets(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v2;
        _os_log_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEFAULT, "%@ is not supported", &buf, 0xCu);
      }

      v8 = 2;
      goto LABEL_25;
    }

    if (v4)
    {
      if (v5 | v6)
      {
        v21 = SRLogCategoryAssets(v6);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v2;
          _os_log_impl(&dword_1AE58E000, v21, OS_LOG_TYPE_DEFAULT, "Assets are available for %@", &buf, 0xCu);
        }

        v8 = 1;
        goto LABEL_25;
      }
    }

    else if (v5)
    {
LABEL_22:
      v23 = SRLogCategoryAssets(v6);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v2;
        _os_log_impl(&dword_1AE58E000, v23, OS_LOG_TYPE_DEFAULT, "Assets are unavailable for %@", &buf, 0xCu);
      }

      v8 = 0;
      goto LABEL_25;
    }

    v22 = +[SRDefaultsManager sharedDefaultsManager];
    [v22 requestCatalogUpdate];

    goto LABEL_22;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x2020000000;
  v30 = 0;
  empty = xpc_dictionary_create_empty();
  v10 = v2;
  xpc_dictionary_set_string(empty, "l", [v2 UTF8String]);
  v11 = +[SRXPCConnection sharedConnection];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __SRAreAssetsAvailableForLocale_block_invoke;
  v25[3] = &unk_1E7A2B0D8;
  v25[4] = &buf;
  [v11 sendCommand:1 info:empty sync:1 completion:v25];

  if (*(*(&buf + 1) + 24) == 1 && ([SRAreAssetsAvailableForLocale_availableLangs containsObject:v2] & 1) == 0)
  {
    v12 = SRAreAssetsAvailableForLocale_availableLangs;
    if (!SRAreAssetsAvailableForLocale_availableLangs)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = SRAreAssetsAvailableForLocale_availableLangs;
      SRAreAssetsAvailableForLocale_availableLangs = v13;

      v12 = SRAreAssetsAvailableForLocale_availableLangs;
    }

    [v12 addObject:v2];
    v15 = +[SRDefaultsManager sharedDefaultsManager];
    v16 = [v15 currentAssetTypes];

    v18 = SRLogCategoryAssets(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 138412290;
      v27 = v2;
      _os_log_impl(&dword_1AE58E000, v18, OS_LOG_TYPE_DEFAULT, "Assets for %@ are available for the first time, triggering re-load", v26, 0xCu);
    }

    v19 = +[SRDefaultsManager sharedDefaultsManager];
    v20 = [v19 loadOTAAssetsForLanguage:v2 updateCache:1 assetTypes:v16 force:0];
  }

  v8 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_25:

  return v8;
}

void sub_1AE5A1A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SRAreAssetsAvailableForLocale_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = SRLogCategoryAssets(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __SRAreAssetsAvailableForLocale_block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(v5, "av");
  }
}

void sub_1AE5A27AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SRAssetAvailabilityString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid asset availability status %lu", a1];
  }

  else
  {
    v1 = off_1E7A2B148[a1];
  }

  return v1;
}

void sub_1AE5A31E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A3354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A3588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SRIgnoreOTAAssets(uint64_t a1)
{
  if (SRIgnoreOTAAssets_onceToken != -1)
  {
    SRIgnoreOTAAssets_cold_1();
  }

  if (SRIgnoreOTAAssets_sIgnoreOTA == 1)
  {
    v1 = SRLogCategoryAssets(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AE58E000, v1, OS_LOG_TYPE_DEFAULT, "Ignoring OTA assets", v4, 2u);
    }

    v2 = SRIgnoreOTAAssets_sIgnoreOTA;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void __SRIgnoreOTAAssets_block_invoke()
{
  if (SRIsAppleInternalInstall_onceToken != -1)
  {
    SRIsAppleInternalInstall_cold_1();
  }

  if (SRIsAppleInternalInstall_isInternalInstall == 1)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    SRIgnoreOTAAssets_sIgnoreOTA = [v0 BOOLForKey:@"SpotlightResources_Ignore_OTA"];
  }
}

void sub_1AE5A6C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A85D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A8818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A8E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A9E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ddsAssetQuery(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = SRLogCategoryAssets(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v6 assetType];
    v20 = 138412802;
    v21 = v5;
    v22 = 2112;
    v23 = v19;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_1AE58E000, v8, OS_LOG_TYPE_DEBUG, "(assetQuery) %@, %@, %@", &v20, 0x20u);
  }

  v9 = [MEMORY[0x1E6999978] attributeFilter];
  [v9 addAllowedValue:v5 forKey:*MEMORY[0x1E6999958]];
  v10 = [v6 assetType];
  v11 = [v10 isEqualToString:@"com.apple.MobileAsset.SpotlightResources"];

  if (v11)
  {
    v12 = @"SRDeliveryType";
  }

  else
  {
    v13 = [v6 assetType];
    v14 = [v13 isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

    if (!v14)
    {
      goto LABEL_8;
    }

    v12 = @"LinguisticAssetType";
  }

  [v9 addAllowedValue:v7 forKey:v12];
LABEL_8:
  v15 = objc_alloc(MEMORY[0x1E6999970]);
  v16 = [v6 assetType];
  v17 = [v15 initWithAssetType:v16 filter:v9];

  [v17 setLocalOnly:0];
  [v17 setInstalledOnly:0];
  [v17 setCachedOnly:0];
  [v17 setLatestOnly:1];

  return v17;
}

void sub_1AE5ACF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v56 - 240));
  _Block_object_dispose((v56 - 232), 8);
  _Block_object_dispose((v56 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1AE5AE234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5AF4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B07DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B0B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B1384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a61);
  _Block_object_dispose(&a62, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE5B1DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B25B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B2F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B3174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B3324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B35E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B409C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE5B4260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1AE5B4840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  objc_destroyWeak((v62 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void getMobileAssetPropertiesFromPath_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_1(&dword_1AE58E000, a2, a3, "Error loading asset properties: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SRIsAssetAvailable_cold_1()
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Set path %@", v2, v3, v4, v5);
}

void SRIsAssetAvailable_cold_2()
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Set compatibility version %@", v2, v3, v4, v5);
}

void SRIsAssetAvailable_cold_3()
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Set content version %@", v2, v3, v4, v5);
}

void SRIsAssetAvailable_cold_4()
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Set bundle version %@", v2, v3, v4, v5);
}

void __SRIsAssetAvailable_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_ERROR, "Asset availability query returned error: %@", v1, 0xCu);
}

void __SRAreAssetsAvailableForLocale_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_ERROR, "Assets availability query returned error: %@", v1, 0xCu);
}

void refreshCacheWithQuery_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void refreshCacheWithQuery_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}