@interface PasscodeChangeNavigationController
- (PasscodeChangeNavigationControllerDelegate)customDelegate;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation PasscodeChangeNavigationController

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = PasscodeChangeNavigationController;
  [(PasscodeChangeNavigationController *)&v6 pushViewController:controller animated:animated];
  if (!self->_hasReportedFirstPush)
  {
    self->_hasReportedFirstPush = 1;
    customDelegate = [(PasscodeChangeNavigationController *)self customDelegate];
    [customDelegate navigationControllerDidPushFirstController:self];
  }
}

- (PasscodeChangeNavigationControllerDelegate)customDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customDelegate);

  return WeakRetained;
}

@end