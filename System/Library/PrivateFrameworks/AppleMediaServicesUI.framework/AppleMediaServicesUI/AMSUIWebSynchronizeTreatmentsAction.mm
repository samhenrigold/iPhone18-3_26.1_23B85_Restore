@interface AMSUIWebSynchronizeTreatmentsAction
- (id)runAction;
@end

@implementation AMSUIWebSynchronizeTreatmentsAction

- (id)runAction
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AMSUIWebSynchronizeTreatmentsAction;
  runAction = [(AMSUIWebAction *)&v15 runAction];
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
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Synchronizing treatments", buf, 0x16u);
  }

  defaultTreatmentStore = [MEMORY[0x1E698CB68] defaultTreatmentStore];
  synchronizeTreatments = [defaultTreatmentStore synchronizeTreatments];
  promiseAdapter = [synchronizeTreatments promiseAdapter];
  v11 = [promiseAdapter thenWithBlock:&__block_literal_global_34];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_2;
  v14[3] = &unk_1E7F24410;
  v14[4] = self;
  [v11 addErrorBlock:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_6;
  v13[3] = &unk_1E7F261F0;
  v13[4] = self;
  [v11 addSuccessBlock:v13];

  return v11;
}

id __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v8 = @"success";
  v9[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v2 promiseWithResult:v5];

  return v6;
}

void __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_2(uint64_t a1, void *a2)
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

void __48__AMSUIWebSynchronizeTreatmentsAction_runAction__block_invoke_6(uint64_t a1, void *a2)
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