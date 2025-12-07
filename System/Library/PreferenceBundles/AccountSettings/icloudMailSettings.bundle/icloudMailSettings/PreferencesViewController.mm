@interface PreferencesViewController
- (BOOL)_hasIcloudMailConfigured;
- (id)customEmailSpecifierProvider;
- (id)mailboxSpecifierProvider;
- (id)specifierProviderWithName:(id)name;
- (void)_loadBundleIfNeeded:(id)needed;
- (void)_onCustomEmailDomainLoadComplete:(id)complete;
- (void)_onMailCleanupDeeplinkNotificationHandler:(id)handler;
- (void)addSwiftUIView;
- (void)customEmailDomainWasTapped;
- (void)handleDeeplink:(id)deeplink;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)initAccountInfo;
- (void)mailSettingsStateChangedWithEnabled:(BOOL)enabled;
- (void)mailboxBehaviorWasTapped;
- (void)openMailboxBehaviors;
- (void)openSMIME;
- (void)sMimeTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PreferencesViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PreferencesViewController;
  [(PreferencesViewController *)&v9 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MAIL_CARD_TITLE" value:&stru_11B690 table:0];
  [(PreferencesViewController *)self setTitle:v4];

  [(PreferencesViewController *)self initAccountInfo];
  [(PreferencesViewController *)self addSwiftUIView];
  if (self->_deeplink)
  {
    [(PreferencesViewController *)self handleDeeplink:?];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_onCustomEmailDomainLoadComplete:" name:@"BYOD_SPINNER_CHANGE_NOTIFICATION" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_onMailCleanupDeeplinkNotificationHandler:" name:@"MAIL_CLEANUP_DEEPLINK_NOTIFICATION" object:0];

  userInfo = [*&self->PSViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"START_MAIL_IMPORT"];

  if ([v8 BOOLValue])
  {
    [(MAPreferencesControllerDelegate *)self->swiftUIController presentMailImport];
  }
}

- (void)initAccountInfo
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  userInfo = [*&self->PSViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [userInfo objectForKey:ACUIAccountKey];
  parentAccount = [v5 parentAccount];
  [(PreferencesViewController *)self setAppleAccount:parentAccount];

  appleAccount = [(PreferencesViewController *)self appleAccount];

  if (!appleAccount)
  {
    [(PreferencesViewController *)self setAppleAccount:v5];
  }

  v8 = [userInfo objectForKeyedSubscript:@"ACUIAccountManagerKey"];
  [(PreferencesViewController *)self setAccountManager:v8];

  accountManager = [(PreferencesViewController *)self accountManager];
  accountStore = [accountManager accountStore];
  [(PreferencesViewController *)self setAccountStore:accountStore];

  target = [*&self->PSViewController_opaque[v3] target];
  mailSpecifier = self->_mailSpecifier;
  self->_mailSpecifier = target;

  accountManager2 = [(PreferencesViewController *)self accountManager];
  if (!accountManager2 || (v14 = accountManager2, [(PreferencesViewController *)self appleAccount], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
    v16 = _MSLogSystem(accountManager2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_D47B8(self, v16);
    }
  }
}

- (void)addSwiftUIView
{
  accountStore = [(PreferencesViewController *)self accountStore];
  appleAccount = [(PreferencesViewController *)self appleAccount];
  v5 = [_TtC18icloudMailSettings25MAPreferencesViewProvider getSwiftUIViewWithAccountStore:accountStore appleAccount:appleAccount delegate:self];
  swiftUIController = self->swiftUIController;
  self->swiftUIController = v5;

  [(PreferencesViewController *)self addChildViewController:self->swiftUIController];
  view = [(PreferencesViewController *)self view];
  view2 = [(MAPreferencesControllerDelegate *)self->swiftUIController view];
  [view addSubview:view2];

  v9 = self->swiftUIController;

  [(MAPreferencesControllerDelegate *)v9 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PreferencesViewController;
  [(PreferencesViewController *)&v13 viewDidLayoutSubviews];
  view = [(PreferencesViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(MAPreferencesControllerDelegate *)self->swiftUIController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = [lCopy objectForKey:@"path"];
  v9 = _MSLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_D488C();
  }

  v10 = [v8 isEqualToString:@"BYOD_SETTING_SPECIFIER_ID"];
  v11 = v10;
  v12 = _MSLogSystem(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      sub_D496C();
    }

    v14 = [lCopy objectForKey:@"domain"];
    _hasIcloudMailConfigured = [(PreferencesViewController *)self _hasIcloudMailConfigured];
    if (_hasIcloudMailConfigured)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_3F1C;
      block[3] = &unk_113050;
      v31 = lCopy;
      dispatch_async(&_dispatch_main_q, block);
      v16 = v31;
    }

    else
    {
      v17 = _MSLogSystem(_hasIcloudMailConfigured);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_D49A8();
      }

      v18 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"BYOD_MEMBER_MAIL_CONFIGURE_ALERT_MESSAGE" value:&stru_11B690 table:0];
      v16 = [NSString stringWithFormat:v19, v14];

      v20 = [NSBundle bundleForClass:objc_opt_class()];
      [v20 localizedStringForKey:@"BYOD_MEMBER_MAIL_CONFIGURE_ALERT_TITLE" value:&stru_11B690 table:0];
      v21 = v27 = v14;
      v22 = [UIAlertController alertControllerWithTitle:v21 message:v16 preferredStyle:1];

      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"OK" value:&stru_11B690 table:0];
      v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:0];

      v14 = v27;
      [v22 addAction:v25];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_3F80;
      v28[3] = &unk_113078;
      v28[4] = self;
      v29 = v22;
      v26 = v22;
      dispatch_async(&_dispatch_main_q, v28);
    }

    if (completionCopy)
    {
LABEL_16:
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (v13)
    {
      sub_D48FC();
    }

    [(MAPreferencesControllerDelegate *)self->swiftUIController handleUniversalLinkWithUserInfo:lCopy];
    if (completionCopy)
    {
      goto LABEL_16;
    }
  }
}

- (void)handleDeeplink:(id)deeplink
{
  deeplinkCopy = deeplink;
  v5 = deeplinkCopy;
  if (deeplinkCopy)
  {
    v6 = _MSLogSystem(deeplinkCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Deeplink: %@", buf, 0xCu);
    }

    selfCopy = self;

    v7 = [[NSURLComponents alloc] initWithString:v5];
    path = [v7 path];
    v9 = [path stringByReplacingOccurrencesOfString:@"com.apple.Dataclass.Mail/" withString:&stru_11B690];
    v10 = [v9 stringByReplacingOccurrencesOfString:@"ICLOUD_SERVICE/" withString:&stru_11B690];

    v11 = objc_opt_new();
    v12 = _MSLogSystem([v11 setValue:v10 forKey:@"path"]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      queryItems = [v7 queryItems];
      *buf = 138412290;
      v31 = queryItems;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "NSURLComponents: %@", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    queryItems2 = [v7 queryItems];
    v15 = [queryItems2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(queryItems2);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          value = [v19 value];
          name = [v19 name];
          [v11 setValue:value forKey:name];
        }

        v16 = [queryItems2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    v23 = _MSLogSystem(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Handle deeplink: %@", buf, 0xCu);
    }

    [(PreferencesViewController *)selfCopy handleURL:v11 withCompletion:0];
  }
}

- (BOOL)_hasIcloudMailConfigured
{
  if (![(ACAccount *)self->_appleAccount isProvisionedForDataclass:ACAccountDataclassMail])
  {
    return 0;
  }

  aa_childMailAccount = [(ACAccount *)self->_appleAccount aa_childMailAccount];
  v4 = aa_childMailAccount != 0;

  return v4;
}

- (void)_onCustomEmailDomainLoadComplete:(id)complete
{
  completeCopy = complete;
  v4 = [NSNumber numberWithBool:0];
  userInfo = [completeCopy userInfo];
  v6 = [userInfo valueForKey:@"active"];

  if (v6)
  {
    userInfo2 = [completeCopy userInfo];
    v8 = [userInfo2 valueForKey:@"active"];

    v4 = v8;
  }

  -[MAPreferencesControllerDelegate onCustomEmailDomainEntryPointChangeWithSpinning:](self->swiftUIController, "onCustomEmailDomainEntryPointChangeWithSpinning:", [v4 BOOLValue]);
}

- (void)_onMailCleanupDeeplinkNotificationHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4470;
  v5[3] = &unk_113078;
  handlerCopy = handler;
  selfCopy = self;
  v4 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)mailSettingsStateChangedWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [NSNumber numberWithBool:?];
  v6 = _MSLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[PreferencesViewController] mail dataclass state changed to %@", &v15, 0xCu);
  }

  mailSpecifier = self->_mailSpecifier;
  if (mailSpecifier && ([(MailSettingsSpecifierProvider *)mailSpecifier delegate], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, [(MailSettingsSpecifierProvider *)self->_mailSpecifier delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    delegate = [(MailSettingsSpecifierProvider *)self->_mailSpecifier delegate];
    [delegate specifierProvider:self->_mailSpecifier dataclassSwitchStateDidChange:v5 withSpecifier:*&self->PSViewController_opaque[OBJC_IVAR___PSViewController__specifier]];
  }

  else
  {
    delegate = [(ACAccount *)self->_appleAccount copy];
    v13 = _MSLogSystem([delegate setEnabled:enabledCopy forDataclass:ACAccountDataclassMail]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "No delegate set to save data class state, saving...", &v15, 2u);
    }

    v14 = +[ACAccountStore defaultStore];
    [v14 saveAccount:delegate withDataclassActions:0 doVerify:0 completion:&stru_1130B8];
  }
}

- (void)mailboxBehaviorWasTapped
{
  v3 = _MSLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_D4B04();
  }

  [(PreferencesViewController *)self openMailboxBehaviors];
}

- (void)customEmailDomainWasTapped
{
  v3 = _MSLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[PreferencesViewController] Custom Email Domain was tapped", buf, 2u);
  }

  customEmailSpecifierProvider = [(PreferencesViewController *)self customEmailSpecifierProvider];
  specifiers = [customEmailSpecifierProvider specifiers];
  firstObject = [specifiers firstObject];

  if (firstObject)
  {
    [firstObject performControllerLoadAction];
  }

  else
  {
    v8 = _MSLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Custom Email Specifier is nil", v9, 2u);
    }
  }
}

- (void)sMimeTapped
{
  v3 = _MSLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_D4B40();
  }

  [(PreferencesViewController *)self openSMIME];
}

- (void)openMailboxBehaviors
{
  mailboxSpecifierProvider = [(PreferencesViewController *)self mailboxSpecifierProvider];
  specifiers = [mailboxSpecifierProvider specifiers];
  v4 = [specifiers ac_filter:&stru_1130F8];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    [firstObject performControllerLoadAction];
  }

  else
  {
    v7 = _MSLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_D4B7C();
    }
  }
}

- (void)openSMIME
{
  mailboxSpecifierProvider = [(PreferencesViewController *)self mailboxSpecifierProvider];
  specifiers = [mailboxSpecifierProvider specifiers];
  v4 = [specifiers ac_filter:&stru_113118];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    [firstObject performControllerLoadAction];
  }

  else
  {
    v7 = _MSLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_D4BBC();
    }
  }
}

- (id)mailboxSpecifierProvider
{
  mailboxSpecifierProvider = self->_mailboxSpecifierProvider;
  if (!mailboxSpecifierProvider)
  {
    v4 = [(PreferencesViewController *)self specifierProviderWithName:@"iCloudMailboxSpecifierProvider"];
    v5 = self->_mailboxSpecifierProvider;
    self->_mailboxSpecifierProvider = v4;

    mailboxSpecifierProvider = self->_mailboxSpecifierProvider;
  }

  return mailboxSpecifierProvider;
}

- (id)customEmailSpecifierProvider
{
  customEmailSpecifierProvider = self->_customEmailSpecifierProvider;
  if (!customEmailSpecifierProvider)
  {
    v4 = [(PreferencesViewController *)self specifierProviderWithName:@"BYODSpecifierProvider"];
    v5 = self->_customEmailSpecifierProvider;
    self->_customEmailSpecifierProvider = v4;

    customEmailSpecifierProvider = self->_customEmailSpecifierProvider;
  }

  return customEmailSpecifierProvider;
}

- (id)specifierProviderWithName:(id)name
{
  nameCopy = name;
  [(PreferencesViewController *)self _loadMailSettingsBundleIfNeeded];
  v5 = NSClassFromString(nameCopy);
  v6 = [(objc_class *)v5 conformsToProtocol:&OBJC_PROTOCOL___AAUISpecifierProvider];
  v7 = v6;
  v8 = _MSLogSystem(v6);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      accountManager = self->_accountManager;
      *buf = 138412290;
      v25 = accountManager;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "AccountManager: %@", buf, 0xCu);
    }

    if (!self->_accountManager)
    {
      v12 = _MSLogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_D4C70();
      }

      v13 = [AIDAAccountManager alloc];
      v14 = +[ACAccountStore defaultStore];
      v15 = [v13 initWithAccountStore:v14];
      v16 = self->_accountManager;
      self->_accountManager = v15;

      v17 = +[ACAccountStore defaultStore];
      aa_primaryAppleAccount = [v17 aa_primaryAppleAccount];
      v23 = aa_primaryAppleAccount;
      v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      [(AIDAAccountManager *)self->_accountManager setAccounts:v19];
    }

    v20 = [[v5 alloc] initWithAccountManager:self->_accountManager presenter:self];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_D4BFC();
    }

    v20 = 0;
  }

  return v20;
}

- (void)_loadBundleIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = UISystemRootDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings"];

  v6 = [v5 stringByAppendingPathComponent:neededCopy];
  v7 = [NSBundle bundleWithPath:v6];
  isLoaded = [v7 isLoaded];
  if ((isLoaded & 1) == 0)
  {
    v9 = _MSLogSystem(isLoaded);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_D4CB0();
    }

    [v7 load];
  }
}

@end