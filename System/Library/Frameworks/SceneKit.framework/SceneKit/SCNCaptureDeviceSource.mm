@interface SCNCaptureDeviceSource
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)connectToProxy:(__C3DImageProxy *)proxy;
- (void)dealloc;
- (void)setCaptureDevice:(id)device;
@end

@implementation SCNCaptureDeviceSource

- (void)dealloc
{
  [(AVCaptureSession *)self->_captureSession stopRunning];

  SCNVideoTextureSourceRelease(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNCaptureDeviceSource;
  [(SCNTextureSource *)&v4 dealloc];
}

- (void)setCaptureDevice:(id)device
{
  if (self->_captureDevice != device)
  {
    [(AVCaptureSession *)self->_captureSession stopRunning];

    self->_captureSession = 0;
    self->_captureDevice = device;
  }
}

- (void)connectToProxy:(__C3DImageProxy *)proxy
{
  C3DImageProxySetSource(proxy, self, 2);
  v4[0] = xmmword_282DC80D8;
  v4[1] = *&off_282DC80E8;
  C3DImageProxySetCallbacks(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  v29[2] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->_captureSession)
  {
    v25 = 0;
    v16 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:self->_captureDevice error:&v25];
    v18 = v16;
    if (v25)
    {
      v19 = scn_default_log(v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SCNCaptureDeviceSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
      }

      goto LABEL_10;
    }

    v23 = objc_alloc_init(MEMORY[0x277CE5B38]);
    self->_captureSession = v23;
    [(AVCaptureSession *)v23 addInput:v18];

    [(AVCaptureSession *)self->_captureSession commitConfiguration];
    [(AVCaptureSession *)self->_captureSession startRunning];
  }

  RenderContext = C3DEngineContextGetRenderContext(context, v9);
  v12 = RenderContext;
  if (!self->_data.videoOutput)
  {
    v13 = objc_alloc_init(MEMORY[0x277CE5B60]);
    v14 = *MEMORY[0x277CC4E30];
    v28[0] = *MEMORY[0x277CC4E08];
    v28[1] = v14;
    v29[0] = MEMORY[0x277CBEC38];
    v29[1] = &unk_282E0FBE8;
    [v13 setVideoSettings:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)}];
    [v13 setSampleBufferDelegate:self queue:-[SCNMTLRenderContext resourceQueue](v12)];
    RenderContext = [(AVCaptureSession *)self->_captureSession addOutput:v13];
    self->_data.videoOutput = v13;
  }

  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  if (mtlTextureForRenderer)
  {
    *status = 256;
    goto LABEL_15;
  }

  if (!self->_data.var0)
  {
    v24 = scn_default_log(RenderContext, v11);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SCNAVPlayerSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
    }

LABEL_10:
    mtlTextureForRenderer = 0;
    goto LABEL_15;
  }

  textureCache = self->_textureCache;
  if (!textureCache)
  {
    device = [(SCNMTLRenderContext *)v12 device];
    v26 = *MEMORY[0x277CC4D50];
    v27 = &unk_282E0F8E8;
    CVMetalTextureCacheCreate(0, 0, device, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1], &self->_textureCache);
    textureCache = self->_textureCache;
  }

  SCNVideoTextureSourceCreateMetalTexture(&self->_data, v12, textureCache);
  *status = 257;
  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
LABEL_15:
  objc_sync_exit(self);
  return mtlTextureForRenderer;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  objc_sync_enter(self);
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    SCNVideoTextureSourceDiscardVideoData(&self->_data);
    self->_data.var0 = CVPixelBufferRetain(ImageBuffer);
    self->_videoMirrored = [connection isVideoMirrored];
    self->_width = CVPixelBufferGetWidth(ImageBuffer);
    self->_height = CVPixelBufferGetHeight(ImageBuffer);
  }

  else
  {
    v10 = scn_default_log(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNAVPlayerSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
    }
  }

  objc_sync_exit(self);
}

@end