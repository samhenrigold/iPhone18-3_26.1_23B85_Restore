@interface AMSUIEngagementTask
- (AMSUIEngagementTask)initWithRequest:(id)request bag:(id)bag presentingViewController:(id)controller;
- (AMSUIEngagementTaskDelegate)delegate;
- (AMSUIEngagementViewController)taskController;
- (BOOL)_isInitialEngagementViewController;
- (BOOL)_isRemotePresentationEnabled;
- (BOOL)_isRemoteViewService;
- (BOOL)_isWindowPresentation;
- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler;
- (CGSize)preferredContentSize;
- (id)_infoWithBuyParams:(id)params additionalInfo:(id)info;
- (id)_presentEngagementLocally;
- (id)_presentEngagementRemotely;
- (id)_presentTaskController;
- (id)_presentViewController:(id)controller dismissBlock:(id)block;
- (id)engagementViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame;
- (id)presentEngagement;
- (int64_t)_modalPresentationStyle;
- (int64_t)_userInterfaceStyle;
- (void)engagementViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler;
- (void)engagementViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)engagementViewControllerShouldDismiss:(id)dismiss;
@end

@implementation AMSUIEngagementTask

- (AMSUIEngagementTask)initWithRequest:(id)request bag:(id)bag presentingViewController:(id)controller
{
  requestCopy = request;
  bagCopy = bag;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = AMSUIEngagementTask;
  v12 = [(AMSTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bag, bag);
    objc_storeStrong(&v13->_request, request);
    objc_storeStrong(&v13->_presentingViewController, controller);
  }

  return v13;
}

- (id)presentEngagement
{
  presentingViewController = [(AMSUIEngagementTask *)self presentingViewController];

  if (presentingViewController)
  {
    if ([(AMSUIEngagementTask *)self _isRemotePresentationEnabled])
    {
      [(AMSUIEngagementTask *)self _presentEngagementRemotely];
    }

    else
    {
      [(AMSUIEngagementTask *)self _presentEngagementLocally];
    }
    v6 = ;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__AMSUIEngagementTask_presentEngagement__block_invoke;
    v8[3] = &unk_1E7F24650;
    v8[4] = self;
    [v6 addFinishBlock:v8];
  }

  else
  {
    v4 = MEMORY[0x1E698CAD0];
    v5 = AMSError();
    v6 = [v4 promiseWithError:v5];
  }

  return v6;
}

void __40__AMSUIEngagementTask_presentEngagement__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AMSUIEngagementTask_presentEngagement__block_invoke_2;
  block[3] = &unk_1E7F242D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __40__AMSUIEngagementTask_presentEngagement__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) taskController];
  [v1 enqueueDismissedEvent];
}

- (AMSUIEngagementViewController)taskController
{
  taskController = self->_taskController;
  if (!taskController)
  {
    v4 = [AMSUIEngagementViewController alloc];
    request = [(AMSUIEngagementTask *)self request];
    v6 = [(AMSUIEngagementTask *)self bag];
    v7 = [(AMSUIEngagementViewController *)v4 initWithRequest:request bag:v6 delegate:self];
    v8 = self->_taskController;
    self->_taskController = v7;

    clientInfo = [(AMSUIEngagementTask *)self clientInfo];
    [(AMSUIEngagementViewController *)self->_taskController setClientInfo:clientInfo];

    [(AMSUIEngagementViewController *)self->_taskController setShouldSuppressDismissedEventOnDealloc:1];
    taskController = self->_taskController;
  }

  return taskController;
}

- (void)engagementViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  delegate = [(AMSUIEngagementTask *)self delegate];
  v12 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v12)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to request content view controller", &v20, 0xCu);
    }

    delegate2 = [(AMSUIEngagementTask *)self delegate];
    [delegate2 engagementViewController:controllerCopy contentViewControllerWithDictionary:dictionaryCopy completionHandler:handlerCopy];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543362;
      v21 = objc_opt_class();
      v19 = v21;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Delegate does not implement contentViewControllerWithDictionary", &v20, 0xCu);
    }

    delegate2 = AMSError();
    handlerCopy[2](handlerCopy, 0, delegate2);
  }
}

- (id)engagementViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  delegate = [(AMSUIEngagementTask *)self delegate];
  v12 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v12)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      v16 = v24;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to request content view", &v23, 0xCu);
    }

    delegate2 = [(AMSUIEngagementTask *)self delegate];
    taskController = [(AMSUIEngagementTask *)self taskController];
    v19 = [delegate2 engagementTaskViewController:taskController contentViewWithDictionary:dictionaryCopy frame:{x, y, width, height}];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      v21 = v24;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Delegate does not implement contentViewWithDictionary", &v23, 0xCu);
    }

    delegate2 = AMSError();
    v19 = 0;
  }

  return v19;
}

- (void)engagementViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  [(AMSUIEngagementTask *)self setError:error];
  v7 = resultCopy;
  if (resultCopy)
  {
    result = [(AMSUIEngagementTask *)self result];

    if (result)
    {
      carrierLinkResult = [resultCopy carrierLinkResult];
      result2 = [(AMSUIEngagementTask *)self result];
      [result2 setCarrierLinkResult:carrierLinkResult];

      purchaseResult = [resultCopy purchaseResult];
      result3 = [(AMSUIEngagementTask *)self result];
      [result3 setPurchaseResult:purchaseResult];

      result4 = [(AMSUIEngagementTask *)self result];
      userInfo = [result4 userInfo];
      v15 = userInfo;
      v16 = MEMORY[0x1E695E0F8];
      if (userInfo)
      {
        v17 = userInfo;
      }

      else
      {
        v17 = MEMORY[0x1E695E0F8];
      }

      userInfo2 = [resultCopy userInfo];
      v19 = userInfo2;
      if (userInfo2)
      {
        v20 = userInfo2;
      }

      else
      {
        v20 = v16;
      }

      v21 = [v17 ams_dictionaryByAddingEntriesFromDictionary:v20];
      result5 = [(AMSUIEngagementTask *)self result];
      [result5 setUserInfo:v21];
    }

    else
    {
      [(AMSUIEngagementTask *)self setResult:resultCopy];
    }

    v7 = resultCopy;
  }
}

- (void)engagementViewControllerShouldDismiss:(id)dismiss
{
  taskController = [(AMSUIEngagementTask *)self taskController];
  [taskController ams_dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  delegate = [(AMSUIEngagementTask *)self delegate];
  v10 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v10)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      identifier = [actionCopy identifier];
      *buf = 138543618;
      v36 = v14;
      v37 = 2114;
      v38 = identifier;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to handle delegate action (identifier: %{public}@)", buf, 0x16u);
    }

    delegate2 = [(AMSUIEngagementTask *)self delegate];
    taskController = [(AMSUIEngagementTask *)self taskController];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __94__AMSUIEngagementTask_engagementViewController_handleDynamicDelegateAction_completionHandler___block_invoke;
    v32[3] = &unk_1E7F246B8;
    v32[4] = self;
    v33 = actionCopy;
    v34 = handlerCopy;
    v19 = [delegate2 engagementTaskViewController:taskController handleDynamicDelegateAction:v33 completionHandler:v32];

    if (v19)
    {
      v20 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = v22;
      identifier2 = [actionCopy identifier];
      *buf = 138543618;
      v36 = v22;
      v37 = 2114;
      v38 = identifier2;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: Delegate does not implement handleDynamicDelegateAction (identifier: %{public}@)", buf, 0x16u);
    }

    v25 = AMSError();
    (*(handlerCopy + 2))(handlerCopy, 0, v25);
  }

  mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968]3)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = v28;
    identifier3 = [actionCopy identifier];
    *buf = 138543618;
    v36 = v28;
    v37 = 2114;
    v38 = identifier3;
    _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate action not handled (identifier: %{public}@)", buf, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E110], 0);
  v20 = 0;
LABEL_18:

  return v20;
}

void __94__AMSUIEngagementTask_engagementViewController_handleDynamicDelegateAction_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v13)
      {
        v13 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v23 = objc_opt_class();
      v24 = a1[5];
      v17 = v23;
      v18 = [v24 identifier];
      v25 = 138543618;
      v26 = v23;
      v27 = 2114;
      v28 = v18;
      v19 = "%{public}@: Delegate responded with neither an error or response (identifier: %{public}@)";
      v20 = v14;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 22;
      goto LABEL_13;
    }

LABEL_9:
    v13 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = objc_opt_class();
    v16 = a1[5];
    v17 = v15;
    v18 = [v16 identifier];
    v25 = 138543874;
    v26 = v15;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v5;
    v19 = "%{public}@: Delegate responded with a response (identifier: %{public}@, response: %{public}@)";
    v20 = v14;
    v21 = OS_LOG_TYPE_DEFAULT;
    v22 = 32;
LABEL_13:
    _os_log_impl(&dword_1BB036000, v20, v21, v19, &v25, v22);

LABEL_14:
    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = a1[5];
    v11 = v9;
    v12 = [v10 identifier];
    v25 = 138543874;
    v26 = v9;
    v27 = 2114;
    v28 = v6;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Delegate responded with error (identifier: %{public}@, error: %{public}@)", &v25, 0x20u);
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_15:
  (*(a1[6] + 16))();
}

- (id)_infoWithBuyParams:(id)params additionalInfo:(id)info
{
  paramsCopy = params;
  v6 = [info mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  [v9 setObject:paramsCopy forKeyedSubscript:*MEMORY[0x1E698C540]];

  return v9;
}

- (BOOL)_isInitialEngagementViewController
{
  clientInfo = [(AMSUIEngagementTask *)self clientInfo];
  bundleIdentifier = [clientInfo bundleIdentifier];
  v5 = [bundleIdentifier containsString:@"iCloudQuota"];

  if (v5)
  {
    presentingViewController = [(AMSUIEngagementTask *)self presentingViewController];
    if (presentingViewController)
    {
      v7 = presentingViewController;
      do
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          break;
        }

        parentViewController = [v7 parentViewController];

        v7 = parentViewController;
      }

      while (parentViewController);
      v10 = isKindOfClass ^ 1;
    }

    else
    {
      v10 = 1;
    }

    return v10 & 1;
  }

  else
  {

    return [(AMSUIEngagementTask *)self isRootRemotePresentation];
  }
}

- (BOOL)_isRemotePresentationEnabled
{
  remotePresentation = [(AMSUIEngagementTask *)self remotePresentation];
  if (remotePresentation)
  {
    LOBYTE(remotePresentation) = ![(AMSUIEngagementTask *)self _isRemoteViewService];
  }

  return remotePresentation;
}

- (BOOL)_isRemoteViewService
{
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];
  v4 = [&unk_1F394AB60 containsObject:bundleIdentifier];

  return v4;
}

- (BOOL)_isWindowPresentation
{
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];
  v4 = [&unk_1F394AB78 containsObject:bundleIdentifier];

  return v4;
}

- (id)_presentEngagementLocally
{
  v3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke;
  v8[3] = &unk_1E7F243C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  v5 = v9;
  v6 = v4;

  return v4;
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) allowMultiplePresentations] & 1) == 0 && ((objc_msgSend(*(a1 + 32), "isRunning") & 1) != 0 || objc_msgSend(*(a1 + 32), "isFinished")))
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = [*(a1 + 32) isRunning];
      v12 = [*(a1 + 32) isFinished];
      *buf = 138544130;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement task not available. Running: %d, Finished: %d", buf, 0x22u);
    }

    v13 = *(a1 + 40);
    v14 = AMSError();
    [v13 finishWithError:v14];
  }

  else
  {
    *(*(a1 + 32) + 48) = 0;
    *(*(a1 + 32) + 49) = 1;
    v2 = [*(a1 + 32) request];
    v3 = [v2 silentlyCheckURL];

    if (v3)
    {
      v4 = [*(a1 + 32) taskController];
      v5 = [v4 requestIsSupported];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_100;
      v19[3] = &unk_1E7F24B50;
      v6 = *(a1 + 40);
      v19[4] = *(a1 + 32);
      v20 = v6;
      [v5 addFinishBlock:v19];
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) _presentTaskController];
      [v15 finishWithPromise:v16];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_103;
    v18[3] = &unk_1E7F24B78;
    v17 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    [v17 addFinishBlock:v18];
  }
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_100(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = [*(a1 + 32) request];
      v10 = [v9 URL];
      v11 = AMSLogableURL();
      v25 = 138543874;
      v26 = v7;
      v27 = 2114;
      v28 = v8;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silently failing with URL: %{public}@", &v25, 0x20u);
    }

    v12 = [v4 userInfo];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v18 = v15;

    v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "presented")}];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E698C550]];

    v20 = [v4 domain];
    [v4 code];
    v21 = [v4 ams_title];
    v22 = [v4 ams_message];
    v23 = [v4 ams_underlyingError];
    v24 = AMSCustomError();

    [*(a1 + 40) finishWithError:v24];
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) _presentTaskController];
    [v16 finishWithPromise:v17];
  }
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_103(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_2;
  block[3] = &unk_1E7F242D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__AMSUIEngagementTask__presentEngagementLocally__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 49) = 0;
  *(*(a1 + 32) + 48) = 1;
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing AMSUIEngagementTaskViewController", &v7, 0x16u);
  }

  v6 = [*(a1 + 32) taskController];
  [v6 ams_dismissViewControllerAnimated:1 completion:0];
}

- (id)_presentEngagementRemotely
{
  v3 = [AMSUIEngagementRemoteViewTask alloc];
  request = [(AMSUIEngagementTask *)self request];
  presentingViewController = [(AMSUIEngagementTask *)self presentingViewController];
  v6 = [(AMSUIEngagementRemoteViewTask *)v3 initWithRequest:request presentingViewController:presentingViewController];

  v7 = [(AMSUIEngagementTask *)self bag];
  [(AMSUIEngagementRemoteViewTask *)v6 setBag:v7];

  clientInfo = [(AMSUIEngagementTask *)self clientInfo];
  if (clientInfo)
  {
    [(AMSUIEngagementRemoteViewTask *)v6 setClientInfo:clientInfo];
  }

  else
  {
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
    [(AMSUIEngagementRemoteViewTask *)v6 setClientInfo:currentProcess];
  }

  presentEngagement = [(AMSUIEngagementRemoteViewTask *)v6 presentEngagement];

  return presentEngagement;
}

- (id)_presentTaskController
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  [(AMSUIEngagementTask *)self setPresented:1];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting AMSUIEngagementTaskViewController", buf, 0x16u);
  }

  taskController = [(AMSUIEngagementTask *)self taskController];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__AMSUIEngagementTask__presentTaskController__block_invoke;
  v14[3] = &unk_1E7F243C0;
  v14[4] = self;
  v15 = v3;
  v9 = v3;
  v10 = [(AMSUIEngagementTask *)self _presentViewController:taskController dismissBlock:v14];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__AMSUIEngagementTask__presentTaskController__block_invoke_109;
  v13[3] = &unk_1E7F24BA0;
  v13[4] = self;
  v11 = [v9 catchWithBlock:v13];

  return v11;
}

void __45__AMSUIEngagementTask__presentTaskController__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v16 = 138543618;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismiss block called", &v16, 0x16u);
  }

  if (([*(a1 + 40) isFinished] & 1) == 0)
  {
    v6 = [*(a1 + 32) error];

    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) error];
      v9 = v7;
LABEL_8:
      [v9 finishWithError:v8];
LABEL_15:

      return;
    }

    v10 = [*(a1 + 32) result];

    if (v10)
    {
      v11 = *(a1 + 40);
      v8 = [*(a1 + 32) result];
      v12 = v11;
    }

    else
    {
      v13 = [*(a1 + 32) request];
      v14 = [v13 failOnDismiss];

      if (v14)
      {
        v15 = *(a1 + 40);
        v8 = AMSError();
        v9 = v15;
        goto LABEL_8;
      }

      v8 = objc_alloc_init(MEMORY[0x1E698C910]);
      v12 = *(a1 + 40);
    }

    [v12 finishWithResult:v8];
    goto LABEL_15;
  }
}

id __45__AMSUIEngagementTask__presentTaskController__block_invoke_109(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "presented")}];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E698C550]];

  v10 = [v3 domain];
  [v3 code];
  v11 = [v3 ams_title];
  v12 = [v3 ams_message];
  v13 = [v3 ams_underlyingError];

  v14 = AMSCustomError();

  v15 = [MEMORY[0x1E698CAD0] promiseWithError:v14];

  return v15;
}

- (id)_presentViewController:(id)controller dismissBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke;
  aBlock[3] = &unk_1E7F245E0;
  v9 = v8;
  v23 = v9;
  v10 = blockCopy;
  v24 = v10;
  v11 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke_2;
  v18[3] = &unk_1E7F24BE8;
  v18[4] = self;
  v19 = controllerCopy;
  v20 = v10;
  v21 = v11;
  v12 = v11;
  v13 = v10;
  v14 = controllerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
  v15 = v21;
  v16 = v9;

  return v9;
}

uint64_t __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(MEMORY[0x1E698C910]);
  [v2 finishWithResult:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) presentingViewController];
  v4 = [v3 ams_frontmostController];

  if (!v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        v1 = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, v1];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      *buf = 138543362;
      v32 = v11;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Presenting view controller is nil!", buf, 0xCu);
      if (v7)
      {

        v11 = v1;
      }
    }
  }

  v12 = [*(a1 + 32) request];
  v13 = [v12 isPresentationRequest];

  if (v13)
  {
    v14 = [[AMSUIEngagementWrapperViewController alloc] initWithViewController:*(a1 + 40)];
    [(AMSUIEngagementWrapperViewController *)v14 setDismissBlock:*(a1 + 48)];
    -[AMSUIEngagementWrapperViewController setModalPresentationStyle:](v14, "setModalPresentationStyle:", [*(a1 + 32) _modalPresentationStyle]);
    v15 = [(AMSUIEngagementWrapperViewController *)v14 presentationController];
    [v15 setDelegate:v14];

    v16 = [*(a1 + 32) request];
    -[AMSUIEngagementWrapperViewController setModalInPresentation:](v14, "setModalInPresentation:", [v16 suppressInteractiveModalDismissal]);

    [v4 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v17 = [*(a1 + 32) request];
    v18 = [v17 presentationStyle];

    if (v18 == 4)
    {
      v14 = [[AMSUIEngagementCardWrapperViewController alloc] initWithViewController:*(a1 + 40)];
      v19 = [MEMORY[0x1E69C66D8] defaultConfiguration];
      [(AMSUIEngagementWrapperViewController *)v19 setSupportsDarkMode:1];
      v20 = [v4 presentProxCardFlowWithDelegate:*(a1 + 32) initialViewController:v14 configuration:v19];
      v21 = [*(a1 + 32) request];
      -[AMSUIEngagementWrapperViewController setPresentationStyle:](v14, "setPresentationStyle:", [v21 presentationStyle]);
    }

    else
    {
      v14 = [*(a1 + 32) cachedNavigationController];
      if (!v14)
      {
        v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(a1 + 40)];
        -[AMSUIEngagementWrapperViewController setModalPresentationStyle:](v14, "setModalPresentationStyle:", [*(a1 + 32) _modalPresentationStyle]);
        v22 = [*(a1 + 32) _userInterfaceStyle];
        if (v22)
        {
          [(AMSUIEngagementWrapperViewController *)v14 setOverrideUserInterfaceStyle:v22];
        }

        [*(a1 + 32) setCachedNavigationController:v14];
      }

      v19 = [[AMSUIEngagementWrapperViewController alloc] initWithViewController:v14];
      -[AMSUIEngagementWrapperViewController setModalPresentationStyle:](v19, "setModalPresentationStyle:", [*(a1 + 32) _modalPresentationStyle]);
      v23 = [*(a1 + 32) request];
      -[AMSUIEngagementWrapperViewController setModalInPresentation:](v19, "setModalInPresentation:", [v23 suppressInteractiveModalDismissal]);

      v24 = [*(a1 + 32) request];
      v25 = [v24 presentationStyle];

      if (v25 == 5)
      {
        v26 = [(AMSUIEngagementWrapperViewController *)v19 sheetPresentationController];
        v27 = [MEMORY[0x1E69DCF58] _detentWithIdentifier:@"Custom" resolutionContextBlock:&__block_literal_global_6];
        v30 = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [v26 setDetents:v28];

        [v26 setPrefersEdgeAttachedInCompactHeight:1];
        [v26 setPrefersScrollingExpandsWhenScrolledToEdge:0];
        [v26 setPreferredCornerRadius:12.0];
      }

      [(AMSUIEngagementWrapperViewController *)v19 setDismissBlock:*(a1 + 56)];
      v29 = [(AMSUIEngagementWrapperViewController *)v14 presentationController];
      [v29 setDelegate:v19];

      [v4 presentViewController:v19 animated:1 completion:0];
    }
  }
}

double __59__AMSUIEngagementTask__presentViewController_dismissBlock___block_invoke_125(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _containerBounds];
  v4 = v3;
  v5 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  [v2 _fullHeightPresentedViewFrame];
  v9 = v8;
  v10 = [v2 _isEdgeAttached];
  v11 = 0.0;
  if (v10)
  {
    [v2 _containerSafeAreaInsets];
  }

  v12 = 1.1;
  if (!IsAccessibilityCategory)
  {
    v12 = 1.0;
  }

  v13 = dbl_1BB1EF200[v4 > 568.0];
  v14 = v12 * (v9 - v11);
  if ([v2 _isEdgeAttached])
  {
    v15 = v13 * v14;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (int64_t)_modalPresentationStyle
{
  request = [(AMSUIEngagementTask *)self request];
  presentationStyle = [request presentationStyle];

  if (presentationStyle == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (presentationStyle != 2);
  }
}

- (int64_t)_userInterfaceStyle
{
  v19 = *MEMORY[0x1E69E9840];
  request = [(AMSUIEngagementTask *)self request];
  v3 = [request URL];
  fragment = [v3 fragment];

  if (fragment)
  {
    [fragment componentsSeparatedByString:@"&"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 hasPrefix:{@"userInterfaceStyle=", v14}])
          {
            v12 = [v10 substringFromIndex:{objc_msgSend(@"userInterfaceStyle=", "length")}];
            if ([v12 isEqualToString:@"light"])
            {
              v11 = 1;
            }

            else if ([v12 isEqualToString:@"dark"])
            {
              v11 = 2;
            }

            else
            {
              v11 = 0;
            }

            goto LABEL_18;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_18:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (AMSUIEngagementTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end