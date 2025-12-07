@interface BCSAppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)application:(id)application didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
@end

@implementation BCSAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [BCSSecureWindow alloc];
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v7 = [(BCSSecureWindow *)v5 initWithFrame:?];

  [(BCSAppDelegate *)self setWindow:v7];
  [(BCSSecureWindow *)v7 makeKeyAndVisible];
  v8 = objc_alloc_init(BCSRootViewController);
  rootViewController = self->_rootViewController;
  self->_rootViewController = v8;

  [(BCSSecureWindow *)v7 setRootViewController:self->_rootViewController];
  return 1;
}

- (void)applicationWillResignActive:(id)active
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  suspendCapturing = [rootViewController suspendCapturing];
  v7 = sub_100001D1C(suspendCapturing, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "applicationWillResignActive:", v8, 2u);
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  resumeCapturing = [rootViewController resumeCapturing];
  v7 = sub_100001D1C(resumeCapturing, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "applicationDidBecomeActive:", v8, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  applicationDidEnterBackground = [rootViewController applicationDidEnterBackground];
  v7 = sub_100001D1C(applicationDidEnterBackground, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "applicationDidEnterBackground:", v8, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  window = [(BCSAppDelegate *)self window];
  rootViewController = [window rootViewController];

  applicationWillEnterForeground = [rootViewController applicationWillEnterForeground];
  v7 = sub_100001D1C(applicationWillEnterForeground, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "applicationWillEnterForeground:", v8, 2u);
  }
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  activityCopy = activity;
  v7 = [(BCSRootViewController *)self->_rootViewController continueUserActivity:activityCopy];
  v9 = sub_100001D1C(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = activityCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "continueUserActivity: %{public}@", &v11, 0xCu);
  }

  return 1;
}

- (void)application:(id)application didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v9 = sub_100001D1C(errorCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = typeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "didFailToContinueUserActivityWithType: %{public}@", &v10, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004558(errorCopy);
  }
}

@end