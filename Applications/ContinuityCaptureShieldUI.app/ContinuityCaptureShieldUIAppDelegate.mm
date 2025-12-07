@interface ContinuityCaptureShieldUIAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation ContinuityCaptureShieldUIAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = sub_100006DC0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = 136315650;
    v12 = "[ContinuityCaptureShieldUIAppDelegate application:didFinishLaunchingWithOptions:]";
    v13 = 2048;
    selfCopy2 = self;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> add ui state tracker %@", &v11, 0x20u);
  }

  v8 = sub_100006DC0(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = +[ContinuityCaptureShieldUIBackgroundPauseManager sharedInstance];
    v11 = 136315650;
    v12 = "[ContinuityCaptureShieldUIAppDelegate application:didFinishLaunchingWithOptions:]";
    v13 = 2048;
    selfCopy2 = self;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: <%p> add background pause event manager %@", &v11, 0x20u);
  }

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];
  v8 = [v6 initWithName:0 sessionRole:role];

  role2 = [sessionCopy role];
  v10 = [role2 isEqualToString:UIWindowSceneSessionRoleApplication];

  if ((v10 & 1) != 0 || ([sessionCopy role], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", _UIWindowSceneSessionTypeCoverSheet), v11, v12))
  {
    [v8 setDelegateClass:objc_opt_class()];
  }

  return v8;
}

@end