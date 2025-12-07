@interface SCNTextureSource
- (__C3DRendererContext)rendererContextForTextureSourceWithEngineContext:(__C3DEngineContext *)context;
- (__C3DTexture)_textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (double)textureSize;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)cleanup:(__C3DRendererContext *)cleanup;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (void)setGlTextureCache:(id)cache;
- (void)setMTLTextureCache:(id)cache;
@end

@implementation SCNTextureSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (__C3DRendererContext)rendererContextForTextureSourceWithEngineContext:(__C3DEngineContext *)context
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(context, a2);
  if ([(SCNTextureSource *)self prefersGL3]|| !RendererContextGL)
  {
    if (C3DTextureSourceGetSharedRendererContext_onceToken != -1)
    {
      [SCNTextureSource rendererContextForTextureSourceWithEngineContext:];
    }

    return C3DTextureSourceGetSharedRendererContext_rendererContext;
  }

  return RendererContextGL;
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  v6 = scn_default_log(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }

  return 0;
}

- (__C3DTexture)_textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  v6 = scn_default_log(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }

  return 0;
}

- (double)textureSize
{
  v3 = scn_default_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }

  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  if (!C3DEngineContextGetRenderContext(context, a2))
  {
    v11 = scn_default_log(0, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SCNTextureSource *)v11 metalTextureWithEngineContext:v12 textureSampler:v13 nextFrameTime:v14 status:v15, v16, v17, v18];
    }
  }

  if ([(SCNTextureSource *)self supportsMetal])
  {
    IOSurface = 0;
  }

  else
  {
    v20 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
    [MEMORY[0x277CD9388] setCurrentContext:{C3DRendererContextGetGLContext(v20, v21)}];
    result = [(SCNTextureSource *)self _textureWithEngineContext:context textureSampler:sampler nextFrameTime:time];
    if (!result)
    {
      return result;
    }

    IOSurface = C3DTextureGetIOSurface(result);
    glFlush();
  }

  result = [(SCNTextureSource *)self MTLTextureCache];
  if (!result)
  {
    RenderContext = C3DEngineContextGetRenderContext(context, v23);
    device = [(SCNMTLRenderContext *)RenderContext device];
    [(SCNTextureSource *)self textureSize];
    v30 = v26;
    if (C3DLinearRenderingIsEnabled())
    {
      v27 = 71;
    }

    else
    {
      v27 = 70;
    }

    v28 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v27 width:*&v30 height:*(&v30 + 1) mipmapped:0, v30];
    [v28 setStorageMode:2 * (IOSurface == 0)];
    [v28 setUsage:1];
    v29 = [device newTextureWithDescriptor:v28 iosurface:IOSurface plane:0];
    [(SCNTextureSource *)self setMTLTextureCache:v29];
    return v29;
  }

  return result;
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  v6 = scn_default_log(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }
}

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v4 = scn_default_log(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
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

- (void)setGlTextureCache:(id)cache
{
  glTextureCache = self->_glTextureCache;
  if (glTextureCache != cache)
  {

    self->_glTextureCache = cache;
  }
}

- (void)textureWithEngineContext:(const char *)a1 textureSampler:nextFrameTime:.cold.1(const char *a1)
{
  NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: SCNTextureSource abstract method invoked %@", v3, v4, v5, v6);
}

- (void)metalTextureWithEngineContext:(uint64_t)a3 textureSampler:(uint64_t)a4 nextFrameTime:(uint64_t)a5 status:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DEngineContextGetRenderContext(engineContext)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end