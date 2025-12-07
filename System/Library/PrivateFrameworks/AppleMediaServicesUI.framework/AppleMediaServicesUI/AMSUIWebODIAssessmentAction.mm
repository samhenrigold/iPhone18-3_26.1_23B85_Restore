@interface AMSUIWebODIAssessmentAction
- (AMSUIWebODIAssessmentAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
- (id)sessionIdentifierForString:(id)string;
- (unint64_t)accountTypeForString:(id)string;
@end

@implementation AMSUIWebODIAssessmentAction

- (AMSUIWebODIAssessmentAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = AMSUIWebODIAssessmentAction;
  v7 = [(AMSUIWebAction *)&v21 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"additionalAttributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    additionalAttributes = v7->_additionalAttributes;
    v7->_additionalAttributes = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"accountType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    rawAccountType = v7->_rawAccountType;
    v7->_rawAccountType = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    rawBundleIdentifer = v7->_rawBundleIdentifer;
    v7->_rawBundleIdentifer = v15;

    v17 = [objectCopy objectForKeyedSubscript:@"sessionIdentifer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    rawSessionIdentifer = v7->_rawSessionIdentifer;
    v7->_rawSessionIdentifer = v18;
  }

  return v7;
}

- (id)runAction
{
  v45 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = AMSUIWebODIAssessmentAction;
  runAction = [(AMSUIWebAction *)&v40 runAction];
  rawAccountType = [(AMSUIWebODIAssessmentAction *)self rawAccountType];
  v5 = [(AMSUIWebODIAssessmentAction *)self accountTypeForString:rawAccountType];

  rawSessionIdentifer = [(AMSUIWebODIAssessmentAction *)self rawSessionIdentifer];
  v7 = [(AMSUIWebODIAssessmentAction *)self sessionIdentifierForString:rawSessionIdentifer];

  rawBundleIdentifer = [(AMSUIWebODIAssessmentAction *)self rawBundleIdentifer];
  if (rawBundleIdentifer)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v24 = MEMORY[0x1E698CAD0];
LABEL_17:
    v29 = AMSError();
    v30 = [v24 promiseWithError:v29];
    goto LABEL_24;
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    *buf = 138543618;
    v42 = v21;
    v43 = 2114;
    v44 = v22;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bundle identifier passed. Will fallback to process bundle identifier.", buf, 0x16u);
  }

  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  rawBundleIdentifer = [currentProcess bundleIdentifier];

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!rawBundleIdentifer)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      *buf = 138543618;
      v42 = v27;
      v43 = 2114;
      v44 = v28;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bundle identifier found. Terminating assessment action.", buf, 0x16u);
    }

    v24 = MEMORY[0x1E698CAD0];
    goto LABEL_17;
  }

  v9 = objc_alloc(MEMORY[0x1E698CA90]);
  context = [(AMSUIWebAction *)self context];
  v11 = [context bag];
  v12 = [v9 initWithSessionIdentifier:v7 accountType:v5 bundleIdentifier:rawBundleIdentifer bag:v11];

  additionalAttributes = [(AMSUIWebODIAssessmentAction *)self additionalAttributes];

  if (additionalAttributes)
  {
    v14 = objc_alloc(MEMORY[0x1E698CA88]);
    additionalAttributes2 = [(AMSUIWebODIAssessmentAction *)self additionalAttributes];
    v16 = [v14 initWithAttributes:additionalAttributes2];

    v17 = [v12 provideUpdateWithAttributes:v16];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __40__AMSUIWebODIAssessmentAction_runAction__block_invoke;
    v38[3] = &unk_1E7F26898;
    v38[4] = self;
    v39 = v12;
    getAssessment = [v17 continueWithBlock:v38];
  }

  else
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = AMSLogKey();
      *buf = 138543618;
      v42 = v33;
      v43 = 2114;
      v44 = v34;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running ODISession to get assessment.", buf, 0x16u);
    }

    getAssessment = [v12 getAssessment];
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __40__AMSUIWebODIAssessmentAction_runAction__block_invoke_28;
  v36[3] = &unk_1E7F268C0;
  v36[4] = self;
  v37 = v12;
  v29 = v12;
  v30 = [getAssessment thenWithBlock:v36];

LABEL_24:

  return v30;
}

id __40__AMSUIWebODIAssessmentAction_runAction__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running ODISession to get assessment.", &v8, 0x16u);
  }

  v6 = [*(a1 + 40) getAssessment];

  return v6;
}

id __40__AMSUIWebODIAssessmentAction_runAction__block_invoke_28(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C968];
  v4 = a2;
  v5 = [v3 sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched assessment", buf, 0x16u);
  }

  v9 = MEMORY[0x1E698CAD0];
  v10 = [v4 stringValue];

  v15[1] = @"cacheIdentifier";
  v16[0] = v10;
  v11 = [*(a1 + 40) cacheIdentifier];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v9 promiseWithResult:v12];

  return v13;
}

- (unint64_t)accountTypeForString:(id)string
{
  stringCopy = string;
  v4 = [&unk_1F394AA30 objectForKeyedSubscript:stringCopy];

  if (v4)
  {
    v5 = [&unk_1F394AA30 objectForKeyedSubscript:stringCopy];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (id)sessionIdentifierForString:(id)string
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698C710];
  v10[0] = @"create";
  v10[1] = @"submit";
  v4 = *MEMORY[0x1E698C718];
  v11[0] = v3;
  v11[1] = v4;
  v10[2] = @"idUpdate";
  v11[2] = *MEMORY[0x1E698C720];
  v5 = MEMORY[0x1E695DF20];
  stringCopy = string;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = [v7 objectForKeyedSubscript:stringCopy];

  return v8;
}

@end