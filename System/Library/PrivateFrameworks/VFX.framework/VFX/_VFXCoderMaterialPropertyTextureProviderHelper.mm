@interface _VFXCoderMaterialPropertyTextureProviderHelper
- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture;
- (void)dealloc;
@end

@implementation _VFXCoderMaterialPropertyTextureProviderHelper

- (void)dealloc
{
  v3 = sub_1AF13099C(self->_engineContext);
  CFXGPUDeviceGetMTLDevice(v3);
  sub_1AF20C174(VFXMTLResourceManager);
  CFRelease(self->_engineContext);
  v4.receiver = self;
  v4.super_class = _VFXCoderMaterialPropertyTextureProviderHelper;
  [(_VFXCoderMaterialPropertyTextureProviderHelper *)&v4 dealloc];
}

- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture
{
  if (token)
  {
    *token = 0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1AF28BC98;
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