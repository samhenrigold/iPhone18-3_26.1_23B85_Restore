@interface TSCellularSetupLoadingViewController
- (TSCellularSetupLoadingViewController)initWithRemotePlanWebsheetContext:(id)context isRemotePlan:(BOOL)plan;
- (TSSIMSetupFlowDelegate)delegate;
- (id)navBarTitle;
- (void)_showFailureAlert:(id)alert completion:(id)completion;
- (void)cancelButtonTapped;
- (void)deactivate;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)safariViewController:(id)controller didCompleteInitialLoad:(BOOL)load;
- (void)safariViewController:(id)controller url:(id)url postdata:(id)postdata completion:(id)completion;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)setupCoreTelephonyClientForRemoteSignup;
- (void)setupNavigationBarItems;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation TSCellularSetupLoadingViewController

- (TSCellularSetupLoadingViewController)initWithRemotePlanWebsheetContext:(id)context isRemotePlan:(BOOL)plan
{
  planCopy = plan;
  contextCopy = context;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SETUP_LOADING_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];
  v11.receiver = self;
  v11.super_class = TSCellularSetupLoadingViewController;
  v9 = [(OBSetupAssistantSpinnerController *)&v11 initWithSpinnerText:v8];

  if (v9)
  {
    [(TSCellularSetupLoadingViewController *)v9 setRemotePlanWebsheetContext:contextCopy];
    [(TSCellularSetupLoadingViewController *)v9 setIsRemotePlan:planCopy];
    [(TSCellularSetupLoadingViewController *)v9 setIsProcessCanceled:0];
  }

  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TSCellularSetupLoadingViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  [(TSCellularSetupLoadingViewController *)self setupNavigationBarItems];
  v3 = [TSUtilities backgroundColorForRemotePlan:[(TSCellularSetupLoadingViewController *)self isRemotePlan]];
  view = [(TSCellularSetupLoadingViewController *)self view];
  [view setBackgroundColor:v3];

  [(TSCellularSetupLoadingViewController *)self setupCoreTelephonyClientForRemoteSignup];
}

- (void)setupNavigationBarItems
{
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v4];

  navBarTitle = [(TSCellularSetupLoadingViewController *)self navBarTitle];
  navigationItem3 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem3 setTitle:navBarTitle];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v14 = *MEMORY[0x277D85DE8];
  v5 = _TSLogDomain(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[TSCellularSetupLoadingViewController viewDidDisappear:]";
    v12 = 2080;
    v13 = "[TSCellularSetupLoadingViewController viewDidDisappear:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "dismiss %s  @%s", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = TSCellularSetupLoadingViewController;
  [(OBBaseWelcomeController *)&v9 viewDidDisappear:disappearCopy];
  [(OBSetupAssistantSpinnerController *)self setActivityIndicatorHidden:1];
  remotePlanWebsheetContext = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  if ([remotePlanWebsheetContext useLiveID])
  {
  }

  else
  {
    isProcessCanceled = [(TSCellularSetupLoadingViewController *)self isProcessCanceled];

    if (!isProcessCanceled)
    {
      return;
    }
  }

  delegate = [(TSCellularSetupLoadingViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (void)setupCoreTelephonyClientForRemoteSignup
{
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke;
  v21[3] = &unk_279B44850;
  v21[4] = self;
  v3 = MEMORY[0x2667315D0](v21, a2);
  remotePlanWebsheetContext = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  v5 = [remotePlanWebsheetContext url];

  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    remotePlanWebsheetContext2 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    iccid = [remotePlanWebsheetContext2 url];
    v9 = [v6 URLWithString:iccid];
    remotePlanWebsheetContext3 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    postdata = [remotePlanWebsheetContext3 postdata];
    (v3)[2](v3, v9, postdata, 0);

LABEL_7:
    goto LABEL_8;
  }

  v12 = objc_alloc(MEMORY[0x277CC37B0]);
  v13 = [v12 initWithQueue:MEMORY[0x277D85CD0]];
  coreTelephonyClient = self->_coreTelephonyClient;
  self->_coreTelephonyClient = v13;

  remotePlanWebsheetContext4 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  flowType = [remotePlanWebsheetContext4 flowType];

  if (flowType == 8)
  {
    v17 = self->_coreTelephonyClient;
    remotePlanWebsheetContext2 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    iccid = [remotePlanWebsheetContext2 iccid];
    [(CoreTelephonyClient *)v17 getRemotePlanManageAccountInfoFor:iccid completion:v3];
    goto LABEL_7;
  }

  remotePlanWebsheetContext5 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  flowType2 = [remotePlanWebsheetContext5 flowType];

  if (flowType2 == 7)
  {
    v20 = self->_coreTelephonyClient;
    remotePlanWebsheetContext2 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    iccid = [remotePlanWebsheetContext2 subscriptionContext];
    [(CoreTelephonyClient *)v20 remotePlanSignupInfoFor:iccid userConsent:0 completion:v3];
    goto LABEL_7;
  }

LABEL_8:
}

void __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (!a4)
  {
    v10 = [v9 isProcessCanceled];
    v11 = v10;
    v12 = _TSLogDomain(v10);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 136315394;
        v20 = "[TSCellularSetupLoadingViewController setupCoreTelephonyClientForRemoteSignup]_block_invoke_2";
        v21 = 2080;
        v22 = "[TSCellularSetupLoadingViewController setupCoreTelephonyClientForRemoteSignup]_block_invoke_2";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "Flow Stop by Cancel Set Purchase to NO %s @%s", buf, 0x16u);
      }
    }

    else
    {
      if (v13)
      {
        *buf = 136315138;
        v20 = "[TSCellularSetupLoadingViewController setupCoreTelephonyClientForRemoteSignup]_block_invoke";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "Flow Start @%s", buf, 0xCu);
      }

      [*(a1 + 32) setCarrierURL:v7];
      [*(a1 + 32) setPostdata:v8];
      v14 = [*(a1 + 32) remotePlanWebsheetContext];
      v15 = [v14 useLiveID];

      v16 = *(a1 + 32);
      if (v15)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_58;
        v17[3] = &unk_279B44578;
        v17[4] = v16;
        [v16 safariViewController:v16 url:v7 postdata:v8 completion:v17];
        goto LABEL_12;
      }

      v12 = [v16 delegate];
      [v12 viewControllerDidComplete:*(a1 + 32)];
    }

    goto LABEL_12;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_2;
  v18[3] = &unk_279B44578;
  v18[4] = v9;
  [v9 _showFailureAlert:v9 completion:v18];
LABEL_12:
}

void __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = [*(a1 + 32) delegate];
  [v3 userDidTapCancel];
}

void __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_58(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 userDidTapCancel];
}

- (void)cancelButtonTapped
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TSCellularSetupLoadingViewController cancelButtonTapped]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Cancel Process in Loading @%s", &v4, 0xCu);
  }

  [(TSCellularSetupLoadingViewController *)self setIsProcessCanceled:1];
  [(TSCellularSetupLoadingViewController *)self dismissViewControllerWithTransition:7 completion:0];
}

- (id)navBarTitle
{
  remotePlanWebsheetContext = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  carrierName = [remotePlanWebsheetContext carrierName];
  if (carrierName)
  {
    v5 = carrierName;
    remotePlanWebsheetContext2 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    carrierName2 = [remotePlanWebsheetContext2 carrierName];
    v8 = [carrierName2 length];

    if (v8)
    {
      remotePlanWebsheetContext3 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
      carrierName3 = [remotePlanWebsheetContext3 carrierName];
      goto LABEL_6;
    }
  }

  else
  {
  }

  remotePlanWebsheetContext3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  carrierName3 = [remotePlanWebsheetContext3 localizedStringForKey:@"CELLULAR ACCOUNT" value:&stru_28753DF48 table:@"Localizable"];
LABEL_6:
  v11 = carrierName3;

  return v11;
}

- (void)_showFailureAlert:(id)alert completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  completionCopy = completion;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Connection Failed" value:&stru_28753DF48 table:@"Localizable"];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"The connection to the server was lost.  Please try again later." value:&stru_28753DF48 table:@"Localizable"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__TSCellularSetupLoadingViewController__showFailureAlert_completion___block_invoke;
  v27[3] = &unk_279B44878;
  v15 = completionCopy;
  v28 = v15;
  v16 = [v12 actionWithTitle:v14 style:0 handler:v27];
  [v11 addObject:v16];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v17 addAction:{*(*(&v23 + 1) + 8 * v22++), v23}];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v20);
  }

  [alertCopy presentViewController:v17 animated:1 completion:0];
}

- (void)safariViewController:(id)controller url:(id)url postdata:(id)postdata completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAD18];
  controllerCopy = controller;
  postdata = [(TSCellularSetupLoadingViewController *)self postdata];
  v10 = [postdata valueForKey:@"carrierPostData"];
  v11 = [v7 queryItemWithName:@"signup-url-data" value:v10];

  v12 = MEMORY[0x277CCACE0];
  carrierURL = [(TSCellularSetupLoadingViewController *)self carrierURL];
  v14 = [v12 componentsWithURL:carrierURL resolvingAgainstBaseURL:0];

  v22[0] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v14 setQueryItems:v15];

  v16 = objc_alloc_init(MEMORY[0x277CDB708]);
  [v16 setEntersReaderIfAvailable:0];
  [v16 _setEphemeral:1];
  v17 = objc_alloc(MEMORY[0x277CDB700]);
  v18 = [v14 URL];
  v19 = [v17 initWithURL:v18 configuration:v16];

  [v19 setDelegate:self];
  [v19 _setShowingLinkPreview:0];
  [v19 _setShowingLinkPreviewWithMinimalUI:0];
  [v19 setModalPresentationStyle:1];
  presentationController = [v19 presentationController];
  [presentationController setDelegate:self];

  navigationController = [controllerCopy navigationController];

  [navigationController presentViewController:v19 animated:1 completion:0];
}

- (void)deactivate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[TSCellularSetupLoadingViewController deactivate]";
    v7 = 2080;
    v8 = "[TSCellularSetupLoadingViewController deactivate]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "%s @%s", &v5, 0x16u);
  }

  _remoteViewControllerProxy = [(TSCellularSetupLoadingViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSCellularSetupLoadingViewController presentationControllerDidDismiss:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "safariViewController dismiss @%s", &v6, 0xCu);
  }

  presentingViewController = [(TSCellularSetupLoadingViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:0 completion:0];
}

- (void)safariViewControllerDidFinish:(id)finish
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__TSCellularSetupLoadingViewController_safariViewControllerDidFinish___block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__TSCellularSetupLoadingViewController_safariViewControllerDidFinish___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[TSCellularSetupLoadingViewController safariViewControllerDidFinish:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "safariViewController did finish @%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CF96D8] sharedManager];
  [v4 userSignupInitiatedOrFailed];

  [objc_opt_class() durationForTransition:7];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TSCellularSetupLoadingViewController_safariViewControllerDidFinish___block_invoke_91;
  v7[3] = &unk_279B44578;
  v7[4] = v5;
  [v5 dismissViewControllerWithTransition:7 completion:v7];
  return UIKeyboardOrderOutAutomaticToDirectionWithDuration();
}

- (void)safariViewController:(id)controller didCompleteInitialLoad:(BOOL)load
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSCellularSetupLoadingViewController safariViewController:didCompleteInitialLoad:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "safariViewController load complete @%s", &v6, 0xCu);
  }

  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  [mEMORY[0x277CF96D8] userSignupInitiatedOrFailed];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end