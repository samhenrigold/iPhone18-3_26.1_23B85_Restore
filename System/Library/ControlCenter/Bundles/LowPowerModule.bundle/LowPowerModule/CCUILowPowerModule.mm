@interface CCUILowPowerModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUILowPowerModule

- (id)contentViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(CCUILowPowerModuleViewController);
  objc_msgSend_setContentModuleContext_(v4, v5, self->_contentModuleContext);

  return v4;
}

@end