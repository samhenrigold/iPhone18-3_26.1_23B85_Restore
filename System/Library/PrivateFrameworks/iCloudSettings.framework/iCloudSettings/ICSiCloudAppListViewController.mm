@interface ICSiCloudAppListViewController
- (BOOL)_shouldDisableiCloudUI;
- (id)_specifiersForAppsGroup;
- (id)dataClassSpecifierProvider;
- (id)specifiers;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)accountDidChangeFromAccount:(id)account toAccount:(id)toAccount;
- (void)cleanupDataclassSpecifiers;
- (void)dealloc;
- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)setAccountManager:(id)manager;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ICSiCloudAppListViewController

- (void)setAccountManager:(id)manager
{
  v3.receiver = self;
  v3.super_class = ICSiCloudAppListViewController;
  [(ICSDataclassViewController *)&v3 setAccountManager:manager];
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "ICSiCloudAppListViewController dealloc %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = ICSiCloudAppListViewController;
  [(ICSDataclassViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ICSiCloudAppListViewController;
  [(ACUIDataclassConfigurationViewController *)&v9 viewDidAppear:appear];
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE/com.apple.Dataclass"];
  v5 = +[ICSDeviceExpertManager savedToiCloudTitle];
  v6 = +[ICSDeviceExpertManager appleAccountTitle];
  v10[0] = v6;
  v7 = +[ICSDeviceExpertManager iCloudTitle];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(ICSiCloudAppListViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.application-icon.icloud" title:v5 localizedNavigationComponents:v8 deepLink:v4];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICSiCloudAppListViewController;
  [(ACUIDataclassConfigurationViewController *)&v5 viewDidLoad];
  [(ManageStorageAppsListViewModel *)self->_manageStorageAppsListViewModel fetchAppsListWithFetchHomeViewModel:0 loadImages:0 completionHandler:&__block_literal_global_2];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APP_LIST_VIEW_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [(ICSiCloudAppListViewController *)self setTitle:v4];
}

void __45__ICSiCloudAppListViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v1 = LogSubsystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __45__ICSiCloudAppListViewController_viewDidLoad__block_invoke_cold_1(v1);
  }
}

- (id)dataClassSpecifierProvider
{
  dataClassSpecifierProvider = self->_dataClassSpecifierProvider;
  if (dataClassSpecifierProvider)
  {
    goto LABEL_4;
  }

  homeViewModel = [(ICSiCloudAppListViewController *)self homeViewModel];

  if (homeViewModel)
  {
    v5 = [ICSDataclassSpecifierProvider alloc];
    accountManager = [(ICSDataclassViewController *)self accountManager];
    homeViewModel2 = [(ICSiCloudAppListViewController *)self homeViewModel];
    manageStorageAppsListViewModel = [(ICSiCloudAppListViewController *)self manageStorageAppsListViewModel];
    v9 = [(ICSDataclassSpecifierProvider *)v5 initWithAccountManager:accountManager presenter:self homeViewModel:homeViewModel2 manageStorageAppsListViewModel:manageStorageAppsListViewModel];
    v10 = self->_dataClassSpecifierProvider;
    self->_dataClassSpecifierProvider = v9;

    [(ICSDataclassSpecifierProvider *)self->_dataClassSpecifierProvider setDelegate:self];
    dataClassSpecifierProvider = self->_dataClassSpecifierProvider;
LABEL_4:
    v11 = dataClassSpecifierProvider;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (id)specifiers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.super.super.isa + v3))
  {
    v4 = LogSubsystem(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "ICSiCloudAppListViewController is loading specifiers.", buf, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    _specifiersForAppsGroup = [(ICSiCloudAppListViewController *)self _specifiersForAppsGroup];
    [v5 addObjectsFromArray:_specifiersForAppsGroup];

    v7 = [v5 copy];
    v8 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = v7;
  }

  _shouldDisableiCloudUI = [(ICSiCloudAppListViewController *)self _shouldDisableiCloudUI];
  if (_shouldDisableiCloudUI)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      v14 = *MEMORY[0x277D3FF38];
      v15 = MEMORY[0x277CBEC28];
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v21 + 1) + 8 * v16++) setObject:v15 forKeyedSubscript:{v14, v21}];
        }

        while (v12 != v16);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v12);
    }
  }

  v17 = LogSubsystem(_shouldDisableiCloudUI);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *buf = 138412290;
    v26 = v18;
    _os_log_impl(&dword_275819000, v17, OS_LOG_TYPE_DEFAULT, "ICSiCloudAppListViewController specifiers: returning %@", buf, 0xCu);
  }

  v19 = *(&self->super.super.super.super.super.super.super.super.isa + v3);

  return v19;
}

- (void)cleanupDataclassSpecifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.super.super.isa + v3) = 0;

  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = 0;

  dataClassSpecifierProvider = self->_dataClassSpecifierProvider;

  [(ICSDataclassSpecifierProvider *)dataClassSpecifierProvider setSpecifiers:0];
}

- (id)_specifiersForAppsGroup
{
  appSpecifiers = self->_appSpecifiers;
  if (!appSpecifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dataClassSpecifierProvider = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
    specifiers = [dataClassSpecifierProvider specifiers];
    [v4 addObjectsFromArray:specifiers];

    v7 = [v4 copy];
    v8 = self->_appSpecifiers;
    self->_appSpecifiers = v7;

    appSpecifiers = self->_appSpecifiers;
  }

  return appSpecifiers;
}

- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated
{
  [(ICSiCloudAppListViewController *)self cleanupDataclassSpecifiers:provider];

  [(ICSiCloudAppListViewController *)self reloadSpecifiers];
}

- (BOOL)_shouldDisableiCloudUI
{
  account = [(ICSDataclassViewController *)self account];
  if ([account aa_needsToVerifyTerms])
  {
    isiCloudSuspended = 1;
  }

  else
  {
    account2 = [(ICSDataclassViewController *)self account];
    if ([account2 aa_isPrimaryEmailVerified])
    {
      account3 = [(ICSDataclassViewController *)self account];
      aa_suspensionInfo = [account3 aa_suspensionInfo];
      isiCloudSuspended = [aa_suspensionInfo isiCloudSuspended];
    }

    else
    {
      isiCloudSuspended = 1;
    }
  }

  return isiCloudSuspended;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  activeSpecifier = [(ICSDataclassViewController *)self activeSpecifier];

  if (activeSpecifier)
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  return v7;
}

- (void)accountDidChangeFromAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  v28.receiver = self;
  v28.super_class = ICSiCloudAppListViewController;
  [(ICSDataclassViewController *)&v28 accountDidChangeFromAccount:accountCopy toAccount:toAccountCopy];
  provisionedDataclasses = [accountCopy provisionedDataclasses];
  provisionedDataclasses2 = [toAccountCopy provisionedDataclasses];
  v10 = [provisionedDataclasses isEqual:provisionedDataclasses2];

  if ((v10 & 1) == 0)
  {
    dataClassSpecifierProvider = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
    [dataClassSpecifierProvider resetAccount];

    [(ICSiCloudAppListViewController *)self cleanupDataclassSpecifiers];
    [(ICSiCloudAppListViewController *)self reloadSpecifiers];
  }

  enabledDataclasses = [accountCopy enabledDataclasses];
  enabledDataclasses2 = [toAccountCopy enabledDataclasses];
  v14 = [enabledDataclasses isEqual:enabledDataclasses2];

  if ((v14 & 1) == 0)
  {
    v16 = LogSubsystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_275819000, v16, OS_LOG_TYPE_DEFAULT, "Account enabled dataclasses changed. Will reload specifiers.", v27, 2u);
    }

    if (toAccountCopy)
    {
      v17 = *MEMORY[0x277CB89C8];
      v18 = [accountCopy isEnabledForDataclass:*MEMORY[0x277CB89C8]];
      if (v18 != [toAccountCopy isEnabledForDataclass:v17])
      {
        dataClassSpecifierProvider2 = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
        ubiquitySpecifierProvider = [dataClassSpecifierProvider2 ubiquitySpecifierProvider];
        ubiquityAccessManager = [ubiquitySpecifierProvider ubiquityAccessManager];
        [ubiquityAccessManager setAppAccessGranted:objc_msgSend(toAccountCopy forBundleID:{"isEnabledForDataclass:", v17), @"com.apple.mobilemail"}];
      }

      v22 = *MEMORY[0x277CB8928];
      v23 = [accountCopy isEnabledForDataclass:*MEMORY[0x277CB8928]];
      if (v23 != [toAccountCopy isEnabledForDataclass:v22])
      {
        dataClassSpecifierProvider3 = [(ICSiCloudAppListViewController *)self dataClassSpecifierProvider];
        ubiquitySpecifierProvider2 = [dataClassSpecifierProvider3 ubiquitySpecifierProvider];
        ubiquityAccessManager2 = [ubiquitySpecifierProvider2 ubiquityAccessManager];
        [ubiquityAccessManager2 setAppAccessGranted:objc_msgSend(toAccountCopy forBundleID:{"isEnabledForDataclass:", v22), @"com.apple.mobilesafari"}];
      }
    }
  }
}

@end