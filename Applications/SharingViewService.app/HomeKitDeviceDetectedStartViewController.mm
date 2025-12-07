@interface HomeKitDeviceDetectedStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)_launchHomeApp;
- (void)_restoreHomeApp;
- (void)applicationsDidInstall:(id)install;
- (void)handleDismissButton:(id)button;
- (void)handleSetupButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HomeKitDeviceDetectedStartViewController

- (void)_restoreHomeApp
{
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController _restoreHomeApp]", 30, "Restoring Home app\n");
  }

  [*(&self->_progressView + 1) setHidden:0];
  [*(&self->_progressView + 1) startAnimating];
  [*(&self->_settingUp + 1) setHidden:0];
  [*(&self->_dismissButton + 1) setHidden:1];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 addObserver:self];
  v5 = [objc_alloc(off_1001BE650(v4)) initWithBundleID:@"com.apple.Home"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EC848;
  v6[3] = &unk_100195940;
  v6[4] = self;
  [v5 startWithErrorHandler:v6];
}

- (void)_launchHomeApp
{
  userInfo = [self->super._mainController userInfo];
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();

  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController _launchHomeApp]", 30, "Launch Home app (%@)\n", v5);
  }

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = v6;
  if (v5)
  {
    v10 = 0;
    v8 = [v6 openSensitiveURL:v5 withOptions:0 error:&v10];
    v9 = v10;
    if (v8)
    {
LABEL_13:
      if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController _launchHomeApp]", 30, "Launched Home app (%@)\n", v5);
      }

      [self->super._mainController dismiss:8];
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([v7 openApplicationWithBundleID:@"com.apple.Home"])
  {
    goto LABEL_13;
  }

  if (dword_1001BE5E0 <= 90 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController _launchHomeApp]", 90, "### Launch Home app failed (%@), %{error}\n", v5, v9);
  }

  BYTE1(self->_setupButton) = 0;
  [*(&self->_dismissButton + 1) setEnabled:1];
LABEL_23:
}

- (void)applicationsDidInstall:(id)install
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  installCopy = install;
  v5 = [installCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqual:@"com.apple.Home"];

        if (v10)
        {
          if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController applicationsDidInstall:]", 30, "Home app installed\n");
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000ECE90;
          block[3] = &unk_100195AC0;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
          goto LABEL_15;
        }
      }

      v6 = [installCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController handleTapOutsideView:]", 30, "Dismissing on tap outside view\n");
  }

  [self->super._mainController dismiss:1];
}

- (void)handleSetupButton:(id)button
{
  buttonCopy = button;
  if ((BYTE1(self->_setupButton) & 1) == 0)
  {
    v8 = buttonCopy;
    BYTE1(self->_setupButton) = 1;
    [*(&self->_dismissButton + 1) setEnabled:0];
    v5 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Home"];
    appState = [v5 appState];
    isInstalled = [appState isInstalled];

    if (isInstalled)
    {
      [(HomeKitDeviceDetectedStartViewController *)self _launchHomeApp];
    }

    else
    {
      [(HomeKitDeviceDetectedStartViewController *)self _restoreHomeApp];
    }

    buttonCopy = v8;
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController handleDismissButton:]", 30, "Dismiss button\n");
  }

  [self->super._mainController dismiss:5];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  return view == view2;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController viewDidDisappear:]", 30, "Start ViewDidDisappear\n");
  }

  v5.receiver = self;
  v5.super_class = HomeKitDeviceDetectedStartViewController;
  [(HomeKitDeviceDetectedStartViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE5E0, "[HomeKitDeviceDetectedStartViewController viewWillAppear:]", 30, "Start ViewWillAppear\n");
  }

  v9.receiver = self;
  v9.super_class = HomeKitDeviceDetectedStartViewController;
  [(SVSBaseViewController *)&v9 viewWillAppear:appearCopy];
  _remoteViewControllerProxy = [self->super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  view = [(HomeKitDeviceDetectedStartViewController *)self view];
  [view addGestureRecognizer:v6];

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end