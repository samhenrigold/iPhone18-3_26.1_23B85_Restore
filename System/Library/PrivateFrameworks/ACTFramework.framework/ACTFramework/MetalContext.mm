@interface MetalContext
+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format;
- (BOOL)writeMetalTextureToData:(void *)data texture:(id)texture mipmapLevel:(int)level;
- (BOOL)writeMetalTextureToFile:(const char *)file texture:(id)texture mipmapLevel:(int)level;
- (MetalContext)init;
- (MetalContext)initWithDevice:(id)device library:(id)library commandQueue:(id)queue;
- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height plane:(unint64_t)plane;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format plane:(unint64_t)plane;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format textureSize:(CGSize)size plane:(unint64_t)plane;
- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data;
- (id)newTextureWithPixelFormat:(unint64_t)format width:(int)width height:(int)height;
- (id)readBufferFromFile:(const char *)file width:(int)width pixelFormat:(unint64_t)format;
- (id)readTextureFromFile:(const char *)file width:(int)width height:(int)height pixelFormat:(unint64_t)format;
- (int)writeMetalBufferToFile:(const char *)file buffer:(id)buffer;
- (void)copyMTLBufferToMTLTexture:(id)texture bytesPerRow:(unint64_t)row texture:(id)a5;
@end

@implementation MetalContext

- (MetalContext)init
{
  v18.receiver = self;
  v18.super_class = MetalContext;
  v2 = [(MetalContext *)&v18 init];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v3;

  v5 = v2->_device;
  if (!v5)
  {
    sub_23C474170(&v19);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_9:
    v14 = v2;
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = 0;
  v7 = [(MTLDevice *)v5 newDefaultLibraryWithBundle:v6 error:&v17];
  v8 = v17;
  library = v2->_library;
  v2->_library = v7;

  if (v2->_library)
  {
    newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
    commandQueue = v2->_commandQueue;
    v2->_commandQueue = newCommandQueue;

    v12 = v2->_commandQueue;
    if (v12)
    {
      [(MTLCommandQueue *)v12 setBackgroundGPUPriority:2];
      v13 = 0;
      goto LABEL_6;
    }

    sub_23C4740B8(&v19);
  }

  else
  {
    sub_23C474114(&v19);
  }

  v13 = v19;
LABEL_6:

  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = 0;
LABEL_10:
  v15 = v14;

  return v15;
}

- (MetalContext)initWithDevice:(id)device library:(id)library commandQueue:(id)queue
{
  deviceCopy = device;
  libraryCopy = library;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = MetalContext;
  v12 = [(MetalContext *)&v17 init];
  v13 = v12;
  if (!v12 || (objc_storeStrong(&v12->_device, device), v13->_device) && (objc_storeStrong(&v13->_library, library), v13->_library) && (objc_storeStrong(&v13->_commandQueue, queue), v13->_commandQueue) || sub_23C4741CC())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v15;
}

- (BOOL)writeMetalTextureToFile:(const char *)file texture:(id)texture mipmapLevel:(int)level
{
  v23 = *MEMORY[0x277D85DE8];
  textureCopy = texture;
  v8 = textureCopy;
  v9 = 0;
  if (!file || !textureCopy || level < 0)
  {
    goto LABEL_9;
  }

  if ([textureCopy mipmapLevelCount] <= level)
  {
    v9 = 0;
    goto LABEL_9;
  }

  [v8 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v10 = v20;
  v11 = [v8 width] >> level;
  v12 = [v8 height] >> level;
  v9 = malloc_type_malloc(v11 * v20 * v12, 0x100004077774924uLL);
  memset(v19, 0, sizeof(v19));
  v20 = v11;
  v21 = v12;
  v22 = 1;
  [v8 getBytes:v9 bytesPerRow:v11 * v10 fromRegion:v19 mipmapLevel:level];
  v13 = fopen(file, "wb");
  if (!v13)
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_9:
    free(v9);
    v15 = 0;
    goto LABEL_11;
  }

  v14 = v13;
  v15 = fwrite(v9, v10, v12 * v11, v13) == v12 * v11;
  if (!v15)
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  free(v9);
  fclose(v14);
LABEL_11:

  return v15;
}

- (int)writeMetalBufferToFile:(const char *)file buffer:(id)buffer
{
  v14 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v6 = fopen(file, "wb");
  if (v6)
  {
    v7 = v6;
    contents = [bufferCopy contents];
    v9 = [bufferCopy length];
    if (fwrite(contents, 1uLL, v9, v7) == v9)
    {
      v10 = 0;
    }

    else
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v10 = -1;
    }

    fclose(v7);
  }

  else
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v10 = -1;
  }

  return v10;
}

- (id)newTextureWithPixelFormat:(unint64_t)format width:(int)width height:(int)height
{
  if (height == 1)
  {
    v6 = [MEMORY[0x277CD7058] textureBufferDescriptorWithPixelFormat:format width:? resourceOptions:? usage:?];
  }

  else
  {
    v6 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:? height:? mipmapped:?];
    [v6 setUsage:19];
  }

  v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:v6];

  return v7;
}

- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data
{
  v7 = [MetalContext bytesPerPixelForTextureFormat:format]* width;
  device = self->_device;
  if (data)
  {

    return [(MTLDevice *)device newBufferWithBytes:data length:v7 options:0];
  }

  else
  {

    return [(MTLDevice *)device newBufferWithLength:v7 options:0];
  }
}

- (id)readTextureFromFile:(const char *)file width:(int)width height:(int)height pixelFormat:(unint64_t)format
{
  v7 = *&height;
  v8 = *&width;
  v22 = *MEMORY[0x277D85DE8];
  widthCopy = width;
  v12 = [MetalContext bytesPerPixelForTextureFormat:format]* width;
  __ptr = malloc_type_malloc(v12 * v7, 0x100004077774924uLL);
  if (__ptr)
  {
    v13 = fopen(file, "rb");
    if (v13)
    {
      v14 = v13;
      v15 = [(MetalContext *)self newTextureWithPixelFormat:format width:v8 height:v7];
      fread(__ptr, v12 * v7, 1uLL, v14);
      memset(v20, 0, 24);
      v20[3] = widthCopy;
      if (v7 == 1)
      {
        v21 = vdupq_n_s64(1uLL);
      }

      else
      {
        v21.i64[0] = v7;
        v21.i64[1] = 1;
      }

      [v15 replaceRegion:v20 mipmapLevel:0 withBytes:__ptr bytesPerRow:v12];
      free(__ptr);
      fclose(v14);
      goto LABEL_10;
    }

    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    free(__ptr);
  }

  else
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)readBufferFromFile:(const char *)file width:(int)width pixelFormat:(unint64_t)format
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = [MetalContext bytesPerPixelForTextureFormat:format]* width;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (v8)
  {
    v9 = v8;
    v10 = fopen(file, "rb");
    if (v10)
    {
      v11 = v10;
      fread(v9, v7, 1uLL, v10);
      v12 = [(MTLDevice *)self->_device newBufferWithBytes:v9 length:v7 options:0];
      free(v9);
      fclose(v11);
      goto LABEL_7;
    }

    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    free(v9);
  }

  else
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format plane:(unint64_t)plane
{
  IOSurface = CVPixelBufferGetIOSurface(texture);
  if (IOSurface)
  {
    v9 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, plane);
    plane = [(MetalContext *)self bindIOSurfaceToMTL2DTexture:v9 pixelFormat:format width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(v9 plane:plane), plane];
  }

  else
  {
    sub_23C47422C();
    plane = 0;
  }

  return plane;
}

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format textureSize:(CGSize)size plane:(unint64_t)plane
{
  height = size.height;
  width = size.width;
  IOSurface = CVPixelBufferGetIOSurface(texture);
  if (IOSurface)
  {
    v12 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, plane);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v12, plane);
    if (width > WidthOfPlane)
    {
      sub_23C4742EC();
    }

    else
    {
      if (height <= HeightOfPlane)
      {
        v15 = [(MetalContext *)self bindIOSurfaceToMTL2DTexture:v12 pixelFormat:format width:width height:height plane:plane];
        goto LABEL_5;
      }

      sub_23C47428C();
    }
  }

  else
  {
    sub_23C47434C();
  }

  v15 = 0;
LABEL_5:

  return v15;
}

- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height plane:(unint64_t)plane
{
  v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:0];
  v11 = v10;
  if (!v10 || ([v10 setUsage:23], (v12 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_device, "newTextureWithDescriptor:iosurface:plane:", v11, texture, plane)) == 0))
  {
    sub_23C4743AC();
    v12 = 0;
  }

  return v12;
}

- (void)copyMTLBufferToMTLTexture:(id)texture bytesPerRow:(unint64_t)row texture:(id)a5
{
  commandQueue = self->_commandQueue;
  v8 = a5;
  textureCopy = texture;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  v12 = [v8 height] * row;
  v14[0] = [v8 width];
  v14[1] = [v8 height];
  v14[2] = [v8 depth];
  memset(v13, 0, sizeof(v13));
  [blitCommandEncoder copyFromBuffer:textureCopy sourceOffset:0 sourceBytesPerRow:row sourceBytesPerImage:v12 sourceSize:v14 toTexture:v8 destinationSlice:0 destinationLevel:0 destinationOrigin:v13];

  [blitCommandEncoder endEncoding];
  [commandBuffer addCompletedHandler:&unk_284F097D0];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format
{
  v3 = format - 62;
  if (format - 62 <= 0x3F)
  {
    if (((1 << v3) & 0xF00C1F0FLL) != 0)
    {
      return 4;
    }

    if (((1 << v3) & 0x3D0E0000000000) != 0)
    {
      return 8;
    }

    if (((1 << v3) & 0xE000000000000000) != 0)
    {
      return 16;
    }
  }

  if (format <= 0x3C)
  {
    if (((1 << format) & 0x80743D00000) != 0)
    {
      return 2;
    }

    if (((1 << format) & 0x7402) != 0)
    {
      return 1;
    }

    if (((1 << format) & 0x10E0000000000000) != 0)
    {
      return 4;
    }
  }

  NSLog(&cfstr_UnidentifiedMe.isa, a2);
  return 0;
}

- (BOOL)writeMetalTextureToData:(void *)data texture:(id)texture mipmapLevel:(int)level
{
  textureCopy = texture;
  v8 = textureCopy;
  v9 = 0;
  if (textureCopy && (level & 0x80000000) == 0)
  {
    if ([textureCopy mipmapLevelCount] <= level)
    {
      v9 = 0;
    }

    else
    {
      [v8 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      v10 = [v8 width] >> level;
      height = [v8 height];
      memset(v14, 0, sizeof(v14));
      v12 = v10 * v15;
      v15 = v10;
      v9 = 1;
      v16 = height >> level;
      v17 = 1;
      [v8 getBytes:data bytesPerRow:v12 fromRegion:v14 mipmapLevel:level];
    }
  }

  return v9;
}

@end