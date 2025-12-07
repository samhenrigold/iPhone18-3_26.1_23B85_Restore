@interface ARMLImageTransform
- (ARMLImageTransform)initWithScaledSize:(CGSize)size useOptimalMSRCoefficients:(BOOL)coefficients useExplicitBGRAConversion:(BOOL)conversion;
- (id)_applyFinalTransformToScaledImage:(id)image rotation:(int64_t)rotation finalResultSize:(CGSize)size originalImageData:(id)data;
- (id)_preScaleImageData:(id)data;
- (id)fastPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect rotation:(int64_t)rotation rotationOfResultTensor:(int64_t)tensor;
- (void)_calculatePreScalingPassesForInputResolution:(CGSize)resolution;
- (void)_prepareSessionAndPoolForRotation:(int64_t)rotation;
- (void)dealloc;
@end

@implementation ARMLImageTransform

- (ARMLImageTransform)initWithScaledSize:(CGSize)size useOptimalMSRCoefficients:(BOOL)coefficients useExplicitBGRAConversion:(BOOL)conversion
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = ARMLImageTransform;
  v9 = [(ARMLImageTransform *)&v13 init];
  v10 = v9;
  if (v9)
  {
    imageScalePassDescriptions = v9->_imageScalePassDescriptions;
    v9->_imageScalePassDescriptions = 0;

    v10->_inputSize = *MEMORY[0x1E695F060];
    v10->_scaledSize.width = width;
    v10->_scaledSize.height = height;
    v10->_useOptimalMSRCoefficients = coefficients;
    v10->_useExplicitBGRAConversion = conversion;
  }

  return v10;
}

- (void)dealloc
{
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    VTPixelRotationSessionInvalidate(rotationSession);
    CFRelease(self->_rotationSession);
  }

  scalingSession = self->_scalingSession;
  if (scalingSession)
  {
    VTPixelTransferSessionInvalidate(scalingSession);
    CFRelease(self->_scalingSession);
  }

  conversionSession = self->_conversionSession;
  if (conversionSession)
  {
    VTPixelTransferSessionInvalidate(conversionSession);
    CFRelease(self->_conversionSession);
  }

  CVPixelBufferPoolRelease(self->_resultBufferPool);
  CVPixelBufferPoolRelease(self->_scaledBufferPool);
  CVPixelBufferPoolRelease(self->_conversionBufferPool);
  v6.receiver = self;
  v6.super_class = ARMLImageTransform;
  [(ARMLImageTransform *)&v6 dealloc];
}

- (id)fastPassDownscaledResultDataFromImageData:(id)data croppedRect:(CGRect)rect rotation:(int64_t)rotation rotationOfResultTensor:(int64_t)tensor
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v51[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_msgSend_timestamp(dataCopy);
  cameraType = [dataCopy cameraType];
  v15 = *MEMORY[0x1E6986948];
  [cameraType isEqualToString:*MEMORY[0x1E6986948]];
  [dataCopy imageResolution];
  [dataCopy imageResolution];
  kdebug_trace();

  [dataCopy cameraIntrinsics];
  [dataCopy cameraIntrinsics];
  [dataCopy cameraIntrinsics];
  kdebug_trace();
  [dataCopy imageResolution];
  [(ARMLImageTransform *)self _calculatePreScalingPassesForInputResolution:?];
  v16 = [(ARMLImageTransform *)self _preScaleImageData:dataCopy];
  pixelBuffer = [dataCopy pixelBuffer];
  if (pixelBuffer)
  {
    v18 = pixelBuffer;
    v19 = CVPixelBufferGetWidth(pixelBuffer);
    v20 = CVPixelBufferGetHeight(v18);
  }

  else
  {
    v19 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  v21 = self->_scaledSize.width;
  v22 = self->_scaledSize.height;
  v23 = v21 / v19;
  v24 = v23;
  v25 = v20 * v24;
  v26 = v25;
  if (rotation == 90 || rotation == -90)
  {
    v27 = v21;
    v28 = (v19 * v24);
  }

  else
  {
    v27 = self->_scaledSize.height;
    v22 = self->_scaledSize.width;
    v28 = v25;
    v26 = (v19 * v24);
  }

  v29 = v26;
  v30 = v28;
  objc_msgSend_timestamp(v16);
  cameraType2 = [v16 cameraType];
  [cameraType2 isEqualToString:v15];
  kdebug_trace();

  [v16 imageResolution];
  [v16 imageResolution];
  kdebug_trace();
  v32 = [(ARMLImageTransform *)self _applyFinalTransformToScaledImage:v16 rotation:rotation finalResultSize:dataCopy originalImageData:v22, v27];
  [dataCopy cameraIntrinsics];
  v46 = v34;
  v47 = v33;
  [dataCopy imageResolution];
  [v32 setCameraIntrinsics:{ARAdjustIntrincisForOrientation(self->_rotationAngle, v47, v46)}];
  [v32 setMirrored:0];
  [v32 imageResolution];
  [v32 imageResolution];
  kdebug_trace();
  objc_msgSend_timestamp(v16);
  kdebug_trace();
  [v32 cameraIntrinsics];
  [v32 cameraIntrinsics];
  [v32 cameraIntrinsics];
  kdebug_trace();
  objc_msgSend_timestamp(v32);
  [v32 imageResolution];
  [v32 imageResolution];
  kdebug_trace();
  v50[0] = @"imageDownScalingRotationOfResultTensorKey";
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:tensor];
  v50[1] = @"imageDownScalingRegionOfInterest";
  v51[0] = v35;
  *v48 = v29;
  *&v48[1] = v30;
  v36 = [MEMORY[0x1E696B098] valueWithBytes:v48 objCType:"{CGSize=dd}"];
  v51[1] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

  metaData = [v32 metaData];

  if (metaData)
  {
    metaData2 = [v32 metaData];
    v40 = [metaData2 mutableCopy];

    [v40 addEntriesFromDictionary:v37];
    [v32 setMetaData:v40];
  }

  else
  {
    [v32 setMetaData:v37];
  }

  v41 = -[ARMLImageDownScalingResult initWithPixelBuffer:regionOfInterest:cropRegion:]([ARMLImageDownScalingResult alloc], "initWithPixelBuffer:regionOfInterest:cropRegion:", [v32 pixelBuffer], v29, v30, x, y, width, height);
  v42 = [ARMLImageDownScalingResultData alloc];
  v49 = v41;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  objc_msgSend_timestamp(dataCopy);
  v44 = [(ARMLImageDownScalingResultData *)v42 initWithResultDataArray:v43 timestamp:tensor rotationOfResultTensor:dataCopy originalImageData:?];

  return v44;
}

- (void)_calculatePreScalingPassesForInputResolution:(CGSize)resolution
{
  height = resolution.height;
  width = resolution.width;
  v39 = *MEMORY[0x1E69E9840];
  v5 = self->_inputSize.width == resolution.width;
  if (self->_inputSize.height != resolution.height)
  {
    v5 = 0;
  }

  imageScalePassDescriptions = self->_imageScalePassDescriptions;
  if (imageScalePassDescriptions)
  {
    v7 = !v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (imageScalePassDescriptions != 0 && !v5)
    {
      v9 = kdebug_trace();
      v10 = _ARLogTechnique_6(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v31 = 138543618;
        v32 = v12;
        v33 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Recreating scaling passes", &v31, 0x16u);
      }

      v14 = _ARLogTechnique_6(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = self->_inputSize.width;
        v18 = self->_inputSize.height;
        v31 = 138544130;
        v32 = v16;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2048;
        v36 = v17;
        v37 = 2048;
        v38 = v18;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: was scaling from %.1f x %.1f", &v31, 0x2Au);
      }

      v20 = _ARLogTechnique_6(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v31 = 138544130;
        v32 = v22;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2048;
        v36 = width;
        v37 = 2048;
        v38 = height;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: now scaling from %.1f x %.1f", &v31, 0x2Au);
      }
    }

    self->_inputSize.width = width;
    self->_inputSize.height = height;
    imageScalingTechnique = self->_imageScalingTechnique;
    self->_imageScalingTechnique = 0;

    v24 = [ARImageScalingTechnique scalingPassDescriptionForInputSize:0 scaledSize:self->_inputSize.width conversionPixelFormat:self->_inputSize.height, self->_scaledSize.width, self->_scaledSize.height];
    v25 = self->_imageScalePassDescriptions;
    self->_imageScalePassDescriptions = v24;

    v26 = [(NSArray *)self->_imageScalePassDescriptions count];
    if (v26 >= 2)
    {
      v27 = [(NSArray *)self->_imageScalePassDescriptions objectAtIndexedSubscript:v26 - 2];
      v28 = [ARImageScalingTechnique alloc];
      [v27 size];
      v29 = [(ARImageScalingTechnique *)v28 initWithScaledSize:?];
      v30 = self->_imageScalingTechnique;
      self->_imageScalingTechnique = v29;

      [(ARImageScalingTechnique *)self->_imageScalingTechnique setConversionPixelFormatType:875704422];
    }
  }
}

- (id)_preScaleImageData:(id)data
{
  imageScalingTechnique = self->_imageScalingTechnique;
  dataCopy = data;
  if (imageScalingTechnique)
  {
    v5 = [(ARImageScalingTechnique *)imageScalingTechnique processData:dataCopy];
  }

  else
  {
    v5 = [[ARModifiedImageData alloc] initWithImageData:dataCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_prepareSessionAndPoolForRotation:(int64_t)rotation
{
  if (self->_rotationAngle != rotation)
  {
    self->_rotationAngle = rotation;
    scalingSession = self->_scalingSession;
    if (scalingSession)
    {
      VTPixelTransferSessionInvalidate(scalingSession);
      CFRelease(self->_scalingSession);
      self->_scalingSession = 0;
    }

    rotationSession = self->_rotationSession;
    if (rotationSession)
    {
      VTPixelRotationSessionInvalidate(rotationSession);
      CFRelease(self->_rotationSession);
      self->_rotationSession = 0;
    }

    conversionSession = self->_conversionSession;
    if (conversionSession)
    {
      VTPixelTransferSessionInvalidate(conversionSession);
      CFRelease(self->_conversionSession);
      self->_conversionSession = 0;
    }

    scaledBufferPool = self->_scaledBufferPool;
    if (scaledBufferPool)
    {
      CVPixelBufferPoolRelease(scaledBufferPool);
      self->_scaledBufferPool = 0;
    }

    resultBufferPool = self->_resultBufferPool;
    if (resultBufferPool)
    {
      CVPixelBufferPoolRelease(resultBufferPool);
      self->_resultBufferPool = 0;
    }
  }
}

- (id)_applyFinalTransformToScaledImage:(id)image rotation:(int64_t)rotation finalResultSize:(CGSize)size originalImageData:(id)data
{
  height = size.height;
  width = size.width;
  v121 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  dataCopy = data;
  [(ARMLImageTransform *)self _prepareSessionAndPoolForRotation:rotation];
  pixelBuffer = [imageCopy pixelBuffer];
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v98 = __99__ARMLImageTransform__applyFinalTransformToScaledImage_rotation_finalResultSize_originalImageData___block_invoke;
  v99 = &unk_1E817C4A0;
  v100 = &v111;
  v101 = &v107;
  v102 = &v103;
  if (!self->_useExplicitBGRAConversion || (p_conversionSession = &self->_conversionSession, self->_conversionSession) || !VTPixelTransferSessionCreate(0, &self->_conversionSession))
  {
    useOptimalMSRCoefficients = self->_useOptimalMSRCoefficients;
    if (useOptimalMSRCoefficients)
    {
      p_scalingSession = &self->_scalingSession;
      if (!self->_scalingSession)
      {
        v37 = VTPixelTransferSessionCreate(0, &self->_scalingSession);
        v38 = *p_scalingSession;
        if (v37)
        {
          CFRelease(v38);
          *p_scalingSession = 0;
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v40 = ARShouldUseLogTypeError_internalOSVersion_11;
          v41 = _ARLogTechnique_6(v39);
          v29 = v41;
          if (v40 == 1)
          {
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138543618;
              v116 = v43;
              v117 = 2048;
              selfCopy16 = self;
              _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel transfer session for image downscaling", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v88 = objc_opt_class();
            v89 = NSStringFromClass(v88);
            *buf = 138543618;
            v116 = v89;
            v117 = 2048;
            selfCopy16 = self;
            _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel transfer session for image downscaling", buf, 0x16u);
          }

          goto LABEL_84;
        }

        if (VTSessionSetProperty(v38, *MEMORY[0x1E6983E50], *MEMORY[0x1E695E4D0]))
        {
          CFRelease(*p_scalingSession);
          *p_scalingSession = 0;
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v80 = ARShouldUseLogTypeError_internalOSVersion_11;
          v81 = _ARLogTechnique_6(v79);
          v29 = v81;
          if (v80 == 1)
          {
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v82 = objc_opt_class();
              v83 = NSStringFromClass(v82);
              *buf = 138543618;
              v116 = v83;
              v117 = 2048;
              selfCopy16 = self;
              _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to update pixel transfer session properties", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v94 = objc_opt_class();
            v95 = NSStringFromClass(v94);
            *buf = 138543618;
            v116 = v95;
            v117 = 2048;
            selfCopy16 = self;
            _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to update pixel transfer session properties", buf, 0x16u);
          }

          goto LABEL_84;
        }
      }
    }

    if (self->_rotationAngle || !self->_useOptimalMSRCoefficients)
    {
      p_rotationSession = &self->_rotationSession;
      if (!self->_rotationSession)
      {
        v24 = VTPixelRotationSessionCreate(0, &self->_rotationSession);
        v25 = *p_rotationSession;
        if (v24)
        {
          CFRelease(*p_rotationSession);
          *p_rotationSession = 0;
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v27 = ARShouldUseLogTypeError_internalOSVersion_11;
          v28 = _ARLogTechnique_6(v26);
          v29 = v28;
          if (v27 == 1)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              *buf = 138543874;
              v116 = v31;
              v117 = 2048;
              selfCopy16 = self;
              v119 = 1024;
              v120 = v24;
              _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v77 = objc_opt_class();
            v78 = NSStringFromClass(v77);
            *buf = 138543874;
            v116 = v78;
            v117 = 2048;
            selfCopy16 = self;
            v119 = 1024;
            v120 = v24;
            _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
          }

          goto LABEL_84;
        }

        v70 = kVTRotationFromARRotationAngle(self->_rotationAngle);
        v71 = VTSessionSetProperty(v25, *MEMORY[0x1E6983D98], v70);
        v72 = v71;
        if (v71)
        {
          if (ARShouldUseLogTypeError_onceToken_11 != -1)
          {
            [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
          }

          v73 = ARShouldUseLogTypeError_internalOSVersion_11;
          v74 = _ARLogTechnique_6(v71);
          v29 = v74;
          if (v73 == 1)
          {
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v75 = objc_opt_class();
              v76 = NSStringFromClass(v75);
              *buf = 138543874;
              v116 = v76;
              v117 = 2048;
              selfCopy16 = self;
              v119 = 1024;
              v120 = v72;
              _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            v92 = objc_opt_class();
            v93 = NSStringFromClass(v92);
            *buf = 138543874;
            v116 = v93;
            v117 = 2048;
            selfCopy16 = self;
            v119 = 1024;
            v120 = v72;
            _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d", buf, 0x1Cu);
          }

          goto LABEL_84;
        }
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if (self->_useExplicitBGRAConversion)
    {
      if (pixelBuffer)
      {
        v19 = CVPixelBufferGetWidth(pixelBuffer);
        v20 = CVPixelBufferGetHeight(pixelBuffer);
        v21 = v19;
        v22 = v20;
      }

      else
      {
        v21 = *MEMORY[0x1E695F060];
        v22 = *(MEMORY[0x1E695F060] + 8);
      }

      v44 = ARCreateCVPixelBufferFromPool(&self->_conversionBufferPool, 1111970369, self, @"conversion buffer pool", v21, v22);
      v112[3] = v44;
      v45 = VTPixelTransferSessionTransferImage(self->_conversionSession, pixelBuffer, v44);
      v46 = v45;
      if (v45)
      {
        if (ARShouldUseLogTypeError_onceToken_11 != -1)
        {
          [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
        }

        v47 = ARShouldUseLogTypeError_internalOSVersion_11;
        v48 = _ARLogTechnique_6(v45);
        v29 = v48;
        if (v47 == 1)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            *buf = 138543874;
            v116 = v50;
            v117 = 2048;
            selfCopy16 = self;
            v119 = 1024;
            v120 = v46;
            _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to convert image to BGRA: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v68 = objc_opt_class();
          v69 = NSStringFromClass(v68);
          *buf = 138543874;
          v116 = v69;
          v117 = 2048;
          selfCopy16 = self;
          v119 = 1024;
          v120 = v46;
          _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to convert image to BGRA: %d", buf, 0x1Cu);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v23 = CVPixelBufferRetain(pixelBuffer);
      v112[3] = v23;
    }

    if (useOptimalMSRCoefficients)
    {
      v51 = ARCreateCVPixelBufferFromPool(&self->_scaledBufferPool, 1111970369, self, @"downscale buffer pool", self->_scaledSize.width, self->_scaledSize.height);
      v108[3] = v51;
      v52 = VTPixelTransferSessionTransferImage(self->_scalingSession, v112[3], v51);
      v53 = v52;
      if (v52)
      {
        if (ARShouldUseLogTypeError_onceToken_11 != -1)
        {
          [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
        }

        v54 = ARShouldUseLogTypeError_internalOSVersion_11;
        v55 = _ARLogTechnique_6(v52);
        v29 = v55;
        if (v54 == 1)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = objc_opt_class();
            v57 = NSStringFromClass(v56);
            *buf = 138543874;
            v116 = v57;
            v117 = 2048;
            selfCopy16 = self;
            v119 = 1024;
            v120 = v53;
            _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to scale: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v84 = objc_opt_class();
          v85 = NSStringFromClass(v84);
          *buf = 138543874;
          v116 = v85;
          v117 = 2048;
          selfCopy16 = self;
          v119 = 1024;
          v120 = v53;
          _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to scale: %d", buf, 0x1Cu);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v58 = CVPixelBufferRetain(v112[3]);
      v108[3] = v58;
    }

    if (v17)
    {
      v59 = ARCreateCVPixelBufferFromPool(&self->_resultBufferPool, 1111970369, self, @"rotate pass buffer pool", width, height);
      v104[3] = v59;
      v60 = VTPixelRotationSessionRotateImage(self->_rotationSession, v108[3], v59);
      v61 = v60;
      if (v60)
      {
        if (ARShouldUseLogTypeError_onceToken_11 != -1)
        {
          [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
        }

        v62 = ARShouldUseLogTypeError_internalOSVersion_11;
        v63 = _ARLogTechnique_6(v60);
        v29 = v63;
        if (v62 == 1)
        {
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = objc_opt_class();
            v65 = NSStringFromClass(v64);
            *buf = 138543874;
            v116 = v65;
            v117 = 2048;
            selfCopy16 = self;
            v119 = 1024;
            v120 = v61;
            _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to scale+rotate+convert: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v90 = objc_opt_class();
          v91 = NSStringFromClass(v90);
          *buf = 138543874;
          v116 = v91;
          v117 = 2048;
          selfCopy16 = self;
          v119 = 1024;
          v120 = v61;
          _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to scale+rotate+convert: %d", buf, 0x1Cu);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v66 = CVPixelBufferRetain(v108[3]);
      v104[3] = v66;
    }

    v67 = [[ARModifiedImageData alloc] initWithImageData:dataCopy];
    [(ARImageData *)v67 setPixelBuffer:v104[3]];
    objc_msgSend_timestamp(dataCopy);
    [(ARImageData *)v67 setTimestamp:?];
    goto LABEL_85;
  }

  CFRelease(*p_conversionSession);
  *p_conversionSession = 0;
  if (ARShouldUseLogTypeError_onceToken_11 != -1)
  {
    [ARMLImageTransform _applyFinalTransformToScaledImage:rotation:finalResultSize:originalImageData:];
  }

  v33 = ARShouldUseLogTypeError_internalOSVersion_11;
  v34 = _ARLogTechnique_6(v32);
  v29 = v34;
  if (v33 == 1)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138543618;
      v116 = v36;
      v117 = 2048;
      selfCopy16 = self;
      _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel transfer session for bgra conversion", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v86 = objc_opt_class();
    v87 = NSStringFromClass(v86);
    *buf = 138543618;
    v116 = v87;
    v117 = 2048;
    selfCopy16 = self;
    _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel transfer session for bgra conversion", buf, 0x16u);
  }

LABEL_84:

  v67 = 0;
LABEL_85:
  v98(v97);
  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);

  return v67;
}

void __99__ARMLImageTransform__applyFinalTransformToScaledImage_rotation_finalResultSize_originalImageData___block_invoke(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  v2 = *(*(a1[6] + 8) + 24);

  CVPixelBufferRelease(v2);
}

@end