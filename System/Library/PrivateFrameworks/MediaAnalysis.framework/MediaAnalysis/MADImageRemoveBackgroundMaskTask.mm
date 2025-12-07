@interface MADImageRemoveBackgroundMaskTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (MADImageRemoveBackgroundMaskTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
@end

@implementation MADImageRemoveBackgroundMaskTask

- (MADImageRemoveBackgroundMaskTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = MADImageRemoveBackgroundMaskTask;
  v11 = [(MADImageRemoveBackgroundTask *)&v14 initWithSignpostPayload:payload];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, request);
    objc_storeStrong(&v12->_imageAsset, asset);
  }

  return v12;
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
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask] Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (int)run
{
  v155[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    identifier = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMask][%@] running...", &buf, 0xCu);
  }

  v4 = _os_feature_enabled_impl();
  if (v4)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      identifier2 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RemoveBackgroundMask][%@] Resetting cached mask state", &buf, 0xCu);
    }

    v9 = +[MADImageRemoveBackgroundResource sharedResource];
    [v9 setCachedMaskState:0];

    v128 = 0;
    v127 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v128 orientation:&v127])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier3 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Image loading failed", &buf, 0xCu);
      }

      request = self->_request;
      v12 = MEMORY[0x1E696ABC0];
      v154 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v155[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:&v154 count:1];
      v15 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
      [(MADRemoveBackgroundMaskRequest *)request setError:v15];

      goto LABEL_99;
    }

    if ([(MADImageRemoveBackgroundTask *)self canceled])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier4 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identifier4;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", &buf, 0xCu);
      }

      v17 = self->_request;
      v18 = MEMORY[0x1E696ABC0];
      v152 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
      v153 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      v21 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v20];
      [(MADRemoveBackgroundMaskRequest *)v17 setError:v21];

      goto LABEL_99;
    }

    if ((v4 & 1) == 0)
    {
      isSensitive = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
      v23 = isSensitive == 0;

      if (v23)
      {
        v24 = [(MADImageRemoveBackgroundTask *)self computeSensitivityOfPixelBuffer:v128];
        if ([v24 BOOLValue])
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            identifier5 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = identifier5;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Skipping for ineligible image", &buf, 0xCu);
          }

          [(MADRemoveBackgroundMaskRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];

          goto LABEL_99;
        }
      }
    }

    if ([(MADImageRemoveBackgroundTask *)self canceled])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier6 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identifier6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", &buf, 0xCu);
      }

      v27 = self->_request;
      v28 = MEMORY[0x1E696ABC0];
      v150 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
      v151 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
      v31 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v30];
      [(MADRemoveBackgroundMaskRequest *)v27 setError:v31];

      goto LABEL_99;
    }

    location = 0;
    buf = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v149 = _Q0;
    imageType = [(MADRemoveBackgroundMaskRequest *)self->_request imageType];
    if (imageType && (-[MADRemoveBackgroundMaskRequest imageType](self->_request, "imageType"), v9 = objc_claimAutoreleasedReturnValue(), [v9 integerValue] == 1))
    {
    }

    else
    {
      isScreenshot = [(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot];
      v39 = isScreenshot;
      if (imageType)
      {

        if (!v39)
        {
          goto LABEL_50;
        }
      }

      else if (!isScreenshot)
      {
        goto LABEL_50;
      }
    }

    v40 = objc_autoreleasePoolPush();
    v41 = [(MADImageRemoveBackgroundTask *)self computeRegionOfInterest:&buf pixelBuffer:v128 orientation:v127 error:&location];
    if (!v41)
    {
      v42 = self->_request;
      if (location)
      {
        [(MADRemoveBackgroundMaskRequest *)v42 setError:?];
      }

      else
      {
        [(MADRemoveBackgroundMaskRequest *)v42 setResults:MEMORY[0x1E695E0F0]];
      }
    }

    objc_autoreleasePoolPop(v40);
    if (!v41)
    {
LABEL_98:

LABEL_99:
      CF<__CVBuffer *>::~CF(&v128);
      return 0;
    }

LABEL_50:
    v123 = +[MADImageRemoveBackgroundResource sharedResource];
    [v123 setMaskOnly:1];
    v43 = +[VCPMADResourceManager sharedManager];
    v122 = [v43 activateResource:v123];

    v45 = VCPSignPostLog(v44);
    v46 = os_signpost_id_generate(v45);

    v48 = VCPSignPostLog(v47);
    v49 = v48;
    if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      signpostPayload = [(MADImageRemoveBackgroundTask *)self signpostPayload];
      *v129 = 138412290;
      v130 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v46, "VNImageRequestHandler_init", "%@", v129, 0xCu);
    }

    v51 = objc_alloc(MEMORY[0x1E69845B8]);
    v52 = v128;
    v53 = v127;
    session = [v123 session];
    v121 = [v51 initWithCVPixelBuffer:v52 orientation:v53 options:MEMORY[0x1E695E0F8] session:session];

    v56 = VCPSignPostLog(v55);
    v57 = v56;
    if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      signpostPayload2 = [(MADImageRemoveBackgroundTask *)self signpostPayload];
      *v129 = 138412290;
      v130 = signpostPayload2;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v57, OS_SIGNPOST_INTERVAL_END, v46, "VNImageRequestHandler_init", "%@", v129, 0xCu);
    }

    if ([(MADImageRemoveBackgroundTask *)self canceled])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier7 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        *v129 = 138412290;
        v130 = identifier7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", v129, 0xCu);
      }

      v60 = self->_request;
      v61 = MEMORY[0x1E696ABC0];
      v146 = *MEMORY[0x1E696A578];
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
      v147 = v62;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
      v64 = [v61 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v63];
      [(MADRemoveBackgroundMaskRequest *)v60 setError:v64];

      [v122 reset];
    }

    else
    {
      v149 = [(MADImageRemoveBackgroundTask *)self generateMaskWithRequestHandler:v121 regionOfInterest:&location error:buf, v149];
      v66 = v149;
      if (v149)
      {
        v119 = CVPixelBufferGetIOSurface([v149 instanceMask]);
        if (v119)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          allInstances = [v66 allInstances];
          firstIndex = [allInstances firstIndex];

          if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_64:
            v69 = self->_request;
            v70 = objc_alloc(MEMORY[0x1E69AE3A0]);
            allInstances2 = [v66 allInstances];
            v72 = buf;
            v73 = v149;
            [v66 confidence];
            v75 = v74;
            animatedStickerScore = [(VCPMADServiceImageAsset *)self->_imageAsset animatedStickerScore];
            LODWORD(v77) = v75;
            v78 = [v70 initWithInstances:allInstances2 instanceMaskSurface:v119 perInstanceMaskSurfaces:dictionary sourceRegionOfInterest:animatedStickerScore confidence:v72 animatedStickerScore:{v73, v77}];
            v137 = v78;
            v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
            [(MADRemoveBackgroundMaskRequest *)v69 setResults:v79];

            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              identifier8 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
              v82 = v81;
              [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
              v84 = v83;
              orientation = [(VCPMADServiceImageAsset *)self->_imageAsset orientation];
              *v129 = 138413058;
              v130 = identifier8;
              v131 = 1024;
              v132 = v82;
              v133 = 1024;
              v134 = v84;
              v135 = 1024;
              v136 = orientation;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Caching image handler (resolution %dx%d, orientation %d)", v129, 0x1Eu);
            }

            v86 = [MADRemoveBackgroundCachedMaskState alloc];
            v87 = [(MADRemoveBackgroundCachedMaskState *)v86 initWithImageAsset:self->_imageAsset instanceMaskObservation:v66 regionOfInterest:*&buf, *(&buf + 1), *&v149, *(&v149 + 1)];
            [v123 setCachedMaskState:v87];

            [v122 reset];
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              identifier9 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              *v129 = 138412290;
              v130 = identifier9;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMask][%@] complete", v129, 0xCu);
            }
          }

          else
          {
            while (![(MADImageRemoveBackgroundTask *)self canceled])
            {
              v95 = [MEMORY[0x1E696AC90] indexSetWithIndex:firstIndex];
              obj = location;
              v96 = [v66 createMaskForInstances:v95 error:&obj];
              objc_storeStrong(&location, obj);
              pixelBuffer = v96;

              if (!pixelBuffer)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  identifier10 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
                  *v129 = 138412546;
                  v130 = identifier10;
                  v131 = 1024;
                  v132 = firstIndex;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Failed to obtain mask %d from Vision", v129, 0x12u);
                }

                v107 = self->_request;
                v108 = MEMORY[0x1E696ABC0];
                v140 = *MEMORY[0x1E696A578];
                v109 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
                v141 = v109;
                v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
                v111 = [v108 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v110];
                [(MADRemoveBackgroundMaskRequest *)v107 setError:v111];

                goto LABEL_94;
              }

              v97 = CVPixelBufferGetIOSurface(pixelBuffer);
              if (!v97)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  identifier11 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
                  *v129 = 138412546;
                  v130 = identifier11;
                  v131 = 1024;
                  v132 = firstIndex;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Failed to obtain mask %d from Vision", v129, 0x12u);
                }

                v113 = self->_request;
                v114 = MEMORY[0x1E696ABC0];
                v138 = *MEMORY[0x1E696A578];
                v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
                v139 = v115;
                v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                v117 = [v114 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v116];
                [(MADRemoveBackgroundMaskRequest *)v113 setError:v117];

LABEL_94:
                CF<__CVBuffer *>::~CF(&pixelBuffer);
                goto LABEL_95;
              }

              v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:firstIndex];
              [dictionary setObject:v97 forKeyedSubscript:v98];

              allInstances3 = [v66 allInstances];
              firstIndex = [allInstances3 indexGreaterThanIndex:firstIndex];

              CF<__CVBuffer *>::~CF(&pixelBuffer);
              if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              identifier12 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              *v129 = 138412290;
              v130 = identifier12;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", v129, 0xCu);
            }

            v101 = self->_request;
            v102 = MEMORY[0x1E696ABC0];
            v142 = *MEMORY[0x1E696A578];
            v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
            v143 = v103;
            v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
            v105 = [v102 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v104];
            [(MADRemoveBackgroundMaskRequest *)v101 setError:v105];

            [v122 reset];
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            identifier13 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
            *v129 = 138412290;
            v130 = identifier13;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Failed to obtain instance mask from Vision", v129, 0xCu);
          }

          v91 = self->_request;
          v92 = MEMORY[0x1E696ABC0];
          v144 = *MEMORY[0x1E696A578];
          dictionary = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
          v145 = dictionary;
          v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
          v94 = [v92 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v93];
          [(MADRemoveBackgroundMaskRequest *)v91 setError:v94];
        }

LABEL_95:
      }

      else
      {
        v89 = self->_request;
        if (location)
        {
          [(MADRemoveBackgroundMaskRequest *)v89 setError:?];
        }

        else
        {
          [(MADRemoveBackgroundMaskRequest *)v89 setResults:MEMORY[0x1E695E0F0]];
        }
      }
    }

    goto LABEL_98;
  }

  isSensitive2 = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
  v6 = isSensitive2;
  if (!isSensitive2 || ![isSensitive2 BOOLValue])
  {

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    identifier14 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier14;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Skipping for ineligible image", &buf, 0xCu);
  }

  [(MADRemoveBackgroundMaskRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];

  return 0;
}

@end