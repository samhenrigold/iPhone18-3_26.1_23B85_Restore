@interface VCPMADImageEmbeddingTask
+ (id)embeddingShapeForType:(int64_t)type;
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
+ (int64_t)bridgeEmbeddingTypeForRequest:(int64_t)request;
- (VCPMADImageEmbeddingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
@end

@implementation VCPMADImageEmbeddingTask

- (VCPMADImageEmbeddingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v15.receiver = self;
  v15.super_class = VCPMADImageEmbeddingTask;
  v12 = [(VCPMADImageEmbeddingTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
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

+ (id)embeddingShapeForType:(int64_t)type
{
  v7 = *MEMORY[0x1E69E9840];
  if (type < 5)
  {
    return qword_1E834D2A8[type];
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", &v5, 0xCu);
  }

  return 0;
}

+ (int64_t)bridgeEmbeddingTypeForRequest:(int64_t)request
{
  requestCopy = request;
  v7 = *MEMORY[0x1E69E9840];
  if (request >= 5)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = requestCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", &v5, 0xCu);
    }

    return 0;
  }

  return requestCopy;
}

- (int)run
{
  v89 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageEmbeddingTask running...", buf, 2u);
  }

  v3 = atomic_load(&self->_canceled);
  if (v3)
  {
    return -128;
  }

  if ([(MADImageEmbeddingRequest *)self->_request embeddingRequestType]< 0 && [(MADImageEmbeddingRequest *)self->_request embeddingRequestType]>= 5)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      embeddingRequestType = [(MADImageEmbeddingRequest *)self->_request embeddingRequestType];
      *buf = 134217984;
      v88 = embeddingRequestType;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", buf, 0xCu);
    }

    request = self->_request;
    v7 = MEMORY[0x1E696ABC0];
    v85 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageEmbeddingTask - MADEmbeddingRequestType %lu not supported", -[MADImageEmbeddingRequest embeddingRequestType](request, "embeddingRequestType")];
    v86 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v10 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
    [(MADImageEmbeddingRequest *)request setError:v10];

    goto LABEL_63;
  }

  v8 = [VCPMADImageEmbeddingResource sharedResourceForRevision:[(MADImageEmbeddingRequest *)self->_request version]];
  v11 = +[VCPMADResourceManager sharedManager];
  v9 = [v11 activateResource:v8];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    version = [(MADImageEmbeddingRequest *)self->_request version];
    *buf = 67109120;
    LODWORD(v88) = version;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageEmbeddingTask with embedding version %d", buf, 8u);
  }

  imageBackbone = [v8 imageBackbone];
  v14 = imageBackbone == 0;

  if (!v14)
  {
    v71 = 0;
    v70 = 0;
    v15 = [(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v71 orientation:&v70];
    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageEmbeddingTask image loading failed", buf, 2u);
      }

      v16 = self->_request;
      v17 = MEMORY[0x1E696ABC0];
      v81 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v82 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v20 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
      [(MADImageEmbeddingRequest *)v16 setError:v20];
      goto LABEL_62;
    }

    v26 = VCPSignPostLog(v15);
    v27 = os_signpost_id_generate(v26);

    v29 = VCPSignPostLog(v28);
    v30 = v29;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v88 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v27, "VCPMADImageEmbeddingTask_requestEmbedding", "%@", buf, 0xCu);
    }

    bypassNormalizaton = [(MADImageEmbeddingRequest *)self->_request bypassNormalizaton];
    imageBackbone2 = [v8 imageBackbone];
    [imageBackbone2 setBypassNormalizaton:bypassNormalizaton];

    v34 = [objc_opt_class() bridgeEmbeddingTypeForRequest:{-[MADImageEmbeddingRequest embeddingRequestType](self->_request, "embeddingRequestType")}];
    imageBackbone3 = [v8 imageBackbone];
    [imageBackbone3 setBridgeEmbeddingType:v34];

    imageBackbone4 = [v8 imageBackbone];
    v69 = 0;
    LODWORD(v34) = [imageBackbone4 analyzePixelBuffer:v71 flags:0 results:&v69 cancel:&__block_literal_global_18];
    v18 = v69;

    if (v34)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageEmbeddingTask image embedding analysis failed", buf, 2u);
      }

      v38 = self->_request;
      v39 = MEMORY[0x1E696ABC0];
      v79 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageEmbeddingTask image embedding analysis failed"];
      v80 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      v40 = [v39 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
      [(MADImageEmbeddingRequest *)v38 setError:v40];
      goto LABEL_61;
    }

    v41 = VCPSignPostLog(v37);
    v42 = v41;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      v43 = self->_signpostPayload;
      *buf = 138412290;
      v88 = v43;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, v27, "VCPMADImageEmbeddingTask_requestEmbedding", "%@", buf, 0xCu);
    }

    v19 = [v18 objectForKeyedSubscript:@"ImageEmbeddingResults"];
    if ([v19 count])
    {
      v44 = [v19 objectAtIndexedSubscript:0];
      v45 = [v44 objectForKeyedSubscript:@"attributes"];
      v20 = [v45 objectForKeyedSubscript:@"embeddings"];

      v46 = [v19 objectAtIndexedSubscript:0];
      v47 = [v46 objectForKeyedSubscript:@"attributes"];
      v40 = [v47 objectForKeyedSubscript:@"bridgeEmbeddings"];

      v48 = [v19 objectAtIndexedSubscript:0];
      v49 = [v48 objectForKeyedSubscript:@"attributes"];
      v68 = [v49 objectForKeyedSubscript:@"embeddingVersion"];

      v50 = v68;
      if (!v68 || (v51 = [v68 intValue], v50 = v68, -[MADImageEmbeddingRequest version](self->_request, "version") != v51))
      {
        if ([v50 intValue] != 9 || -[MADImageEmbeddingRequest version](self->_request, "version") != 8)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageEmbeddingTask unexpected image embedding version", buf, 2u);
          }

          v58 = self->_request;
          v59 = MEMORY[0x1E696ABC0];
          v77 = *MEMORY[0x1E696A578];
          v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPMADImageEmbeddingTask unexpected image embedding version. Expect %d, got %d", -[MADImageEmbeddingRequest version](v58, "version"), objc_msgSend(v68, "intValue")];
          v78 = v67;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v60 = [v59 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v66];
          [(MADImageEmbeddingRequest *)v58 setError:v60];
          goto LABEL_59;
        }

        v50 = v68;
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageEmbeddingTask please use MADUnifiedEmbeddingVersion_LuckCheerMD7v2", buf, 2u);
        }
      }
    }

    else
    {
      v40 = 0;
      v20 = 0;
    }

    if ([(MADImageEmbeddingRequest *)self->_request embeddingRequestType])
    {
      v52 = v40;
    }

    else
    {
      v52 = v20;
    }

    v53 = v52;
    v68 = v53;
    v67 = [objc_opt_class() embeddingShapeForType:{-[MADImageEmbeddingRequest embeddingRequestType](self->_request, "embeddingRequestType")}];
    if (v53)
    {
      v66 = [objc_alloc(MEMORY[0x1E69AE318]) initWithVersion:-[MADImageEmbeddingRequest version](self->_request data:"version") type:v53 shape:{1, v67}];
      embedding = [v66 embedding];
      v55 = embedding == 0;

      v56 = self->_request;
      if (!v55)
      {
        v72 = v66;
        v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
        [(MADImageEmbeddingRequest *)v56 setResults:v57];

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageEmbeddingTask complete", buf, 2u);
        }

        [v9 reset];
        goto LABEL_60;
      }

      v64 = MEMORY[0x1E696ABC0];
      v73 = *MEMORY[0x1E696A578];
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate MADImageEmbeddingResult"];
      v74 = v60;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v65 = [v64 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v63];
      [(MADImageEmbeddingRequest *)v56 setError:v65];
    }

    else
    {
      v61 = self->_request;
      v62 = MEMORY[0x1E696ABC0];
      v75 = *MEMORY[0x1E696A578];
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate embedding data"];
      v76 = v66;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v63 = [v62 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v60];
      [(MADImageEmbeddingRequest *)v61 setError:v63];
    }

LABEL_59:
LABEL_60:

LABEL_61:
LABEL_62:

    CF<__CVBuffer *>::~CF(&v71);
    goto LABEL_63;
  }

  v21 = self->_request;
  v22 = MEMORY[0x1E696ABC0];
  v83 = *MEMORY[0x1E696A578];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create image backbone"];
  v84 = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v25 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v24];
  [(MADImageEmbeddingRequest *)v21 setError:v25];

LABEL_63:
  return 0;
}

@end