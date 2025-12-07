@interface SCNCaptureDeviceOutputConsumerSource
- (SCNCaptureDeviceOutputConsumerSource)initWithOptions:(id)options;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)_setPixelBuffer:(__CVBuffer *)buffer;
- (void)_setSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)connectToProxy:(__C3DImageProxy *)proxy;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)buffer fromDevice:(id)device;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)buffer fromDevice:(id)device;
@end

@implementation SCNCaptureDeviceOutputConsumerSource

- (SCNCaptureDeviceOutputConsumerSource)initWithOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = SCNCaptureDeviceOutputConsumerSource;
  v4 = [(SCNCaptureDeviceOutputConsumerSource *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_videoMirrored = 0;
    v4->_automaticallyAdjustsVideoMirroring = 1;
    v4->_containsAlpha = [objc_msgSend(options objectForKeyedSubscript:{@"SCNCaptureDeviceOutputConsumerOptionContainsAlpha", "BOOLValue"}];
  }

  return v5;
}

- (void)dealloc
{
  SCNVideoTextureSourceRelease(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNCaptureDeviceOutputConsumerSource;
  [(SCNTextureSource *)&v4 dealloc];
}

- (void)connectToProxy:(__C3DImageProxy *)proxy
{
  C3DImageProxySetSource(proxy, self, 3);
  v4[0] = xmmword_282DC80F8;
  v4[1] = *&off_282DC8108;
  C3DImageProxySetCallbacks(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  v17[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  if (mtlTextureForRenderer)
  {
    *status = 256;
  }

  else if (self->_data.var0)
  {
    RenderContext = C3DEngineContextGetRenderContext(context, v9);
    v12 = RenderContext;
    textureCache = self->_textureCache;
    if (!textureCache)
    {
      device = [(SCNMTLRenderContext *)RenderContext device];
      v16 = *MEMORY[0x277CC4D50];
      v17[0] = &unk_282E0F8E8;
      CVMetalTextureCacheCreate(0, 0, device, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1], &self->_textureCache);
      textureCache = self->_textureCache;
    }

    SCNVideoTextureSourceCreateMetalTexture(&self->_data, v12, textureCache);
    *status = 257;
    mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  }

  else
  {
    mtlTextureForRenderer = 0;
  }

  objc_sync_exit(self);
  return mtlTextureForRenderer;
}

- (void)setSampleBuffer:(opaqueCMSampleBuffer *)buffer fromDevice:(id)device
{
  if (device && self->_automaticallyAdjustsVideoMirroring)
  {
    self->_videoMirrored = [device position] == 2;
  }

  [(SCNCaptureDeviceOutputConsumerSource *)self _setSampleBuffer:buffer];
}

- (void)_setSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  ImageBuffer = objc_sync_enter(self);
  if (buffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    buffer = ImageBuffer;
  }

  if (self->_data.var0 != buffer)
  {
    SCNVideoTextureSourceDiscardVideoData(&self->_data);
    ImageBuffer = self->_data.var0;
    if (ImageBuffer != buffer)
    {
      if (ImageBuffer)
      {
        CFRelease(ImageBuffer);
        self->_data.var0 = 0;
      }

      if (buffer)
      {
        ImageBuffer = CFRetain(buffer);
      }

      else
      {
        ImageBuffer = 0;
      }

      self->_data.var0 = ImageBuffer;
    }
  }

  if (buffer)
  {
    self->_width = CVPixelBufferGetWidth(buffer);
    self->_height = CVPixelBufferGetHeight(buffer);
  }

  else
  {
    v7 = scn_default_log(ImageBuffer, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNAVPlayerSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
    }
  }

  objc_sync_exit(self);
}

- (void)setPixelBuffer:(__CVBuffer *)buffer fromDevice:(id)device
{
  if (device && self->_automaticallyAdjustsVideoMirroring)
  {
    self->_videoMirrored = [device position] == 2;
  }

  [(SCNCaptureDeviceOutputConsumerSource *)self _setPixelBuffer:buffer];
}

- (void)_setPixelBuffer:(__CVBuffer *)buffer
{
  objc_sync_enter(self);
  if (self->_data.var0 != buffer)
  {
    SCNVideoTextureSourceDiscardVideoData(&self->_data);
    var0 = self->_data.var0;
    if (var0 != buffer)
    {
      if (var0)
      {
        CFRelease(var0);
        self->_data.var0 = 0;
      }

      if (buffer)
      {
        v6 = CFRetain(buffer);
      }

      else
      {
        v6 = 0;
      }

      self->_data.var0 = v6;
    }
  }

  if (buffer)
  {
    self->_width = CVPixelBufferGetWidth(buffer);
    self->_height = CVPixelBufferGetHeight(buffer);
    if (!CVPixelBufferGetIOSurface(buffer))
    {
      v8 = scn_default_log(0, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SCNCaptureDeviceOutputConsumerSource _setPixelBuffer:];
      }
    }
  }

  objc_sync_exit(self);
}

- (void)_setPixelBuffer:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end