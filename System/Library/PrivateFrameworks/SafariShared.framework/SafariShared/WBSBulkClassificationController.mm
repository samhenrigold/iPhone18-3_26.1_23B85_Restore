@interface WBSBulkClassificationController
- (WBSBulkClassificationController)initWithSuiteURL:(id)l bundleNames:(id)names;
- (void)_runClassificationForURL:(id)l viewportSize:(CGSize)size delegate:(id)delegate completionHandler:(id)handler;
- (void)runTestsAndStoreResultsIn:(id)in completionHandler:(id)handler;
@end

@implementation WBSBulkClassificationController

- (WBSBulkClassificationController)initWithSuiteURL:(id)l bundleNames:(id)names
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = WBSBulkClassificationController;
  v7 = [(WBSTestController *)&v14 initWithSuiteURL:0 bundleNames:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_inputFileURL, l);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager safari_createDirectoryWithTemplate:@"BulkClassification-XXXX" inDirectory:lCopy];
    scratchFileURL = v8->_scratchFileURL;
    v8->_scratchFileURL = v10;

    v12 = v8;
  }

  return v8;
}

- (void)runTestsAndStoreResultsIn:(id)in completionHandler:(id)handler
{
  inCopy = in;
  handlerCopy = handler;
  delegate = [(WBSPageTestController *)self delegate];
  if (delegate)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.Safari.BulkClassification", v11);

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke;
    v17[3] = &unk_1E7FC8A98;
    v18 = inCopy;
    v19 = delegate;
    selfCopy = self;
    v22 = defaultManager;
    v23 = handlerCopy;
    v21 = v12;
    v13 = defaultManager;
    v14 = v12;
    [v19 pageTestControllerInitializeApp:self completionHandler:v17];
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WBSBulkClassificationController runTestsAndStoreResultsIn:v15 completionHandler:?];
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    [inCopy reportError:v16 descriptiveResultsName:@"form metadata" forStage:0 forTest:0 inBundle:0];

    handlerCopy[2](handlerCopy);
  }
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFill(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_cold_1();
    }

    [*(a1 + 32) reportError:v5 descriptiveResultsName:@"form metadata" forStage:0 forTest:0 inBundle:0];
    [*(a1 + 40) pageTestControllerTerminateApp:*(a1 + 48)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_6;
    block[3] = &unk_1E7FC8A70;
    v7 = *(a1 + 56);
    *&v8 = *(a1 + 64);
    *(&v8 + 1) = *(a1 + 48);
    v12 = v8;
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v14 = v12;
    v15 = v11;
    v16 = *(a1 + 32);
    v17 = *(a1 + 72);
    dispatch_async(v7, block);
  }
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_6(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 56);
  v26 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:&v26];
  v5 = v26;
  v7 = v5;
  if (v5)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFill(v5, v6);
    v5 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      v16 = *(*(a1 + 40) + 56);
      *buf = 138412546;
      v28 = v16;
      v29 = 2112;
      v30 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to read content of directory %@: %@", buf, 0x16u);
    }
  }

  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill(v5, v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v4 count];
    v12 = *(*(a1 + 40) + 56);
    *buf = 134218242;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_DEFAULT, "Found %lu files in %@", buf, 0x16u);
  }

  v13 = *(a1 + 48);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7;
  v21[3] = &unk_1E7FC8A48;
  v17 = *(a1 + 32);
  v14 = v17.i64[0];
  v22 = vextq_s8(v17, v17, 8uLL);
  v23 = v7;
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_32;
  v18[3] = &unk_1E7FB6E08;
  v18[4] = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v15 = v7;
  [v4 safari_enumerateAsynchronouslyOnQueue:v13 enumerationBlock:v21 completionBlock:v18];
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = [v6 path];
  v9 = [v8 pathExtension];
  v10 = [v9 isEqualToString:@"zip"];

  if (v10)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAutoFill(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_DEFAULT, "Processing %@", buf, 0xCu);
    }

    v14 = [v6 path];
    v15 = [v14 safari_lastPathComponentWithoutZipExtension];

    v16 = [*(*(a1 + 32) + 64) URLByAppendingPathComponent:v15];
    v17 = *(a1 + 40);
    v18 = [v6 path];
    v19 = [v16 path];
    LOBYTE(v17) = [v17 safari_extractZipArchiveFromPath:v18 toDestination:v19 copyQuarantine:0];

    if (v17)
    {
      v22 = [v16 URLByAppendingPathComponent:@"safari_collection_metadata.json"];
      v23 = MEMORY[0x1E696ACB0];
      v24 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v22];
      v25 = [v23 JSONObjectWithData:v24 options:0 error:0];

      v26 = *MEMORY[0x1E695F060];
      v27 = *(MEMORY[0x1E695F060] + 8);
      v28 = [v25 safari_stringForKey:@"indexFile"];
      v29 = [v16 URLByAppendingPathComponent:v28];

      v30 = *(a1 + 56);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19;
      v34[3] = &unk_1E7FC8A20;
      v31 = *(a1 + 32);
      v35 = *(a1 + 40);
      v36 = v16;
      v41 = v7;
      v37 = v25;
      v38 = v6;
      v39 = *(a1 + 64);
      v40 = v15;
      v32 = v25;
      [v31 _runClassificationForURL:v29 viewportSize:v30 delegate:v34 completionHandler:{v26, v27}];
    }

    else
    {
      v33 = WBS_LOG_CHANNEL_PREFIXAutoFill(v20, v21);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7_cold_1();
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  if (!v5 || v6)
  {
    v22 = WBS_LOG_CHANNEL_PREFIXAutoFill(v7, v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_3();
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v29[0] = @"FormMetadata";
    v29[1] = @"CollectionMetadata";
    v9 = *(a1 + 48);
    v30[0] = v5;
    v30[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v12 = WBS_LOG_CHANNEL_PREFIXAutoFill(v10, v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      v15 = *(a1 + 56);
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Received metadata for %@", buf, 0xCu);
    }

    v16 = WBS_LOG_CHANNEL_PREFIXAutoFill(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_1(a1, v10, v16);
    }

    v26 = 0;
    v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:3 error:&v26];
    v18 = v26;
    v20 = v18;
    if (v18)
    {
      v21 = WBS_LOG_CHANNEL_PREFIXAutoFill(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_2();
      }
    }

    else
    {
      v23 = *(a1 + 64);
      v24 = [*(a1 + 72) stringByAppendingString:@"_formmetadata"];
      v25 = [*MEMORY[0x1E6982E68] identifier];
      [v23 reportResults:v17 resultsName:v24 descriptiveResultsName:@"form metadata" uniformTypeIdentifier:v25 forStage:0 forTest:0 inBundle:0];
    }

    (*(*(a1 + 80) + 16))();
  }
}

uint64_t __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_32(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(*(a1 + 32) + 64) error:0];

  [*(a1 + 40) pageTestControllerTerminateApp:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)_runClassificationForURL:(id)l viewportSize:(CGSize)size delegate:(id)delegate completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  lCopy = l;
  delegateCopy = delegate;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke;
  v17[3] = &unk_1E7FC5010;
  v18 = delegateCopy;
  selfCopy = self;
  v20 = lCopy;
  v21 = handlerCopy;
  v14 = lCopy;
  v15 = delegateCopy;
  v16 = handlerCopy;
  [v15 pageTestController:self resizeViewport:v17 completionHandler:{width, height}];
}

void __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFill(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_35;
    v10[3] = &unk_1E7FC8AE8;
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    [v7 pageTestController:v8 navigateAndCaptureFormsMetadataForURL:v9 completionHandler:v10];
  }
}

void __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_35_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_37;
    v12[3] = &unk_1E7FC8AC0;
    v13 = v10;
    v11 = v10;
    [v5 enumerateFormsAndFramesUsingBlock:v12];
    (*(*(a1 + 32) + 16))();
  }
}

void __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_37(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 dictionaryRepresentationRedactingSensitiveValues:0 withKnownSensitiveValues:0];
  [v3 addObject:v4];
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1BB6F3000, v1, OS_LOG_TYPE_ERROR, "Failed to unzip capture %@: %@", v2, 0x16u);
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Received metadata for %@: %@", &v4, 0x16u);
}

@end