@interface VCPMADMLScalingTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADMLScalingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id).cxx_construct;
- (int)convertPixelFormat:(__CVBuffer *)format;
- (int)run;
@end

@implementation VCPMADMLScalingTask

- (VCPMADMLScalingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v15.receiver = self;
  v15.super_class = VCPMADMLScalingTask;
  v12 = [(VCPMADMLScalingTask *)&v15 init];
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
  v22[0] = &unk_1F49BC190;
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

- (int)run
{
  v124[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  scaledImageWidth = [(MADMLScalingRequest *)self->_request scaledImageWidth];
  scaledImageHeight = [(MADMLScalingRequest *)self->_request scaledImageHeight];
  v5 = VCPSignPostLog(scaledImageHeight);
  v6 = os_signpost_id_generate(v5);

  v8 = VCPSignPostLog(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPMADMLScalingTask", "", &buf, 2u);
  }

  texture = 0;
  v99 = 0;
  if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&texture orientation:&v99])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to load pixel buffer", &buf, 2u);
    }

    request = self->_request;
    v11 = MEMORY[0x1E696ABC0];
    v123 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load pixel buffer"];
    v124[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:&v123 count:1];
    v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
    [(MADMLScalingRequest *)request setError:v14];

    goto LABEL_9;
  }

  if (CVPixelBufferGetPixelFormatType(texture) != 1111970369 && [(VCPMADMLScalingTask *)self convertPixelFormat:&texture])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to convert pixel format", &buf, 2u);
    }

    v17 = self->_request;
    v18 = MEMORY[0x1E696ABC0];
    v121 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to convert pixel format"];
    v122 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v21 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
    [(MADMLScalingRequest *)v17 setError:v21];

    goto LABEL_9;
  }

  Width = CVPixelBufferGetWidth(texture);
  Height = CVPixelBufferGetHeight(texture);
  v24 = scaledImageWidth;
  v94 = scaledImageHeight;
  p_outputPixelBufferPool = &self->_outputPixelBufferPool;
  v26 = self->_outputPixelBufferPool.value_;
  if (!v26)
  {
    value.data = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v33 = Mutable;
    theDict[0] = Mutable;
    if (value.data && Mutable)
    {
      valuePtr[0] = v24;
      v34 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      buf.data = v34;
      if (v34)
      {
        CFDictionarySetValue(v33, *MEMORY[0x1E6966208], v34);
      }

      CF<__CVBuffer *>::~CF(&buf.data);
      v35 = theDict[0];
      valuePtr[0] = v94;
      v36 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      buf.data = v36;
      if (v36)
      {
        CFDictionarySetValue(v35, *MEMORY[0x1E69660B8], v36);
      }

      CF<__CVBuffer *>::~CF(&buf.data);
      v37 = theDict[0];
      valuePtr[0] = 1111970369;
      v38 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      buf.data = v38;
      if (v38)
      {
        CFDictionarySetValue(v37, *MEMORY[0x1E6966130], v38);
      }

      CF<__CVBuffer *>::~CF(&buf.data);
      CFDictionarySetValue(theDict[0], *MEMORY[0x1E69660D8], value.data);
      v39 = theDict[0];
      if (p_outputPixelBufferPool->value_)
      {
        CFRelease(p_outputPixelBufferPool->value_);
        p_outputPixelBufferPool->value_ = 0;
      }

      if (!CVPixelBufferPoolCreate(0, 0, v39, &self->_outputPixelBufferPool.value_))
      {
        CF<__CVBuffer *>::~CF(theDict);
        CF<__CVBuffer *>::~CF(&value.data);
        v26 = p_outputPixelBufferPool->value_;
        goto LABEL_20;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to create pixel buffer pool", &buf, 2u);
      }

      v40 = self->_request;
      v41 = MEMORY[0x1E696ABC0];
      v117 = *MEMORY[0x1E696A578];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create pixel buffer pool"];
      v118 = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v44 = [v41 errorWithDomain:*MEMORY[0x1E696A768] code:-108 userInfo:v43];
      [(MADMLScalingRequest *)v40 setError:v44];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to create pixel buffer pool", &buf, 2u);
      }

      v49 = self->_request;
      v50 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create pixel buffer pool"];
      v120 = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v44 = [v50 errorWithDomain:*MEMORY[0x1E696A768] code:-108 userInfo:v43];
      [(MADMLScalingRequest *)v49 setError:v44];
    }

    CF<__CVBuffer *>::~CF(theDict);
    CF<__CVBuffer *>::~CF(&value.data);
    goto LABEL_9;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (CVPixelBufferPoolCreatePixelBuffer(0, v26, &cf))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to create pixel buffer", &buf, 2u);
    }

    v27 = self->_request;
    v28 = MEMORY[0x1E696ABC0];
    v115 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create pixel buffer"];
    v116 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v31 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-108 userInfo:v30];
    [(MADMLScalingRequest *)v27 setError:v31];

    goto LABEL_9;
  }

  if (v24 < Width || v94 < Height)
  {
    if (!+[VCPMADMLScalingTask getDownsamplingMode])
    {
      v57 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:texture];
      v113 = @"inputScale";
      *&v58 = v24 / Width;
      v59 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
      v114 = v59;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v61 = [v57 imageByApplyingFilter:@"CILanczosScaleTransform" withInputParameters:v60];

      context = [MEMORY[0x1E695F620] context];
      [context render:v61 toCVPixelBuffer:cf];

      goto LABEL_86;
    }

    if (+[VCPMADMLScalingTask getDownsamplingMode]== 1)
    {
      v51 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:texture];
      v111[0] = @"inputScale";
      *&v52 = v24 / Width;
      v53 = [MEMORY[0x1E696AD98] numberWithFloat:v52];
      v112[0] = v53;
      v112[1] = &unk_1F49BC1A8;
      v111[1] = @"inputB";
      v111[2] = @"inputC";
      v112[2] = &unk_1F49BB5A8;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:3];
      v55 = [v51 imageByApplyingFilter:@"CIBicubicScaleTransform" withInputParameters:v54];

      context2 = [MEMORY[0x1E695F620] context];
      [context2 render:v55 toCVPixelBuffer:cf];

LABEL_86:
      CVBufferPropagateAttachments(texture, cf);
      goto LABEL_87;
    }

    if (+[VCPMADMLScalingTask getDownsamplingMode]!= 2)
    {
      goto LABEL_86;
    }

    CVPixelBufferLock::CVPixelBufferLock(theDict, texture, 1uLL);
    if (!LODWORD(theDict[0]))
    {
      buf.data = CVPixelBufferGetBaseAddress(texture);
      buf.height = CVPixelBufferGetHeight(texture);
      buf.width = CVPixelBufferGetWidth(texture);
      buf.rowBytes = CVPixelBufferGetBytesPerRow(texture);
      CVPixelBufferLock::CVPixelBufferLock(valuePtr, cf, 0);
      if (!valuePtr[0])
      {
        value.data = CVPixelBufferGetBaseAddress(cf);
        value.height = CVPixelBufferGetHeight(cf);
        value.width = CVPixelBufferGetWidth(cf);
        value.rowBytes = CVPixelBufferGetBytesPerRow(cf);
        vImageScale_ARGB8888(&buf, &value, 0, 0);
        if (!CVPixelBufferLock::Unlock(theDict) && !CVPixelBufferLock::Unlock(valuePtr))
        {
          CVPixelBufferLock::~CVPixelBufferLock(valuePtr);
          CVPixelBufferLock::~CVPixelBufferLock(theDict);
          goto LABEL_86;
        }
      }

      CVPixelBufferLock::~CVPixelBufferLock(valuePtr);
    }

    CVPixelBufferLock::~CVPixelBufferLock(theDict);
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (![(MADMLScalingRequest *)self->_request scalingModelIndex])
  {
    width = [MEMORY[0x1E696AEC0] stringWithFormat:@"out_res_%dx%d", v24, v94];
    height = [[CNNMLScalerEspresso alloc] initWithConfig:width modelIndex:[(MADMLScalingRequest *)self->_request scalingModelIndex] scalingFactor:(v24 / Width)];
    v48 = height;
    if (!height)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to initialize model", &buf, 2u);
      }

      v69 = self->_request;
      v70 = MEMORY[0x1E696ABC0];
      v109 = *MEMORY[0x1E696A578];
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize model"];
      v110 = v71;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v73 = [v70 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v72];
      [(MADMLScalingRequest *)v69 setError:v73];

      goto LABEL_9;
    }

LABEL_59:
    v63 = [(CNNMLScalerEspresso *)height inferenceWithPixelBuffer:texture toDestinationPixelBuffer:cf];
    goto LABEL_60;
  }

  if ([(MADMLScalingRequest *)self->_request scalingModelIndex]!= 1)
  {
    goto LABEL_87;
  }

  width = [MEMORY[0x1E696AEC0] stringWithFormat:@"main_input_tensor_1_1_4_%d_%d_", Height, Width];
  v46 = (v24 / Width);
  height = [[CNNMLScalerEspressoV2 alloc] initWithConfig:width modelIndex:[(MADMLScalingRequest *)self->_request scalingModelIndex] inputSize:v46 scalingFactor:Width, Height];
  v48 = height;
  if (height)
  {
    goto LABEL_59;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.data) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to initialize E5 model", &buf, 2u);
  }

  v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out_res_%dx%d", v24, v94];
  v75 = [[CNNMLScalerEspresso alloc] initWithConfig:v74 modelIndex:[(MADMLScalingRequest *)self->_request scalingModelIndex] scalingFactor:v46];
  v76 = v75;
  if (!v75)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADMLScalingTask: Failed to initialize model", &buf, 2u);
    }

    v77 = self->_request;
    v78 = MEMORY[0x1E696ABC0];
    v107 = *MEMORY[0x1E696A578];
    v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize model"];
    v108 = v79;
    v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v81 = [v78 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v80];
    [(MADMLScalingRequest *)v77 setError:v81];

    goto LABEL_9;
  }

  v63 = [(CNNMLScalerEspresso *)v75 inferenceWithPixelBuffer:texture toDestinationPixelBuffer:cf];

LABEL_60:
  if (v63)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask: Failed to inference with model", &buf, 2u);
    }

    v64 = self->_request;
    v65 = MEMORY[0x1E696ABC0];
    v105 = *MEMORY[0x1E696A578];
    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to inference with model"];
    v106 = v66;
    v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v68 = [v65 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v67];
    [(MADMLScalingRequest *)v64 setError:v68];

    goto LABEL_9;
  }

LABEL_87:
  v82 = CVPixelBufferGetIOSurface(cf);
  if (!v82)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageCaptionTask failed creating output IOSurface", &buf, 2u);
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADMLScalingTask failed creating output IOSurface", &buf, 2u);
    }

    v89 = self->_request;
    v90 = MEMORY[0x1E696ABC0];
    v103 = *MEMORY[0x1E696A578];
    v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating output IOSurface failed"];
    v104 = v91;
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v93 = [v90 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v92];
    [(MADMLScalingRequest *)v89 setError:v93];

    goto LABEL_9;
  }

  v83 = self->_request;
  v84 = [objc_alloc(MEMORY[0x1E69AE360]) initWithSurface:v82];
  v102 = v84;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  [(MADMLScalingRequest *)v83 setResults:v85];

  v87 = VCPSignPostLog(v86);
  v88 = v87;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v88, OS_SIGNPOST_INTERVAL_END, v6, "VCPMADMLScalingTask", "", &buf, 2u);
  }

  v15 = v82;
LABEL_10:
  if (texture)
  {
    CVPixelBufferRelease(texture);
  }

  CF<__CVBuffer *>::~CF(&cf);
  return 0;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end