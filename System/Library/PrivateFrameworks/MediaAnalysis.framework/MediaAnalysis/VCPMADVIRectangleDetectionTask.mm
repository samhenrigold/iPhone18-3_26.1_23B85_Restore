@interface VCPMADVIRectangleDetectionTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIRectangleDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIRectangleDetectionTask

- (VCPMADVIRectangleDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIRectangleDetectionTask;
  v12 = [(VCPMADVIRectangleDetectionTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIRectangleDetectionTask", 0);
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
  block[2] = __40__VCPMADVIRectangleDetectionTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __40__VCPMADVIRectangleDetectionTask_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  atomic_store(1u, (*(a1 + 32) + 48));
}

- (int)run
{
  v69[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIRectangleDetectionTask running...", buf, 2u);
  }

  v61 = 0;
  v60 = 0;
  if (![(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v61 orientation:&v60])
  {
    v5 = +[VCPMADVIRectangleDetectionResource sharedResource];
    v8 = +[VCPMADResourceManager sharedManager];
    v56 = [v8 activateResource:v5];

    v9 = objc_alloc_init(MEMORY[0x1E69844E0]);
    if (DeviceHasANE(v9, v10))
    {
      defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
      [v9 setProcessingDevice:defaultANEDevice];
    }

    [(MADVIRectangleDetectionRequest *)self->_request minimumAspectRatio];
    [v9 setMinimumAspectRatio:?];
    [(MADVIRectangleDetectionRequest *)self->_request maximumAspectRatio];
    [v9 setMaximumAspectRatio:?];
    [(MADVIRectangleDetectionRequest *)self->_request quadratureTolerance];
    [v9 setQuadratureTolerance:?];
    [(MADVIRectangleDetectionRequest *)self->_request minimumSize];
    [v9 setMinimumSize:?];
    [(MADVIRectangleDetectionRequest *)self->_request minimumConfidence];
    [v9 setMinimumConfidence:?];
    [v9 setMaximumObservations:{-[MADVIRectangleDetectionRequest maximumObservations](self->_request, "maximumObservations")}];
    if (self->_preferredMetalDevice)
    {
      v12 = [MEMORY[0x1E6984608] deviceForMetalDevice:?];
      [v9 setProcessingDevice:v12];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        processingDevice = [v9 processingDevice];
        preferredMetalDevice = self->_preferredMetalDevice;
        *buf = 138412546;
        v65 = processingDevice;
        v66 = 2112;
        v67 = preferredMetalDevice;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RectangleDetection] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
      }
    }

    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__VCPMADVIRectangleDetectionTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v16 = v9;
    v59 = v16;
    dispatch_sync(cancelQueue, block);
    v18 = atomic_load(&self->_canceled);
    if (v18)
    {
      v6 = 0;
      v7 = -128;
LABEL_39:

      goto LABEL_40;
    }

    v19 = VCPSignPostLog(v17);
    v20 = os_signpost_id_generate(v19);

    v22 = VCPSignPostLog(v21);
    v23 = v22;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v65 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v25 = objc_alloc(MEMORY[0x1E69845B8]);
    v26 = v61;
    v27 = v60;
    session = [v5 session];
    v55 = [v25 initWithCVPixelBuffer:v26 orientation:v27 options:MEMORY[0x1E695E0F8] session:session];

    v30 = VCPSignPostLog(v29);
    v31 = v30;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      v32 = self->_signpostPayload;
      *buf = 138412290;
      v65 = v32;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_END, v20, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v34 = VCPSignPostLog(v33);
    v35 = os_signpost_id_generate(v34);

    v37 = VCPSignPostLog(v36);
    v38 = v37;
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      v39 = self->_signpostPayload;
      *buf = 138412290;
      v65 = v39;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    v63 = v16;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    v57 = 0;
    v41 = [v55 performRequests:v40 error:&v57];
    v6 = v57;

    v43 = VCPSignPostLog(v42);
    v44 = v43;
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      v45 = self->_signpostPayload;
      *buf = 138412290;
      v65 = v45;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v44, OS_SIGNPOST_INTERVAL_END, v35, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    if (v41)
    {
      request = self->_request;
      v47 = objc_alloc(MEMORY[0x1E69AE440]);
      results = [v16 results];
      v49 = [v47 initWithObservations:results];
      v62 = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
      [(MADVIRectangleDetectionRequest *)request setResults:v50];

      results2 = [(MADVIRectangleDetectionRequest *)self->_request results];
      firstObject = [results2 firstObject];
      [firstObject setExecutionNanoseconds:{objc_msgSend(v16, "executionNanoseconds")}];
    }

    else
    {
      v53 = atomic_load(&self->_canceled);
      if (v53)
      {
        v7 = -128;
LABEL_38:

        goto LABEL_39;
      }

      [(MADVIRectangleDetectionRequest *)self->_request setError:v6];
    }

    [v56 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIRectangleDetectionTask complete", buf, 2u);
    }

    v7 = 0;
    goto LABEL_38;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIRectangleDetectionTask image loading failed", buf, 2u);
  }

  v3 = self->_request;
  v4 = MEMORY[0x1E696ABC0];
  v68 = *MEMORY[0x1E696A578];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
  v69[0] = v5;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
  [(MADVIRectangleDetectionRequest *)v3 setError:v6];
  v7 = 0;
LABEL_40:

  CF<__CVBuffer *>::~CF(&v61);
  return v7;
}

@end