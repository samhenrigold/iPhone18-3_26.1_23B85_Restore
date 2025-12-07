@interface HKHealthDataclassSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (HKHealthDataclassSpecifierProvider)initWithAccountManager:(id)manager;
- (NSArray)specifiers;
- (id)_account;
- (id)switchStateForSpecifier:(id)specifier;
- (void)_persistHealthDataclassEnablementState:(BOOL)state;
- (void)_presentHealthDatabaseObliterationAlert;
- (void)_reloadAccount;
- (void)_reloadDataclassSpecifier;
- (void)switchStateDidChange:(id)change withSpecifier:(id)specifier;
@end

@implementation HKHealthDataclassSpecifierProvider

- (HKHealthDataclassSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HKHealthDataclassSpecifierProvider;
  v6 = [(HKHealthDataclassSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (id)_account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  return v3;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[_HKBehavior sharedBehavior];
    isDeviceSupported = [v5 isDeviceSupported];

    if (isDeviceSupported)
    {
      if (+[AAUIFeatureFlags isTobleroneEnabled])
      {
        v7 = ACAccountDataclassHealth;
        v8 = [PSSpecifier preferenceSpecifierNamed:ACAccountDataclassHealth target:self set:"switchStateDidChange:withSpecifier:" get:"switchStateForSpecifier:" detail:0 cell:6 edit:0];
        dataclassSpecifier = self->_dataclassSpecifier;
        self->_dataclassSpecifier = v8;

        [(PSSpecifier *)self->_dataclassSpecifier setObject:&__kCFBooleanTrue forKeyedSubscript:PSEnabledKey];
        [(PSSpecifier *)self->_dataclassSpecifier setObject:v7 forKeyedSubscript:PSIDKey];
        [(PSSpecifier *)self->_dataclassSpecifier setObject:v7 forKeyedSubscript:@"com.apple.accountsui.dataclass"];
      }

      else
      {
        v10 = kAccountDataclassHealth;
        _account = [(HKHealthDataclassSpecifierProvider *)self _account];
        v12 = [PSSpecifier acui_specifierForDataclass:v10 account:_account target:self set:"switchStateDidChange:withSpecifier:" get:"switchStateForSpecifier:"];
        v13 = self->_dataclassSpecifier;
        self->_dataclassSpecifier = v12;
      }

      [v4 addObject:self->_dataclassSpecifier];
    }

    v14 = [v4 copy];
    v15 = self->_specifiers;
    self->_specifiers = v14;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (void)switchStateDidChange:(id)change withSpecifier:(id)specifier
{
  bOOLValue = [change BOOLValue];
  if (bOOLValue)
  {

    [(HKHealthDataclassSpecifierProvider *)self _persistHealthDataclassEnablementState:1];
  }

  else
  {
    v6 = HKHealthDataclassOwnerBundle(bOOLValue);
    v7 = [v6 localizedStringForKey:@"DISABLE_TITLE" value:&stru_84F8 table:@"Localizable"];
    v8 = HKHealthDataclassOwnerBundle(v7);
    v9 = [v8 localizedStringForKey:@"DISABLE_MESSAGE" value:&stru_84F8 table:@"Localizable"];
    v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:0];

    v12 = HKHealthDataclassOwnerBundle(v11);
    v13 = [v12 localizedStringForKey:@"DISABLE_CONFIRM" value:&stru_84F8 table:@"Localizable"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1C00;
    v21[3] = &unk_82D8;
    v21[4] = self;
    v22 = 0;
    v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v21];
    [v10 addAction:v14];

    v16 = HKHealthDataclassOwnerBundle(v15);
    v17 = [v16 localizedStringForKey:@"DISABLE_CANCEL" value:&stru_84F8 table:@"Localizable"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1C40;
    v20[3] = &unk_8300;
    v20[4] = self;
    v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v20];
    [v10 addAction:v18];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained specifierProvider:self showViewController:v10];
  }
}

- (id)switchStateForSpecifier:(id)specifier
{
  _account = [(HKHealthDataclassSpecifierProvider *)self _account];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_account isEnabledForDataclass:kAccountDataclassHealth]);

  return v4;
}

- (void)_reloadDataclassSpecifier
{
  v4 = [(HKHealthDataclassSpecifierProvider *)self switchStateForSpecifier:self->_dataclassSpecifier];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self dataclassSwitchStateDidChange:v4 withSpecifier:self->_dataclassSpecifier];
}

- (void)_persistHealthDataclassEnablementState:(BOOL)state
{
  _account = [(HKHealthDataclassSpecifierProvider *)self _account];
  accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
  v7 = dispatch_get_global_queue(2, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1E14;
  v10[3] = &unk_8378;
  stateCopy = state;
  v11 = _account;
  selfCopy = self;
  v13 = accountStore;
  v8 = accountStore;
  v9 = _account;
  dispatch_async(v7, v10);
}

- (void)_reloadAccount
{
  _account = [(HKHealthDataclassSpecifierProvider *)self _account];
  [_account refresh];

  [(HKHealthDataclassSpecifierProvider *)self _reloadDataclassSpecifier];
}

- (void)_presentHealthDatabaseObliterationAlert
{
  v3 = HKHealthDataclassOwnerBundle(self);
  v4 = [v3 localizedStringForKey:@"OBLITERATION_TITLE" value:&stru_84F8 table:@"Localizable"];

  v6 = HKHealthDataclassOwnerBundle(v5);
  v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"OBLITERATION_MESSAGE"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_84F8 table:@"Localizable"];

  v10 = HKHealthDataclassOwnerBundle(v9);
  v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"OBLITERATION_KEEP_DATA"];
  v12 = [v10 localizedStringForKey:v11 value:&stru_84F8 table:@"Localizable"];

  v14 = HKHealthDataclassOwnerBundle(v13);
  v15 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"OBLITERATION_DELETE_DATA"];
  v16 = [v14 localizedStringForKey:v15 value:&stru_84F8 table:@"Localizable"];

  v17 = [UIAlertController alertControllerWithTitle:v4 message:v8 preferredStyle:0];
  v18 = [UIAlertAction actionWithTitle:v12 style:0 handler:&stru_83B8];
  [v17 addAction:v18];

  v19 = [UIAlertAction actionWithTitle:v16 style:2 handler:&stru_83D8];
  [v17 addAction:v19];

  v21 = HKHealthDataclassOwnerBundle(v20);
  v22 = [v21 localizedStringForKey:@"DISABLE_CANCEL" value:&stru_84F8 table:@"Localizable"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2624;
  v25[3] = &unk_8300;
  v25[4] = self;
  v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:v25];
  [v17 addAction:v23];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self showViewController:v17];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end