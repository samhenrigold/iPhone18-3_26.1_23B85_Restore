@interface VFXTextureUIKitSource
- (CGSize)layerSizeInPixels;
- (double)layerContentsScaleFactor;
- (void)_layerTreeDidUpdate;
- (void)dealloc;
- (void)setup;
@end

@implementation VFXTextureUIKitSource

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  uiWindow = self->_uiWindow;
  uiView = self->_uiView;
  self->_uiWindow = 0;
  self->_uiView = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF28E1B0;
  block[3] = &unk_1E7A7E198;
  block[4] = uiWindow;
  block[5] = uiView;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v8.receiver = self;
  v8.super_class = VFXTextureUIKitSource;
  [(VFXTextureCoreAnimationSource *)&v8 dealloc];
}

- (void)setup
{
  v4 = objc_msgSend_superlayer(self->_uiWindowLayer, a2, v2);
  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);

  objc_msgSend_addObserver_selector_name_object_(v7, v8, self, sel__layerTreeDidUpdate, @"VFXLayerTreeDidChange", v4);
}

- (double)layerContentsScaleFactor
{
  v3 = objc_msgSend_mainScreen(MEMORY[0x1E69DCEB0], a2, v2);

  objc_msgSend_scale(v3, v4, v5);
  return result;
}

- (CGSize)layerSizeInPixels
{
  objc_msgSend_bounds(self->_uiWindowLayer, a2, v2);
  v5 = v4;
  v7 = v6;
  objc_msgSend_layerContentsScaleFactor(self, v8, v9);
  v11 = v10 * v7;
  if (v10 == 0.0)
  {
    v11 = v7;
    v12 = v5;
  }

  else
  {
    v12 = v10 * v5;
  }

  result.height = v11;
  result.width = v12;
  return result;
}

- (void)_layerTreeDidUpdate
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  source = self->_source;

  objc_msgSend_postNotificationName_object_(v4, v5, @"VFXUITreeDidChange", source);
}

@end