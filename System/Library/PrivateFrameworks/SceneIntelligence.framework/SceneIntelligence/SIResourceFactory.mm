@interface SIResourceFactory
- (MTLLibrary)library;
- (SIResourceFactory)initWithDevice:(id)device;
- (id)binaryArchive;
- (id)commandBufferOnCustomQueueWithoutComputePreemption;
- (id)dictionaryFromTexture:(id)texture;
- (id)newComputePipelineStateWithName:(id)name constantValues:(id)values error:(id *)error;
- (id)newCubemapWithFormat:(SIImageFormat_struct *)format;
- (id)newFunctionWithName:(id)name;
- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error;
- (id)newIOSurfaceBackedTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (id)newTextureFromIOSurface:(__IOSurface *)surface;
- (id)newTextureFromPixelBuffer:(__CVBuffer *)buffer;
- (id)newTextureWithFormat:(SIImageFormat_struct *)format;
- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height mtlPixelFormat:(unint64_t)format;
- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (id)newTexturesFromBiPlanarPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation SIResourceFactory

- (SIResourceFactory)initWithDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = SIResourceFactory;
  v6 = [(SIResourceFactory *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    newCommandQueue = [(MTLDevice *)v7->_device newCommandQueue];
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = newCommandQueue;

    v10 = objc_opt_new();
    [v10 setCommitSynchronously:1];
    [v10 setDisableAsyncCompletionDispatch:1];
    v11 = [(MTLDevice *)v7->_device newCommandQueueWithDescriptor:v10];
    commandQueueSPI = v7->_commandQueueSPI;
    v7->_commandQueueSPI = v11;

    newSharedEvent = [(MTLDevice *)v7->_device newSharedEvent];
    sharedEvent = v7->_sharedEvent;
    v7->_sharedEvent = newSharedEvent;

    v15 = v7;
  }

  return v7;
}

- (MTLLibrary)library
{
  v19 = *MEMORY[0x277D85DE8];
  library = self->_library;
  if (!library)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    device = self->_device;
    v12 = 0;
    v6 = [(MTLDevice *)device newDefaultLibraryWithBundle:v4 error:&v12];
    v7 = v12;
    v8 = self->_library;
    self->_library = v6;

    if (v7 || !self->_library)
    {
      v10 = __SceneIntelligenceLogSharedInstance(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136381187;
        v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v15 = 1025;
        v16 = 73;
        v17 = 2113;
        v18 = v7;
        _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newLibraryWithURL failed: %{private}@ ***", buf, 0x1Cu);
      }
    }

    library = self->_library;
  }

  return library;
}

- (id)commandBufferOnCustomQueueWithoutComputePreemption
{
  v3 = objc_opt_new();
  v4 = [(MTLCommandQueueSPI *)self->_commandQueueSPI commandBufferWithDescriptor:v3];

  return v4;
}

- (id)binaryArchive
{
  v25 = *MEMORY[0x277D85DE8];
  binaryArchive = self->_binaryArchive;
  if (binaryArchive)
  {
LABEL_12:
    v16 = binaryArchive;
    goto LABEL_13;
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"default-binaryarchive" ofType:@"metallib"];

  if (v5)
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    [v7 setUrl:v8];

    device = self->_device;
    v18 = 0;
    v10 = [(MTLDevice *)device newBinaryArchiveWithDescriptor:v7 error:&v18];
    v11 = v18;
    v12 = self->_binaryArchive;
    self->_binaryArchive = v10;

    if (v11 || !self->_binaryArchive)
    {
      v14 = __SceneIntelligenceLogSharedInstance(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v20 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v21 = 1025;
        v22 = 127;
        v23 = 2113;
        v24 = v11;
        _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** newBinaryArchiveWithDescriptor failed:  %{private}@ ***", buf, 0x1Cu);
      }
    }

    binaryArchive = self->_binaryArchive;
    goto LABEL_12;
  }

  v15 = __SceneIntelligenceLogSharedInstance(v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136380931;
    v20 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
    v21 = 1025;
    v22 = 116;
    _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** path for resource default-binaryarchive.metallib could not be found. ***", buf, 0x12u);
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (id)newFunctionWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  library = [(SIResourceFactory *)self library];
  v6 = [library newFunctionWithName:nameCopy];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = __SceneIntelligenceLogSharedInstance(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136381187;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v13 = 1025;
      v14 = 145;
      v15 = 2113;
      v16 = nameCopy;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newFunctionWithName failed: %{private}@ ***", &v11, 0x1Cu);
    }
  }

  return v6;
}

- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  nameCopy = name;
  library = [(SIResourceFactory *)self library];
  v11 = [library newFunctionWithName:nameCopy constantValues:valuesCopy error:error];

  if (*error)
  {
    v13 = __SceneIntelligenceLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *error;
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v19 = 1025;
      v20 = 155;
      v21 = 2113;
      v22 = v14;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newFunctionWithName constantValues failed with error :%{private}@ ***", &v17, 0x1Cu);
    }

    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

- (id)newComputePipelineStateWithName:(id)name constantValues:(id)values error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  library = [(SIResourceFactory *)self library];
  v11 = library;
  if (valuesCopy)
  {
    v12 = [library newFunctionWithName:nameCopy constantValues:valuesCopy error:error];
  }

  else
  {
    v12 = [library newFunctionWithName:nameCopy];
  }

  v13 = v12;

  if (v13)
  {
    v15 = objc_opt_new();
    [v15 setComputeFunction:v13];
    [v15 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:0];
    binaryArchive = [(SIResourceFactory *)self binaryArchive];

    if (binaryArchive)
    {
      binaryArchive2 = [(SIResourceFactory *)self binaryArchive];
      v26 = binaryArchive2;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [v15 setBinaryArchives:v18];
    }

    v19 = [(MTLDevice *)self->_device newComputePipelineStateWithDescriptor:v15 options:0 reflection:0 error:error];
    v20 = v19;
    if (error || !v19)
    {
      v23 = __SceneIntelligenceLogSharedInstance(v19);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v24 = *error;
        }

        else
        {
          v24 = &stru_282F2BE40;
        }

        *buf = 136381187;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v29 = 1025;
        v30 = 190;
        v31 = 2113;
        v32 = v24;
        _os_log_impl(&dword_21DE0D000, v23, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newComputePipelineStateWithDescriptor failed: %{private}@ ***", buf, 0x1Cu);
      }

      v21 = 0;
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    v15 = __SceneIntelligenceLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v22 = *error;
      }

      else
      {
        v22 = &stru_282F2BE40;
      }

      *buf = 136381443;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v29 = 1025;
      v30 = 170;
      v31 = 2113;
      v32 = nameCopy;
      v33 = 2113;
      v34 = v22;
      _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newFunctionWithName %{private}@ failed %{private}@ ***", buf, 0x26u);
    }

    v21 = 0;
  }

  return v21;
}

- (id)newCubemapWithFormat:(SIImageFormat_struct *)format
{
  v4 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:format->var3 size:format->var0 mipmapped:1];
  [v4 setUsage:23];
  v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:v4];

  return v5;
}

- (id)newTextureWithFormat:(SIImageFormat_struct *)format
{
  var2 = format->var2;
  if (!var2)
  {
    var2 = SIOSTypeFromMTLPixelFormat(format->var3);
  }

  var0 = format->var0;
  var1 = format->var1;

  return [(SIResourceFactory *)self newTextureWithWidth:var0 height:var1 pixelFormat:var2];
}

- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = SIMTLPixelFormatFromOSType(format);
  if (v9)
  {

    return [(SIResourceFactory *)self newTextureWithWidth:width height:height mtlPixelFormat:v9];
  }

  else
  {
    v11 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = SIPixelFormatToStr(format);
      v13 = 136381187;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v15 = 1025;
      v16 = 226;
      v17 = 2113;
      v18 = v12;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Textures do not currently support format %{private}@ ***", &v13, 0x1Cu);
    }

    return 0;
  }
}

- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height mtlPixelFormat:(unint64_t)format
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_new();
  [v9 setTextureType:2];
  [v9 setWidth:width];
  [v9 setHeight:height];
  [v9 setPixelFormat:format];
  [v9 setUsage:23];
  v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136380931;
      v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v17 = 1025;
      v18 = 251;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** Texture allocation failed ***", &v15, 0x12u);
    }
  }

  return v11;
}

- (id)newIOSurfaceBackedTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v6 = SICreateCVPixelBuffer(width, height, *&format, 1);
  v7 = [(SIResourceFactory *)self newTextureFromPixelBuffer:v6];
  CVPixelBufferRelease(v6);
  return v7;
}

- (id)newTextureFromPixelBuffer:(__CVBuffer *)buffer
{
  v11 = *MEMORY[0x277D85DE8];
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (IOSurface)
  {

    return [(SIResourceFactory *)self newTextureFromIOSurface:IOSurface];
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136380931;
      v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v9 = 1025;
      v10 = 280;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Pixel buffer missing IOSurface backing ***", &v7, 0x12u);
    }

    return 0;
  }
}

- (id)newTextureFromIOSurface:(__IOSurface *)surface
{
  v23 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  v6 = SIMTLPixelFormatFromOSType(PixelFormat);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CD7058];
    Width = IOSurfaceGetWidth(surface);
    v10 = [v8 texture2DDescriptorWithPixelFormat:v7 width:Width height:IOSurfaceGetHeight(surface) mipmapped:0];
    [v10 setUsage:7];
    v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v10 iosurface:surface plane:0];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v15 = __SceneIntelligenceLogSharedInstance(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 136380931;
        v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v19 = 1025;
        v20 = 313;
        _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Texture allocation failed ***", &v17, 0x12u);
      }
    }
  }

  else
  {
    v10 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = SIPixelFormatToStr(PixelFormat);
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v19 = 1025;
      v20 = 294;
      v21 = 2113;
      v22 = v14;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Textures do not currently support format %{private}@ ***", &v17, 0x1Cu);
    }

    v12 = 0;
  }

  return v12;
}

- (id)newTexturesFromBiPlanarPixelBuffer:(__CVBuffer *)buffer
{
  v27 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v6 = SIIsBiPlanarUint8Format(PixelFormatType);
  if (!v6)
  {
    v11 = __SceneIntelligenceLogSharedInstance(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = SIPixelFormatToStr(PixelFormatType);
      *buf = 136381187;
      v22 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v23 = 1025;
      v24 = 324;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unexpected pixel buffer format: %@ ***", buf, 0x1Cu);
    }

    goto LABEL_8;
  }

  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (!IOSurface)
  {
    v11 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v22 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v23 = 1025;
      v24 = 330;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Pixel buffer missing IOSurface backing ***", buf, 0x12u);
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v8 = IOSurface;
  v9 = MEMORY[0x277CD7058];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  v11 = [v9 texture2DDescriptorWithPixelFormat:10 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(buffer mipmapped:0), 0];
  [v11 setUsage:3];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11 iosurface:v8 plane:0];
  v13 = MEMORY[0x277CD7058];
  v14 = CVPixelBufferGetWidthOfPlane(buffer, 1uLL);
  v15 = [v13 texture2DDescriptorWithPixelFormat:30 width:v14 height:CVPixelBufferGetHeightOfPlane(buffer mipmapped:1uLL), 0];
  [v15 setUsage:3];
  v16 = [(MTLDevice *)self->_device newTextureWithDescriptor:v15 iosurface:v8 plane:1];
  v20[0] = v12;
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

LABEL_9:
  return v17;
}

- (id)dictionaryFromTexture:(id)texture
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:width];
  [v6 setObject:v7 forKey:@"width"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:height];
  [v6 setObject:v8 forKey:@"height"];

  return v6;
}

@end