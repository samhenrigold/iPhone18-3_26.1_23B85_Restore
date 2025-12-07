@interface LTUITranslationViewController
+ (void)initialize;
- (LTUITranslationViewController)init;
- (LTUITranslationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_sheetPresentationController;
- (id)_userInfo;
- (void)_cleanUpExtension;
- (void)_insertBackground;
- (void)_presentError:(id)error;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)_presentationControllerDidDismiss:(id)dismiss;
- (void)_refreshExtensionList;
- (void)_refreshForSystemExtension;
- (void)_removeBackground;
- (void)_setChildController:(id)controller;
- (void)confirmUserConsent;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)dismiss;
- (void)expandSheet;
- (void)finishWithError:(id)error;
- (void)finishWithTranslation:(id)translation;
- (void)invalidate;
- (void)receiveExtensions:(id)extensions;
- (void)setRemoteViewController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation LTUITranslationViewController

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    instrumentationLog = _LTOSLogSignpost(v3, v4);

    MEMORY[0x2821F96F8]();
  }
}

- (LTUITranslationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v15.receiver = self;
  v15.super_class = LTUITranslationViewController;
  v4 = [(LTUITranslationViewController *)&v15 initWithNibName:0 bundle:0];
  if (v4)
  {
    isAvailable = [objc_opt_class() isAvailable];
    if ((isAvailable & 1) == 0)
    {
      v7 = _LTOSLogSystemTranslation(isAvailable, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [LTUITranslationViewController initWithNibName:bundle:];
      }
    }

    ignoredAttributes = v4->_ignoredAttributes;
    v4->_ignoredAttributes = MEMORY[0x277CBEBF8];

    [(LTUITranslationViewController *)v4 _refreshExtensionList];
    v4->cplID = os_signpost_id_generate(instrumentationLog);
    v9 = instrumentationLog;
    v10 = v9;
    cplID = v4->cplID;
    if (cplID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_26F4D2000, v10, OS_SIGNPOST_INTERVAL_BEGIN, cplID, "CPL", " enableTelemetry=YES ", v14, 2u);
    }

    v12 = v4;
  }

  return v4;
}

- (LTUITranslationViewController)init
{
  v2 = [(LTUITranslationViewController *)self initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = LTUITranslationViewController;
  [(LTUITranslationViewController *)&v3 didReceiveMemoryWarning];
  [(LTUITranslationViewController *)self invalidate];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LTUITranslationViewController;
  [(LTUITranslationViewController *)&v3 viewDidLoad];
  [(LTUITranslationViewController *)self _insertBackground];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = LTUITranslationViewController;
  [(LTUITranslationViewController *)&v5 viewDidLayoutSubviews];
  _isInPopoverPresentation = [(LTUITranslationViewController *)self _isInPopoverPresentation];
  serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
  [serviceViewControllerProxy adaptForPresentationInPopover:_isInPopoverPresentation];
}

- (void)willMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = LTUITranslationViewController;
  [(LTUITranslationViewController *)&v7 willMoveToParentViewController:?];
  if (controller)
  {
    _isInPopoverPresentation = [(LTUITranslationViewController *)self _isInPopoverPresentation];
    serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy adaptForPresentationInPopover:_isInPopoverPresentation];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = LTUITranslationViewController;
  [(LTUITranslationViewController *)&v7 didMoveToParentViewController:?];
  if (controller)
  {
    _isInPopoverPresentation = [(LTUITranslationViewController *)self _isInPopoverPresentation];
    serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy adaptForPresentationInPopover:_isInPopoverPresentation];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = LTUITranslationViewController;
  [(LTUITranslationViewController *)&v5 viewWillAppear:appear];
  presentationController = [(LTUITranslationViewController *)self presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentationController _setBackgroundBlurDisabled:1];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = LTUITranslationViewController;
  [(LTUITranslationViewController *)&v6 viewDidDisappear:disappear];
  dismissCompletionHandler = [(LTUITranslationViewController *)self dismissCompletionHandler];

  if (dismissCompletionHandler)
  {
    dismissCompletionHandler2 = [(LTUITranslationViewController *)self dismissCompletionHandler];
    dismissCompletionHandler2[2]();

    [(LTUITranslationViewController *)self setDismissCompletionHandler:0];
  }

  [(LTUITranslationViewController *)self _cleanUpExtension];
}

- (void)_refreshExtensionList
{
  v3 = _LTOSLogXPC(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F4D2000, v3, OS_LOG_TYPE_INFO, "Choosing System Translation path", v4, 2u);
  }

  [(LTUITranslationViewController *)self _refreshForSystemExtension];
}

- (void)_refreshForSystemExtension
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CCA0F8];
  v14[0] = kLTUIViewServiceProtocol;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  objc_initWeak(&location, self);
  self->extensionQueryID = os_signpost_id_generate(instrumentationLog);
  v4 = instrumentationLog;
  v5 = v4;
  extensionQueryID = self->extensionQueryID;
  if (extensionQueryID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, extensionQueryID, "RemoteViewControllerSetup", &unk_26F4D748D, buf, 2u);
  }

  v7 = MEMORY[0x277CCA9C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__LTUITranslationViewController__refreshForSystemExtension__block_invoke;
  v9[3] = &unk_279DD86C0;
  objc_copyWeak(&v10, &location);
  v8 = [v7 beginMatchingExtensionsWithAttributes:v3 completion:v9];
  [(LTUITranslationViewController *)self setMatchingToken:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__LTUITranslationViewController__refreshForSystemExtension__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v6)
  {
    v10 = _LTOSLogXPC(WeakRetained, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __59__LTUITranslationViewController__refreshForSystemExtension__block_invoke_cold_1();
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_4;
    }

    if (v9)
    {
LABEL_4:
      v11 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v12 = __59__LTUITranslationViewController__refreshForSystemExtension__block_invoke_19;
      v13 = v6;
LABEL_8:
      v11[2] = v12;
      v11[3] = &unk_279DD8698;
      v11[4] = v9;
      v11[5] = v13;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }
  }

  else if (WeakRetained && [v5 count])
  {
    v11 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v12 = __59__LTUITranslationViewController__refreshForSystemExtension__block_invoke_2;
    v13 = v5;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_presentError:(id)error
{
  errorCopy = error;
  v6 = _LTOSLogSystemTranslation(errorCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [LTUITranslationViewController _presentError:];
  }

  [(LTUITranslationViewController *)self _cleanUpExtension];
}

- (id)_userInfo
{
  v28 = *MEMORY[0x277D85DE8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  arguments = [processInfo arguments];
  v5 = [arguments containsObject:@"-SkipFirstUse"];

  v8 = _LTOSLogOnboarding(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v27 = v5;
    _os_log_impl(&dword_26F4D2000, v8, OS_LOG_TYPE_INFO, "Skip first use consent: %{BOOL}i", buf, 8u);
  }

  v9 = MEMORY[0x277CBEB38];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[LTUITranslationViewController consentDisplayOnly](self, "consentDisplayOnly", @"ConsentDisplayOnly"}];
  v25[0] = v10;
  v24[1] = @"SkipFirstUse";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v25[1] = v11;
  v24[2] = @"ReplacementAvailable";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[LTUITranslationViewController isSourceEditable](self, "isSourceEditable")}];
  v25[2] = v12;
  v24[3] = @"IgnoredAttributes";
  ignoredAttributes = [(LTUITranslationViewController *)self ignoredAttributes];
  v25[3] = ignoredAttributes;
  v24[4] = @"CPLIntervalID";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->cplID];
  v25[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v16 = [v9 dictionaryWithDictionary:v15];

  sourceMeta = self->_sourceMeta;
  if (sourceMeta)
  {
    dictionaryRepresentation = [(LTUISourceMeta *)sourceMeta dictionaryRepresentation];
    [v16 setObject:dictionaryRepresentation forKeyedSubscript:@"SourceMeta"];
  }

  sourceLocale = self->_sourceLocale;
  if (sourceLocale)
  {
    localeIdentifier = [(NSLocale *)sourceLocale localeIdentifier];
    [v16 setObject:localeIdentifier forKeyedSubscript:@"SourceLocale"];
  }

  targetLocale = self->_targetLocale;
  if (targetLocale)
  {
    localeIdentifier2 = [(NSLocale *)targetLocale localeIdentifier];
    [v16 setObject:localeIdentifier2 forKeyedSubscript:@"TargetLocale"];
  }

  return v16;
}

- (void)receiveExtensions:(id)extensions
{
  v46 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  extensionsCopy = extensions;
  v5 = [extensionsCopy countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(extensionsCopy);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:@"com.apple.TranslationUIServices.TranslationUIService"];

        if (v11)
        {
          v12 = v9;

          v6 = v12;
        }
      }

      v5 = [extensionsCopy countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v5);

    if (v6)
    {
      [(LTUITranslationViewController *)self setCurrentExtension:v6];
      v15 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      _userInfo = [(LTUITranslationViewController *)self _userInfo];
      [v15 setUserInfo:_userInfo];
      text = [(LTUITranslationViewController *)self text];

      if (text)
      {
        v20 = objc_alloc(MEMORY[0x277CCA898]);
        text2 = [(LTUITranslationViewController *)self text];
        string = [text2 string];
        v23 = [v20 initWithString:string];
        [v15 setAttributedContentText:v23];
      }

      else
      {
        v25 = _LTOSLogSystemTranslation(v18, v19);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [LTUITranslationViewController receiveExtensions:];
        }
      }

      inited = objc_initWeak(&location, self);
      v28 = _LTOSLogSystemTranslation(inited, v27);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_26F4D2000, v28, OS_LOG_TYPE_INFO, "System-wide translation requested", buf, 2u);
      }

      v31 = _LTOSLogSystemTranslation(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v44 = _userInfo;
        _os_log_impl(&dword_26F4D2000, v31, OS_LOG_TYPE_INFO, "Starting translation with user info: %{public}@", buf, 0xCu);
      }

      [(LTUITranslationViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __51__LTUITranslationViewController_receiveExtensions___block_invoke;
      v35[3] = &unk_279DD86E8;
      objc_copyWeak(&v36, &location);
      [v6 setRequestInterruptionBlock:v35];
      v42 = v15;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __51__LTUITranslationViewController_receiveExtensions___block_invoke_34;
      v33[3] = &unk_279DD8738;
      objc_copyWeak(&v34, &location);
      [v6 instantiateViewControllerWithInputItems:v32 connectionHandler:v33];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);

      goto LABEL_23;
    }
  }

  else
  {
  }

  v24 = _LTOSLogSystemTranslation(v13, v14);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    [LTUITranslationViewController receiveExtensions:];
  }

LABEL_23:
}

void __51__LTUITranslationViewController_receiveExtensions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__LTUITranslationViewController_receiveExtensions___block_invoke_2;
    block[3] = &unk_279DD8628;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __51__LTUITranslationViewController_receiveExtensions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogSystemTranslation(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __51__LTUITranslationViewController_receiveExtensions___block_invoke_2_cold_1();
  }

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationUIServicesErrorDomain" code:1 userInfo:0];
  [*(a1 + 32) finishWithError:v4];
}

void __51__LTUITranslationViewController_receiveExtensions___block_invoke_34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__LTUITranslationViewController_receiveExtensions___block_invoke_2_35;
  v13[3] = &unk_279DD8710;
  v14 = v9;
  v10 = v9;
  objc_copyWeak(&v17, (a1 + 32));
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v17);
}

void __51__LTUITranslationViewController_receiveExtensions___block_invoke_2_35(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = _LTOSLogSystemTranslation(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __51__LTUITranslationViewController_receiveExtensions___block_invoke_2_35_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained finishWithError:*(a1 + 32)];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = objc_loadWeakRetained((a1 + 56));
    [v6 setRequestID:v5];

    v7 = objc_loadWeakRetained((a1 + 56));
    [v7 setRemoteViewController:*(a1 + 48)];

    v8 = objc_loadWeakRetained((a1 + 56));
    [v8 _endDelayingPresentation];
  }
}

- (void)_setChildController:(id)controller
{
  controllerCopy = controller;
  [(LTUITranslationViewController *)self addChildViewController:controllerCopy];
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__LTUITranslationViewController__setChildController___block_invoke;
  v7[3] = &unk_279DD8698;
  v8 = controllerCopy;
  selfCopy = self;
  v6 = controllerCopy;
  [v5 performWithoutAnimation:v7];
}

void __53__LTUITranslationViewController__setChildController___block_invoke(uint64_t a1)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) view];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [*(a1 + 40) view];
  [v3 addSubview:v2];

  v14 = MEMORY[0x277CCAAD0];
  v20 = [v2 topAnchor];
  v21 = [*(a1 + 40) view];
  v19 = [v21 topAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v22[0] = v18;
  v17 = [*(a1 + 40) view];
  v16 = [v17 bottomAnchor];
  v15 = [v2 bottomAnchor];
  v13 = [v16 constraintEqualToAnchor:v15];
  v22[1] = v13;
  v12 = [v2 leadingAnchor];
  v4 = [*(a1 + 40) view];
  v5 = [v4 leadingAnchor];
  v6 = [v12 constraintEqualToAnchor:v5];
  v22[2] = v6;
  v7 = [*(a1 + 40) view];
  v8 = [v7 trailingAnchor];
  v9 = [v2 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v14 activateConstraints:v11];

  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  [*(a1 + 32) preferredContentSize];
  [*(a1 + 40) setPreferredContentSize:0.0];
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    view = [(LTUIRemoteViewController *)remoteViewController view];
    [view removeFromSuperview];

    [(LTUIRemoteViewController *)self->_remoteViewController removeFromParentViewController];
  }

  objc_storeStrong(&self->_remoteViewController, controller);
  [(LTUIRemoteViewController *)self->_remoteViewController setDelegate:self];
  if (self->_remoteViewController)
  {
    [(LTUITranslationViewController *)self _setChildController:?];
    _isInPopoverPresentation = [(LTUITranslationViewController *)self _isInPopoverPresentation];
    serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy adaptForPresentationInPopover:_isInPopoverPresentation];

    v10 = instrumentationLog;
    v11 = v10;
    extensionQueryID = self->extensionQueryID;
    if (extensionQueryID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_26F4D2000, v11, OS_SIGNPOST_INTERVAL_END, extensionQueryID, "RemoteViewControllerSetup", &unk_26F4D748D, v13, 2u);
    }
  }
}

- (void)invalidate
{
  [(LTUITranslationViewController *)self setRemoteViewController:0];

  [(LTUITranslationViewController *)self _cleanUpExtension];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  v5 = [[LTUIErrorViewController alloc] initWithError:errorCopy];
  v7 = _LTOSLogSystemTranslation(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [LTUITranslationViewController finishWithError:];
  }

  [(LTUITranslationViewController *)self _insertBackground];
  [(LTUITranslationViewController *)self setRemoteViewController:0];
  [(LTUITranslationViewController *)self _setChildController:v5];
  [(LTUITranslationViewController *)self _cleanUpExtension];
}

- (void)_cleanUpExtension
{
  v3 = MEMORY[0x277CCA9C8];
  matchingToken = [(LTUITranslationViewController *)self matchingToken];
  [v3 endMatchingExtensions:matchingToken];

  [(LTUITranslationViewController *)self setMatchingToken:0];
  currentExtension = [(LTUITranslationViewController *)self currentExtension];
  requestID = [(LTUITranslationViewController *)self requestID];
  [currentExtension cancelExtensionRequestWithIdentifier:requestID];

  [(LTUITranslationViewController *)self setCurrentExtension:0];

  [(LTUITranslationViewController *)self setRequestID:0];
}

- (void)finishWithTranslation:(id)translation
{
  replacementHandler = self->_replacementHandler;
  if (replacementHandler)
  {
    replacementHandler[2](replacementHandler, translation);
  }

  [(LTUITranslationViewController *)self dismiss];
}

- (void)dismiss
{
  v3 = _LTOSLogSystemTranslation(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F4D2000, v3, OS_LOG_TYPE_INFO, "Dismissing system view controller", v5, 2u);
  }

  dismissCompletionHandler = [(LTUITranslationViewController *)self dismissCompletionHandler];
  [(LTUITranslationViewController *)self dismissViewControllerAnimated:1 completion:dismissCompletionHandler];

  [(LTUITranslationViewController *)self setDismissCompletionHandler:0];
  [(LTUITranslationViewController *)self _cleanUpExtension];
}

- (void)confirmUserConsent
{
  v3 = _LTOSLogOnboarding(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F4D2000, v3, OS_LOG_TYPE_DEFAULT, "User confirmed consent to using system translation", v4, 2u);
  }

  [(LTUITranslationViewController *)self setUserConsentConfirmed:1];
  [(LTUITranslationViewController *)self dismiss];
}

- (void)expandSheet
{
  _sheetPresentationController = [(LTUITranslationViewController *)self _sheetPresentationController];
  detents = [_sheetPresentationController detents];
  v5 = [detents count];

  if (_sheetPresentationController && v5 >= 2)
  {
    v6 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__LTUITranslationViewController_expandSheet__block_invoke;
    v7[3] = &unk_279DD8698;
    v8 = _sheetPresentationController;
    selfCopy = self;
    [v6 _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v7 options:0 animations:0.0 completion:0.0];
  }
}

void __44__LTUITranslationViewController_expandSheet__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75A28] largeDetent];
  v3 = [v2 identifier];
  [*(a1 + 32) setSelectedDetentIdentifier:v3];

  v5 = [*(a1 + 40) view];
  v4 = [v5 window];
  [v4 layoutIfNeeded];
}

- (void)_insertBackground
{
  view = [(LTUITranslationViewController *)self view];
  v4 = [view viewWithTag:101];

  if (!v4)
  {
    v8 = [MEMORY[0x277D75210] effectWithStyle:9];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v8];
    [v5 setTag:101];
    view2 = [(LTUITranslationViewController *)self view];
    [view2 bounds];
    [v5 setFrame:?];

    [v5 setAutoresizingMask:18];
    view3 = [(LTUITranslationViewController *)self view];
    [view3 insertSubview:v5 atIndex:0];
  }
}

- (void)_removeBackground
{
  view = [(LTUITranslationViewController *)self view];
  v3 = [view viewWithTag:101];

  [v3 removeFromSuperview];
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  v9[2] = *MEMORY[0x277D85DE8];
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = presentationControllerCopy;
    [v5 _setShouldDismissWhenTappedOutside:1];
    mediumDetent = [MEMORY[0x277D75A28] mediumDetent];
    v9[0] = mediumDetent;
    largeDetent = [MEMORY[0x277D75A28] largeDetent];
    v9[1] = largeDetent;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    [v5 setDetents:v8];

    [v5 setLargestUndimmedDetentIdentifier:0];
    [v5 setPrefersGrabberVisible:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentationControllerCopy _setBackgroundBlurDisabled:1];
  }
}

- (void)_presentationControllerDidDismiss:(id)dismiss
{
  dismissCompletionHandler = [(LTUITranslationViewController *)self dismissCompletionHandler];

  if (dismissCompletionHandler)
  {
    dismissCompletionHandler2 = [(LTUITranslationViewController *)self dismissCompletionHandler];
    dismissCompletionHandler2[2]();

    [(LTUITranslationViewController *)self setDismissCompletionHandler:0];
  }
}

- (id)_sheetPresentationController
{
  v2 = [(LTUITranslationViewController *)self _existingPresentationControllerImmediate:0 effective:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)receiveExtensions:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__LTUITranslationViewController_receiveExtensions___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end