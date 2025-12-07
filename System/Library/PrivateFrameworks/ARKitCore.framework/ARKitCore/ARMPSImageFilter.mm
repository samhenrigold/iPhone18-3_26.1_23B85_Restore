@interface ARMPSImageFilter
- (ARMPSImageFilter)initWithImageKernel:(id)kernel device:(id)device;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer format:(unint64_t)format;
- (void)dealloc;
@end

@implementation ARMPSImageFilter

- (ARMPSImageFilter)initWithImageKernel:(id)kernel device:(id)device
{
  kernelCopy = kernel;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = ARMPSImageFilter;
  v9 = [(ARMPSImageFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    newCommandQueue = [(MTLDevice *)v10->_device newCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = newCommandQueue;

    objc_storeStrong(&v10->_kernel, kernel);
    v10->_pixelBufferPool = 0;
  }

  return v10;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CVPixelBufferPoolRelease(pixelBufferPool);
    self->_pixelBufferPool = 0;
  }

  v4.receiver = self;
  v4.super_class = ARMPSImageFilter;
  [(ARMPSImageFilter *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer format:(unint64_t)format
{
  v44 = *MEMORY[0x1E69E9840];
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

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  ARRecreatePixelBufferPoolOnConfigurationChanges(&self->_pixelBufferPool, PixelFormatType, Width, Height);
  pixelBufferOut = 0;
  v10 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_pixelBufferPool, &pixelBufferOut);
  if (!v10)
  {
    v19 = MEMORY[0x1E69741C0];
    v20 = CVPixelBufferGetWidth(buffer);
    v21 = [v19 texture2DDescriptorWithPixelFormat:format width:v20 height:CVPixelBufferGetHeight(buffer) mipmapped:0];
    v13 = [(MTLDevice *)self->_device newTextureWithDescriptor:v21 iosurface:CVPixelBufferGetIOSurface(buffer) plane:0];

    v22 = MEMORY[0x1E69741C0];
    v23 = CVPixelBufferGetWidth(pixelBufferOut);
    v24 = [v22 texture2DDescriptorWithPixelFormat:format width:v23 height:CVPixelBufferGetHeight(pixelBufferOut) mipmapped:0];
    [v24 setUsage:{objc_msgSend(v24, "usage") | 2}];
    v25 = [(MTLDevice *)self->_device newTextureWithDescriptor:v24 iosurface:CVPixelBufferGetIOSurface(pixelBufferOut) plane:0];

    if (v13 && v25)
    {
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      [(MPSUnaryImageKernel *)self->_kernel encodeToCommandBuffer:commandBuffer sourceTexture:v13 destinationTexture:v25];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      v28 = pixelBufferOut;
LABEL_26:

      goto LABEL_27;
    }

    if (ARShouldUseLogTypeError_onceToken_20 != -1)
    {
      [ARMPSImageFilter processPixelBuffer:format:];
    }

    v30 = ARShouldUseLogTypeError_internalOSVersion_20;
    v31 = _ARLogGeneral_8(v26);
    commandBuffer = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138543618;
        v41 = v33;
        v42 = 2048;
        selfCopy4 = self;
        v34 = "%{public}@ <%p>: Could not allocate create textures for processing";
        v35 = commandBuffer;
        v36 = OS_LOG_TYPE_ERROR;
LABEL_24:
        _os_log_impl(&dword_1C241C000, v35, v36, v34, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v33 = NSStringFromClass(v37);
      *buf = 138543618;
      v41 = v33;
      v42 = 2048;
      selfCopy4 = self;
      v34 = "Error: %{public}@ <%p>: Could not allocate create textures for processing";
      v35 = commandBuffer;
      v36 = OS_LOG_TYPE_INFO;
      goto LABEL_24;
    }

    v28 = 0;
    goto LABEL_26;
  }

  if (ARShouldUseLogTypeError_onceToken_20 != -1)
  {
    [ARMPSImageFilter processPixelBuffer:format:];
  }

  v11 = ARShouldUseLogTypeError_internalOSVersion_20;
  v12 = _ARLogGeneral_8(v10);
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v41 = v15;
      v42 = 2048;
      selfCopy4 = self;
      v16 = "%{public}@ <%p>: Could not allocate pixel buffer";
      v17 = v13;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v29 = objc_opt_class();
    v15 = NSStringFromClass(v29);
    *buf = 138543618;
    v41 = v15;
    v42 = 2048;
    selfCopy4 = self;
    v16 = "Error: %{public}@ <%p>: Could not allocate pixel buffer";
    v17 = v13;
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v28 = 0;
LABEL_27:

  return v28;
}

@end