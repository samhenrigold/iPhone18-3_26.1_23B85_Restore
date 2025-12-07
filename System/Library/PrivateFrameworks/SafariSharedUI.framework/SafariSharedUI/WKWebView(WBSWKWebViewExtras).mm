@interface WKWebView(WBSWKWebViewExtras)
- (double)safari_visibleBounds;
- (void)safari_enumerateAllFramesAsynchronously:()WBSWKWebViewExtras completionHandler:;
- (void)safari_getAllFrameInfos:()WBSWKWebViewExtras;
- (void)safari_getFrameInfoForFrameWithHandle:()WBSWKWebViewExtras completionHandler:;
- (void)safari_saveWebpageCompleteToURL:()WBSWKWebViewExtras withCollectionMethod:collectionOptions:completionHandler:;
@end

@implementation WKWebView(WBSWKWebViewExtras)

- (double)safari_visibleBounds
{
  [self bounds];
  v3 = v2;
  [self _obscuredInsets];
  return v3 + v4;
}

- (void)safari_saveWebpageCompleteToURL:()WBSWKWebViewExtras withCollectionMethod:collectionOptions:completionHandler:
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  _committedURL = [self _committedURL];
  v14 = WBS_LOG_CHANNEL_PREFIXDownloads(_committedURL, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    v37 = 1752392040;
    v38 = 2117;
    v39 = _committedURL;
    v40 = 2048;
    v41 = a5;
    _os_log_impl(&dword_1C6968000, v14, OS_LOG_TYPE_DEFAULT, "Saving Page Complete for %{sensitive, mask.hash}@ with options %zu", buf, 0x20u);
  }

  v15 = v10;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v34 = 0;
  v17 = [defaultManager createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v34];
  v18 = v34;

  if (v17)
  {
    v21 = objc_alloc_init(MEMORY[0x1E69853C8]);
    [v21 setDirectory:v15];
    [v21 setSuggestedFileName:@"index.html"];
    if ((a5 & 4) != 0)
    {
      v26 = a4;
      v22 = [objc_alloc(MEMORY[0x1E69853D0]) initWithElementLocalName:@"script" attributeLocalNames:0 attributeValues:0];
      v35[0] = v22;
      v23 = [objc_alloc(MEMORY[0x1E69853D0]) initWithElementLocalName:@"noscript" attributeLocalNames:0 attributeValues:0];
      v35[1] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      [v21 setExclusionRules:v24];

      a4 = v26;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke;
    v27[3] = &unk_1E8282D78;
    v31 = v11;
    v32 = a5;
    v27[4] = self;
    v28 = v15;
    v29 = _committedURL;
    v30 = @"index.html";
    v33 = a4;
    [self _archiveWithConfiguration:v21 completionHandler:v27];
  }

  else
  {
    v25 = WBS_LOG_CHANNEL_PREFIXDownloads(v19, v20);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WKWebView(WBSWKWebViewExtras) safari_saveWebpageCompleteToURL:withCollectionMethod:collectionOptions:completionHandler:];
    }

    (*(v11 + 2))(v11, 0, v18);
  }
}

- (void)safari_getFrameInfoForFrameWithHandle:()WBSWKWebViewExtras completionHandler:
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke;
  v10[3] = &unk_1E8282DA0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [self _frames:v10];
}

- (void)safari_enumerateAllFramesAsynchronously:()WBSWKWebViewExtras completionHandler:
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__WKWebView_WBSWKWebViewExtras__safari_enumerateAllFramesAsynchronously_completionHandler___block_invoke;
  v10[3] = &unk_1E8282DC8;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [self _frames:v10];
}

- (void)safari_getAllFrameInfos:()WBSWKWebViewExtras
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__WKWebView_WBSWKWebViewExtras__safari_getAllFrameInfos___block_invoke;
  v6[3] = &unk_1E8282DF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [self _frames:v6];
}

- (void)safari_saveWebpageCompleteToURL:()WBSWKWebViewExtras withCollectionMethod:collectionOptions:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2113;
  v4 = v0;
  _os_log_error_impl(&dword_1C6968000, v1, OS_LOG_TYPE_ERROR, "Failed to create directory at %{private}@: %{private}@", v2, 0x16u);
}

@end