@interface AMSUIWebFetchTreatmentOverridesAction
- (id)runAction;
@end

@implementation AMSUIWebFetchTreatmentOverridesAction

- (id)runAction
{
  v21 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AMSUIWebFetchTreatmentOverridesAction;
  runAction = [(AMSUIWebAction *)&v12 runAction];
  treatmentOverrides = [MEMORY[0x1E698C890] treatmentOverrides];
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
    *buf = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = treatmentOverrides;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching treatment overrides (value: %{public}@)", buf, 0x20u);
  }

  v8 = MEMORY[0x1E698CAD0];
  v13 = @"treatmentOverrides";
  v14 = treatmentOverrides;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [v8 promiseWithResult:v9];

  return v10;
}

@end