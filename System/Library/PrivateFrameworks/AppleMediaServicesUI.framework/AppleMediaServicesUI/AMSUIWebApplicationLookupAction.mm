@interface AMSUIWebApplicationLookupAction
- (AMSUIWebApplicationLookupAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebApplicationLookupAction

- (AMSUIWebApplicationLookupAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebApplicationLookupAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v19.receiver = self;
  v19.super_class = AMSUIWebApplicationLookupAction;
  runAction = [(AMSUIWebAction *)&v19 runAction];
  bundleIdentifier = [(AMSUIWebApplicationLookupAction *)self bundleIdentifier];
  v5 = [bundleIdentifier length];

  v6 = MEMORY[0x1E698CAD0];
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v8 = dispatch_get_global_queue(-32768, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__AMSUIWebApplicationLookupAction_runAction__block_invoke;
    v17[3] = &unk_1E7F243C0;
    v17[4] = self;
    v9 = v7;
    v18 = v9;
    v10 = v17;
    v11 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_6;
    block[3] = &unk_1E7F245E0;
    v21 = v11;
    v22 = v10;
    v12 = v11;
    dispatch_async(v8, block);

    v13 = v18;
    v14 = v9;

    v15 = v14;
  }

  else
  {
    v14 = AMSError();
    v15 = [v6 promiseWithError:v14];
  }

  return v15;
}

void __44__AMSUIWebApplicationLookupAction_runAction__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
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
    v6 = [*(a1 + 32) bundleIdentifier];
    *buf = 138543874;
    v30 = v4;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up application record: %{public}@", buf, 0x20u);
  }

  v7 = objc_alloc(MEMORY[0x1E69635F8]);
  v8 = [*(a1 + 32) bundleIdentifier];
  v28 = 0;
  v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v28];
  v10 = v28;

  if (!v9 || v10)
  {
    if (!v10)
    {
      v10 = AMSError();
    }

    v24 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v24)
    {
      v24 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = AMSLogKey();
      *buf = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = v27;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&dword_1BB036000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to lookup application record. %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v10];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = [v9 bundleIdentifier];
    [v11 setObject:v12 forKeyedSubscript:@"bundleIdentifier"];

    v13 = [v9 bundleVersion];
    [v11 setObject:v13 forKeyedSubscript:@"bundleVersion"];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isBeta")}];
    [v11 setObject:v14 forKeyedSubscript:@"beta"];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isPlaceholder")}];
    [v11 setObject:v15 forKeyedSubscript:@"placeholder"];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isArcadeApp")}];
    [v11 setObject:v16 forKeyedSubscript:@"arcadeApp"];

    v17 = MEMORY[0x1E696AD98];
    v18 = [v9 applicationState];
    v19 = [v17 numberWithBool:{objc_msgSend(v18, "isInstalled")}];
    [v11 setObject:v19 forKeyedSubscript:@"installed"];

    v20 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v20)
    {
      v20 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      *buf = 138543874;
      v30 = v22;
      v31 = 2114;
      v32 = v23;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found application: %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithResult:v11];
    v10 = 0;
  }
}

@end