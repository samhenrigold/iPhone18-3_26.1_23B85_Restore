@interface WKWebView
@end

@implementation WKWebView

void __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 64) + 16);
  }

  else
  {
    if ((*(a1 + 72) & 2) != 0)
    {
      v8 = *(a1 + 32);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10;
      v15[3] = &unk_1E8282D50;
      v18 = *(a1 + 64);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v14 = *(a1 + 32);
      v11 = *(a1 + 56);
      *&v12 = v14;
      *(&v12 + 1) = v11;
      *&v13 = v9;
      *(&v13 + 1) = v10;
      v16 = v13;
      v17 = v12;
      v19 = *(a1 + 80);
      [v8 takeSnapshotWithConfiguration:0 completionHandler:v15];

      goto LABEL_8;
    }

    v7 = *(*(a1 + 64) + 16);
  }

  v7();
LABEL_8:
}

void __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10(uint64_t a1, UIImage *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = UIImagePNGRepresentation(a2);
    v10 = [*(a1 + 32) URLByAppendingPathComponent:@"capture.png"];
    v28 = 0;
    v11 = [v9 writeToURL:v10 options:0 error:&v28];
    v7 = v28;

    if (v11)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69C8F90]);
      [v14 setUrl:*(a1 + 40)];
      v15 = [*(a1 + 48) title];
      [v14 setPageTitle:v15];

      v16 = [*(a1 + 48) _userAgent];
      [v14 setUserAgent:v16];

      [*(a1 + 48) safari_visibleBounds];
      [v14 setViewportSize:{v17, v18}];
      [v14 setIndexFileName:*(a1 + 56)];
      [v14 setScreenCaptureFileName:@"capture.png"];
      [v14 setCollectionMethod:*(a1 + 72)];
      v19 = [*(a1 + 32) URLByAppendingPathComponent:@"safari_collection_metadata.json"];
      v27 = v7;
      v20 = [v14 writeMetadataJSONToURL:v19 error:&v27];
      v21 = v27;

      if (v20)
      {
        v24 = *(*(a1 + 64) + 16);
      }

      else
      {
        v26 = WBS_LOG_CHANNEL_PREFIXDownloads(v22, v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10_cold_3();
        }

        v24 = *(*(a1 + 64) + 16);
      }

      v24();

      v7 = v21;
    }

    else
    {
      v25 = WBS_LOG_CHANNEL_PREFIXDownloads(v12, v13);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10_cold_2();
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

void __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithObject:a2];
    v4 = v3;
    while ([v3 count])
    {
      v6 = [v4 firstObject];
      v7 = [v6 info];
      v8 = [v7 _handle];
      v9 = [v8 isEqual:*(a1 + 40)];

      if (v9)
      {
        (*(*(a1 + 48) + 16))();

        goto LABEL_13;
      }

      [v4 removeObjectAtIndex:0];
      v10 = [v6 childFrames];
      [v4 addObjectsFromArray:v10];

      v3 = v4;
    }

    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
LABEL_13:
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAutoFill(a1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __91__WKWebView_WBSWKWebViewExtras__safari_enumerateAllFramesAsynchronously_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithObject:a2];
    v4 = v3;
    while ([v3 count])
    {
      v5 = [v4 firstObject];
      v6 = [v5 info];
      (*(*(a1 + 48) + 16))();
      [v4 removeObjectAtIndex:0];
      v7 = [v5 childFrames];
      [v4 addObjectsFromArray:v7];

      v3 = v4;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFill(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __57__WKWebView_WBSWKWebViewExtras__safari_getAllFrameInfos___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
    v7 = v6;
    while ([v6 count])
    {
      v8 = [v7 firstObject];
      v9 = [v8 info];
      [v5 addObject:v9];

      [v7 removeObjectAtIndex:0];
      v10 = [v8 childFrames];
      [v7 addObjectsFromArray:v10];

      v6 = v7;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __57__WKWebView_WBSWKWebViewExtras__safari_getAllFrameInfos___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C6968000, v1, OS_LOG_TYPE_ERROR, "Couldn't find frameInfo for frameHandle %@ in %@", v2, 0x16u);
}

@end