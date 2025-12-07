@interface AMSUIWebOpenSafariAction
+ (id)resultFromURL:(id)l error:(id)error;
- (AMSUIWebOpenSafariAction)initWithJSObject:(id)object context:(id)context;
- (AMSUIWebSafariViewController)safariViewController;
- (BOOL)_presentViewContoller:(id)contoller;
- (UIViewController)presentedViewController;
- (id)runAction;
- (void)_safariDataUpdate:(id)update;
@end

@implementation AMSUIWebOpenSafariAction

- (AMSUIWebOpenSafariAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = AMSUIWebOpenSafariAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"callbackScheme"];
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
      v10 = v9;
    }

    else
    {
      v10 = @"amscallback";
    }

    objc_storeStrong(&v7->_callbackScheme, v10);

    v11 = [objectCopy objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    data = v7->_data;
    v7->_data = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v7->_URL, v16);
    if (v15)
    {
    }
  }

  return v7;
}

+ (id)resultFromURL:(id)l error:(id)error
{
  v17[3] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  lCopy = l;
  ams_parameters = [lCopy ams_parameters];
  v16[0] = @"callbackURL";
  absoluteString = [lCopy absoluteString];
  v9 = absoluteString;
  v10 = &stru_1F3921360;
  if (absoluteString)
  {
    v10 = absoluteString;
  }

  v11 = MEMORY[0x1E695E0F8];
  if (ams_parameters)
  {
    v11 = ams_parameters;
  }

  if (errorCopy)
  {
    v12 = 1;
  }

  else
  {
    v12 = lCopy == 0;
  }

  v17[0] = v10;
  v17[1] = v11;
  v16[1] = @"query";
  v16[2] = @"success";
  v13 = @"false";
  if (!v12)
  {
    v13 = @"true";
  }

  v17[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v14;
}

- (id)runAction
{
  v42 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = AMSUIWebOpenSafariAction;
  runAction = [(AMSUIWebAction *)&v37 runAction];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = [(AMSUIWebOpenSafariAction *)self URL];
    v9 = AMSLogableURL();
    *buf = 138543874;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v39 = v9;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running safari action with URL: %{public}@", buf, 0x20u);
  }

  v10 = [(AMSUIWebOpenSafariAction *)self URL];
  v11 = v10 == 0;

  if (v11)
  {
    v27 = MEMORY[0x1E698CAD0];
    v22 = AMSError();
    v26 = [v27 promiseWithError:v22];
  }

  else
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__safariDataUpdate_ name:@"SSScriptSafariViewControllerDataUpdateNotification" object:0];

    v13 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v14 = AMSLogKey();
    v15 = [AMSUIWebSafariViewController alloc];
    context = [(AMSUIWebAction *)self context];
    v17 = [(AMSUIWebSafariViewController *)v15 initWithContext:context];

    [(AMSUIWebSafariViewController *)v17 setShouldDismissOnCallback:1];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__9;
    v40 = __Block_byref_object_dispose__9;
    selfCopy = self;
    v41 = selfCopy;
    v19 = [(AMSUIWebOpenSafariAction *)selfCopy URL];
    data = [(AMSUIWebOpenSafariAction *)selfCopy data];
    callbackScheme = [(AMSUIWebOpenSafariAction *)selfCopy callbackScheme];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __37__AMSUIWebOpenSafariAction_runAction__block_invoke;
    v32 = &unk_1E7F269A8;
    v22 = v14;
    v33 = v22;
    v34 = selfCopy;
    v23 = v13;
    v35 = v23;
    v36 = buf;
    [(AMSUIWebSafariViewController *)v17 loadActionURL:v19 data:data callbackScheme:callbackScheme actionHandler:&v29];

    if (![(AMSUIWebOpenSafariAction *)selfCopy _presentViewContoller:v17, v29, v30, v31, v32])
    {
      v24 = AMSError();
      [v23 finishWithError:v24];
    }

    v25 = v35;
    v26 = v23;

    _Block_object_dispose(buf, 8);
  }

  return v26;
}

void __37__AMSUIWebOpenSafariAction_runAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = AMSSetLogKey();
  v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = v11;
    v13 = &stru_1F3921360;
    *v21 = 138543874;
    *&v21[4] = v10;
    if (v5)
    {
      v13 = v5;
    }

    *&v21[12] = 2114;
    *&v21[14] = v11;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received safari callback. %{public}@", v21, 0x20u);
  }

  v14 = [objc_opt_class() resultFromURL:v6 error:v5];

  v15 = [*(a1 + 40) context];
  v16 = [v15 dataProvider];
  v17 = [v16 postEvent:@"SafariDataUpdate" options:v14];

  v18 = *(a1 + 48);
  if (v5)
  {
    [v18 finishWithError:v5];
  }

  else
  {
    [v18 finishWithResult:v14];
  }

  [*(a1 + 40) setSafariViewController:{0, *v21, *&v21[8]}];
  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

- (BOOL)_presentViewContoller:(id)contoller
{
  contollerCopy = contoller;
  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  if (currentContainer)
  {
    [contollerCopy setShouldSetPresentationDelegate:1];
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:contollerCopy];
    [(AMSUIWebOpenSafariAction *)self setSafariViewController:contollerCopy];
    [(AMSUIWebOpenSafariAction *)self setPresentedViewController:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v9 configureWithDefaultBackground];
    navigationItem = [contollerCopy navigationItem];
    [navigationItem setStandardAppearance:v9];

    navigationItem2 = [contollerCopy navigationItem];
    [navigationItem2 setCompactAppearance:v9];

    navigationItem3 = [contollerCopy navigationItem];
    [navigationItem3 setScrollEdgeAppearance:v9];

    [currentContainer presentViewController:v8 animated:1 completion:0];
  }

  return currentContainer != 0;
}

- (void)_safariDataUpdate:(id)update
{
  v31 = *MEMORY[0x1E69E9840];
  object = [update object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v23 = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari data update called without a URL", &v23, 0x16u);
    }

    goto LABEL_22;
  }

  scheme = [v5 scheme];
  callbackScheme = [(AMSUIWebOpenSafariAction *)self callbackScheme];
  v8 = callbackScheme;
  if (callbackScheme)
  {
    v9 = callbackScheme;
  }

  else
  {
    v9 = &stru_1F3921360;
  }

  v10 = [scheme isEqualToString:v9];

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968] = mEMORY[0x1E698C968]2;
  if ((v10 & 1) == 0)
  {
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      callbackScheme2 = [(AMSUIWebOpenSafariAction *)self callbackScheme];
      v22 = AMSLogableURL();
      v23 = 138544130;
      v24 = v19;
      v25 = 2114;
      v26 = v20;
      v27 = 2114;
      v28 = callbackScheme2;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] ScriptDataUpdate scheme does not match callbackScheme (%{public}@): %{public}@", &v23, 0x2Au);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v23 = 138543618;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received ScriptDataUpdate notification", &v23, 0x16u);
  }

  mEMORY[0x1E698C968] = [(AMSUIWebOpenSafariAction *)self safariViewController];
  [mEMORY[0x1E698C968] receiveCallbackURL:v5];
LABEL_23:
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (AMSUIWebSafariViewController)safariViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_safariViewController);

  return WeakRetained;
}

@end