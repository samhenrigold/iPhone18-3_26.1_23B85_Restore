@interface VCPMADMLEnhancementTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADMLEnhancementTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id).cxx_construct;
- (int)convertPixelFormat:(__CVBuffer *)format;
- (int)createModel;
- (int)run;
@end

@implementation VCPMADMLEnhancementTask

- (VCPMADMLEnhancementTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v15.receiver = self;
  v15.super_class = VCPMADMLEnhancementTask;
  v12 = [(VCPMADMLEnhancementTask *)&v15 init];
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

- (int)convertPixelFormat:(__CVBuffer *)format
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = *format;
  cf = 0;
  pixelBuffer = v5;
  p_pixelBufferPool = &self->_pixelBufferPool;
  if (self->_pixelBufferPool.value_)
  {
    goto LABEL_2;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Pixel buffer format is not 32BGRA; copying", v18, 2u);
  }

  v12 = *MEMORY[0x1E6966130];
  v22[0] = &unk_1F49BDDF8;
  v13 = *MEMORY[0x1E6966208];
  v21[0] = v12;
  v21[1] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(pixelBuffer)];
  v22[1] = v14;
  v21[2] = *MEMORY[0x1E69660B8];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(pixelBuffer)];
  v21[3] = *MEMORY[0x1E69660D8];
  v22[2] = v15;
  v22[3] = MEMORY[0x1E695E0F8];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

  if (p_pixelBufferPool->value_)
  {
    CFRelease(p_pixelBufferPool->value_);
    p_pixelBufferPool->value_ = 0;
  }

  v10 = CVPixelBufferPoolCreate(0, 0, v16, &p_pixelBufferPool->value_);

  if (!v10)
  {
LABEL_2:
    value = self->_transferSession.value_;
    p_transferSession = &self->_transferSession;
    if (value || (v10 = VTPixelTransferSessionCreate(0, &p_transferSession->value_)) == 0)
    {
      v9 = p_pixelBufferPool->value_;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 = CVPixelBufferPoolCreatePixelBuffer(0, v9, &cf);
      if (!v10)
      {
        v10 = VTPixelTransferSessionTransferImage(p_transferSession->value_, pixelBuffer, cf);
        if (!v10)
        {
          v11 = cf;
          if (cf)
          {
            v11 = CFRetain(cf);
          }

          v10 = 0;
          *format = v11;
        }
      }
    }
  }

  CF<__CVBuffer *>::~CF(&cf);
  CF<__CVBuffer *>::~CF(&pixelBuffer);
  return v10;
}

- (int)createModel
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = +[VCPMobileAssetManager sharedManager];
  v4 = [v3 retrieveAssetLocalURL:6];
  if (v4)
  {
    uuid = [(MADMLEnhancementRequest *)self->_request uuid];

    if (!uuid)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] UUID not set, creating universal model", buf, 2u);
      }

      v14 = v4;
      goto LABEL_21;
    }

    v6 = [MEMORY[0x1E695DFF8] URLWithString:@"index.json" relativeToURL:v4];
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6];
    if (v7)
    {
      v34 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v34];
      v9 = v34;
      if (v9)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v36 = v9;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "[VCPMADMLEnhancementTask] Serializing index.json error %@";
        v12 = 12;
LABEL_42:
        _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
LABEL_43:
        v13 = -18;
LABEL_44:

        goto LABEL_45;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "[VCPMADMLEnhancementTask] Parsing index.json error, not a dictionary";
        v12 = 2;
        goto LABEL_42;
      }

      v33 = v8;
      uuid2 = [(MADMLEnhancementRequest *)self->_request uuid];
      v8 = [v8 objectForKey:uuid2];

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v8 objectForKey:@"name"];
          modelName = self->_modelName;
          self->_modelName = v20;

          v22 = [v8 objectForKey:@"ver"];
          modelVersion = self->_modelVersion;
          self->_modelVersion = v22;

          v14 = [v3 retrieveAssetLocalURL:self->_modelName assetVersion:self->_modelVersion petWatchDog:0 cancelBlock:0];

          if (v14)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v24 = self->_modelName;
              v32 = self->_modelVersion;
              uuid3 = [(MADMLEnhancementRequest *)self->_request uuid];
              *buf = 138412802;
              v36 = v24;
              v37 = 2112;
              v38 = v32;
              v39 = 2112;
              v40 = uuid3;
              v26 = uuid3;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] Creating %@ (%@) for %@", buf, 0x20u);
            }

LABEL_20:
LABEL_21:
            v15 = [MEMORY[0x1E695DFF8] URLWithString:@"pissarro.espresso.net" relativeToURL:v14];
            v16 = [[CNNMLEnhancerEspresso alloc] initWithModelFile:v15];
            enhancer = self->_enhancer;
            p_enhancer = &self->_enhancer;
            *p_enhancer = v16;

            if (*p_enhancer)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v36 = v15;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] Model created from %@", buf, 0xCu);
              }

              v13 = 0;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Unable to allocate enhancer", buf, 2u);
              }

              v13 = -108;
            }

            goto LABEL_45;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v30 = self->_modelName;
            v29 = self->_modelVersion;
            uuid4 = [(MADMLEnhancementRequest *)self->_request uuid];
            *buf = 138412802;
            v36 = v30;
            v37 = 2112;
            v38 = v29;
            v39 = 2112;
            v40 = uuid4;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Unable to retrieve %@ (%@) for %@", buf, 0x20u);
          }

          v4 = 0;
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Parsing index.json error, model info is not a dictionary", buf, 2u);
        }

        v13 = -18;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          uuid5 = [(MADMLEnhancementRequest *)self->_request uuid];
          *buf = 138412290;
          v36 = uuid5;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] No model registered for target %@", buf, 0xCu);
        }

        v13 = -4;
      }

      v9 = v33;
      goto LABEL_44;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPMADMLEnhancementTask] Cannot read index.json, using universal model", buf, 2u);
    }

    v14 = v4;
    goto LABEL_20;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPMADMLEnhancementTask] Unable to retrieve Pissarro index or universal model", buf, 2u);
  }

  v13 = -18;
LABEL_45:

  return v13;
}

- (int)run
{
  v92[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  mach_timebase_info(&info);
  v5 = mach_absolute_time();
  v6 = mach_absolute_time();
  v7 = VCPSignPostLog(v6);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLEnhancementModelCreation", "", &buf, 2u);
  }

  createModel = [(VCPMADMLEnhancementTask *)self createModel];
  v13 = createModel;
  if (!createModel)
  {
    v14 = VCPSignPostLog(createModel);
    v15 = v14;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(buf.data) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADMLEnhancementModelCreation", "", &buf, 2u);
    }

    if (v6)
    {
      v16 = mach_absolute_time();
      VCPPerformance_LogMeasurement("VCPMADMLEnhancementModelCreation", v16 - v6);
    }

    v17 = mach_absolute_time();
    numer = info.numer;
    LODWORD(v2) = info.denom;
    if ([(MADMLEnhancementRequest *)self->_request modelPreparationOnly])
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPMADMLEnhancementTask] Finished model preparation", &buf, 2u);
      }

LABEL_19:
      v13 = 0;
      goto LABEL_20;
    }

    pixelBuffer = 0;
    v74 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&pixelBuffer orientation:&v74])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLEnhancementTask image loading failed", &buf, 2u);
      }

      request = self->_request;
      v20 = MEMORY[0x1E696ABC0];
      v91 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v92[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
      v23 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];
      [(MADMLEnhancementRequest *)request setError:v23];

      goto LABEL_19;
    }

    if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 1111970369)
    {
      [(VCPMADMLEnhancementTask *)self convertPixelFormat:&pixelBuffer];
    }

    p_outputPixelBufferPool = &self->_outputPixelBufferPool;
    if (self->_outputPixelBufferPool.value_)
    {
      goto LABEL_24;
    }

    v43 = *MEMORY[0x1E6966208];
    v89[0] = *MEMORY[0x1E6966130];
    v89[1] = v43;
    v90[0] = &unk_1F49BDDF8;
    v90[1] = &unk_1F49BDE10;
    v44 = *MEMORY[0x1E69660D8];
    v89[2] = *MEMORY[0x1E69660B8];
    v89[3] = v44;
    v90[2] = &unk_1F49BDE28;
    v90[3] = MEMORY[0x1E695E0F8];
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];
    if (p_outputPixelBufferPool->value_)
    {
      CFRelease(p_outputPixelBufferPool->value_);
      p_outputPixelBufferPool->value_ = 0;
    }

    v13 = CVPixelBufferPoolCreate(0, 0, v45, &self->_outputPixelBufferPool.value_);

    if (!v13)
    {
LABEL_24:
      v64 = mach_absolute_time();
      v65 = mach_absolute_time();
      v26 = VCPSignPostLog(v65);
      spid = os_signpost_id_generate(v26);

      v28 = VCPSignPostLog(v27);
      v29 = v28;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        modelName = self->_modelName;
        modelVersion = self->_modelVersion;
        uuid = [(MADMLEnhancementRequest *)self->_request uuid];
        LODWORD(buf.data) = 138412802;
        *(&buf.data + 4) = modelName;
        WORD2(buf.height) = 2112;
        *(&buf.height + 6) = modelVersion;
        HIWORD(buf.width) = 2112;
        buf.rowBytes = uuid;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADMLEnhancementModelExecution", "%@-%@ (%@)", &buf, 0x20u);
      }

      if (CVPixelBufferGetWidth(pixelBuffer) == 3840 && CVPixelBufferGetHeight(pixelBuffer) == 2160)
      {
        v33 = 0;
        goto LABEL_30;
      }

      v71 = 0;
      v72 = pixelBuffer;
      unlockFlags = 1;
      if (pixelBuffer)
      {
        v13 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
        v71 = v13;
        if (!v13 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = v72, WORD2(buf.height) = 1024, *(&buf.height + 6) = v13, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v13 = v71) == 0))
        {
          buf.data = CVPixelBufferGetBaseAddress(pixelBuffer);
          buf.height = CVPixelBufferGetHeight(pixelBuffer);
          buf.width = CVPixelBufferGetWidth(pixelBuffer);
          buf.rowBytes = CVPixelBufferGetBytesPerRow(pixelBuffer);
          pixelBufferOut = 0;
          v36 = CVPixelBufferPoolCreatePixelBuffer(0, p_outputPixelBufferPool->value_, &pixelBufferOut);
          if (v36)
          {
            v13 = 0;
            v42 = 16;
            goto LABEL_57;
          }

          CVPixelBufferLock::CVPixelBufferLock(v69, pixelBufferOut, 0);
          v13 = v69[0];
          if (v69[0])
          {
            v36 = 0;
          }

          else
          {
            dest.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
            dest.height = CVPixelBufferGetHeight(pixelBufferOut);
            dest.width = CVPixelBufferGetWidth(pixelBufferOut);
            dest.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
            v36 = vImageScale_ARGB8888(&buf, &dest, 0, 0x20u);
            if (v36)
            {
              v13 = 0;
              v42 = 16;
              goto LABEL_56;
            }

            v13 = CVPixelBufferLock::Unlock(v69);
            if (!v13)
            {
              v13 = CVPixelBufferLock::Unlock(&v71);
              if (!v13)
              {
                CVPixelBufferRelease(pixelBuffer);
                v42 = 0;
                v13 = 0;
                pixelBuffer = pixelBufferOut;
                goto LABEL_56;
              }
            }
          }

          v42 = 1;
LABEL_56:
          CVPixelBufferLock::~CVPixelBufferLock(v69);
LABEL_57:
          v35 = v72;
          if (v72)
          {
            if (!v71)
            {
              v35 = CVPixelBufferUnlockBaseAddress(v72, unlockFlags);
              if (v35)
              {
                v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                if (v35)
                {
                  [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
                }
              }
            }
          }

          if (v42)
          {
            if (v42 != 16)
            {
              goto LABEL_20;
            }

            goto LABEL_64;
          }

          v33 = v36;
LABEL_30:
          value = p_outputPixelBufferPool->value_;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v35 = CVPixelBufferPoolCreatePixelBuffer(0, value, &cf);
          v36 = v35;
          if (!v35)
          {
            [(CNNMLEnhancerEspresso *)self->_enhancer inferenceWithPixelBuffer:pixelBuffer toDestinationPixelBuffer:cf];
            v37 = CVPixelBufferGetIOSurface(cf);
            if (!v37 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf.data) = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLEnhancementTask failed creating output IOSurface", &buf, 2u);
            }

            v38 = self->_request;
            v39 = [objc_alloc(MEMORY[0x1E69AE350]) initWithSurface:v37];
            v87 = v39;
            v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
            [(MADMLEnhancementRequest *)v38 setResults:v40];

            v41 = v37;
            v36 = v33;
            goto LABEL_65;
          }

LABEL_64:
          v41 = 0;
LABEL_65:
          v46 = VCPSignPostLog(v35);
          v47 = v46;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
          {
            LOWORD(buf.data) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADMLEnhancementModelExecution", "", &buf, 2u);
          }

          if (v65)
          {
            v48 = mach_absolute_time();
            VCPPerformance_LogMeasurement("VCPMADMLEnhancementModelExecution", v48 - v65);
          }

          v49 = mach_absolute_time();
          v50 = info.numer;
          LODWORD(v3) = info.denom;
          v80[0] = @"QoS";
          v51 = qos_class_self();
          spida = VCPMAQoSDescription(v51);
          v81[0] = spida;
          v81[1] = @"AerialWallpaperEnhancement";
          v80[1] = @"RequestType";
          v80[2] = @"AssetType";
          v82 = vbslq_s8(vceqzq_s64(*&self->_modelName), vdupq_n_s64(@"Unknown"), *&self->_modelName);
          v80[3] = @"AssetSubtype";
          v80[4] = @"Client";
          uuid2 = [(MADMLEnhancementRequest *)self->_request uuid];
          if (uuid2)
          {
            uuid3 = [(MADMLEnhancementRequest *)self->_request uuid];
          }

          else
          {
            uuid3 = @"Unknown";
          }

          v83 = uuid3;
          v80[5] = @"QueuedTime";
          v54 = [MEMORY[0x1E696AD98] numberWithDouble:((v17 - v5) * numer) / v2 / 1000000.0];
          v84 = v54;
          v80[6] = @"ProcessingTime";
          v55 = [MEMORY[0x1E696AD98] numberWithDouble:((v49 - v64) * v50) / v3 / 1000000.0];
          v85 = v55;
          v80[7] = @"Error";
          v56 = [MEMORY[0x1E696AD98] numberWithInt:-v36];
          v86 = v56;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:8];

          if (uuid2)
          {
          }

          v58 = +[VCPMADCoreAnalyticsManager sharedManager];
          [v58 sendEvent:@"com.apple.mediaanalysisd.service.request" withAnalytics:v57];

          if (v36)
          {
            v59 = self->_request;
            v60 = MEMORY[0x1E696ABC0];
            v78 = *MEMORY[0x1E696A578];
            v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image pre-processing failed"];
            v79 = v61;
            v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v63 = [v60 errorWithDomain:*MEMORY[0x1E696A768] code:v36 userInfo:v62];
            [(MADMLEnhancementRequest *)v59 setError:v63];
          }

          else if (pixelBuffer)
          {
            CVPixelBufferRelease(pixelBuffer);
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v13 = -50;
      }
    }
  }

LABEL_20:
  CF<__CVBuffer *>::~CF(&cf);
  return v13;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end