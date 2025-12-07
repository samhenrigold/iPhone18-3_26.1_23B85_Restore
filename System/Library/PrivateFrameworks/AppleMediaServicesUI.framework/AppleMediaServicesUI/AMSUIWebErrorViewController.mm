@interface AMSUIWebErrorViewController
- (AMSUIWebErrorViewController)initWithContext:(id)context;
- (void)_applyAppearance;
- (void)_enqueuePageEventIfNeeded;
- (void)_runAction;
- (void)_showCancelButtonIfNeeded;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willPresentPageModel:(id)model appearance:(id)appearance;
@end

@implementation AMSUIWebErrorViewController

- (AMSUIWebErrorViewController)initWithContext:(id)context
{
  contextCopy = context;
  v6 = [(AMSUICommonViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v21 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AMSUIWebErrorViewController;
  [(AMSUIWebErrorViewController *)&v12 viewWillAppear:appear];
  [(AMSUIWebErrorViewController *)self _applyAppearance];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    context = self->_context;
    v8 = v6;
    logKey = [(AMSUIWebClientContext *)context logKey];
    title = [(AMSUIErrorView *)self->_errorView title];
    message = [(AMSUIErrorView *)self->_errorView message];
    *buf = 138544130;
    v14 = v6;
    v15 = 2114;
    v16 = logKey;
    v17 = 2114;
    v18 = title;
    v19 = 2114;
    v20 = message;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error page displayed. Title: %{public}@, Message: %{public}@", buf, 0x2Au);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = AMSUIWebErrorViewController;
  [(AMSUIWebErrorViewController *)&v3 viewDidDisappear:disappear];
}

- (void)loadView
{
  v59[1] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = AMSUIWebErrorViewController;
  [(AMSUICommonViewController *)&v57 loadView];
  model = [(AMSUIWebErrorViewController *)self model];
  error = [model error];
  userInfo = [error userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A588]];
  lowercaseString = [v6 lowercaseString];
  v8 = [lowercaseString isEqualToString:@"user cancelled"];

  if ((v8 & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x1E698CA38]);
    model2 = [(AMSUIWebErrorViewController *)self model];
    error2 = [model2 error];
    v12 = [v9 initWithSubsystem:*MEMORY[0x1E698C6F0] category:@"bootstrap" error:error2];

    context = [(AMSUIWebErrorViewController *)self context];
    clientInfo = [context clientInfo];
    bundleIdentifier = [clientInfo bundleIdentifier];
    [v12 setClientApp:bundleIdentifier];

    context2 = [(AMSUIWebErrorViewController *)self context];
    clientOptions = [context2 clientOptions];
    v18 = [clientOptions objectForKeyedSubscript:@"inlineInterrupt"];
    if (objc_opt_respondsToSelector())
    {
      context3 = [(AMSUIWebErrorViewController *)self context];
      clientOptions2 = [context3 clientOptions];
      v21 = [clientOptions2 objectForKeyedSubscript:@"inlineInterrupt"];
      [v12 setEventInlineInterruption:{objc_msgSend(v21, "BOOLValue")}];
    }

    else
    {
      [v12 setEventInlineInterruption:0];
    }

    context4 = [(AMSUIWebErrorViewController *)self context];
    versionNumber = [context4 versionNumber];
    if (versionNumber)
    {
      v58 = @"html";
      context5 = [(AMSUIWebErrorViewController *)self context];
      versionNumber2 = [context5 versionNumber];
      v59[0] = versionNumber2;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      [v12 setJsVersions:v26];
    }

    else
    {
      context5 = [v12 jsVersions];
      [v12 setJsVersions:context5];
    }

    context6 = [(AMSUIWebErrorViewController *)self context];
    v28 = [context6 URL];
    [v12 setUrl:v28];

    context7 = [(AMSUIWebErrorViewController *)self context];
    metrics = [context7 metrics];
    [metrics enqueueEvent:v12];
  }

  v31 = [AMSUIErrorView alloc];
  v32 = [(AMSUIErrorView *)v31 initWithFrame:&stru_1F3921360 title:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUIWebErrorViewController *)self setErrorView:v32];

  model3 = [(AMSUIWebErrorViewController *)self model];
  errorTitle = [model3 errorTitle];
  v35 = errorTitle;
  if (errorTitle)
  {
    v36 = errorTitle;
  }

  else
  {
    v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v36 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_TITLE", 0, v37);
  }

  model4 = [(AMSUIWebErrorViewController *)self model];
  actionButtonTitle = [model4 actionButtonTitle];
  v40 = actionButtonTitle;
  if (actionButtonTitle)
  {
    v41 = actionButtonTitle;
  }

  else
  {
    v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v41 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_BUTTON", 0, v42);
  }

  v43 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v44 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_MESSAGE", 0, v43);

  model5 = [(AMSUIWebErrorViewController *)self model];
  if (([model5 errorMessageInternalOnly] & 1) == 0)
  {

LABEL_20:
    model5 = [(AMSUIWebErrorViewController *)self model];
    [model5 errorMessage];
    v44 = model6 = v44;
    goto LABEL_21;
  }

  model6 = [(AMSUIWebErrorViewController *)self model];
  if ([model6 errorMessageInternalOnly])
  {
    has_internal_content = os_variant_has_internal_content();

    if (!has_internal_content)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  errorView = [(AMSUIWebErrorViewController *)self errorView];
  [errorView setTitle:v36];

  errorView2 = [(AMSUIWebErrorViewController *)self errorView];
  [errorView2 setButtonTitle:v41];

  errorView3 = [(AMSUIWebErrorViewController *)self errorView];
  [errorView3 setMessage:v44];

  objc_initWeak(&location, self);
  errorView = self->_errorView;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __39__AMSUIWebErrorViewController_loadView__block_invoke;
  v54[3] = &unk_1E7F24968;
  objc_copyWeak(&v55, &location);
  [(AMSUIErrorView *)errorView setButtonAction:v54];
  [(AMSUIWebErrorViewController *)self _enqueuePageEventIfNeeded];
  view = [(AMSUICommonViewController *)self view];
  errorView4 = [(AMSUIWebErrorViewController *)self errorView];
  [view addSubview:errorView4];

  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);
}

void __39__AMSUIWebErrorViewController_loadView__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [WeakRetained context];
    v6 = [v5 logKey];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action button tapped", &v7, 0x16u);
  }

  [WeakRetained _runAction];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AMSUIWebErrorViewController;
  [(AMSUIWebErrorViewController *)&v13 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  errorView = [(AMSUIWebErrorViewController *)self errorView];
  [errorView setFrame:{v5, v7, v9, v11}];
}

- (void)willPresentPageModel:(id)model appearance:(id)appearance
{
  v21 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  appearanceCopy = appearance;
  v8 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    objc_storeStrong(&self->_model, v9);
    [(AMSUIWebErrorPageModel *)self->_model setDelegate:self];
    objc_storeStrong(&self->_appearance, appearance);
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      context = [(AMSUIWebErrorViewController *)self context];
      logKey = [context logKey];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = logKey;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid error page model: %{public}@", &v15, 0x20u);
    }
  }
}

- (void)_applyAppearance
{
  appearance = [(AMSUIWebErrorViewController *)self appearance];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  backgroundColor = [appearance backgroundColor];
  v5 = backgroundColor;
  if (backgroundColor)
  {
    v6 = backgroundColor;
  }

  else
  {
    v6 = v3;
  }

  errorView = [(AMSUIWebErrorViewController *)self errorView];
  [errorView ams_setBackgroundColor:v6];

  backgroundColor2 = [appearance backgroundColor];
  v9 = backgroundColor2;
  if (backgroundColor2)
  {
    v10 = backgroundColor2;
  }

  else
  {
    v10 = v3;
  }

  view = [(AMSUICommonViewController *)self view];
  [view ams_setBackgroundColor:v10];

  [(AMSUIWebErrorViewController *)self _showCancelButtonIfNeeded];
}

- (void)_enqueuePageEventIfNeeded
{
  v28 = *MEMORY[0x1E69E9840];
  context = [(AMSUIWebErrorViewController *)self context];
  metricsOverlay = [context metricsOverlay];
  v5 = [metricsOverlay objectForKeyedSubscript:@"engagementMetrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || ((-[AMSUIWebErrorViewController context](self, "context"), v7 = objc_claimAutoreleasedReturnValue(), [v7 clientOptions], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", @"engagementMetrics"), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v6 = 0) : (v6 = v9), v9, v6))
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing engagement display event.", buf, 0x16u);
    }

    v14 = [(AMSUIWebErrorViewController *)self context:@"eventType"];
    v15 = [v14 URL];
    v23[3] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:4];

    v17 = objc_alloc(MEMORY[0x1E698C8D8]);
    context2 = [(AMSUIWebErrorViewController *)self context];
    v19 = [context2 bag];
    v20 = [v17 initWithBag:v19];
    v21 = [v20 enqueueData:v16];
  }
}

- (void)_showCancelButtonIfNeeded
{
  context = [(AMSUIWebErrorViewController *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  navigationItem = [currentContainer navigationItem];
  hidesBackButton = [navigationItem hidesBackButton];
  navigationController = [(AMSUIWebErrorViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v9 = [viewControllers count];

  appearance = [(AMSUIWebErrorViewController *)self appearance];
  clientHandlesDismissability = [appearance clientHandlesDismissability];

  if ((v9 < 2 || hidesBackButton) && (([(AMSUIWebErrorViewController *)self showingCancelButton]| clientHandlesDismissability) & 1) == 0)
  {
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    v13 = [rightBarButtonItems count];

    if (!v13)
    {
      [(AMSUIWebErrorViewController *)self setShowingCancelButton:1];
      v14 = [AMSUIWebFlowAction alloc];
      context2 = [(AMSUIWebErrorViewController *)self context];
      v16 = [(AMSUIWebFlowAction *)v14 initWithContext:context2];

      [(AMSUIWebFlowAction *)v16 setPresentationType:4];
      v17 = objc_alloc_init(AMSUIWebButtonModel);
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        [(AMSUIWebButtonModel *)v17 setStyle:2];
      }

      else
      {
        v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
        v19 = AMSUILocalizedStringFromBundle(@"CANCEL", 0, v18);
        [(AMSUIWebButtonModel *)v17 setTitle:v19];
      }

      [(AMSUIWebButtonModel *)v17 setAction:v16];
      [(AMSUIWebButtonModel *)v17 setEnabled:1];
      [(AMSUIWebButtonModel *)v17 setStyle:3];
      v20 = objc_alloc_init(AMSUIWebBarButtonItemModel);
      [(AMSUIWebBarButtonItemModel *)v20 setButtonModel:v17];
      v21 = objc_alloc_init(AMSUIWebNavigationBarModel);
      [(AMSUIWebNavigationBarModel *)v21 setLeftBarButtonItemModel:v20];
      model = [(AMSUIWebErrorViewController *)self model];
      navigationBar = [model navigationBar];
      if ([navigationBar style] == 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = 5;
      }

      [(AMSUIWebNavigationBarModel *)v21 setStyle:v24];

      [currentContainer applyNavigationModel:v21];
    }
  }
}

- (void)_runAction
{
  model = [(AMSUIWebErrorViewController *)self model];
  action = [model action];

  if (action)
  {
    model2 = [(AMSUIWebErrorViewController *)self model];
    action2 = [model2 action];
    runAction = [action2 runAction];
  }

  model3 = [(AMSUIWebErrorViewController *)self model];
  actionBlock = [model3 actionBlock];

  if (actionBlock)
  {
    model4 = [(AMSUIWebErrorViewController *)self model];
    actionBlock2 = [model4 actionBlock];
    (actionBlock2)[2](actionBlock2, action != 0);
  }
}

@end