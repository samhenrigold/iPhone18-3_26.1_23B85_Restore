@interface VOTQuickSettingsViewServiceAdaptorViewController
- (void)_dismiss;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation VOTQuickSettingsViewServiceAdaptorViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VOTQuickSettingsViewServiceAdaptorViewController;
  [(VOTQuickSettingsViewServiceAdaptorViewController *)&v5 viewDidLoad];
  v3 = objc_alloc_init(VOTQuickSettingsViewController);
  [(VOTQuickSettingsViewServiceAdaptorViewController *)self setRootViewController:v3];

  rootViewController = [(VOTQuickSettingsViewServiceAdaptorViewController *)self rootViewController];
  [rootViewController setDelegate:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = VOTQuickSettingsViewServiceAdaptorViewController;
  [(VOTQuickSettingsViewServiceAdaptorViewController *)&v9 viewDidAppear:appear];
  [(VOTQuickSettingsViewServiceAdaptorViewController *)self _setupRemoteProxy];
  v4 = [UINavigationController alloc];
  rootViewController = [(VOTQuickSettingsViewServiceAdaptorViewController *)self rootViewController];
  v6 = [v4 initWithRootViewController:rootViewController];

  [v6 setModalPresentationStyle:2];
  [v6 setModalTransitionStyle:2];
  rootViewController2 = [(VOTQuickSettingsViewServiceAdaptorViewController *)self rootViewController];
  presentationController = [v6 presentationController];
  [presentationController setDelegate:rootViewController2];

  [(VOTQuickSettingsViewServiceAdaptorViewController *)self presentViewController:v6 animated:1 completion:&stru_100028710];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VOTQuickSettingsViewServiceAdaptorViewController;
  [(VOTQuickSettingsViewServiceAdaptorViewController *)&v4 viewDidDisappear:disappear];
  [(VOTQuickSettingsViewServiceAdaptorViewController *)self _dismiss];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = VOTLogQuickSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100012B0C(self, contextCopy, v8);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = VOTLogQuickSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100012BC0(self, contextCopy, v8);
  }

  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"data"];

  v15 = 0;
  v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v15];
  v12 = v15;
  if (v12)
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100012C90(v12, v13);
    }
  }

  rootViewController = [(VOTQuickSettingsViewServiceAdaptorViewController *)self rootViewController];
  [rootViewController setData:v11];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_setupRemoteProxy
{
  _remoteViewControllerProxy = [(VOTQuickSettingsViewServiceAdaptorViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDismissalAnimationStyle:2];
  [_remoteViewControllerProxy setOrientationChangedEventsEnabled:0];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:0];
}

- (void)_dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001C60;
  v2[3] = &unk_100028758;
  v2[4] = self;
  [(VOTQuickSettingsViewServiceAdaptorViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

@end