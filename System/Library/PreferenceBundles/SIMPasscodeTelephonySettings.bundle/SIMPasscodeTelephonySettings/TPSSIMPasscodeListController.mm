@interface TPSSIMPasscodeListController
- (BOOL)isSIMLockAllowed;
- (BOOL)isSIMPasscodeChangeAllowed;
- (BOOL)isSIMPasscodeProtected;
- (TPSSIMPasscodeListController)init;
- (TPSSubscriberTelephonyController)subscriberController;
- (id)_popoverPresentationView;
- (id)isSIMPasscodeProtected:(id)protected;
- (id)setCellEnabled:(BOOL)enabled atIndex:(unsigned int)index;
- (id)setCellLoading:(BOOL)loading atIndex:(unsigned int)index;
- (id)setControlEnabled:(BOOL)enabled atIndex:(int64_t)index;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_dismissChangeController;
- (void)_dismissUnlockController;
- (void)changePIN:(id)n;
- (void)dealloc;
- (void)handleUIApplicationSuspendedNotification:(id)notification;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)presentSIMPasscodeAlert;
- (void)setSIMPasscodeProtected:(id)protected specifier:(id)specifier;
- (void)setSIMStatus:(id)status;
- (void)subscriberController:(id)controller SIMPasscodeLockEnabledDidChange:(BOOL)change;
- (void)subscriberController:(id)controller SIMStatusDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TPSSIMPasscodeListController

- (TPSSIMPasscodeListController)init
{
  v5.receiver = self;
  v5.super_class = TPSSIMPasscodeListController;
  v2 = [(TPSSIMPasscodeListController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"handleUIApplicationSuspendedNotification:" name:UIApplicationSuspendedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  unlockPINPopoverController = self->_unlockPINPopoverController;
  if (unlockPINPopoverController)
  {
    [(UIPopoverController *)unlockPINPopoverController dismissPopoverAnimated:0];
  }

  changePINPopoverController = self->_changePINPopoverController;
  if (changePINPopoverController)
  {
    [(UIPopoverController *)changePINPopoverController dismissPopoverAnimated:0];
  }

  [(UIPopoverController *)self->_unlockPINPopoverController setDelegate:0];
  [(TPSSIMPasscodeUnlockViewController *)self->_unlockPINViewController setDelegate:0];
  [(UIPopoverController *)self->_changePINPopoverController setDelegate:0];
  [(TPSSIMPasscodeChangeViewController *)self->_changePINViewController setDelegate:0];
  v6.receiver = self;
  v6.super_class = TPSSIMPasscodeListController;
  [(TPSSIMPasscodeListController *)&v6 dealloc];
}

- (TPSSubscriberTelephonyController)subscriberController
{
  subscriberController = self->_subscriberController;
  if (!subscriberController)
  {
    v4 = [TPSSubscriberTelephonyController alloc];
    subscriptionContext = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_subscriberController;
    self->_subscriberController = v6;

    [(TPSSubscriberTelephonyController *)self->_subscriberController addDelegate:self queue:&_dispatch_main_q];
    subscriberController = self->_subscriberController;
  }

  return subscriberController;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"SIM_PIN"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setSIMPasscodeProtected:specifier:" get:"isSIMPasscodeProtected:" detail:0 cell:6 edit:0];

    [v8 setIdentifier:@"SET_SIM_PIN_ID"];
    [v5 addObject:v8];
    v9 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"CHANGE_PIN"];

    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v10 setIdentifier:@"CHANGE_PIN_ID"];
    [v10 setButtonAction:"changePIN:"];
    [v5 addObject:v10];
    v11 = [v5 copy];
    v12 = *&self->TPSListController_opaque[v3];
    *&self->TPSListController_opaque[v3] = v11;

    v4 = *&self->TPSListController_opaque[v3];
  }

  return v4;
}

- (id)isSIMPasscodeProtected:(id)protected
{
  isSIMPasscodeProtected = [(TPSSIMPasscodeListController *)self isSIMPasscodeProtected];

  return [NSNumber numberWithBool:isSIMPasscodeProtected];
}

- (void)setSIMPasscodeProtected:(id)protected specifier:(id)specifier
{
  protectedCopy = protected;
  v7 = TPSSIMPasscodeLog(protectedCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = protectedCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "User requested to set passcode protection to %@", &v33, 0xCu);
  }

  v8 = [(TPSSIMPasscodeListController *)self setControlEnabled:0 atIndex:1];
  if (protectedCopy)
  {
    unlockPINViewController = [(TPSSIMPasscodeListController *)self unlockPINViewController];

    if (!unlockPINViewController)
    {
      unlockPINViewController2 = [(TPSSIMPasscodeListController *)self unlockPINViewController];
      [unlockPINViewController2 setDelegate:0];

      v11 = [TPSSIMPasscodeUnlockViewController alloc];
      subscriberController = [(TPSSIMPasscodeListController *)self subscriberController];
      v13 = -[TPSSIMPasscodeUnlockViewController initWithSubscriberController:forLocking:](v11, "initWithSubscriberController:forLocking:", subscriberController, [protectedCopy BOOLValue]);
      [(TPSSIMPasscodeListController *)self setUnlockPINViewController:v13];

      unlockPINViewController3 = [(TPSSIMPasscodeListController *)self unlockPINViewController];
      [unlockPINViewController3 setDelegate:self];

      v15 = [TPPortraitOnlyNavigationController alloc];
      unlockPINViewController4 = [(TPSSIMPasscodeListController *)self unlockPINViewController];
      v17 = [v15 initWithRootViewController:unlockPINViewController4];
      [(TPSSIMPasscodeListController *)self setUnlockPINNavigationController:v17];

      v18 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v18 userInterfaceIdiom];

      unlockPINNavigationController = [(TPSSIMPasscodeListController *)self unlockPINNavigationController];
      unlockPINPopoverController2 = unlockPINNavigationController;
      if (userInterfaceIdiom == &dword_0 + 1)
      {
        [unlockPINNavigationController setPreferredContentSize:{320.0, 480.0}];

        v22 = [UIPopoverController alloc];
        unlockPINNavigationController2 = [(TPSSIMPasscodeListController *)self unlockPINNavigationController];
        v24 = [v22 initWithContentViewController:unlockPINNavigationController2];
        [(TPSSIMPasscodeListController *)self setUnlockPINPopoverController:v24];

        unlockPINPopoverController = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
        [unlockPINPopoverController setDelegate:self];

        v26 = +[UIApplication sharedApplication];
        keyWindow = [v26 keyWindow];
        [keyWindow frame];
        v29 = v28;
        v31 = v30;

        unlockPINPopoverController2 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
        _popoverPresentationView = [(TPSSIMPasscodeListController *)self _popoverPresentationView];
        [unlockPINPopoverController2 presentPopoverFromRect:_popoverPresentationView inView:0 permittedArrowDirections:1 animated:{v29 * 0.5, v31 * 0.5, 1.0, 1.0}];
      }

      else
      {
        [(TPSSIMPasscodeListController *)self presentViewController:unlockPINNavigationController animated:1 completion:0];
      }
    }
  }
}

- (void)changePIN:(id)n
{
  v4 = TPSSIMPasscodeLog(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User requested to change PIN", v29, 2u);
  }

  if ([(TPSSIMPasscodeListController *)self isSIMPasscodeChangeAllowed])
  {
    changePINViewController = [(TPSSIMPasscodeListController *)self changePINViewController];

    if (!changePINViewController)
    {
      changePINViewController2 = [(TPSSIMPasscodeListController *)self changePINViewController];
      [changePINViewController2 setDelegate:0];

      v7 = [TPSSIMPasscodeChangeViewController alloc];
      subscriberController = [(TPSSIMPasscodeListController *)self subscriberController];
      v9 = [(TPSSIMPasscodeChangeViewController *)v7 initWithSubscriberController:subscriberController];
      [(TPSSIMPasscodeListController *)self setChangePINViewController:v9];

      changePINViewController3 = [(TPSSIMPasscodeListController *)self changePINViewController];
      [changePINViewController3 setDelegate:self];

      v11 = [TPPortraitOnlyNavigationController alloc];
      changePINViewController4 = [(TPSSIMPasscodeListController *)self changePINViewController];
      v13 = [v11 initWithRootViewController:changePINViewController4];
      [(TPSSIMPasscodeListController *)self setChangePINNavigationController:v13];

      v14 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v14 userInterfaceIdiom];

      changePINNavigationController = [(TPSSIMPasscodeListController *)self changePINNavigationController];
      changePINPopoverController2 = changePINNavigationController;
      if (userInterfaceIdiom == &dword_0 + 1)
      {
        [changePINNavigationController setPreferredContentSize:{320.0, 480.0}];

        v18 = [UIPopoverController alloc];
        changePINNavigationController2 = [(TPSSIMPasscodeListController *)self changePINNavigationController];
        v20 = [v18 initWithContentViewController:changePINNavigationController2];
        [(TPSSIMPasscodeListController *)self setChangePINPopoverController:v20];

        changePINPopoverController = [(TPSSIMPasscodeListController *)self changePINPopoverController];
        [changePINPopoverController setDelegate:self];

        v22 = +[UIApplication sharedApplication];
        keyWindow = [v22 keyWindow];
        [keyWindow frame];
        v25 = v24;
        v27 = v26;

        changePINPopoverController2 = [(TPSSIMPasscodeListController *)self changePINPopoverController];
        _popoverPresentationView = [(TPSSIMPasscodeListController *)self _popoverPresentationView];
        [changePINPopoverController2 presentPopoverFromRect:_popoverPresentationView inView:0 permittedArrowDirections:1 animated:{v25 * 0.5, v27 * 0.5, 1.0, 1.0}];
      }

      else
      {
        [(TPSSIMPasscodeListController *)self presentViewController:changePINNavigationController animated:1 completion:0];
      }
    }
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TPSSIMPasscodeListController;
  [(TPSSIMPasscodeListController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleUIApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = TPSSIMPasscodeListController;
  [(TPSSIMPasscodeListController *)&v13 viewWillAppear:appear];
  sIMStatus = [(TPSSIMPasscodeListController *)self SIMStatus];

  if (!sIMStatus)
  {
    subscriberController = [(TPSSIMPasscodeListController *)self subscriberController];
    sIMStatus2 = [subscriberController SIMStatus];

    v9 = TPSSIMPasscodeLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      subscriptionContext = [(TPSSIMPasscodeListController *)self subscriptionContext];
      *buf = 138412546;
      v15 = sIMStatus2;
      v16 = 2112;
      v17 = subscriptionContext;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Initializing SIM status to %@ for subscription context %@.", buf, 0x16u);
    }

    subscriberController2 = [(TPSSIMPasscodeListController *)self subscriberController];
    sIMStatus3 = [subscriberController2 SIMStatus];
    [(TPSSIMPasscodeListController *)self setSIMStatus:sIMStatus3];
  }
}

- (void)_dismissUnlockController
{
  [(TPSSIMPasscodeListController *)self reloadSpecifiers];
  unlockPINPopoverController = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];

  if (unlockPINPopoverController)
  {
    unlockPINPopoverController2 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
    [unlockPINPopoverController2 dismissPopoverAnimated:1];

    unlockPINPopoverController3 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
    [unlockPINPopoverController3 setDelegate:0];

    [(TPSSIMPasscodeListController *)self setUnlockPINPopoverController:0];
  }

  else
  {
    [(TPSSIMPasscodeListController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(TPSSIMPasscodeListController *)self setUnlockPINNavigationController:0];
  unlockPINViewController = [(TPSSIMPasscodeListController *)self unlockPINViewController];
  [unlockPINViewController setDelegate:0];

  [(TPSSIMPasscodeListController *)self setUnlockPINViewController:0];
}

- (void)_dismissChangeController
{
  [(TPSSIMPasscodeListController *)self reloadSpecifiers];
  changePINPopoverController = [(TPSSIMPasscodeListController *)self changePINPopoverController];

  if (changePINPopoverController)
  {
    changePINPopoverController2 = [(TPSSIMPasscodeListController *)self changePINPopoverController];
    [changePINPopoverController2 dismissPopoverAnimated:1];

    changePINPopoverController3 = [(TPSSIMPasscodeListController *)self changePINPopoverController];
    [changePINPopoverController3 setDelegate:0];

    [(TPSSIMPasscodeListController *)self setChangePINPopoverController:0];
  }

  else
  {
    [(TPSSIMPasscodeListController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(TPSSIMPasscodeListController *)self setChangePINNavigationController:0];
  changePINViewController = [(TPSSIMPasscodeListController *)self changePINViewController];
  [changePINViewController setDelegate:0];

  [(TPSSIMPasscodeListController *)self setChangePINViewController:0];
}

- (id)_popoverPresentationView
{
  navigationController = [(TPSSIMPasscodeListController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  view = [presentingViewController view];

  if (!view)
  {
    navigationController2 = [(TPSSIMPasscodeListController *)self navigationController];
    parentViewController = [navigationController2 parentViewController];
    view = [parentViewController view];
  }

  return view;
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  [(TPSSIMPasscodeListController *)self _dismissChangeController];

  [(TPSSIMPasscodeListController *)self _dismissUnlockController];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy)
  {
    v16.receiver = self;
    v16.super_class = TPSSIMPasscodeListController;
    v8 = [(TPSSIMPasscodeListController *)&v16 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v8;
      specifier = [v8 specifier];
      identifier = [specifier identifier];
      v11 = [identifier isEqualToString:@"SET_SIM_PIN_ID"];

      if (v11)
      {
        [v8 setCellEnabled:{-[TPSSIMPasscodeListController isSIMLockAllowed](self, "isSIMLockAllowed")}];
        v12 = [specifier propertyForKey:PSControlKey];
        [v12 setEnabled:{-[TPSSIMPasscodeListController isSIMLockAllowed](self, "isSIMLockAllowed")}];
      }

      else
      {
        identifier2 = [specifier identifier];
        v14 = [identifier2 isEqualToString:@"CHANGE_PIN_ID"];

        if (v14)
        {
          [v8 setCellEnabled:{-[TPSSIMPasscodeListController isSIMPasscodeChangeAllowed](self, "isSIMPasscodeChangeAllowed")}];
          [v8 setAlignment:1];
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)setControlEnabled:(BOOL)enabled atIndex:(int64_t)index
{
  enabledCopy = enabled;
  table = [(TPSSIMPasscodeListController *)self table];
  v8 = [(TPSSIMPasscodeListController *)self indexPathForIndex:index];
  v9 = [(TPSSIMPasscodeListController *)self tableView:table cellForRowAtIndexPath:v8];

  if (objc_opt_respondsToSelector())
  {
    control = [v9 control];
    [control setEnabled:enabledCopy];
  }

  return v9;
}

- (id)setCellEnabled:(BOOL)enabled atIndex:(unsigned int)index
{
  enabledCopy = enabled;
  table = [(TPSSIMPasscodeListController *)self table];
  v8 = [(TPSSIMPasscodeListController *)self indexPathForIndex:index];
  v9 = [(TPSSIMPasscodeListController *)self tableView:table cellForRowAtIndexPath:v8];

  [v9 setCellEnabled:enabledCopy];

  return v9;
}

- (id)setCellLoading:(BOOL)loading atIndex:(unsigned int)index
{
  loadingCopy = loading;
  table = [(TPSSIMPasscodeListController *)self table];
  indexCopy = index;
  v9 = [(TPSSIMPasscodeListController *)self indexPathForIndex:index];
  v10 = [(TPSSIMPasscodeListController *)self tableView:table cellForRowAtIndexPath:v9];

  v11 = [(TPSSIMPasscodeListController *)self specifierAtIndex:indexCopy];
  v12 = v11;
  if (v11)
  {
    v13 = PSControlIsLoadingKey;
    v14 = [v11 propertyForKey:PSControlIsLoadingKey];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue != loadingCopy)
    {
      v16 = [NSNumber numberWithBool:loadingCopy];
      [v12 setProperty:v16 forKey:v13];

      [(TPSSIMPasscodeListController *)self reloadSpecifier:v12 animated:0];
    }
  }

  return v10;
}

- (BOOL)isSIMLockAllowed
{
  subscriberController = [(TPSSIMPasscodeListController *)self subscriberController];
  sIMStatus = [subscriberController SIMStatus];
  v4 = [sIMStatus isEqualToString:kCTSIMSupportSIMStatusReady];

  return v4;
}

- (BOOL)isSIMPasscodeChangeAllowed
{
  isSIMLockAllowed = [(TPSSIMPasscodeListController *)self isSIMLockAllowed];
  if (isSIMLockAllowed)
  {

    LOBYTE(isSIMLockAllowed) = [(TPSSIMPasscodeListController *)self isSIMPasscodeProtected];
  }

  return isSIMLockAllowed;
}

- (BOOL)isSIMPasscodeProtected
{
  subscriberController = [(TPSSIMPasscodeListController *)self subscriberController];
  isSIMPasscodeLockEnabled = [subscriberController isSIMPasscodeLockEnabled];

  return isSIMPasscodeLockEnabled;
}

- (void)setSIMStatus:(id)status
{
  statusCopy = status;
  SIMStatus = self->_SIMStatus;
  if (SIMStatus != statusCopy)
  {
    v9 = statusCopy;
    v6 = SIMStatus;
    v7 = [(NSString *)v9 copy];
    v8 = self->_SIMStatus;
    self->_SIMStatus = v7;

    if ([(NSString *)v9 isEqualToString:kCTSIMSupportSIMStatusPINLocked])
    {
      if (!v6)
      {
        [(TPSSIMPasscodeListController *)self presentSIMPasscodeAlert];
      }
    }

    else if ([(NSString *)v9 isEqualToString:kCTSIMSupportSIMStatusReady])
    {
      [(TPSSIMPasscodeListController *)self reloadSpecifiers];
    }
  }

  _objc_release_x1();
}

- (void)presentSIMPasscodeAlert
{
  v3 = TPSSIMPasscodeLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    subscriptionContext = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v6 = 138412290;
    v7 = subscriptionContext;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Authentication is required in order to proceed; presenting passcode alert for subscription context %@.", &v6, 0xCu);
  }

  subscriberController = [(TPSSIMPasscodeListController *)self subscriberController];
  [subscriberController presentSIMPasscodeAlert];
}

- (void)subscriberController:(id)controller SIMPasscodeLockEnabledDidChange:(BOOL)change
{
  changeCopy = change;
  v6 = TPSSIMPasscodeLog(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (changeCopy)
    {
      v7 = @"enabled";
    }

    else
    {
      v7 = @"disabled";
    }

    subscriptionContext = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = subscriptionContext;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SIM passcode protection changed to %@ for subscription context %@.", &v9, 0x16u);
  }

  [(TPSSIMPasscodeListController *)self reloadSpecifiers];
}

- (void)subscriberController:(id)controller SIMStatusDidChange:(id)change
{
  changeCopy = change;
  v7 = TPSSIMPasscodeLog(changeCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    subscriptionContext = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v9 = 138412546;
    v10 = changeCopy;
    v11 = 2112;
    v12 = subscriptionContext;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "SIM status changed to %@ for subscription context %@.", &v9, 0x16u);
  }

  [(TPSSIMPasscodeListController *)self setSIMStatus:changeCopy];
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification
{
  notificationCopy = notification;
  v6 = TPSSIMPasscodeLog(notificationCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = notificationCopy;
    v7 = v11;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v10, 0x16u);
  }

  sIMStatus = [(TPSSIMPasscodeListController *)self SIMStatus];
  v9 = [sIMStatus isEqualToString:kCTSIMSupportSIMStatusPINLocked];

  if (v9)
  {
    [(TPSSIMPasscodeListController *)self presentSIMPasscodeAlert];
  }
}

- (void)handleUIApplicationSuspendedNotification:(id)notification
{
  notificationCopy = notification;
  v6 = TPSSIMPasscodeLog(notificationCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = notificationCopy;
    v7 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v8, 0x16u);
  }

  [(TPSSIMPasscodeListController *)self _dismissChangeController];
  [(TPSSIMPasscodeListController *)self _dismissUnlockController];
}

@end