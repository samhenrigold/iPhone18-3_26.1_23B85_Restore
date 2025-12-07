@interface AMSUIWebOverrideTreatmentsAction
- (AMSUIWebOverrideTreatmentsAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebOverrideTreatmentsAction

- (AMSUIWebOverrideTreatmentsAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebOverrideTreatmentsAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"treatmentOverrides"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    treatmentOverrides = v7->_treatmentOverrides;
    v7->_treatmentOverrides = v9;
  }

  return v7;
}

- (id)runAction
{
  v22 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AMSUIWebOverrideTreatmentsAction;
  runAction = [(AMSUIWebAction *)&v13 runAction];
  treatmentOverrides = [(AMSUIWebOverrideTreatmentsAction *)self treatmentOverrides];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = treatmentOverrides;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding treatments (value: %{public}@)", buf, 0x20u);
  }

  [MEMORY[0x1E698C890] setTreatmentOverrides:treatmentOverrides];
  v9 = MEMORY[0x1E698CAD0];
  v14 = @"success";
  v15 = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = [v9 promiseWithResult:v10];

  return v11;
}

@end