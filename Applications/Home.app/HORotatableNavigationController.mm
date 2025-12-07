@interface HORotatableNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HORotatableNavigationController

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HORotatableNavigationController;
  [(HORotatableNavigationController *)&v5 viewDidAppear:appear];
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [objc_opt_class() attemptRotationToDeviceOrientation];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (![(HORotatableNavigationController *)self isBeingPresented])
  {
    return 30;
  }

  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end