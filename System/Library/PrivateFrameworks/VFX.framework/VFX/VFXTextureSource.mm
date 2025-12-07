@interface VFXTextureSource
- (double)textureSize;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)dealloc;
- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time;
- (void)setMTLTextureCache:(id)cache;
@end

@implementation VFXTextureSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXTextureSource;
  [(VFXTextureSource *)&v3 dealloc];
}

- (double)textureSize
{
  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3BA4(a2);
  }

  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  v9 = sub_1AF12E2AC(context, a2);
  if (!v9)
  {
    v10 = sub_1AF0D5194(0, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF3C20(v10);
    }
  }

  v11 = objc_msgSend_supportsMetal(self, v7, v8);
  if (v11)
  {
    result = objc_msgSend_MTLTextureCache(self, v12, v13);
    if (!result)
    {
      objc_msgSend_textureSize(self, v15, v16);
      v27 = 0uLL;
      v28 = 0;
      CFXTextureDescriptorMake2D(v17, v18, 0x47u, &v27);
      LOBYTE(v28) = 1;
      v21 = objc_msgSend_gpuDevice(v9, v19, v20);
      v25 = v27;
      v26 = v28;
      v22 = CFXGPUDeviceCreateTexture(v21, &v25);
      objc_msgSend_setMTLTextureCache_(self, v23, v22);
      return v22;
    }
  }

  else
  {
    v24 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3CA4(v24);
    }

    return 0;
  }

  return result;
}

- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time
{
  v6 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3BA4(a2);
  }
}

- (void)setMTLTextureCache:(id)cache
{
  mtlTextureCache = self->_mtlTextureCache;
  if (mtlTextureCache != cache)
  {

    self->_mtlTextureCache = cache;
  }
}

@end