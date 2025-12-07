@interface WBSAutoFillTestController
- (void)cleanSuiteWithCompletionHandler:(id)handler;
- (void)prepareSuiteWithCompletionHandler:(id)handler;
- (void)runTest:(id)test bundle:(id)bundle storeResultsIn:(id)in tryCount:(unint64_t)count completionHandler:(id)handler;
@end

@implementation WBSAutoFillTestController

- (void)runTest:(id)test bundle:(id)bundle storeResultsIn:(id)in tryCount:(unint64_t)count completionHandler:(id)handler
{
  testCopy = test;
  bundleCopy = bundle;
  inCopy = in;
  handlerCopy = handler;
  v16 = testCopy;
  delegate = [(WBSPageTestController *)self delegate];
  if (delegate)
  {
    [v16 viewportSize];
    v19 = v18;
    v21 = v20;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke;
    v22[3] = &unk_1E7FB6AD0;
    v29 = handlerCopy;
    v23 = delegate;
    selfCopy = self;
    v25 = v16;
    v26 = bundleCopy;
    v27 = v25;
    countCopy = count;
    v28 = inCopy;
    [v23 pageTestController:self resizeViewport:v22 completionHandler:{v19, v21}];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 80) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) pageURL];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7FB6AA8;
    v10 = *(a1 + 56);
    v7 = *(a1 + 64);
    v16 = *(a1 + 88);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = *(a1 + 72);
    v15 = *(a1 + 80);
    v14 = *(a1 + 48);
    [v4 pageTestController:v5 navigateAndCaptureFormsMetadataForURL:v6 completionHandler:v9];
  }
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXTest(v6, v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_1(a1, v9, v8);
  }

  v12 = *(a1 + 80);
  v13 = WBS_LOG_CHANNEL_PREFIXTest(v10, v11);
  v14 = v13;
  if (v12 <= 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 identifier];
      v18 = [*(a1 + 40) identifier];
      *buf = 138543618;
      v75 = v17;
      v76 = 2114;
      v77 = v18;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_DEFAULT, "Error has been detected for test %{public}@/%{public}@. Retrying.", buf, 0x16u);
    }

    v19 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_10;
    block[3] = &unk_1E7FB6A80;
    v55 = *(a1 + 40);
    v20 = v55.i64[0];
    v67 = vextq_s8(v55, v55, 8uLL);
    v68 = *(a1 + 32);
    v21 = *(a1 + 56);
    v23 = *(a1 + 72);
    v22 = *(a1 + 80);
    v69 = v21;
    v71 = v22;
    v70 = v23;
    dispatch_after(v19, MEMORY[0x1E69E96A0], block);

    goto LABEL_21;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_2(a1, v14);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_9:
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  v24 = objc_alloc(MEMORY[0x1E695DEF0]);
  v25 = [*(a1 + 64) expectedResultsURL];
  v65 = 0;
  v26 = [v24 initWithContentsOfURL:v25 options:1 error:&v65];
  v27 = v65;

  if (v27)
  {
    [*(a1 + 56) reportError:v27 descriptiveResultsName:@"form metadata" forStage:@"AutoFill" forTest:*(a1 + 64) inBundle:*(a1 + 32)];
  }

  v28 = [WBSFormAutoFillTestSupport stringRepresentationFromMetadataProvider:v5];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v26 encoding:4];
  v30 = [v29 isEqualToString:v28];
  v32 = v30;
  if ((v30 & 1) == 0 && *(a1 + 80) <= 2uLL)
  {
    v33 = WBS_LOG_CHANNEL_PREFIXTest(v30, v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v29;
      v34 = *(a1 + 32);
      v35 = v33;
      v36 = [v34 identifier];
      v37 = [*(a1 + 40) identifier];
      *buf = 138543618;
      v75 = v36;
      v76 = 2114;
      v77 = v37;
      _os_log_impl(&dword_1BB6F3000, v35, OS_LOG_TYPE_DEFAULT, "Test %{public}@/%{public}@ expected and actual results differed. Retrying.", buf, 0x16u);

      v29 = v56;
    }

    v38 = dispatch_time(0, 2000000000);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_14;
    v59[3] = &unk_1E7FB6A80;
    v57 = *(a1 + 40);
    v39 = v57.i64[0];
    v60 = vextq_s8(v57, v57, 8uLL);
    v61 = *(a1 + 32);
    v40 = *(a1 + 56);
    v42 = *(a1 + 72);
    v41 = *(a1 + 80);
    v62 = v40;
    v64 = v41;
    v63 = v42;
    dispatch_after(v38, MEMORY[0x1E69E96A0], v59);

    goto LABEL_21;
  }

  v58 = v29;
  v43 = *(a1 + 56);
  v44 = [v28 dataUsingEncoding:4];
  [*(a1 + 64) expectedResultsURL];
  v45 = v54 = v27;
  [v45 lastPathComponent];
  v53 = v28;
  v47 = v46 = v5;
  [*MEMORY[0x1E6982F40] identifier];
  v49 = v48 = v26;
  [v43 reportActualResults:v44 expectedResults:v48 expectedResultsName:v47 descriptiveResultsName:@"form metadata" uniformTypeIdentifier:v49 forStage:*(a1 + 64) forTest:*(a1 + 32) inBundle:?];

  v50 = *(a1 + 56);
  v72 = @"overall";
  v51 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v73 = v51;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  [v50 reportPerformance:v52 forStage:@"AutoFill" forTest:*(a1 + 64) inBundle:*(a1 + 32)];

  v5 = v46;
LABEL_18:
  if (v8)
  {
    [*(a1 + 56) reportError:v8 descriptiveResultsName:@"form metadata" forStage:@"AutoFill" forTest:*(a1 + 64) inBundle:*(a1 + 32)];
  }

  (*(*(a1 + 72) + 16))();
LABEL_21:
}

- (void)prepareSuiteWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(WBSPageTestController *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    [delegate pageTestControllerInitializeApp:self completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)cleanSuiteWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(WBSPageTestController *)self delegate];
  [delegate pageTestControllerTerminateApp:self];

  handlerCopy[2](handlerCopy, 0);
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 identifier];
  v8 = [*(a1 + 40) identifier];
  v9 = 138543874;
  v10 = v7;
  v11 = 2114;
  v12 = v8;
  v13 = 2114;
  v14 = a3;
  _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Test %{public}@/%{public}@ reported error: %{public}@", &v9, 0x20u);
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v6 = [*(a1 + 40) identifier];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_ERROR, "Too many consecutive errors for test %{public}@/%{public}@. Failing.", &v7, 0x16u);
}

@end