@interface DDAutoCloseNavigationController
- (DDAction)target;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation DDAutoCloseNavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  target = [(DDAutoCloseNavigationController *)self target];
  delegate = [target delegate];
  target2 = [(DDAutoCloseNavigationController *)self target];
  [delegate actionDidFinish:target2 shouldDismiss:0];

  v8.receiver = self;
  v8.super_class = DDAutoCloseNavigationController;
  [(DDAutoCloseNavigationController *)&v8 viewDidDisappear:disappearCopy];
}

- (DDAction)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end