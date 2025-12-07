@interface AMSUIWebView
+ (id)_getSetCookiesForResponse:(id)response;
- (AMSUIWebClientContext)context;
- (AMSUIWebView)initWithContext:(id)context additionalScripts:(id)scripts;
- (double)bottomInset;
- (id)_jsonLogStringWithDictionary:(id)dictionary;
- (id)_parseRequestError:(id)error logKey:(id)key;
- (id)_prepareWithURL:(id)l loadBlock:(id)block;
- (id)_setupContentRulesForWebView:(id)view context:(id)context;
- (id)loadRequest:(id)request;
- (id)loadRequest:(id)request response:(id)response responseData:(id)data;
- (id)sendJSRequest:(id)request;
- (void)_addScriptsToContentController:(id)controller additionalScripts:(id)scripts;
- (void)_finishedLoading;
- (void)_openURL:(id)l completionHandler:(id)handler;
- (void)_receiveJSObject:(id)object logKey:(id)key replyHandler:(id)handler;
- (void)_refreshControlTriggered;
- (void)_setupRefreshControl;
- (void)_tearDownRefreshControl;
- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l;
- (void)_webView:(id)view didFailNavigation:(id)navigation withError:(id)error userInfo:(id)info;
- (void)_webView:(id)view navigation:(id)navigation didFailProvisionalLoadInSubframe:(id)subframe withError:(id)error;
- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation;
- (void)_webView:(id)view navigationDidFinishDocumentLoad:(id)load;
- (void)dealloc;
- (void)takeSnapshotWithCompletion:(id)completion;
- (void)updateUserScriptsWithScripts:(id)scripts;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation AMSUIWebView

- (AMSUIWebView)initWithContext:(id)context additionalScripts:(id)scripts
{
  contextCopy = context;
  scriptsCopy = scripts;
  v42.receiver = self;
  v42.super_class = AMSUIWebView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(AMSUICommonView *)&v42 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_context, contextCopy);
    v14 = objc_alloc_init(MEMORY[0x1E69853A8]);
    [v14 _setWaitsForPaintAfterViewDidMoveToWindow:0];
    preferences = [v14 preferences];
    [preferences _setPunchOutWhiteBackgroundsInDarkMode:1];

    preferences2 = [v14 preferences];
    [preferences2 setJavaScriptCanOpenWindowsAutomatically:0];

    [v14 _setDrawsBackground:0];
    [v14 _setPrintsBackgrounds:0];
    [v14 _setApplePayEnabled:1];
    [v14 setMediaTypesRequiringUserActionForPlayback:MEMORY[0x1E695E0F0]];
    [v14 setAllowsInlineMediaPlayback:1];
    nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
    [v14 setWebsiteDataStore:nonPersistentDataStore];

    v18 = objc_alloc_init(MEMORY[0x1E6985350]);
    v19 = [[AMSUIWebDelegateProxy alloc] initWithDelegate:v13];
    pageWorld = [MEMORY[0x1E6985318] pageWorld];
    [v18 addScriptMessageHandlerWithReply:v19 contentWorld:pageWorld name:@"callback"];

    [(AMSUIWebView *)v13 _addScriptsToContentController:v18 additionalScripts:scriptsCopy];
    [v14 setUserContentController:v18];
    v21 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:v14 configuration:{v8, v9, v10, v11}];
    underlyingWebView = v13->_underlyingWebView;
    v13->_underlyingWebView = v21;

    [(WKWebView *)v13->_underlyingWebView setAllowsBackForwardNavigationGestures:0];
    [(WKWebView *)v13->_underlyingWebView setUIDelegate:v13];
    [(WKWebView *)v13->_underlyingWebView setAccessibilityIdentifier:@"AMS.WebPage"];
    [(WKWebView *)v13->_underlyingWebView setNavigationDelegate:v13];
    v23 = MEMORY[0x1E698CBB8];
    clientInfo = [contextCopy clientInfo];
    v25 = [v23 userAgentForProcessInfo:clientInfo];
    [(WKWebView *)v13->_underlyingWebView setCustomUserAgent:v25];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(WKWebView *)v13->_underlyingWebView ams_setBackgroundColor:clearColor];

    [(WKWebView *)v13->_underlyingWebView setOpaque:0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    scrollView = [(WKWebView *)v13->_underlyingWebView scrollView];
    [scrollView setBackgroundColor:clearColor2];

    [(WKWebView *)v13->_underlyingWebView _setAllowsRemoteInspection:os_variant_has_internal_content()];
    [(WKWebView *)v13->_underlyingWebView _setUseSystemAppearance:1];
    [(AMSUIWebView *)v13 addSubview:v13->_underlyingWebView];
    [(WKWebView *)v13->_underlyingWebView setTranslatesAutoresizingMaskIntoConstraints:0];
    bottomAnchor = [(AMSUIWebView *)v13 bottomAnchor];
    bottomAnchor2 = [(WKWebView *)v13->_underlyingWebView bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v31 setActive:1];

    leadingAnchor = [(AMSUIWebView *)v13 leadingAnchor];
    leadingAnchor2 = [(WKWebView *)v13->_underlyingWebView leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v34 setActive:1];

    topAnchor = [(WKWebView *)v13->_underlyingWebView topAnchor];
    topAnchor2 = [(AMSUIWebView *)v13 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];

    [v37 setActive:1];
    trailingAnchor = [(AMSUIWebView *)v13 trailingAnchor];
    trailingAnchor2 = [(WKWebView *)v13->_underlyingWebView trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v40 setActive:1];
  }

  return v13;
}

- (void)dealloc
{
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  [underlyingWebView stopLoading];

  v4.receiver = self;
  v4.super_class = AMSUIWebView;
  [(AMSUIWebView *)&v4 dealloc];
}

- (double)bottomInset
{
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  scrollView = [underlyingWebView scrollView];
  [scrollView contentInset];
  v5 = v4;

  return v5;
}

- (id)loadRequest:(id)request response:(id)response responseData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  dataCopy = data;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    *buf = 138543874;
    v28 = v13;
    v29 = 2114;
    v30 = logKey;
    v31 = 2048;
    v32 = [dataCopy length];
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading HTML into WebView (length: %ld)", buf, 0x20u);
  }

  v17 = [responseCopy URL];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__AMSUIWebView_loadRequest_response_responseData___block_invoke;
  v23[3] = &unk_1E7F24A88;
  v23[4] = self;
  v24 = responseCopy;
  v25 = requestCopy;
  v26 = dataCopy;
  v18 = dataCopy;
  v19 = requestCopy;
  v20 = responseCopy;
  v21 = [(AMSUIWebView *)self _prepareWithURL:v17 loadBlock:v23];

  return v21;
}

void __50__AMSUIWebView_loadRequest_response_responseData___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _getSetCookiesForResponse:*(a1 + 40)];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 32) underlyingWebView];
        v9 = [v8 configuration];
        v10 = [v9 websiteDataStore];
        v11 = [v10 httpCookieStore];
        [v11 setCookie:v7 completionHandler:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = [*(a1 + 32) underlyingWebView];
  v13 = [v12 loadSimulatedRequest:*(a1 + 48) response:*(a1 + 40) responseData:*(a1 + 56)];
}

- (id)loadRequest:(id)request
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v11 = [requestCopy URL];
    v12 = AMSLogableURL();
    *buf = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = logKey;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading request into WebView: %{public}@", buf, 0x20u);
  }

  v13 = [requestCopy URL];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __28__AMSUIWebView_loadRequest___block_invoke;
  v17[3] = &unk_1E7F243C0;
  v17[4] = self;
  v18 = requestCopy;
  v14 = requestCopy;
  v15 = [(AMSUIWebView *)self _prepareWithURL:v13 loadBlock:v17];

  return v15;
}

void __28__AMSUIWebView_loadRequest___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) underlyingWebView];
  v2 = [v3 loadRequest:*(a1 + 40)];
}

- (id)sendJSRequest:(id)request
{
  v52 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v6 = [MEMORY[0x1E695DF00] now];
  options = [requestCopy options];
  if (options && (v8 = options, v9 = MEMORY[0x1E696ACB0], [requestCopy options], v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend(v9, "isValidJSONObject:", v10), v10, v8, v9))
  {
    v11 = MEMORY[0x1E696ACB0];
    options2 = [requestCopy options];
    v43 = 0;
    v13 = [v11 dataWithJSONObject:options2 options:0 error:&v43];
    v14 = v43;

    if (!v13 || v14)
    {
      selfCopy = self;
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        [requestCopy logKey];
        v20 = v36 = v5;
        *buf = 138543874;
        v45 = v19;
        v46 = 2114;
        v47 = v20;
        v48 = 2114;
        v49 = v14;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error encoding service options. %{public}@", buf, 0x20u);

        v5 = v36;
      }

      v15 = 0;
      self = selfCopy;
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
    }
  }

  else
  {
    v15 = 0;
  }

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v6;
    v23 = v5;
    selfCopy2 = self;
    v25 = objc_opt_class();
    logKey = [requestCopy logKey];
    service = [requestCopy service];
    options3 = v15;
    if (!v15)
    {
      options3 = [requestCopy options];
    }

    *buf = 138544130;
    v45 = v25;
    v46 = 2114;
    v47 = logKey;
    v48 = 2114;
    v49 = service;
    v50 = 2112;
    v51 = options3;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling service: %{public}@ %@", buf, 0x2Au);
    if (!v15)
    {
    }

    v5 = v23;
    self = selfCopy2;
    v6 = v37;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AMSUIWebView_sendJSRequest___block_invoke;
  block[3] = &unk_1E7F25638;
  block[4] = self;
  v39 = requestCopy;
  v40 = v15;
  v41 = v6;
  v29 = v5;
  v42 = v29;
  v30 = v6;
  v31 = v15;
  v32 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v33 = v42;
  v34 = v29;

  return v29;
}

void __30__AMSUIWebView_sendJSRequest___block_invoke(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) underlyingWebView];
  v16[0] = @"name";
  v3 = [*(a1 + 40) service];
  v4 = v3;
  v16[1] = @"data";
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = &stru_1F3921360;
  }

  v17[0] = v3;
  v17[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v7 = [MEMORY[0x1E6985318] pageWorld];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__AMSUIWebView_sendJSRequest___block_invoke_2;
  v11[3] = &unk_1E7F26C00;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = *(a1 + 64);
  [v2 callAsyncJavaScript:@"return AMS.callService(name arguments:data);" inFrame:v6 inContentWorld:0 completionHandler:{v7, v11}];
}

void __30__AMSUIWebView_sendJSRequest___block_invoke_2(id *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [a1[4] timeIntervalSinceNow];
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  if (v6)
  {
    v9 = a1[5];
    v10 = [a1[6] logKey];
    v11 = [v9 _parseRequestError:v6 logKey:v10];

    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = [a1[6] logKey];
      v16 = v8;
      *buf = 138544130;
      v40 = v14;
      v41 = 2114;
      v42 = v15;
      v43 = 2048;
      v44 = v16;
      v45 = 2114;
      v46 = v11;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Service call failed [%f] %{public}@", buf, 0x2Au);
    }

    v17 = a1[7];
LABEL_10:
    [v17 finishWithError:v11];
    goto LABEL_35;
  }

  v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v19 = v18;
  if (!v5)
  {
    if (!v18)
    {
      v19 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v27 = [v19 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = [a1[6] logKey];
      v30 = v8;
      *buf = 138543874;
      v40 = v28;
      v41 = 2114;
      v42 = v29;
      v43 = 2048;
      v44 = v30;
      _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Service call finished [%f] (no result)", buf, 0x20u);
    }

    v31 = a1[7];
    v11 = AMSError();
    v17 = v31;
    goto LABEL_10;
  }

  if (!v18)
  {
    v19 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = [a1[6] logKey];
    v23 = v8;
    v24 = v23;
    v25 = [a1[5] _jsonLogStringWithDictionary:v5];
    *buf = 138544130;
    v40 = v21;
    v41 = 2114;
    v42 = v22;
    v43 = 2048;
    v44 = v24;
    v45 = 2112;
    v46 = v25;
    _os_log_impl(&dword_1BB036000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Service call succeeded [%f] %@", buf, 0x2Au);
  }

  v26 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v26;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v32 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = [v33 dataUsingEncoding:4];

    if (v34)
    {
      v38 = 0;
      v35 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v34 options:0 error:&v38];
      v36 = v38;
      objc_opt_class();
      v11 = 0;
      if (objc_opt_isKindOfClass())
      {
        v11 = v35;
      }
    }

    else
    {
      v36 = 0;
      v11 = 0;
    }
  }

  v37 = [[AMSUIWebJSResponse alloc] initWithRequest:a1[6] duration:v8];
  [(AMSUIWebJSResponse *)v37 setBody:v11];
  [a1[7] finishWithResult:v37];

LABEL_35:
}

- (void)takeSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AMSUIWebView_takeSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7F26C28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [underlyingWebView takeSnapshotWithConfiguration:0 completionHandler:v7];
}

void __43__AMSUIWebView_takeSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  image = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E69DCAB8];
    v8 = UIImageJPEGRepresentation(image, 0.9);
    v9 = [*(a1 + 32) traitCollection];
    [v9 displayScale];
    v10 = [v7 imageWithData:v8 scale:?];

    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateUserScriptsWithScripts:(id)scripts
{
  scriptsCopy = scripts;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AMSUIWebView_updateUserScriptsWithScripts___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = scriptsCopy;
  v5 = scriptsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __45__AMSUIWebView_updateUserScriptsWithScripts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingWebView];
  v3 = [v2 configuration];
  v4 = [v3 userContentController];

  [*(a1 + 32) _addScriptsToContentController:v4 additionalScripts:*(a1 + 40)];
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if (os_variant_has_internal_content() && (([MEMORY[0x1E698C890] QAMode] & 1) != 0 || objc_msgSend(MEMORY[0x1E698C890], "ignoreServerTrustEvaluation")))
  {
    v7 = MEMORY[0x1E696AF30];
    protectionSpace = [challengeCopy protectionSpace];
    v9 = [v7 credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
    handlerCopy[2](handlerCopy, 0, v9);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  context = [(AMSUIWebView *)self context];
  logKey = [context logKey];
  v11 = AMSUIWebSetSubLogKey(logKey, 0);

  body = [messageCopy body];
  objc_opt_class();
  v13 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = body;
  }

  v14 = MEMORY[0x1E695E0F8];
  if (v13)
  {
    v14 = v13;
  }

  v15 = v14;

  v16 = [v15 objectForKeyedSubscript:@"command"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([v17 isEqualToString:@"pageDataServiceRegistered"])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v38 = objc_opt_class();
      v39 = 2114;
      v40 = v11;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] PageData service registered", buf, 0x16u);
    }

    [(AMSUIWebView *)self _finishedLoading];
  }

  else if ([v17 isEqualToString:@"run"])
  {
    v20 = [v15 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v33 = v21;
    v22 = [v21 dataUsingEncoding:4];
    v32 = v22;
    if (v22)
    {
      v36 = 0;
      v23 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v22 options:0 error:&v36];
      v24 = v36;
      objc_opt_class();
      v25 = 0;
      if (objc_opt_isKindOfClass())
      {
        v25 = v23;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    if (![v25 count] || v24)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        body2 = [messageCopy body];
        *buf = 138544130;
        v38 = v28;
        v39 = 2114;
        v40 = v11;
        v41 = 2112;
        v42 = body2;
        v30 = body2;
        v43 = 2114;
        v44 = v31;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode action. %@ %{public}@", buf, 0x2Au);
      }

      v24 = v31;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __75__AMSUIWebView_userContentController_didReceiveScriptMessage_replyHandler___block_invoke;
    v34[3] = &unk_1E7F26C50;
    v34[4] = self;
    v35 = handlerCopy;
    [(AMSUIWebView *)self _receiveJSObject:v25 logKey:v11 replyHandler:v34];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, @"AMS INTERNAL ERROR: Invalid Command");
  }
}

void __75__AMSUIWebView_userContentController_didReceiveScriptMessage_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v5])
    {
      v11 = 0;
      v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v11];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10, 0);
  }

  else
  {
    v8 = AMSUIWebJSError(a3);
    v9 = [*(a1 + 32) _jsonLogStringWithDictionary:v8];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  request = [action request];
  v9 = [request URL];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    *buf = 138543874;
    v21 = v12;
    v22 = 2114;
    v23 = logKey;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deciding navigation policy for: %{public}@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__AMSUIWebView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v17[3] = &unk_1E7F26C78;
  v17[4] = self;
  v18 = v9;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = v9;
  [(AMSUIWebView *)self _openURL:v16 completionHandler:v17];
}

void __72__AMSUIWebView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = [*(a1 + 32) context];
      v11 = [v10 logKey];
      v12 = *(a1 + 40);
      v24 = 138543874;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opened: %{public}@", &v24, 0x20u);
    }
  }

  else
  {
    if (v5)
    {
      v13 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v13)
      {
        v13 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = [*(a1 + 32) context];
        v17 = [v16 logKey];
        v18 = *(a1 + 40);
        v19 = AMSLogableError();
        v24 = 138544130;
        v25 = v15;
        v26 = 2114;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to open: %{public}@, error: %{public}@", &v24, 0x2Au);
      }
    }

    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = [*(a1 + 32) context];
      v22 = [v21 logKey];
      v23 = *(a1 + 40);
      v24 = 138543874;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      v28 = 2114;
      v29 = v23;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Redirecting to: %{public}@", &v24, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v13 = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did commit navigation", &v13, 0x16u);
  }

  context2 = [(AMSUIWebView *)self context];
  dataProvider = [context2 dataProvider];
  syncProperties = [dataProvider syncProperties];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish navigation", &v10, 0x16u);
  }
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did start provisional navigation", &v10, 0x16u);
  }
}

- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish same page nav", &v11, 0x16u);
  }
}

- (void)_webView:(id)view navigationDidFinishDocumentLoad:(id)load
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish doc load", &v10, 0x16u);
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  navigationCopy = navigation;
  errorCopy = error;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    _request = [navigationCopy _request];
    v15 = [_request URL];
    v17 = 138544130;
    v18 = v11;
    v19 = 2114;
    v20 = logKey;
    v21 = 2112;
    v22 = v15;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Did fail provisional navigation: %@. %{public}@", &v17, 0x2Au);
  }

  currentLoadPromise = [(AMSUIWebView *)self currentLoadPromise];
  [currentLoadPromise finishWithError:errorCopy];
}

- (void)_webView:(id)view navigation:(id)navigation didFailProvisionalLoadInSubframe:(id)subframe withError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  subframeCopy = subframe;
  errorCopy = error;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v15 = 138544130;
    v16 = v12;
    v17 = 2114;
    v18 = logKey;
    v19 = 2114;
    v20 = subframeCopy;
    v21 = 2114;
    v22 = errorCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load in frame: %{public}@ error: %{public}@", &v15, 0x2Au);
  }
}

- (void)_webView:(id)view didFailNavigation:(id)navigation withError:(id)error userInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = logKey;
    v17 = 2114;
    v18 = errorCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to navigation. %{public}@", &v13, 0x20u);
  }
}

- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([action blockedLoad])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      context = [(AMSUIWebView *)self context];
      logKey = [context logKey];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = logKey;
      v18 = 2112;
      v19 = lCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load UNTRUSTED resource: %@", &v14, 0x20u);
    }
  }
}

- (void)_setupRefreshControl
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCE58]);
  [v4 addTarget:self action:sel__refreshControlTriggered forControlEvents:4096];
  scrollView = [(WKWebView *)self->_underlyingWebView scrollView];
  [scrollView setRefreshControl:v4];
}

- (void)_tearDownRefreshControl
{
  scrollView = [(WKWebView *)self->_underlyingWebView scrollView];
  [scrollView setRefreshControl:0];
}

- (void)_refreshControlTriggered
{
  context = [(AMSUIWebView *)self context];
  logKey = [context logKey];
  v5 = AMSUIWebSetSubLogKey(logKey, 0);

  v6 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"PageRefresh" logKey:v5];
  context2 = [(AMSUIWebView *)self context];
  dataProvider = [context2 dataProvider];
  v9 = [dataProvider runJSRequest:v6];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__AMSUIWebView__refreshControlTriggered__block_invoke;
  v10[3] = &unk_1E7F26CA0;
  objc_copyWeak(&v11, &location);
  [v9 addFinishBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __40__AMSUIWebView__refreshControlTriggered__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained underlyingWebView];
  v2 = [v1 scrollView];
  v3 = [v2 refreshControl];
  [v3 endRefreshing];
}

- (void)_addScriptsToContentController:(id)controller additionalScripts:(id)scripts
{
  v71 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  scriptsCopy = scripts;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  baseScripts = [(AMSUIWebView *)self baseScripts];

  if (!baseScripts)
  {
    v37 = scriptsCopy;
    v39 = controllerCopy;
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v44 = [&unk_1F394ABD8 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v44)
    {
      v9 = *v57;
      v10 = 0x1E696A000uLL;
      v41 = *v57;
      selfCopy = self;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v57 != v9)
          {
            objc_enumerationMutation(&unk_1F394ABD8);
          }

          v12 = *(*(&v56 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [*(v10 + 2792) bundleForClass:objc_opt_class()];
          v15 = [v14 URLForResource:v12 withExtension:@"js"];

          v55 = 0;
          v16 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v15 encoding:4 error:&v55];
          v17 = v55;
          if (v17)
          {
            v45 = v16;
            v46 = v13;
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!mEMORY[0x1E698C968])
            {
              mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
            }

            oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
            {
              v20 = v10;
              v21 = objc_opt_class();
              context = [(AMSUIWebView *)self context];
              logKey = [context logKey];
              *buf = 138544130;
              v63 = v21;
              v10 = v20;
              v64 = 2114;
              v65 = logKey;
              v66 = 2114;
              v67 = v12;
              v68 = 2114;
              v69 = v17;
              _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load resource: %{public}@. %{public}@", buf, 0x2Au);

              v9 = v41;
              self = selfCopy;
            }

            v24 = v45;
            v13 = v46;
          }

          else
          {
            v24 = v16;
            mEMORY[0x1E698C968] = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v16 injectionTime:0 forMainFrameOnly:1];
            [v43 addObject:mEMORY[0x1E698C968]];
          }

          objc_autoreleasePoolPop(v13);
        }

        v44 = [&unk_1F394ABD8 countByEnumeratingWithState:&v56 objects:v70 count:16];
      }

      while (v44);
    }

    v25 = [v43 copy];
    [(AMSUIWebView *)self setBaseScripts:v25];

    scriptsCopy = v38;
    controllerCopy = v40;
  }

  [controllerCopy removeAllUserScripts];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  baseScripts2 = [(AMSUIWebView *)self baseScripts];
  v27 = [baseScripts2 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v52;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(baseScripts2);
        }

        [controllerCopy addUserScript:*(*(&v51 + 1) + 8 * j)];
      }

      v28 = [baseScripts2 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v28);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = scriptsCopy;
  v32 = [v31 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v48;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:*(*(&v47 + 1) + 8 * k) injectionTime:0 forMainFrameOnly:1];
        [controllerCopy addUserScript:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v33);
  }
}

- (void)_finishedLoading
{
  self->_contentLoaded = 1;
  currentLoadPromise = [(AMSUIWebView *)self currentLoadPromise];
  [currentLoadPromise finishWithSuccess];

  [(AMSUIWebView *)self setCurrentLoadPromise:0];
}

+ (id)_getSetCookiesForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = responseCopy;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = MEMORY[0x1E696AC58];
    allHeaderFields = [v4 allHeaderFields];
    v7 = [v4 URL];
    v8 = [v5 cookiesWithResponseHeaderFields:allHeaderFields forURL:v7];
    v9 = [v8 mutableCopy];

    allHeaderFields2 = [v4 allHeaderFields];
    v11 = [allHeaderFields2 objectForKey:*MEMORY[0x1E698C5B0]];

    if ([v11 length])
    {
      allHeaderFields3 = [v4 allHeaderFields];
      v13 = [allHeaderFields3 mutableCopy];

      [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x1E698C5A8]];
      v14 = MEMORY[0x1E696AC58];
      v15 = [v4 URL];
      v16 = [v14 cookiesWithResponseHeaderFields:v13 forURL:v15];
      [v9 addObjectsFromArray:v16];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)_jsonLogStringWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryCopy])
  {
    v4 = [dictionaryCopy mutableCopy];
    v5 = [v4 objectForKeyedSubscript:@"rawPassword"];
    if (v5)
    {
      v6 = @"****";
    }

    else
    {
      v6 = 0;
    }

    [v4 setObject:v6 forKeyedSubscript:@"rawPassword"];

    v7 = MEMORY[0x1E696ACB0];
    v8 = [v4 copy];
    v9 = [v7 dataWithJSONObject:v8 options:0 error:0];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionaryCopy = dictionaryCopy;
    }

    else
    {
      dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", dictionaryCopy];
    }

    v10 = dictionaryCopy;
  }

  return v10;
}

- (void)_openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"tel", @"telprompt", 0}];
  scheme = [lCopy scheme];
  v9 = [v7 containsObject:scheme];

  if (v9)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v16 = 0;
    v11 = [defaultWorkspace isApplicationAvailableToOpenURL:lCopy error:&v16];
    v12 = v16;

    if (v11)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__AMSUIWebView__openURL_completionHandler___block_invoke;
      v14[3] = &unk_1E7F258D8;
      v15 = handlerCopy;
      [mEMORY[0x1E69DC668] openURL:lCopy options:MEMORY[0x1E695E0F8] completionHandler:v14];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v12);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)_parseRequestError:(id)error logKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  keyCopy = key;
  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WKJavaScriptExceptionMessage"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 dataUsingEncoding:4];
  if (!v10)
  {
    v15 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v25 = 0;
  v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:&v25];
  v12 = v25;
  if (!v11)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v13 = [v11 objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v16 = [v11 objectForKeyedSubscript:@"userInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
LABEL_15:
    if (v9)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x1E6985438]])
      {
        code = [errorCopy code];

        if (code == 4)
        {
          v19 = v9;
LABEL_21:
          v14 = v19;
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v19 = [errorCopy description];
    goto LABEL_21;
  }

LABEL_22:
  if (v12)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      *buf = 138543874;
      v27 = v22;
      v28 = 2114;
      v29 = keyCopy;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] JS error does not contain an object: %{public}@", buf, 0x20u);
    }
  }

  v23 = AMSCustomError();

  return v23;
}

- (id)_prepareWithURL:(id)l loadBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v9 = MEMORY[0x1E696AEC0];
  host = [lCopy host];
  v11 = [v9 stringWithFormat:@"AMS %@", host];
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  [underlyingWebView _setRemoteInspectionNameOverride:v11];

  contentRulesPromise = [(AMSUIWebView *)self contentRulesPromise];

  if (!contentRulesPromise)
  {
    underlyingWebView2 = [(AMSUIWebView *)self underlyingWebView];
    context = [(AMSUIWebView *)self context];
    v16 = [(AMSUIWebView *)self _setupContentRulesForWebView:underlyingWebView2 context:context];
    [(AMSUIWebView *)self setContentRulesPromise:v16];
  }

  objc_initWeak(&location, self);
  contentRulesPromise2 = [(AMSUIWebView *)self contentRulesPromise];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke;
  v23[3] = &unk_1E7F26CC8;
  objc_copyWeak(&v26, &location);
  v18 = v8;
  v24 = v18;
  v19 = blockCopy;
  v25 = v19;
  [contentRulesPromise2 addFinishBlock:v23];

  v20 = v25;
  v21 = v18;

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v21;
}

void __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (v4)
  {
    [a1[4] finishWithError:v4];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke_2;
    block[3] = &unk_1E7F25C40;
    block[4] = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentLoadPromise:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_receiveJSObject:(id)object logKey:(id)key replyHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  handlerCopy = handler;
  v11 = AMSSetLogKey();
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [objectCopy objectForKeyedSubscript:@"actionClass"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v30 = v14;
  v15 = [v14 isEqualToString:@"AMSLogAction"];
  if ((v15 & 1) == 0)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [(AMSUIWebView *)self _jsonLogStringWithDictionary:objectCopy];
      *buf = 138544130;
      v38 = v18;
      v39 = 2114;
      v40 = keyCopy;
      v41 = 2114;
      v42 = v30;
      v43 = 2112;
      v44 = v19;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Receiving action: [%{public}@] %@", buf, 0x2Au);
    }
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke;
  aBlock[3] = &unk_1E7F26D18;
  v20 = handlerCopy;
  v34 = v20;
  objc_copyWeak(&v35, buf);
  v21 = keyCopy;
  v32 = v21;
  v22 = v12;
  v33 = v22;
  v36 = v15;
  v23 = _Block_copy(aBlock);
  if (objectCopy)
  {
    context = [(AMSUIWebView *)self context];
    v25 = context == 0;

    if (v25)
    {
      v27 = AMSError();
      v23[2](v23, 0, v27);
    }

    else
    {
      context2 = [(AMSUIWebView *)self context];
      v27 = [AMSUIWebActionMapper actionFromJSObject:objectCopy context:context2];

      if (v27)
      {
        runAction = [v27 runAction];
        [runAction addFinishBlock:v23];
      }

      else
      {
        runAction = AMSError();
        v23[2](v23, 0, runAction);
      }
    }

    v29 = 0;
  }

  else
  {
    v29 = AMSError();
    v23[2](v23, 0, v29);
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
}

void __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke_2;
  block[3] = &unk_1E7F26CF0;
  v14 = *(a1 + 48);
  objc_copyWeak(&v15, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v6;
  v16 = *(a1 + 64);
  v13 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
}

void __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (WeakRetained)
    {
      [*(a1 + 40) timeIntervalSinceNow];
      if (v3 >= 0.0)
      {
        v4 = v3;
      }

      else
      {
        v4 = -v3;
      }

      if (*(a1 + 48))
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!v5)
          {
            v5 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v6 = [v5 OSLogObject];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = objc_opt_class();
            v8 = *(a1 + 32);
            v9 = v4;
            v10 = *(a1 + 48);
            v23 = 138544130;
            v24 = v7;
            v25 = 2114;
            v26 = v8;
            v27 = 2048;
            v28 = v9;
            v29 = 2114;
            v30 = v10;
            _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Action failed. [%f] %{public}@", &v23, 0x2Au);
          }
        }

        v11 = *(*(a1 + 64) + 16);
      }

      else
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!v16)
          {
            v16 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v17 = [v16 OSLogObject];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_opt_class();
            v19 = *(a1 + 32);
            v20 = v4;
            v21 = v20;
            v22 = [WeakRetained _jsonLogStringWithDictionary:*(a1 + 56)];
            v23 = 138544130;
            v24 = v18;
            v25 = 2114;
            v26 = v19;
            v27 = 2048;
            v28 = v21;
            v29 = 2112;
            v30 = v22;
            _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action succeeded. [%f] Result: %@", &v23, 0x2Au);
          }
        }

        v11 = *(*(a1 + 64) + 16);
      }

      v11();
    }

    else
    {
      v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v12)
      {
        v12 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = *(a1 + 32);
        v23 = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Self has vanished", &v23, 0x16u);
      }
    }
  }
}

- (id)_setupContentRulesForWebView:(id)view context:(id)context
{
  viewCopy = view;
  contextCopy = context;
  context = [(AMSUIWebView *)self context];
  disableTrustedDomains = [context disableTrustedDomains];

  if (disableTrustedDomains)
  {
    promiseWithSuccess = [MEMORY[0x1E698C7F0] promiseWithSuccess];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    v12 = [contextCopy bag];
    v13 = [v12 arrayForKey:@"trustedDomains"];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke;
    v17[3] = &unk_1E7F26D68;
    v17[4] = self;
    v14 = v11;
    v18 = v14;
    v19 = viewCopy;
    [v13 valueWithCompletion:v17];
    v15 = v19;
    promiseWithSuccess = v14;
  }

  return promiseWithSuccess;
}

void __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543874;
      v62 = v10;
      v63 = 2114;
      v64 = v11;
      v65 = 2114;
      v66 = v7;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch trusted domains. %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v7];
  }

  else
  {
    v43 = a1;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v6;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v52;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v51 + 1) + 8 * i);
          v19 = v18;
          if ([v18 hasPrefix:@"."])
          {
            v19 = [v18 stringByReplacingCharactersInRange:0 withString:{1, @"*"}];
          }

          if ([v18 hasPrefix:@"*."])
          {
            v20 = [v19 stringByReplacingCharactersInRange:0 withString:{2, @"*"}];

            v19 = v20;
          }

          [v12 addObject:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v15);
    }

    v56[1] = v12;
    v57[0] = @"trigger";
    v55[0] = @"url-filter";
    v55[1] = @"unless-domain";
    v56[0] = @".*";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v57[1] = @"action";
    v58[0] = v21;
    v58[1] = &unk_1F394AA80;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v59 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];

    v50 = 0;
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v23 options:0 error:&v50];
    v25 = v50;
    if (v25)
    {
      v26 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v26)
      {
        v26 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v27 = [v26 OSLogObject];
      v7 = 0;
      v6 = v42;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        *buf = 138543874;
        v62 = v28;
        v63 = 2114;
        v64 = v29;
        v65 = 2114;
        v66 = v25;
        _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode content rules. %{public}@", buf, 0x20u);
      }

      [*(v43 + 40) finishWithError:v25];
    }

    else
    {
      if (v24 && (v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v24 encoding:4]) != 0)
      {
        v31 = v30;
        v32 = [MEMORY[0x1E696AFB0] UUID];
        v33 = [v32 UUIDString];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_193;
        block[3] = &unk_1E7F25638;
        v45 = v33;
        v46 = v31;
        v34 = *(v43 + 40);
        v47 = *(v43 + 32);
        v48 = v34;
        v49 = *(v43 + 48);
        v35 = v31;
        v36 = v33;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        v6 = v42;
      }

      else
      {
        v37 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        v6 = v42;
        if (!v37)
        {
          v37 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v38 = [v37 OSLogObject];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = AMSLogKey();
          *buf = 138543618;
          v62 = v39;
          v63 = 2114;
          v64 = v40;
          _os_log_impl(&dword_1BB036000, v38, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode content rules into JSON. (nil)", buf, 0x16u);
        }

        v41 = *(v43 + 40);
        v35 = AMSError();
        [v41 finishWithError:v35];
      }

      v7 = 0;
    }
  }
}

void __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_193(uint64_t a1)
{
  v2 = [MEMORY[0x1E6985310] defaultStore];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_2;
  v6[3] = &unk_1E7F26D40;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 48);
  v7 = v5;
  v8 = *(a1 + 64);
  [v2 compileContentRuleListForIdentifier:v3 encodedContentRuleList:v4 completionHandler:v6];
}

void __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v6 = AMSError();
  }

  if (v6)
  {
    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to compile content rules. %{public}@", &v15, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (v5)
    {
      v11 = [*(a1 + 48) configuration];
      v12 = [v11 userContentController];
      [v12 addContentRuleList:v5];
    }

    else
    {
      v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v11)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v15 = 138543618;
        v16 = v13;
        v17 = 2114;
        v18 = v14;
        _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] WARNING: No contentRuleList", &v15, 0x16u);
      }
    }

    [*(a1 + 40) finishWithSuccess];
  }
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end