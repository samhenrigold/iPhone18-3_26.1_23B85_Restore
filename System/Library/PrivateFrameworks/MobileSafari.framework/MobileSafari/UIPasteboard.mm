@interface UIPasteboard
@end

@implementation UIPasteboard

void __88__UIPasteboard_MobileSafariFrameworkExtras___safari_copyRichText_withPlainTextFallback___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 length];
  v13 = *MEMORY[0x1E69DB628];
  v14[0] = *MEMORY[0x1E69DB6A0];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = 0;
  v7 = [v4 dataFromRange:0 documentAttributes:v5 error:{v6, &v12}];
  v8 = v12;

  if (!v7)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXOther(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __88__UIPasteboard_MobileSafariFrameworkExtras___safari_copyRichText_withPlainTextFallback___block_invoke_cold_1(v11, v8);
    }
  }

  v3[2](v3, v7, v8);
}

void __88__UIPasteboard_MobileSafariFrameworkExtras___safari_copyRichText_withPlainTextFallback___block_invoke_5(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataUsingEncoding:4];
  (a2)[2](v4, v5, 0);
}

void __88__UIPasteboard_MobileSafariFrameworkExtras___safari_copyRichText_withPlainTextFallback___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_ERROR, "Failed to generate RTF data: %{public}@", &v5, 0xCu);
}

@end