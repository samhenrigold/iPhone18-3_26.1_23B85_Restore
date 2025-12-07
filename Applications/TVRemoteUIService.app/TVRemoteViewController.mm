@interface TVRemoteViewController
- (BOOL)isConfigured;
- (unint64_t)supportedInterfaceOrientations;
- (void)_acquireAppSwitcherAssertion;
- (void)_appWillTerminate:(id)terminate;
- (void)_configureWithDefaultContext;
- (void)_dismissHintsAnimated:(BOOL)animated;
- (void)_dismissPresentedContentAnimated:(BOOL)animated;
- (void)_releaseAppSwitcherAssertion;
- (void)configureWithContext:(id)context;
- (void)device:(id)device supportsSiri:(BOOL)siri volume:(BOOL)volume;
- (void)device:(id)device supportsVolume:(BOOL)volume;
- (void)deviceDidConnect;
- (void)deviceDidDisconnect;
- (void)devicePickerWillExpand;
- (void)dismiss;
- (void)presentFindMyTip;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillDeactivate:(id)deactivate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willEnterLockScreenScene;
- (void)willExitLockScreenScene;
@end

@implementation TVRemoteViewController

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = TVRemoteViewController;
  [(TVRemoteViewController *)&v35 viewDidLoad];
  v3 = objc_alloc_init(TVRUIHintsViewController);
  [(TVRemoteViewController *)self setHintsViewController:v3];

  view = [(TVRemoteViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  view2 = [hintsViewController view];
  [view2 setFrame:{v6, v8, v10, v12}];

  v15 = objc_alloc_init(TVRUIRemoteViewController);
  [(TVRemoteViewController *)self setRemoteViewController:v15];

  view3 = [(TVRemoteViewController *)self view];
  [view3 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  view4 = [remoteViewController view];
  [view4 setFrame:{v18, v20, v22, v24}];

  remoteViewController2 = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController2 setDelegate:self];

  remoteViewController3 = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController3 setDeviceConnectionStatusDelegate:self];

  remoteViewController4 = [(TVRemoteViewController *)self remoteViewController];
  [(TVRemoteViewController *)self bs_addChildViewController:remoteViewController4];

  hintsViewController2 = [(TVRemoteViewController *)self hintsViewController];
  [(TVRemoteViewController *)self bs_addChildViewController:hintsViewController2];

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"_appWillTerminate:" name:UIApplicationWillTerminateNotification object:0];

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:self selector:"sceneDidActivate:" name:UISceneDidActivateNotification object:0];

  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:0];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRemoteViewController viewWillAppear:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = TVRemoteViewController;
  [(TVRemoteViewController *)&v9 viewWillAppear:appearCopy];
  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  isConfigured = [remoteViewController isConfigured];

  if ((isConfigured & 1) == 0)
  {
    [(TVRemoteViewController *)self _configureWithDefaultContext];
  }

  remoteViewController2 = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController2 startConnections];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TVRemoteViewController;
  [(TVRemoteViewController *)&v5 viewWillDisappear:disappear];
  [(TVRemoteViewController *)self _dismissHintsAnimated:1];
  v4 = +[_TtC17TVRemoteUIService11TipsManager shared];
  [v4 invalidate];
}

- (void)sceneDidActivate:(id)activate
{
  object = [activate object];
  v5 = _TVRUIServiceAppLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[TVRemoteViewController sceneDidActivate:]";
    v11 = 2112;
    v12 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - %@", &v9, 0x16u);
  }

  if ([(TVRemoteViewController *)self isConnectedToDevice])
  {
    shouldReplayHints = [(TVRemoteViewController *)self shouldReplayHints];
    if (shouldReplayHints)
    {
      v7 = _TVRUIServiceAppLog(shouldReplayHints);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Replaying hints", &v9, 2u);
      }

      hintsViewController = [(TVRemoteViewController *)self hintsViewController];
      [hintsViewController replayHints];

      [(TVRemoteViewController *)self setShouldReplayHints:0];
    }
  }
}

- (void)sceneWillDeactivate:(id)deactivate
{
  object = [deactivate object];
  v5 = _TVRUIServiceAppLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[TVRemoteViewController sceneWillDeactivate:]";
    v9 = 2112;
    v10 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - %@", &v7, 0x16u);
  }

  [(TVRemoteViewController *)self _dismissHintsAnimated:0];
  v6 = +[_TtC17TVRemoteUIService11TipsManager shared];
  [v6 invalidate];
}

- (void)_dismissHintsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  hasPresentedContent = [hintsViewController hasPresentedContent];

  if (hasPresentedContent)
  {
    hintsViewController2 = [(TVRemoteViewController *)self hintsViewController];
    [hintsViewController2 dismissPresentedContentAnimated:animatedCopy completion:0];
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  object = [background object];
  v5 = _TVRUIServiceAppLog(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TVRemoteViewController sceneDidEnterBackground:]";
    v10 = 2112;
    v11 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - %@", &v8, 0x16u);
  }

  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  [hintsViewController remoteWillBeDismissed];

  v7 = +[_TtC17TVRemoteUIService11TipsManager shared];
  [v7 invalidate];
}

- (BOOL)isConfigured
{
  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  isConfigured = [remoteViewController isConfigured];

  return isConfigured;
}

- (void)willEnterLockScreenScene
{
  v3 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willEnterLockScreenScene", v5, 2u);
  }

  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController setIsInSecureWindow:1];
}

- (void)willExitLockScreenScene
{
  v3 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willExitLockScreenScene", v5, 2u);
  }

  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController setIsInSecureWindow:0];
}

- (void)_acquireAppSwitcherAssertion
{
  if (!self->_appSwitcherAssertion)
  {
    v3 = _TVRUIServiceAppLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Acquiring AppSwitcher Assertion", buf, 2u);
    }

    objc_initWeak(buf, self);
    objc_copyWeak(&v4, buf);
    SBSRequestAppSwitcherAppearanceForHiddenApplication();
    objc_destroyWeak(&v4);
    objc_destroyWeak(buf);
  }
}

void __54__TVRemoteViewController__acquireAppSwitcherAssertion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAppSwitcherAssertion:v3];
}

- (void)_releaseAppSwitcherAssertion
{
  v3 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing AppSwitcher Assertion", v5, 2u);
  }

  [(SBSAssertion *)self->_appSwitcherAssertion invalidate];
  appSwitcherAssertion = self->_appSwitcherAssertion;
  self->_appSwitcherAssertion = 0;
}

- (void)_appWillTerminate:(id)terminate
{
  v4 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRemoteViewController _appWillTerminate:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRemoteViewController *)self dismiss];
}

- (void)_dismissPresentedContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  hasPresentedContent = [remoteViewController hasPresentedContent];

  if (hasPresentedContent)
  {
    remoteViewController2 = [(TVRemoteViewController *)self remoteViewController];
    [remoteViewController2 dismissPresentedContentAnimated:animatedCopy completion:0];
  }

  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  hasPresentedContent2 = [hintsViewController hasPresentedContent];

  if (hasPresentedContent2)
  {
    hintsViewController2 = [(TVRemoteViewController *)self hintsViewController];
    [hintsViewController2 dismissPresentedContentAnimated:animatedCopy completion:0];
  }

  v11 = +[_TtC17TVRemoteUIService11TipsManager shared];
  [v11 invalidate];
}

- (void)_configureWithDefaultContext
{
  v3 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuring RemoteViewController with default context", v5, 2u);
  }

  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController configureWithDeviceIdentifier:0 identifierType:TVRViewServiceDeviceIdentifierTypeNone deviceType:0 launchContext:1];
}

- (void)configureWithContext:(id)context
{
  contextCopy = context;
  v5 = _TVRUIServiceAppLog(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Configuring RemoteViewController with context: %{public}@", &v7, 0xCu);
  }

  if (([(TVRemoteViewController *)self isViewLoaded]& 1) == 0)
  {
    [(TVRemoteViewController *)self loadViewIfNeeded];
  }

  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController configureWithContext:contextCopy];
}

- (void)dismiss
{
  v3 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing HintsViewController and RemoteViewController", v8, 2u);
  }

  [(TVRemoteViewController *)self _dismissPresentedContentAnimated:0];
  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  [hintsViewController remoteWillBeDismissed];

  hintsViewController2 = [(TVRemoteViewController *)self hintsViewController];
  [hintsViewController2 dismissHints];

  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController _disconnectUserInitiated];

  remoteViewController2 = [(TVRemoteViewController *)self remoteViewController];
  [remoteViewController2 stopConnections];
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(TVRemoteViewController *)self traitCollection];
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

- (void)deviceDidConnect
{
  v3 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device did connect. Acquiring AppSwitcher assertion", buf, 2u);
  }

  [(TVRemoteViewController *)self setIsConnectedToDevice:1];
  [(TVRemoteViewController *)self _acquireAppSwitcherAssertion];
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__TVRemoteViewController_deviceDidConnect__block_invoke;
  block[3] = &unk_100018C20;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)deviceDidDisconnect
{
  v3 = _TVRUIServiceAppLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device did disconnect. Releasing AppSwitcher assertion", v4, 2u);
  }

  [(TVRemoteViewController *)self setIsConnectedToDevice:0];
  [(TVRemoteViewController *)self _releaseAppSwitcherAssertion];
}

- (void)presentFindMyTip
{
  remoteViewController = [(TVRemoteViewController *)self remoteViewController];
  isInSecureWindow = [remoteViewController isInSecureWindow];

  if (isInSecureWindow)
  {
    v6 = _TVRUIServiceAppLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not showing the mini tip since the view controller is in a secure window", buf, 2u);
    }
  }

  else
  {
    v9 = +[_TtC17TVRemoteUIService11TipsManager shared];
    remoteViewController2 = [(TVRemoteViewController *)self remoteViewController];
    tipSourceViewProvider = [remoteViewController2 tipSourceViewProvider];
    [v9 updatePresentingViewController:tipSourceViewProvider];

    [v9 presentTip];
  }
}

- (void)device:(id)device supportsSiri:(BOOL)siri volume:(BOOL)volume
{
  volumeCopy = volume;
  siriCopy = siri;
  deviceCopy = device;
  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  [hintsViewController device:deviceCopy supportsSiri:siriCopy volume:volumeCopy];
}

- (void)device:(id)device supportsVolume:(BOOL)volume
{
  volumeCopy = volume;
  deviceCopy = device;
  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  [hintsViewController device:deviceCopy supportsVolume:volumeCopy];
}

- (void)devicePickerWillExpand
{
  hintsViewController = [(TVRemoteViewController *)self hintsViewController];
  [hintsViewController devicePickerWillExpand];

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__TVRemoteViewController_devicePickerWillExpand__block_invoke;
  block[3] = &unk_100018C20;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

@end