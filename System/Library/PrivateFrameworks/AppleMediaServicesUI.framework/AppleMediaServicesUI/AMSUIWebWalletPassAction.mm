@interface AMSUIWebWalletPassAction
- (AMSUIWebWalletPassAction)initWithJSObject:(id)object context:(id)context;
- (id)_attemptLynxProvisioning;
- (id)_lookupPassForIdentifier:(unint64_t)identifier;
- (id)runAction;
@end

@implementation AMSUIWebWalletPassAction

- (AMSUIWebWalletPassAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = AMSUIWebWalletPassAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"attemptLynxProvisioning"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [objectCopy objectForKeyedSubscript:@"attemptLynxProvisioning"];
      v7->_attemptLynxProvisioning = [v9 BOOLValue];
    }

    else
    {
      v7->_attemptLynxProvisioning = 0;
    }

    v10 = [objectCopy objectForKeyedSubscript:@"lookupFeatureIdentifier"];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        longLongValue = [v10 longLongValue];
      }

      else
      {
        longLongValue = 0;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:longLongValue];
      lookupFeature = v7->_lookupFeature;
      v7->_lookupFeature = v12;
    }
  }

  return v7;
}

- (id)runAction
{
  v11.receiver = self;
  v11.super_class = AMSUIWebWalletPassAction;
  runAction = [(AMSUIWebAction *)&v11 runAction];
  v4 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E0F8]];
  if ([(AMSUIWebWalletPassAction *)self attemptLynxProvisioning])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke;
    v10[3] = &unk_1E7F262A0;
    v10[4] = self;
    v5 = [v4 thenWithBlock:v10];

    v4 = v5;
  }

  lookupFeature = [(AMSUIWebWalletPassAction *)self lookupFeature];

  if (lookupFeature)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke_3;
    v9[3] = &unk_1E7F262A0;
    v9[4] = self;
    v7 = [v4 thenWithBlock:v9];

    v4 = v7;
  }

  return v4;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _attemptLynxProvisioning];
  v5 = [v4 promiseAdapter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke_2;
  v9[3] = &unk_1E7F24CD8;
  v10 = v3;
  v6 = v3;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) ams_dictionaryByAddingEntriesFromDictionary:&unk_1F394AAA8];
  v2 = [MEMORY[0x1E698CAD0] promiseWithResult:v1];

  return v2;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 lookupFeature];
  v6 = [v4 _lookupPassForIdentifier:{objc_msgSend(v5, "unsignedLongValue")}];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke_4;
  v10[3] = &unk_1E7F27138;
  v11 = v3;
  v7 = v3;
  v8 = [v6 thenWithBlock:v10];

  return v8;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke_4(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v20 = @"pass";
  v18[0] = @"identifier";
  v3 = a2;
  v4 = [v3 devicePassIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F3921360;
  }

  v19[0] = v6;
  v18[1] = @"terminalIdentifier";
  v7 = [v3 pairedTerminalIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F3921360;
  }

  v19[1] = v9;
  v18[2] = @"activationState";
  v10 = MEMORY[0x1E696AD98];
  v11 = [v3 passActivationState];

  v12 = [v10 numberWithInteger:v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = [v2 ams_dictionaryByAddingEntriesFromDictionary:v14];

  v16 = [MEMORY[0x1E698CAD0] promiseWithResult:v15];

  return v16;
}

- (id)_attemptLynxProvisioning
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    context = [(AMSUIWebAction *)self context];
    logKey = [context logKey];
    *buf = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting Lynx provisioning...", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  sharedInstance = [getPKAccountServiceClass() sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke;
    v13[3] = &unk_1E7F24990;
    v14 = v8;
    selfCopy = self;
    [sharedInstance attemptAppleStoredValueSetupWithCompletion:v13];
    v10 = v14;
  }

  else
  {
    v10 = AMSError();
    [v8 finishWithError:v10];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke_78;
  v12[3] = &unk_1E7F24410;
  v12[4] = self;
  [v8 addErrorBlock:v12];

  return v8;
}

uint64_t __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);

    return [v3 finishWithError:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [*(a1 + 40) context];
      v9 = [v8 logKey];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Provisioning Lynx succeeded", &v10, 0x16u);
    }

    return [*(a1 + 32) finishWithSuccess];
  }
}

void __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke_78(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
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
    v7 = [*(a1 + 32) context];
    v8 = [v7 logKey];
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Provisioning Lynx failed. %{public}@", &v9, 0x20u);
  }
}

- (id)_lookupPassForIdentifier:(unint64_t)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebAction *)self context];
    logKey = [context logKey];
    *buf = 138543874;
    v19 = v7;
    v20 = 2114;
    v21 = logKey;
    v22 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up pass: %ld", buf, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x1E698CAD0]) initWithTimeout:30.0];
  sharedInstance = [getPKAccountServiceClass() sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke;
  v16[3] = &unk_1E7F27188;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  [sharedInstance defaultAccountForFeature:identifier completion:v16];

  v13 = v17;
  v14 = v12;

  return v12;
}

void __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = [*(a1 + 32) context];
      v12 = [v11 logKey];
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 2114;
      v30 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Pass lookup failed to locate account. %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v8 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = [*(a1 + 32) context];
      v16 = [v15 logKey];
      v17 = [v5 accountIdentifier];
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v30 = v17;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Pass lookup located the account: %@", buf, 0x20u);
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v18 = getPKPassLibraryClass_softClass_1;
    v28 = getPKPassLibraryClass_softClass_1;
    if (!getPKPassLibraryClass_softClass_1)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPKPassLibraryClass_block_invoke_1;
      v30 = &unk_1E7F241B0;
      v31 = &v25;
      __getPKPassLibraryClass_block_invoke_1(buf);
      v18 = v26[3];
    }

    v19 = v18;
    _Block_object_dispose(&v25, 8);
    v20 = [v18 sharedInstance];
    v21 = [v5 accountIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke_79;
    v23[3] = &unk_1E7F27160;
    v22 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    v24 = v22;
    [v20 paymentPassWithAssociatedAccountIdentifier:v21 completion:v23];
  }
}

void __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke_79(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [*(a1 + 32) context];
      v9 = [v8 logKey];
      v16 = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Pass fetched successfully", &v16, 0x16u);
    }

    [*(a1 + 40) finishWithResult:v3];
  }

  else
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v5 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = [*(a1 + 32) context];
      v13 = [v12 logKey];
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Pass not found", &v16, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = AMSError();
    [v14 finishWithError:v15];
  }
}

@end