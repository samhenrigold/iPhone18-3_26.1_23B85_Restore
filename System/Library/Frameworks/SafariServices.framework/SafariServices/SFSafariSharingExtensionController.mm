@interface SFSafariSharingExtensionController
@end

@implementation SFSafariSharingExtensionController

void __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = *(*(*(a1 + 32) + 8) + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v3, 0);
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXExtensions(0, v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1D4644000, v16, OS_LOG_TYPE_DEFAULT, "completionHandler is nil, not doing anything with the result", v17, 2u);
    }
  }
}

void __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_50(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = WBS_LOG_CHANNEL_PREFIXExtensions(a1, a2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Timed out waiting on JavaScript to return result", v15, 2u);
    }

    (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_50_cold_1(v5, v8, v9, v10, v11, v12, v13, v14);
  }
}

@end