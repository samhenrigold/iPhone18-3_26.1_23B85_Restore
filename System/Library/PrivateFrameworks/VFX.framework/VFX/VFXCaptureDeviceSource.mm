@interface VFXCaptureDeviceSource
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)connectToProxy:(__CFXImageProxy *)proxy;
- (void)dealloc;
- (void)setCaptureDevice:(id)device;
@end

@implementation VFXCaptureDeviceSource

- (void)dealloc
{
  objc_msgSend_stopRunning(self->_captureSession, a2, v2);

  sub_1AF28BE50(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXCaptureDeviceSource;
  [(VFXTextureSource *)&v5 dealloc];
}

- (void)setCaptureDevice:(id)device
{
  if (self->_captureDevice != device)
  {
    objc_msgSend_stopRunning(self->_captureSession, a2, device);

    self->_captureSession = 0;
    self->_captureDevice = device;
  }
}

- (void)connectToProxy:(__CFXImageProxy *)proxy
{
  sub_1AF27679C(proxy, self, 2);
  v4[0] = xmmword_1F24EBE18;
  v4[1] = *&off_1F24EBE28;
  sub_1AF276824(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  v46[2] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_captureSession)
  {
    v42 = 0;
    v24 = objc_alloc(MEMORY[0x1E69870B0]);
    v26 = objc_msgSend_initWithDevice_error_(v24, v25, self->_captureDevice, &v42);
    v28 = v26;
    if (v42)
    {
      v29 = sub_1AF0D5194(v26, v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3A44();
      }

      goto LABEL_10;
    }

    v35 = objc_alloc_init(MEMORY[0x1E6987110]);
    self->_captureSession = v35;
    objc_msgSend_addInput_(v35, v36, v28);

    objc_msgSend_commitConfiguration(self->_captureSession, v37, v38);
    objc_msgSend_startRunning(self->_captureSession, v39, v40);
  }

  v10 = sub_1AF12E2AC(context, v9);
  v12 = v10;
  if (!self->_data.videoOutput)
  {
    v13 = objc_alloc_init(MEMORY[0x1E6987178]);
    v14 = *MEMORY[0x1E6966130];
    v45[0] = *MEMORY[0x1E6966100];
    v45[1] = v14;
    v46[0] = MEMORY[0x1E695E118];
    v46[1] = &unk_1F25D4690;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v46, v45, 2);
    objc_msgSend_setVideoSettings_(v13, v17, v16);
    v20 = objc_msgSend_resourceQueue(v12, v18, v19);
    objc_msgSend_setSampleBufferDelegate_queue_(v13, v21, self, v20);
    v10 = objc_msgSend_addOutput_(self->_captureSession, v22, v13);
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
    v41 = sub_1AF0D5194(v10, v11);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }

LABEL_10:
    mtlTextureForRenderer = 0;
    goto LABEL_15;
  }

  textureCache = self->_textureCache;
  if (!textureCache)
  {
    v31 = objc_msgSend_device(v12, v11, 0);
    v43 = *MEMORY[0x1E6966010];
    v44 = &unk_1F25D43D8;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v44, &v43, 1);
    CVMetalTextureCacheCreate(0, 0, v31, v33, &self->_textureCache);
    textureCache = self->_textureCache;
  }

  sub_1AF28BEAC(&self->_data, v12, textureCache);
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
    sub_1AF28BE04(&self->_data, v8, v9);
    self->_data.var0 = CVPixelBufferRetain(ImageBuffer);
    self->_videoMirrored = objc_msgSend_isVideoMirrored(connection, v11, v12);
    self->_width = CVPixelBufferGetWidth(ImageBuffer);
    self->_height = CVPixelBufferGetHeight(ImageBuffer);
  }

  else
  {
    v13 = sub_1AF0D5194(0, v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }
  }

  objc_sync_exit(self);
}

@end