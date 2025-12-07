@interface AXDisplayManagerObjcWrapper
- (AXDisplayManagerObjcWrapper)initWithService:(id)service;
- (AXUIService)service;
- (void)addContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled completion:(id)completion;
- (void)removeContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled completion:(id)completion;
@end

@implementation AXDisplayManagerObjcWrapper

- (AXDisplayManagerObjcWrapper)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = AXDisplayManagerObjcWrapper;
  v5 = [(AXDisplayManagerObjcWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXDisplayManagerObjcWrapper *)v5 setService:serviceCopy];
  }

  return v6;
}

- (void)addContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  controllerCopy = controller;
  v11 = +[AXUIDisplayManager sharedDisplayManager];
  service = [(AXDisplayManagerObjcWrapper *)self service];
  [v11 addContentViewController:controllerCopy withUserInteractionEnabled:enabledCopy forService:service context:0 userInterfaceStyle:1 completion:completionCopy];
}

- (void)removeContentViewController:(id)controller withUserInteractionEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  controllerCopy = controller;
  v11 = +[AXUIDisplayManager sharedDisplayManager];
  service = [(AXDisplayManagerObjcWrapper *)self service];
  [v11 removeContentViewController:controllerCopy withUserInteractionEnabled:enabledCopy forService:service context:0 completion:completionCopy];
}

- (AXUIService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end