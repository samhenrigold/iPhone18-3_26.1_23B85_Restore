@interface _SCNCoderMaterialPropertyTextureProviderHelper
- (__C3DEngineContext)initWithDevice:(void *)device;
- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture;
- (void)dealloc;
@end

@implementation _SCNCoderMaterialPropertyTextureProviderHelper

- (void)dealloc
{
  CFRelease(self->_engineContext);
  v3.receiver = self;
  v3.super_class = _SCNCoderMaterialPropertyTextureProviderHelper;
  [(_SCNCoderMaterialPropertyTextureProviderHelper *)&v3 dealloc];
}

- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture
{
  if (token)
  {
    *token = 0;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105___SCNCoderMaterialPropertyTextureProviderHelper_cachedTextureWithURL_token_didFallbackToDefaultTexture___block_invoke;
  v19[3] = &unk_2782FD090;
  v19[4] = l;
  IfNeededForSource = C3DImageCopyCachedImageOrCreateIfNeededForSource(l, 1, v19);
  v11 = IfNeededForSource;
  if (token)
  {
    *token = IfNeededForSource;
  }

  v18 = 0;
  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, v10);
  resourceManager = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v15 = [resourceManager renderResourceForImage:v11 sampler:C3DTextureSamplerGetDefault(resourceManager options:v14) engineContext:0 didFallbackToDefaultTexture:{self->_engineContext, &v18}];
  CFAutorelease(v11);
  if (v18)
  {
    resourceManagerMonitor = [(SCNMTLRenderContext *)RenderContext resourceManagerMonitor];
    if (resourceManagerMonitor)
    {
      [resourceManagerMonitor renderContext:RenderContext didFallbackToDefaultTextureForSource:l message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"SCNMaterialPropertyTextureProviderHelper could not find texture for %@", l)}];
    }
  }

  if (texture)
  {
    *texture = v18;
  }

  return v15;
}

- (__C3DEngineContext)initWithDevice:(void *)device
{
  if (!device)
  {
    return 0;
  }

  v6.receiver = device;
  v6.super_class = _SCNCoderMaterialPropertyTextureProviderHelper;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    v3[1] = C3DEngineContextCreateWithOptions(0, a2);
    v4 = [[SCNMTLRenderContext alloc] initWithDevice:a2 engineContext:v3[1]];
    C3DEngineContextSetRenderContext(v3[1], v4);
  }

  return v3;
}

@end