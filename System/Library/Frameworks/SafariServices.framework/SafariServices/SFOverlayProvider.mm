@interface SFOverlayProvider
@end

@implementation SFOverlayProvider

void __90__SFOverlayProvider_SafariServicesExtras__requestOverlayWithPreferencesVendor_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__SFOverlayProvider_SafariServicesExtras__requestOverlayWithPreferencesVendor_completion___block_invoke_2;
  block[3] = &unk_1E8495C40;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __90__SFOverlayProvider_SafariServicesExtras__requestOverlayWithPreferencesVendor_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v3 = 1;
  }

  else
  {
    v3 = [objc_opt_class() alwaysShowOverlayForDebug];
  }

  [*(a1 + 32) setAvailable:v3];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __78__SFOverlayProvider_SafariServicesExtras___updateAppClipOverlayPreferenceHook__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXAppStoreBanner(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = 138477827;
    v6 = v4;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "User disallows showing app clip info overlay for domain %{private}@", &v5, 0xCu);
  }
}

@end