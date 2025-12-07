@interface AMSUIWebMarketingItemAction
- (AMSUIWebMarketingItemAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebMarketingItemAction

- (AMSUIWebMarketingItemAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v35.receiver = self;
  v35.super_class = AMSUIWebMarketingItemAction;
  v7 = [(AMSUIWebAction *)&v35 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"clientIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    clientIdentifier = v7->_clientIdentifier;
    v7->_clientIdentifier = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"clientVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    clientVersion = v7->_clientVersion;
    v7->_clientVersion = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"contextInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    contextInfo = v7->_contextInfo;
    v7->_contextInfo = v15;

    v17 = [objectCopy objectForKeyedSubscript:@"offerHints"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    offerHints = v7->_offerHints;
    v7->_offerHints = v18;

    v20 = [objectCopy objectForKeyedSubscript:@"placement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    placement = v7->_placement;
    v7->_placement = v21;

    v23 = [objectCopy objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    serviceType = v7->_serviceType;
    v7->_serviceType = v24;

    context = [(AMSUIWebAction *)v7 context];
    v27 = [objectCopy objectForKeyedSubscript:@"account"];
    v28 = [context iTunesAccountFromJSAccount:v27];
    account = v7->_account;
    v7->_account = v28;

    if (!v7->_account)
    {
      context2 = [(AMSUIWebAction *)v7 context];
      v31 = [objectCopy objectForKeyedSubscript:@"dsid"];
      v32 = [context2 iTunesAccountFromJSDSID:v31];
      v33 = v7->_account;
      v7->_account = v32;
    }
  }

  return v7;
}

- (id)runAction
{
  v46 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = AMSUIWebMarketingItemAction;
  runAction = [(AMSUIWebAction *)&v35 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v5 = AMSLogKey();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    clientIdentifier = [(AMSUIWebMarketingItemAction *)self clientIdentifier];
    clientVersion = [(AMSUIWebMarketingItemAction *)self clientVersion];
    account = [(AMSUIWebMarketingItemAction *)self account];
    *buf = 138544386;
    v37 = v8;
    v38 = 2114;
    v39 = v9;
    v40 = 2114;
    v41 = clientIdentifier;
    v42 = 2114;
    v43 = clientVersion;
    v44 = 2114;
    v45 = account;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running marketing item action with clientID: %{public}@ clientVersion: %{public}@ account: %{public}@", buf, 0x34u);
  }

  v13 = objc_alloc(MEMORY[0x1E698C9A0]);
  context = [(AMSUIWebAction *)self context];
  v15 = [context bag];
  clientIdentifier2 = [(AMSUIWebMarketingItemAction *)self clientIdentifier];
  clientVersion2 = [(AMSUIWebMarketingItemAction *)self clientVersion];
  placement = [(AMSUIWebMarketingItemAction *)self placement];
  serviceType = [(AMSUIWebMarketingItemAction *)self serviceType];
  v20 = [v13 initWithBag:v15 clientIdentifier:clientIdentifier2 clientVersion:clientVersion2 placement:placement serviceType:serviceType];

  context2 = [(AMSUIWebAction *)self context];
  account2 = [context2 account];
  [v20 setAccount:account2];

  contextInfo = [(AMSUIWebMarketingItemAction *)self contextInfo];
  [v20 setContextInfo:contextInfo];

  offerHints = [(AMSUIWebMarketingItemAction *)self offerHints];
  [v20 setOfferHints:offerHints];

  [v20 setLogKey:v5];
  perform = [v20 perform];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__AMSUIWebMarketingItemAction_runAction__block_invoke;
  v31[3] = &unk_1E7F26750;
  v32 = v5;
  selfCopy = self;
  v26 = v4;
  v34 = v26;
  v27 = v5;
  [perform addFinishBlock:v31];

  v28 = v34;
  v29 = v26;

  return v26;
}

void __40__AMSUIWebMarketingItemAction_runAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AMSSetLogKey();
  v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v9 = v8;
  if (v6)
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
      v18 = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Marketing item task failed. %{public}@", &v18, 0x20u);
    }

    [*(a1 + 48) finishWithError:v6];
  }

  else
  {
    if (!v8)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v9 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Marketing item task completed successfully.", &v18, 0x16u);
    }

    v16 = *(a1 + 48);
    v17 = [v5 rawValues];
    [v16 finishWithResult:v17];
  }
}

@end