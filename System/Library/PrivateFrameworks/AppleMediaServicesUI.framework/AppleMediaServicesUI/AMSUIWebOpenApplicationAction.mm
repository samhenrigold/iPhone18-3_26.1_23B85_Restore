@interface AMSUIWebOpenApplicationAction
- (AMSUIWebOpenApplicationAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebOpenApplicationAction

- (AMSUIWebOpenApplicationAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebOpenApplicationAction;
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
  v30 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AMSUIWebOpenApplicationAction;
  runAction = [(AMSUIWebAction *)&v23 runAction];
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
    bundleIdentifier = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];
    *buf = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = bundleIdentifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening application: %{public}@", buf, 0x20u);
  }

  bundleIdentifier2 = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];

  if (bundleIdentifier2)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    bundleIdentifier3 = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __42__AMSUIWebOpenApplicationAction_runAction__block_invoke;
    v20 = &unk_1E7F24B50;
    selfCopy = self;
    v22 = v10;
    v13 = v10;
    [defaultWorkspace openApplicationWithBundleIdentifier:bundleIdentifier3 configuration:0 completionHandler:&v17];

    promiseAdapter = [v13 promiseAdapter];
  }

  else
  {
    v15 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    promiseAdapter = [v15 promiseWithError:v13];
  }

  return promiseAdapter;
}

void __42__AMSUIWebOpenApplicationAction_runAction__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = [*(a1 + 32) bundleIdentifier];
      v12 = AMSLogableError();
      v17 = 138544130;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error opening application with bundle identifier %{public}@ : %{public}@", &v17, 0x2Au);
    }

    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v7 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = [*(a1 + 32) bundleIdentifier];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully opened application with bundle identifier %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithSuccess:a2 error:0];
  }
}

@end