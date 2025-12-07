@interface AMSUIWebVerifyPaymentSetupFeatureAction
- (AMSUIWebVerifyPaymentSetupFeatureAction)initWithJSObject:(id)object context:(id)context;
- (id)_checkCombinedAccount;
- (id)_checkUpsellCardEnrollment;
- (id)runAction;
@end

@implementation AMSUIWebVerifyPaymentSetupFeatureAction

- (AMSUIWebVerifyPaymentSetupFeatureAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebVerifyPaymentSetupFeatureAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"referrerIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    referrerIdentifier = v7->_referrerIdentifier;
    v7->_referrerIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v25 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AMSUIWebVerifyPaymentSetupFeatureAction;
  runAction = [(AMSUIWebAction *)&v19 runAction];
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
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verifying payment setup.", buf, 0x16u);
  }

  v8 = MEMORY[0x1E698C7F0];
  _checkUpsellCardEnrollment = [(AMSUIWebVerifyPaymentSetupFeatureAction *)self _checkUpsellCardEnrollment];
  v20[0] = _checkUpsellCardEnrollment;
  _checkCombinedAccount = [(AMSUIWebVerifyPaymentSetupFeatureAction *)self _checkCombinedAccount];
  v20[1] = _checkCombinedAccount;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v12 = [v8 promiseWithAll:v11];

  promiseAdapter = [v12 promiseAdapter];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke;
  v18[3] = &unk_1E7F24CD8;
  v18[4] = self;
  v14 = [promiseAdapter thenWithBlock:v18];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_3;
  v17[3] = &unk_1E7F261F0;
  v17[4] = self;
  [v14 addSuccessBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_16;
  v16[3] = &unk_1E7F24410;
  v16[4] = self;
  [v14 addErrorBlock:v16];

  return v14;
}

id __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E698CAB8]);
  v3 = [*(a1 + 32) referrerIdentifier];
  v4 = [v2 initWithIdentifier:v3];

  v5 = [v4 performPaymentSetupFeatureLookup];
  v6 = [v5 thenWithBlock:&__block_literal_global_36];

  return v6;
}

id __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v7 = @"supported";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "state") == 1}];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 promiseWithResult:v4];

  return v5;
}

void __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_3(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verified payment setup: %{public}@", &v7, 0x20u);
  }
}

void __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_16(uint64_t a1, void *a2)
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
    v7 = AMSLogableError();
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to verify payment setup: %{public}@", &v8, 0x20u);
  }
}

- (id)_checkCombinedAccount
{
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_isActiveAccountCombined = [ams_sharedAccountStore ams_isActiveAccountCombined];

  v4 = MEMORY[0x1E698C7F0];
  if (ams_isActiveAccountCombined)
  {
    promiseWithSuccess = [MEMORY[0x1E698C7F0] promiseWithSuccess];
  }

  else
  {
    v6 = AMSError();
    promiseWithSuccess = [v4 promiseWithError:v6];
  }

  return promiseWithSuccess;
}

- (id)_checkUpsellCardEnrollment
{
  v3 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__AMSUIWebVerifyPaymentSetupFeatureAction__checkUpsellCardEnrollment__block_invoke;
  v9[3] = &unk_1E7F243C0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __69__AMSUIWebVerifyPaymentSetupFeatureAction__checkUpsellCardEnrollment__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [v2 bag];

  v3 = [MEMORY[0x1E698C830] shouldUseUpsellEnrollmentWithBag:v6];
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 finishWithSuccess];
  }

  else
  {
    v5 = AMSError();
    [v4 finishWithError:v5];
  }
}

@end