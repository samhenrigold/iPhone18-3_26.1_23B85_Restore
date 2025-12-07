@interface SFReloadOptionsController
@end

@implementation SFReloadOptionsController

void __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke_2;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didUpdateRequestDesktopSiteDefaultValue:{objc_msgSend(*(a1 + 32), "integerValue")}];
}

void __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke_4;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didUpdateRequestDesktopSitePerSitePreference:*(a1 + 32)];
}

uint64_t __98___SFReloadOptionsController_customUserAgentSettingForMainFrameURL_withTimeout_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return [*(a1 + 32) _overrideSettingIfNeeded:a2 source:v3 domain:*(a1 + 40) completion:*(a1 + 48)];
}

void __65___SFReloadOptionsController__requestDesktopSiteWithFallbackURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXRequestDesktopSite(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __65___SFReloadOptionsController__requestDesktopSiteWithFallbackURL___block_invoke_cold_1(v9);
    }
  }

  v10 = [v5 objectForKeyedSubscript:@"desktopLinkURLString"];
  v22 = v8;
  v24 = v5;
  if ([v10 length])
  {
    v11 = v10;
  }

  else
  {
    v11 = [v5 objectForKeyedSubscript:{@"canonicalURLString", v8, v5}];
  }

  v12 = v11;
  v13 = [MEMORY[0x1E695DFF8] safari_URLWithUserTypedString:{v11, v22}];
  v14 = [v13 safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v16 = [WeakRetained backForwardList];
  v17 = [v16 currentItem];
  v18 = [v17 initialURL];
  v19 = [v18 safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];

  v20 = [v19 isEqualToString:v14];
  v21 = v13;
  if ((v20 & 1) == 0)
  {
    v21 = *(a1 + 40);
  }

  [*(a1 + 32) requestDesktopSiteWithURL:v21];
}

void __65___SFReloadOptionsController__requestDesktopSiteWithFallbackURL___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1D4644000, v1, OS_LOG_TYPE_ERROR, "Error occurred when trying to find a desktop website URL on webpage: %{public}@", v4, 0xCu);
}

@end