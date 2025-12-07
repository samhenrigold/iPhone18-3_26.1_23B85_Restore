@interface SFSafariDataSharingController
@end

@implementation SFSafariDataSharingController

void __50___SFSafariDataSharingController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(_SFSafariDataSharingController);
  v1 = sharedController_sharedController_0;
  sharedController_sharedController_0 = v0;
}

void __61___SFSafariDataSharingController_checkInAppBundleIDIfNeeded___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) _loadAppBundlesWithSeparateDataIfNeeded];
  if (([*(*v2 + 16) containsObject:v2[1]] & 1) == 0)
  {
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v3 setObject:*(*(a1 + 32) + 16) forKey:@"AppBundleIDsWithSeperateData"];
    v4 = [v3 synchronize];
    v6 = WBS_LOG_CHANNEL_PREFIXViewService(v4, v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v7)
    {
      *v10 = 0;
      _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_INFO, "Apps currently using SafariViewController in Separated data mode...", v10, 2u);
    }

    v9 = WBS_LOG_CHANNEL_PREFIXViewService(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __61___SFSafariDataSharingController_checkInAppBundleIDIfNeeded___block_invoke_cold_1(v2, v9);
    }
  }
}

void __54___SFSafariDataSharingController_clearAllWebsitesData__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 arrayForKey:@"AppBundleIDsWithSeperateData"];
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [*(a1 + 32) systemDataContainerURLWithAppBundleID:v10];
          v12 = [v11 URLByAppendingPathComponent:@"/Library"];

          v13 = [v12 path];
          v14 = [v5 fileExistsAtPath:v13];

          if (v14)
          {
            [v5 removeItemAtURL:v12 error:0];
          }

          else
          {
            v17 = WBS_LOG_CHANNEL_PREFIXViewService(v15, v16);
            v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
            if (v18)
            {
              *buf = 0;
              _os_log_impl(&dword_1D4644000, v17, OS_LOG_TYPE_INFO, "Skip clearing data for app since it has been uninstalled", buf, 2u);
            }

            v20 = WBS_LOG_CHANNEL_PREFIXViewService(v18, v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138477827;
              v29 = v10;
              _os_log_debug_impl(&dword_1D4644000, v20, OS_LOG_TYPE_DEBUG, "App bundle ID: %{private}@", buf, 0xCu);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v7);
    }

    v21 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v21 removeObjectForKey:@"AppBundleIDsWithSeperateData"];
    [v21 synchronize];

    v4 = v22;
  }
}

void __61___SFSafariDataSharingController_checkInAppBundleIDIfNeeded___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 16);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "... apps: %{private}@", &v3, 0xCu);
}

@end