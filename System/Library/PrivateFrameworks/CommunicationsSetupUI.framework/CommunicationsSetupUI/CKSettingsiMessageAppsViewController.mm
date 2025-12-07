@interface CKSettingsiMessageAppsViewController
- (BOOL)_canDeleteAppAtIndexPath:(id)path;
- (CKSettingsiMessageAppsViewController)initWithAppManager:(id)manager;
- (id)_appsWithiMessageAppsSpecifiers;
- (id)_generateiMessageAppSpecifiers;
- (id)_iMessageOnlyAppsSpecifiers;
- (id)_specifierForApp:(id)app;
- (id)getIsMessagesAppShownInSendMenuForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_deleteApp:(id)app;
- (void)installediMessageAppsDidChange:(id)change;
- (void)setIsMessagesAppShownInSendMenu:(id)menu specifier:(id)specifier;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CKSettingsiMessageAppsViewController

- (CKSettingsiMessageAppsViewController)initWithAppManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = CKSettingsiMessageAppsViewController;
  v6 = [(CKSettingsiMessageAppsViewController *)&v9 init];
  if (v6)
  {
    v7 = MessagesSettingsLocalizedString(@"IMESSAGE_APPS_PAGE_TITLE");
    [(CKSettingsiMessageAppsViewController *)v6 setTitle:v7];
    objc_storeStrong(&v6->_appManager, manager);
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKSettingsiMessageAppsViewController;
  [(CKSettingsiMessageAppsViewController *)&v4 viewDidLoad];
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEditing:1 animated:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_installediMessageAppsDidChange_ name:@"CKSettingsiMessageAppManagerInstalledAppsDidChange" object:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    _generateiMessageAppSpecifiers = [(CKSettingsiMessageAppsViewController *)self _generateiMessageAppSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = _generateiMessageAppSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_generateiMessageAppSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _iMessageOnlyAppsSpecifiers = [(CKSettingsiMessageAppsViewController *)self _iMessageOnlyAppsSpecifiers];
  [v3 addObjectsFromArray:_iMessageOnlyAppsSpecifiers];
  _appsWithiMessageAppsSpecifiers = [(CKSettingsiMessageAppsViewController *)self _appsWithiMessageAppsSpecifiers];
  [v3 addObjectsFromArray:_appsWithiMessageAppsSpecifiers];
  v6 = [v3 copy];

  return v6;
}

- (id)_specifierForApp:(id)app
{
  appCopy = app;
  if ([appCopy isiMessageAppOnly])
  {
    extensionBundleID = [appCopy extensionBundleID];
    extensionDisplayName = [appCopy extensionDisplayName];

    v7 = 4;
    v8 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:extensionDisplayName target:0 set:0 get:0 detail:0 cell:4 edit:0];
  }

  else
  {
    extensionBundleID = [appCopy appBundleID];
    extensionDisplayName = [appCopy appDisplayName];

    v8 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:extensionDisplayName target:self set:sel_setIsMessagesAppShownInSendMenu_specifier_ get:sel_getIsMessagesAppShownInSendMenuForSpecifier_ detail:0 cell:6 edit:0];
    v7 = 0;
  }

  [v8 setIdentifier:extensionBundleID];
  [v8 setProperty:extensionBundleID forKey:*MEMORY[0x277D40008]];
  [v8 setProperty:@"YES" forKey:*MEMORY[0x277D40020]];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v8 setProperty:v9 forKey:*MEMORY[0x277D3FFD0]];

  return v8;
}

- (id)_iMessageOnlyAppsSpecifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  deletableiMessageOnlyApps = [(CKSettingsiMessageAppManager *)self->_appManager deletableiMessageOnlyApps];
  if ([deletableiMessageOnlyApps count])
  {
    v5 = MessagesSettingsLocalizedString(@"IMESSAGE_ONLY_APPS_SECTION_HEADER");
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"IMESSAGE_ONLY_APPS" name:v5];
    [v3 addObject:v6];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = deletableiMessageOnlyApps;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(CKSettingsiMessageAppsViewController *)self _specifierForApp:*(*(&v15 + 1) + 8 * i), v15];
          [v3 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v13 = [v3 copy];

  return v13;
}

- (id)_appsWithiMessageAppsSpecifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  deletableAppsWithiMessageApp = [(CKSettingsiMessageAppManager *)self->_appManager deletableAppsWithiMessageApp];
  if ([deletableAppsWithiMessageApp count])
  {
    v5 = MessagesSettingsLocalizedString(@"APPS_WITH_IMESSAGE_APPS_SECTION_HEADER");
    v6 = MessagesSettingsLocalizedString(@"APPS_WITH_IMESSAGE_APPS_SECTION_FOOTER");
    v16 = v5;
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_WITH_IMESSAGE_APPS" name:v5];
    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
    [v3 addObject:v7];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = deletableAppsWithiMessageApp;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(CKSettingsiMessageAppsViewController *)self _specifierForApp:*(*(&v17 + 1) + 8 * i)];
          [v3 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v14 = [v3 copy];

  return v14;
}

- (void)_deleteApp:(id)app
{
  appBundleID = [app appBundleID];
  v4 = CUTWeakLinkClass();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke;
  v6[3] = &unk_278DE8798;
  v7 = appBundleID;
  v5 = appBundleID;
  [v4 uninstallAppWithBundleID:v5 requestUserConfirmation:1 completion:v6];
}

void __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = csui_log(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Uninstalled app with bundleID: %@", &v8, 0xCu);
  }
}

- (void)installediMessageAppsDidChange:(id)change
{
  v4 = csui_log(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Apps view controller notified of installed apps change", buf, 2u);
  }

  appManager = [(CKSettingsiMessageAppsViewController *)self appManager];
  haveDeletableApps = [appManager haveDeletableApps];
  if (haveDeletableApps)
  {
    _generateiMessageAppSpecifiers = [(CKSettingsiMessageAppsViewController *)self _generateiMessageAppSpecifiers];
    [(CKSettingsiMessageAppsViewController *)self updateSpecifiers:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) withSpecifiers:_generateiMessageAppSpecifiers];
  }

  else
  {
    v9 = csui_log(haveDeletableApps, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "There are no deletable apps remaining, popping the user back to Messages settings.", v11, 2u);
    }

    _generateiMessageAppSpecifiers = [(CKSettingsiMessageAppsViewController *)self navigationController];
    v10 = [_generateiMessageAppSpecifiers popViewControllerAnimated:1];
  }
}

- (void)setIsMessagesAppShownInSendMenu:(id)menu specifier:(id)specifier
{
  menuCopy = menu;
  identifier = [specifier identifier];
  v7 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:identifier];
  LODWORD(self) = [menuCopy BOOLValue];

  [v7 setHiddenInSendMenuByUserPreference:self ^ 1];
}

- (id)getIsMessagesAppShownInSendMenuForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  v5 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:identifier];
  isHiddenInSendMenuByUserPreference = [v5 isHiddenInSendMenuByUserPreference];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:isHiddenInSendMenuByUserPreference ^ 1u];

  return v7;
}

- (BOOL)_canDeleteAppAtIndexPath:(id)path
{
  v4 = [(CKSettingsiMessageAppsViewController *)self specifierAtIndexPath:path];
  identifier = [v4 identifier];
  v6 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:identifier];
  isiMessageAppOnly = [v6 isiMessageAppOnly];

  return isiMessageAppOnly;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v13 = *MEMORY[0x277D85DE8];
  if (style == 1)
  {
    v6 = [(CKSettingsiMessageAppsViewController *)self specifierAtIndexPath:path];
    identifier = [v6 identifier];
    v9 = csui_log(identifier, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = identifier;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "User requested uninstall of app with bundleID: %@", &v11, 0xCu);
    }

    v10 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:identifier];
    [(CKSettingsiMessageAppsViewController *)self _deleteApp:v10];
  }
}

void __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_243BE5000, log, OS_LOG_TYPE_ERROR, "Error uninstalling app: %@. Error: %@", &v4, 0x16u);
}

@end