@interface TSCellularPlanUserConsentViewController
+ (void)calculateTitleAndDetailsWithName:(id)name consentType:(unint64_t)type title:(id *)title details:(id *)details;
- (TSCellularPlanUserConsentViewController)initWithConfirmationCode:(id)code consentType:(unint64_t)type requireAdditionalConsent:(BOOL)consent confirmationCode:(id)confirmationCode acceptButtonTapped:(BOOL)tapped;
- (TSCellularPlanUserConsentViewController)initWithName:(id)name consentType:(unint64_t)type requireAdditionalConsent:(BOOL)consent;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_acceptButtonTapped;
- (void)_cancelButtonTapped;
- (void)_declineButtonTapped;
- (void)_setNavigationItems;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TSCellularPlanUserConsentViewController

+ (void)calculateTitleAndDetailsWithName:(id)name consentType:(unint64_t)type title:(id *)title details:(id *)details
{
  nameCopy = name;
  v10 = nameCopy;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v28 = _TSLogDomain(nameCopy);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanUserConsentViewController calculateTitleAndDetailsWithName:v28 consentType:? title:? details:?];
      }
    }

    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"ACTIVATE_ESIM" value:&stru_28753DF48 table:@"Localizable"];
    *title = [v29 stringWithFormat:v31];

    if (v10)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = v15;
      v17 = @"APP_USER_CONSENT_DETAIL_%@";
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  switch(type)
  {
    case 2uLL:
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"CONSENT_NEW_PROFILE_POLICY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      *title = [v18 stringWithFormat:v20];

      v21 = MEMORY[0x277CCACA8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v10)
      {
        v23 = @"CONSENT_NEW_PLAN_CANNOT_BE_DELETED_%@_%@";
LABEL_14:
        v27 = [v22 localizedStringForKey:v23 value:&stru_28753DF48 table:@"Localizable"];
        [v21 stringWithFormat:v27, v10, v10];
        *details = LABEL_24:;

        goto LABEL_25;
      }

      v33 = @"CONSENT_NEW_PLAN_CANNOT_BE_DELETED_NO_NAME";
LABEL_23:
      v27 = [v22 localizedStringForKey:v33 value:&stru_28753DF48 table:@"Localizable"];
      [v21 stringWithFormat:v27, v34, v35];
      goto LABEL_24;
    case 3uLL:
      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"CONSENT_NEW_PROFILE_POLICY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      *title = [v24 stringWithFormat:v26];

      v21 = MEMORY[0x277CCACA8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v10)
      {
        v23 = @"CONSENT_NEW_PLAN_CANNOT_BE_DISABLED_%@_%@";
        goto LABEL_14;
      }

      v33 = @"CONSENT_NEW_PLAN_CANNOT_BE_DISABLED_NO_NAME";
      goto LABEL_23;
    case 4uLL:
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"ACTIVATE_ESIM" value:&stru_28753DF48 table:@"Localizable"];
      *title = [v11 stringWithFormat:v13];

      if (v10)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v16 = v15;
        v17 = @"GENERAL_USER_CONSENT_COMMON_DETAIL_%@";
LABEL_20:
        v32 = [v15 localizedStringForKey:v17 value:&stru_28753DF48 table:@"Localizable"];
        *details = [v14 stringWithFormat:v32, v10];

        break;
      }

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      *details = [v22 localizedStringForKey:@"GENERAL_USER_CONSENT_COMMON_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
LABEL_25:

      break;
  }

LABEL_26:
}

- (TSCellularPlanUserConsentViewController)initWithName:(id)name consentType:(unint64_t)type requireAdditionalConsent:(BOOL)consent
{
  v14 = 0;
  v15 = 0;
  [TSCellularPlanUserConsentViewController calculateTitleAndDetailsWithName:name consentType:type title:&v15 details:&v14];
  v8 = v15;
  v9 = v14;
  v13.receiver = self;
  v13.super_class = TSCellularPlanUserConsentViewController;
  v10 = [(TSCellularPlanUserConsentViewController *)&v13 initWithTitle:v8 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right"];
  v11 = v10;
  if (v10)
  {
    [(TSCellularPlanUserConsentViewController *)v10 setModalInPresentation:1];
    v11->_consentType = type;
    v11->_requireAdditionalConsent = consent;
  }

  return v11;
}

- (TSCellularPlanUserConsentViewController)initWithConfirmationCode:(id)code consentType:(unint64_t)type requireAdditionalConsent:(BOOL)consent confirmationCode:(id)confirmationCode acceptButtonTapped:(BOOL)tapped
{
  confirmationCodeCopy = confirmationCode;
  v20 = 0;
  v21 = 0;
  [TSCellularPlanUserConsentViewController calculateTitleAndDetailsWithName:code consentType:type title:&v21 details:&v20];
  v14 = v21;
  v15 = v20;
  v19.receiver = self;
  v19.super_class = TSCellularPlanUserConsentViewController;
  v16 = [(TSCellularPlanUserConsentViewController *)&v19 initWithTitle:v14 detailText:v15 symbolName:@"antenna.radiowaves.left.and.right"];
  v17 = v16;
  if (v16)
  {
    v16->_consentType = type;
    v16->_requireAdditionalConsent = consent;
    objc_storeStrong(&v16->_confirmationCode, confirmationCode);
    v17->_acceptButtonTapped = tapped;
  }

  return v17;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = TSCellularPlanUserConsentViewController;
  [(TSOBWelcomeController *)&v17 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateTrayButtonText_ name:@"esim.install.state.changed" object:0];

  consentType = self->_consentType;
  if (consentType <= 1)
  {
    if (!consentType)
    {
LABEL_10:
      v5 = 0;
      v6 = @"CONTINUE";
      goto LABEL_11;
    }

    if (consentType == 1)
    {
      v6 = @"CONTINUE";
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
  }

  else
  {
    if ((consentType - 2) < 2)
    {
      v5 = 1;
      v6 = @"CONSENT_POLICY_ALLOW";
      goto LABEL_11;
    }

    if (consentType == 4)
    {
      goto LABEL_10;
    }

    v6 = 0;
    v5 = 0;
  }

LABEL_11:
  v7 = +[SSOBBoldTrayButton boldButton];
  acceptButton = self->_acceptButton;
  self->_acceptButton = v7;

  v9 = self->_acceptButton;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v9 setTitle:v11 forState:0];

  [(SSOBBoldTrayButton *)self->_acceptButton addTarget:self action:sel__acceptButtonTapped forControlEvents:64];
  if (self->_acceptButtonTapped)
  {
    [(TSCellularPlanUserConsentViewController *)self _acceptButtonTapped];
  }

  buttonTray = [(TSCellularPlanUserConsentViewController *)self buttonTray];
  [buttonTray addButton:self->_acceptButton];

  if (v5)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONSENT_POLICY_DECLINE" value:&stru_28753DF48 table:@"Localizable"];
    [linkButton setTitle:v15 forState:0];

    [linkButton addTarget:self action:sel__declineButtonTapped forControlEvents:64];
    buttonTray2 = [(TSCellularPlanUserConsentViewController *)self buttonTray];
    [buttonTray2 addButton:linkButton];
  }

  [(TSCellularPlanUserConsentViewController *)self _setNavigationItems];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v17.receiver = self;
  v17.super_class = TSCellularPlanUserConsentViewController;
  v4 = [(OBBaseWelcomeController *)&v17 viewWillDisappear:disappear];
  if (!self->_didReceiveResponse)
  {
    v5 = _TSLogDomain(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(TSCellularPlanUserConsentViewController *)v5 viewWillDisappear:v6, v7, v8, v9, v10, v11, v12];
    }

    consentType = self->_consentType;
    v14 = +[TSCellularPlanManagerCache sharedInstance];
    v15 = v14;
    if (consentType == 1)
    {
      [v14 resumePlanProvisioning:0 userConsent:0];
    }

    else
    {
      [v14 provideUserResponse:2 confirmationCode:&stru_28753DF48];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained receivedResponse];
}

- (void)_setNavigationItems
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancelNavigationBarItems:self];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  if (+[TSUtilities isPad])
  {
    if (!+[TSUtilities inBuddy]&& !self->_acceptButtonTapped)
    {
      navigationItem = [(OBBaseWelcomeController *)self navigationItem];
      [navigationItem setRightBarButtonItem:v6];
    }

    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  else
  {
    if (self->_acceptButtonTapped)
    {
      goto LABEL_9;
    }

    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v6];
  }

LABEL_9:
}

- (void)_acceptButtonTapped
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(self + 1248))
  {
    v2 = "Yes";
  }

  else
  {
    v2 = "No";
  }

  v3 = 136315394;
  v4 = v2;
  v5 = 2080;
  v6 = "[TSCellularPlanUserConsentViewController _acceptButtonTapped]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] more consent: %s @%s", &v3, 0x16u);
}

- (void)_declineButtonTapped
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSCellularPlanUserConsentViewController _declineButtonTapped]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, self, a3, "[Db] declined @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_cancelButtonTapped
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSCellularPlanUserConsentViewController _cancelButtonTapped]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, self, a3, "[Db] cancelled @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)calculateTitleAndDetailsWithName:(os_log_t)log consentType:title:details:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[TSCellularPlanUserConsentViewController calculateTitleAndDetailsWithName:consentType:title:details:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]No conent type, default to general consent @%s", &v1, 0xCu);
}

- (void)viewWillDisappear:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSCellularPlanUserConsentViewController viewWillDisappear:]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, a1, a3, "[Db] No user response, cancelling @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end