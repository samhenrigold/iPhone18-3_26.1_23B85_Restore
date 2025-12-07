@interface HOProfileInstaller
- (BOOL)isInstallNavigationControllerPresented;
- (HOProfileInstaller)init;
- (void)dealloc;
- (void)deviceProfileCompletedNotification:(id)notification;
- (void)dismissInstallProfileViewControllerWithAnimation:(BOOL)animation shouldOpenSenderURL:(BOOL)l;
- (void)installProfileWithCompletionHandler:(id)handler;
- (void)openSenderURL;
- (void)showProfileInstallationAlertViewWithTitle:(id)title message:(id)message shouldGoBackToSenderURL:(BOOL)l;
- (void)showProfileInstallationFlowFromViewController:(id)controller withSenderURLString:(id)string;
- (void)showRebootAlertAndReboot;
@end

@implementation HOProfileInstaller

- (HOProfileInstaller)init
{
  v5.receiver = self;
  v5.super_class = HOProfileInstaller;
  v2 = [(HOProfileInstaller *)&v5 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"deviceProfileCompletedNotification:" name:@"com.apple.sharing.DeviceProfile" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HOProfileInstaller;
  [(HOProfileInstaller *)&v4 dealloc];
}

- (void)showProfileInstallationAlertViewWithTitle:(id)title message:(id)message shouldGoBackToSenderURL:(BOOL)l
{
  titleCopy = title;
  messageCopy = message;
  v23 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:titleCopy preferredStyle:?];
  objc_initWeak(&location, self);
  v6 = +[NSBundle mainBundle];
  v7 = @"HOProfileInstallAlertOKButton";
  v8 = [v6 localizedStringForKey:@"HOProfileInstallAlertOKButton" value:@"_" table:@"HOLocalizable"];

  v9 = [@"_" isEqualToString:v8];
  if (v9)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = sub_100043000(v9);
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = *v29;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"HOProfileInstallAlertOKButton" value:@"HOProfileInstallAlertOKButton" table:v14];

        if (![(__CFString *)v16 isEqualToString:@"HOProfileInstallAlertOKButton"])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v16 = @"_";
    }
  }

  else
  {
    v16 = v8;
  }

  if ([@"_" isEqualToString:v16])
  {
    NSLog(@"Sensitive key '%@' not found!", @"HOProfileInstallAlertOKButton");
  }

  else
  {
    v7 = v16;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10004273C;
  v24[3] = &unk_1000C41B8;
  objc_copyWeak(&v25, &location);
  lCopy = l;
  v17 = [UIAlertAction actionWithTitle:v7 style:0 handler:v24];

  [v23 addAction:v17];
  baseViewController = [(HOProfileInstaller *)self baseViewController];
  [baseViewController presentViewController:v23 animated:1 completion:0];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)openSenderURL
{
  senderURLString = [(HOProfileInstaller *)self senderURLString];
  v4 = [senderURLString length];

  if (v4)
  {
    senderURLString2 = [(HOProfileInstaller *)self senderURLString];
    senderURLString3 = [(HOProfileInstaller *)self senderURLString];
    v7 = [senderURLString3 hasSuffix:@"://"];

    if ((v7 & 1) == 0)
    {
      senderURLString4 = [(HOProfileInstaller *)self senderURLString];
      v9 = [NSString stringWithFormat:@"%@://", senderURLString4];

      senderURLString2 = v9;
    }

    v10 = [NSURL URLWithString:senderURLString2];
    v11 = +[UIApplication sharedApplication];
    v12 = [v11 canOpenURL:v10];

    if (v12)
    {
      v13 = +[UIApplication sharedApplication];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100042AC8;
      v25[3] = &unk_1000C2F80;
      v25[4] = self;
      [v13 openURL:v10 withCompletionHandler:v25];
LABEL_6:

LABEL_18:
      goto LABEL_19;
    }

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    v24 = 0;
    v15 = [v14 openURL:v10 withOptions:0 error:&v24];
    v16 = v24;

    if ((v15 & 1) == 0)
    {
      v17 = HFLogForCategory();
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100081454();
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "[HOProfileInstaller openSenderURL]";
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(%s) url %@ could not be opened, trying sensitive URL", buf, 0x16u);
      }

      v19 = +[LSApplicationWorkspace defaultWorkspace];
      v23 = v16;
      v20 = [v19 openSensitiveURL:v10 withOptions:0 error:&v23];
      v13 = v23;

      if ((v20 & 1) == 0)
      {
        v21 = HFLogForCategory();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          if (v22)
          {
            sub_1000814D0();
          }
        }

        else if (v22)
        {
          sub_10008154C();
        }

        goto LABEL_6;
      }

      v16 = v13;
    }

    goto LABEL_18;
  }

  senderURLString2 = HFLogForCategory();
  if (os_log_type_enabled(senderURLString2, OS_LOG_TYPE_ERROR))
  {
    sub_1000815CC(senderURLString2);
  }

LABEL_19:
}

- (void)showProfileInstallationFlowFromViewController:(id)controller withSenderURLString:(id)string
{
  v6 = [NSAssertionHandler currentHandler:controller];
  [v6 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:118 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller showProfileInstallationFlowFromViewController:withSenderURLString:]", objc_opt_class()}];
}

- (void)deviceProfileCompletedNotification:(id)notification
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:125 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller deviceProfileCompletedNotification:]", objc_opt_class()}];
}

- (void)showRebootAlertAndReboot
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:133 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller showRebootAlertAndReboot]", objc_opt_class()}];
}

- (void)installProfileWithCompletionHandler:(id)handler
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:139 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller installProfileWithCompletionHandler:]", objc_opt_class()}];
}

- (BOOL)isInstallNavigationControllerPresented
{
  installProfileViewController = [(HOProfileInstaller *)self installProfileViewController];
  navigationController = [installProfileViewController navigationController];
  presentingViewController = [navigationController presentingViewController];
  v5 = presentingViewController != 0;

  return v5;
}

- (void)dismissInstallProfileViewControllerWithAnimation:(BOOL)animation shouldOpenSenderURL:(BOOL)l
{
  animationCopy = animation;
  installProfileViewController = [(HOProfileInstaller *)self installProfileViewController];
  navigationController = [installProfileViewController navigationController];

  if (navigationController)
  {
    installProfileVCCompletionBlock = [(HOProfileInstaller *)self installProfileVCCompletionBlock];

    if (installProfileVCCompletionBlock)
    {
      installProfileVCCompletionBlock2 = [(HOProfileInstaller *)self installProfileVCCompletionBlock];
      installProfileVCCompletionBlock2[2](installProfileVCCompletionBlock2, 0);
    }

    installProfileViewController2 = [(HOProfileInstaller *)self installProfileViewController];
    navigationController2 = [installProfileViewController2 navigationController];
    presentingViewController = [navigationController2 presentingViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100042EE0;
    v14[3] = &unk_1000C4150;
    v14[4] = self;
    lCopy = l;
    [presentingViewController dismissViewControllerAnimated:animationCopy completion:v14];
  }
}

@end