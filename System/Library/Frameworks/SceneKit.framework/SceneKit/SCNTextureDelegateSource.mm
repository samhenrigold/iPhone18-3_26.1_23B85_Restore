@interface SCNTextureDelegateSource
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (void)__updateTextureWithDelegate:(id)delegate engineContext:(__C3DEngineContext *)context;
- (void)cleanup:(__C3DRendererContext *)cleanup;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
@end

@implementation SCNTextureDelegateSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureDelegateSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  time = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context, sampler, time];
  if (time)
  {
    GLContext = C3DRendererContextGetGLContext(time, v8);
  }

  else
  {
    GLContext = 0;
  }

  Scene = C3DEngineContextGetScene(context, v8);
  AnimationManager = C3DSceneGetAnimationManager(Scene, v11);
  if (!AnimationManager)
  {
    v14 = scn_default_log(0, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v14, v12, v15, v16, v17, v18, v19, v20);
    }
  }

  [self->_delegate drawInContext:GLContext atTime:{C3DAnimationManagerGetSystemTime(AnimationManager, v12)}];
}

- (void)__updateTextureWithDelegate:(id)delegate engineContext:(__C3DEngineContext *)context
{
  v6 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
  Scene = C3DEngineContextGetScene(context, v7);
  AnimationManager = C3DSceneGetAnimationManager(Scene, v9);
  if (!AnimationManager)
  {
    v12 = scn_default_log(0, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v12, v10, v13, v14, v15, v16, v17, v18);
    }
  }

  SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager, v10);
  if (self->super._framebuffer)
  {
    v21 = SystemTime;
    lastUpdate = self->_lastUpdate;
    if (lastUpdate != v21 && (lastUpdate == 0.0 || v21 > self->_nextUpdateDate || (objc_opt_respondsToSelector() & 1) != 0 && [self->_delegate needsUpdate]))
    {
      self->_lastUpdate = v21;
      GLContext = C3DRendererContextGetGLContext(v6, v19);
      [(SCNTextureOffscreenRenderingSource *)self _bindFramebuffer:context];
      [self->_delegate drawInContext:GLContext atTime:v21];
      [(SCNTextureOffscreenRenderingSource *)self _unbindFramebuffer:context];
      v24 = objc_opt_respondsToSelector();
      v25 = 0.0;
      if (v24)
      {
        [self->_delegate nextFrameTime];
      }

      self->_nextUpdateDate = v21 + v25;
    }
  }
}

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v3.receiver = self;
  v3.super_class = SCNTextureDelegateSource;
  [(SCNTextureOffscreenRenderingSource *)&v3 cleanup:cleanup];
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  Stats = C3DEngineContextGetStats(context, a2);
  v9 = CACurrentMediaTime();
  delegate = [(SCNTextureDelegateSource *)self delegate];
  if (delegate)
  {
    v12 = delegate;
    [delegate contentSize];
    v14 = 0;
    if (v15 > 0.0 && v13 > 0.0)
    {
      v14 = [(SCNTextureOffscreenRenderingSource *)self __prepareFramebufferWithSize:context withEngineContext:sampler textureSampler:0 needsStencil:?];
      [(SCNTextureDelegateSource *)self __updateTextureWithDelegate:v12 engineContext:context];
    }

    *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v9;
  }

  else
  {
    v16 = scn_default_log(0, v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCNTextureDelegateSource textureWithEngineContext:v16 textureSampler:? nextFrameTime:?];
    }

    return 0;
  }

  return v14;
}

@end