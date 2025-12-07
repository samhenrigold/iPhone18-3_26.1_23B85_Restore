@interface PixelBufferConverter
- (PixelBufferConverter)init;
- (__CVBuffer)convertPixelBuffer:(__CVBuffer *)buffer toFormat:(unsigned int)format;
- (void)dealloc;
@end

@implementation PixelBufferConverter

- (PixelBufferConverter)init
{
  v5.receiver = self;
  v5.super_class = PixelBufferConverter;
  v2 = [(PixelBufferConverter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_pixelBufferPool = 0;
    VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &v2->_pixelTransferSession);
  }

  return v3;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CVPixelBufferPoolRelease(pixelBufferPool);
    self->_pixelBufferPool = 0;
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  v5.receiver = self;
  v5.super_class = PixelBufferConverter;
  [(PixelBufferConverter *)&v5 dealloc];
}

- (__CVBuffer)convertPixelBuffer:(__CVBuffer *)buffer toFormat:(unsigned int)format
{
  v40 = *MEMORY[0x1E69E9840];
  if (buffer)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v9 = ARRecreatePixelBufferPoolOnConfigurationChanges(&self->_pixelBufferPool, format, Width, Height);
  if (v9)
  {
    if (ARShouldUseLogTypeError_onceToken_47 != -1)
    {
      [PixelBufferConverter convertPixelBuffer:toFormat:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_47;
    v11 = _ARLogGeneral_42(v9);
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v37 = v14;
        v38 = 2048;
        selfCopy6 = self;
        v15 = "%{public}@ <%p>: Could not create pixel buffer pool.";
LABEL_16:
        v20 = v12;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_28:
        _os_log_impl(&dword_1C241C000, v20, v21, v15, buf, 0x16u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v22 = objc_opt_class();
    v14 = NSStringFromClass(v22);
    *buf = 138543618;
    v37 = v14;
    v38 = 2048;
    selfCopy6 = self;
    v15 = "Error: %{public}@ <%p>: Could not create pixel buffer pool.";
    goto LABEL_27;
  }

  pixelBufferOut = 0;
  v16 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_pixelBufferPool, &pixelBufferOut);
  if (v16)
  {
    if (ARShouldUseLogTypeError_onceToken_47 != -1)
    {
      [PixelBufferConverter convertPixelBuffer:toFormat:];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_47;
    v18 = _ARLogGeneral_42(v16);
    v12 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v14 = NSStringFromClass(v19);
        *buf = 138543618;
        v37 = v14;
        v38 = 2048;
        selfCopy6 = self;
        v15 = "%{public}@ <%p>: Could not create pixel buffer from pool.";
        goto LABEL_16;
      }

LABEL_29:

      return 0;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v32 = objc_opt_class();
    v14 = NSStringFromClass(v32);
    *buf = 138543618;
    v37 = v14;
    v38 = 2048;
    selfCopy6 = self;
    v15 = "Error: %{public}@ <%p>: Could not create pixel buffer from pool.";
LABEL_27:
    v20 = v12;
    v21 = OS_LOG_TYPE_INFO;
    goto LABEL_28;
  }

  v23 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, buffer, pixelBufferOut);
  if (v23)
  {
    if (ARShouldUseLogTypeError_onceToken_47 != -1)
    {
      [PixelBufferConverter convertPixelBuffer:toFormat:];
    }

    v24 = ARShouldUseLogTypeError_internalOSVersion_47;
    v25 = _ARLogGeneral_42(v23);
    v26 = v25;
    if (v24 == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138543618;
        v37 = v28;
        v38 = 2048;
        selfCopy6 = self;
        v29 = "%{public}@ <%p>: Could not convert pixel buffer";
        v30 = v26;
        v31 = OS_LOG_TYPE_ERROR;
LABEL_34:
        _os_log_impl(&dword_1C241C000, v30, v31, v29, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v28 = NSStringFromClass(v34);
      *buf = 138543618;
      v37 = v28;
      v38 = 2048;
      selfCopy6 = self;
      v29 = "Error: %{public}@ <%p>: Could not convert pixel buffer";
      v30 = v26;
      v31 = OS_LOG_TYPE_INFO;
      goto LABEL_34;
    }

    CVPixelBufferRelease(pixelBufferOut);
    return 0;
  }

  return pixelBufferOut;
}

@end