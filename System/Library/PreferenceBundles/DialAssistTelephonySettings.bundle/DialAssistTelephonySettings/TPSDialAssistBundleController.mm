@interface TPSDialAssistBundleController
- (BOOL)isHidden;
- (TPSDialAssistController)dialAssistController;
- (id)isMainSwitchOn:(id)on;
- (id)specifiers;
- (id)supportedSubscriptions;
- (void)setMainSwitchOn:(id)on specifier:(id)specifier;
@end

@implementation TPSDialAssistBundleController

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"DialAssistHelp"];
    v6 = [TPSDialAssistStrings localizedStringForKey:@"BUNDLE_CONTROLLER_SPECIFIER_GROUP_FOOTER_TEXT"];
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    v7 = [TPSDialAssistStrings localizedStringForKey:@"BUNDLE_CONTROLLER_SPECIFIER_SWITCH_TITLE"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setMainSwitchOn:specifier:" get:"isMainSwitchOn:" detail:0 cell:6 edit:0];

    [v8 setProperty:@"DialAssistSwitch" forKey:PSIDKey];
    [v8 setProperty:@"com.apple.telephonyutilities.dialassist" forKey:PSDefaultsKey];
    v9 = [NSNumber numberWithBool:1];
    [v8 setProperty:v9 forKey:PSDefaultValueKey];

    [v8 setProperty:@"enable-dial-assist" forKey:PSKeyNameKey];
    [v8 setProperty:TUDialAssistUserSettingChanged forKey:PSValueChangedNotificationKey];
    [v4 addObject:v8];
    v10 = [v4 copy];
    v11 = self->_specifiers;
    self->_specifiers = v10;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (TPSDialAssistController)dialAssistController
{
  dialAssistController = self->_dialAssistController;
  if (!dialAssistController)
  {
    v4 = objc_alloc_init(TPSDialAssistController);
    v5 = self->_dialAssistController;
    self->_dialAssistController = v4;

    dialAssistController = self->_dialAssistController;
  }

  return dialAssistController;
}

- (BOOL)isHidden
{
  v9.receiver = self;
  v9.super_class = TPSDialAssistBundleController;
  isHidden = [(TPSDialAssistBundleController *)&v9 isHidden];
  if ((isHidden & 1) == 0)
  {
    isHidden = +[UIApplication isRunningInStoreDemoMode];
    if ((isHidden & 1) == 0)
    {
      v4 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v4 userInterfaceIdiom];

      if (userInterfaceIdiom != &dword_0 + 1)
      {
        return 0;
      }
    }
  }

  v6 = TPSDialAssistLog(isHidden, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Hiding TPSDialAssist settings row from view", v8, 2u);
  }

  return 1;
}

- (id)supportedSubscriptions
{
  supportedSubscriptions = self->_supportedSubscriptions;
  if (!supportedSubscriptions)
  {
    v21.receiver = self;
    v21.super_class = TPSDialAssistBundleController;
    subscriptions = [(TPSDialAssistBundleController *)&v21 subscriptions];
    v5 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [subscriptions count]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = subscriptions;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (([v11 isSimHidden] & 1) == 0)
          {
            dialAssistController = [(TPSDialAssistBundleController *)self dialAssistController];
            v13 = [dialAssistController supportsDialAssistForSubscriptionContext:v11];

            if (v13)
            {
              [v5 addObject:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
    v15 = self->_supportedSubscriptions;
    self->_supportedSubscriptions = v14;

    supportedSubscriptions = self->_supportedSubscriptions;
  }

  return supportedSubscriptions;
}

- (id)isMainSwitchOn:(id)on
{
  onCopy = on;
  parentListController = [(TPSDialAssistBundleController *)self parentListController];
  v6 = [parentListController readPreferenceValue:onCopy];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = &dword_0 + 1;
  }

  v8 = [NSNumber numberWithBool:bOOLValue];

  return v8;
}

- (void)setMainSwitchOn:(id)on specifier:(id)specifier
{
  onCopy = on;
  specifierCopy = specifier;
  v9 = TPSDialAssistLog(specifierCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [onCopy BOOLValue];
    v11 = @"Disabling";
    if (bOOLValue)
    {
      v11 = @"Enabling";
    }

    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ dial assist", &v13, 0xCu);
  }

  parentListController = [(TPSDialAssistBundleController *)self parentListController];
  [parentListController setPreferenceValue:onCopy specifier:specifierCopy];
}

@end