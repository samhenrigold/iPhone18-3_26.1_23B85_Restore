@interface VCPMADImageCaptionTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADImageCaptionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
@end

@implementation VCPMADImageCaptionTask

- (VCPMADImageCaptionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v16.receiver = self;
  v16.super_class = VCPMADImageCaptionTask;
  v12 = [(VCPMADImageCaptionTask *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    imageCaptionModel = v13->_imageCaptionModel;
    v13->_imageCaptionModel = 0;
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

- (int)run
{
  v84 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageCaptionTask running...", buf, 2u);
  }

  v3 = atomic_load(&self->_canceled);
  if (v3)
  {
    return -128;
  }

  modelType = [(MADImageCaptionRequest *)self->_request modelType];
  safetyType = [(MADImageCaptionRequest *)self->_request safetyType];
  v7 = VCPSignPostLog(safetyType);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v83 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADImageCaptionTask_modelPrepare", "%@", buf, 0xCu);
  }

  v13 = [VCPMADImageCaptionResource sharedResourceForModelType:modelType safetyType:safetyType];
  v14 = +[VCPMADResourceManager sharedManager];
  v15 = [v14 activateResource:v13];

  imageCaptionAnalyzer = [v13 imageCaptionAnalyzer];
  LODWORD(v14) = imageCaptionAnalyzer == 0;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPImageCaptionAnalyzer init fail", buf, 2u);
    }

    request = self->_request;
    v28 = MEMORY[0x1E696ABC0];
    v80 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPImageCaptionAnalyzer init fail"];
    v81 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v31 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v30];
    [(MADImageCaptionRequest *)request setError:v31];

    [v15 reset];
  }

  else
  {
    v18 = VCPSignPostLog(v17);
    v19 = v18;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v20 = self->_signpostPayload;
      *buf = 138412290;
      v83 = v20;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADImageCaptionTask_modelPrepare", "%@", buf, 0xCu);
    }

    v74 = 0;
    v73 = 0;
    v21 = [(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v74 orientation:&v73];
    if (v21)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageCaptionTask image loading failed", buf, 2u);
      }

      v22 = self->_request;
      v23 = MEMORY[0x1E696ABC0];
      v78 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v79 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v26 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v25];
      [(MADImageCaptionRequest *)v22 setError:v26];

      [v15 reset];
    }

    else
    {
      v32 = VCPSignPostLog(v21);
      v33 = os_signpost_id_generate(v32);

      v35 = VCPSignPostLog(v34);
      v36 = v35;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        v37 = self->_signpostPayload;
        *buf = 138412290;
        v83 = v37;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v33, "VCPMADImageCaptionTask_requestCaption", "%@", buf, 0xCu);
      }

      imageCaptionAnalyzer2 = [v13 imageCaptionAnalyzer];
      v71[4] = self;
      v72 = 0;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __29__VCPMADImageCaptionTask_run__block_invoke;
      v71[3] = &unk_1E834C078;
      v39 = [imageCaptionAnalyzer2 analyzePixelBuffer:v74 flags:0 results:&v72 cancel:v71];
      v40 = v72;

      if (v39)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageCaptionTask image caption analysis failed", buf, 2u);
        }

        v42 = self->_request;
        v43 = MEMORY[0x1E696ABC0];
        v76 = *MEMORY[0x1E696A578];
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageCaptionTask image caption analysis failed"];
        v77 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v46 = [v43 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v45];
        [(MADImageCaptionRequest *)v42 setError:v46];

        [v15 reset];
      }

      else
      {
        v47 = VCPSignPostLog(v41);
        v48 = v47;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
        {
          v49 = self->_signpostPayload;
          *buf = 138412290;
          v83 = v49;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v48, OS_SIGNPOST_INTERVAL_END, v33, "VCPMADImageCaptionTask_requestCaption", "%@", buf, 0xCu);
        }

        v50 = &MediaAnalysisImageCaptionResultsKey;
        if ((modelType - 1) >= 2)
        {
          v50 = &MediaAnalysisMiCaImageCaptionResultsKey;
        }

        v51 = [v40 objectForKeyedSubscript:*v50];
        if ([v51 count])
        {
          v52 = [v51 objectAtIndexedSubscript:0];
          v53 = [v52 objectForKeyedSubscript:@"attributes"];
          v54 = v53 == 0;

          if (!v54)
          {
            v55 = [v51 objectAtIndexedSubscript:0];
            v56 = [v55 objectForKeyedSubscript:@"attributes"];

            v68 = [v56 objectForKeyedSubscript:@"imageCaptionText"];
            v70 = [v56 objectForKeyedSubscript:@"imageCaptionConfidence"];
            v69 = [v56 objectForKeyedSubscript:@"imageCaptionUnsafeContent"];
            v57 = [v56 objectForKeyedSubscript:@"imageCaptionLowConfidence"];
            v58 = [v56 objectForKeyedSubscript:@"classificationIdentifiers"];
            v59 = objc_alloc(MEMORY[0x1E69AE2F8]);
            [v70 floatValue];
            v61 = v60;
            bOOLValue = [v69 BOOLValue];
            bOOLValue2 = [v57 BOOLValue];
            LODWORD(v64) = v61;
            v65 = [v59 initWithCaption:v68 score:bOOLValue containsUnsafeContent:bOOLValue2 isLowConfidence:v58 classificationIdentifiers:v64];
            v66 = self->_request;
            v75 = v65;
            v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
            [(MADImageCaptionRequest *)v66 setResults:v67];
          }
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageCaptionTask complete", buf, 2u);
        }

        [v15 reset];
      }
    }

    CF<__CVBuffer *>::~CF(&v74);
  }

  return 0;
}

@end