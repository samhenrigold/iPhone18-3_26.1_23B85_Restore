@interface WatchSetupViewControllerProxy
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WatchSetupViewControllerProxy

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001BF328, "[WatchSetupViewControllerProxy handleButtonActions:]", 30, "Home button\n");
          }

          [(WatchSetupViewControllerProxy *)self dismiss:4];
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    _remoteViewControllerProxy = [(WatchSetupViewControllerProxy *)self _remoteViewControllerProxy];
    proxCardNavigationController = [(WatchSetupViewControllerProxy *)self proxCardNavigationController];

    if (proxCardNavigationController)
    {
      proxCardNavigationController2 = [(WatchSetupViewControllerProxy *)self proxCardNavigationController];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10012BECC;
      v10[3] = &unk_1001959D0;
      v12 = completionCopy;
      v11 = _remoteViewControllerProxy;
      [proxCardNavigationController2 dismissViewControllerAnimated:animatedCopy completion:v10];
    }

    else
    {
      [_remoteViewControllerProxy dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BF328, "[WatchSetupViewControllerProxy viewDidDisappear:]", 30, "Proxy ViewDidDisappear\n");
  }

  if (!self->_dismissed)
  {
    if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BF328, "[WatchSetupViewControllerProxy viewDidDisappear:]", 30, "Proxy disappeared without dismiss (device locked?)...dismissing UI\n");
    }

    [(WatchSetupViewControllerProxy *)self dismiss:21];
  }

  v5.receiver = self;
  v5.super_class = WatchSetupViewControllerProxy;
  [(SVSBaseMainController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (_os_feature_enabled_impl())
  {
    v5 = [(NSDictionary *)self->super._userInfo objectForKeyedSubscript:@"watchData"];
    v6 = [(NSDictionary *)self->super._userInfo objectForKeyedSubscript:@"deviceIdentifier"];
    v7 = [BPSWatchSetupProxCardViewController alloc];
    v28[0] = @"wd";
    v28[1] = @"di";
    v29[0] = v5;
    v29[1] = v6;
    v8 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10012C518;
    v27[3] = &unk_1001958B0;
    v27[4] = self;
    v9 = [v7 initWithUserInfo:v8 withDismissCompletionHandler:v27];

    [v9 setMainController:self];
    v10 = [(WatchSetupViewControllerProxy *)self presentProxCardFlowWithDelegate:self initialViewController:v9];
    [(WatchSetupViewControllerProxy *)self setProxCardNavigationController:v10];
  }

  else
  {
    if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BF328, "[WatchSetupViewControllerProxy viewDidAppear:]", 30, "Proxy ViewDidAppear\n");
    }

    v26.receiver = self;
    v26.super_class = WatchSetupViewControllerProxy;
    [(WatchSetupViewControllerProxy *)&v26 viewDidAppear:appearCopy];
    v11 = _os_feature_enabled_impl();
    v5 = [(NSDictionary *)self->super._userInfo objectForKeyedSubscript:@"pairingVersion"];
    if (v5 && (-[objc_class systemVersions](off_1001BF398(), "systemVersions"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 maxPairingCompatibilityVersion], v12, ((objc_msgSend(v5, "integerValue") <= v13) & v11) == 0))
    {
      if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
      {
        integerValue = [v5 integerValue];
        v16 = "disabled";
        if (v11)
        {
          v16 = "enabled";
        }

        LogPrintF(&dword_1001BF328, "[WatchSetupViewControllerProxy viewDidAppear:]", 30, "Needs Software Update:- pairing versions: Watch=%ld vs. Phone(max)=%ld; networkrelay pairing: Watch=%s vs. Phone=%s, \n", integerValue, v13, "enabled", v16);
      }

      v6 = objc_alloc_init(PRXSoftwareUpdateViewController);
      v17 = sub_10012794C(@"Localizable", @"SOFTWARE_UPDATE_REQUIRED");
      [(SVSWatchSetupInitialViewController *)v6 setTitle:v17];

      v18 = sub_10012794C(@"Localizable", @"APPLE_WATCH_SOFTWARE_UPDATE");
      [(SVSWatchSetupInitialViewController *)v6 setSubtitle:v18];

      objc_initWeak(&location, v6);
      v19 = sub_10012794C(@"Localizable", @"SET_UP_LATER");
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10012C528;
      v23[3] = &unk_1001958D8;
      objc_copyWeak(&v24, &location);
      v20 = [PRXAction actionWithTitle:v19 style:1 handler:v23];

      v21 = [(SVSWatchSetupInitialViewController *)v6 addAction:v20];
      v22 = [(WatchSetupViewControllerProxy *)self presentProxCardFlowWithDelegate:self initialViewController:v6];
      [(WatchSetupViewControllerProxy *)self setProxCardNavigationController:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = [[SVSWatchSetupInitialViewController alloc] initWithUserInfo:self->super._userInfo];
      [(SVSWatchSetupInitialViewController *)v6 setMainController:self];
      v14 = [(WatchSetupViewControllerProxy *)self presentProxCardFlowWithDelegate:self initialViewController:v6];
      [(WatchSetupViewControllerProxy *)self setProxCardNavigationController:v14];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  if (_os_feature_enabled_impl())
  {
    _remoteViewControllerProxy = [(WatchSetupViewControllerProxy *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(WatchSetupViewControllerProxy *)self view];
  window = [view window];

  if (!window)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

  if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BF328, "[WatchSetupViewControllerProxy configureWithContext:completion:]", 30, "Proxy configuration: %@\n", self->super._userInfo);
  }

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

@end