@interface VCPMADVIMachineReadableCodeDetectionTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (BOOL)canReuseResultsForRequest;
- (VCPMADVIMachineReadableCodeDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIMachineReadableCodeDetectionTask

- (VCPMADVIMachineReadableCodeDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIMachineReadableCodeDetectionTask;
  v12 = [(VCPMADVIMachineReadableCodeDetectionTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIMachineReadableCodeDetectionTask", 0);
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
  block[2] = __50__VCPMADVIMachineReadableCodeDetectionTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __50__VCPMADVIMachineReadableCodeDetectionTask_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  atomic_store(1u, (*(a1 + 32) + 40));
}

- (BOOL)canReuseResultsForRequest
{
  symbologies = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
  if ([symbologies count] == 2)
  {
    symbologies2 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
    if ([symbologies2 containsObject:*MEMORY[0x1E69848C0]])
    {
      symbologies3 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
      v6 = [symbologies3 containsObject:*MEMORY[0x1E69848A0]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)run
{
  v82[1] = *MEMORY[0x1E69E9840];
  v3 = MediaAnalysisLogLevel();
  if (v3 >= 6)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIMachineReadableCodeDetectionTask running...", buf, 2u);
    }
  }

  if (!VCPPhotosMRCCachingEnabled(v3, v4) || ([(VCPMADServiceImageAsset *)self->_imageAsset barcodeObservations], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v73 = 0;
    v72 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v73 orientation:&v72])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIMachineReadableCodeDetectionTask image loading failed", buf, 2u);
      }

      request = self->_request;
      v11 = MEMORY[0x1E696ABC0];
      v80 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v81 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
      [(MADVIMachineReadableCodeDetectionRequest *)request setError:v14];
      v9 = 0;
      goto LABEL_51;
    }

    v12 = +[VCPMADMachineReadableCodeResource sharedResource];
    v15 = +[VCPMADResourceManager sharedManager];
    v13 = [v15 activateResource:v12];

    mad_defaultRequest = [MEMORY[0x1E69844A0] mad_defaultRequest];
    if (!mad_defaultRequest)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to configure VNDetectBarcodesRequest", buf, 2u);
      }

      v23 = self->_request;
      v24 = MEMORY[0x1E696ABC0];
      v78 = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to configure VNDetectBarcodesRequest"];
      v79 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v27 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v26];
      [(MADVIMachineReadableCodeDetectionRequest *)v23 setError:v27];

      v14 = 0;
      v9 = 0;
      goto LABEL_50;
    }

    symbologies = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
    v17 = [symbologies count] == 0;

    if (!v17)
    {
      symbologies2 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
      [mad_defaultRequest setSymbologies:symbologies2];
    }

    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__VCPMADVIMachineReadableCodeDetectionTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v20 = mad_defaultRequest;
    v71 = v20;
    dispatch_sync(cancelQueue, block);
    v22 = atomic_load(&self->_canceled);
    if (v22)
    {
      v14 = 0;
      v9 = -128;
LABEL_49:

LABEL_50:
LABEL_51:

      CF<__CVBuffer *>::~CF(&v73);
      return v9;
    }

    v28 = VCPSignPostLog(v21);
    v29 = os_signpost_id_generate(v28);

    v31 = VCPSignPostLog(v30);
    v32 = v31;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v77 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v29, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v34 = objc_alloc(MEMORY[0x1E69845B8]);
    v35 = v73;
    v36 = v72;
    session = [v12 session];
    v67 = [v34 initWithCVPixelBuffer:v35 orientation:v36 options:MEMORY[0x1E695E0F8] session:session];

    v39 = VCPSignPostLog(v38);
    v40 = v39;
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      v41 = self->_signpostPayload;
      *buf = 138412290;
      v77 = v41;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_END, v29, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v43 = VCPSignPostLog(v42);
    v44 = os_signpost_id_generate(v43);

    v46 = VCPSignPostLog(v45);
    v47 = v46;
    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      v48 = self->_signpostPayload;
      *buf = 138412290;
      v77 = v48;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v44, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    v75 = v20;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    v69 = 0;
    v50 = [v67 performRequests:v49 error:&v69];
    v14 = v69;

    v52 = VCPSignPostLog(v51);
    v53 = v52;
    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
    {
      v54 = self->_signpostPayload;
      *buf = 138412290;
      v77 = v54;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v53, OS_SIGNPOST_INTERVAL_END, v44, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    if (v50)
    {
      v55 = self->_request;
      v56 = objc_alloc(MEMORY[0x1E69AE430]);
      results = [v20 results];
      v58 = [v56 initWithObservations:results];
      v74 = v58;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      [(MADVIMachineReadableCodeDetectionRequest *)v55 setResults:v59];

      results2 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request results];
      firstObject = [results2 firstObject];
      [firstObject setExecutionNanoseconds:{objc_msgSend(v20, "executionNanoseconds")}];

      if (VCPPhotosMRCCachingEnabled(v62, v63))
      {
        if ([(VCPMADVIMachineReadableCodeDetectionTask *)self canReuseResultsForRequest])
        {
          results3 = [v20 results];
          [(VCPMADServiceImageAsset *)self->_imageAsset setBarcodeObservations:results3];
        }

        else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MRC] Custom request configuration; not persisting result", buf, 2u);
        }
      }
    }

    else
    {
      v65 = atomic_load(&self->_canceled);
      if (v65)
      {
        v9 = -128;
LABEL_48:

        goto LABEL_49;
      }

      [(MADVIMachineReadableCodeDetectionRequest *)self->_request setError:v14];
    }

    [v13 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIMachineReadableCodeDetectionTask complete", buf, 2u);
    }

    v9 = 0;
    goto LABEL_48;
  }

  if (![(VCPMADVIMachineReadableCodeDetectionTask *)self canReuseResultsForRequest]&& MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MRC] Custom request configuration; overriding to use cached data", buf, 2u);
  }

  v6 = self->_request;
  v7 = [objc_alloc(MEMORY[0x1E69AE430]) initWithObservations:v5];
  v82[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
  [(MADVIMachineReadableCodeDetectionRequest *)v6 setResults:v8];

  return 0;
}

@end