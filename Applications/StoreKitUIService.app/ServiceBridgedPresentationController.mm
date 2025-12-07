@interface ServiceBridgedPresentationController
+ (id)sharedController;
- (BOOL)saveViewController:(id)controller animated:(BOOL)animated presentationBounds:(CGRect)bounds proxyHandler:(id)handler;
- (id)removeSavedViewController;
@end

@implementation ServiceBridgedPresentationController

+ (id)sharedController
{
  if (qword_100069538 != -1)
  {
    sub_10002C1D0();
  }

  v3 = qword_100069530;

  return v3;
}

- (id)removeSavedViewController
{
  savedViewController = [(ServiceBridgedPresentationController *)self savedViewController];
  [(ServiceBridgedPresentationController *)self setSavedViewController:0];

  return savedViewController;
}

- (BOOL)saveViewController:(id)controller animated:(BOOL)animated presentationBounds:(CGRect)bounds proxyHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  animatedCopy = animated;
  controllerCopy = controller;
  handlerCopy = handler;
  savedViewController = [(ServiceBridgedPresentationController *)self savedViewController];

  if (!savedViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      height = [[ServicePresentationSafariViewController alloc] initWithSafariViewController:controllerCopy proxyHandler:handlerCopy];
    }

    else
    {
      height = [[ServicePresentationViewController alloc] initWithChildViewController:controllerCopy animated:animatedCopy presentationBounds:handlerCopy proxyHandler:x, y, width, height];
    }

    v17 = height;
    [(ServiceBridgedPresentationController *)self setSavedViewController:height];
  }

  return savedViewController == 0;
}

@end