@interface SSCellularPlanScanViewController
- (SSCellularPlanScanViewController)initWithBackButton:(BOOL)button;
- (void)_addNewPlanWithCardData:(id)data confirmationCode:(id)code;
- (void)_learnMoreTapped;
- (void)onCodeDetected:(id)detected completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SSCellularPlanScanViewController

- (SSCellularPlanScanViewController)initWithBackButton:(BOOL)button
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"GSMA_SCAN_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"GSMA_SCAN_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v11.receiver = self;
  v11.super_class = SSCellularPlanScanViewController;
  v9 = [(SSScanViewController *)&v11 initWithTitle:v6 detail:v8];

  if (v9)
  {
    v9->_withBackButton = button;
    [(SSScanViewController *)v9 setQrcodeDelegate:v9];
  }

  return v9;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SSCellularPlanScanViewController;
  [(SSScanViewController *)&v8 viewDidLoad];
  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
  [accessoryButton setTitle:v5 forState:0];

  [accessoryButton addTarget:self action:sel__learnMoreTapped forControlEvents:64];
  if (+[TSUtilities inBuddy])
  {
    [accessoryButton setHidden:1];
  }

  else
  {
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    [accessoryButton setHidden:{objc_msgSend(v6, "usingBootstrapDataService")}];
  }

  headerView = [(SSCellularPlanScanViewController *)self headerView];
  [headerView addAccessoryButton:accessoryButton];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SSCellularPlanScanViewController;
  [(SSScanViewController *)&v5 viewWillAppear:appear];
  self->_confirmationCodeRequired = 0;
  self->_transferViaQRCode = 0;
  if (self->_withBackButton)
  {
    [(UIViewController *)self configureNavigationItem];
  }

  else
  {
    delegate = [(SSScanViewController *)self delegate];
    [delegate setCancelNavigationBarItems:self];
  }
}

- (void)onCodeDetected:(id)detected completion:(id)completion
{
  detectedCopy = detected;
  completionCopy = completion;
  if (completionCopy)
  {
    delegate = [(SSScanViewController *)self delegate];
    [delegate waitForResponse:self];

    if ([detectedCopy hasPrefix:@"LPA:1$TR$"])
    {
      self->_transferViaQRCode = 1;
      delegate2 = [(SSScanViewController *)self delegate];
      [delegate2 receivedResponse];

      delegate3 = [(SSScanViewController *)self delegate];
      [delegate3 viewControllerDidComplete:self];
    }

    else
    {
      [(SSCellularPlanScanViewController *)self _addNewPlanWithCardData:detectedCopy confirmationCode:0];
    }
  }

  else
  {
    v11 = _TSLogDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SSCellularPlanScanViewController onCodeDetected:v11 completion:?];
    }
  }
}

- (void)_learnMoreTapped
{
  if (+[TSUtilities isPad])
  {
    v2 = @"https://support.apple.com/HT203089?cid=mc-ols-esim-article_ht203089-ipados_ui-07212023#esim";
  }

  else
  {
    v2 = @"https://support.apple.com/ht209096?cid=mc-ols-esim-article_ht209096-ios_ui-07192022";
  }

  [TSUtilities launchURL:v2];
}

- (void)_addNewPlanWithCardData:(id)data confirmationCode:(id)code
{
  dataCopy = data;
  codeCopy = code;
  objc_storeStrong(&self->_fauxCardData, data);
  delegate = [(SSScanViewController *)self delegate];
  [delegate waitForResponse:self];

  objc_initWeak(&location, self);
  v10 = +[TSCellularPlanManagerCache sharedInstance];
  delegate2 = [(SSScanViewController *)self delegate];
  signupUserConsentResponse = [delegate2 signupUserConsentResponse];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke;
  v13[3] = &unk_279B44278;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  [v10 addNewPlanWithCardData:dataCopy confirmationCode:codeCopy userConsentResponse:signupUserConsentResponse completion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2;
  block[3] = &unk_279B44250;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2(uint64_t a1)
{
  v2 = _TSLogDomain(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2_cold_1(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x277CF9680]];

    if (v6)
    {
      if ([*(a1 + 32) code] == 19)
      {
        *(*(a1 + 40) + 1305) = 1;
        v7 = [WeakRetained delegate];
        [v7 viewControllerDidComplete:WeakRetained];
LABEL_12:

        goto LABEL_13;
      }

      v8 = [TSUtilities isRegulatoryRestrictionActive:*(a1 + 32)];
      v9 = *(a1 + 32);
      if (v8)
      {
        if (v9)
        {
          v7 = [MEMORY[0x277CCAB98] defaultCenter];
          [v7 postNotificationName:@"install.failed" object:*(a1 + 32)];
          goto LABEL_12;
        }
      }

      else if ([v9 code] == 2)
      {
        v7 = [TSUtilities getErrorTitleDetail:*(a1 + 32) forCarrier:&stru_28753DF48];
        v10 = MEMORY[0x277D75110];
        v11 = [v7 objectForKeyedSubscript:@"ErrorHeader"];
        v12 = [v7 objectForKeyedSubscript:@"ErrorDetail"];
        v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

        v14 = MEMORY[0x277D750F8];
        v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_62;
        v21[3] = &unk_279B44228;
        v22 = *(a1 + 32);
        v23 = WeakRetained;
        v24 = *(a1 + 40);
        v17 = [v14 actionWithTitle:v16 style:1 handler:v21];
        [v13 addAction:v17];

        v18 = [WeakRetained navigationController];
        v19 = [v18 visibleViewController];
        [v19 presentViewController:v13 animated:1 completion:0];

        v20 = [WeakRetained delegate];
        [v20 receivedResponse];

        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

void *__77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_62(uint64_t a1)
{
  result = [*(a1 + 32) code];
  if (result == 2)
  {
    v3 = [*(a1 + 40) delegate];
    [v3 receivedResponse];

    v4 = [*(a1 + 40) delegate];
    [v4 setCancelNavigationBarItems:*(a1 + 48)];

    v5 = *(a1 + 40);

    return [v5 viewWillAppear:1];
  }

  return result;
}

- (void)onCodeDetected:(os_log_t)log completion:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SSCellularPlanScanViewController onCodeDetected:completion:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]missing completion @%s", &v1, 0xCu);
}

void __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 2080;
  v6 = "[SSCellularPlanScanViewController _addNewPlanWithCardData:confirmationCode:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]error: %@ @%s", &v3, 0x16u);
}

@end