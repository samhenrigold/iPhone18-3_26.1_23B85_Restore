@interface SFDownload
@end

@implementation SFDownload

void __27___SFDownload__sharedQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.mobilesafari.SFDownloadFileQueue", v0);
  v2 = _sharedQueue_queue;
  _sharedQueue_queue = v1;
}

void __29___SFDownload_removeFromDisk__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void __29___SFDownload_removeFromDisk__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v6 = [v5 safari_matchesErrorDomain:*MEMORY[0x1E696A250] andCode:4];
    if ((v6 & 1) == 0)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXDownloads(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __29___SFDownload_removeFromDisk__block_invoke_2_cold_1(a1, v8);
      }
    }
  }

  [*(a1 + 48) endBackgroundTask:*(*(*(a1 + 56) + 8) + 24)];
}

void __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke_3;
  v8 = &unk_1E848F548;
  v3 = v2;
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  [v3 safari_accessingSecurityScopedResource:&v5];
  [*(a1 + 48) endBackgroundTask:{*(*(*(a1 + 56) + 8) + 24), v5, v6, v7, v8}];
}

void __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke_3_cold_1(a1, v8);
    }
  }
}

void __21___SFDownload_cancel__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A978];
  v6 = a2;
  v7 = [v4 errorWithDomain:v5 code:-999 userInfo:0];
  [v2 download:v3 didFailWithError:v7 resumeData:v6];
}

void __31___SFDownload_resumeInWebView___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXDownloads(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "%{public}@: resumed download %{public}@", &v16, 0x16u);
  }

  [*(a1 + 32) setWKDownload:v3];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v8 + 72);
  *(v8 + 72) = 0;

  *(*(a1 + 32) + 192) = 1;
  v11 = *(a1 + 32);
  v12 = *(v11 + 208);
  *(v11 + 208) = 0;

  *(*(a1 + 32) + 16) = 0;
  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 postNotificationName:@"_SFDownloadDidStartNotification" object:*(a1 + 32)];

  v14 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
  [v14 registerResumedDownload:*(a1 + 32)];

  [*(a1 + 32) _reportUpdatedProgressNow];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 224));
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained downloadDidResume:*(a1 + 32)];
  }

  else
  {
    [WeakRetained downloadDidStart:*(a1 + 32)];
  }
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v34 = 0;
  v4 = [v2 writeToURL:v3 options:1 error:&v34];
  v5 = v34;
  v7 = v5;
  if (v4)
  {
    v8 = *(a1 + 40);
    v9 = *MEMORY[0x1E695DCC0];
    v33 = v7;
    v10 = [v8 setResourceValue:MEMORY[0x1E695E118] forKey:v9 error:&v33];
    v11 = v33;

    if ((v10 & 1) == 0)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXDownloads(v12, v13);
      v12 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        __42___SFDownload__importPlaceholderIfNeeded___block_invoke_cold_2(a1, v14);
      }
    }

    if (*(a1 + 56))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42___SFDownload__importPlaceholderIfNeeded___block_invoke_136;
      block[3] = &unk_1E84939B8;
      v25 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 40);
      v17 = *(a1 + 64);
      *&v18 = v16;
      *(&v18 + 1) = v17;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v31 = v19;
      v32 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v21 = WBS_LOG_CHANNEL_PREFIXDownloads(v12, v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 48);
        *buf = 138543362;
        v36 = v22;
        _os_log_impl(&dword_1D4644000, v21, OS_LOG_TYPE_INFO, "%{public}@: using DOCDownloadImportManager", buf, 0xCu);
      }

      v23 = objc_alloc_init(MEMORY[0x1E699A3E8]);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __42___SFDownload__importPlaceholderIfNeeded___block_invoke_141;
      v27[3] = &unk_1E84965B0;
      v26 = *(a1 + 40);
      v24 = v26.i64[0];
      v28 = vextq_s8(v26, v26, 8uLL);
      v29 = *(a1 + 64);
      [v23 importPlaceholderAtURLToDownloadsDirectory:v24 completion:v27];
    }

    v7 = v11;
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXDownloads(v5, v6);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __42___SFDownload__importPlaceholderIfNeeded___block_invoke_cold_1(a1, v20);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke_136(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXDownloads(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "%{public}@: using custom placeholder importer", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42___SFDownload__importPlaceholderIfNeeded___block_invoke_137;
  v9[3] = &unk_1E8496588;
  v10 = v7;
  v8 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v8;
  [v5 importPlaceholderForDownload:v6 fromURL:v10 completionHandler:v9];
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke_137(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_SFDownload _sharedQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42___SFDownload__importPlaceholderIfNeeded___block_invoke_138;
    v12[3] = &unk_1E84949D0;
    v12[4] = *(a1 + 40);
    v13 = v3;
    v14 = *(a1 + 48);
    dispatch_async(v4, v12);
  }

  else
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = *(a1 + 32);
    v15 = 0;
    v7 = [v5 removeItemAtURL:v6 error:&v15];
    v8 = v15;

    if ((v7 & 1) == 0)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXDownloads(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __42___SFDownload__importPlaceholderIfNeeded___block_invoke_137_cold_1(v11);
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke_141(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!a2 || v5)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __42___SFDownload__importPlaceholderIfNeeded___block_invoke_141_cold_1(a1, v8);
    }

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtURL:*(a1 + 40) error:0];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _didImportPlaceholderAtURL:a2 completionHandler:*(a1 + 48)];
  }
}

void __60___SFDownload__didImportPlaceholderAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[SFDownloadFile alloc] initWithURL:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __60___SFDownload__didImportPlaceholderAtURL_completionHandler___block_invoke_143(void *a1)
{
  objc_storeStrong((a1[4] + 80), *(*(a1[6] + 8) + 40));
  [*(a1[4] + 80) setDelegate:?];
  v2 = *(a1[5] + 16);

  return v2();
}

void __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXDownloads(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_cold_1(a1, v3);
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
}

void __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_147(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699A3E8]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_2;
  v5[3] = &unk_1E8496628;
  v6 = *(a1 + 48);
  [v2 replacePlaceholder:v3 withFinalFileURL:v4 completionHandler:v5];
}

void __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXDownloads(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_2_cold_1(a1, v9);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_148;
  v10[3] = &unk_1E84902F0;
  v11 = *(a1 + 32);
  [v11 _didImportFileAtURL:v5 completionHandler:v10];
}

void __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_148(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXDownloads(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v7 = 138543618;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: ending background task %u", &v7, 0x12u);
  }

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  [v6 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
}

uint64_t __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegateOfFinishedDownload];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *MEMORY[0x1E695DCC0];
  v15 = 0;
  v4 = [v2 setResourceValue:MEMORY[0x1E695E110] forKey:v3 error:&v15];
  v5 = v15;
  v7 = v5;
  if ((v4 & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_2_cold_1(a1, v8);
    }
  }

  v9 = a1[4];
  v10 = *(a1[7] + 8);
  obj = *(v10 + 40);
  v11 = [v9 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

uint64_t __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_149(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegateOfFinishedDownload];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_2_150(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  [*(*(a1 + 32) + 80) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  v6 = [[SFDownloadFile alloc] initWithURL:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  *(v7 + 88) = v6;

  [*(*(a1 + 32) + 88) setDelegate:?];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 224));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained downloadDidImportFileToDownloadsFolder:*(a1 + 32)];
  }

  [*(a1 + 32) _notifyDelegateOfFinishedDownload];
  (*(*(a1 + 48) + 16))();
}

void __41___SFDownload_downloadFileWillBeDeleted___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A978];
  v6 = a2;
  v7 = [v4 errorWithDomain:v5 code:-999 userInfo:0];
  [v2 download:v3 didFailWithError:v7 resumeData:v6];
}

void __67___SFDownload_download_didReceivePlaceholderURL_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67___SFDownload_download_didReceivePlaceholderURL_completionHandler___block_invoke_2;
  v4[3] = &unk_1E8490C40;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _didImportPlaceholderAtURL:v5 completionHandler:v4];
}

void __67___SFDownload_download_didReceivePlaceholderURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXDownloads(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67___SFDownload_download_didReceivePlaceholderURL_completionHandler___block_invoke_2_cold_1(a1, v3);
    }
  }

  dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 40));
}

void __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXDownloads(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke_cold_1(a1, v5);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke_227(uint64_t a1, uint64_t a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXDownloads(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke_227_cold_1(a1, a2, v4);
  }

  return [*(a1 + 32) _continueAfterDownloadConfirmation:a2 destinationCompletionHandler:*(a1 + 40)];
}

void __79___SFDownload__continueAfterDownloadConfirmation_destinationCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___SFDownload__continueAfterDownloadConfirmation_destinationCompletionHandler___block_invoke_2;
  block[3] = &unk_1E84949D0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __79___SFDownload__continueAfterDownloadConfirmation_destinationCompletionHandler___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (v3)
  {
    [v3 stringByAppendingPathComponent:*(a1[5] + 96)];
  }

  else
  {
    [objc_opt_class() downloadDestinationPathWithFilename:*(a1[5] + 96)];
  }
  v4 = ;
  v5 = a1[5];
  v6 = *(v5 + 128);
  *(v5 + 128) = v4;

  v7 = a1[5];
  v8 = a1[6];

  return [v7 _continueAfterDecidingFileDownloadPath:v8];
}

void __54___SFDownload__continueAfterDecidingFileDownloadPath___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___SFDownload__continueAfterDecidingFileDownloadPath___block_invoke_2;
  block[3] = &unk_1E8491DF8;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54___SFDownload__continueAfterDecidingFileDownloadPath___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(*(a1 + 32) + 80) URL];
    v3 = v2;
    if (v2)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __54___SFDownload__continueAfterDecidingFileDownloadPath___block_invoke_3;
      v10 = &unk_1E848F548;
      v11 = *(a1 + 32);
      v12 = v2;
      [v12 safari_accessingSecurityScopedResource:&v7];
    }

    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(a1 + 32) + 128) isDirectory:{0, v7, v8, v9, v10, v11}];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

uint64_t __62___SFDownload_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [*(a1 + 40) completedUnitCount];
  v5 = [*(a1 + 40) totalUnitCount];

  return [v2 download:v3 didWriteTotalBytes:v4 totalBytesExpectedToWrite:v5];
}

void __29___SFDownload_removeFromDisk__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5_2(&dword_1D4644000, v5, v6, "%{public}@: failed to remove file: %{public}@", v7, v8, v9, v10);
}

void __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke_137_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __42___SFDownload__importPlaceholderIfNeeded___block_invoke_141_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = 138543618;
  v5 = v2;
  v6 = 1024;
  v7 = v3;
  _os_log_fault_impl(&dword_1D4644000, a2, OS_LOG_TYPE_FAULT, "%{public}@: import background task ran past expiration: %u", &v4, 0x12u);
}

void __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __67___SFDownload_download_didReceivePlaceholderURL_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138739971;
  v4 = v2;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "_didImportPlaceholderAtURL failed for url: %{sensitive}@", &v3, 0xCu);
}

void __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_2() path];
  v6 = [v5 stringByDeletingLastPathComponent];
  v7 = 138543618;
  v8 = v3;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: decided destination. directory=%{public}@", &v7, 0x16u);
}

void __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke_227_cold_1(uint64_t a1, char a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = @"NO";
  if (a2)
  {
    v4 = @"YES";
  }

  v5 = v4;
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(&dword_1D4644000, a3, OS_LOG_TYPE_DEBUG, "%{public}@: delegate decided to continue: %{public}@", v6, 0x16u);
}

@end