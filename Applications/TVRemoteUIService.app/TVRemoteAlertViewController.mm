@interface TVRemoteAlertViewController
- (BOOL)isWakingToLockScreen;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)_dismissPresentedContentAnimated:(BOOL)animated;
- (void)alertDidFinishDismissal:(BOOL)dismissal;
- (void)alertDidFinishPresentation:(BOOL)presentation;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRemoteAlertViewController

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v48 viewDidLoad];
  traitCollection = [(TVRemoteAlertViewController *)self traitCollection];
  v4 = +[TVRemoteAlertVisualStyleProviding visualStyleForIdiom:](TVRemoteAlertVisualStyleProviding, "visualStyleForIdiom:", [traitCollection userInterfaceIdiom]);
  [(TVRemoteAlertViewController *)self setVisualStyle:v4];

  visualStyle = [(TVRemoteAlertViewController *)self visualStyle];
  backgroundMaterialView = [visualStyle backgroundMaterialView];
  [(TVRemoteAlertViewController *)self setBackgroundMaterialView:backgroundMaterialView];

  visualStyle2 = [(TVRemoteAlertViewController *)self visualStyle];
  LODWORD(backgroundMaterialView) = [visualStyle2 allowsTapToDismiss];

  if (backgroundMaterialView)
  {
    v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_dismiss"];
    backgroundMaterialView2 = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [backgroundMaterialView2 addGestureRecognizer:v8];
  }

  v10 = objc_alloc_init(TVRUIHintsViewController);
  [(TVRemoteAlertViewController *)self setHintsViewController:v10];

  view = [(TVRemoteAlertViewController *)self view];
  [view bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  hintsViewController = [(TVRemoteAlertViewController *)self hintsViewController];
  view2 = [hintsViewController view];
  [view2 setFrame:{v13, v15, v17, v19}];

  v23 = _TVRUIServiceLog(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
    *buf = 138412290;
    v50 = remoteControlViewController;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Creating new RemoteViewController. Existing %@", buf, 0xCu);
  }

  v25 = objc_alloc_init(TVRUIRemoteViewController);
  [(TVRemoteAlertViewController *)self setRemoteControlViewController:v25];

  hintsViewController2 = [(TVRemoteAlertViewController *)self hintsViewController];
  remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController2 setDelegate:hintsViewController2];

  visualStyle3 = [(TVRemoteAlertViewController *)self visualStyle];
  view3 = [(TVRemoteAlertViewController *)self view];
  [visualStyle3 frameForParentView:view3];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  remoteControlViewController3 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view4 = [remoteControlViewController3 view];
  [view4 setFrame:{v31, v33, v35, v37}];

  visualStyle4 = [(TVRemoteAlertViewController *)self visualStyle];
  [visualStyle4 maximizedCornerRadius];
  v42 = v41;
  remoteControlViewController4 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController4 setBackgroundCornerRadius:v42];

  remoteControlViewController5 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view5 = [remoteControlViewController5 view];
  [view5 setClipsToBounds:1];

  remoteControlViewController6 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [(TVRemoteAlertViewController *)self bs_addChildViewController:remoteControlViewController6];

  hintsViewController3 = [(TVRemoteAlertViewController *)self hintsViewController];
  [(TVRemoteAlertViewController *)self bs_addChildViewController:hintsViewController3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v7 viewWillAppear:appear];
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v4 = TVRViewServiceWillAppearNotificationName;
  [v3 postNotificationName:TVRViewServiceWillAppearNotificationName object:0];

  v6 = _TVRUIServiceLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote Alert posted NSDistributedNotifiction: %{public}@", buf, 0xCu);
  }
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v28 viewWillLayoutSubviews];
  visualStyle = [(TVRemoteAlertViewController *)self visualStyle];
  view = [(TVRemoteAlertViewController *)self view];
  [visualStyle frameForParentView:view];
  v6 = v5;
  v8 = v7;

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view2 = [remoteControlViewController view];
  [view2 setBounds:{0.0, 0.0, v6, v8}];

  view3 = [(TVRemoteAlertViewController *)self view];
  [view3 bounds];
  v12 = CGRectGetWidth(v29) * 0.5;
  view4 = [(TVRemoteAlertViewController *)self view];
  [view4 bounds];
  v14 = CGRectGetHeight(v30) * 0.5;
  remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view5 = [remoteControlViewController2 view];
  [view5 setCenter:{v12, v14}];

  view6 = [(TVRemoteAlertViewController *)self view];
  [view6 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  hintsViewController = [(TVRemoteAlertViewController *)self hintsViewController];
  view7 = [hintsViewController view];
  [view7 setFrame:{v19, v21, v23, v25}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v44.receiver = self;
  v44.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v44 viewDidAppear:appear];
  v4 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  view = [(TVRemoteAlertViewController *)self view];
  [v4 _setFromView:view];

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view2 = [remoteControlViewController view];
  [v4 _setToView:view2];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = __45__TVRemoteAlertViewController_viewDidAppear___block_invoke;
  v43[3] = &unk_100018AE0;
  v43[4] = self;
  [v4 _setCompletionHandler:v43];
  isWakingToLockScreen = [(TVRemoteAlertViewController *)self isWakingToLockScreen];
  if (isWakingToLockScreen)
  {
    v9 = _TVRUIServiceLog(isWakingToLockScreen);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Waking to lock screen, no animator being run", v42, 2u);
    }

    backgroundMaterialView = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [backgroundMaterialView setWeighting:1.0];

    view3 = [(TVRemoteAlertViewController *)self view];
    [view3 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    backgroundMaterialView2 = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [backgroundMaterialView2 setFrame:{v13, v15, v17, v19}];

    backgroundMaterialView3 = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [backgroundMaterialView3 setAutoresizingMask:18];

    view4 = [(TVRemoteAlertViewController *)self view];
    backgroundMaterialView4 = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [view4 insertSubview:backgroundMaterialView4 atIndex:0];

    [(TVRemoteAlertViewController *)self alertDidFinishPresentation:0];
  }

  else
  {
    v24 = _AXSReduceMotionEnabled();
    v25 = v24;
    v26 = _TVRUIServiceLog(v24);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Using TVRemoteAlertFadeAnimationController", v42, 2u);
      }

      v28 = [TVRUIAlertFadeAnimationController alloc];
      visualStyle = [(TVRemoteAlertViewController *)self visualStyle];
      v30 = [v28 initWithAnimationType:0 visualStyle:visualStyle];
    }

    else
    {
      if (v27)
      {
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Using TVRemoteAlertAnimationController", v42, 2u);
      }

      v31 = [TVRUIAlertAnimationController alloc];
      visualStyle2 = [(TVRemoteAlertViewController *)self visualStyle];
      v30 = [v31 initWithAnimationType:0 visualStyle:visualStyle2];

      visualStyle = [(TVRemoteAlertViewController *)self backgroundMaterialView];
      [v30 setBackgroundMaterialView:visualStyle];
    }

    [v30 animateTransition:v4];
  }

  presentationAction = [(TVRemoteAlertViewController *)self presentationAction];
  if (presentationAction)
  {
    v34 = presentationAction;
    presentationAction2 = [(TVRemoteAlertViewController *)self presentationAction];
    canSendResponse = [presentationAction2 canSendResponse];

    if (canSendResponse)
    {
      v38 = _TVRUIServiceLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Remote Alert presentation action provided, sending back animation response", v42, 2u);
      }

      v39 = objc_alloc_init(BSMutableSettings);
      [v39 setObject:&off_100019180 forSetting:1];
      v40 = [[BSActionResponse alloc] initWithInfo:v39 error:0];
      presentationAction3 = [(TVRemoteAlertViewController *)self presentationAction];
      [presentationAction3 sendResponse:v40];

      [(TVRemoteAlertViewController *)self setPresentationAction:0];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v7 viewWillDisappear:disappear];
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v4 = TVRViewServiceWillDisappearNotificationName;
  [v3 postNotificationName:TVRViewServiceWillDisappearNotificationName object:0];

  v6 = _TVRUIServiceLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote Alert posted NSDistributedNotifiction: %{public}@", buf, 0xCu);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(TVRemoteAlertViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)alertDidFinishPresentation:(BOOL)presentation
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v4 = TVRViewServiceDidAppearNotificationName;
  [v3 postNotificationName:TVRViewServiceDidAppearNotificationName object:0];

  v6 = _TVRUIServiceLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote Alert posted NSDistributedNotifiction: %{public}@", &v7, 0xCu);
  }
}

- (void)alertDidFinishDismissal:(BOOL)dismissal
{
  _remoteViewControllerProxy = [(TVRemoteAlertViewController *)self _remoteViewControllerProxy];
  v5 = _TVRUIServiceLog(_remoteViewControllerProxy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote Alert deactivating", &v17, 2u);
  }

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController willMoveToParentViewController:0];

  remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view = [remoteControlViewController2 view];
  [view removeFromSuperview];

  remoteControlViewController3 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController3 removeFromParentViewController];

  remoteControlViewController4 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController4 setView:0];

  v12 = _TVRUIServiceLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed child RemoteViewController from remote alert", &v17, 2u);
  }

  [_remoteViewControllerProxy deactivate];
  v13 = +[NSDistributedNotificationCenter defaultCenter];
  v14 = TVRViewServiceDidDisappearNotificationName;
  [v13 postNotificationName:TVRViewServiceDidDisappearNotificationName object:0];

  v16 = _TVRUIServiceLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Remote Alert posted NSDistributedNotifiction: %{public}@", &v17, 0xCu);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _TVRUIServiceLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote Alert -prepareForActivationWithContext: %{public}@", buf, 0xCu);
  }

  reason = [contextCopy reason];
  [(TVRemoteAlertViewController *)self setActivationReason:reason];

  v11 = _TVRUIServiceLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    activationReason = [(TVRemoteAlertViewController *)self activationReason];
    *buf = 138543362;
    v36 = activationReason;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Remote Alert activation reason: %{public}@", buf, 0xCu);
  }

  [(TVRemoteAlertViewController *)self setDeviceIdentifierType:0];
  if ([(TVRemoteAlertViewController *)self isWakingToLockScreen])
  {
    v13 = +[TVRCPreferredDeviceManager sharedInstance];
    preferredDevice = [v13 preferredDevice];
    identifier = [preferredDevice identifier];
    [(TVRemoteAlertViewController *)self setDeviceIdentifier:identifier];

    v16 = _TVRUIServiceLog([(TVRemoteAlertViewController *)self setLaunchContext:2]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier = [(TVRemoteAlertViewController *)self deviceIdentifier];
      deviceIdentifierType = [(TVRemoteAlertViewController *)self deviceIdentifierType];
      *buf = 138412546;
      v36 = deviceIdentifier;
      v37 = 2048;
      v38 = deviceIdentifierType;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Remote Alert is waking to lock screen, overriding with: device=%@, type=%ld", buf, 0x16u);
    }
  }

  deviceIdentifier2 = [(TVRemoteAlertViewController *)self deviceIdentifier];

  if (deviceIdentifier2)
  {
    deviceIdentifier3 = [(TVRemoteAlertViewController *)self deviceIdentifier];
    v21 = _TVRUIServiceLog(deviceIdentifier3);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      goto LABEL_18;
    }

    *buf = 138412290;
    v36 = deviceIdentifier3;
    v22 = "Specific device identifier specified to connect %@";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    goto LABEL_17;
  }

  if ([(TVRemoteAlertViewController *)self launchContext]== 11)
  {
    v21 = _TVRUIServiceLog(11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [TVRemoteAlertViewController prepareForActivationWithContext:v21 completion:?];
    }

    deviceIdentifier3 = 0;
    goto LABEL_17;
  }

  deviceIdentifier3 = [(TVRemoteAlertViewController *)self lastActiveEndpointIdentifier];
  v30 = _TVRUIServiceLog(deviceIdentifier3);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = deviceIdentifier3;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No specific device identifier specified checking last active endpoint %@", buf, 0xCu);
  }

  if (!deviceIdentifier3)
  {
    v31 = +[TVRCPreferredDeviceManager sharedInstance];
    preferredDevice2 = [v31 preferredDevice];
    deviceIdentifier3 = [preferredDevice2 identifier];

    v21 = _TVRUIServiceLog(v33);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v36 = deviceIdentifier3;
    v22 = "No last active endpoint specified checking last connected identifier %@";
    goto LABEL_12;
  }

LABEL_18:
  v24 = _TVRUIServiceLog(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifierType2 = [(TVRemoteAlertViewController *)self deviceIdentifierType];
    deviceType = [(TVRemoteAlertViewController *)self deviceType];
    launchContext = [(TVRemoteAlertViewController *)self launchContext];
    *buf = 138413058;
    v36 = deviceIdentifier3;
    v37 = 2048;
    v38 = deviceIdentifierType2;
    v39 = 2048;
    v40 = deviceType;
    v41 = 2048;
    v42 = launchContext;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Configuring RemoteControlViewController (deviceID=%@, deviceIdentifierType=%ld, deviceType=%ld, launchContext=%ld", buf, 0x2Au);
  }

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController configureWithDeviceIdentifier:deviceIdentifier3 identifierType:-[TVRemoteAlertViewController deviceIdentifierType](self deviceType:"deviceIdentifierType") launchContext:{-[TVRemoteAlertViewController deviceType](self, "deviceType"), -[TVRemoteAlertViewController launchContext](self, "launchContext")}];

  actions = [contextCopy actions];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __74__TVRemoteAlertViewController_prepareForActivationWithContext_completion___block_invoke;
  v34[3] = &unk_100018B08;
  v34[4] = self;
  [actions enumerateObjectsUsingBlock:v34];

  completionCopy[2](completionCopy);
}

void __74__TVRemoteAlertViewController_prepareForActivationWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:1];

  if (v5)
  {
    v7 = _TVRUIServiceLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote Alert received presentation animation action", buf, 2u);
    }

    [*(a1 + 32) setPresentationAction:v3];
  }

  v8 = [v3 info];
  v9 = [v8 objectForSetting:2];

  if (v9)
  {
    v11 = _TVRUIServiceLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Remote Alert received dismissal animation action", v12, 2u);
    }

    [*(a1 + 32) setDismissalAction:v3];
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _TVRUIServiceLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote Alert -configureWithContext: %{public}@", buf, 0xCu);
  }

  v9 = [(TVRemoteAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&__block_literal_global];
  if (v9)
  {
    v10 = [TVRViewServiceConfigContext alloc];
    userInfo = [contextCopy userInfo];
    v12 = [v10 _initWithUserInfo:userInfo];

    deviceIdentifier = [v12 deviceIdentifier];
    [(TVRemoteAlertViewController *)self setDeviceIdentifier:deviceIdentifier];

    v15 = _TVRUIServiceLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier2 = [(TVRemoteAlertViewController *)self deviceIdentifier];
      *buf = 138412290;
      v28 = deviceIdentifier2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remote Alert received device id %@", buf, 0xCu);
    }

    [(TVRemoteAlertViewController *)self setDeviceIdentifierType:[v12 deviceIdentifierType]];
    [(TVRemoteAlertViewController *)self setDeviceType:[v12 deviceType]];
    [(TVRemoteAlertViewController *)self setLaunchContext:[v12 launchContext]];
    lastActiveEndpointIdentifier = [v12 lastActiveEndpointIdentifier];
    [(TVRemoteAlertViewController *)self setLastActiveEndpointIdentifier:lastActiveEndpointIdentifier];

    v19 = _TVRUIServiceLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      lastActiveEndpointIdentifier2 = [v12 lastActiveEndpointIdentifier];
      *buf = 138412290;
      v28 = lastActiveEndpointIdentifier2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Remote Alert received last active identifier %@", buf, 0xCu);
    }

    if (-[NSObject dismissalType](v12, "dismissalType") || (-[TVRemoteAlertViewController visualStyle](self, "visualStyle"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 allowsSwipeToDismiss], v21, !v22))
    {
      v23 = _TVRUIServiceLog([v9 setSwipeDismissalStyle:0]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "Remote alert proxy configured with swipe dismissal style SBUIRemoteAlertSwipeDismissalStyleNone";
        goto LABEL_14;
      }
    }

    else
    {
      v23 = _TVRUIServiceLog([v9 setSwipeDismissalStyle:1]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "Remote alert proxy configured with swipe dismissal style SBUIRemoteAlertSwipeDismissalStyleDismissToCurrentApps";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
      }
    }

    [v9 setAllowsAlertStacking:1];
    [v9 setDismissalAnimationStyle:0];
    [v9 setAllowsMenuButtonDismissal:1];
    v25 = _TVRUIServiceLog([v9 setDesiredHardwareButtonEvents:22]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = contextCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Remote alert proxy configured with context: %{public}@", buf, 0xCu);
    }

    v26.receiver = self;
    v26.super_class = TVRemoteAlertViewController;
    [(TVRemoteAlertViewController *)&v26 configureWithContext:contextCopy completion:completionCopy];
    goto LABEL_20;
  }

  v12 = _TVRUIServiceLog(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [TVRemoteAlertViewController configureWithContext:v12 completion:?];
  }

LABEL_20:
}

void __63__TVRemoteAlertViewController_configureWithContext_completion___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _TVRUIServiceLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__TVRemoteAlertViewController_configureWithContext_completion___block_invoke_cold_1(v2, v3);
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = _TVRUIServiceLog(actionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = actionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote Alert -handleButtonActions: %{public}@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__TVRemoteAlertViewController_handleButtonActions___block_invoke;
  v6[3] = &unk_100018B70;
  v6[4] = self;
  [actionsCopy enumerateObjectsUsingBlock:v6];
}

void __51__TVRemoteAlertViewController_handleButtonActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 events];
  if ((v4 & 0x10) != 0)
  {
    v9 = _TVRUIServiceLog(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SBUIRemoteAlertServiceButtonEventHomeButton button action, dismissing", buf, 2u);
    }

    v10 = [*(a1 + 32) hintsViewController];
    v11 = [v10 hasPresentedContent];

    v12 = *(a1 + 32);
    if (!v11)
    {
      v14 = [v12 remoteControlViewController];
      [v14 _disconnectUserInitiated];

      [*(a1 + 32) _dismiss];
      goto LABEL_16;
    }

    v8 = [v12 hintsViewController];
    [v8 dismissPresentedContentAnimated:1 completion:0];
    goto LABEL_14;
  }

  v5 = [v3 events];
  if ((v5 & 2) != 0)
  {
    v13 = _TVRUIServiceLog(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SBUIRemoteAlertServiceButtonEventVolumeUpButton button action", v16, 2u);
    }

    v8 = [*(a1 + 32) remoteControlViewController];
    [v8 volumeUpEventGenerated];
    goto LABEL_14;
  }

  v6 = [v3 events];
  if ((v6 & 4) != 0)
  {
    v7 = _TVRUIServiceLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SBUIRemoteAlertServiceButtonEventVolumeDownButton button action", v15, 2u);
    }

    v8 = [*(a1 + 32) remoteControlViewController];
    [v8 volumeDownEventGenerated];
LABEL_14:
  }

LABEL_16:
}

- (void)_dismiss
{
  v3 = _TVRUIServiceLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing alert", buf, 2u);
  }

  [(TVRemoteAlertViewController *)self _dismissPresentedContentAnimated:0];
  hintsViewController = [(TVRemoteAlertViewController *)self hintsViewController];
  [hintsViewController remoteWillBeDismissed];

  hintsViewController2 = [(TVRemoteAlertViewController *)self hintsViewController];
  [hintsViewController2 dismissHints];

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController _disconnectUserInitiated];

  v7 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view = [remoteControlViewController2 view];
  [v7 _setFromView:view];

  view2 = [(TVRemoteAlertViewController *)self view];
  [v7 _setToView:view2];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __39__TVRemoteAlertViewController__dismiss__block_invoke;
  v25[3] = &unk_100018AE0;
  v25[4] = self;
  [v7 _setCompletionHandler:v25];
  v11 = _AXSReduceMotionEnabled();
  LODWORD(view) = v11;
  v12 = _TVRUIServiceLog(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (view)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dismissing with TVRemoteAlertFadeAnimationController", buf, 2u);
    }

    v14 = [TVRUIAlertFadeAnimationController alloc];
    visualStyle = [(TVRemoteAlertViewController *)self visualStyle];
    v16 = [v14 initWithAnimationType:1 visualStyle:visualStyle];
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dismissing with TVRUIAlertAnimationController", buf, 2u);
    }

    v17 = [TVRUIAlertAnimationController alloc];
    visualStyle2 = [(TVRemoteAlertViewController *)self visualStyle];
    v16 = [v17 initWithAnimationType:1 visualStyle:visualStyle2];

    visualStyle = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [v16 setBackgroundMaterialView:visualStyle];
  }

  [v16 animateTransition:v7];
  dismissalAction = [(TVRemoteAlertViewController *)self dismissalAction];

  if (dismissalAction)
  {
    v21 = _TVRUIServiceLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Remote Alert dismissal action provided, sending back animation response", buf, 2u);
    }

    v22 = objc_alloc_init(BSMutableSettings);
    [v22 setObject:&off_100019180 forSetting:2];
    v23 = [[BSActionResponse alloc] initWithInfo:v22 error:0];
    dismissalAction2 = [(TVRemoteAlertViewController *)self dismissalAction];
    [dismissalAction2 sendResponse:v23];

    [(TVRemoteAlertViewController *)self setDismissalAction:0];
  }
}

id __39__TVRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundMaterialView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 alertDidFinishDismissal:1];
}

- (void)_dismissPresentedContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  hasPresentedContent = [remoteControlViewController hasPresentedContent];

  if (hasPresentedContent)
  {
    remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
    [remoteControlViewController2 dismissPresentedContentAnimated:animatedCopy completion:0];
  }

  hintsViewController = [(TVRemoteAlertViewController *)self hintsViewController];
  hasPresentedContent2 = [hintsViewController hasPresentedContent];

  if (hasPresentedContent2)
  {
    hintsViewController2 = [(TVRemoteAlertViewController *)self hintsViewController];
    [hintsViewController2 dismissPresentedContentAnimated:animatedCopy completion:0];
  }
}

- (BOOL)isWakingToLockScreen
{
  activationReason = [(TVRemoteAlertViewController *)self activationReason];
  v3 = [activationReason isEqualToString:SBSRemoteAlertActivationReasonWakeTo];

  return v3;
}

void __63__TVRemoteAlertViewController_configureWithContext_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Remote alert failed to obtain proxy %{public}@", &v4, 0xCu);
}

@end