@interface VCPMADVIFaceTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIFaceTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIFaceTask

- (VCPMADVIFaceTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIFaceTask;
  v12 = [(VCPMADVIFaceTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIFaceTask", 0);
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
  block[2] = __26__VCPMADVIFaceTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __26__VCPMADVIFaceTask_cancel__block_invoke(uint64_t a1)
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

- (int)run
{
  v191[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_canceled);
  if ((v2 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIFaceTask running...", buf, 2u);
    }

    v170 = 0;
    v169 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v170 orientation:&v169])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIFaceTask image loading failed", buf, 2u);
      }

      request = self->_request;
      v6 = MEMORY[0x1E696ABC0];
      v190 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v191[0] = v7;
      v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v191 forKeys:&v190 count:1];
      v8 = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v147];
      [(MADVIFaceRequest *)request setError:v8];
      v3 = 0;
      goto LABEL_43;
    }

    v147 = +[VCPMADVIFaceResource sharedResource];
    v9 = +[VCPMADResourceManager sharedManager];
    v144 = [v9 activateResource:v147];

    v10 = +[VCPDefaultPhotoLibraryManager sharedManager];
    defaultPhotoLibrary = [v10 defaultPhotoLibrary];

    [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:defaultPhotoLibrary];
    v145 = v168 = 0;
    LODWORD(v10) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v168, objc_opt_class(), [v145 processingVersion]);
    v11 = v168;
    v143 = v11;
    if (v10)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNDetectFaceRectanglesRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v173 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v13 = self->_request;
      v14 = MEMORY[0x1E696ABC0];
      v188 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
      v189 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
      v17 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v16];
      [(MADVIFaceRequest *)v13 setError:v17];

      v7 = 0;
      v3 = 0;
      goto LABEL_42;
    }

    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__VCPMADVIFaceTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v141 = v11;
    v167 = v141;
    dispatch_sync(cancelQueue, block);
    v20 = VCPSignPostLog(v19);
    v21 = os_signpost_id_generate(v20);

    v23 = VCPSignPostLog(v22);
    v24 = v23;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v173 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "VCPMADVIFaceTask_VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v26 = objc_alloc(MEMORY[0x1E69845B8]);
    v27 = v170;
    v28 = v169;
    session = [v147 session];
    v142 = [v26 initWithCVPixelBuffer:v27 orientation:v28 options:MEMORY[0x1E695E0F8] session:session];

    v31 = VCPSignPostLog(v30);
    v32 = v31;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v33 = self->_signpostPayload;
      *buf = 138412290;
      v173 = v33;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v21, "VCPMADVIFaceTask_VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v35 = VCPSignPostLog(v34);
    v36 = os_signpost_id_generate(v35);

    v38 = VCPSignPostLog(v37);
    v39 = v38;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v40 = self->_signpostPayload;
      *buf = 138412290;
      v173 = v40;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v36, "VCPMADVIFaceTask_detectFace", "%@", buf, 0xCu);
    }

    v187 = v141;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v187 count:1];
    v165 = 0;
    v42 = [v142 performRequests:v41 error:&v165];
    v7 = v165;

    if ((v42 & 1) == 0)
    {
      array = [MEMORY[0x1E696AEC0] stringWithFormat:@"[≈] Failed to detect faces - %@", v7];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v173 = array;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v57 = self->_request;
      v58 = MEMORY[0x1E696ABC0];
      v185 = *MEMORY[0x1E696A578];
      array = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", array];
      v139 = array;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&array forKeys:&v185 count:1];
      v60 = [v58 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v59];
      [(MADVIFaceRequest *)v57 setError:v60];

      goto LABEL_39;
    }

    v44 = VCPSignPostLog(v43);
    v45 = v44;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      v46 = self->_signpostPayload;
      *buf = 138412290;
      v173 = v46;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_END, v36, "VCPMADVIFaceTask_detectFace", "%@", buf, 0xCu);
    }

    results = [v141 results];
    v48 = [results count];

    if (!v48)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMADVIFaceTask] No face detected from CVPixelBuffer", buf, 2u);
      }

      [(MADVIFaceRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];
      v3 = 0;
      goto LABEL_41;
    }

    array = [MEMORY[0x1E695DF70] array];
    v164 = 0;
    v49 = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v164, objc_opt_class(), [v145 processingVersion]);
    v50 = v164;
    v139 = v50;
    if (v49)
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNCreateFaceprintRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v173 = v51;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v52 = self->_request;
      v53 = MEMORY[0x1E696ABC0];
      v183 = *MEMORY[0x1E696A578];
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v51];
      v184 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
      v56 = [v53 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v55];
      [(MADVIFaceRequest *)v52 setError:v56];

LABEL_39:
      v3 = 0;
LABEL_40:

LABEL_41:
LABEL_42:

      v8 = v144;
LABEL_43:

      CF<__CVBuffer *>::~CF(&v170);
      return v3;
    }

    v62 = v50;
    results2 = [v141 results];
    [v62 setInputFaceObservations:results2];

    [(NSString *)array addObject:v139];
    v64 = self->_cancelQueue;
    v162[0] = MEMORY[0x1E69E9820];
    v162[1] = 3221225472;
    v162[2] = __23__VCPMADVIFaceTask_run__block_invoke_375;
    v162[3] = &unk_1E834D238;
    v162[4] = self;
    v139 = v139;
    v163 = v139;
    dispatch_sync(v64, v162);
    v161 = 0;
    LODWORD(v64) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v161, objc_opt_class(), [v145 processingVersion]);
    v65 = v161;
    v138 = v65;
    if (v64)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNClassifyFaceAttributesRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v173 = v66;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v67 = self->_request;
      v68 = MEMORY[0x1E696ABC0];
      v181 = *MEMORY[0x1E696A578];
      v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v66];
      v182 = v69;
      v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
      v71 = [v68 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v70];
      [(MADVIFaceRequest *)v67 setError:v71];

      v3 = 0;
      goto LABEL_95;
    }

    v72 = v65;
    results3 = [v141 results];
    [v72 setInputFaceObservations:results3];

    [(NSString *)array addObject:v138];
    v74 = self->_cancelQueue;
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __23__VCPMADVIFaceTask_run__block_invoke_380;
    v159[3] = &unk_1E834D238;
    v159[4] = self;
    v136 = v138;
    v160 = v136;
    dispatch_sync(v74, v159);
    v158 = 0;
    LODWORD(v74) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v158, objc_opt_class(), [v145 processingVersion]);
    v75 = v158;
    v137 = v75;
    if (v74)
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNDetectFaceExpressionsRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v173 = v76;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v77 = self->_request;
      v78 = MEMORY[0x1E696ABC0];
      v179 = *MEMORY[0x1E696A578];
      v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v76];
      v180 = v79;
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
      v81 = [v78 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v80];
      [(MADVIFaceRequest *)v77 setError:v81];

      v3 = 0;
      goto LABEL_94;
    }

    v82 = v75;
    results4 = [v141 results];
    [v82 setInputFaceObservations:results4];

    [(NSString *)array addObject:v137];
    v84 = self->_cancelQueue;
    v156[0] = MEMORY[0x1E69E9820];
    v156[1] = 3221225472;
    v156[2] = __23__VCPMADVIFaceTask_run__block_invoke_385;
    v156[3] = &unk_1E834D238;
    v156[4] = self;
    v134 = v137;
    v157 = v134;
    dispatch_sync(v84, v156);
    v155 = 0;
    LODWORD(v84) = +[VCPFaceUtils configureVNRequest:withClass:andProcessingVersion:](VCPFaceUtils, "configureVNRequest:withClass:andProcessingVersion:", &v155, objc_opt_class(), [v145 processingVersion]);
    v85 = v155;
    v135 = v85;
    if (v84)
    {
      v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADVIFaceTask] Failed to configuate VNDetectFaceLandmarksRequest"];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v173 = v86;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v87 = self->_request;
      v88 = MEMORY[0x1E696ABC0];
      v177 = *MEMORY[0x1E696A578];
      v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v86];
      v178 = v89;
      v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
      v91 = [v88 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v90];
      [(MADVIFaceRequest *)v87 setError:v91];

      v3 = 0;
      goto LABEL_93;
    }

    v92 = v85;
    results5 = [v141 results];
    [v92 setInputFaceObservations:results5];

    [(NSString *)array addObject:v135];
    v94 = self->_cancelQueue;
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __23__VCPMADVIFaceTask_run__block_invoke_390;
    v153[3] = &unk_1E834D238;
    v153[4] = self;
    v133 = v135;
    v154 = v133;
    dispatch_sync(v94, v153);
    if (self->_preferredMetalDevice)
    {
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v96 = array;
      v97 = [(NSString *)v96 countByEnumeratingWithState:&v149 objects:v176 count:16];
      if (v97)
      {
        v98 = *v150;
        do
        {
          for (i = 0; i != v97; ++i)
          {
            if (*v150 != v98)
            {
              objc_enumerationMutation(v96);
            }

            v100 = *(*(&v149 + 1) + 8 * i);
            v101 = [MEMORY[0x1E6984608] deviceForMetalDevice:self->_preferredMetalDevice];
            [v100 setProcessingDevice:v101];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              processingDevice = [v100 processingDevice];
              preferredMetalDevice = self->_preferredMetalDevice;
              *buf = 138412546;
              v173 = processingDevice;
              v174 = 2112;
              v175 = preferredMetalDevice;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMADVIFaceTask] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
            }
          }

          v97 = [(NSString *)v96 countByEnumeratingWithState:&v149 objects:v176 count:16];
        }

        while (v97);
      }
    }

    v104 = atomic_load(&self->_canceled);
    if (v104)
    {
      goto LABEL_77;
    }

    v105 = VCPSignPostLog(v95);
    v106 = os_signpost_id_generate(v105);

    v108 = VCPSignPostLog(v107);
    v109 = v108;
    if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
    {
      v110 = self->_signpostPayload;
      *buf = 138412290;
      v173 = v110;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v109, OS_SIGNPOST_INTERVAL_BEGIN, v106, "VCPMADVIFaceTask_additionalFaceRequests", "%@", buf, 0xCu);
    }

    v148 = v7;
    v111 = [v142 performRequests:array error:&v148];
    v112 = v148;

    v7 = v112;
    v114 = VCPSignPostLog(v113);
    v115 = v114;
    if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v114))
    {
      v116 = self->_signpostPayload;
      *buf = 138412290;
      v173 = v116;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v115, OS_SIGNPOST_INTERVAL_END, v106, "VCPMADVIFaceTask_additionalFaceRequests", "%@", buf, 0xCu);
    }

    if (v111)
    {
      v117 = objc_alloc_init(MEMORY[0x1E69AE420]);
      results6 = [v141 results];
      [v117 setFaceRectanglesObservations:results6];

      results7 = [v139 results];
      [v117 setFaceprintObservations:results7];

      results8 = [v136 results];
      [v117 setFaceAttributesObservations:results8];

      results9 = [v134 results];
      [v117 setFaceExpressionsObservations:results9];

      results10 = [v133 results];
      [v117 setFaceLandmarksObservations:results10];

      v123 = self->_request;
      v171 = v117;
      v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v171 count:1];
      [(MADVIFaceRequest *)v123 setResults:v124];

      executionNanoseconds = [v141 executionNanoseconds];
      executionNanoseconds2 = [v139 executionNanoseconds];
      executionNanoseconds3 = [v136 executionNanoseconds];
      executionNanoseconds4 = [v134 executionNanoseconds];
      executionNanoseconds5 = [v133 executionNanoseconds];
      results11 = [(MADVIFaceRequest *)self->_request results];
      firstObject = [results11 firstObject];
      [firstObject setExecutionNanoseconds:executionNanoseconds2 + executionNanoseconds + executionNanoseconds3 + executionNanoseconds4 + executionNanoseconds5];
    }

    else
    {
      v132 = atomic_load(&self->_canceled);
      if (v132)
      {
LABEL_77:
        v3 = -128;
LABEL_92:

LABEL_93:
LABEL_94:

LABEL_95:
        goto LABEL_40;
      }

      [(MADVIFaceRequest *)self->_request setError:v7];
    }

    [v144 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIFaceTask complete", buf, 2u);
    }

    v3 = 0;
    goto LABEL_92;
  }

  return -128;
}

@end