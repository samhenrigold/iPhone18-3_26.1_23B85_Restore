@interface VFXCoreAnimationSource
- (BOOL)isOpaque;
- (id)textureSource;
- (void)dealloc;
- (void)setLayer:(id)layer;
@end

@implementation VFXCoreAnimationSource

- (id)textureSource
{
  v3 = objc_alloc_init(VFXTextureCoreAnimationSource);
  v6 = objc_msgSend_layer(self, v4, v5);
  objc_msgSend_setLayer_(v3, v7, v6);
  return v3;
}

- (BOOL)isOpaque
{
  v3 = objc_msgSend_layer(self, a2, v2);

  return objc_msgSend_isOpaque(v3, v4, v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXCoreAnimationSource;
  [(VFXCoreAnimationSource *)&v3 dealloc];
}

- (void)setLayer:(id)layer
{
  layer = self->_layer;
  if (layer != layer)
  {

    self->_layer = layer;
  }
}

@end