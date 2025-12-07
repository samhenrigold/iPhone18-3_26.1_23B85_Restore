@interface AMSUIWebDiagnosticsWrapperViewController
- (AMSUIWebDiagnosticsWrapperViewController)initWithContext:(id)context;
- (DADiagnosticsRemoteViewController)diagnosticsViewController;
- (unint64_t)_destinationForValue:(id)value;
- (void)reportFinishWithReason:(unint64_t)reason;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)willPresentPageModel:(id)model appearance:(id)appearance;
@end

@implementation AMSUIWebDiagnosticsWrapperViewController

- (AMSUIWebDiagnosticsWrapperViewController)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AMSUIWebDiagnosticsWrapperViewController;
  v6 = [(AMSUICommonViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (unint64_t)_destinationForValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    integerValue = [valueCopy integerValue];
    if ((integerValue - 1) >= 6)
    {
      v6 = 0;
    }

    else
    {
      v6 = integerValue;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reportFinishWithReason:(unint64_t)reason
{
  v15[1] = *MEMORY[0x1E69E9840];
  context = [(AMSUIWebDiagnosticsWrapperViewController *)self context];
  logKey = [context logKey];
  v7 = AMSUIWebSetSubLogKey(logKey, 0);

  v8 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"DeviceDiagnostics" logKey:v7];
  v14 = @"finishReason";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [(AMSUIWebJSRequest *)v8 setOptions:v10];

  context2 = [(AMSUIWebDiagnosticsWrapperViewController *)self context];
  dataProvider = [context2 dataProvider];
  v13 = [dataProvider runJSRequest:v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = AMSUIWebDiagnosticsWrapperViewController;
  [(AMSUIWebDiagnosticsWrapperViewController *)&v7 viewWillAppear:appear];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getDADiagnosticsRemoteViewControllerClass_softClass;
  v12 = getDADiagnosticsRemoteViewControllerClass_softClass;
  if (!getDADiagnosticsRemoteViewControllerClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getDADiagnosticsRemoteViewControllerClass_block_invoke;
    v8[3] = &unk_1E7F241B0;
    v8[4] = &v9;
    __getDADiagnosticsRemoteViewControllerClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__AMSUIWebDiagnosticsWrapperViewController_viewWillAppear___block_invoke;
  v6[3] = &unk_1E7F24C10;
  v6[4] = self;
  [v4 requestViewControllerWithConnectionHandler:v6];
}

void __59__AMSUIWebDiagnosticsWrapperViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E698CBB0] isRunningUnitTests];
    v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        v13 = AMSHashIfNeeded();
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2114;
        v63 = v13;
        _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No Diagnostics view controller set (error: %{public}@)", buf, 0x20u);
      }

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      [v9 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v14 userInfo:0];
    }

    else
    {
      if (!v8)
      {
        v9 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v52 = [v9 OSLogObject];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        v53 = objc_opt_class();
        v54 = AMSLogKey();
        v55 = AMSHashIfNeeded();
        *buf = 138543874;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        *&buf[22] = 2114;
        v63 = v55;
        _os_log_impl(&dword_1BB036000, v52, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] No Diagnostics view controller set (error: %{public}@)", buf, 0x20u);
      }
    }

    goto LABEL_33;
  }

  v9 = v5;
  [v9 setDelegate:*(a1 + 32)];
  v15 = [*(a1 + 32) model];
  v16 = [v15 destination];
  if (v16)
  {
    goto LABEL_11;
  }

  v16 = [*(a1 + 32) model];
  v17 = [v16 flowSessionID];
  if (v17)
  {

LABEL_11:
LABEL_12:
    v58 = 0;
    v59 = &v58;
    v60 = 0x2050000000;
    v18 = getDADiagnosticFlowClass_softClass;
    v61 = getDADiagnosticFlowClass_softClass;
    if (!getDADiagnosticFlowClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDADiagnosticFlowClass_block_invoke;
      v63 = &unk_1E7F241B0;
      v64 = &v58;
      __getDADiagnosticFlowClass_block_invoke(buf);
      v18 = v59[3];
    }

    v19 = v18;
    _Block_object_dispose(&v58, 8);
    v20 = [v18 defaultFlow];
    v21 = [*(a1 + 32) model];
    v22 = [v21 destination];
    v23 = v22 == 0;

    if (!v23)
    {
      v24 = *(a1 + 32);
      v25 = [v24 model];
      v26 = [v25 destination];
      [v20 setDestination:{objc_msgSend(v24, "_destinationForValue:", v26)}];
    }

    v27 = [*(a1 + 32) model];
    v28 = [v27 flowSessionID];
    v29 = v28 == 0;

    if (!v29)
    {
      v30 = [*(a1 + 32) model];
      v31 = [v30 flowSessionID];
      [v20 setSessionID:v31];
    }

    v32 = [*(a1 + 32) model];
    v33 = [v32 flowSerialNumber];
    v34 = v33 == 0;

    if (!v34)
    {
      v35 = [*(a1 + 32) model];
      v36 = [v35 flowSerialNumber];
      [v20 setSerialNumber:v36];
    }

    [v9 setStartingFlow:v20];

    goto LABEL_21;
  }

  v56 = [*(a1 + 32) model];
  v57 = [v56 flowSerialNumber];

  if (v57)
  {
    goto LABEL_12;
  }

LABEL_21:
  v37 = [*(a1 + 32) model];
  v38 = [v37 sessionToken];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v40 = [*(a1 + 32) model];
    v41 = [v40 sessionToken];
    [v9 sessionToken:v41];
  }

  v42 = [*(a1 + 32) model];
  v43 = [v42 requiredSerialNumbers];
  objc_opt_class();
  v44 = objc_opt_isKindOfClass();

  if (v44)
  {
    v45 = [*(a1 + 32) model];
    v46 = [v45 requiredSerialNumbers];
    [v9 requiredSerialNumbers:v46];
  }

  v47 = [*(a1 + 32) model];
  v48 = [v47 selectableSerialNumbers];
  objc_opt_class();
  v49 = objc_opt_isKindOfClass();

  if (v49)
  {
    v50 = [*(a1 + 32) model];
    v51 = [v50 selectableSerialNumbers];
    [v9 selectableSerialNumbers:v51];
  }

  [*(a1 + 32) setDiagnosticsViewController:v9];
  [*(a1 + 32) ams_setChildViewController:v9];
LABEL_33:
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIWebDiagnosticsWrapperViewController;
  [(AMSUIWebDiagnosticsWrapperViewController *)&v14 viewDidLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  diagnosticsViewController = [(AMSUIWebDiagnosticsWrapperViewController *)self diagnosticsViewController];
  view2 = [diagnosticsViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)willPresentPageModel:(id)model appearance:(id)appearance
{
  v18 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = modelCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(AMSUIWebDiagnosticsWrapperViewController *)self setModel:v6];
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
      v9 = objc_opt_class();
      context = [(AMSUIWebDiagnosticsWrapperViewController *)self context];
      logKey = [context logKey];
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = logKey;
      v16 = 2114;
      v17 = modelCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid model: %{public}@", &v12, 0x20u);
    }
  }
}

- (DADiagnosticsRemoteViewController)diagnosticsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsViewController);

  return WeakRetained;
}

@end