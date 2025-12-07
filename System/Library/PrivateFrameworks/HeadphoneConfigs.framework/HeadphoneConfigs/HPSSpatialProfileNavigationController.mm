@interface HPSSpatialProfileNavigationController
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation HPSSpatialProfileNavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  v14.receiver = self;
  v14.super_class = HPSSpatialProfileNavigationController;
  v4 = [(HPSSpatialProfileNavigationController *)&v14 viewDidAppear:disappear];
  v5 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Navigation Controller viewDidDisappear", v13, 2u);
  }

  v6 = [(HPSSpatialProfileNavigationController *)self popToRootViewControllerAnimated:0];
  topViewController = [(HPSSpatialProfileNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Top View Controller is HPSSpatialProfileEnrollmentController", v13, 2u);
    }

    topViewController2 = [(HPSSpatialProfileNavigationController *)self topViewController];
    [topViewController2 viewDidDisappear:1];
  }

  dismissalHandler = self->dismissalHandler;
  if (dismissalHandler)
  {
    dismissalHandler[2]();
  }
}

@end