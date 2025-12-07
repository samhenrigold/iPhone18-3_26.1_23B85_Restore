@interface VFXUIKitSource
- (VFXUIKitSource)init;
- (id)prepareWindowIfNeeded;
- (id)textureSource;
- (void)dealloc;
@end

@implementation VFXUIKitSource

- (VFXUIKitSource)init
{
  v3.receiver = self;
  v3.super_class = VFXUIKitSource;
  return [(VFXUIKitSource *)&v3 init];
}

- (id)prepareWindowIfNeeded
{
  if (!self->_uiWindow && !self->_windowPreparing)
  {
    self->_windowPreparing = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v5 = sub_1AF28DD50;
    v6 = &unk_1E7A7A770;
    selfCopy = self;
    if (pthread_main_np() == 1)
    {
      (v5)(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  return self->_uiWindow;
}

- (id)textureSource
{
  if (!objc_msgSend_prepareWindowIfNeeded(self, a2, v2))
  {
    return 0;
  }

  v4 = objc_alloc_init(VFXTextureUIKitSource);
  v7 = objc_msgSend_uiView(self, v5, v6);
  objc_msgSend_setUiView_(v4, v8, v7);
  v11 = objc_msgSend_uiWindow(self, v9, v10);
  objc_msgSend_setUiWindow_(v4, v12, v11);
  objc_msgSend_setUiWindowLayer_(v4, v13, self->_uiWindowLayer);
  objc_msgSend_setIsOpaque_(v4, v14, self->_isOpaque);
  objc_msgSend_setSource_(v4, v15, self);
  objc_msgSend_setup(v4, v16, v17);
  objc_msgSend_registerUIKitSource_(_VFXUIKitSourceRegistry, v18, v4);
  return v4;
}

- (void)dealloc
{
  uiWindow = self->_uiWindow;
  uiView = self->_uiView;
  self->_uiWindow = 0;
  self->_uiView = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF28E034;
  block[3] = &unk_1E7A7E198;
  block[4] = uiWindow;
  block[5] = uiView;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v5.receiver = self;
  v5.super_class = VFXUIKitSource;
  [(VFXUIKitSource *)&v5 dealloc];
}

@end