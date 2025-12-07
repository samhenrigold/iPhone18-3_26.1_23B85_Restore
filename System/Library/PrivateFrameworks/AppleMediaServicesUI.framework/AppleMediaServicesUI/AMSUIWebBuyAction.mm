@interface AMSUIWebBuyAction
- (AMSUIWebBuyAction)initWithJSObject:(id)object context:(id)context;
- (id)_iTunesAccount;
- (id)_runBuy;
- (id)_runBuyWithContentType:(id)type;
- (id)_runLegacyBuy;
- (id)configurePurchaseWithBuyParams:(id)params isUserInitiated:(BOOL)initiated clientInfo:(id)info requiresAccount:(BOOL)account additionalHeaders:(id)headers sendBlindedData:(id)data metricsOverlay:(id)overlay performanceMetricsOverlay:(id)self0;
- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error;
- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error;
- (id)purchaseContentWithType:(id)type;
- (id)runAction;
- (void)_makeCurrentAccountIfNeeded:(id)needed;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleSceneBundleIdentifierRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIWebBuyAction

- (AMSUIWebBuyAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v44.receiver = self;
  v44.super_class = AMSUIWebBuyAction;
  v7 = [(AMSUIWebAction *)&v44 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"type"];
    if (objc_opt_respondsToSelector())
    {
      v7->_type = [v8 integerValue];
    }

    v9 = [objectCopy objectForKeyedSubscript:@"legacyBuy"];
    if (objc_opt_respondsToSelector())
    {
      v10 = [objectCopy objectForKeyedSubscript:@"legacyBuy"];
      v7->_legacyBuy = [v10 BOOLValue];
    }

    else
    {
      v7->_legacyBuy = 0;
    }

    v11 = [objectCopy objectForKeyedSubscript:@"buyParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    buyParams = v7->_buyParams;
    v7->_buyParams = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"contentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    contentType = v7->_contentType;
    v7->_contentType = v15;

    v17 = [objectCopy objectForKeyedSubscript:@"requiresAccount"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v17 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v7->_requiresAccount = bOOLValue;
    v19 = [objectCopy objectForKeyedSubscript:@"metricsOverlay"];
    v20 = 0x1E695D000;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    metricsOverlay = v7->_metricsOverlay;
    v7->_metricsOverlay = v21;

    v23 = [objectCopy objectForKeyedSubscript:@"performanceMetricsOverlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    performanceMetricsOverlay = v7->_performanceMetricsOverlay;
    v7->_performanceMetricsOverlay = v24;

    v26 = [objectCopy objectForKeyedSubscript:@"makeCurrentAccount"];
    if (objc_opt_respondsToSelector())
    {
      v27 = [objectCopy objectForKeyedSubscript:@"makeCurrentAccount"];
      v7->_makeCurrentAccount = [v27 BOOLValue];
    }

    else
    {
      v7->_makeCurrentAccount = 0;
    }

    v28 = [objectCopy objectForKeyedSubscript:@"sendBlindedData"];

    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x1E698C810]);
      v30 = [objectCopy objectForKeyedSubscript:@"sendBlindedData"];
      v31 = objc_opt_respondsToSelector();
      if (v31)
      {
        v20 = [objectCopy objectForKeyedSubscript:@"sendBlindedData"];
        bOOLValue2 = [v20 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      v33 = [v29 initWithBool:bOOLValue2];
      sendBlindedData = v7->_sendBlindedData;
      v7->_sendBlindedData = v33;

      if (v31)
      {
      }
    }

    context = [(AMSUIWebAction *)v7 context];
    v36 = [objectCopy objectForKeyedSubscript:@"account"];
    v37 = [context iTunesAccountFromJSAccount:v36];
    account = v7->_account;
    v7->_account = v37;

    if (!v7->_account)
    {
      context2 = [(AMSUIWebAction *)v7 context];
      v40 = [objectCopy objectForKeyedSubscript:@"dsid"];
      v41 = [context2 iTunesAccountFromJSDSID:v40];
      v42 = v7->_account;
      v7->_account = v41;
    }
  }

  return v7;
}

- (id)runAction
{
  v26 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AMSUIWebBuyAction;
  runAction = [(AMSUIWebAction *)&v17 runAction];
  buyParams = [(AMSUIWebBuyAction *)self buyParams];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    account = [(AMSUIWebBuyAction *)self account];
    v10 = AMSHashIfNeeded();
    *buf = 138544130;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    v24 = 2112;
    v25 = buyParams;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running purchase with account: %{public}@ buyParameters: %@", buf, 0x2Au);
  }

  if (buyParams)
  {
    if (![(AMSUIWebBuyAction *)self legacyBuy]|| ([(AMSUIWebBuyAction *)self _runLegacyBuy], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      contentType = [(AMSUIWebBuyAction *)self contentType];
      if (contentType)
      {
        [(AMSUIWebBuyAction *)self _runBuyWithContentType:contentType];
      }

      else
      {
        [(AMSUIWebBuyAction *)self _runBuy];
      }
      v11 = ;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __30__AMSUIWebBuyAction_runAction__block_invoke;
    v16[3] = &unk_1E7F24B78;
    v16[4] = self;
    [v11 addFinishBlock:v16];
  }

  else
  {
    v13 = MEMORY[0x1E698CAD0];
    v14 = AMSError();
    v11 = [v13 promiseWithError:v14];
  }

  return v11;
}

void __30__AMSUIWebBuyAction_runAction__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v12 = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished purchase", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) context];
  v7 = [v6 signatureResumption];

  if (v7)
  {
    v8 = [*(a1 + 32) context];
    v9 = [v8 additionalHeaders];
    v10 = [v9 mutableCopy];

    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5E0]];
    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5B8]];
    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5C0]];
    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5D0]];
    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5C8]];
    [v10 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5D8]];
    v11 = [*(a1 + 32) context];
    [v11 setAdditionalHeaders:v10];
  }
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(AMSUIWebAction *)self context];
  actionDelegate = [context actionDelegate];
  v11 = [actionDelegate action:self pauseTimeouts:1 handleAuthenticateRequest:requestCopy];

  [v11 addFinishBlock:completionCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__AMSUIWebBuyAction_purchase_handleAuthenticateRequest_completion___block_invoke;
  v12[3] = &unk_1E7F25C18;
  v12[4] = self;
  [v11 addSuccessBlock:v12];
}

void __67__AMSUIWebBuyAction_purchase_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 account];
  [v2 _makeCurrentAccountIfNeeded:v3];
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(AMSUIWebAction *)self context];
  actionDelegate = [context actionDelegate];
  v11 = [actionDelegate action:self pauseTimeouts:1 handleDialogRequest:requestCopy];

  [v11 addFinishBlock:completionCopy];
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AMSUIWebBuyAction_purchase_handleEngagementRequest_completion___block_invoke;
  block[3] = &unk_1E7F25C40;
  v12 = requestCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__AMSUIWebBuyAction_purchase_handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [AMSUIEngagementTask alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) context];
  v5 = [v4 bag];
  v6 = [*(a1 + 40) context];
  v7 = [v6 flowController];
  v8 = [v7 currentContainer];
  v10 = [(AMSUIEngagementTask *)v2 initWithRequest:v3 bag:v5 presentingViewController:v8];

  v9 = [(AMSUIEngagementTask *)v10 presentEngagement];
  [v9 addFinishBlock:*(a1 + 48)];
}

- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error
{
  v6 = [(AMSUIWebAction *)self context:purchase];
  flowController = [v6 flowController];
  currentContainer = [flowController currentContainer];
  view = [currentContainer view];
  window = [view window];

  if (error && !window)
  {
    *error = AMSError();
  }

  return window;
}

- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error
{
  v6 = [(AMSUIWebAction *)self presentingSceneIdentifier:purchase];
  v7 = v6;
  if (error && !v6)
  {
    *error = AMSError();
  }

  return v7;
}

- (void)purchase:(id)purchase handleSceneBundleIdentifierRequest:(id)request completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(AMSUIWebAction *)self context];
  clientInfo = [context clientInfo];
  proxyAppBundleID = [clientInfo proxyAppBundleID];

  if (proxyAppBundleID)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v13 = AMSLogKey();
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v29 = a2;
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  context = [(AMSUIWebAction *)self context];
  clientInfo2 = [context clientInfo];
  proxyAppBundleID = [clientInfo2 bundleIdentifier];

  if (!proxyAppBundleID)
  {
    goto LABEL_18;
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = AMSLogKey();
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v29 = a2;
    if (v13)
    {
LABEL_12:
      v17 = AMSLogKey();
      v28 = NSStringFromSelector(a2);
      [v14 stringWithFormat:@"%@: [%@] %@ ", v15, v17, v28];
      v18 = LABEL_14:;
      context = AMSHashIfNeeded();
      v19 = AMSHashIfNeeded();
      *buf = 138543874;
      v31 = v18;
      v32 = 2114;
      v33 = context;
      v34 = 2114;
      v35 = v19;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Found scene identifier %{public}@ in %{public}@", buf, 0x20u);
      if (v13)
      {

        v18 = v28;
      }

      a2 = v29;
      goto LABEL_17;
    }

LABEL_13:
    v17 = NSStringFromSelector(a2);
    [v14 stringWithFormat:@"%@: %@ ", v15, v17];
    goto LABEL_14;
  }

LABEL_17:

LABEL_18:
  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = AMSLogKey();
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    if (v22)
    {
      v25 = AMSLogKey();
      context = NSStringFromSelector(a2);
      [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, context];
    }

    else
    {
      v25 = NSStringFromSelector(a2);
      [v23 stringWithFormat:@"%@: %@ ", v24, v25];
    }
    v26 = ;
    v27 = AMSHashIfNeeded();
    *buf = 138543618;
    v31 = v26;
    v32 = 2114;
    v33 = v27;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Using bundle identifier: %{public}@", buf, 0x16u);
    if (v22)
    {

      v26 = context;
    }
  }

  completionCopy[2](completionCopy, proxyAppBundleID, 0);
}

- (id)_iTunesAccount
{
  account = [(AMSUIWebBuyAction *)self account];
  if (([account ams_isiTunesAccount] & 1) == 0)
  {
    v4 = MEMORY[0x1E6959A48];
    context = [(AMSUIWebAction *)self context];
    clientInfo = [context clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    v8 = [v4 ams_sharedAccountStoreForMediaType:accountMediaType];

    v9 = [v8 ams_iTunesAccountForAccount:account];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = account;
    }

    v12 = v11;

    account = v12;
  }

  return account;
}

- (void)_makeCurrentAccountIfNeeded:(id)needed
{
  neededCopy = needed;
  if (-[AMSUIWebBuyAction makeCurrentAccount](self, "makeCurrentAccount") || (-[AMSUIWebAction context](self, "context"), v4 = objc_claimAutoreleasedReturnValue(), [v4 account], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(neededCopy, "web_matchAccount:", v5), v5, v4, v6))
  {
    context = [(AMSUIWebAction *)self context];
    context2 = [(AMSUIWebAction *)self context];
    clientInfo = [context2 clientInfo];
    [context replaceCurrentAccount:neededCopy clientInfo:clientInfo];
  }
}

- (id)purchaseContentWithType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:AMSUIWebPluginPurchaseContentTypeApp])
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v5 = getASDPurchaseClass_softClass;
    v39 = getASDPurchaseClass_softClass;
    if (!getASDPurchaseClass_softClass)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __getASDPurchaseClass_block_invoke;
      v35[3] = &unk_1E7F241B0;
      v35[4] = &v36;
      __getASDPurchaseClass_block_invoke(v35);
      v5 = v37[3];
    }

    v6 = v5;
    _Block_object_dispose(&v36, 8);
    v7 = objc_alloc_init(v5);
    v8 = objc_alloc(MEMORY[0x1E698C818]);
    buyParams = [(AMSUIWebBuyAction *)self buyParams];
    v10 = [v8 initWithString:buyParams];

    account = [(AMSUIWebBuyAction *)self account];
    ams_DSID = [account ams_DSID];
    [v7 setAccountIdentifier:ams_DSID];

    stringValue = [v10 stringValue];
    [v7 setBuyParameters:stringValue];

    v14 = MEMORY[0x1E696AD98];
    v15 = [v10 parameterForKey:*MEMORY[0x1E698C530]];
    v16 = [v14 numberWithLongLong:{objc_msgSend(v15, "longLongValue")}];
    [v7 setItemID:v16];

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    presentingSceneIdentifierPromise = [(AMSUIWebAction *)self presentingSceneIdentifierPromise];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke;
    v33[3] = &unk_1E7F25C68;
    v33[4] = self;
    v19 = v7;
    v34 = v19;
    v20 = [presentingSceneIdentifierPromise continueWithBinaryPromiseBlock:v33];

    [v17 addObject:v20];
    presentingSceneBundleIdentifierPromise = [(AMSUIWebAction *)self presentingSceneBundleIdentifierPromise];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_90;
    v31[3] = &unk_1E7F25C68;
    v31[4] = self;
    v22 = v19;
    v32 = v22;
    v23 = [presentingSceneBundleIdentifierPromise continueWithBinaryPromiseBlock:v31];

    [v17 addObject:v23];
    v24 = [MEMORY[0x1E698C7F0] promiseWithAll:v17];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_91;
    v29[3] = &unk_1E7F25CB0;
    v30 = v22;
    v25 = v22;
    v26 = [v24 continueWithPromiseBlock:v29];
  }

  else
  {
    v27 = MEMORY[0x1E698CAD0];
    v10 = AMSError();
    v26 = [v27 promiseWithError:v10];
  }

  return v26;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@Getting presenting scene identifier failed. Error: %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }
  }

  v15 = [v6 value];
  [*(a1 + 40) setPresentingSceneIdentifier:v15];

  v16 = [MEMORY[0x1E698C7F0] promiseWithSuccess];

  return v16;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@Getting presenting scene bundle id identifier failed. Error: %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }
  }

  v15 = [v6 value];
  [*(a1 + 40) setPresentingSceneBundleIdentifier:v15];

  v16 = [MEMORY[0x1E698C7F0] promiseWithSuccess];

  return v16;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_91(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v6 = getASDPurchaseManagerClass_softClass;
  v17 = getASDPurchaseManagerClass_softClass;
  if (!getASDPurchaseManagerClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getASDPurchaseManagerClass_block_invoke;
    v13[3] = &unk_1E7F241B0;
    v13[4] = &v14;
    __getASDPurchaseManagerClass_block_invoke(v13);
    v6 = v15[3];
  }

  v7 = v6;
  _Block_object_dispose(&v14, 8);
  v8 = [v6 sharedManager];
  v9 = *(a1 + 32);
  v10 = [v5 completionHandlerAdapter];
  [v8 processPurchase:v9 withResponseHandler:v10];

  v11 = [v5 continueWithBlock:&__block_literal_global_19];

  return v11;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 items];
  v6 = [v5 firstObject];

  if (v4)
  {
    v7 = v4;
LABEL_4:
    v8 = v7;
    v9 = [MEMORY[0x1E698CAD0] promiseWithError:v7];

    goto LABEL_5;
  }

  v7 = [v6 error];
  if (v7)
  {
    goto LABEL_4;
  }

  if (([v6 success] & 1) == 0)
  {
    v7 = AMSError();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v9 = [MEMORY[0x1E698CAD0] promiseWithResult:&unk_1F394A968];
LABEL_5:

  return v9;
}

- (id)configurePurchaseWithBuyParams:(id)params isUserInitiated:(BOOL)initiated clientInfo:(id)info requiresAccount:(BOOL)account additionalHeaders:(id)headers sendBlindedData:(id)data metricsOverlay:(id)overlay performanceMetricsOverlay:(id)self0
{
  accountCopy = account;
  initiatedCopy = initiated;
  dataCopy = data;
  overlayCopy = overlay;
  metricsOverlayCopy = metricsOverlay;
  v18 = MEMORY[0x1E698CAE0];
  headersCopy = headers;
  infoCopy = info;
  paramsCopy = params;
  v22 = [[v18 alloc] initWithPurchaseType:-[AMSUIWebBuyAction type](self buyParams:{"type"), paramsCopy}];

  _iTunesAccount = [(AMSUIWebBuyAction *)self _iTunesAccount];
  [v22 setAccount:_iTunesAccount];

  [v22 setUserInitiated:initiatedCopy];
  [v22 setClientInfo:infoCopy];

  [v22 setRequiresAccount:accountCopy];
  [v22 setAdditionalHeaders:headersCopy];

  v24 = AMSLogKey();
  [v22 setLogUUID:v24];

  if (dataCopy)
  {
    [v22 setSendBlindedData:{objc_msgSend(dataCopy, "value")}];
  }

  metricsOverlay = [(AMSUIWebBuyAction *)self metricsOverlay];
  v26 = [metricsOverlay mutableCopy];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v29 = v28;

  if (overlayCopy)
  {
    [v29 addEntriesFromDictionary:overlayCopy];
  }

  [v22 setMetricsOverlay:v29];
  performanceMetricsOverlay = [(AMSUIWebBuyAction *)self performanceMetricsOverlay];
  v31 = [performanceMetricsOverlay mutableCopy];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v34 = v33;

  if (metricsOverlayCopy)
  {
    [v34 addEntriesFromDictionary:metricsOverlayCopy];
  }

  [v22 setPerformanceMetricsOverlay:v34];

  return v22;
}

- (id)_runBuy
{
  v36 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v33 = v5;
    v34 = 2114;
    v35 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting buy", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x1E698C818]);
  buyParams = [(AMSUIWebBuyAction *)self buyParams];
  v26 = [v7 initWithString:buyParams];
  context = [(AMSUIWebAction *)self context];
  clientInfo = [context clientInfo];
  requiresAccount = [(AMSUIWebBuyAction *)self requiresAccount];
  context2 = [(AMSUIWebAction *)self context];
  additionalHeaders = [context2 additionalHeaders];
  sendBlindedData = [(AMSUIWebBuyAction *)self sendBlindedData];
  context3 = [(AMSUIWebAction *)self context];
  metricsOverlay = [context3 metricsOverlay];
  context4 = [(AMSUIWebAction *)self context];
  performanceMetricsOverlay = [context4 performanceMetricsOverlay];
  v17 = [(AMSUIWebBuyAction *)self configurePurchaseWithBuyParams:v26 isUserInitiated:1 clientInfo:clientInfo requiresAccount:requiresAccount additionalHeaders:additionalHeaders sendBlindedData:sendBlindedData metricsOverlay:metricsOverlay performanceMetricsOverlay:performanceMetricsOverlay];

  v18 = [AMSUIPurchaseTask alloc];
  context5 = [(AMSUIWebAction *)self context];
  v20 = [context5 bag];
  v21 = [(AMSPurchaseTask *)v18 initWithPurchase:v17 bag:v20];

  [(AMSPurchaseTask *)v21 setDelegate:self];
  performPurchase = [(AMSPurchaseTask *)v21 performPurchase];
  objc_initWeak(buf, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __28__AMSUIWebBuyAction__runBuy__block_invoke;
  v29[3] = &unk_1E7F25CD8;
  objc_copyWeak(&v31, buf);
  v23 = v17;
  v30 = v23;
  [performPurchase addFinishBlock:v29];
  v24 = [performPurchase thenWithBlock:&__block_literal_global_113];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  return v24;
}

void __28__AMSUIWebBuyAction__runBuy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = *(a1 + 32);
  v13 = @"purchase";
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v5 ams_errorByAddingUserInfo:v9];

  v11 = [WeakRetained context];
  v12 = [v11 actionDelegate];
  [v12 actionDidFinishPurchaseWithResult:v6 error:v10];
}

id __28__AMSUIWebBuyAction__runBuy__block_invoke_2(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  [v4 postNotificationName:@"AMSPurchaseFinishedNotification" object:0];

  v12[0] = @"success";
  v12[1] = @"responseData";
  v13[0] = @"true";
  v5 = [v3 responseDictionary];

  v6 = [v5 ams_sanitizeServerObject];
  v7 = v6;
  v8 = &stru_1F3921360;
  if (v6)
  {
    v8 = v6;
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [MEMORY[0x1E698CAD0] promiseWithResult:v9];

  return v10;
}

- (id)_runBuyWithContentType:(id)type
{
  v32 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = AMSLogKey();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = objc_opt_class();
    v28 = 2114;
    v29 = v5;
    v30 = 2114;
    v31 = typeCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Purchasing content with type: %{public}@", buf, 0x20u);
  }

  v8 = [(AMSUIWebBuyAction *)self _purchasePluginIdentifierForContentType:typeCopy];
  if (!v8)
  {
    v17 = [(AMSUIWebBuyAction *)self purchaseContentWithType:typeCopy];
    goto LABEL_18;
  }

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = v5;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading plugin: %{public}@", buf, 0x20u);
  }

  context = [(AMSUIWebAction *)self context];
  pluginLoader = [context pluginLoader];
  v14 = [pluginLoader pluginForBundleIdentifier:v8];

  if (!v14)
  {
    v18 = MEMORY[0x1E698CAD0];
LABEL_16:
    buyParams = AMSError();
    v16 = [v18 promiseWithError:buyParams];
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = MEMORY[0x1E698CAD0];
    goto LABEL_16;
  }

  buyParams = [(AMSUIWebBuyAction *)self buyParams];
  v16 = [v14 purchaseContentWithType:typeCopy buyParams:buyParams];
LABEL_17:
  v17 = v16;

LABEL_18:
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke;
  v24[3] = &unk_1E7F25D20;
  v24[4] = self;
  v19 = v5;
  v25 = v19;
  [v17 addSuccessBlock:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke_133;
  v22[3] = &unk_1E7F24990;
  v22[4] = self;
  v23 = v19;
  v20 = v19;
  [v17 addErrorBlock:v22];

  return v17;
}

void __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Purchase finished", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"AMSPurchaseFinishedNotification" object:0];
}

void __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke_133(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Purchase failed: %{public}@", &v8, 0x20u);
  }
}

- (id)_runLegacyBuy
{
  v11[2] = *MEMORY[0x1E69E9840];
  presentingSceneIdentifierPromise = [(AMSUIWebAction *)self presentingSceneIdentifierPromise];
  presentingSceneBundleIdentifierPromise = [(AMSUIWebAction *)self presentingSceneBundleIdentifierPromise];
  v5 = MEMORY[0x1E698CAD0];
  v11[0] = presentingSceneIdentifierPromise;
  v11[1] = presentingSceneBundleIdentifierPromise;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v5 promiseWithAll:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke;
  v10[3] = &unk_1E7F25D98;
  v10[4] = self;
  v8 = [v7 thenWithBlock:v10];

  return v8;
}

id __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke(uint64_t a1, void *a2)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v2 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting legacy buy", &buf, 0xCu);
    if (v8)
    {

      v12 = v2;
    }
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2050000000;
  v13 = getSSPurchaseClass_softClass;
  v54 = getSSPurchaseClass_softClass;
  if (!getSSPurchaseClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v56 = __getSSPurchaseClass_block_invoke;
    v57 = &unk_1E7F241B0;
    v58 = &v51;
    __getSSPurchaseClass_block_invoke(&buf);
    v13 = v52[3];
  }

  v14 = v13;
  _Block_object_dispose(&v51, 8);
  v15 = objc_alloc_init(v13);
  v16 = [*(a1 + 32) buyParams];
  [v15 setBuyParameters:v16];

  v17 = [*(a1 + 32) account];
  v18 = [v17 ams_DSID];
  [v15 setAccountIdentifier:v18];

  v19 = [v4 objectAtIndexedSubscript:0];
  v20 = [v19 value];
  [v15 setPresentingSceneIdentifier:v20];

  v21 = [v4 objectAtIndexedSubscript:1];
  v22 = [v21 value];
  [v15 setPresentingSceneBundleIdentifier:v22];

  v23 = [*(a1 + 32) context];
  v24 = [v23 additionalHeaders];
  [v15 setTidHeaders:v24];

  v25 = [*(a1 + 32) account];
  LODWORD(v24) = [v25 ams_isSandboxAccount];

  if (v24)
  {
    v26 = [v15 requestProperties];
    v27 = [v26 mutableCopy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x2050000000;
      v30 = getSSMutableURLRequestPropertiesClass_softClass;
      v54 = getSSMutableURLRequestPropertiesClass_softClass;
      if (!getSSMutableURLRequestPropertiesClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v56 = __getSSMutableURLRequestPropertiesClass_block_invoke;
        v57 = &unk_1E7F241B0;
        v58 = &v51;
        __getSSMutableURLRequestPropertiesClass_block_invoke(&buf);
        v30 = v52[3];
      }

      v31 = v30;
      _Block_object_dispose(&v51, 8);
      v29 = objc_alloc_init(v30);
    }

    v32 = v29;

    [v32 setURLBagType:1];
    [v15 setRequestProperties:v32];
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2050000000;
  v33 = getSSPurchaseRequestClass_softClass;
  v54 = getSSPurchaseRequestClass_softClass;
  if (!getSSPurchaseRequestClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v56 = __getSSPurchaseRequestClass_block_invoke;
    v57 = &unk_1E7F241B0;
    v58 = &v51;
    __getSSPurchaseRequestClass_block_invoke(&buf);
    v33 = v52[3];
  }

  v34 = v33;
  _Block_object_dispose(&v51, 8);
  v35 = [v33 alloc];
  v60[0] = v15;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v37 = [v35 initWithPurchases:v36];

  [v37 setBackgroundRequest:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__4;
  v58 = __Block_byref_object_dispose__4;
  v59 = 0;
  v38 = AMSLogKey();
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke_136;
  v50[3] = &unk_1E7F25D48;
  v50[4] = &buf;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke_2;
  v45[3] = &unk_1E7F25D70;
  v39 = v38;
  p_buf = &buf;
  v40 = *(a1 + 32);
  v46 = v39;
  v47 = v40;
  v41 = v5;
  v48 = v41;
  [v37 startWithPurchaseResponseBlock:v50 completionBlock:v45];
  v42 = v48;
  v43 = v41;

  _Block_object_dispose(&buf, 8);

  return v43;
}

void __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke_2(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKey();
  if (v3)
  {
LABEL_4:
    v6 = [v3 domain];
    if ([v6 isEqualToString:@"SSErrorDomain"])
    {
      v7 = [v3 code];

      if (v7 != 134)
      {
LABEL_8:
        v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v8)
        {
          v8 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v9 = [v8 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = *(a1 + 32);
          *buf = 138543874;
          v43 = v10;
          v44 = 2114;
          v45 = v11;
          v46 = 2114;
          v47 = v3;
          _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Legacy purchase failed: %{public}@", buf, 0x20u);
        }

        [*(a1 + 48) finishWithError:v3];
        goto LABEL_13;
      }

      AMSError();
      v3 = v6 = v3;
    }

    goto LABEL_8;
  }

  v5 = [*(*(*(a1 + 56) + 8) + 40) error];
  if (v5)
  {
    v3 = v5;
    goto LABEL_4;
  }

  v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v12)
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = *(a1 + 32);
    *buf = 138543618;
    v43 = v14;
    v44 = 2114;
    v45 = v15;
    _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Legacy buy finished successfully", buf, 0x16u);
  }

  v16 = [*(*(*(a1 + 56) + 8) + 40) URLResponse];
  v3 = [v16 bodyData];

  if (v3)
  {
    v39 = 0;
    v17 = [MEMORY[0x1E698C888] objectWithData:v3 encoding:0 error:&v39];
    v18 = v39;
    v19 = v17;
    objc_opt_class();
    v20 = 0;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    if (!v20 || v18)
    {
      v21 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v21)
      {
        v21 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = AMSLogKey();
        *buf = 138543874;
        v43 = v23;
        v44 = 2114;
        v45 = v24;
        v46 = 2114;
        v47 = v18;
        _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode server response. %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v25 = [*(*(*(a1 + 56) + 8) + 40) purchase];
  v26 = [v25 accountIdentifier];

  if (v26)
  {
    v27 = MEMORY[0x1E6959A48];
    v28 = [*(a1 + 40) context];
    v29 = [v28 clientInfo];
    v30 = [v29 accountMediaType];
    v31 = [v27 ams_sharedAccountStoreForMediaType:v30];

    v32 = [*(*(*(a1 + 56) + 8) + 40) purchase];
    v33 = [v32 accountIdentifier];
    v34 = [v31 ams_iTunesAccountWithDSID:v33];

    [*(a1 + 40) _makeCurrentAccountIfNeeded:v34];
  }

  v40[0] = @"success";
  v40[1] = @"responseData";
  v41[0] = @"true";
  v35 = [v20 ams_sanitizeServerObject];
  v36 = v35;
  v37 = &stru_1F3921360;
  if (v35)
  {
    v37 = v35;
  }

  v41[1] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

  [*(a1 + 48) finishWithResult:v38];
LABEL_13:
}

@end