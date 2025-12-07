@interface SFSaveToFilesOperation
@end

@implementation SFSaveToFilesOperation

uint64_t __32___SFSaveToFilesOperation_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32___SFSaveToFilesOperation_start__block_invoke_2;
  v3[3] = &unk_1E8495988;
  v3[4] = v1;
  return [v1 _copyFileData:v3];
}

void __32___SFSaveToFilesOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32___SFSaveToFilesOperation_start__block_invoke_3;
  v12[3] = &unk_1E8492B90;
  v9 = *(a1 + 32);
  v13 = v7;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __32___SFSaveToFilesOperation_start__block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    return [v2 _showDocumentPickerForFileURL:v3 sourceURL:*(a1 + 48) willStartDownload:*(a1 + 56)];
  }

  else
  {
    return [v2 _finishWithURL:?];
  }
}

void __41___SFSaveToFilesOperation__copyFileData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 quickLookDocument];
  v5 = [v6 sourceURL];
  (*(v2 + 16))(v2, v4, v5, 0);
}

void __41___SFSaveToFilesOperation__copyFileData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke_3;
  block[3] = &unk_1E848FF58;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41___SFSaveToFilesOperation__copyFileData___block_invoke_3(uint64_t a1)
{
  v6 = *(a1 + 32);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 48);
  if (isKindOfClass)
  {
    v4 = [*(*(a1 + 40) + 8) webView];
    v5 = [v4 _committedURL];
    (*(v3 + 16))(v3, v6, v5, 0);
  }

  else
  {
    (*(v3 + 16))(*(a1 + 48), 0, 0, 0);
  }
}

void __41___SFSaveToFilesOperation__copyFileData___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXDownloads(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __41___SFSaveToFilesOperation__copyFileData___block_invoke_4_cold_1(v9);
    }
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [a1[4] suggestedName];
  v12 = [v10 stringWithFormat:@"%@.pdf", v11];

  v13 = [a1[5] _temporaryFileWithName:v12];
  v25 = v8;
  v14 = [v5 writeToURL:v13 options:0 error:&v25];
  v15 = v25;

  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke_24;
    block[3] = &unk_1E84908B0;
    v24 = a1[6];
    v18 = v13;
    v19 = a1[5];
    v22 = v18;
    v23 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXDownloads(v16, v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __41___SFSaveToFilesOperation__copyFileData___block_invoke_4_cold_2(v20);
    }

    (*(a1[6] + 2))();
  }
}

void __41___SFSaveToFilesOperation__copyFileData___block_invoke_24(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v4 = [*(a1[5] + 8) webView];
  v3 = [v4 _committedURL];
  (*(v1 + 16))(v1, v2, v3, 0);
}

void __41___SFSaveToFilesOperation__copyFileData___block_invoke_4_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Unable to generate a PDF representation of the webpage: %{public}@", v6, v7, v8, v9);
}

void __41___SFSaveToFilesOperation__copyFileData___block_invoke_4_cold_2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to save PDF data to disk: %{public}@", v6, v7, v8, v9);
}

@end