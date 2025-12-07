@interface VFXMaterialPropertyTextureProviderSource
- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)connectToProxy:(__CFXImageProxy *)proxy;
- (void)dealloc;
- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time;
- (void)setTextureProvider:(id)provider;
@end

@implementation VFXMaterialPropertyTextureProviderSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMaterialPropertyTextureProviderSource;
  [(VFXTextureSource *)&v3 dealloc];
}

- (void)setTextureProvider:(id)provider
{
  if (self->_textureProvider != provider)
  {

    self->_texture = 0;
    self->_textureProvider = provider;
  }
}

- (void)connectToProxy:(__CFXImageProxy *)proxy
{
  sub_1AF27679C(proxy, self, 0);
  v4[0] = xmmword_1F24EBDC8;
  v4[1] = *&off_1F24EBDD8;
  sub_1AF276824(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  self->_engineContext = context;
  v8 = sub_1AF12E2AC(context, a2);
  v11 = v8;
  if (self->_texture)
  {
    v12 = 0;
  }

  else
  {
    textureProvider = self->_textureProvider;
    v14 = objc_msgSend_device(v8, v9, v10);
    self->_texture = objc_msgSend_newTextureForDevice_(textureProvider, v15, v14);
    v12 = 1;
  }

  status->var0 = v12;
  status->var1 = 1;
  sub_1AF28B814(self->_textureProvider, self->_texture, self, v11);
  return self->_texture;
}

- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time
{
  self->_engineContext = context;
  v6 = sub_1AF12E2AC(context, a2);
  textureProvider = self->_textureProvider;
  texture = self->_texture;

  sub_1AF28B814(textureProvider, texture, self, v6);
}

- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture
{
  if (token)
  {
    *token = 0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1AF28BAD4;
  v28[3] = &unk_1E7A7E0E8;
  v28[4] = l;
  v9 = sub_1AF198494(l, 1, v28);
  v11 = v9;
  if (token)
  {
    *token = v9;
  }

  v27 = 0;
  v12 = sub_1AF12E2AC(self->_engineContext, v10);
  v15 = objc_msgSend_resourceManager(v12, v13, v14);
  v16 = sub_1AF1C4F6C();
  v18 = objc_msgSend_renderResourceForImage_sampler_options_engineContext_didFallbackToDefaultTexture_(v15, v17, v11, v16, 0, self->_engineContext, &v27);
  CFAutorelease(v11);
  if (v27)
  {
    v21 = objc_msgSend_resourceManagerMonitor(v12, v19, v20);
    if (v21)
    {
      v23 = v21;
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"VFXMaterialPropertyTextureProviderHelper could not find texture for %@", l);
      objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v23, v25, v12, l, v24);
    }
  }

  if (texture)
  {
    *texture = v27;
  }

  return v18;
}

@end