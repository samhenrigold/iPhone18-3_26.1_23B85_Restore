@interface AMSUIWebSafariWebView
+ (id)_createContentControllerWithScheme:(id)scheme data:(id)data messageHandler:(id)handler;
- (AMSUIWebSafariWebView)initWithAppearance:(id)appearance scheme:(id)scheme data:(id)data delegate:(id)delegate;
- (NSString)logKey;
- (NSString)scheme;
- (WKNavigationDelegate)safariDelegate;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation AMSUIWebSafariWebView

- (AMSUIWebSafariWebView)initWithAppearance:(id)appearance scheme:(id)scheme data:(id)data delegate:(id)delegate
{
  schemeCopy = scheme;
  delegateCopy = delegate;
  v11 = MEMORY[0x1E69853A8];
  dataCopy = data;
  v13 = objc_alloc_init(v11);
  nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v13 setWebsiteDataStore:nonPersistentDataStore];

  preferences = [v13 preferences];
  [preferences setJavaScriptCanOpenWindowsAutomatically:0];

  preferences2 = [v13 preferences];
  [preferences2 _setPunchOutWhiteBackgroundsInDarkMode:1];

  [v13 _setDrawsBackground:0];
  [v13 _setPrintsBackgrounds:0];
  v17 = MEMORY[0x1E696AEC0];
  productVersion = [MEMORY[0x1E698C8A8] productVersion];
  buildVersion = [MEMORY[0x1E698C8A8] buildVersion];
  v20 = [v17 stringWithFormat:@"Version/%@ Mobile/%@ Safari", productVersion, buildVersion];
  [v13 setApplicationNameForUserAgent:v20];

  v21 = [objc_opt_class() _createContentControllerWithScheme:schemeCopy data:dataCopy messageHandler:self];

  [v13 setUserContentController:v21];
  if ([schemeCopy length])
  {
    [v13 setURLSchemeHandler:self forURLScheme:schemeCopy];
  }

  v28.receiver = self;
  v28.super_class = AMSUIWebSafariWebView;
  v22 = [(AMSUIWebSafariWebView *)&v28 initWithFrame:v13 configuration:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_scheme, schemeCopy);
    objc_storeWeak(&v23->_safariDelegate, delegateCopy);
    [(AMSUIWebSafariWebView *)v23 _setUseSystemAppearance:1];
    [(AMSUIWebSafariWebView *)v23 setNavigationDelegate:delegateCopy];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v23 ams_setBackgroundColor:clearColor];

    [(AMSUIWebSafariWebView *)v23 setOpaque:0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    scrollView = [(AMSUIWebSafariWebView *)v23 scrollView];
    [scrollView ams_setBackgroundColor:clearColor2];
  }

  [(AMSUIWebSafariWebView *)v23 setUIDelegate:v23];

  return v23;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  body = [message body];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = body;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 objectForKeyedSubscript:@"data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    safariDelegate = [(AMSUIWebSafariWebView *)self safariDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      safariDelegate2 = [(AMSUIWebSafariWebView *)self safariDelegate];
      [safariDelegate2 safariView:self didReceiveAction:v11 body:v13 replyHandler:handlerCopy];
    }

    else
    {
      safariDelegate2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!safariDelegate2)
      {
        safariDelegate2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [safariDelegate2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        logKey = [(AMSUIWebSafariWebView *)self logKey];
        v20 = 138543874;
        v21 = v18;
        v22 = 2114;
        v23 = logKey;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari VC not responding to action delegate: %{public}@", &v20, 0x20u);
      }
    }
  }
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  v35 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  request = [taskCopy request];
  v7 = [request URL];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    logKey = [(AMSUIWebSafariWebView *)self logKey];
    scheme = [v7 scheme];
    scheme2 = [(AMSUIWebSafariWebView *)self scheme];
    v27 = 138544130;
    v28 = v10;
    v29 = 2114;
    v30 = logKey;
    v31 = 2114;
    v32 = scheme;
    v33 = 2114;
    v34 = scheme2;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling scheme: %{public}@ expected: %{public}@", &v27, 0x2Au);
  }

  scheme3 = [v7 scheme];
  lowercaseString = [scheme3 lowercaseString];
  scheme4 = [(AMSUIWebSafariWebView *)self scheme];
  lowercaseString2 = [scheme4 lowercaseString];
  v18 = [lowercaseString isEqualToString:lowercaseString2];

  safariDelegate = [(AMSUIWebSafariWebView *)self safariDelegate];
  if (v18)
  {
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      safariDelegate2 = [(AMSUIWebSafariWebView *)self safariDelegate];
      [safariDelegate2 safariView:self didRedirectToSchemeWithURL:v7];
    }

    else
    {
      safariDelegate2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!safariDelegate2)
      {
        safariDelegate2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [safariDelegate2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        logKey2 = [(AMSUIWebSafariWebView *)self logKey];
        v27 = 138543618;
        v28 = v25;
        v29 = 2114;
        v30 = logKey2;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari VC not responding to scheme delegate", &v27, 0x16u);
      }
    }

    goto LABEL_16;
  }

  v22 = objc_opt_respondsToSelector();

  if ((v22 & 1) == 0)
  {
LABEL_16:
    safariDelegate3 = AMSError();
    [taskCopy didFailWithError:safariDelegate3];
    goto LABEL_17;
  }

  safariDelegate3 = [(AMSUIWebSafariWebView *)self safariDelegate];
  [safariDelegate3 webView:self startURLSchemeTask:taskCopy];
LABEL_17:
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  v19 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    logKey = [(AMSUIWebSafariWebView *)self logKey];
    request = [taskCopy request];
    v11 = [request URL];
    scheme = [v11 scheme];
    v13 = 138543874;
    v14 = v8;
    v15 = 2114;
    v16 = logKey;
    v17 = 2114;
    v18 = scheme;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Stopping scheme handling: %{public}@", &v13, 0x20u);
  }
}

+ (id)_createContentControllerWithScheme:(id)scheme data:(id)data messageHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  dataCopy = data;
  v9 = MEMORY[0x1E6985350];
  handlerCopy = handler;
  v11 = objc_alloc_init(v9);
  pageWorld = [MEMORY[0x1E6985318] pageWorld];
  [v11 addScriptMessageHandlerWithReply:handlerCopy contentWorld:pageWorld name:@"callback"];

  v13 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework"];
  v14 = [v13 URLForResource:@"JSSafariSandbox" withExtension:@"js"];

  v35 = 0;
  v15 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v14 encoding:4 error:&v35];
  v16 = v35;
  if (v16 || !v15)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = v14;
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138544130;
      v37 = v20;
      v14 = v19;
      v38 = 2114;
      v39 = v21;
      v40 = 2114;
      v41 = @"JSSafariSandbox";
      v42 = 2114;
      v43 = v16;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load resource: %{public}@. %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    mEMORY[0x1E698C968] = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v15 injectionTime:0 forMainFrameOnly:0];
    [v11 addUserScript:mEMORY[0x1E698C968]];
  }

  if ([schemeCopy length])
  {
    schemeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AMSSafari.callbackScheme = %@", schemeCopy];;
    v23 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:schemeCopy injectionTime:0 forMainFrameOnly:0];
    [v11 addUserScript:v23];
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dataCopy])
  {
    v33 = v14;
    v34 = 0;
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dataCopy options:0 error:&v34];
    v25 = v34;
    if (v25 || !v24)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v30 = objc_opt_class();
      v31 = AMSLogKey();
      *buf = 138544130;
      v37 = v30;
      v38 = 2114;
      v39 = v31;
      v29 = v31;
      v40 = 2114;
      v41 = @"JSSafariSandbox";
      v42 = 2114;
      v43 = v25;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load resource: %{public}@. %{public}@", buf, 0x2Au);
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v24 encoding:4];
      if (!v26)
      {
LABEL_22:

        v14 = v33;
        goto LABEL_23;
      }

      mEMORY[0x1E698C968]2 = v26;
      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AMSSafari.data = %@", v26];;
      v29 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:oSLogObject2 injectionTime:0 forMainFrameOnly:0];
      [v11 addUserScript:v29];
    }

LABEL_21:
    goto LABEL_22;
  }

LABEL_23:

  return v11;
}

- (NSString)logKey
{
  WeakRetained = objc_loadWeakRetained(&self->_logKey);

  return WeakRetained;
}

- (WKNavigationDelegate)safariDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_safariDelegate);

  return WeakRetained;
}

- (NSString)scheme
{
  WeakRetained = objc_loadWeakRetained(&self->_scheme);

  return WeakRetained;
}

@end