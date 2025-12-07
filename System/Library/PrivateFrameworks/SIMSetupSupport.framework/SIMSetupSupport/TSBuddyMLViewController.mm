@interface TSBuddyMLViewController
- (BOOL)_isActionDismissToCancelFlow:(id)flow;
- (TSBuddyMLViewController)initWithCTPlan:(id)plan inBuddy:(BOOL)buddy;
- (TSBuddyMLViewController)initWithCTPlan:(id)plan websheetURL:(id)l postdata:(id)postdata;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_configureRUIController;
- (void)_handlePlanAddition:(id)addition;
- (void)_requestCipherText:(id)text completion:(id)completion;
- (void)_setUserInPurchaseFlow;
- (void)dealloc;
- (void)prepare:(id)prepare;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TSBuddyMLViewController

- (TSBuddyMLViewController)initWithCTPlan:(id)plan websheetURL:(id)l postdata:(id)postdata
{
  planCopy = plan;
  lCopy = l;
  postdataCopy = postdata;
  v20.receiver = self;
  v20.super_class = TSBuddyMLViewController;
  v12 = [(TSBuddyMLViewController *)&v20 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_plan, plan);
    objc_storeStrong(&v13->_buddyMLURL, l);
    objc_storeStrong(&v13->_postdata, postdata);
    v13->_initialRequest = 1;
    v13->_isBootstrapAsserted = 0;
  }

  v14 = objc_opt_new();
  objectModels = v13->_objectModels;
  v13->_objectModels = v14;

  v16 = objc_alloc(MEMORY[0x277CC37B0]);
  v17 = [v16 initWithQueue:MEMORY[0x277D85CD0]];
  coreTelephonyClient = v13->_coreTelephonyClient;
  v13->_coreTelephonyClient = v17;

  [(TSBuddyMLViewController *)v13 _setUserInPurchaseFlow];
  return v13;
}

- (TSBuddyMLViewController)initWithCTPlan:(id)plan inBuddy:(BOOL)buddy
{
  planCopy = plan;
  v16.receiver = self;
  v16.super_class = TSBuddyMLViewController;
  v8 = [(TSBuddyMLViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_plan, plan);
    v9->_inBuddy = buddy;
    v9->_initialRequest = 1;
    v9->_isBootstrapAsserted = 0;
  }

  v10 = objc_opt_new();
  objectModels = v9->_objectModels;
  v9->_objectModels = v10;

  v12 = objc_alloc(MEMORY[0x277CC37B0]);
  v13 = [v12 initWithQueue:MEMORY[0x277D85CD0]];
  coreTelephonyClient = v9->_coreTelephonyClient;
  v9->_coreTelephonyClient = v13;

  [(TSBuddyMLViewController *)v9 _setUserInPurchaseFlow];
  return v9;
}

- (void)dealloc
{
  if (self->_isBootstrapAsserted)
  {
    v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];
  }

  v4.receiver = self;
  v4.super_class = TSBuddyMLViewController;
  [(TSBuddyMLViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  [(TSBuddyMLViewController *)self _configureRUIController];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:self->_buddyMLURL];
  v4 = [TSURLRequestFactory requestWithType:5 URL:v3 postdata:self->_postdata];

  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __38__TSBuddyMLViewController_viewDidLoad__block_invoke;
  v9 = &unk_279B44490;
  selfCopy = self;
  v11 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], &v6);
  [(TSBuddyMLViewController *)self setModalInPresentation:1, v6, v7, v8, v9, selfCopy];
}

void __38__TSBuddyMLViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteUIController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2;
  v4[3] = &unk_279B45770;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 loadRequest:v3 completion:v4];
}

void __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _TSLogDomain(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2_cold_1();
    }

    [*(a1 + 32) setBuddyMLURL:0];
    v7 = [*(a1 + 32) delegate];
    [v7 viewControllerDidComplete:*(a1 + 32)];
  }

  *(*(a1 + 32) + 1049) = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  remoteUIController = self->_remoteUIController;
  navigationController = [(TSBuddyMLViewController *)self navigationController];
  [(RemoteUIController *)remoteUIController setHostViewController:navigationController];
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  if ([(NSString *)self->_buddyMLURL length])
  {
    prepareCopy[2](prepareCopy, 1);
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    plan = self->_plan;
    inBuddy = self->_inBuddy;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__TSBuddyMLViewController_prepare___block_invoke;
    v8[3] = &unk_279B45310;
    objc_copyWeak(&v10, &location);
    v9 = prepareCopy;
    [v5 getWebsheetInfoForPlan:plan inBuddy:inBuddy completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __35__TSBuddyMLViewController_prepare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 134, a2);
    objc_storeStrong(v9 + 135, a3);
    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    v11 = _TSLogDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __35__TSBuddyMLViewController_prepare___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model
{
  v12 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = [(NSMutableArray *)self->_objectModels indexOfObject:modelCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = _TSLogDomain(0x7FFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = modelCopy;
      v10 = 2080;
      v11 = "[TSBuddyMLViewController remoteUIController:didRemoveObjectModel:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "RemoteUI removed an object model that is not on stack: %@ @%s", &v8, 0x16u);
    }
  }

  else
  {
    [(NSMutableArray *)self->_objectModels removeObjectAtIndex:v6];
  }
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  v65 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modelCopy = model;
  v9 = modelCopy;
  if (signal)
  {
    v10 = *signal;
    if (*signal == 1)
    {
      v11 = _TSLogDomain(modelCopy);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v64 = "[TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:]";
        _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "ActionSignalDismiss!!! @%s", buf, 0xCu);
      }

      clientInfo = [v9 clientInfo];
      v13 = [(TSBuddyMLViewController *)self _isActionDismissToCancelFlow:clientInfo];

      if (v13)
      {
        delegate = [(TSBuddyMLViewController *)self delegate];
        [delegate userDidTapCancel];
      }

      v10 = *signal;
    }

    if (v10 == 2)
    {
      v15 = _TSLogDomain(modelCopy);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v64 = "[TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:]";
        _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "ActionSignalPush!!! @%s", buf, 0xCu);
      }
    }

    displayedPages = [(RemoteUIController *)self->_remoteUIController displayedPages];
    v17 = [displayedPages count];

    if (!v17)
    {
      if (*signal == 4)
      {
        v19 = _TSLogDomain(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:];
        }

        v20 = 0;
      }

      else
      {
        if (*signal != 3)
        {
          goto LABEL_22;
        }

        v19 = _TSLogDomain(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:];
        }

        v20 = 2;
      }

      *signal = v20;
    }
  }

LABEL_22:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v9 allPages];
  v41 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v41)
  {
    v40 = *v57;
    do
    {
      v21 = 0;
      do
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v21;
        tableViewOM = [*(*(&v56 + 1) + 8 * v21) tableViewOM];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v42 = tableViewOM;
        sections = [tableViewOM sections];
        v46 = [sections countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v46)
        {
          v45 = *v53;
          do
          {
            v23 = 0;
            do
            {
              if (*v53 != v45)
              {
                objc_enumerationMutation(sections);
              }

              v47 = v23;
              v24 = *(*(&v52 + 1) + 8 * v23);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              rows = [v24 rows];
              v26 = [rows countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v49;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v49 != v28)
                    {
                      objc_enumerationMutation(rows);
                    }

                    v30 = *(*(&v48 + 1) + 8 * i);
                    attributes = [v30 attributes];
                    v32 = [attributes objectForKeyedSubscript:@"secure"];
                    bOOLValue = [v32 BOOLValue];

                    if (bOOLValue)
                    {
                      attributes2 = [v30 attributes];
                      v35 = [attributes2 objectForKey:@"id"];
                      idNeedsEncryption = self->_idNeedsEncryption;
                      self->_idNeedsEncryption = v35;
                    }
                  }

                  v27 = [rows countByEnumeratingWithState:&v48 objects:v60 count:16];
                }

                while (v27);
              }

              v23 = v47 + 1;
            }

            while (v47 + 1 != v46);
            v46 = [sections countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v46);
        }

        v21 = v43 + 1;
      }

      while (v43 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v41);
  }

  clientInfo2 = [v9 clientInfo];
  [(TSBuddyMLViewController *)self _handlePlanAddition:clientInfo2];
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [lastObject populatePostbackDictionary:v15];
  v16 = [v15 objectForKey:self->_idNeedsEncryption];
  v17 = [requestCopy setValue:@"iOS Device Activation" forHTTPHeaderField:@"User-Agent"];
  if (self->_initialRequest)
  {
    v18 = _TSLogDomain(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[TSBuddyMLViewController remoteUIController:shouldLoadRequest:redirectResponse:withCompletionHandler:]";
      _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "Set type as json for initial request @%s", buf, 0xCu);
    }

    [requestCopy setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else if (v16)
  {
    objc_initWeak(buf, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
    v20[3] = &unk_279B45798;
    objc_copyWeak(&v24, buf);
    v23 = handlerCopy;
    v21 = v15;
    v22 = requestCopy;
    [(TSBuddyMLViewController *)self _requestCipherText:v16 completion:v20];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = _TSLogDomain(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[TSBuddyMLViewController remoteUIController:shouldLoadRequest:redirectResponse:withCompletionHandler:]";
      _os_log_impl(&dword_262AA8000, v19, OS_LOG_TYPE_DEFAULT, "No encryption needed @%s", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

void __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = _TSLogDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_2();
    }

    goto LABEL_9;
  }

  if (!v3)
  {
    v7 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_1();
    }

LABEL_9:

    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  [*(a1 + 32) setObject:v3 forKey:*(WeakRetained + 125)];
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:*(a1 + 32) format:100 options:0 error:0];
  [*(a1 + 40) setHTTPBody:v6];
  [*(a1 + 40) setTimeoutInterval:180.0];
  (*(*(a1 + 48) + 16))();

LABEL_10:
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  requestCopy = request;
  v11 = requestCopy;
  if (errorCopy)
  {
    v12 = _TSLogDomain(requestCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = errorCopy;
      v26 = 2080;
      v27 = "[TSBuddyMLViewController remoteUIController:didFinishLoadWithError:forRequest:]";
      _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "RemoteUI didFinishLoadWithError: %{public}@ @%s", buf, 0x16u);
    }

    if ([errorCopy code] == -1001)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v13 localizedStringForKey:@"ERROR_TRANSFER_ITEM_TITLE" value:&stru_28753DF48 table:@"Localizable"];

      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"CARRRIER_SETUP_TIMEOUT_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];

      v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v21 message:v15 preferredStyle:1];
      objc_initWeak(buf, self);
      v17 = MEMORY[0x277D750F8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __80__TSBuddyMLViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke;
      v22[3] = &unk_279B44550;
      objc_copyWeak(&v23, buf);
      v20 = [v17 actionWithTitle:v19 style:1 handler:v22];
      [v16 addAction:v20];

      [(TSBuddyMLViewController *)self presentViewController:v16 animated:1 completion:0];
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }
}

void __80__TSBuddyMLViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSBuddyMLViewController remoteUIController:didFinishLoadWithError:forRequest:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Complete viewController to allow user continue flow @%s", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 viewControllerDidComplete:v6];
}

- (void)_configureRUIController
{
  if (!self->_remoteUIController)
  {
    v3 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIController = self->_remoteUIController;
    self->_remoteUIController = v3;

    [(RemoteUIController *)self->_remoteUIController setDelegate:self];
    v5 = self->_remoteUIController;
    setupAssistantStyle = [MEMORY[0x277D46210] setupAssistantStyle];
    [(RemoteUIController *)v5 setStyle:setupAssistantStyle];

    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration set_sourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
    [(RemoteUIController *)self->_remoteUIController setSessionConfiguration:ephemeralSessionConfiguration];
    objc_initWeak(&location, self);
    v8 = self->_remoteUIController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__TSBuddyMLViewController__configureRUIController__block_invoke;
    v9[3] = &unk_279B457C0;
    objc_copyWeak(&v10, &location);
    [(RemoteUIController *)v8 setHandlerForElementName:@"cancel" handler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __50__TSBuddyMLViewController__configureRUIController__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSBuddyMLViewController _configureRUIController]_block_invoke";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "User canceled flow @%s", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  [v5 userDidTapCancel];
}

- (void)_handlePlanAddition:(id)addition
{
  v38 = *MEMORY[0x277D85DE8];
  additionCopy = addition;
  v5 = [additionCopy objectForKeyedSubscript:@"eid"];
  v35 = [additionCopy objectForKeyedSubscript:@"iccid"];
  v34 = [additionCopy objectForKeyedSubscript:@"phoneNumber"];
  v6 = [additionCopy objectForKeyedSubscript:@"mcc"];
  mcc = self->_mcc;
  self->_mcc = v6;

  v8 = [additionCopy objectForKeyedSubscript:@"mnc"];
  mnc = self->_mnc;
  self->_mnc = v8;

  v10 = [additionCopy objectForKeyedSubscript:@"gid1"];
  gid1 = self->_gid1;
  self->_gid1 = v10;

  v12 = [additionCopy objectForKeyedSubscript:@"gid2"];
  gid2 = self->_gid2;
  self->_gid2 = v12;

  v33 = v5;
  if (v5 && v35 && v34)
  {
    v29 = objc_alloc(MEMORY[0x277CC3640]);
    v31 = [additionCopy objectForKeyedSubscript:@"sourceIccid"];
    v30 = [additionCopy objectForKeyedSubscript:@"UnusableIccid"];
    v28 = [additionCopy objectForKeyedSubscript:@"mcc"];
    v32 = [additionCopy objectForKeyedSubscript:@"mnc"];
    v15 = [additionCopy objectForKeyedSubscript:@"gid1"];
    v27 = [additionCopy objectForKeyedSubscript:@"gid2"];
    v26 = [additionCopy objectForKeyedSubscript:@"smdpAddress"];
    v16 = [additionCopy objectForKeyedSubscript:@"useDS"];
    bOOLValue = [v16 BOOLValue];
    v18 = [additionCopy objectForKeyedSubscript:@"isESim"];
    bOOLValue2 = [v18 BOOLValue];
    v20 = [additionCopy objectForKeyedSubscript:@"flowType"];
    BYTE1(v25) = bOOLValue2;
    LOBYTE(v25) = bOOLValue;
    v21 = [v29 initWithDetails:v5 installIccid:v35 sourceIccid:v31 unusableIccid:v30 phoneNumber:v34 mcc:v28 mnc:v32 gid1:v15 gid2:v27 smdp:v26 useDS:v25 esim:v20 flowType:?];

    if (v21)
    {
      v23 = _TSLogDomain(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v37 = "[TSBuddyMLViewController _handlePlanAddition:]";
        _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "Adding cellular plan... @%s", buf, 0xCu);
      }

      [(CoreTelephonyClient *)self->_coreTelephonyClient addPlanWith:v21 completionHandler:&__block_literal_global_22];
      delegate = [(TSBuddyMLViewController *)self delegate];
      [delegate viewControllerDidComplete:self];
    }
  }

  else
  {
    v21 = _TSLogDomain(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [TSBuddyMLViewController _handlePlanAddition:];
    }
  }
}

void __47__TSBuddyMLViewController__handlePlanAddition___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2 != 2)
  {
    v6 = _TSLogDomain(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47__TSBuddyMLViewController__handlePlanAddition___block_invoke_cold_1();
    }
  }
}

- (void)_requestCipherText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v8 = _TSLogDomain(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [TSBuddyMLViewController _requestCipherText:v8 completion:?];
  }

  objc_initWeak(&location, self);
  coreTelephonyClient = self->_coreTelephonyClient;
  mcc = self->_mcc;
  mnc = self->_mnc;
  gid1 = self->_gid1;
  gid2 = self->_gid2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke;
  v15[3] = &unk_279B44E08;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  [(CoreTelephonyClient *)coreTelephonyClient encryptDataWithCarrierIdentifiers:mcc mnc:mnc gid1:gid1 gid2:gid2 data:textCopy completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke_cold_1();
      }
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (BOOL)_isActionDismissToCancelFlow:(id)flow
{
  v3 = [flow objectForKeyedSubscript:@"eid"];
  v4 = v3 == 0;

  return v4;
}

- (void)_setUserInPurchaseFlow
{
  if (+[TSUtilities isOnBootstrap])
  {
    self->_isBootstrapAsserted = 1;
    v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v3 assertUserInPurchaseFlowStartOver:0 caller:self];
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __47__TSBuddyMLViewController__handlePlanAddition___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_requestCipherText:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1016);
  v3 = *(a1 + 1024);
  v4 = 138412802;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  v8 = 2080;
  v9 = "[TSBuddyMLViewController _requestCipherText:completion:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] IMSI %@/%@ @%s", &v4, 0x20u);
}

void __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end