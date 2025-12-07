@interface CCUIFlashlightModule
- (id)backgroundViewControllerForContext:(id)context;
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIFlashlightModule

- (id)contentViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(CCUIFlashlightModuleViewController);
  v6 = objc_msgSend_ccui_bundleForModuleInstance_(MEMORY[0x29EDB9F48], v5, self);
  v9 = objc_msgSend_ccui_displayName(v6, v7, v8);
  objc_msgSend_setTitle_(v4, v10, v9);

  v12 = objc_msgSend_systemImageNamed_(MEMORY[0x29EDC7AC8], v11, @"flashlight.off.fill");
  objc_msgSend_setGlyphImage_(v4, v13, v12);

  v15 = objc_msgSend_systemImageNamed_(MEMORY[0x29EDC7AC8], v14, @"flashlight.on.fill");
  objc_msgSend_setSelectedGlyphImage_(v4, v16, v15);

  v19 = objc_msgSend_systemIndigoColor(MEMORY[0x29EDC7A00], v17, v18);
  objc_msgSend_setSelectedGlyphColor_(v4, v20, v19);

  viewController = self->_viewController;
  p_viewController = &self->_viewController;
  if (!viewController)
  {
    objc_storeStrong(p_viewController, v4);
  }

  return v4;
}

- (id)backgroundViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(CCUIFlashlightBackgroundViewController);
  backgroundViewController = self->_backgroundViewController;
  p_backgroundViewController = &self->_backgroundViewController;
  if (!backgroundViewController)
  {
    objc_storeStrong(p_backgroundViewController, v4);
  }

  return v4;
}

@end