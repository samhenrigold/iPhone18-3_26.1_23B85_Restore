@interface LSApplicationWorkspace(SafariServicesExtras)
- (uint64_t)_sf_shouldOpenURLInQuicklook:()SafariServicesExtras;
- (uint64_t)_sf_shouldOverrideiCloudSharingURL:()SafariServicesExtras withAppRedirectURL:referrerURL:loadedUsingDesktopUserAgent:;
- (void)_sf_openURL:()SafariServicesExtras inApplication:withOptions:completionHandler:;
- (void)_sf_tryOpeningURLInDefaultApp:()SafariServicesExtras isContentManaged:completionHandler:;
@end

@implementation LSApplicationWorkspace(SafariServicesExtras)

- (void)_sf_openURL:()SafariServicesExtras inApplication:withOptions:completionHandler:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__LSApplicationWorkspace_SafariServicesExtras___sf_openURL_inApplication_withOptions_completionHandler___block_invoke;
  block[3] = &unk_1E8491DA8;
  v22 = v12;
  v23 = v13;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(v14, block);
}

- (uint64_t)_sf_shouldOverrideiCloudSharingURL:()SafariServicesExtras withAppRedirectURL:referrerURL:loadedUsingDesktopUserAgent:
{
  if (a6)
  {
    return [a4 safari_hasScheme:@"icloud-sharing"] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)_sf_shouldOpenURLInQuicklook:()SafariServicesExtras
{
  v33[7] = *MEMORY[0x1E69E9840];
  v3 = a3;
  *buf = *MEMORY[0x1E695DAA0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
  *&v28 = 0;
  v5 = [v3 promisedItemResourceValuesForKeys:v4 error:&v28];
  v6 = v28;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695DC68]];

  if (v6)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXDownloads(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationWorkspace(SafariServicesExtras) *)v3 _sf_shouldOpenURLInQuicklook:v10, v6];
    }
  }

  else if (v7)
  {
    v12 = v7;
    goto LABEL_10;
  }

  pathExtension = [v3 pathExtension];
  if ([pathExtension length])
  {
    v12 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
  }

  else
  {
    v12 = 0;
  }

LABEL_10:
  if (v12)
  {
    v13 = v12;
    v14 = *MEMORY[0x1E6982EE8];
    v33[0] = *MEMORY[0x1E6982E30];
    v33[1] = v14;
    v15 = *MEMORY[0x1E6982F10];
    v33[2] = *MEMORY[0x1E6982CD0];
    v33[3] = v15;
    v16 = *MEMORY[0x1E6982D30];
    v33[4] = *MEMORY[0x1E6982D48];
    v33[5] = v16;
    v33[6] = *MEMORY[0x1E6982DA8];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:7];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      while (2)
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([v13 conformsToType:*(*(&v28 + 1) + 8 * v22)])
          {

            v26 = WBS_LOG_CHANNEL_PREFIXDownloads(v24, v25);
            v23 = 1;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              *&buf[4] = v13;
              _os_log_impl(&dword_1D4644000, v26, OS_LOG_TYPE_INFO, "Preferring QuickLook for type %{private}@", buf, 0xCu);
            }

            goto LABEL_23;
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v28 objects:buf count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v23 = 0;
LABEL_23:

  return v23;
}

- (void)_sf_tryOpeningURLInDefaultApp:()SafariServicesExtras isContentManaged:completionHandler:
{
  v7 = a3;
  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = &__block_literal_global_23;
  }

  v9 = _Block_copy(v8);
  v10 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__LSApplicationWorkspace_SafariServicesExtras___sf_tryOpeningURLInDefaultApp_isContentManaged_completionHandler___block_invoke_2;
  block[3] = &unk_1E8491DF8;
  v14 = v7;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v7;
  dispatch_async(v10, block);
}

- (void)_sf_shouldOpenURLInQuicklook:()SafariServicesExtras .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138740227;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Failed to lookup type identifier for %{sensitive}@: %{public}@", &v7, 0x16u);
}

@end