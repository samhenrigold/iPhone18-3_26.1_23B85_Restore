@interface AMSUIOAuthTask
- (AMSUIOAuthTask)initWithOAuthURL:(id)l customScheme:(id)scheme presentingViewController:(id)controller;
- (AMSUIOAuthTask)initWithOAuthURL:(id)l host:(id)host path:(id)path presentingViewController:(id)controller;
- (id)performTask;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
@end

@implementation AMSUIOAuthTask

- (AMSUIOAuthTask)initWithOAuthURL:(id)l customScheme:(id)scheme presentingViewController:(id)controller
{
  lCopy = l;
  schemeCopy = scheme;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = AMSUIOAuthTask;
  v12 = [(AMSTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_oAuthURL, l);
    v14 = [getASWebAuthenticationSessionCallbackClass() callbackWithCustomScheme:schemeCopy];
    callback = v13->_callback;
    v13->_callback = v14;

    objc_storeStrong(&v13->_presentingViewController, controller);
  }

  return v13;
}

- (AMSUIOAuthTask)initWithOAuthURL:(id)l host:(id)host path:(id)path presentingViewController:(id)controller
{
  lCopy = l;
  hostCopy = host;
  pathCopy = path;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = AMSUIOAuthTask;
  v15 = [(AMSTask *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_oAuthURL, l);
    v17 = [getASWebAuthenticationSessionCallbackClass() callbackWithHTTPSHost:hostCopy path:pathCopy];
    callback = v16->_callback;
    v16->_callback = v17;

    objc_storeStrong(&v16->_presentingViewController, controller);
  }

  return v16;
}

- (id)performTask
{
  v3 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getASWebAuthenticationSessionClass_softClass;
  v20 = getASWebAuthenticationSessionClass_softClass;
  if (!getASWebAuthenticationSessionClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getASWebAuthenticationSessionClass_block_invoke;
    v16[3] = &unk_1E7F241B0;
    v16[4] = &v17;
    __getASWebAuthenticationSessionClass_block_invoke(v16);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = [v4 alloc];
  oAuthURL = [(AMSUIOAuthTask *)self oAuthURL];
  callback = [(AMSUIOAuthTask *)self callback];
  completionHandlerAdapter = [v3 completionHandlerAdapter];
  v10 = [v6 initWithURL:oAuthURL callback:callback completionHandler:completionHandlerAdapter];

  [v10 setPresentationContextProvider:self];
  [v10 setPrefersEphemeralWebBrowserSession:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__AMSUIOAuthTask_performTask__block_invoke;
  block[3] = &unk_1E7F242D0;
  v15 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __29__AMSUIOAuthTask_performTask__block_invoke_2;
  v13[3] = &unk_1E7F253C8;
  v13[4] = self;
  [v3 addFinishBlock:v13];

  return v3;
}

void __29__AMSUIOAuthTask_performTask__block_invoke_2(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        a1 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, a1];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v20 = AMSHashIfNeeded();
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v20;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Task finished successfully with a URL. url = %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = a1;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        a1 = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, a1];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Task finished with error. error = %{public}@", buf, 0x16u);
      if (v15)
      {

        v19 = a1;
      }
    }
  }
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  presentingViewController = [(AMSUIOAuthTask *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];

  return window;
}

@end