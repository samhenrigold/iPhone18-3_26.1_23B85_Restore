@interface TSSIMSetupPublicApiInstallFlow
- (TSSIMSetupPublicApiInstallFlow)initWithAppName:(id)name requireSetup:(BOOL)setup skipGeneralInstallConsent:(BOOL)consent;
- (id)_firstViewController;
- (id)_validCarrierName;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)_alertConsentWithCompletion:(id)completion;
- (void)_displayUserConsentAlert:(id)alert;
- (void)_maybeShowPreinstallConsentOnViewController:(id)controller;
- (void)dealloc;
- (void)firstViewController:(id)controller;
- (void)planItemsUpdated:(id)updated planListError:(id)error;
- (void)setCancelNavigationBarItems:(id)items;
- (void)userDidTapCancel;
@end

@implementation TSSIMSetupPublicApiInstallFlow

- (TSSIMSetupPublicApiInstallFlow)initWithAppName:(id)name requireSetup:(BOOL)setup skipGeneralInstallConsent:(BOOL)consent
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = TSSIMSetupPublicApiInstallFlow;
  v8 = [(TSSIMSetupFlow *)&v13 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    installName = v8->_installName;
    v8->_installName = v9;

    v8->_userConsentType = 0;
    v8->_signupConsentResponse = 0;
    v8->_skipGeneralInstallConsent = consent;
    v11 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v11 assertUserInPurchaseFlowStartOver:0 caller:v8];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4 = +[TSCellularPlanManagerCache sharedInstance];
  [v4 resetDelegate:self];

  v5.receiver = self;
  v5.super_class = TSSIMSetupPublicApiInstallFlow;
  [(TSSIMSetupPublicApiInstallFlow *)&v5 dealloc];
}

- (id)firstViewController
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[TSCellularPlanManagerCache sharedInstance];
  [v3 setDelegate:self];

  self->_isPreinstallingViewControllerActive = 1;
  v4 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_installName consentType:1 requireAdditionalConsent:0];
  [(TSCellularPlanUserConsentViewController *)v4 setDelegate:self];
  v5 = _TSLogDomain([(TSSIMSetupPublicApiInstallFlow *)self _maybeShowPreinstallConsentOnViewController:v4]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2080;
    v10 = "[TSSIMSetupPublicApiInstallFlow firstViewController]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v7, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v4];

  return v4;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__TSSIMSetupPublicApiInstallFlow_firstViewController___block_invoke;
    v5[3] = &unk_279B44EE8;
    v6 = controllerCopy;
    objc_copyWeak(&v7, &location);
    [(TSSIMSetupPublicApiInstallFlow *)self _displayUserConsentAlert:v5];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&location);
  }
}

void __54__TSSIMSetupPublicApiInstallFlow_firstViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained _firstViewController];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 userDidTapCancel];

    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (id)nextViewControllerFrom:(id)from
{
  v29[2] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([TSUtilities isRegulatoryRestrictionActive:self->_planInstallError])
  {
    self->_isPreinstallingViewControllerActive = 0;
    v5 = [TSSubFlowViewController alloc];
    v28[0] = @"FlowTypeKey";
    v28[1] = @"SkipActivatingPane";
    v29[0] = &unk_287583B68;
    v29[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    navigationController = [(TSSIMSetupFlow *)self navigationController];
    v8 = [(TSSubFlowViewController *)v5 initWithOptions:v6 navigationController:navigationController delegate:self];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__TSSIMSetupPublicApiInstallFlow_nextViewControllerFrom___block_invoke;
    v21[3] = &unk_279B44578;
    v21[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v21);
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      confirmationCode = fromCopy;
      if ([confirmationCode consentType] == 1 && self->_confirmationCodeRequired)
      {
        v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_carrierName requireGeneralConsent:1];
        self->_confirmationCodeRequired = 0;
LABEL_29:

        goto LABEL_30;
      }

      if ([confirmationCode consentType] == 4 && (self->_userConsentType & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v16 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_carrierName consentType:self->_userConsentType requireAdditionalConsent:0];
LABEL_27:
        v8 = v16;
        goto LABEL_29;
      }

      self->_isPreinstallingViewControllerActive = 0;
      null = [MEMORY[0x277CBEB68] null];
      if (self->_skipGeneralInstallConsent && [(NSString *)self->_installName length])
      {
        v17 = self->_installName;

        null = v17;
      }

      v18 = [TSSubFlowViewController alloc];
      v24[0] = @"FlowTypeKey";
      v24[1] = @"SkipActivatingPane";
      v25[0] = &unk_287583B68;
      v25[1] = MEMORY[0x277CBEC38];
      v24[2] = @"PlanSetupTypeKey";
      v24[3] = @"CarrierNameKey";
      v25[2] = &unk_287583B80;
      v25[3] = null;
      navigationController3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
      navigationController2 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v18 initWithOptions:navigationController3 navigationController:navigationController2 delegate:self];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_30;
        }

        confirmationCode = [fromCopy confirmationCode];
        v16 = [[TSCellularPlanUserConsentViewController alloc] initWithConfirmationCode:self->_carrierName consentType:4 requireAdditionalConsent:self->_userConsentType != 0 confirmationCode:confirmationCode acceptButtonTapped:0];
        goto LABEL_27;
      }

      confirmationCode = fromCopy;
      if (+[TSUtilities isPad](TSUtilities, "isPad") || [confirmationCode subFlowType] != 16)
      {
        v8 = 0;
        goto LABEL_29;
      }

      v13 = [TSSubFlowViewController alloc];
      v22 = @"FlowTypeKey";
      v23 = &unk_287583B80;
      null = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      navigationController3 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v13 initWithOptions:null navigationController:navigationController3 delegate:self];
    }

    goto LABEL_29;
  }

  if (self->_confirmationCodeRequired)
  {
    v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_carrierName requireGeneralConsent:1];
    self->_confirmationCodeRequired = 0;
  }

  else if (self->_skipGeneralInstallConsent)
  {
    self->_isPreinstallingViewControllerActive = 0;
    v10 = [TSSubFlowViewController alloc];
    v26[0] = @"FlowTypeKey";
    v26[1] = @"SkipActivatingPane";
    v27[0] = &unk_287583B68;
    v27[1] = MEMORY[0x277CBEC38];
    v26[2] = @"PlanSetupTypeKey";
    v27[2] = &unk_287583B80;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    navigationController4 = [(TSSIMSetupFlow *)self navigationController];
    v8 = [(TSSubFlowViewController *)v10 initWithOptions:v11 navigationController:navigationController4 delegate:self];
  }

  else
  {
    v8 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_carrierName consentType:4 requireAdditionalConsent:self->_userConsentType != 0];
  }

LABEL_30:

  return v8;
}

void __57__TSSIMSetupPublicApiInstallFlow_nextViewControllerFrom___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"transfer.failed" object:*(*(a1 + 32) + 104)];
}

- (void)setCancelNavigationBarItems:(id)items
{
  navigationItem = [items navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)userDidTapCancel
{
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  if (!topViewController || (v4 = topViewController, [(TSSIMSetupFlow *)self topViewController], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    v7 = +[TSCellularPlanManagerCache sharedInstance];
    [v7 resumePlanProvisioning:0 userConsent:0];
  }

  v8.receiver = self;
  v8.super_class = TSSIMSetupPublicApiInstallFlow;
  [(TSSIMSetupFlow *)&v8 userDidTapCancel];
}

- (void)planItemsUpdated:(id)updated planListError:(id)error
{
  v60 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  errorCopy = error;
  v8 = errorCopy;
  if (self->_planInstallError)
  {
    v9 = _TSLogDomain(errorCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupPublicApiInstallFlow planItemsUpdated:v9 planListError:?];
    }

    goto LABEL_44;
  }

  if (errorCopy)
  {
    v10 = _TSLogDomain(errorCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupPublicApiInstallFlow planItemsUpdated:v8 planListError:v10];
    }

    domain = [v8 domain];
    if ([domain isEqualToString:*MEMORY[0x277CF9680]])
    {
      v12 = v8;
      code = [v8 code];

      if (code == 19)
      {
        self->_confirmationCodeRequired = 1;
LABEL_43:
        v8 = v12;
        goto LABEL_44;
      }
    }

    else
    {
      v12 = v8;
    }

    v35 = [TSUtilities isRegulatoryRestrictionActive:v12];
    objc_storeStrong(&self->_planInstallError, error);
    if (v35)
    {
      topViewController = [(TSSIMSetupFlow *)self topViewController];
      [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController];
    }

    else
    {
      topViewController = [TSUtilities getErrorTitleDetail:v12 forCarrier:self->_carrierName];
      v37 = MEMORY[0x277D75110];
      v38 = [topViewController objectForKeyedSubscript:@"ErrorHeader"];
      v39 = [topViewController objectForKeyedSubscript:@"ErrorDetail"];
      v40 = [v37 alertControllerWithTitle:v38 message:v39 preferredStyle:1];

      v41 = MEMORY[0x277D750F8];
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __65__TSSIMSetupPublicApiInstallFlow_planItemsUpdated_planListError___block_invoke;
      v54[3] = &unk_279B44B38;
      v54[4] = self;
      v44 = [v41 actionWithTitle:v43 style:1 handler:v54];
      [v40 addAction:v44];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__TSSIMSetupPublicApiInstallFlow_planItemsUpdated_planListError___block_invoke_2;
      block[3] = &unk_279B44490;
      block[4] = self;
      v53 = v40;
      v45 = v40;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    goto LABEL_43;
  }

  if (updatedCopy)
  {
    if (self->_isPreinstallingViewControllerActive)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v14 = [updatedCopy countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (v14)
      {
        v15 = v14;
        v47 = 0;
        v16 = 0;
        v17 = 0;
        v18 = *v49;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(updatedCopy);
            }

            v20 = *(*(&v48 + 1) + 8 * i);
            if ([v20 isInstalling])
            {
              plan = [v20 plan];
              status = [plan status];

              if (status != 6)
              {
                carrierName = [v20 carrierName];
                v24 = [carrierName copy];
                carrierName = self->_carrierName;
                self->_carrierName = v24;

                iccid = [v20 iccid];
                v17 = [iccid length] != 0;

                v28 = _TSLogDomain(v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = self->_carrierName;
                  *buf = 138412546;
                  v56 = v29;
                  v57 = 2080;
                  v58 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
                  _os_log_impl(&dword_262AA8000, v28, OS_LOG_TYPE_DEFAULT, "installing [%@] @%s", buf, 0x16u);
                }
              }
            }

            if (([v20 isSelected] & 1) != 0 || objc_msgSend(v20, "isInstalling"))
            {
              ++v16;
            }
          }

          v15 = [updatedCopy countByEnumeratingWithState:&v48 objects:v59 count:16];
        }

        while (v15);
        if (v16 >= 2)
        {
          self->_requireSetup = 1;
        }

        v8 = v47;
        if (v17)
        {
          v30 = +[TSCellularPlanManagerCache sharedInstance];
          v31 = [v30 calculateInstallConsentTextTypeFor:updatedCopy];

          if (v31 > 2)
          {
            if ((v31 - 3) >= 3)
            {
              goto LABEL_50;
            }
          }

          else if (v31)
          {
            if (v31 == 1)
            {
              v33 = _TSLogDomain(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v56 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "disable not allowed @%s", buf, 0xCu);
              }

              v34 = 3;
            }

            else
            {
              if (v31 != 2)
              {
                goto LABEL_50;
              }

              v33 = _TSLogDomain(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v56 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "delete not allowed @%s", buf, 0xCu);
              }

              v34 = 2;
            }

            goto LABEL_49;
          }

          v33 = _TSLogDomain(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v56 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
            _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "Invalid consent @%s", buf, 0xCu);
          }

          v34 = 0;
LABEL_49:

          self->_userConsentType = v34;
LABEL_50:
          if (self->_isPreinstallingViewControllerActive)
          {
            self->_isPreinstallingViewControllerActive = 0;
            topViewController2 = [(TSSIMSetupFlow *)self topViewController];
            [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController2];
          }
        }
      }
    }
  }

LABEL_44:
}

void __65__TSSIMSetupPublicApiInstallFlow_planItemsUpdated_planListError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_maybeShowPreinstallConsentOnViewController:(id)controller
{
  controllerCopy = controller;
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  planItems = [v5 planItems];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__TSSIMSetupPublicApiInstallFlow__maybeShowPreinstallConsentOnViewController___block_invoke;
  v12[3] = &unk_279B45338;
  v12[4] = self;
  v7 = [TSUtilities preinstallPPRAlertControllerWithItems:planItems completion:v12];
  if (v7)
  {
    v8 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__TSSIMSetupPublicApiInstallFlow__maybeShowPreinstallConsentOnViewController___block_invoke_2;
    block[3] = &unk_279B44490;
    v10 = controllerCopy;
    v11 = v7;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

void *__78__TSSIMSetupPublicApiInstallFlow__maybeShowPreinstallConsentOnViewController___block_invoke(void *result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 4);
      v3 = 2;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 4);
      v3 = 1;
    }

    *(v2 + 160) = v3;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return [*(result + 4) userDidTapCancel];
    }
  }

  else
  {
    *(*(result + 4) + 160) = 0;
  }

  return result;
}

- (void)_alertConsentWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACTIVATE_NEW_ESIM_ALERT_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ACTIVATE_NEW_ESIM_ALERT_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ACTIVATE" value:&stru_28753DF48 table:@"Localizable"];

  v12 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke;
  block[3] = &unk_279B45388;
  v19 = v5;
  v20 = v7;
  v21 = v11;
  v22 = v9;
  v23 = completionCopy;
  v13 = completionCopy;
  v14 = v9;
  v15 = v11;
  v16 = v7;
  v17 = v5;
  dispatch_async(v12, block);
}

void __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0, &v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2;
  block[3] = &unk_279B45360;
  v6 = v2;
  v4 = *(a1 + 64);
  v5 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 48);
  if (*(a1 + 48))
  {
    v4 = _TSLogDomain(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2_cold_1(v3, v4);
    }

    return (*(*(a1 + 32) + 16))();
  }

  if (*(a1 + 40))
  {
    v5 = _TSLogDomain(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v9 = 134218242;
      v10 = v6;
      v11 = 2080;
      v12 = "[TSSIMSetupPublicApiInstallFlow _alertConsentWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "response flags = %lu @%s", &v9, 0x16u);
    }

    return (*(*(a1 + 32) + 16))();
  }

  v8 = *(*(a1 + 32) + 16);

  return v8();
}

- (void)_displayUserConsentAlert:(id)alert
{
  alertCopy = alert;
  installName = self->_installName;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CAMERA" value:&stru_28753DF48 table:@"Localizable"];
  LODWORD(installName) = [(NSString *)installName isEqualToString:v6];

  if (installName && ![TSUtilities openPrefsURL:@"prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR"])
  {
    alertCopy[2](alertCopy, 0);
  }

  else
  {
    [(TSSIMSetupPublicApiInstallFlow *)self _alertConsentWithCompletion:alertCopy];
  }
}

- (id)_firstViewController
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = +[TSCellularPlanManagerCache sharedInstance];
  [v3 setDelegate:self];

  self->_isPreinstallingViewControllerActive = 1;
  v4 = objc_alloc_init(SSUserConsentViewController);
  [(SSUserConsentViewController *)v4 setDelegate:self];
  v5 = _TSLogDomain([(TSSIMSetupPublicApiInstallFlow *)self _maybeShowPreinstallConsentOnViewController:v4]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2080;
    v10 = "[TSSIMSetupPublicApiInstallFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v7, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v4];

  return v4;
}

- (id)_validCarrierName
{
  _isFollowUpInstall = [(TSSIMSetupPublicApiInstallFlow *)self _isFollowUpInstall];
  v4 = &OBJC_IVAR___TSSIMSetupPublicApiInstallFlow__carrierName;
  if (_isFollowUpInstall)
  {
    v4 = &OBJC_IVAR___TSSIMSetupPublicApiInstallFlow__installName;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (void)planItemsUpdated:(os_log_t)log planListError:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]received error already @%s", &v1, 0xCu);
}

- (void)planItemsUpdated:(uint64_t)a1 planListError:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[TSSIMSetupPublicApiInstallFlow planItemsUpdated:planListError:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]error: %@ @%s", &v2, 0x16u);
}

void __62__TSSIMSetupPublicApiInstallFlow__alertConsentWithCompletion___block_invoke_2_cold_1(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109378;
  v3[1] = v2;
  v4 = 2080;
  v5 = "[TSSIMSetupPublicApiInstallFlow _alertConsentWithCompletion:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]present notification failed:%d @%s", v3, 0x12u);
}

@end