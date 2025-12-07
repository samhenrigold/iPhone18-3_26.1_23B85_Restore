@interface VCPMADVISceneClassificationTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVISceneClassificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
- (void)configureRequest:(id)request;
- (void)configureRequest:(id)request withRevision:(unint64_t)revision;
@end

@implementation VCPMADVISceneClassificationTask

- (VCPMADVISceneClassificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVISceneClassificationTask;
  v12 = [(VCPMADVISceneClassificationTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVISceneClassificationTask", 0);
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
  block[2] = __41__VCPMADVISceneClassificationTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __41__VCPMADVISceneClassificationTask_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  v2 = objc_loadWeakRetained((*(a1 + 32) + 64));

  if (v2)
  {
    [v2 cancel];
  }

  v5 = objc_loadWeakRetained((*(a1 + 32) + 72));

  if (v5)
  {
    [v5 cancel];
  }

  v3 = objc_loadWeakRetained((*(a1 + 32) + 80));

  if (v3)
  {
    [v3 cancel];
  }

  v6 = objc_loadWeakRetained((*(a1 + 32) + 88));

  if (v6)
  {
    [v6 cancel];
  }

  atomic_store(1u, (*(a1 + 32) + 48));
}

- (void)configureRequest:(id)request
{
  requestCopy = request;
  v3 = [requestCopy setMetalContextPriority:0];
  if (DeviceHasANE(v3, v4))
  {
    defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
    [requestCopy setProcessingDevice:defaultANEDevice];
  }
}

- (void)configureRequest:(id)request withRevision:(unint64_t)revision
{
  requestCopy = request;
  [requestCopy setRevision:revision];
  [(VCPMADVISceneClassificationTask *)self configureRequest:requestCopy];
}

- (int)run
{
  v150[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_canceled);
  if ((v2 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVISceneClassificationTask running...", buf, 2u);
    }

    v140 = 0;
    v139 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v140 orientation:&v139])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVISceneClassificationTask image loading failed", buf, 2u);
      }

      request = self->_request;
      v6 = MEMORY[0x1E696ABC0];
      v149 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v150[0] = v7;
      v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:&v149 count:1];
      v8 = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v119];
      [(MADVISceneClassificationRequest *)request setError:v8];
      v3 = 0;
      goto LABEL_101;
    }

    v119 = +[VCPMADVISceneClassificationResource sharedResource];
    v9 = +[VCPMADResourceManager sharedManager];
    v116 = [v9 activateResource:v119];

    array = [MEMORY[0x1E695DF70] array];
    v10 = objc_alloc_init(MEMORY[0x1E6984668]);
    v118 = v10;
    if (!v10)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        *buf = 138412290;
        v146 = v44;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v7 = 0;
      v3 = -18;
      goto LABEL_100;
    }

    [(VCPMADVISceneClassificationTask *)self configureRequest:v10];
    [v118 setMaximumLeafObservations:{-[MADVISceneClassificationRequest maximumLeafObservations](self->_request, "maximumLeafObservations")}];
    [v118 setMaximumHierarchicalObservations:{-[MADVISceneClassificationRequest maximumHierarchicalObservations](self->_request, "maximumHierarchicalObservations")}];
    classificationRevision = [(MADVISceneClassificationRequest *)self->_request classificationRevision];
    v138 = 0;
    v12 = [v118 setRevision:classificationRevision error:&v138];
    v7 = v138;
    if ((v12 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        classificationRevision2 = [(MADVISceneClassificationRequest *)self->_request classificationRevision];
        *buf = 134218242;
        v146 = classificationRevision2;
        v147 = 2112;
        v148 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNSceneClassificationRequest::setRevision %lu: %@", buf, 0x16u);
      }

      v46 = self->_request;
      v47 = MEMORY[0x1E696ABC0];
      v143 = *MEMORY[0x1E696A578];
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set VNSceneClassificationRequest::setRevision %lu: %@", -[MADVISceneClassificationRequest classificationRevision](v46, "classificationRevision"), v7];
      v144 = v48;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      v50 = [v47 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v49];
      [(MADVISceneClassificationRequest *)v46 setError:v50];

      v3 = 0;
      goto LABEL_100;
    }

    [array addObject:v118];
    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v14 = v118;
    v137 = v14;
    dispatch_sync(cancelQueue, block);
    v15 = objc_alloc_init(MEMORY[0x1E69846B0]);
    if (!v15)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        v3 = -18;
LABEL_99:

LABEL_100:
        v8 = v116;
LABEL_101:

        CF<__CVBuffer *>::~CF(&v140);
        return v3;
      }

      v115 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        *buf = 138412290;
        v146 = v51;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v3 = -18;
LABEL_98:
      v15 = v115;
      goto LABEL_99;
    }

    v115 = v15;
    [(VCPMADVISceneClassificationTask *)self configureRequest:v15 withRevision:[(MADVISceneClassificationRequest *)self->_request nsfwRevision]];
    [array addObject:v15];
    v16 = self->_cancelQueue;
    v134[0] = MEMORY[0x1E69E9820];
    v134[1] = 3221225472;
    v134[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_360;
    v134[3] = &unk_1E834D238;
    v134[4] = self;
    v113 = v15;
    v135 = v113;
    dispatch_sync(v16, v134);
    v17 = objc_alloc_init(MEMORY[0x1E69843F0]);
    if (!v17)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        *buf = 138412290;
        v146 = v52;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v3 = -18;
      goto LABEL_97;
    }

    v112 = v14;
    v114 = v17;
    [(VCPMADVISceneClassificationTask *)self configureRequest:v17];
    significantEventRevision = [(MADVISceneClassificationRequest *)self->_request significantEventRevision];
    v133 = v7;
    v19 = [v17 setRevision:significantEventRevision error:&v133];
    v20 = v133;

    if ((v19 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        significantEventRevision2 = [(MADVISceneClassificationRequest *)self->_request significantEventRevision];
        *buf = 134218242;
        v146 = significantEventRevision2;
        v147 = 2112;
        v148 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNClassifySignificantEventRequest::setRevision %lu: %@", buf, 0x16u);
      }

      v3 = -18;
      v7 = v20;
      goto LABEL_97;
    }

    [array addObject:v17];
    v21 = self->_cancelQueue;
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 3221225472;
    v131[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_362;
    v131[3] = &unk_1E834D238;
    v131[4] = self;
    v110 = v17;
    v132 = v110;
    dispatch_sync(v21, v131);
    v22 = objc_alloc_init(MEMORY[0x1E6984630]);
    if (!v22)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v54 = objc_opt_class();
        *buf = 138412290;
        v146 = v54;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@", buf, 0xCu);
      }

      v3 = -18;
      goto LABEL_96;
    }

    v111 = v22;
    [(VCPMADVISceneClassificationTask *)self configureRequest:v22];
    recognizeObjectsRevision = [(MADVISceneClassificationRequest *)self->_request recognizeObjectsRevision];
    v130 = v20;
    v24 = [v22 setRevision:recognizeObjectsRevision error:&v130];
    v25 = v130;

    if ((v24 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        recognizeObjectsRevision2 = [(MADVISceneClassificationRequest *)self->_request recognizeObjectsRevision];
        *buf = 134218242;
        v146 = recognizeObjectsRevision2;
        v147 = 2112;
        v148 = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNRecognizeObjectsRequest::setRevision %lu: %@", buf, 0x16u);
      }

      v3 = -18;
      v20 = v25;
      goto LABEL_96;
    }

    [array addObject:v22];
    v26 = self->_cancelQueue;
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_364;
    v128[3] = &unk_1E834D238;
    v128[4] = self;
    v27 = v22;
    v129 = v27;
    dispatch_sync(v26, v128);
    v28 = objc_alloc_init(MEMORY[0x1E6984540]);
    v29 = v28;
    if (v28)
    {
      v107 = v27;
      v108 = v28;
      [(VCPMADVISceneClassificationTask *)self configureRequest:v28];
      saliencyRevision = [(MADVISceneClassificationRequest *)self->_request saliencyRevision];
      v127 = v25;
      v31 = [v29 setRevision:saliencyRevision error:&v127];
      v109 = v127;

      if (v31)
      {
        [array addObject:v108];
        v32 = self->_cancelQueue;
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 3221225472;
        v125[2] = __38__VCPMADVISceneClassificationTask_run__block_invoke_366;
        v125[3] = &unk_1E834D238;
        v125[4] = self;
        v106 = v108;
        v126 = v106;
        dispatch_sync(v32, v125);
        if (self->_preferredMetalDevice)
        {
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v34 = array;
          v35 = [v34 countByEnumeratingWithState:&v121 objects:v142 count:16];
          if (v35)
          {
            v36 = *v122;
            v37 = MEMORY[0x1E69E9C10];
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v122 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v121 + 1) + 8 * i);
                v40 = [MEMORY[0x1E6984608] deviceForMetalDevice:self->_preferredMetalDevice];
                [v39 setProcessingDevice:v40];

                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  processingDevice = [v39 processingDevice];
                  preferredMetalDevice = self->_preferredMetalDevice;
                  *buf = 138412546;
                  v146 = processingDevice;
                  v147 = 2112;
                  v148 = preferredMetalDevice;
                  _os_log_impl(&dword_1C9B70000, v37, OS_LOG_TYPE_DEBUG, "[SceneClassification] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
                }
              }

              v35 = [v34 countByEnumeratingWithState:&v121 objects:v142 count:16];
            }

            while (v35);
          }
        }

        v43 = atomic_load(&self->_canceled);
        if (v43)
        {
          v3 = -128;
LABEL_94:

          v29 = v108;
          v25 = v109;
          goto LABEL_95;
        }

        v61 = VCPSignPostLog(v33);
        v62 = os_signpost_id_generate(v61);

        v64 = VCPSignPostLog(v63);
        v65 = v64;
        if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
        {
          signpostPayload = self->_signpostPayload;
          *buf = 138412290;
          v146 = signpostPayload;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v65, OS_SIGNPOST_INTERVAL_BEGIN, v62, "VNImageRequestHandler_init", "%@", buf, 0xCu);
        }

        v67 = objc_alloc(MEMORY[0x1E69845B8]);
        v68 = v140;
        v69 = v139;
        session = [v119 session];
        v71 = [v67 initWithCVPixelBuffer:v68 orientation:v69 options:MEMORY[0x1E695E0F8] session:session];

        v73 = VCPSignPostLog(v72);
        v74 = v73;
        if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
        {
          v75 = self->_signpostPayload;
          *buf = 138412290;
          v146 = v75;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v74, OS_SIGNPOST_INTERVAL_END, v62, "VNImageRequestHandler_init", "%@", buf, 0xCu);
        }

        v77 = VCPSignPostLog(v76);
        v78 = os_signpost_id_generate(v77);

        v80 = VCPSignPostLog(v79);
        v81 = v80;
        if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
        {
          v82 = self->_signpostPayload;
          *buf = 138412290;
          v146 = v82;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v81, OS_SIGNPOST_INTERVAL_BEGIN, v78, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
        }

        v120 = v109;
        v83 = [v71 performRequests:array error:&v120];
        v84 = v120;

        v109 = v84;
        v86 = VCPSignPostLog(v85);
        v87 = v86;
        if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
        {
          v88 = self->_signpostPayload;
          *buf = 138412290;
          v146 = v88;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v87, OS_SIGNPOST_INTERVAL_END, v78, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
        }

        if (v83)
        {
          v89 = objc_alloc_init(MEMORY[0x1E69AE450]);
          results = [v112 results];
          [v89 setClassificationObservations:results];

          results2 = [v113 results];
          [v89 setNSFWObservations:results2];

          results3 = [v110 results];
          [v89 setSignificantEventObservations:results3];

          results4 = [v107 results];
          [v89 setRecognizedObjectObservations:results4];

          results5 = [v106 results];
          [v89 setSaliencyObservations:results5];

          v95 = self->_request;
          v141 = v89;
          v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
          [(MADVISceneClassificationRequest *)v95 setResults:v96];

          executionNanoseconds = [v112 executionNanoseconds];
          executionNanoseconds2 = [v113 executionNanoseconds];
          executionNanoseconds3 = [v110 executionNanoseconds];
          executionNanoseconds4 = [v107 executionNanoseconds];
          executionNanoseconds5 = [v106 executionNanoseconds];
          results6 = [(MADVISceneClassificationRequest *)self->_request results];
          firstObject = [results6 firstObject];
          [firstObject setExecutionNanoseconds:executionNanoseconds2 + executionNanoseconds + executionNanoseconds3 + executionNanoseconds4 + executionNanoseconds5];
        }

        else
        {
          v104 = atomic_load(&self->_canceled);
          if (v104)
          {
            v3 = -128;
LABEL_93:

            goto LABEL_94;
          }

          [(MADVISceneClassificationRequest *)self->_request setError:v109];
        }

        [v116 reset];
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVISceneClassificationTask complete", buf, 2u);
        }

        v3 = 0;
        goto LABEL_93;
      }

      v29 = v108;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v3 = -18;
        v25 = v109;
        goto LABEL_95;
      }

      saliencyRevision2 = [(MADVISceneClassificationRequest *)self->_request saliencyRevision];
      *buf = 134218242;
      v146 = saliencyRevision2;
      v147 = 2112;
      v25 = v109;
      v148 = v109;
      v57 = MEMORY[0x1E69E9C10];
      v58 = "Failed to set VNGenerateAttentionBasedSaliencyImageRequest::setRevision %lu: %@";
      v59 = 22;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v56 = objc_opt_class();
      *buf = 138412290;
      v146 = v56;
      v57 = MEMORY[0x1E69E9C10];
      v58 = "Failed to create %@";
      v59 = 12;
    }

    _os_log_impl(&dword_1C9B70000, v57, OS_LOG_TYPE_ERROR, v58, buf, v59);
LABEL_70:
    v3 = -18;
LABEL_95:

    v20 = v25;
    v22 = v111;
LABEL_96:

    v7 = v20;
    v17 = v114;
LABEL_97:

    goto LABEL_98;
  }

  return -128;
}

@end