@interface CNFRegAppleIDSplashViewController
+ (BOOL)shouldShowSplashViewForService:(id)service inProgressRegisteringNonPhoneAccount:(id *)account;
+ (id)_inProgressRegisteringNonPhoneAccountForService:(id)service;
- (id)_iCloudUserName;
- (id)_imService;
- (id)navigationItem;
- (id)serviceDescription;
- (id)serviceFooter;
- (id)serviceIcon;
- (id)serviceName;
- (void)_cnfSignInWithUsername:(id)username password:(id)password;
- (void)_completeIfAccountIsAlreadyRegistered;
- (void)_handleRegistarResults:(BOOL)results alertController:(id)controller;
- (void)_showSettingsController;
- (void)continueRegisteringAccount:(id)account;
- (void)dealloc;
- (void)handleAuthCompletionWithResults:(id)results;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBeginAuthWithContext:(id)context;
@end

@implementation CNFRegAppleIDSplashViewController

+ (BOOL)shouldShowSplashViewForService:(id)service inProgressRegisteringNonPhoneAccount:(id *)account
{
  v39 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
  v7 = [mEMORY[0x277D18998] currentSIMsWithError:0];
  if ([v7 count])
  {
    mEMORY[0x277D18998]2 = [MEMORY[0x277D18998] sharedInstance];
    v9 = [mEMORY[0x277D18998]2 supportsIdentification] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSMS = [mEMORY[0x277D07DB0] supportsSMS];

  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  v13 = [mEMORY[0x277D18D28] accountsForService:serviceCopy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v30 = supportsSMS;
    v31 = v9;
    accountCopy = account;
    v33 = serviceCopy;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        v23 = [v22 accountType] == 2;
        registrationStatus = [v22 registrationStatus];
        v25 = registrationStatus == 5;
        if (registrationStatus == 1)
        {
          v17 |= [v22 CNFRegIsSignedOut] ^ 1;
        }

        v19 |= v23;
        v18 |= v25;
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
    v26 = v19 | v17;
    account = accountCopy;
    serviceCopy = v33;
    supportsSMS = v30;
    LOBYTE(v9) = v31;
  }

  else
  {
    v18 = 0;
    v26 = 0;
  }

  v27 = [CNFRegAppleIDSplashViewController _inProgressRegisteringNonPhoneAccountForService:serviceCopy];
  if (account)
  {
    v27 = v27;
    *account = v27;
  }

  if (v26 & 1 | v18 & (v27 == 0))
  {
    v28 = 0;
  }

  else
  {
    v28 = v9 | supportsSMS ^ 1;
  }

  return v28 & 1;
}

+ (id)_inProgressRegisteringNonPhoneAccountForService:(id)service
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  v5 = [mEMORY[0x277D18D28] accountsForService:serviceCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        accountType = [v10 accountType];
        registrationStatus = [v10 registrationStatus];
        if (registrationStatus != 5 && accountType != 2 && (registrationStatus - 2) <= 2)
        {
          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

LABEL_14:

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v4 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = CNFRegAppleIDSplashViewController;
  specifierCopy = specifier;
  [(PSAppleIDSplashViewController *)&v7 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"ft-serviceType", v7.receiver, v7.super_class}];

  -[CNFRegAppleIDSplashViewController setServiceType:](self, "setServiceType:", [v5 integerValue]);
  CNFRegSetStringTableForServiceType([(CNFRegAppleIDSplashViewController *)self serviceType]);
  v6 = [CNFRegController controllerForServiceType:[(CNFRegAppleIDSplashViewController *)self serviceType]];
  [(CNFRegAppleIDSplashViewController *)self setRegController:v6];
}

- (id)serviceName
{
  serviceType = [(CNFRegAppleIDSplashViewController *)self serviceType];
  if (serviceType > 2)
  {
    v6 = &stru_2856D3978;
  }

  else
  {
    v3 = off_278DE8E38[serviceType];
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v6 = [v4 localizedStringForKey:v3 value:&stru_2856D3978 table:v5];
  }

  return v6;
}

- (id)serviceDescription
{
  v2 = _os_feature_enabled_impl();
  v3 = CommunicationsSetupUIBundle();
  v4 = CNFRegStringTableName();
  if (v2)
  {
    v5 = @"FACETIME_SIGNIN_SETTINGS_BLURB_APPLEACCOUNT";
  }

  else
  {
    v5 = @"FACETIME_SIGNIN_SETTINGS_BLURB";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2856D3978 table:v4];

  return v6;
}

- (id)serviceFooter
{
  v2 = CommunicationsSetupUIBundle();
  v3 = CNFRegStringTableName();
  v4 = [v2 localizedStringForKey:@"FACETIME_SWITCH_STATUS_DEFAULT" value:&stru_2856D3978 table:v3];

  return v4;
}

- (id)serviceIcon
{
  serviceType = [(CNFRegAppleIDSplashViewController *)self serviceType];
  if (serviceType > 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = off_278DE8E50[serviceType];
    v4 = MEMORY[0x277D755B8];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = [v4 _applicationIconImageForBundleIdentifier:v3 format:2 scale:?];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v4 viewDidLoad];
  serviceName = [(CNFRegAppleIDSplashViewController *)self serviceName];
  [(CNFRegAppleIDSplashViewController *)self setTitle:serviceName];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v8 viewWillAppear:appear];
  if ([(CNFRegAppleIDSplashViewController *)self showBusyUIOnAppearance])
  {
    [(PSAppleIDSplashViewController *)self showBusyUI];
  }

  [(CNFRegAppleIDSplashViewController *)self setShowBusyUIOnAppearance:0];
  _iCloudUserName = [(CNFRegAppleIDSplashViewController *)self _iCloudUserName];
  if ([_iCloudUserName length])
  {
    [(PSAppleIDSplashViewController *)self setUsername:_iCloudUserName];
  }

  v5 = objc_opt_class();
  _imService = [(CNFRegAppleIDSplashViewController *)self _imService];
  v7 = [v5 _inProgressRegisteringNonPhoneAccountForService:_imService];

  if (v7)
  {
    [(CNFRegAppleIDSplashViewController *)self continueRegisteringAccount:v7];
  }
}

- (id)navigationItem
{
  parentViewController = [(CNFRegAppleIDSplashViewController *)self parentViewController];
  if (parentViewController && (v4 = parentViewController, [(CNFRegAppleIDSplashViewController *)self parentViewController], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    parentViewController2 = [(CNFRegAppleIDSplashViewController *)self parentViewController];
    navigationItem = [parentViewController2 navigationItem];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CNFRegAppleIDSplashViewController;
    navigationItem = [(CNFRegAppleIDSplashViewController *)&v10 navigationItem];
  }

  return navigationItem;
}

- (void)willBeginAuthWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = contextCopy;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "willBeginAuthWithContext: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = contextCopy;
    IMLogString();
  }

  regController = [(CNFRegAppleIDSplashViewController *)self regController];
  v7 = [regController serviceType] == 0;

  if (v7)
  {
    v10 = 5;
    goto LABEL_10;
  }

  regController2 = [(CNFRegAppleIDSplashViewController *)self regController];
  v9 = [regController2 serviceType] == 1;

  if (v9)
  {
    v10 = 4;
LABEL_10:
    [contextCopy setServiceType:v10];
  }

  v12.receiver = self;
  v12.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v12 willBeginAuthWithContext:contextCopy];
}

- (void)continueRegisteringAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  [(PSAppleIDSplashViewController *)self showBusyUI];
  [(CNFRegAppleIDSplashViewController *)self setShowBusyUIOnAppearance:1];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = [[CNFAccountRegistrar alloc] initWithServiceType:[(CNFRegAppleIDSplashViewController *)self serviceType] presentationViewController:self];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = accountCopy;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Continuing registration of account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v7 = accountCopy;
    IMLogString();
  }

  v6 = v10[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__CNFRegAppleIDSplashViewController_continueRegisteringAccount___block_invoke;
  v8[3] = &unk_278DE8E18;
  v8[4] = self;
  v8[5] = &v9;
  [v6 continueRegistrationForAccount:accountCopy completionBlock:{v8, v7}];
  _Block_object_dispose(&v9, 8);
}

uint64_t __64__CNFRegAppleIDSplashViewController_continueRegisteringAccount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _handleRegistarResults:a2 alertController:a3];
  v4 = *(a1 + 32);

  return [v4 setShowBusyUIOnAppearance:0];
}

- (id)_imService
{
  serviceType = [(CNFRegAppleIDSplashViewController *)self serviceType];
  switch(serviceType)
  {
    case 2:
      goto LABEL_4;
    case 1:
      iMessageService = [MEMORY[0x277D18DE0] iMessageService];
      break;
    case 0:
LABEL_4:
      iMessageService = [MEMORY[0x277D18DE0] facetimeService];
      break;
    default:
      iMessageService = 0;
      break;
  }

  return iMessageService;
}

- (void)_showSettingsController
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CNFSettingsViewControllerNeedsContainerUpdate" object:0];
}

- (void)_completeIfAccountIsAlreadyRegistered
{
  _imService = [(CNFRegAppleIDSplashViewController *)self _imService];
  v4 = [CNFRegAppleIDSplashViewController shouldShowSplashViewForService:_imService inProgressRegisteringNonPhoneAccount:0];

  if (!v4)
  {

    [(CNFRegAppleIDSplashViewController *)self _showSettingsController];
  }
}

- (void)handleAuthCompletionWithResults:(id)results
{
  resultsCopy = results;
  v11.receiver = self;
  v11.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v11 handleAuthCompletionWithResults:resultsCopy];
  v5 = [resultsCopy objectForKey:*MEMORY[0x277CEFFD8]];
  v6 = [resultsCopy objectForKey:*MEMORY[0x277CEFFC8]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "AuthKit callback complete. Signing in.", v10, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(PSAppleIDSplashViewController *)self showBusyUI];
    [(CNFRegAppleIDSplashViewController *)self _cnfSignInWithUsername:v5 password:v7];
  }
}

- (void)_handleRegistarResults:(BOOL)results alertController:(id)controller
{
  resultsCopy = results;
  controllerCopy = controller;
  [(PSAppleIDSplashViewController *)self hideBusyUI];
  if (resultsCopy)
  {
    [(CNFRegAppleIDSplashViewController *)self _showSettingsController];
  }

  else
  {
    v6 = controllerCopy;
    if (!controllerCopy)
    {
      goto LABEL_6;
    }

    [(CNFRegAppleIDSplashViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  v6 = controllerCopy;
LABEL_6:
}

- (void)_cnfSignInWithUsername:(id)username password:(id)password
{
  v25 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  _imService = [(CNFRegAppleIDSplashViewController *)self _imService];
  if (_imService)
  {
    *v15 = 0;
    v16 = v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = [[CNFAccountRegistrar alloc] initWithServiceType:[(CNFRegAppleIDSplashViewController *)self serviceType] presentationViewController:self];
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = usernameCopy;
      v23 = 2112;
      v24 = _imService;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Registering account: %@ (service: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v12 = usernameCopy;
      v13 = _imService;
      IMLogString();
    }

    v10 = *(v16 + 5);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__CNFRegAppleIDSplashViewController__cnfSignInWithUsername_password___block_invoke;
    v14[3] = &unk_278DE8E18;
    v14[4] = self;
    v14[5] = v15;
    [v10 registerAccountWithUsername:usernameCopy password:passwordCopy service:_imService completionBlock:{v14, v12, v13}];
    _Block_object_dispose(v15, 8);
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't generate a service to register with!", v15, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (id)_iCloudUserName
{
  v2 = objc_alloc_init(CUTWeakLinkClass());
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  username = [aa_primaryAppleAccount username];

  return username;
}

@end