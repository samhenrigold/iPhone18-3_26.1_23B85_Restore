@interface SCNTextureSpriteKitSource
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (double)__updateTextureWithSKScene:(id)scene engineContext:(__C3DEngineContext *)context sampler:(__C3DTextureSampler *)sampler;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)__renderSKScene:(id)scene withSKSCNRenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:;
- (void)cleanup:(__C3DRendererContext *)cleanup;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
@end

@implementation SCNTextureSpriteKitSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureSpriteKitSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  Scene = C3DEngineContextGetScene(context, a2);
  AnimationManager = C3DSceneGetAnimationManager(Scene, v8);
  if (!AnimationManager)
  {
    v11 = scn_default_log(0, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SCNTextureCoreAnimationSource __updateTextureWithLayer:v11 texture:? engineContext:? sampler:?];
    }
  }

  SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager, v9);
  v13 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
  Viewport = C3DEngineContextGetViewport(context);
  if (objc_opt_respondsToSelector())
  {
    if (([(SKScene *)self->_scene _isDirty]& 1) != 0)
    {
      C3DEngineContextSetNextFrameTimeToAsap(context, v15);
    }

    else
    {
      [(SKScene *)self->_scene _notifyNextDirtyState];
    }
  }

  if (C3DEngineContextGetRenderContext(context, v14))
  {
    [v13 setBounds:{Viewport.n128_f32[0], Viewport.n128_f32[1], Viewport.n128_f32[2], Viewport.n128_f32[3]}];
    if ([v13 scene] != self->_scene)
    {
      [v13 setScene:?];
    }

    [SCNMTLRenderContext renderSKSceneWithRenderer:overlay:atTime:];
  }

  else
  {
    [(SCNTextureSpriteKitSource *)self __renderSKScene:self->_scene withSKSCNRenderer:v13 engineContext:context viewport:Viewport.n128_f64[0] atTime:SystemTime];
  }
}

- (void)__renderSKScene:(id)scene withSKSCNRenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:
{
  v7 = v6;
  v20 = *&viewport;
  v11 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
  Viewport = C3DEngineContextGetViewport(context);
  C3DRendererContextSetViewport(v20);
  [renderer setBounds:{v20.n128_f32[0], v20.n128_f32[1], v20.n128_f32[2], v20.n128_f32[3]}];
  if ([renderer scene] != scene)
  {
    [renderer setScene:{scene, *&Viewport}];
  }

  [renderer updateAtTime:{v7, *&Viewport}];
  IsEnabled = glIsEnabled(0xB44u);
  v13 = glIsEnabled(0xBE2u);
  glDisable(0xBE2u);
  glDisable(0xB44u);
  *v21 = 0;
  *params = 0;
  glGetIntegerv(0x80CBu, &params[1]);
  glGetIntegerv(0x80CAu, params);
  glGetIntegerv(0x80C9u, &v21[1]);
  glGetIntegerv(0x80C8u, v21);
  glBlendFunc(0x302u, 0x303u);
  C3DRendererContextUnbindProgramObject(v11);
  C3DRendererContextUnbindBufferObjects(v11);
  BoundFramebuffer = C3DRendererContextGetBoundFramebuffer(v11, v14);
  if (BoundFramebuffer)
  {
    FBO = C3DFramebufferGetFBO(BoundFramebuffer, v16);
  }

  else
  {
    FBO = 0;
  }

  [renderer renderToFramebuffer:FBO shouldClear:1];
  if (IsEnabled)
  {
    glEnable(0xB44u);
  }

  glBlendFuncSeparate(v21[1], v21[0], params[1], params[0]);
  if (v13)
  {
    glEnable(0xBE2u);
  }

  C3DRendererContextSetViewport(v19);
}

- (double)__updateTextureWithSKScene:(id)scene engineContext:(__C3DEngineContext *)context sampler:(__C3DTextureSampler *)sampler
{
  Scene = C3DEngineContextGetScene(context, a2);
  AnimationManager = C3DSceneGetAnimationManager(Scene, v10);
  if (!AnimationManager)
  {
    v13 = scn_default_log(0, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SCNTextureCoreAnimationSource __updateTextureWithLayer:v13 texture:? engineContext:? sampler:?];
    }
  }

  SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager, v11);
  if (self->super._framebuffer)
  {
    if (self->_lastUpdate != SystemTime)
    {
      self->_lastUpdate = SystemTime;
      v15 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
      [(SCNTextureOffscreenRenderingSource *)self _bindFramebuffer:context];
      [(SCNTextureSpriteKitSource *)self __renderSKScene:scene withSKSCNRenderer:v15 engineContext:context viewport:*vcvt_hight_f32_f64(0 atTime:self->super._framebufferSize).i64, SystemTime];
      [(SCNTextureOffscreenRenderingSource *)self _unbindFramebuffer:context];
      if (C3DTextureSamplerGetMipFilter(sampler, v16))
      {
        [(SCNTextureOffscreenRenderingSource *)self _buildMipmaps:context];
      }
    }
  }

  return SystemTime;
}

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v3.receiver = self;
  v3.super_class = SCNTextureSpriteKitSource;
  [(SCNTextureOffscreenRenderingSource *)&v3 cleanup:cleanup];
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  Stats = C3DEngineContextGetStats(context, a2);
  v10 = CACurrentMediaTime();
  scene = [(SCNTextureSpriteKitSource *)self scene];
  if (scene)
  {
    v13 = scene;
    [(SKScene *)scene size];
    v15 = 0;
    if (v16 > 0.0 && v14 > 0.0)
    {
      v15 = [(SCNTextureOffscreenRenderingSource *)self __prepareFramebufferWithSize:context withEngineContext:sampler textureSampler:1 needsStencil:?];
      [(SCNTextureSpriteKitSource *)self __updateTextureWithSKScene:v13 engineContext:context sampler:sampler];
      *time = v17;
    }

    v18 = CACurrentMediaTime();
  }

  else
  {
    v19 = scn_default_log(0, v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SCNTextureSpriteKitSource textureWithEngineContext:v19 textureSampler:? nextFrameTime:?];
    }

    v18 = CACurrentMediaTime();
    v15 = 0;
  }

  *(Stats + 160) = *(Stats + 160) + v18 - v10;
  return v15;
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  RenderContext = C3DEngineContextGetRenderContext(context, a2);
  device = [(SCNMTLRenderContext *)RenderContext device];
  Stats = C3DEngineContextGetStats(context, v12);
  scene = [(SCNTextureSpriteKitSource *)self scene];
  if (scene)
  {
    v16 = scene;
    v17 = CACurrentMediaTime();
    [(SKScene *)v16 size];
    v19 = v18;
    v21 = v20;
    mTLTextureCache = [(SCNTextureSource *)self MTLTextureCache];
    if (!mTLTextureCache)
    {
      v24 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:C3DMetalFramebufferPixelFormat(0) width:v19 height:v21 mipmapped:0];
      [v24 setStorageMode:2];
      [v24 setUsage:21];
      mTLTextureCache = [device newTextureWithDescriptor:v24];
      [(SCNTextureSource *)self setMTLTextureCache:mTLTextureCache];
    }

    Scene = C3DEngineContextGetScene(context, v22);
    AnimationManager = C3DSceneGetAnimationManager(Scene, v26);
    SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager, v28);
    if (!mTLTextureCache || (v30 = SystemTime, self->_lastUpdate == SystemTime))
    {
      v33 = 0;
LABEL_22:
      status->var0 = v33;
      status->var1 = 1;
      *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v17;
      return mTLTextureCache;
    }

    self->_lastUpdate = SystemTime;
    v31 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
    if (objc_opt_respondsToSelector())
    {
      v32 = [(SKScene *)v16 _isDirty]^ 1;
    }

    else
    {
      v32 = 0;
    }

    [v31 setBounds:{0.0, 0.0, v19, v21}];
    scene2 = [v31 scene];
    if (scene2 != v16)
    {
      v37 = scn_default_log(scene2, v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&dword_21BEF7000, v37, OS_LOG_TYPE_DEFAULT, "Warning: SCNTextureSource unexpected SKScene", v40, 2u);
      }
    }

    [v31 updateAtTime:v30];
    if (C3DLinearRenderingIsEnabled())
    {
      v38 = [mTLTextureCache newTextureViewWithPixelFormat:SCNMTLPixelFormatNonSRGBVariant(objc_msgSend(mTLTextureCache, "pixelFormat"))];
      [v31 renderToTexture:v38 commandQueue:-[SCNMTLRenderContext commandQueue](RenderContext)];

      if (!v32)
      {
LABEL_18:
        *time = v30;
LABEL_21:
        v33 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      [v31 renderToTexture:mTLTextureCache commandQueue:-[SCNMTLRenderContext commandQueue](RenderContext)];
      if (!v32)
      {
        goto LABEL_18;
      }
    }

    [(SKScene *)v16 _notifyNextDirtyState];
    goto LABEL_21;
  }

  v34 = scn_default_log(0, v15);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSpriteKitSource textureWithEngineContext:v34 textureSampler:? nextFrameTime:?];
  }

  return 0;
}

@end