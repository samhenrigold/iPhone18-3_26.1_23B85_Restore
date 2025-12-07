@interface CCUIPerformanceTraceModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIPerformanceTraceModule

- (id)contentViewControllerForContext:(id)context
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v5 = objc_alloc_init(CCUIPerformanceTraceModuleViewController);
    v7 = objc_msgSend_ccui_bundleForModuleInstance_(MEMORY[0x29EDB9F48], v6, self);
    v10 = objc_msgSend_ccui_displayName(v7, v8, v9);
    objc_msgSend_setTitle_(v5, v11, v10);

    v12 = self->_viewController;
    self->_viewController = v5;
    v13 = v5;

    objc_msgSend_setContentModuleContext_(self->_viewController, v14, self->_contentModuleContext);
    viewController = self->_viewController;
  }

  return viewController;
}

@end