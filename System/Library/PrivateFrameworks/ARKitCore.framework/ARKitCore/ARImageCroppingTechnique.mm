@interface ARImageCroppingTechnique
- (ARImageCroppingTechnique)initWithCroppedImageSize:(CGSize)size centerCropToTargetResolution:(BOOL)resolution;
- (BOOL)isEqual:(id)equal;
- (CGSize)croppedImageSize;
- (id)processData:(id)data;
- (void)dealloc;
@end

@implementation ARImageCroppingTechnique

- (ARImageCroppingTechnique)initWithCroppedImageSize:(CGSize)size centerCropToTargetResolution:(BOOL)resolution
{
  height = size.height;
  width = size.width;
  v38 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = ARImageCroppingTechnique;
  v7 = [(ARTechnique *)&v29 init];
  v8 = v7;
  if (v7)
  {
    v9 = (v7 + 112);
    *(v7 + 14) = width;
    *(v7 + 15) = height;
    v7[104] = resolution;
    v10 = VTPixelTransferSessionCreate(0, v7 + 7);
    if (v10)
    {
      v11 = v10;
      v12 = v8[7];
      if (v12)
      {
        CFRelease(v12);
      }

      v8[7] = 0;
      if (ARShouldUseLogTypeError_onceToken_8 != -1)
      {
        [ARImageCroppingTechnique initWithCroppedImageSize:centerCropToTargetResolution:];
      }

      v13 = ARShouldUseLogTypeError_internalOSVersion_8;
      v14 = _ARLogTechnique_3(v12);
      v15 = v14;
      if (v13 == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138543874;
          v31 = v17;
          v32 = 2048;
          v33 = v8;
          v34 = 1024;
          LODWORD(v35) = v11;
          v18 = "%{public}@ <%p>: Unable to create pixel transfer session for image cropping: %i";
          v19 = v15;
          v20 = OS_LOG_TYPE_ERROR;
LABEL_16:
          _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v17 = NSStringFromClass(v27);
        *buf = 138543874;
        v31 = v17;
        v32 = 2048;
        v33 = v8;
        v34 = 1024;
        LODWORD(v35) = v11;
        v18 = "Error: %{public}@ <%p>: Unable to create pixel transfer session for image cropping: %i";
        v19 = v15;
        v20 = OS_LOG_TYPE_INFO;
        goto LABEL_16;
      }

      v26 = 0;
      goto LABEL_18;
    }

    v21 = _ARLogTechnique_3(v10);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = *v9;
      v25 = v8[15];
      *buf = 138544130;
      v31 = v23;
      v32 = 2048;
      v33 = v8;
      v34 = 2048;
      v35 = v24;
      v36 = 2048;
      v37 = v25;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Initialized with crop image size: %f, %f)", buf, 0x2Au);
    }
  }

  v26 = v8;
LABEL_18:

  return v26;
}

- (void)dealloc
{
  vtPixelTransferSession = self->_vtPixelTransferSession;
  if (vtPixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtPixelTransferSession);
    v4 = self->_vtPixelTransferSession;
    if (v4)
    {
      CFRelease(v4);
    }

    self->_vtPixelTransferSession = 0;
  }

  croppedPixelBufferPool = self->_croppedPixelBufferPool;
  if (croppedPixelBufferPool)
  {
    CVPixelBufferPoolRelease(croppedPixelBufferPool);
    self->_croppedPixelBufferPool = 0;
  }

  v6.receiver = self;
  v6.super_class = ARImageCroppingTechnique;
  [(ARImageCroppingTechnique *)&v6 dealloc];
}

- (id)processData:(id)data
{
  v111 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = dataCopy;
  v7 = v6;
  v8 = v6;
  if (isKindOfClass)
  {
    [(ARImageData *)v6 imageResolution];
    v11 = v9;
    v12 = v10;
    width = self->_croppedImageSize.width;
    height = self->_croppedImageSize.height;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      goto LABEL_50;
    }

    if (width == v9 && height == v10)
    {
      goto LABEL_50;
    }

    pixelBufferOut = 0;
    croppedPixelBufferPool = self->_croppedPixelBufferPool;
    if (!croppedPixelBufferPool)
    {
      p_cropRect = &self->_cropRect;
      if (self->_isCropToTargetResolution)
      {
        v29 = ARGetCroppedRegionCenterCrop(v9, v10, width);
      }

      else
      {
        v57 = width / height;
        if (width / height >= v11 / v10)
        {
          v59 = v10 - v11 / v57;
          v30 = v59 * 0.5;
          v32 = v12 - v59;
          v29 = 0.0;
          v31 = v11;
        }

        else
        {
          v58 = v11 - v10 * v57;
          v29 = v58 * 0.5;
          v31 = v11 - v58;
          v30 = 0.0;
          v32 = v12;
        }
      }

      p_cropRect->origin.x = v29;
      self->_cropRect.origin.y = v30;
      self->_cropRect.size.width = v31;
      self->_cropRect.size.height = v32;
      IsEmpty = CGRectIsEmpty(*&v29);
      if (IsEmpty || ((v61 = self->_cropRect.size.width, v62 = self->_cropRect.size.height, v61 == v11) ? (v63 = v62 == v12) : (v63 = 0), v63))
      {
        if (ARShouldUseLogTypeError_onceToken_8 != -1)
        {
          [ARImageCroppingTechnique processData:];
        }

        v72 = ARShouldUseLogTypeError_internalOSVersion_8;
        v73 = _ARLogTechnique_3(IsEmpty);
        v22 = v73;
        if (v72 == 1)
        {
          if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v74 = objc_opt_class();
          v75 = NSStringFromClass(v74);
          *buf = 138543618;
          v106 = v75;
          v107 = 2048;
          selfCopy8 = self;
          v76 = "%{public}@ <%p>: The cropped image size must be less than source image size and not zero";
          v77 = v22;
          v78 = OS_LOG_TYPE_ERROR;
        }

        else
        {
          if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            goto LABEL_49;
          }

          v79 = objc_opt_class();
          v75 = NSStringFromClass(v79);
          *buf = 138543618;
          v106 = v75;
          v107 = 2048;
          selfCopy8 = self;
          v76 = "Error: %{public}@ <%p>: The cropped image size must be less than source image size and not zero";
          v77 = v22;
          v78 = OS_LOG_TYPE_INFO;
        }

        _os_log_impl(&dword_1C241C000, v77, v78, v76, buf, 0x16u);

        goto LABEL_49;
      }

      x = p_cropRect->origin.x;
      y = self->_cropRect.origin.y;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v61 - 2));
      v67 = VTSessionSetProperty(self->_vtPixelTransferSession, *MEMORY[0x1E6983E40], DictionaryRepresentation);
      v68 = v67;
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }

      if (v68)
      {
        if (ARShouldUseLogTypeError_onceToken_8 != -1)
        {
          [ARImageCroppingTechnique processData:];
        }

        v69 = ARShouldUseLogTypeError_internalOSVersion_8;
        v70 = _ARLogTechnique_3(v67);
        v22 = v70;
        if (v69 == 1)
        {
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v71 = objc_opt_class();
          v24 = NSStringFromClass(v71);
          *buf = 138543874;
          v106 = v24;
          v107 = 2048;
          selfCopy8 = self;
          v109 = 1024;
          v110 = v68;
          v25 = "%{public}@ <%p>: Unable to initialize pixel transfer session for image cropping: %i";
          goto LABEL_17;
        }

        if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          goto LABEL_49;
        }

        v89 = objc_opt_class();
        v24 = NSStringFromClass(v89);
        *buf = 138543874;
        v106 = v24;
        v107 = 2048;
        selfCopy8 = self;
        v109 = 1024;
        v110 = v68;
        v25 = "Error: %{public}@ <%p>: Unable to initialize pixel transfer session for image cropping: %i";
        goto LABEL_23;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType([(ARImageData *)v7 pixelBuffer]);
      v84 = ARRecreatePixelBufferPoolOnConfigurationChanges(&self->_croppedPixelBufferPool, PixelFormatType, self->_cropRect.size.width, self->_cropRect.size.height);
      if (v84)
      {
        v85 = v84;
        if (ARShouldUseLogTypeError_onceToken_8 != -1)
        {
          [ARImageCroppingTechnique processData:];
        }

        v86 = ARShouldUseLogTypeError_internalOSVersion_8;
        v87 = _ARLogTechnique_3(v84);
        v22 = v87;
        if (v86 == 1)
        {
          if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v88 = objc_opt_class();
          v24 = NSStringFromClass(v88);
          *buf = 138543874;
          v106 = v24;
          v107 = 2048;
          selfCopy8 = self;
          v109 = 1024;
          v110 = v85;
          v25 = "%{public}@ <%p>: Unable to create pixel buffer pool for cropping: %i";
          goto LABEL_17;
        }

        if (!os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          goto LABEL_49;
        }

        v90 = objc_opt_class();
        v24 = NSStringFromClass(v90);
        *buf = 138543874;
        v106 = v24;
        v107 = 2048;
        selfCopy8 = self;
        v109 = 1024;
        v110 = v85;
        v25 = "Error: %{public}@ <%p>: Unable to create pixel buffer pool for cropping: %i";
        goto LABEL_23;
      }

      croppedPixelBufferPool = self->_croppedPixelBufferPool;
    }

    v18 = CVPixelBufferPoolCreatePixelBuffer(0, croppedPixelBufferPool, &pixelBufferOut);
    if (!v18)
    {
      vtPixelTransferSession = self->_vtPixelTransferSession;
      pixelBuffer = [(ARImageData *)v7 pixelBuffer];
      VTPixelTransferSessionTransferImage(vtPixelTransferSession, pixelBuffer, pixelBufferOut);
      v8 = [[ARModifiedImageData alloc] initWithImageData:v7];
      [(ARImageData *)v8 setPixelBuffer:pixelBufferOut];
      [(ARImageData *)v7 cameraIntrinsics];
      v95 = v36;
      v98 = v35;
      v93 = v37;
      [(ARImageData *)v7 imageResolution];
      v39 = v38;
      v41 = v40;
      [(ARImageData *)v8 imageResolution];
      *&v44 = ARAdjustIntrinsicsForViewportSize(v98, v95, v93, v39, v41, v42, v43);
      [(ARImageData *)v8 setCameraIntrinsics:v44];
      v45 = &self->_cropRect;
      v99 = v45->origin.x;
      [(ARImageData *)v7 imageResolution];
      v94 = v46;
      v47.f64[0] = v99;
      v47.f64[1] = v45->origin.y;
      v100 = v47;
      [(ARImageData *)v7 imageResolution];
      v92 = v48;
      v96 = v45->size.width;
      [(ARImageData *)v7 imageResolution];
      v91 = v49;
      v50.f64[0] = v96;
      v50.f64[1] = v45->size.height;
      v97 = v50;
      [(ARImageData *)v7 imageResolution];
      v51.f64[0] = v94;
      v51.f64[1] = v92;
      v52.f64[0] = v91;
      v52.f64[1] = v53;
      v103 = @"croppedRect";
      v101[0] = vdivq_f64(v100, v51);
      v101[1] = vdivq_f64(v97, v52);
      v54 = [MEMORY[0x1E696B098] valueWithBytes:v101 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v104 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      [(ARModifiedImageData *)v8 setMetaData:v55];

      CVPixelBufferRelease(pixelBufferOut);
LABEL_51:

      goto LABEL_52;
    }

    v19 = v18;
    if (ARShouldUseLogTypeError_onceToken_8 != -1)
    {
      [ARImageCroppingTechnique initWithCroppedImageSize:centerCropToTargetResolution:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_8;
    v21 = _ARLogTechnique_3(v18);
    v22 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543874;
        v106 = v24;
        v107 = 2048;
        selfCopy8 = self;
        v109 = 1024;
        v110 = v19;
        v25 = "%{public}@ <%p>: Unable to create pixel buffer for cropping: %i";
LABEL_17:
        v26 = v22;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_24:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0x1Cu);
      }

LABEL_49:

      delegate = [(ARTechnique *)self delegate];
      v81 = ARErrorWithCodeAndUserInfo(151, 0);
      [delegate technique:self didFailWithError:v81];

LABEL_50:
      v8 = v7;
      goto LABEL_51;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_49;
    }

    v56 = objc_opt_class();
    v24 = NSStringFromClass(v56);
    *buf = 138543874;
    v106 = v24;
    v107 = 2048;
    selfCopy8 = self;
    v109 = 1024;
    v110 = v19;
    v25 = "Error: %{public}@ <%p>: Unable to create pixel buffer for cropping: %i";
LABEL_23:
    v26 = v22;
    v27 = OS_LOG_TYPE_INFO;
    goto LABEL_24;
  }

LABEL_52:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = ARImageCroppingTechnique;
  if ([(ARTechnique *)&v16 isEqual:equalCopy])
  {
    v5 = equalCopy;
    [(ARImageCroppingTechnique *)self croppedImageSize];
    v7 = v6;
    v9 = v8;
    [v5 croppedImageSize];
    v11 = v10;
    v13 = v12;

    v14 = v9 == v13 && v7 == v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGSize)croppedImageSize
{
  width = self->_croppedImageSize.width;
  height = self->_croppedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end