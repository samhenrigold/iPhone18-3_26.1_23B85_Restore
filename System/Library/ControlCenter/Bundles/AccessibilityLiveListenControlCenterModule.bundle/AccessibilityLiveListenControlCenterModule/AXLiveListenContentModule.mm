@interface AXLiveListenContentModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation AXLiveListenContentModule

- (id)contentViewControllerForContext:(id)context
{
  moduleViewController = self->_moduleViewController;
  if (!moduleViewController)
  {
    v5 = objc_alloc_init(AXLiveListenModuleViewController);
    v6 = self->_moduleViewController;
    self->_moduleViewController = v5;

    moduleViewController = self->_moduleViewController;
  }

  v7 = objc_msgSend_contentModuleContext(self, a2, context);
  objc_msgSend_setContentModuleContext_(moduleViewController, v8, v7);

  v9 = self->_moduleViewController;

  return v9;
}

@end