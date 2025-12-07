@interface TSWebsheetViewController
- (BOOL)_currentLanguageIsRTL;
- (BOOL)_isHexadecimalString:(id)string;
- (BOOL)_shouldIgnoreWebviewError:(id)error;
- (TSEntitlementJSHandlerDelegate)callbackDelegate;
- (TSSIMSetupFlowDelegate)delegate;
- (TSWebsheetViewController)initWithURL:(id)l postdata:(id)postdata carrierName:(id)name;
- (id)_processPool;
- (id)_webViewConfigurationWithProcessPool:(id)pool;
- (id)initForRemotePlan:(BOOL)plan carrierName:(id)name skipUIDismissal:(BOOL)dismissal showCarrierWarning:(BOOL)warning;
- (id)initForRemotePlan:(BOOL)plan carrierName:(id)name viewController:(id)controller;
- (void)_cancelButtonTapped;
- (void)_dismissDueToLoadFailure;
- (void)_doneButtonTapped;
- (void)_handlePlanPurchaseWithMessageBody:(id)body;
- (void)_handleTransferWithMessageBody:(id)body;
- (void)_showCancelButton:(BOOL)button;
- (void)_showFailureAlert;
- (void)_showVerifyingIndicator:(BOOL)indicator;
- (void)_transferESimInstallationStarted;
- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change;
- (void)loadRequest:(id)request completion:(id)completion;
- (void)loadView;
- (void)prepare:(id)prepare;
- (void)scrollViewDidScroll:(id)scroll;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation TSWebsheetViewController

- (id)initForRemotePlan:(BOOL)plan carrierName:(id)name skipUIDismissal:(BOOL)dismissal showCarrierWarning:(BOOL)warning
{
  warningCopy = warning;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = TSWebsheetViewController;
  v12 = [(TSWebsheetViewController *)&v30 init];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CE3850]);
    _processPool = [(TSWebsheetViewController *)v12 _processPool];
    v15 = [(TSWebsheetViewController *)v12 _webViewConfigurationWithProcessPool:_processPool];
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [v13 initWithFrame:v15 configuration:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
    webView = v12->_webView;
    v12->_webView = v20;

    [(WKWebView *)v12->_webView setNavigationDelegate:v12];
    [(WKWebView *)v12->_webView setUIDelegate:v12];
    [(WKWebView *)v12->_webView _setInputDelegate:v12];
    [(WKWebView *)v12->_webView setAutoresizingMask:18];
    scrollView = [(WKWebView *)v12->_webView scrollView];
    [scrollView setDelegate:v12];

    [(WKWebView *)v12->_webView setAutoresizesSubviews:1];
    if (!plan)
    {
      if (warningCopy && [nameCopy length])
      {
        v23 = [[TSCellularSetupLoadingView alloc] initWithCarrierName:nameCopy];
      }

      else
      {
        v23 = [[TSCellularSetupLoadingView alloc] initWithFrame:v16, v17, v18, v19];
      }

      loadingView = v12->_loadingView;
      v12->_loadingView = v23;

      [(WKWebView *)v12->_webView addSubview:v12->_loadingView];
    }

    v25 = [objc_alloc(MEMORY[0x277CDB7C8]) initWithWebView:v12->_webView delegate:v12];
    autoFillController = v12->_autoFillController;
    v12->_autoFillController = v25;

    [(TSWebsheetViewController *)v12 setModalInPresentation:1];
    v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v12 action:sel__cancelButtonTapped];
    cancelButton = v12->_cancelButton;
    v12->_cancelButton = v27;

    v12->_dismissCause = 2;
    v12->_didReceivePurchaseCallback = 0;
    v12->_didViewAppear = 0;
    v12->_isRemotePlan = plan;
    objc_storeStrong(&v12->_currentTitle, name);
    v12->_skipUIDismissal = dismissal;
  }

  return v12;
}

- (id)initForRemotePlan:(BOOL)plan carrierName:(id)name viewController:(id)controller
{
  planCopy = plan;
  controllerCopy = controller;
  v10 = [(TSWebsheetViewController *)self initForRemotePlan:planCopy carrierName:name skipUIDismissal:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 129, controller);
  }

  return v11;
}

- (TSWebsheetViewController)initWithURL:(id)l postdata:(id)postdata carrierName:(id)name
{
  lCopy = l;
  postdataCopy = postdata;
  v11 = [(TSWebsheetViewController *)self initForRemotePlan:0 carrierName:name skipUIDismissal:0 showCarrierWarning:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 132, l);
    objc_storeStrong(&v12->_postdata, postdata);
  }

  return v12;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = TSWebsheetViewController;
  [(TSWebsheetViewController *)&v3 loadView];
  [(TSWebsheetViewController *)self setView:self->_webView];
  if (!self->_isRemotePlan)
  {
    [(WKWebView *)self->_webView bringSubviewToFront:self->_loadingView];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = TSWebsheetViewController;
  [(TSWebsheetViewController *)&v12 viewWillAppear:appear];
  currentTitle = self->_currentTitle;
  navigationItem = [(TSWebsheetViewController *)self navigationItem];
  [navigationItem setTitle:currentTitle];

  scrollView = [(WKWebView *)self->_webView scrollView];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [scrollView setBackgroundColor:systemGroupedBackgroundColor];

  [(TSWebsheetViewController *)self _showCancelButton:1];
  if (self->_isRemotePlan)
  {
    navigationItem2 = [(TSWebsheetViewController *)self navigationItem];
    [navigationItem2 setHidesBackButton:1];
  }

  else
  {
    if (+[TSUtilities isPad])
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"Cellular Data Account" value:&stru_28753DF48 table:@"Localizable"];
      [(TSWebsheetViewController *)self setTitle:v10];
    }

    loadingView = self->_loadingView;
    [(WKWebView *)self->_webView bounds];
    [(TSCellularSetupLoadingView *)loadingView setFrame:?];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TSWebsheetViewController;
  [(TSWebsheetViewController *)&v4 viewDidAppear:appear];
  self->_didViewAppear = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = TSWebsheetViewController;
  [(TSWebsheetViewController *)&v6 viewDidDisappear:disappear];
  [(WKWebView *)self->_webView setUIDelegate:0];
  WeakRetained = objc_loadWeakRetained(&self->_wkUserContentController);
  [WeakRetained removeAllScriptMessageHandlers];

  if ([(TSWebsheetViewController *)self isMovingFromParentViewController])
  {
    [(TSWebsheetViewController *)self setDismissCause:0];
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 viewControllerDidComplete:self];
  }
}

- (void)loadRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v6 = MEMORY[0x2667315D0](completion);
  requestLoadedCompletion = self->_requestLoadedCompletion;
  self->_requestLoadedCompletion = v6;

  if (requestCopy)
  {
    v8 = [(WKWebView *)self->_webView loadRequest:requestCopy];
  }

  else
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (BOOL)_shouldIgnoreWebviewError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  if ([errorCopy _web_errorIsInDomain:*MEMORY[0x277D7B820]] && code == 102)
  {
    v5 = 1;
  }

  else if ([errorCopy _web_errorIsInDomain:*MEMORY[0x277CCA738]])
  {
    v5 = code == -999 || code == -1012;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v7 = _TSLogDomain(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TSWebsheetViewController webView:didFailProvisionalNavigation:withError:];
  }

  if (!self->_isRemotePlan || ![(TSWebsheetViewController *)self _shouldIgnoreWebviewError:errorCopy])
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v18 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  navigationCopy = navigation;
  if (self->_isRemotePlan)
  {
    viewController = self->_viewController;
    if (viewController)
    {
      v9 = viewController;
      isProcessCanceled = [(UIViewController *)v9 isProcessCanceled];
      if ((isProcessCanceled & 1) != 0 || self->_dismissCause == 1)
      {
        navigationController = _TSLogDomain(isProcessCanceled);
        if (os_log_type_enabled(navigationController, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "[TSWebsheetViewController webView:didFinishNavigation:]";
          _os_log_impl(&dword_262AA8000, navigationController, OS_LOG_TYPE_DEFAULT, "Process Got Cancel or Come Back with error in Loading Page @%s", &v16, 0xCu);
        }
      }

      else
      {
        v12 = _TSLogDomain(isProcessCanceled);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "[TSWebsheetViewController webView:didFinishNavigation:]";
          _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "Start Load the view @%s", &v16, 0xCu);
        }

        navigationController = [(UIViewController *)self->_viewController navigationController];
        [navigationController pushViewController:self animated:1];
      }

      v13 = self->_viewController;
      self->_viewController = 0;
    }
  }

  else
  {
    [(TSCellularSetupLoadingView *)self->_loadingView removeFromSuperview];
  }

  requestLoadedCompletion = self->_requestLoadedCompletion;
  if (requestLoadedCompletion)
  {
    requestLoadedCompletion[2](requestLoadedCompletion, 1);
    v15 = self->_requestLoadedCompletion;
    self->_requestLoadedCompletion = 0;
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D75128];
  actionCopy = action;
  sharedApplication = [v7 sharedApplication];
  request = [actionCopy request];

  v11 = [request URL];

  v13 = _TSLogDomain(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [TSWebsheetViewController webView:decidePolicyForNavigationAction:decisionHandler:];
  }

  scheme = [v11 scheme];
  v15 = [scheme isEqualToString:@"tel"];

  if (v15 && [sharedApplication canOpenURL:v11])
  {
    [sharedApplication openURL:v11 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_17];
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  handlerCopy[2](handlerCopy, v16);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v7 = _TSLogDomain(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TSWebsheetViewController webView:didFailNavigation:withError:];
  }

  if (!self->_isRemotePlan || ![(TSWebsheetViewController *)self _shouldIgnoreWebviewError:errorCopy])
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  v14 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (self->_isRemotePlan)
  {
    viewController = self->_viewController;
    if (viewController)
    {
      v8 = viewController;
      isProcessCanceled = [(UIViewController *)v8 isProcessCanceled];
      if (isProcessCanceled)
      {
        v10 = _TSLogDomain(isProcessCanceled);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = "[TSWebsheetViewController _webView:renderingProgressDidChange:]";
          _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Cancel Request set PurchaseFlow to NO then return @%s", &v12, 0xCu);
        }

        v11 = self->_viewController;
        self->_viewController = 0;

        goto LABEL_10;
      }
    }
  }

  if (changeCopy)
  {
    self->_didFirstLayout = 1;
    [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  }

LABEL_10:
}

- (void)_transferESimInstallationStarted
{
  if (!+[TSUtilities isPad])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"transfer.websheet.install.started" object:0 userInfo:0];
  }

  [(TSWebsheetViewController *)self setDismissCause:3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startTimer:1];
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = _TSLogDomain(messageCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [messageCopy name];
    body = [messageCopy body];
    v40 = 138412802;
    v41 = name;
    v42 = 2112;
    v43 = body;
    v44 = 2080;
    v45 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "js callback: %@ - %@ @%s", &v40, 0x20u);
  }

  name2 = [messageCopy name];
  if (![name2 isEqualToString:@"dataPlanAccountUpdatedWithIccid"])
  {
    name3 = [messageCopy name];
    v11 = [name3 isEqualToString:@"dataPlanAccountUpdatedWithInfo"];

    if (v11)
    {
      goto LABEL_6;
    }

    name4 = [messageCopy name];
    v14 = [name4 isEqualToString:@"dataPlanTransferAccountUpdatedWithInfo"];

    if (v14)
    {
      body2 = [messageCopy body];
      [(TSWebsheetViewController *)self _handleTransferWithMessageBody:body2];
      goto LABEL_7;
    }

    name5 = [messageCopy name];
    v16 = [name5 isEqualToString:@"showCancelButtonSelected"];

    if (v16)
    {
      WeakRetained = _TSLogDomain(v17);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 136315138;
        v41 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
        v19 = "No longer supported @%s";
LABEL_17:
        _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, v19, &v40, 0xCu);
      }
    }

    else
    {
      name6 = [messageCopy name];
      v21 = [name6 isEqualToString:@"hideCancelButtonSelected"];

      if (v21)
      {
        WeakRetained = _TSLogDomain(v22);
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 136315138;
          v41 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
          v19 = "No longer supported @%s";
          goto LABEL_17;
        }
      }

      else
      {
        name7 = [messageCopy name];
        v24 = [name7 isEqualToString:@"doneSelected"];

        if (v24)
        {
          [(TSWebsheetViewController *)self _doneButtonTapped];
          goto LABEL_8;
        }

        name8 = [messageCopy name];
        v26 = [name8 isEqualToString:@"dataPlanAccountUpdated"];

        if (!v26)
        {
          name9 = [messageCopy name];
          v29 = [name9 isEqualToString:@"showVerifyingIndicator"];

          if (v29)
          {
            selfCopy2 = self;
            v31 = 1;
          }

          else
          {
            name10 = [messageCopy name];
            v33 = [name10 isEqualToString:@"hideVerifyingIndicator"];

            if (!v33)
            {
              name11 = [messageCopy name];
              v35 = [name11 isEqualToString:@"dismissKeyboard"];

              if (v35)
              {
                WeakRetained = [(TSWebsheetViewController *)self navigationController];
                [WeakRetained _endPinningInputViews];
              }

              else
              {
                name12 = [messageCopy name];
                v37 = [name12 isEqualToString:@"dataPlanAccountCancelled"];

                if (v37)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);
                  [WeakRetained accountCancelled];
                }

                else
                {
                  name13 = [messageCopy name];
                  v39 = [name13 isEqualToString:@"dataPlanPendingRelease"];

                  if (!v39)
                  {
                    goto LABEL_8;
                  }

                  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);
                  [WeakRetained accountPendingRelease];
                }
              }

              goto LABEL_18;
            }

            selfCopy2 = self;
            v31 = 0;
          }

          [(TSWebsheetViewController *)selfCopy2 _showVerifyingIndicator:v31];
          goto LABEL_8;
        }

        WeakRetained = _TSLogDomain(v27);
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 136315138;
          v41 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
          v19 = "No longer handled @%s";
          goto LABEL_17;
        }
      }
    }

LABEL_18:

    goto LABEL_8;
  }

LABEL_6:
  body2 = [messageCopy body];
  [(TSWebsheetViewController *)self _handlePlanPurchaseWithMessageBody:body2];
LABEL_7:

  [(TSWebsheetViewController *)self _transferESimInstallationStarted];
LABEL_8:
}

- (void)prepare:(id)prepare
{
  (*(prepare + 2))(prepare, 1);
  if ([(NSString *)self->_url length])
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:self->_url];
    v5 = [TSURLRequestFactory requestWithType:2 URL:v4 postdata:self->_postdata];

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__TSWebsheetViewController_prepare___block_invoke;
    block[3] = &unk_279B44490;
    block[4] = self;
    v8 = v5;
    v6 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&location);
  }
}

- (id)_processPool
{
  v2 = objc_alloc_init(MEMORY[0x277CE3890]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  builtInPlugInsURL = [v3 builtInPlugInsURL];
  v5 = [builtInPlugInsURL URLByAppendingPathComponent:@"SafariServices.wkbundle"];
  [v2 setInjectedBundleURL:v5];

  v6 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v2];

  return v6;
}

- (id)_webViewConfigurationWithProcessPool:(id)pool
{
  v4 = MEMORY[0x277CE38C8];
  poolCopy = pool;
  initNonPersistentConfiguration = [[v4 alloc] initNonPersistentConfiguration];
  [initNonPersistentConfiguration setSuppressesConnectionTerminationOnSystemChange:1];
  [initNonPersistentConfiguration setSourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
  v7 = [objc_alloc(MEMORY[0x277CE3868]) _initWithConfiguration:initNonPersistentConfiguration];
  httpCookieStore = [v7 httpCookieStore];
  [httpCookieStore _setCookieAcceptPolicy:2 completionHandler:&__block_literal_global_104];

  v9 = objc_alloc_init(MEMORY[0x277CE3858]);
  [v9 setAllowsInlineMediaPlayback:1];
  [v9 setDataDetectorTypes:0];
  [v9 setProcessPool:poolCopy];

  [v9 setWebsiteDataStore:v7];
  if (+[TSUtilities isPad])
  {
    defaultWebpagePreferences = [v9 defaultWebpagePreferences];
    [defaultWebpagePreferences setPreferredContentMode:1];

    [v9 _setApplePayEnabled:1];
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 pathForResource:@"MessageCallbackHandler" ofType:@"js"];

  v20 = 0;
  v13 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v12 encoding:4 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v14)
  {
    v16 = _TSLogDomain(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [TSWebsheetViewController _webViewConfigurationWithProcessPool:];
    }
  }

  if ([v13 length])
  {
    v17 = objc_alloc_init(MEMORY[0x277CE3830]);
    if (v13)
    {
      v18 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v13 injectionTime:0 forMainFrameOnly:1];
      [v17 addUserScript:v18];
    }

    [v17 addScriptMessageHandler:self name:@"dataPlanAccountUpdatedWithIccid"];
    [v17 addScriptMessageHandler:self name:@"showCancelButtonSelected"];
    [v17 addScriptMessageHandler:self name:@"hideCancelButtonSelected"];
    [v17 addScriptMessageHandler:self name:@"dataPlanAccountUpdated"];
    [v17 addScriptMessageHandler:self name:@"doneSelected"];
    [v17 addScriptMessageHandler:self name:@"showVerifyingIndicator"];
    [v17 addScriptMessageHandler:self name:@"hideVerifyingIndicator"];
    [v17 addScriptMessageHandler:self name:@"dismissKeyboard"];
    [v17 addScriptMessageHandler:self name:@"dataPlanAccountUpdatedWithInfo"];
    [v17 addScriptMessageHandler:self name:@"dataPlanTransferAccountUpdatedWithInfo"];
    [v17 addScriptMessageHandler:self name:@"dataPlanAccountCancelled"];
    [v17 addScriptMessageHandler:self name:@"dataPlanPendingRelease"];
    [v9 setUserContentController:v17];
    objc_storeWeak(&self->_wkUserContentController, v17);
  }

  return v9;
}

- (void)_dismissDueToLoadFailure
{
  self->_dismissCause = 1;
  requestLoadedCompletion = self->_requestLoadedCompletion;
  if (requestLoadedCompletion)
  {
    requestLoadedCompletion[2](requestLoadedCompletion, 0);
    v4 = self->_requestLoadedCompletion;
    self->_requestLoadedCompletion = 0;
  }

  else
  {

    [(TSWebsheetViewController *)self _showFailureAlert];
  }
}

- (void)_showFailureAlert
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Connection Failed" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"The connection to the server was lost.  Please try again later." value:&stru_28753DF48 table:@"Localizable"];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__TSWebsheetViewController__showFailureAlert__block_invoke;
  v21[3] = &unk_279B44550;
  objc_copyWeak(&v22, &location);
  v11 = [v8 actionWithTitle:v10 style:0 handler:v21];
  [v7 addObject:v11];

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [v12 addAction:{*(*(&v17 + 1) + 8 * v16++), v17}];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v14);
  }

  [(TSWebsheetViewController *)self presentViewController:v12 animated:1 completion:0];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __45__TSWebsheetViewController__showFailureAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 viewControllerDidComplete:v3];
}

- (void)_doneButtonTapped
{
  if (self->_dismissCause == 2)
  {
    self->_dismissCause = 4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  if (!self->_skipUIDismissal)
  {

    [(TSWebsheetViewController *)self dismissViewControllerWithTransition:7 completion:0];
  }
}

- (void)_cancelButtonTapped
{
  self->_dismissCause = 4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  if (!self->_skipUIDismissal)
  {

    [(TSWebsheetViewController *)self dismissViewControllerWithTransition:7 completion:0];
  }
}

- (void)_showCancelButton:(BOOL)button
{
  buttonCopy = button;
  v5 = +[TSUtilities isPad];
  navigationItem = [(TSWebsheetViewController *)self navigationItem];
  v9 = navigationItem;
  if (v5)
  {
    if (buttonCopy)
    {
      cancelButton = self->_cancelButton;
    }

    else
    {
      cancelButton = 0;
    }

    [navigationItem setRightBarButtonItem:cancelButton animated:1];
  }

  else
  {
    if (buttonCopy)
    {
      v8 = self->_cancelButton;
    }

    else
    {
      v8 = 0;
    }

    [navigationItem setLeftBarButtonItem:v8 animated:1];
  }
}

- (void)_showVerifyingIndicator:(BOOL)indicator
{
  if (indicator)
  {
    title = [(TSWebsheetViewController *)self title];
    currentTitle = self->_currentTitle;
    self->_currentTitle = title;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Verifying" value:&stru_28753DF48 table:@"Localizable"];
    [(TSWebsheetViewController *)self setTitle:v7];

    v11 = +[TSNavigationBarSpinnerManager sharedManager];
    navigationController = [(TSWebsheetViewController *)self navigationController];
    navigationItem = [navigationController navigationItem];
    v10 = [objc_opt_class() description];
    [v11 startSpinnerInNavigationItem:navigationItem withIdentifier:v10];
  }

  else
  {
    [(TSWebsheetViewController *)self setTitle:self->_currentTitle];
    v11 = +[TSNavigationBarSpinnerManager sharedManager];
    navigationController = [objc_opt_class() description];
    [v11 stopSpinnerForIdentifier:navigationController];
  }
}

- (void)_handlePlanPurchaseWithMessageBody:(id)body
{
  v52 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v5 = bodyCopy;
  if (self->_didReceivePurchaseCallback)
  {
    v6 = _TSLogDomain(bodyCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 136315138;
      v49 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
      v7 = "Received 2nd purchase callback - skipping @%s";
LABEL_10:
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, v7, &v48, 0xCu);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  self->_didReceivePurchaseCallback = 1;
  if (!bodyCopy)
  {
    v6 = _TSLogDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 136315138;
      v49 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
      v7 = "Invalid message @%s";
      goto LABEL_10;
    }

LABEL_56:

    goto LABEL_57;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v8 = [(TSWebsheetViewController *)self _isHexadecimalString:v6];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);
      [WeakRetained didPurchasePlanSuccessfullyWithEid:0 imei:0 meid:0 iccid:v6 alternateSDMP:0 state:0];
LABEL_55:

      goto LABEL_56;
    }

    WeakRetained = _TSLogDomain(v8);
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v48 = 138412546;
    v49 = v6;
    v50 = 2080;
    v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
    v12 = "Invalid ICCID: %@ @%s";
    v13 = WeakRetained;
    v14 = 22;
LABEL_18:
    _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, v12, &v48, v14);
    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v5;
    v6 = v10;
    if (self->_isRemotePlan)
    {
      WeakRetained = [v10 objectForKeyedSubscript:@"state"];
      if (WeakRetained && [(TSWebsheetViewController *)self _isProfilePendingRelease:WeakRetained])
      {
        v11 = objc_loadWeakRetained(&self->_callbackDelegate);
        [v11 accountPendingRelease];
LABEL_49:

        goto LABEL_55;
      }
    }

    else
    {
      WeakRetained = 0;
    }

    v15 = WeakRetained;
    WeakRetained = [v6 objectForKeyedSubscript:@"eid"];

    v16 = WeakRetained != 0;
    if (WeakRetained)
    {
      valid = isValidNSString(WeakRetained);
      if (!valid || (valid = [WeakRetained length], valid != 32) || (valid = [(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained], (valid & 1) == 0))
      {
        v11 = _TSLogDomain(valid);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        v48 = 138412546;
        v49 = WeakRetained;
        v50 = 2080;
        v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v31 = "Invalid EID: %@ @%s";
        goto LABEL_48;
      }
    }

    v18 = [v6 objectForKeyedSubscript:@"imei"];

    if (v18)
    {
      v19 = isValidNSString(v18);
      if (!v19 || [v18 length]!= 15 && (v19 = [v18 length], v19 != 16) || (v19 = [(TSWebsheetViewController *)self _isHexadecimalString:v18], (v19 & 1) == 0))
      {
        v32 = _TSLogDomain(v19);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        v48 = 138412546;
        v49 = v18;
        v50 = 2080;
        v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v33 = "Invalid IMEI: %@ @%s";
        goto LABEL_52;
      }

      v16 = 1;
    }

    WeakRetained = [v6 objectForKeyedSubscript:@"meid"];

    if (WeakRetained)
    {
      v20 = isValidNSString(WeakRetained);
      if (!v20 || [WeakRetained length]!= 14 && (v20 = [WeakRetained length], v20 != 15) || (v20 = [(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained], (v20 & 1) == 0))
      {
        v11 = _TSLogDomain(v20);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        v48 = 138412546;
        v49 = WeakRetained;
        v50 = 2080;
        v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v31 = "Invalid MEID: %@ @%s";
        goto LABEL_48;
      }

      v16 = 1;
    }

    v18 = [v6 objectForKeyedSubscript:@"iccid"];

    if (!v18)
    {
      v36 = _TSLogDomain(v21);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v48 = 136315138;
        v49 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        _os_log_impl(&dword_262AA8000, v36, OS_LOG_TYPE_DEFAULT, "Missing ICCID @%s", &v48, 0xCu);
      }

      v37 = [v6 objectForKeyedSubscript:@"mcc"];
      if (v37)
      {
        WeakRetained = v37;
        v38 = isValidNSString(v37);
        if (!v38 || (v38 = [WeakRetained length], v38 != 3) || (v38 = [(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained], (v38 & 1) == 0))
        {
          v11 = _TSLogDomain(v38);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          v48 = 138412546;
          v49 = WeakRetained;
          v50 = 2080;
          v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
          v31 = "Invalid mcc: %@ @%s";
          goto LABEL_48;
        }

        v18 = [v6 objectForKeyedSubscript:@"mnc"];

        if (v18)
        {
          v40 = isValidNSString(v18);
          if (v40 && ([v18 length]== 2 || (v40 = [v18 length], v40 == 3)) && (v40 = [(TSWebsheetViewController *)self _isHexadecimalString:v18], (v40 & 1) != 0))
          {
            WeakRetained = [v6 objectForKeyedSubscript:@"gid1"];

            if (WeakRetained)
            {
              v41 = isValidNSString(WeakRetained);
              if (!v41 || (v41 = [WeakRetained length], v41 != 3) || (v41 = [(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained], (v41 & 1) == 0))
              {
                v11 = _TSLogDomain(v41);
                if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_49;
                }

                v48 = 138412546;
                v49 = WeakRetained;
                v50 = 2080;
                v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
                v31 = "Invalid gid1: %@ @%s";
                goto LABEL_48;
              }
            }

            v18 = [v6 objectForKeyedSubscript:@"gid2"];

            if (!v18 || (v42 = isValidNSString(v18), v42) && (v42 = [v18 length], v42 == 3) && (v42 = [(TSWebsheetViewController *)self _isHexadecimalString:v18], (v42 & 1) != 0))
            {
              v32 = objc_loadWeakRetained(&self->_callbackDelegate);
              v43 = [v6 objectForKeyedSubscript:@"mcc"];
              v44 = [v6 objectForKeyedSubscript:@"mnc"];
              v45 = [v6 objectForKeyedSubscript:@"gid1"];
              v46 = [v6 objectForKeyedSubscript:@"gid2"];
              v47 = [v6 objectForKeyedSubscript:@"state"];
              [v32 didPurchasePlanSuccessfullyWithCarrier:v43 mnc:v44 gid1:v45 gid2:v46 state:v47];

              goto LABEL_54;
            }

            v32 = _TSLogDomain(v42);
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_54;
            }

            v48 = 138412546;
            v49 = v18;
            v50 = 2080;
            v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
            v33 = "Invalid gid2: %@ @%s";
          }

          else
          {
            v32 = _TSLogDomain(v40);
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_54;
            }

            v48 = 138412546;
            v49 = v18;
            v50 = 2080;
            v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
            v33 = "Invalid mnc: %@ @%s";
          }

          goto LABEL_52;
        }

        WeakRetained = _TSLogDomain(v39);
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        v48 = 136315138;
        v49 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v12 = "Missing mnc @%s";
      }

      else
      {
        WeakRetained = _TSLogDomain(0);
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        v48 = 136315138;
        v49 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v12 = "Missing mcc @%s";
      }

      v13 = WeakRetained;
      v14 = 12;
      goto LABEL_18;
    }

    v22 = isValidNSString(v18);
    if (v22)
    {
      if ([v18 length]== 19 || (v22 = [v18 length], v22 == 20))
      {
        v22 = [(TSWebsheetViewController *)self _isHexadecimalString:v18];
        if (v22)
        {
          if (v16)
          {
            WeakRetained = [v6 objectForKeyedSubscript:@"alternateSmdpFqdn"];

            if (!WeakRetained || (v23 = isValidNSString(WeakRetained)) && ([MEMORY[0x277CBEBC0] URLWithString:WeakRetained], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
            {
              v11 = objc_loadWeakRetained(&self->_callbackDelegate);
              v25 = [v6 objectForKeyedSubscript:@"eid"];
              v26 = [v6 objectForKeyedSubscript:@"imei"];
              v27 = [v6 objectForKeyedSubscript:@"meid"];
              v28 = [v6 objectForKeyedSubscript:@"iccid"];
              v29 = [v6 objectForKeyedSubscript:@"alternateSmdpFqdn"];
              v30 = [v6 objectForKeyedSubscript:@"state"];
              [v11 didPurchasePlanSuccessfullyWithEid:v25 imei:v26 meid:v27 iccid:v28 alternateSDMP:v29 state:v30];

              goto LABEL_49;
            }

            v11 = _TSLogDomain(v23);
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_49;
            }

            v48 = 138412546;
            v49 = WeakRetained;
            v50 = 2080;
            v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
            v31 = "Invalid alternateSmdpFqdn: %@ @%s";
LABEL_48:
            _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, v31, &v48, 0x16u);
            goto LABEL_49;
          }

          v32 = _TSLogDomain(v22);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v48 = 136315138;
            v49 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
            v33 = "Missing identifier @%s";
            v34 = v32;
            v35 = 12;
            goto LABEL_53;
          }

LABEL_54:

          WeakRetained = v18;
          goto LABEL_55;
        }
      }
    }

    v32 = _TSLogDomain(v22);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    v48 = 138412546;
    v49 = v18;
    v50 = 2080;
    v51 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
    v33 = "Invalid ICCID: %@ @%s";
LABEL_52:
    v34 = v32;
    v35 = 22;
LABEL_53:
    _os_log_impl(&dword_262AA8000, v34, OS_LOG_TYPE_DEFAULT, v33, &v48, v35);
    goto LABEL_54;
  }

LABEL_57:
}

- (void)_handleTransferWithMessageBody:(id)body
{
  v56 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  if (!bodyCopy)
  {
    v7 = _TSLogDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Invalid message @%s", buf, 0xCu);
    }

LABEL_8:
    v6 = bodyCopy;
    v8 = [v6 objectForKeyedSubscript:@"eid"];
    v9 = v8;
    v10 = v8 != 0;
    if (v8)
    {
      v11 = [v8 length];
      if (v11 != 32 || (v11 = [(TSWebsheetViewController *)self _isHexadecimalString:v9], (v11 & 1) == 0))
      {
        v16 = _TSLogDomain(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v53 = v9;
          v54 = 2080;
          v55 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
          _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "Invalid EID: %@ @%s", buf, 0x16u);
        }

        goto LABEL_44;
      }
    }

    v12 = [v6 objectForKeyedSubscript:@"alternateSmdpFqdn"];

    if (v12)
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];

      if (!v13)
      {
        v16 = _TSLogDomain(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v53 = v12;
          v54 = 2080;
          v55 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
          _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "Invalid alternateSmdpFqdn: %@ @%s", buf, 0x16u);
        }

        goto LABEL_43;
      }
    }

    v15 = [v6 objectForKeyedSubscript:@"targetIccids"];
    v16 = v15;
    if (v15 && (objc_opt_class(), v15 = objc_opt_isKindOfClass(), (v15 & 1) != 0))
    {
      if (![v16 count])
      {
        v20 = _TSLogDomain(0);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        *buf = 136315138;
        v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v33 = "Missing target ICCIDs @%s";
        goto LABEL_41;
      }

      v17 = [v16 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [v16 objectAtIndexedSubscript:0];
        v21 = [v20 objectForKeyedSubscript:@"imei"];

        if (v21)
        {
          if ([v21 length] != 15 && (v22 = objc_msgSend(v21, "length"), v22 != 16) || (v22 = -[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v21), (v22 & 1) == 0))
          {
            v34 = _TSLogDomain(v22);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_64;
            }

            *buf = 138412546;
            v53 = v21;
            v54 = 2080;
            v55 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
            v35 = "Invalid IMEI: %@ @%s";
            goto LABEL_60;
          }

          v10 = 1;
        }

        v23 = [v20 objectForKeyedSubscript:@"meid"];

        if (v23)
        {
          if ([v23 length] != 14 && (v24 = objc_msgSend(v23, "length"), v24 != 15) || (v24 = -[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v23), (v24 & 1) == 0))
          {
            v34 = _TSLogDomain(v24);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v53 = v23;
              v54 = 2080;
              v55 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
              v36 = "Invalid MEID: %@ @%s";
              v37 = v34;
              v38 = 22;
LABEL_56:
              _os_log_impl(&dword_262AA8000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
            }

LABEL_57:
            v21 = v23;
            goto LABEL_64;
          }

          v10 = 1;
        }

        v21 = [v20 objectForKeyedSubscript:@"iccid"];

        if (!v21)
        {
          v34 = _TSLogDomain(v25);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
            _os_log_impl(&dword_262AA8000, v34, OS_LOG_TYPE_DEFAULT, "ICCID missing @%s", buf, 0xCu);
          }

          v21 = 0;
          goto LABEL_64;
        }

        if ([v21 length] == 19 || (v26 = objc_msgSend(v21, "length"), v26 == 20))
        {
          v26 = [(TSWebsheetViewController *)self _isHexadecimalString:v21];
          if (v26)
          {
            v23 = [v20 objectForKeyedSubscript:@"src-iccid"];

            if (v23)
            {
              if ([v23 length] == 19 || (v28 = objc_msgSend(v23, "length"), v28 == 20))
              {
                v28 = [(TSWebsheetViewController *)self _isHexadecimalString:v23];
                if (v28)
                {
LABEL_69:
                  if (v10)
                  {
                    v21 = [v20 objectForKeyedSubscript:@"state"];

                    if (!v21 || (v39 = [v21 length], v39 < 0x33))
                    {
                      WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);

                      if (WeakRetained)
                      {
                        v34 = objc_loadWeakRetained(&self->_callbackDelegate);
                        v51 = [v6 objectForKeyedSubscript:@"eid"];
                        v50 = [v20 objectForKeyedSubscript:@"imei"];
                        v49 = [v20 objectForKeyedSubscript:@"meid"];
                        v41 = [v20 objectForKeyedSubscript:@"iccid"];
                        v42 = [v20 objectForKeyedSubscript:@"src-iccid"];
                        v43 = [v6 objectForKeyedSubscript:@"alternateSmdpFqdn"];
                        v44 = [v20 objectForKeyedSubscript:@"state"];
                        [v34 didTransferPlanSuccessfullyWithEid:v51 imei:v50 meid:v49 iccid:v41 srcIccid:v42 alternateSDMP:v43 state:v44];
                      }

                      else
                      {
                        v34 = +[TSCellularPlanManagerCache sharedInstance];
                        v51 = [v6 objectForKeyedSubscript:@"eid"];
                        v45 = [v20 objectForKeyedSubscript:@"iccid"];
                        v46 = [v20 objectForKeyedSubscript:@"src-iccid"];
                        v47 = [v6 objectForKeyedSubscript:@"alternateSmdpFqdn"];
                        v48 = [v20 objectForKeyedSubscript:@"state"];
                        [v34 didTransferPlanForEid:v51 iccid:v45 srcIccid:v46 smdpURL:v47 state:v48];
                      }

                      goto LABEL_64;
                    }

                    v34 = _TSLogDomain(v39);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v53 = v21;
                      v54 = 2080;
                      v55 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
                      v35 = "Invalid state: %@ @%s";
                      goto LABEL_60;
                    }

LABEL_64:

                    v12 = v21;
                    goto LABEL_42;
                  }

                  v34 = _TSLogDomain(v28);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
                    v36 = "No identifier found @%s";
                    v37 = v34;
                    v38 = 12;
                    goto LABEL_56;
                  }

                  goto LABEL_57;
                }
              }

              v29 = _TSLogDomain(v28);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v53 = v23;
                v54 = 2080;
                v55 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
                v30 = "Invalid source ICCID: %@ @%s";
                v31 = v29;
                v32 = 22;
LABEL_67:
                _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
              }
            }

            else
            {
              v29 = _TSLogDomain(v27);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
                v30 = "source ICCID missing @%s";
                v31 = v29;
                v32 = 12;
                goto LABEL_67;
              }
            }

            goto LABEL_69;
          }
        }

        v34 = _TSLogDomain(v26);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_64;
        }

        *buf = 138412546;
        v53 = v21;
        v54 = 2080;
        v55 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v35 = "Invalid ICCID: %@ @%s";
LABEL_60:
        _os_log_impl(&dword_262AA8000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x16u);
        goto LABEL_64;
      }

      v20 = _TSLogDomain(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v33 = "Invalid target device information @%s";
        goto LABEL_41;
      }
    }

    else
    {
      v20 = _TSLogDomain(v15);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v33 = "Invalid target ICCIDs @%s";
LABEL_41:
        _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
      }
    }

LABEL_42:

LABEL_43:
    v9 = v12;
LABEL_44:

    goto LABEL_45;
  }

  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = _TSLogDomain(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v53 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Invalid body type @%s", buf, 0xCu);
  }

LABEL_45:
}

- (BOOL)_currentLanguageIsRTL
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  if ([preferredLanguages count])
  {
    v3 = MEMORY[0x277CBEAF8];
    firstObject = [preferredLanguages firstObject];
    v5 = [v3 characterDirectionForLanguage:firstObject];

    v6 = v5 == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isHexadecimalString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  v5 = [v3 characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  invertedSet = [v5 invertedSet];

  v7 = [stringCopy rangeOfCharacterFromSet:invertedSet];
  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (!self->_didViewAppear)
  {
    v6 = scrollCopy;
    [scrollCopy contentOffset];
    scrollCopy = v6;
    if (v5 > 0.0)
    {
      [v6 setContentOffset:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      scrollCopy = v6;
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSEntitlementJSHandlerDelegate)callbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);

  return WeakRetained;
}

- (void)webView:decidePolicyForNavigationAction:decisionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "[TSWebsheetViewController webView:decidePolicyForNavigationAction:decisionHandler:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v1, 0x16u);
}

@end