@interface _MRCMetalContext
- (_MRCMetalContext)init;
- (_MRCMetalContext)initWithDevice:(id)device libraryURL:(id)l error:(id *)error;
- (id)beginCommandBufferWithError:(id *)error;
- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values error:(id *)error;
- (id)newTextureByBindingIOSurface:(__IOSurface *)surface pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height usage:(unint64_t)usage plane:(unint64_t)plane error:(id *)error;
- (void)commitCommandBufferShouldWaitUntilCompleted:(BOOL)completed;
@end

@implementation _MRCMetalContext

- (id)newTextureByBindingIOSurface:(__IOSurface *)surface pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height usage:(unint64_t)usage plane:(unint64_t)plane error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:0];
  v14 = v13;
  if (v13)
  {
    [v13 setUsage:usage];
    v15 = [(MTLDevice *)self->_device newTextureWithDescriptor:v14 iosurface:surface plane:plane];
    if (v15)
    {
      v16 = v15;
      v17 = v16;
    }

    else
    {
      if (error)
      {
        v19 = MEMORY[0x277CCA9B8];
        v22 = *MEMORY[0x277CBEE30];
        v23 = @"Cannot create MTLTexture.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *error = [v19 errorWithDomain:@"MRCErrorDomain" code:-1 userInfo:v20];
      }

      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v18 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CBEE30];
    v25[0] = @"Cannot create MTLTextureDescriptor.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v18 errorWithDomain:@"MRCErrorDomain" code:-1 userInfo:v16];
    *error = v17 = 0;
  }

LABEL_10:
  return v17;
}

- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  library = self->_library;
  if (!valuesCopy)
  {
    v11 = [(MTLLibrary *)library newFunctionWithName:nameCopy];
    if (!v11)
    {
      if (!error)
      {
        goto LABEL_7;
      }

      v14 = MEMORY[0x277CCA9B8];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create MTLFunction named %@.", nameCopy, *MEMORY[0x277CBEE30]];
      v17[0] = v12;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *error = [v14 errorWithDomain:@"MRCErrorDomain" code:-1 userInfo:v15];

      error = 0;
      goto LABEL_6;
    }

LABEL_5:
    v12 = v11;
    error = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v11 error:error];
LABEL_6:

    goto LABEL_7;
  }

  v11 = [(MTLLibrary *)library newFunctionWithName:nameCopy constantValues:valuesCopy error:error];
  if (v11)
  {
    goto LABEL_5;
  }

  error = 0;
LABEL_7:

  return error;
}

- (void)commitCommandBufferShouldWaitUntilCompleted:(BOOL)completed
{
  completedCopy = completed;
  [(MTLCommandBuffer *)self->_currentCommandBuffer commit];
  if (completedCopy)
  {
    [(MTLCommandBuffer *)self->_currentCommandBuffer waitUntilCompleted];
  }

  currentCommandBuffer = self->_currentCommandBuffer;
  self->_currentCommandBuffer = 0;
}

- (id)beginCommandBufferWithError:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  currentCommandBuffer = self->_currentCommandBuffer;
  self->_currentCommandBuffer = commandBuffer;

  v7 = self->_currentCommandBuffer;
  if (v7)
  {
    v8 = v7;
  }

  else if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CBEE30];
    v13[0] = @"Cannot create MTLCommandBuffer.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *error = [v9 errorWithDomain:@"MRCErrorDomain" code:-1 userInfo:v10];
  }

  return v7;
}

- (_MRCMetalContext)initWithDevice:(id)device libraryURL:(id)l error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  lCopy = l;
  v36.receiver = self;
  v36.super_class = _MRCMetalContext;
  v10 = [(_MRCMetalContext *)&v36 init];
  if (!v10)
  {
    goto LABEL_21;
  }

  if (deviceCopy)
  {
    v11 = deviceCopy;
  }

  else
  {
    v11 = MTLCreateSystemDefaultDevice();
  }

  device = v10->_device;
  v10->_device = v11;

  v13 = v10->_device;
  if (v13)
  {
    if (lCopy)
    {
LABEL_7:
      v14 = [(MTLDevice *)v13 newLibraryWithURL:lCopy error:error];
      library = v10->_library;
      v10->_library = v14;
LABEL_19:

      if (!v10->_library)
      {
LABEL_25:
        error = 0;
        goto LABEL_26;
      }

      newCommandQueue = [(MTLDevice *)v10->_device newCommandQueue];
      commandQueue = v10->_commandQueue;
      v10->_commandQueue = newCommandQueue;

      if (v10->_commandQueue)
      {
LABEL_21:
        error = v10;
        goto LABEL_26;
      }

      if (!error)
      {
        goto LABEL_26;
      }

      v16 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CBEE30];
      v38 = @"Cannot create MTLCommandQueue.";
      v17 = MEMORY[0x277CBEAC0];
      v18 = &v38;
      v19 = &v37;
LABEL_24:
      v28 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
      *error = [v16 errorWithDomain:@"MRCErrorDomain" code:-1 userInfo:v28];

      goto LABEL_25;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [standardUserDefaults objectForKey:@"_MRCMetalContextDefaultLibraryPath"];

    if (v21 || (v22 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Quagga"], objc_msgSend(v22, "objectForKey:", @"_MRCMetalContextDefaultLibraryPath"), v21 = objc_claimAutoreleasedReturnValue(), v22, v21)) && (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v21, "length"))
    {
      lCopy = [MEMORY[0x277CBEBC0] fileURLWithPath:v21];

      if (lCopy)
      {
        v13 = v10->_device;
        goto LABEL_7;
      }
    }

    else
    {
    }

    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (!v23)
    {
      if (!error)
      {
        lCopy = 0;
        goto LABEL_26;
      }

      v30 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CBEE30];
      v31 = MEMORY[0x277CCACA8];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v31 stringWithFormat:@"Cannot get bundle for class %@.", v33];
      v40 = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *error = [v30 errorWithDomain:@"MRCErrorDomain" code:-1 userInfo:v35];

      lCopy = 0;
      goto LABEL_25;
    }

    library = v23;
    v24 = [(MTLDevice *)v10->_device newDefaultLibraryWithBundle:v23 error:error];
    v25 = v10->_library;
    v10->_library = v24;

    lCopy = 0;
    goto LABEL_19;
  }

  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CBEE30];
    v42[0] = @"Cannot create MTLDevice.";
    v17 = MEMORY[0x277CBEAC0];
    v18 = v42;
    v19 = &v41;
    goto LABEL_24;
  }

LABEL_26:

  return error;
}

- (_MRCMetalContext)init
{
  result = [(_MRCMetalContext *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end