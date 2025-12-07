@interface VCPMADVIUserFeedbackTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIUserFeedbackTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIUserFeedbackTask

- (VCPMADVIUserFeedbackTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIUserFeedbackTask;
  v12 = [(VCPMADVIUserFeedbackTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIUserFeedbackTask", 0);
    cancelQueue = v13->_cancelQueue;
    v13->_cancelQueue = v14;
  }

  return v13;
}

+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = [[self alloc] initWithRequest:requestCopy imageAsset:assetCopy andSignpostPayload:payloadCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VCPMADVIUserFeedbackTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void *__34__VCPMADVIUserFeedbackTask_cancel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) cancel];
  atomic_store(1u, (*(a1 + 32) + 48));
  return result;
}

- (int)run
{
  v28 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIUserFeedbackTask running...", buf, 2u);
  }

  v3 = +[VCPMADVIVisualSearchResource sharedResource];
  v4 = +[VCPMADResourceManager sharedManager];
  v5 = [v4 activateResource:v3];

  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = dispatch_group_create();
  cancelQueue = self->_cancelQueue;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __31__VCPMADVIUserFeedbackTask_run__block_invoke;
  v17 = &unk_1E834DF40;
  selfCopy = self;
  v21 = buf;
  v8 = v6;
  v19 = v8;
  v9 = v3;
  v20 = v9;
  dispatch_sync(cancelQueue, &v14);
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  service = [v9 service];
  [service clearCacheWithOption:56];

  [v5 reset];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = *(v23 + 6);
    *v26 = 67109120;
    v27 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIUserFeedbackTask complete (%d)", v26, 8u);
  }

  v12 = *(v23 + 6);

  _Block_object_dispose(buf, 8);
  return v12;
}

void __31__VCPMADVIUserFeedbackTask_run__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = -128;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __31__VCPMADVIUserFeedbackTask_run__block_invoke_2;
    aBlock[3] = &unk_1E834DEC8;
    aBlock[4] = *(a1 + 32);
    v3 = _Block_copy(aBlock);
    v4 = objc_alloc(MEMORY[0x1E69E0460]);
    [*(*(a1 + 32) + 16) resolution];
    v5 = [v4 initWithImageLoader:v3 imageSize:?];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__63;
    v39 = __Block_byref_object_dispose__63;
    v40 = objc_alloc_init(VCPTimeMeasurement);
    objc_msgSend_start(v36[5]);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __31__VCPMADVIUserFeedbackTask_run__block_invoke_345;
    v31[3] = &unk_1E8351488;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v33 = &v35;
    v31[4] = v7;
    v34 = *(a1 + 56);
    v32 = v6;
    v8 = _Block_copy(v31);
    dispatch_group_enter(*(a1 + 40));
    v9 = objc_alloc(MEMORY[0x1E69E04C0]);
    v10 = [*(*(a1 + 32) + 8) userFeedbackPayload];
    v11 = [*(*(a1 + 32) + 8) sfReportData];
    v12 = [*(*(a1 + 32) + 8) reportIdentifier];
    v13 = [v9 initWithImage:v5 userFeedbackPayload:v10 sfReportData:v11 reportIdentifier:v12];

    v15 = VCPSignPostLog(v14);
    v16 = os_signpost_id_generate(v15);

    v18 = VCPSignPostLog(v17);
    v19 = v18;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v20 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v43 = v20;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VIService_UserFeedback", "%@", buf, 0xCu);
    }

    v21 = [*(a1 + 48) service];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __31__VCPMADVIUserFeedbackTask_run__block_invoke_350;
    v27[3] = &unk_1E83514B0;
    v22 = *(a1 + 32);
    v29 = v16;
    v30 = 0;
    v27[4] = v22;
    v23 = v8;
    v28 = v23;
    v24 = [v21 submitUserFeedback:v13 completion:v27];
    v25 = *(a1 + 32);
    v26 = *(v25 + 56);
    *(v25 + 56) = v24;

    _Block_object_dispose(&v35, 8);
  }
}

id __31__VCPMADVIUserFeedbackTask_run__block_invoke_2(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  if ([*(*(a1 + 32) + 16) loadPixelBuffer:&v5 orientation:&v4])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIUserFeedbackTask image loading failed", v3, 2u);
    }

    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E69E0450] imageWithPixelBuffer:v5 orientation:v4];
  }

  CF<__CVBuffer *>::~CF(&v5);

  return v1;
}

void __31__VCPMADVIUserFeedbackTask_run__block_invoke_345(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(*(a1 + 48) + 8) + 40) stop];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = atomic_load((v4 + 48));
    if (v5)
    {
      *(*(*(a1 + 56) + 8) + 24) = -128;
    }

    else
    {
      [*(*(a1 + 32) + 8) setError:v3];
    }
  }

  else
  {
    v6 = *(v4 + 8);
    v7 = objc_alloc_init(MEMORY[0x1E69AE470]);
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v6 setResults:v8];

    v9 = [*(*(a1 + 32) + 8) results];
    v10 = [v9 firstObject];
    [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
    [v10 setExecutionNanoseconds:(v11 * 1000000000.0)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __31__VCPMADVIUserFeedbackTask_run__block_invoke_350(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog(v3);
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1[4] + 24);
    v9 = 138412290;
    v10 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_END, v6, "VIService_UserFeedback", "%@", &v9, 0xCu);
  }

  if (a1[7])
  {
    v8 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VIService_UserFeedback", v8 - a1[7]);
  }

  (*(a1[5] + 16))();
}

@end