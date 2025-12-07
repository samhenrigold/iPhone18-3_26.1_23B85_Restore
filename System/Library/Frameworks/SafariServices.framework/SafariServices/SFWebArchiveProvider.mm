@interface SFWebArchiveProvider
@end

@implementation SFWebArchiveProvider

void __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 40));
    v5 = WeakRetained;
    if (!WeakRetained)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_SFWebArchiveErrorDomain" code:1 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_10;
    }

    v6 = [WeakRetained _MIMEType];
    v7 = [*(a1 + 32) _webViewUTI];
    if (!UTTypeEqual(v7, *MEMORY[0x1E69637E8]))
    {
      v10 = UTTypeConformsTo(v7, *MEMORY[0x1E69638B0]);
      v11 = v10;
      v13 = WBS_LOG_CHANNEL_PREFIXDownloads(v10, v12);
      v14 = v13;
      if (!v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v21 = v5;
          v22 = 2114;
          v23 = v6;
          _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_DEFAULT, "Not generating web archive for web view %p because the current document isn't a text-based document; mime type is %{public}@", buf, 0x16u);
        }

        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_SFWebArchiveErrorDomain" code:2 userInfo:0];
        (*(*(a1 + 40) + 16))();
        goto LABEL_8;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v21 = v6;
        _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_INFO, "Webpage is of mime type '%{public}@' instead of HTML, but will still generate a web archive", buf, 0xCu);
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4;
    v16[3] = &unk_1E84907F0;
    v17 = v5;
    v8 = *(a1 + 40);
    v18 = *(a1 + 32);
    v19 = v8;
    [v17 _getWebArchiveDataWithCompletionHandler:v16];

    v9 = v17;
LABEL_8:

LABEL_10:
    return;
  }

  v3 = *(a1 + 40);
  v15 = [v2 _quickLookDocument];
  (*(v3 + 16))(v3);
}

void __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v7 || (v7 = [v6 length]) == 0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXDownloads(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4_cold_1(a1, v10, v9);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = *(a1 + 40);
    if (!v11[2])
    {
      objc_storeStrong(v11 + 2, a2);
      v11 = *(a1 + 40);
    }

    v12 = *(a1 + 48);
    v13 = [v11 _quickLookDocument];
    (*(v12 + 16))(v12, v13, 0);
  }
}

void __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 134218242;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Error generating web archive for web view %p: %{public}@", &v7, 0x16u);
}

@end