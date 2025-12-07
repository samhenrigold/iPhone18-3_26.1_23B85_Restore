@interface CARSettingsAppDelegate
+ (CARSettingsAppDelegate)sharedDelegate;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
@end

@implementation CARSettingsAppDelegate

+ (CARSettingsAppDelegate)sharedDelegate
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  return delegate;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = objc_alloc_init(CARCarManager);
  carManager = self->_carManager;
  self->_carManager = v5;

  v7 = objc_alloc_init(CARSignpostManager);
  signpostManager = self->_signpostManager;
  self->_signpostManager = v7;

  v10 = sub_10001C784(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10009169C(v10);
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 removeObjectForKey:@"CARLastPanelKey"];

  v12 = +[UNUserNotificationCenter currentNotificationCenter];
  [v12 setDelegate:self];

  v13 = [NSSet alloc];
  v14 = [UNNotificationCategory categoryWithIdentifier:@"CarPlaySettings" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:2];
  v19 = v14;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  v16 = [v13 initWithArray:v15];

  v17 = +[UNUserNotificationCenter currentNotificationCenter];
  [v17 setNotificationCategories:v16];

  +[CARSignpostManager emitLaunched];
  return 1;
}

@end