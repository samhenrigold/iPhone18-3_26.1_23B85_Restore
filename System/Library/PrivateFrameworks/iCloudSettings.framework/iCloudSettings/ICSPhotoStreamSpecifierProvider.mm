@interface ICSPhotoStreamSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_isPhotoStreamEnabled:(id)enabled;
- (BOOL)handleURL:(id)l;
- (ICSPhotoStreamSpecifierProvider)initWithAccountManager:(id)manager;
- (NSArray)specifiers;
- (id)_isPhotoStreamEnabledString:(id)string;
- (id)_specifierForPhotoStream;
- (id)account;
- (void)_photoStreamSpecifierWasTapped:(id)tapped;
- (void)_showPhotoStreamController:(id)controller;
@end

@implementation ICSPhotoStreamSpecifierProvider

- (ICSPhotoStreamSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ICSPhotoStreamSpecifierProvider;
  v6 = [(ICSPhotoStreamSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  v9[1] = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    _specifierForPhotoStream = [(ICSPhotoStreamSpecifierProvider *)self _specifierForPhotoStream];
    v5 = _specifierForPhotoStream;
    if (_specifierForPhotoStream)
    {
      v9[0] = _specifierForPhotoStream;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      v7 = self->_specifiers;
      self->_specifiers = v6;
    }

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_specifierForPhotoStream
{
  v12[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D26008]] == 2 && objc_msgSend(mEMORY[0x277D262A0], "effectiveBoolValueForSetting:", *MEMORY[0x277D26058]) == 2 && objc_msgSend(mEMORY[0x277D262A0], "effectiveBoolValueForSetting:", *MEMORY[0x277D25E48]) == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277D3FAD8];
    v6 = *MEMORY[0x277CB89D0];
    account = [(ICSPhotoStreamSpecifierProvider *)self account];
    v4 = [v5 acui_linkListCellSpecifierForDataclass:v6 account:account target:self set:0 get:sel__isPhotoStreamEnabledString_ detail:0];

    v11 = *MEMORY[0x277CE8550];
    account2 = [(ICSPhotoStreamSpecifierProvider *)self account];
    v12[0] = account2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v4 setUserInfo:v9];

    [v4 setControllerLoadAction:sel__photoStreamSpecifierWasTapped_];
  }

  return v4;
}

- (id)_isPhotoStreamEnabledString:(id)string
{
  v3 = [(ICSPhotoStreamSpecifierProvider *)self _isPhotoStreamEnabled:string];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288487370 table:@"Localizable-AppleID"];

  return v7;
}

- (BOOL)_isPhotoStreamEnabled:(id)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v12 = LogSubsystem(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ICSPhotoStreamSpecifierProvider *)&self->_delegate _isPhotoStreamEnabled:v12];
    }

    goto LABEL_8;
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 specifierProvider:self isDataclassAvailableForSpecifier:enabledCopy];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_14;
  }

  account = [(ICSPhotoStreamSpecifierProvider *)self account];
  if ([account isEnabledForDataclass:*MEMORY[0x277CB89D0]])
  {
    v11 = 1;
  }

  else
  {
    account2 = [(ICSPhotoStreamSpecifierProvider *)self account];
    if ([account2 isEnabledForDataclass:*MEMORY[0x277CB8A38]])
    {
      v11 = 1;
    }

    else
    {
      account3 = [(ICSPhotoStreamSpecifierProvider *)self account];
      v11 = [account3 isEnabledForDataclass:*MEMORY[0x277CB8960]];
    }
  }

LABEL_14:
  return v11;
}

- (void)_photoStreamSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&selfCopy->_delegate);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__ICSPhotoStreamSpecifierProvider__photoStreamSpecifierWasTapped___block_invoke;
    v9[3] = &unk_27A666958;
    v10 = selfCopy;
    v11 = tappedCopy;
    v12 = v10;
    [v8 validateDataclassAccessForProvider:v10 specifier:v11 completion:v9];
  }
}

void __66__ICSPhotoStreamSpecifierProvider__photoStreamSpecifierWasTapped___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    [v4 _showPhotoStreamController:v3];
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
    [WeakRetained reloadSpecifierForProvider:*(a1 + 48) identifier:*MEMORY[0x277CB89D0]];
  }
}

- (void)_showPhotoStreamController:(id)controller
{
  controllerCopy = controller;
  photosSettingsController = self->_photosSettingsController;
  if (photosSettingsController)
  {
LABEL_4:
    [(PSListController *)photosSettingsController setSpecifier:controllerCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained specifierProvider:self showViewController:self->_photosSettingsController];

    if (self->_handleURLResourceDictionary && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(PSListController *)self->_photosSettingsController handleURL:self->_handleURLResourceDictionary];
      handleURLResourceDictionary = self->_handleURLResourceDictionary;
      self->_handleURLResourceDictionary = 0;
    }

    goto LABEL_10;
  }

  v6 = objc_alloc_init(ICSPhotoSettingsController);
  if (v6)
  {
    v7 = self->_photosSettingsController;
    self->_photosSettingsController = &v6->super;

    photosSettingsController = self->_photosSettingsController;
    goto LABEL_4;
  }

  v10 = LogSubsystem(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "ICSPhotoStreamSpecifierProvider could not load the photos settings controller!", v11, 2u);
  }

LABEL_10:
}

- (BOOL)handleURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [lCopy objectForKeyedSubscript:@"path"];
  v6 = [v5 hasPrefix:*MEMORY[0x277CB8A08]];
  if (v6 & 1) != 0 || (v6 = [v5 hasPrefix:*MEMORY[0x277CB89D0]], (v6) || (v6 = objc_msgSend(v5, "hasPrefix:", *MEMORY[0x277CB8A38]), (v6) || (v6 = objc_msgSend(v5, "hasPrefix:", *MEMORY[0x277CB8960]), v6))
  {
    v7 = LogSubsystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%@ handling deeplink url for path: %@", buf, 0x16u);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__ICSPhotoStreamSpecifierProvider_handleURL___block_invoke;
    v10[3] = &unk_27A666410;
    v10[4] = self;
    v11 = lCopy;
    dispatch_async(MEMORY[0x277D85CD0], v10);

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __45__ICSPhotoStreamSpecifierProvider_handleURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specifiers];
  v3 = [v2 count];

  if (v3)
  {
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    v4 = *(a1 + 32);
    v6 = [v4 specifiers];
    v5 = [v6 firstObject];
    [v4 _photoStreamSpecifierWasTapped:v5];
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_isPhotoStreamEnabled:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = 138412290;
  v5 = WeakRetained;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Delegate (%@) does not respond to 'specifierProvider:isDataclassAvailableForSpecifier:'", &v4, 0xCu);
}

@end