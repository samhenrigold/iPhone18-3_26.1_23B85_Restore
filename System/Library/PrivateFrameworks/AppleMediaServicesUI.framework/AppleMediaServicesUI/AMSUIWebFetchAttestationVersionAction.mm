@interface AMSUIWebFetchAttestationVersionAction
- (AMSUIWebFetchAttestationVersionAction)initWithJSObject:(id)object context:(id)context;
- (id)minimumVersions;
- (id)runAction;
@end

@implementation AMSUIWebFetchAttestationVersionAction

- (AMSUIWebFetchAttestationVersionAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = AMSUIWebFetchAttestationVersionAction;
  v8 = [(AMSUIWebAction *)&v13 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"account"];
    v10 = [contextCopy iTunesAccountFromJSAccount:v9];
    account = v8->_account;
    v8->_account = v10;
  }

  return v8;
}

- (id)runAction
{
  v36 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AMSUIWebFetchAttestationVersionAction;
  runAction = [(AMSUIWebAction *)&v27 runAction];
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
    v31 = v6;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching current attestation version.", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E698C948]);
  [v8 setPurpose:0];
  [v8 setStyle:{objc_msgSend(MEMORY[0x1E698C948], "preferredAttestationStyle")}];
  v9 = MEMORY[0x1E698C7F8];
  account = [(AMSUIWebFetchAttestationVersionAction *)self account];
  v26 = 0;
  v11 = [v9 ACLVersionForAccount:account options:v8 error:&v26];
  v12 = v26;

  if (v11)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      *buf = 138543874;
      v31 = v15;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched current attestation version. %{public}@", buf, 0x20u);
    }

    v17 = MEMORY[0x1E698CAD0];
    v28[0] = @"currentVersion";
    v28[1] = @"minimumVersions";
    v29[0] = v11;
    minimumVersions = [(AMSUIWebFetchAttestationVersionAction *)self minimumVersions];
    v29[1] = minimumVersions;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v20 = [v17 promiseWithResult:v19];
  }

  else
  {
    if (!v12)
    {
      v12 = AMSError();
    }

    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543874;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch current attestation version. %{public}@", buf, 0x20u);
    }

    v20 = [MEMORY[0x1E698CAD0] promiseWithError:v12];
  }

  return v20;
}

- (id)minimumVersions
{
  v18 = *MEMORY[0x1E69E9840];
  if (minimumVersions_ams_once_token___COUNTER__ != -1)
  {
    [AMSUIWebFetchAttestationVersionAction minimumVersions];
  }

  v2 = minimumVersions_ams_once_object___COUNTER__;
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [MEMORY[0x1E698C7F8] minimumACLVersionForAction:{objc_msgSend(v9, "integerValue", v13)}];
        if (v10)
        {
          v11 = [v4 objectForKey:v9];
          [v3 setObject:v10 forKey:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

void __56__AMSUIWebFetchAttestationVersionAction_minimumVersions__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F394A6A8;
  v2[1] = &unk_1F394A6C0;
  v3[0] = AMSUIWebBiometricsActionTypePrimaryTouchID;
  v3[1] = AMSUIWebBiometricsActionTypePrimaryFaceID;
  v2[2] = &unk_1F394A6D8;
  v2[3] = &unk_1F394A6F0;
  v3[2] = AMSUIWebBiometricsActionTypePrimarySecurityPreventReplay;
  v3[3] = AMSUIWebBiometricsActionTypePrimaryCardEnrollment;
  v2[4] = &unk_1F394A708;
  v2[5] = &unk_1F394A720;
  v3[4] = AMSUIWebBiometricsActionTypePrimaryPaymentDirectivePassword;
  v3[5] = AMSUIWebBiometricsActionTypePrimaryPaymentDirectivePasscode;
  v2[6] = &unk_1F394A738;
  v2[7] = &unk_1F394A750;
  v3[6] = AMSUIWebBiometricsActionTypeExtendedTouchID;
  v3[7] = AMSUIWebBiometricsActionTypeExtendedFaceID;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = minimumVersions_ams_once_object___COUNTER__;
  minimumVersions_ams_once_object___COUNTER__ = v0;
}

@end