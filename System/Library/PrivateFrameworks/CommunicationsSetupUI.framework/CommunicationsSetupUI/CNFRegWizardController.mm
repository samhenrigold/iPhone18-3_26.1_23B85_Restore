@interface CNFRegWizardController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)shouldShowFirstRunController;
- (CNFRegWizardController)initWithRegController:(id)controller;
- (CNFRegWizardController)initWithServiceTypes:(int64_t)types;
- (id)controllerClassesToShow:(BOOL)show;
- (id)controllersToShow:(BOOL)show;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)popViewControllerWithTransition:(int)transition;
- (int)_firstRunState:(id)state;
- (void)_applicationDidEnterBackground;
- (void)_checkRestrictions;
- (void)_doCancel;
- (void)_startListeningForResignResume;
- (void)_stopListeningForResignResume;
- (void)_updateNavigationBarHiddenForCurrentState;
- (void)_updateNavigationBarHiddenForPop;
- (void)_updateNavigationBarHiddenForPush;
- (void)_updateNavigationBarTitle;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)dealloc;
- (void)dismissFinished:(BOOL)finished;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller transition:(int)transition;
- (void)setAllowCancel:(BOOL)cancel;
- (void)setAllowSMS:(BOOL)s;
- (void)setCanShowDisabledScreen:(BOOL)screen;
- (void)setCanShowSplashScreen:(BOOL)screen;
- (void)setCanStartNested:(BOOL)nested;
- (void)setHideLearnMoreButton:(BOOL)button;
- (void)setShouldListenForSuspension:(BOOL)suspension;
- (void)setShouldTerminateInBackground:(BOOL)background;
- (void)setShowSplashOnSignin:(BOOL)signin;
- (void)setSkipReloadOnNextViewWillAppear:(BOOL)appear;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)setupController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CNFRegWizardController

- (CNFRegWizardController)initWithRegController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CNFRegWizardController;
  v5 = [(PSSetupController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_wizardFlags |= 2u;
    if (!controllerCopy)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v5->_serviceType = [controllerCopy serviceType];
    [(CNFRegWizardController *)v6 setRegController:controllerCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__restrictionsChanged name:*MEMORY[0x277D07DA8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__applicationDidFinishLaunching name:*MEMORY[0x277D76668] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];
  }

  v10 = v6;
LABEL_6:

  return v10;
}

- (CNFRegWizardController)initWithServiceTypes:(int64_t)types
{
  v4 = [CNFRegController controllerForServiceType:types];
  v5 = [(CNFRegWizardController *)self initWithRegController:v4];

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  self->_firstRunDelegate = 0;
  [(CNFRegWizardController *)self _stopListeningForResignResume];
  v4.receiver = self;
  v4.super_class = CNFRegWizardController;
  [(PSRootController *)&v4 dealloc];
}

- (int)_firstRunState:(id)state
{
  stateCopy = state;
  regController = [(CNFRegWizardController *)self regController];
  if (([regController isConnected] & 1) == 0)
  {
    [regController connect:1];
  }

  v6 = [regController accountState:stateCopy];
  if ((v6 & 4) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if ((v6 & 2) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if ((v6 & 0x20000000) != 0)
  {
    v10 = 5;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (void)_checkRestrictions
{
  if ([(CNFRegWizardController *)self shouldShowFirstRunController]&& ![(CNFRegWizardController *)self shouldTerminateInBackground])
  {
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    accountModificationRestricted = [mEMORY[0x277D07DB0] accountModificationRestricted];

    if (accountModificationRestricted)
    {
      CNFRegSetStringTableForServiceType(self->_serviceType);
      v5 = CommunicationsSetupUIBundle();
      v6 = CNFRegStringTableName();
      v7 = [v5 localizedStringForKey:@"FACETIME_ACCOUNT_RESTRICTION_ERROR_TITLE" value:&stru_2856D3978 table:v6];

      v8 = CNFRegStringTableName();
      v9 = CommunicationsSetupUIBundle();
      v10 = CNFLocalizedStringFromTableInBundleWithFallback(@"FACETIME_ACCOUNT_CREATION_ERROR_MESSAGE", v8, v9);

      v11 = CommunicationsSetupUIBundle();
      v12 = CNFRegStringTableName();
      v13 = [v11 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v12];

      [(CNFRegWizardController *)self setShouldTerminateInBackground:1];
      v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v10 preferredStyle:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__CNFRegWizardController__checkRestrictions__block_invoke;
      v16[3] = &unk_278DE8328;
      v16[4] = self;
      v15 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:0 handler:v16];
      [v14 addAction:v15];

      [(CNFRegWizardController *)self presentViewController:v14 animated:1 completion:0];
    }
  }
}

void __44__CNFRegWizardController__checkRestrictions__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D07DB0] sharedInstance];
  v3 = [v2 accountModificationRestricted];

  if (v3)
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 suspend];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 setShouldTerminateInBackground:0];
  }
}

- (id)controllerClassesToShow:(BOOL)show
{
  regController = [(CNFRegWizardController *)self regController];
  isServiceSupported = [regController isServiceSupported];

  if (!isServiceSupported)
  {
    v10 = 0;
    goto LABEL_17;
  }

  regController2 = [(CNFRegWizardController *)self regController];
  appleIDAccounts = [regController2 appleIDAccounts];
  v9 = [(CNFRegWizardController *)self _firstRunState:appleIDAccounts];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v9 < 4 || (-[CNFRegWizardController regController](self, "regController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasFailedLogin], v11, v12))
  {
    v13 = objc_opt_class();
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        canShowSplashScreen = [(CNFRegWizardController *)self canShowSplashScreen];
        v15 = v13;
        if (!canShowSplashScreen)
        {
LABEL_14:
          [v10 addObject:v15];
          goto LABEL_15;
        }

LABEL_13:
        v15 = objc_opt_class();
        goto LABEL_14;
      }

      if (!show)
      {
LABEL_15:

        goto LABEL_17;
      }
    }

    [v10 addObject:v13];
    goto LABEL_13;
  }

  if (v9 == 5)
  {
    [(CNFRegWizardController *)self canShowDisabledScreen];
  }

  [v10 addObject:objc_opt_class()];
LABEL_17:

  return v10;
}

- (id)controllersToShow:(BOOL)show
{
  showCopy = show;
  regController = [(CNFRegWizardController *)self regController];
  isServiceSupported = [regController isServiceSupported];

  if (isServiceSupported)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Getting controllers to show", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v8 = [(CNFRegWizardController *)self controllerClassesToShow:showCopy];
    v9 = v8;
    if ((*&self->_wizardFlags & 4) == 0 && [v8 count])
    {
      v10 = MEMORY[0x277CBEA60];
      v11 = [v9 objectAtIndex:0];
      v12 = [v10 arrayWithObject:v11];

      v9 = v12;
    }

    if (v9 && [v9 count])
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
      if ([v9 count])
      {
        v14 = 0;
        do
        {
          v15 = [v9 objectAtIndex:v14];
          regController2 = [(CNFRegWizardController *)self regController];
          appleIDAccounts = [regController2 appleIDAccounts];

          if ([appleIDAccounts count])
          {
            v18 = [appleIDAccounts objectAtIndex:0];
          }

          else
          {
            v18 = 0;
          }

          v19 = [v15 alloc];
          regController3 = [(CNFRegWizardController *)self regController];
          v21 = [v19 initWithRegController:regController3 account:v18];

          if (objc_opt_respondsToSelector())
          {
            [v21 setHideLearnMoreButton:(*&self->_wizardFlags >> 5) & 1];
          }

          if (!v14 && (*&self->_wizardFlags & 0x100) != 0)
          {
            v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__doCancel];
            [v21 setCustomLeftButton:v22];
          }

          [v13 addObject:v21];

          ++v14;
        }

        while (v14 < [v9 count]);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldShowFirstRunController
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "shouldShowFirstRunController", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  regController = [(CNFRegWizardController *)self regController];
  isServiceSupported = [regController isServiceSupported];

  if ((isServiceSupported & 1) == 0)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Service is not supported", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !IMShouldLog())
    {
      goto LABEL_19;
    }

LABEL_18:
    IMLogString();
LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  if ([mEMORY[0x277D07DB0] supportsSMSIdentification])
  {
    v7 = (*&self->_wizardFlags & 0x200) == 0;

    if (v7)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "SMS identification is supported", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !IMShouldLog())
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  regController2 = [(CNFRegWizardController *)self regController];
  isConnected = [regController2 isConnected];

  if ((isConnected & 1) == 0)
  {
    regController3 = [(CNFRegWizardController *)self regController];
    [regController3 connect:1];
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Checking to see if we need to show the first-run experience", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogIndent();
  regController4 = [(CNFRegWizardController *)self regController];
  accounts = [regController4 accounts];
  v17 = [(CNFRegWizardController *)self _firstRunState:accounts];

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v27) = v17;
    _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "State: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v25 = v17;
    IMLogString();
  }

  v19 = v17 < 4;
  regController5 = [(CNFRegWizardController *)self regController];
  isServiceEnabled = [regController5 isServiceEnabled];

  v10 = isServiceEnabled ^ 1 | v19;
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"NO";
    if (v10)
    {
      v23 = @"YES";
    }

    *buf = 138412290;
    v27 = v23;
    _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "Should show first run controller:%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogOutdent();
  return v10 & 1;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v6 viewDidLoad];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "View did load", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  view = [(CNFRegWizardController *)self view];
  [view setClipsToBounds:1];

  [(CNFRegWizardController *)self setupController];
}

- (void)setupController
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Setting up wizard controller", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegSetStringTableForServiceType(self->_serviceType);
  v3 = CNFRegGlobalAppearanceStyle();
  switch(v3)
  {
    case 6:
      navigationBar = [(CNFRegWizardController *)self navigationBar];
      [navigationBar setBarStyle:1];

      [(CNFRegWizardController *)self _setClipUnderlapWhileTransitioning:1];
      break;
    case 5:
      [(CNFRegWizardController *)self _setClipUnderlapWhileTransitioning:1];
      break;
    case 3:
      navigationBar2 = [(CNFRegWizardController *)self navigationBar];
      [navigationBar2 setBarStyle:1];

      break;
  }

  v49 = CNFRegGlobalAppearanceController();
  navigationBarTintColor = [v49 navigationBarTintColor];
  navigationBar3 = [(CNFRegWizardController *)self navigationBar];
  [navigationBar3 setBarTintColor:navigationBarTintColor];

  navigationBarTranslucent = [v49 navigationBarTranslucent];
  navigationBar4 = [(CNFRegWizardController *)self navigationBar];
  [navigationBar4 setTranslucent:navigationBarTranslucent];

  navigationBarHidesShadow = [v49 navigationBarHidesShadow];
  navigationBar5 = [(CNFRegWizardController *)self navigationBar];
  [navigationBar5 _setHidesShadow:navigationBarHidesShadow];

  navigationBarBackgroundImage = [v49 navigationBarBackgroundImage];
  if (navigationBarBackgroundImage)
  {
    navigationBar6 = [(CNFRegWizardController *)self navigationBar];
    [navigationBar6 setBackgroundImage:navigationBarBackgroundImage forBarPosition:0 barMetrics:0];
  }

  v13 = [(CNFRegWizardController *)self controllerClassesToShow:1];
  viewControllers = [(CNFRegWizardController *)self viewControllers];
  if ((*&self->_wizardFlags & 4) == 0 && [v13 count])
  {
    v14 = MEMORY[0x277CBEA60];
    v15 = [v13 objectAtIndex:0];
    v16 = [v14 arrayWithObject:v15];

    v13 = v16;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "  => Controller classes to show:", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v18)
  {
    v19 = *v63;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v62 + 1) + 8 * i);
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = v21;
          _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "    => %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v47 = v21;
          IMLogString();
        }
      }

      v18 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v18);
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v23, OS_LOG_TYPE_DEFAULT, "  => Current controller stack:", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = viewControllers;
  v24 = [v51 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v24)
  {
    v25 = *v59;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v51);
        }

        v27 = *(*(&v58 + 1) + 8 * j);
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = v27;
          _os_log_impl(&dword_243BE5000, v28, OS_LOG_TYPE_DEFAULT, "    => %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v47 = v27;
          IMLogString();
        }
      }

      v24 = [v51 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v24);
  }

  if ([v51 count])
  {
    v29 = [obj count];
    if (v29 == [v51 count])
    {
      if (![obj count])
      {
        goto LABEL_81;
      }

      v30 = 0;
      while (1)
      {
        v31 = [v51 objectAtIndex:{v30, v47}];
        v32 = [obj objectAtIndex:v30];
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        if ([obj count] <= ++v30)
        {
          goto LABEL_81;
        }
      }
    }
  }

  v34 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v34, OS_LOG_TYPE_DEFAULT, "  => Should reload controllers", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v35 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = (*&self->_wizardFlags >> 2) & 1;
    *buf = 67109120;
    LODWORD(v69) = v36;
    _os_log_impl(&dword_243BE5000, v35, OS_LOG_TYPE_DEFAULT, "  => Can start nested: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v47 = (*&self->_wizardFlags >> 2) & 1;
    IMLogString();
  }

  v37 = [(CNFRegWizardController *)self controllersToShow:1, v47];
  v38 = v37;
  if ((*&self->_wizardFlags & 4) != 0)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = v37;
    v43 = [v42 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v43)
    {
      v44 = *v55;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v54 + 1) + 8 * k);
          [v46 setRootController:self];
          [v46 setParentController:self];
          [v46 setDelegate:self];
        }

        v43 = [v42 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v43);
    }

    [(CNFRegWizardController *)self setViewControllers:v42];
  }

  else
  {
    v39 = [v37 objectAtIndex:0];
    v40 = v39;
    if (v39)
    {
      [v39 setRootController:self];
      [v40 setParentController:self];
      [v40 setDelegate:self];
      v41 = [MEMORY[0x277CBEA60] arrayWithObject:v40];
      [(CNFRegWizardController *)self setViewControllers:v41];
    }
  }

LABEL_81:
}

- (void)_updateNavigationBarTitle
{
  v7 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v7 navigationBarHidesTitle])
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = [v3 initWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    navigationBar = [(CNFRegWizardController *)self navigationBar];
    topItem = [navigationBar topItem];
    [topItem setTitleView:v4];
  }
}

- (void)_updateNavigationBarHiddenForPush
{
  v3 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v3 firstNavigationBarHidden])
  {
    [(CNFRegWizardController *)self setNavigationBarHidden:0];
  }

  [(CNFRegWizardController *)self _updateNavigationBarTitle];
}

- (void)_updateNavigationBarHiddenForPop
{
  v4 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v4 firstNavigationBarHidden])
  {
    viewControllers = [(CNFRegWizardController *)self viewControllers];
    -[CNFRegWizardController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [viewControllers count] == 2, 1);
  }

  [(CNFRegWizardController *)self _updateNavigationBarTitle];
}

- (void)_updateNavigationBarHiddenForCurrentState
{
  v4 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v4 firstNavigationBarHidden])
  {
    viewControllers = [(CNFRegWizardController *)self viewControllers];
    -[CNFRegWizardController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [viewControllers count] == 1, 0);
  }

  [(CNFRegWizardController *)self _updateNavigationBarTitle];
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CNFRegWizardController;
  [(PSRootController *)&v5 setViewControllers:controllers animated:animated];
  [(CNFRegWizardController *)self _updateNavigationBarHiddenForCurrentState];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CNFRegWizardController *)self _updateNavigationBarHiddenForPop];
  v7.receiver = self;
  v7.super_class = CNFRegWizardController;
  v5 = [(PSRootController *)&v7 popViewControllerAnimated:animatedCopy];

  return v5;
}

- (id)popViewControllerWithTransition:(int)transition
{
  v3 = *&transition;
  [(CNFRegWizardController *)self _updateNavigationBarHiddenForPop];
  v7.receiver = self;
  v7.super_class = CNFRegWizardController;
  v5 = [(CNFRegWizardController *)&v7 popViewControllerWithTransition:v3];

  return v5;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(CNFRegWizardController *)self _updateNavigationBarHiddenForPush];
  v7.receiver = self;
  v7.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v7 pushViewController:controllerCopy transition:animatedCopy];
}

- (void)pushViewController:(id)controller transition:(int)transition
{
  v4 = *&transition;
  controllerCopy = controller;
  [(CNFRegWizardController *)self _updateNavigationBarHiddenForPush];
  v7.receiver = self;
  v7.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v7 pushViewController:controllerCopy transition:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  CNFRegSetStringTableForServiceType(self->_serviceType);
  wizardFlags = self->_wizardFlags;
  if ((wizardFlags & 0x80) != 0)
  {
    *&self->_wizardFlags = wizardFlags & 0xFF7F;
  }

  else
  {
    [(CNFRegWizardController *)self setupController];
  }

  if (CNFRegGlobalAppearanceStyle() == 3)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Setting bar style to black", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    navigationBar = [(CNFRegWizardController *)self navigationBar];
    [navigationBar setBarStyle:1];
  }

  v8.receiver = self;
  v8.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v8 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  IsAutomaticAppearanceEnabled = UIKeyboardIsAutomaticAppearanceEnabled();
  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFFE | IsAutomaticAppearanceEnabled ^ 1;
  if ((IsAutomaticAppearanceEnabled & 1) == 0)
  {
    UIKeyboardEnableAutomaticAppearance();
  }

  [(CNFRegWizardController *)self _startListeningForResignResume];
  v6.receiver = self;
  v6.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CNFRegWizardController;
  [(PSSetupController *)&v4 viewWillDisappear:disappear];
  [(CNFRegWizardController *)self _stopListeningForResignResume];
  if (*&self->_wizardFlags)
  {
    UIKeyboardDisableAutomaticAppearance();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CNFRegWizardController;
  [(PSSetupController *)&v3 viewDidDisappear:disappear];
}

- (void)_startListeningForResignResume
{
  if (!self->_resignListener && (*&self->_wizardFlags & 2) != 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D76768];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__CNFRegWizardController__startListeningForResignResume__block_invoke;
    v17[3] = &unk_278DE8900;
    v18 = defaultCenter;
    v5 = defaultCenter;
    v6 = MEMORY[0x245D4D850](v17);
    v7 = [v5 addObserverForName:v4 object:0 queue:0 usingBlock:v6];
    resignListener = self->_resignListener;
    self->_resignListener = v7;
  }

  if (!self->_resumeListener && (*&self->_wizardFlags & 2) != 0)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277D76648];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__CNFRegWizardController__startListeningForResignResume__block_invoke_2;
    v15[3] = &unk_278DE8928;
    v15[4] = self;
    v16 = defaultCenter2;
    v11 = defaultCenter2;
    v12 = MEMORY[0x245D4D850](v15);
    v13 = [v11 addObserverForName:v10 object:0 queue:0 usingBlock:v12];
    resumeListener = self->_resumeListener;
    self->_resumeListener = v13;
  }
}

uint64_t __56__CNFRegWizardController__startListeningForResignResume__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) regController];
  [v2 resetNetworkFirstRunAlert];

  v3 = *(a1 + 40);

  return [v3 postNotificationName:@"com.apple.PreferencesApp.willBecomeActive" object:0];
}

- (void)_stopListeningForResignResume
{
  if (self->_resignListener)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_resignListener];
    resignListener = self->_resignListener;
    self->_resignListener = 0;
  }

  if (self->_resumeListener)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self->_resumeListener];
    resumeListener = self->_resumeListener;
    self->_resumeListener = 0;
  }
}

- (void)applicationWillSuspend
{
  v2.receiver = self;
  v2.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v2 applicationWillSuspend];
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CNFRegWizardController;
  [(CNFRegWizardController *)&v3 applicationDidResume];
  [(CNFRegWizardController *)self _checkRestrictions];
}

- (void)_applicationDidEnterBackground
{
  if ([(CNFRegWizardController *)self shouldTerminateInBackground])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] terminateWithSuccess];
  }
}

- (void)dismissFinished:(BOOL)finished
{
  finishedCopy = finished;
  v21 = *MEMORY[0x277D85DE8];
  firstRunDelegate = self->_firstRunDelegate;
  if (firstRunDelegate)
  {
    v6 = firstRunDelegate;
LABEL_3:
    WeakRetained = v6;
    goto LABEL_4;
  }

  v13 = *MEMORY[0x277D3FC70];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v13));
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v13));
    v15 = [v14 conformsToProtocol:&unk_28570FA50];

    if (v15)
    {
      v6 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v13));
      goto LABEL_3;
    }

    WeakRetained = 0;
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  viewControllers = [(CNFRegWizardController *)self viewControllers];
  v9 = [viewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v16 + 1) + 8 * v12++) setDelegate:0];
      }

      while (v10 != v12);
      v10 = [viewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [WeakRetained firstRunControllerDidFinish:self finished:finishedCopy];
}

- (void)_doCancel
{
  regController = [(CNFRegWizardController *)self regController];
  regController2 = [(CNFRegWizardController *)self regController];
  appleIDAccounts = [regController2 appleIDAccounts];
  -[CNFRegWizardController dismissWithState:](self, "dismissWithState:", [regController accountState:appleIDAccounts]);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  topViewController = [(CNFRegWizardController *)self topViewController];

  if (!topViewController)
  {
    return orientation == 1;
  }

  topViewController2 = [(CNFRegWizardController *)self topViewController];
  v7 = [topViewController2 _isSupportedInterfaceOrientation:orientation];

  return v7;
}

- (void)setCanStartNested:(BOOL)nested
{
  if (nested)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFFB | v3;
}

- (void)setCanShowSplashScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFF7 | v3;
}

- (void)setCanShowDisabledScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFEF | v3;
}

- (void)setSkipReloadOnNextViewWillAppear:(BOOL)appear
{
  if (appear)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFF7F | v3;
}

- (void)setShouldListenForSuspension:(BOOL)suspension
{
  if (suspension)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFFD | v3;
}

- (void)setAllowCancel:(BOOL)cancel
{
  if (cancel)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFEFF | v3;
}

- (void)setAllowSMS:(BOOL)s
{
  if (s)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFDFF | v3;
}

- (void)setHideLearnMoreButton:(BOOL)button
{
  if (button)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFDF | v3;
}

- (void)setShowSplashOnSignin:(BOOL)signin
{
  if (signin)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFFBF | v3;
}

- (void)setShouldTerminateInBackground:(BOOL)background
{
  if (background)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_wizardFlags = *&self->_wizardFlags & 0xFBFF | v3;
}

@end