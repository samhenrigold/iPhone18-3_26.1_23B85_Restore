@interface VFXCaptureDeviceOutputConsumerSource
- (VFXCaptureDeviceOutputConsumerSource)initWithOptions:(id)options;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)_setPixelBuffer:(__CVBuffer *)buffer;
- (void)_setSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)connectToProxy:(__CFXImageProxy *)proxy;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)buffer fromDevice:(id)device;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)buffer fromDevice:(id)device;
@end

@implementation VFXCaptureDeviceOutputConsumerSource

- (VFXCaptureDeviceOutputConsumerSource)initWithOptions:(id)options
{
  v11.receiver = self;
  v11.super_class = VFXCaptureDeviceOutputConsumerSource;
  v4 = [(VFXCaptureDeviceOutputConsumerSource *)&v11 init];
  v6 = v4;
  if (v4)
  {
    v4->_videoMirrored = 0;
    v4->_automaticallyAdjustsVideoMirroring = 1;
    v7 = objc_msgSend_objectForKeyedSubscript_(options, v5, @"VFXCaptureDeviceOutputConsumerOptionContainsAlpha");
    v6->_containsAlpha = objc_msgSend_BOOLValue(v7, v8, v9);
  }

  return v6;
}

- (void)dealloc
{
  sub_1AF28BE50(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXCaptureDeviceOutputConsumerSource;
  [(VFXTextureSource *)&v4 dealloc];
}

- (void)connectToProxy:(__CFXImageProxy *)proxy
{
  sub_1AF27679C(proxy, self, 3);
  v4[0] = xmmword_1F24EBE38;
  v4[1] = *&off_1F24EBE48;
  sub_1AF276824(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  v20[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  if (mtlTextureForRenderer)
  {
    *status = 256;
  }

  else if (self->_data.var0)
  {
    v11 = sub_1AF12E2AC(context, v9);
    v13 = v11;
    textureCache = self->_textureCache;
    if (!textureCache)
    {
      v15 = objc_msgSend_device(v11, v12, 0);
      v19 = *MEMORY[0x1E6966010];
      v20[0] = &unk_1F25D43D8;
      v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v20, &v19, 1);
      CVMetalTextureCacheCreate(0, 0, v15, v17, &self->_textureCache);
      textureCache = self->_textureCache;
    }

    sub_1AF28BEAC(&self->_data, v13, textureCache);
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
    self->_videoMirrored = objc_msgSend_position(device, a2, buffer) == 2;
  }

  MEMORY[0x1EEE66B58](self, sel__setSampleBuffer_, buffer);
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
    sub_1AF28BE04(&self->_data, v6, v7);
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
    v8 = sub_1AF0D5194(ImageBuffer, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }
  }

  objc_sync_exit(self);
}

- (void)setPixelBuffer:(__CVBuffer *)buffer fromDevice:(id)device
{
  if (device && self->_automaticallyAdjustsVideoMirroring)
  {
    self->_videoMirrored = objc_msgSend_position(device, a2, buffer) == 2;
  }

  MEMORY[0x1EEE66B58](self, sel__setPixelBuffer_, buffer);
}

- (void)_setPixelBuffer:(__CVBuffer *)buffer
{
  objc_sync_enter(self);
  if (self->_data.var0 != buffer)
  {
    sub_1AF28BE04(&self->_data, v5, v6);
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
        v8 = CFRetain(buffer);
      }

      else
      {
        v8 = 0;
      }

      self->_data.var0 = v8;
    }
  }

  if (buffer)
  {
    self->_width = CVPixelBufferGetWidth(buffer);
    self->_height = CVPixelBufferGetHeight(buffer);
    if (!CVPixelBufferGetIOSurface(buffer))
    {
      v10 = sub_1AF0D5194(0, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3ABC();
      }
    }
  }

  objc_sync_exit(self);
}

@end