@interface AMSUIWebFetchMetricsIdentifierAction
- (AMSUIWebFetchMetricsIdentifierAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebFetchMetricsIdentifierAction

- (AMSUIWebFetchMetricsIdentifierAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = AMSUIWebFetchMetricsIdentifierAction;
  v8 = [(AMSUIWebAction *)&v29 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"account"];
    v10 = [contextCopy iTunesAccountFromJSAccount:v9];
    account = v8->_account;
    v8->_account = v10;

    v12 = [objectCopy objectForKeyedSubscript:@"bagNamespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    bagNamespace = v8->_bagNamespace;
    v8->_bagNamespace = v13;

    v15 = [objectCopy objectForKeyedSubscript:@"bagProfile"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    bagProfile = v8->_bagProfile;
    v8->_bagProfile = v16;

    v18 = [objectCopy objectForKeyedSubscript:@"bagProfileVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    bagProfileVersion = v8->_bagProfileVersion;
    v8->_bagProfileVersion = v19;

    v21 = [objectCopy objectForKeyedSubscript:@"crossDeviceSync"];
    if (objc_opt_respondsToSelector())
    {
      v22 = [objectCopy objectForKeyedSubscript:@"crossDeviceSync"];
      v8->_crossDeviceSync = [v22 BOOLValue];
    }

    else
    {
      v8->_crossDeviceSync = 0;
    }

    v23 = [objectCopy objectForKeyedSubscript:@"generateEventFields"];
    if (objc_opt_respondsToSelector())
    {
      v24 = [objectCopy objectForKeyedSubscript:@"generateEventFields"];
      v8->_generateEventFields = [v24 BOOLValue];
    }

    else
    {
      v8->_generateEventFields = 0;
    }

    v25 = [objectCopy objectForKeyedSubscript:@"identifierKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    identifierKey = v8->_identifierKey;
    v8->_identifierKey = v26;
  }

  return v8;
}

- (id)runAction
{
  v62 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = AMSUIWebFetchMetricsIdentifierAction;
  runAction = [(AMSUIWebAction *)&v47 runAction];
  bagNamespace = [(AMSUIWebFetchMetricsIdentifierAction *)self bagNamespace];
  if (bagNamespace)
  {
    crossDeviceSync = [(AMSUIWebFetchMetricsIdentifierAction *)self crossDeviceSync];
    generateEventFields = [(AMSUIWebFetchMetricsIdentifierAction *)self generateEventFields];
    identifierKey = [(AMSUIWebFetchMetricsIdentifierAction *)self identifierKey];
    if (identifierKey)
    {
      v36 = generateEventFields;
      context = [(AMSUIWebAction *)self context];
      account = [(AMSUIWebFetchMetricsIdentifierAction *)self account];
      v9 = account;
      v37 = crossDeviceSync;
      if (account)
      {
        account2 = account;
      }

      else
      {
        account2 = [context account];
      }

      v14 = account2;

      bagProfile = [(AMSUIWebFetchMetricsIdentifierAction *)self bagProfile];
      bagProfileVersion = [(AMSUIWebFetchMetricsIdentifierAction *)self bagProfileVersion];
      v17 = bagProfileVersion;
      if (!bagProfile || !bagProfileVersion || (v18 = bagProfileVersion, v19 = MEMORY[0x1E698C7D8], [context clientInfo], v20 = v14, v21 = objc_claimAutoreleasedReturnValue(), v22 = v19, v17 = v18, objc_msgSend(v22, "bagForProfile:profileVersion:processInfo:", bagProfile, v18, v21), v23 = objc_claimAutoreleasedReturnValue(), v21, v14 = v20, (v38 = v23) == 0))
      {
        v38 = [context bag];
      }

      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v17;
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        AMSHashIfNeeded();
        v28 = v35 = v14;
        v29 = AMSHashIfNeeded();
        v30 = v29;
        *buf = 138544898;
        v31 = @"false";
        v49 = v26;
        v50 = 2114;
        if (v37)
        {
          v31 = @"true";
        }

        v51 = v27;
        v52 = 2114;
        v53 = v28;
        v54 = 2114;
        v55 = v29;
        v56 = 2114;
        v57 = bagNamespace;
        v58 = 2114;
        v59 = identifierKey;
        v17 = v34;
        v60 = 2114;
        v61 = v31;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting (account: %{public}@; bag: %{public}@; bagNamespace: %{public}@; identifierKey: %{public}@; crossDeviceSync: %{public}@)", buf, 0x48u);

        v14 = v35;
      }

      v32 = [MEMORY[0x1E698CA20] identifierStoreWithAccount:v14 bagNamespace:bagNamespace bag:v38];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke;
      v43[3] = &unk_1E7F261C8;
      v44 = identifierKey;
      v45 = v37;
      v46 = v36;
      v12 = [v32 thenWithBlock:v43];

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_2;
      v42[3] = &unk_1E7F24410;
      v42[4] = self;
      [v12 addErrorBlock:v42];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_53;
      v41[3] = &unk_1E7F261F0;
      v41[4] = self;
      [v12 addSuccessBlock:v41];
    }

    else
    {
      v13 = MEMORY[0x1E698CAD0];
      v40 = AMSError();
      v12 = [v13 promiseWithError:?];
    }
  }

  else
  {
    v11 = MEMORY[0x1E698CAD0];
    identifierKey = AMSError();
    v12 = [v11 promiseWithError:identifierKey];
  }

  return v12;
}

id __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698CA18] keyWithName:*(a1 + 32) crossDeviceSync:*(a1 + 40)];
  v5 = [v3 identifierForKey:v4];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"identifier", 0}];
  if (*(a1 + 41) == 1)
  {
    v15[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v8 = [v3 generateEventFieldsForKeys:v7];

    v13 = @"eventFields";
    v14 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [v6 ams_dictionaryByAddingEntriesFromDictionary:v9];

    v6 = v10;
  }

  v11 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];

  return v11;
}

void __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded();
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failure (error: %{public}@)", &v8, 0x20u);
  }
}

void __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_53(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v2;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Success (result: %{public}@)", &v7, 0x20u);
  }
}

@end