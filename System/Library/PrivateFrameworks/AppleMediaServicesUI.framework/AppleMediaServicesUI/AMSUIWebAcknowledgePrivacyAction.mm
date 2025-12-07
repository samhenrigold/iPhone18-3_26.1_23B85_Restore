@interface AMSUIWebAcknowledgePrivacyAction
- (AMSUIWebAcknowledgePrivacyAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebAcknowledgePrivacyAction

- (AMSUIWebAcknowledgePrivacyAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v34.receiver = self;
  v34.super_class = AMSUIWebAcknowledgePrivacyAction;
  v8 = [(AMSUIWebAction *)&v34 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"privacyIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    privacyIdentifier = v8->_privacyIdentifier;
    v8->_privacyIdentifier = v10;

    v12 = [objectCopy objectForKeyedSubscript:@"account"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [contextCopy iTunesAccountFromJSAccount:v13];
    account = v8->_account;
    v8->_account = v14;

    v16 = v8->_account;
    if (v16 && ![(ACAccount *)v16 ams_isLocalAccount])
    {
      goto LABEL_22;
    }

    v17 = MEMORY[0x1E6959A48];
    context = [(AMSUIWebAction *)v8 context];
    clientInfo = [context clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    v21 = [v17 ams_sharedAccountStoreForMediaType:accountMediaType];

    v22 = [v21 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    v23 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v22];
    v24 = v8->_account;
    v8->_account = v23;

    v25 = [v13 objectForKeyedSubscript:@"username"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    [(ACAccount *)v8->_account setUsername:v26];
    v27 = [v13 objectForKeyedSubscript:@"DSID"];
    if (objc_opt_respondsToSelector())
    {
      v28 = [v13 objectForKeyedSubscript:@"DSID"];
      longLongValue = [v28 longLongValue];

      if (longLongValue)
      {
        v30 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
        [(ACAccount *)v8->_account ams_setDSID:v30];

LABEL_18:
        v31 = [v13 objectForKeyedSubscript:@"altDSID"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        [(ACAccount *)v8->_account ams_setAltDSID:v32];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    [(ACAccount *)v8->_account ams_setDSID:0];
    goto LABEL_18;
  }

LABEL_23:

  return v8;
}

- (id)runAction
{
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AMSUIWebAcknowledgePrivacyAction;
  runAction = [(AMSUIWebAction *)&v21 runAction];
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
    privacyIdentifier = [(AMSUIWebAcknowledgePrivacyAction *)self privacyIdentifier];
    *buf = 138543874;
    v23 = v6;
    v24 = 2114;
    v25 = v7;
    v26 = 2114;
    v27 = privacyIdentifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Acknowledging privacy for ID: %{public}@", buf, 0x20u);
  }

  privacyIdentifier2 = [(AMSUIWebAcknowledgePrivacyAction *)self privacyIdentifier];
  v10 = [privacyIdentifier2 length];

  if (v10)
  {
    account = [(AMSUIWebAcknowledgePrivacyAction *)self account];

    if (account)
    {
      v12 = objc_alloc(MEMORY[0x1E698C790]);
      privacyIdentifier3 = [(AMSUIWebAcknowledgePrivacyAction *)self privacyIdentifier];
      account2 = [(AMSUIWebAcknowledgePrivacyAction *)self account];
      v15 = [v12 initWithPrivacyIdentifier:privacyIdentifier3 account:account2];

      acknowledgePrivacy = [v15 acknowledgePrivacy];
      promiseAdapter = [acknowledgePrivacy promiseAdapter];
      v18 = [promiseAdapter thenWithBlock:&__block_literal_global_17];

      goto LABEL_11;
    }

    v19 = MEMORY[0x1E698CAD0];
  }

  else
  {
    v19 = MEMORY[0x1E698CAD0];
  }

  v15 = AMSError();
  v18 = [v19 promiseWithError:v15];
LABEL_11:

  return v18;
}

@end