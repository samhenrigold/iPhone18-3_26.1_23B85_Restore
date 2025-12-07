@interface SCNTextureOffscreenRenderingSource
- (__C3DTexture)__prepareFramebufferWithSize:(CGSize)size withEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler needsStencil:(BOOL)stencil;
- (void)_bindFramebuffer:(__C3DEngineContext *)framebuffer;
- (void)_buildMipmaps:(__C3DEngineContext *)mipmaps;
- (void)_createFramebufferWithEngineContext:(__C3DEngineContext *)context size:(CGSize)size;
- (void)_unbindFramebuffer:(__C3DEngineContext *)framebuffer;
- (void)cleanup:(__C3DRendererContext *)cleanup;
@end

@implementation SCNTextureOffscreenRenderingSource

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  framebuffer = self->_framebuffer;
  if (framebuffer)
  {
    C3DRendererContextDeleteFramebuffer(cleanup, framebuffer, 1);
    CFRelease(self->_framebuffer);
  }

  self->_framebufferSize.width = 0.0;
}

- (void)_createFramebufferWithEngineContext:(__C3DEngineContext *)context size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = ![(SCNTextureSource *)self supportsMetal]&& C3DEngineContextGetRenderContext(context, v6) != 0;
  v8 = [(SCNTextureSource *)self prefersGL3]|| v7;
  v9 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
  v10 = v9;
  framebuffer = self->_framebuffer;
  if (framebuffer)
  {
    C3DRendererContextDeleteFramebuffer(v9, framebuffer, 1);
    v12 = self->_framebuffer;
    if (v12)
    {
      CFRelease(v12);
      self->_framebuffer = 0;
    }
  }

  if ((v8 & 1) != 0 && (width & 0xB) != 0)
  {
    width = ((width & 0xFFFFFFFC) + 4);
  }

  v13 = C3DFramebufferCreate();
  self->_framebuffer = v13;
  v14.f64[0] = width;
  v14.f64[1] = height;
  C3DFramebufferSetSize(v13, v15, COERCE_DOUBLE(vcvt_f32_f64(vrndpq_f64(v14))));
  C3DRenderTargetDescriptionMake(1u, 1);
  C3DFramebufferAddRenderTargetDescription(self->_framebuffer, 0);
  v16 = self->_framebuffer;

  C3DRendererContextSetupFramebuffer(v10, v16);
}

- (__C3DTexture)__prepareFramebufferWithSize:(CGSize)size withEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler needsStencil:(BOOL)stencil
{
  height = size.height;
  width = size.width;
  p_framebufferSize = &self->_framebufferSize;
  if (size.width != self->_framebufferSize.width || size.height != self->_framebufferSize.height)
  {
    [(SCNTextureSource *)self setMTLTextureCache:0, sampler, stencil];
    [(SCNTextureSource *)self setGlTextureCache:0];
    p_framebufferSize->width = width;
    p_framebufferSize->height = height;
    WrapModeS = C3DTextureSamplerGetWrapModeS(sampler, v13);
    WrapModeT = C3DTextureSamplerGetWrapModeT(sampler, v15);
    if ((WrapModeS & 0xFFFFFFFD) != 1 || (WrapModeT & 0xFFFFFFFD) != 1 || C3DTextureSamplerUseMipmaps(sampler, v17))
    {
      width = C3DMakePowerOfTwo(width);
      height = C3DMakePowerOfTwo(height);
    }

    [(SCNTextureOffscreenRenderingSource *)self _createFramebufferWithEngineContext:context size:width, height];
  }

  framebuffer = self->_framebuffer;

  return C3DFramebufferGetTextureWithSlot(framebuffer, 0);
}

- (void)_buildMipmaps:(__C3DEngineContext *)mipmaps
{
  if (!C3DEngineContextGetRenderContext(mipmaps, a2))
  {
    v5 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:mipmaps];
    TextureWithSlot = C3DFramebufferGetTextureWithSlot(self->_framebuffer, 0);
    if (TextureWithSlot)
    {
      v7 = TextureWithSlot;
      if (!C3DTextureGetIOSurface(TextureWithSlot))
      {
        TargetMode = C3DTextureGetTargetMode(v7, v8);
        ID = C3DTextureGetID(v7, v10);
        _C3DRendererContextBindTextureGL(v5, TargetMode, ID);

        glGenerateMipmap(TargetMode);
      }
    }
  }
}

- (void)_bindFramebuffer:(__C3DEngineContext *)framebuffer
{
  v4 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:framebuffer];
  framebuffer = self->_framebuffer;

  C3DRendererContextBindFramebuffer(v4, framebuffer);
}

- (void)_unbindFramebuffer:(__C3DEngineContext *)framebuffer
{
  v3 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:framebuffer];

  C3DRendererContextUnbindFramebuffer(v3, v4);
}

@end