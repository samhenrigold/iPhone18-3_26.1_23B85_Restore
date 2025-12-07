@interface CKSettingsCriticalMessagesViewController
- (CKSettingsCriticalMessagesViewController)init;
- (id)_specifierForApp:(id)app;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKSettingsCriticalMessagesViewController

- (CKSettingsCriticalMessagesViewController)init
{
  v7.receiver = self;
  v7.super_class = CKSettingsCriticalMessagesViewController;
  v2 = [(CKSettingsCriticalMessagesViewController *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_criticalAppsDidChange_ name:@"CKSettingsCriticalMessagesAppsChangedNotification" object:0];

    v4 = objc_alloc_init(CKSettingsCriticalMessagesAppManager);
    appManager = v2->_appManager;
    v2->_appManager = v4;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKSettingsCriticalMessagesViewController;
  [(CKSettingsCriticalMessagesViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CRITICAL_MESSAGES" value:&stru_286A13F00 table:@"CriticalMessagesSettings"];
  [(CKSettingsCriticalMessagesViewController *)self setTitle:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CKSettingsCriticalMessagesViewController;
  [(CKSettingsCriticalMessagesViewController *)&v7 viewWillAppear:appear];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CRITICAL_MESSAGES" value:&stru_286A13F00 table:@"CriticalMessagesSettings"];
  navigationItem = [(CKSettingsCriticalMessagesViewController *)self navigationItem];
  [navigationItem setTitle:v5];
}

- (id)specifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"apps" name:&stru_286A13F00];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CRITICAL_MESSAGES_FOOTER" value:&stru_286A13F00 table:@"CriticalMessagesSettings"];
    [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    criticalMessagesApps = [(CKSettingsCriticalMessagesAppManager *)self->_appManager criticalMessagesApps];
    v10 = [criticalMessagesApps countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(criticalMessagesApps);
          }

          v14 = [(CKSettingsCriticalMessagesViewController *)self _specifierForApp:*(*(&v17 + 1) + 8 * v13)];
          [v5 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [criticalMessagesApps countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_specifierForApp:(id)app
{
  v3 = MEMORY[0x277D3FAD8];
  appCopy = app;
  v5 = objc_alloc_init(v3);
  bundleID = [appCopy bundleID];
  [v5 setIdentifier:bundleID];

  displayName = [appCopy displayName];
  [v5 setName:displayName];

  activeNumberCountLocalizedString = [appCopy activeNumberCountLocalizedString];
  [v5 setProperty:activeNumberCountLocalizedString forKey:*MEMORY[0x277D40160]];

  bundleID2 = [appCopy bundleID];

  [v5 setProperty:bundleID2 forKey:*MEMORY[0x277D40008]];
  [v5 setProperty:@"YES" forKey:*MEMORY[0x277D40020]];
  [v5 setCellType:2];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 setDetailControllerClass:objc_opt_class()];

  return v5;
}

- (id)selectSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [[CKSettingsCriticalMessagesDetailViewController alloc] initWithAppManager:self->_appManager];
  [(CKSettingsCriticalMessagesDetailViewController *)v5 setParentController:self];
  rootController = [(CKSettingsCriticalMessagesViewController *)self rootController];
  [(CKSettingsCriticalMessagesDetailViewController *)v5 setRootController:rootController];

  [(CKSettingsCriticalMessagesDetailViewController *)v5 setSpecifier:specifierCopy];

  return v5;
}

@end