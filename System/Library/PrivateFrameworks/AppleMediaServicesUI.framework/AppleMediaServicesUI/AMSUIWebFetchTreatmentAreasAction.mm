@interface AMSUIWebFetchTreatmentAreasAction
- (AMSUIWebFetchTreatmentAreasAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebFetchTreatmentAreasAction

- (AMSUIWebFetchTreatmentAreasAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = AMSUIWebFetchTreatmentAreasAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"namespaceIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    namespaceIds = v7->_namespaceIds;
    v7->_namespaceIds = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"topicIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    topicIds = v7->_topicIds;
    v7->_topicIds = v12;
  }

  return v7;
}

- (id)runAction
{
  selfCopy = self;
  v46 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = AMSUIWebFetchTreatmentAreasAction;
  runAction = [(AMSUIWebAction *)&v39 runAction];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  namespaceIds = [(AMSUIWebFetchTreatmentAreasAction *)selfCopy namespaceIds];
  v6 = 0x1E698C000;
  if (namespaceIds)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:namespaceIds];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      *buf = 138543874;
      v41 = v10;
      v42 = 2114;
      v43 = v11;
      v44 = 2114;
      v45 = v12;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching areas (namespaces: %{public}@)", buf, 0x20u);

      v6 = 0x1E698C000uLL;
    }

    defaultTreatmentStore = [*(v6 + 2920) defaultTreatmentStore];
    v14 = [defaultTreatmentStore areasForNamespaces:v7];
    v15 = [v14 thenWithBlock:&__block_literal_global_26];

    [v4 addObject:v15];
  }

  topicIds = [(AMSUIWebFetchTreatmentAreasAction *)selfCopy topicIds];
  if (topicIds)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:topicIds];
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v36 = selfCopy;
      v20 = topicIds;
      v21 = v4;
      v22 = namespaceIds;
      v23 = v6;
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v26 = AMSHashIfNeeded();
      *buf = 138543874;
      v41 = v24;
      v6 = v23;
      namespaceIds = v22;
      v4 = v21;
      topicIds = v20;
      selfCopy = v36;
      v42 = 2114;
      v43 = v25;
      v44 = 2114;
      v45 = v26;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching areas (topics: %{public}@)", buf, 0x20u);
    }

    defaultTreatmentStore2 = [*(v6 + 2920) defaultTreatmentStore];
    v28 = [defaultTreatmentStore2 areasForTopics:v17];
    v29 = [v28 thenWithBlock:&__block_literal_global_21];

    [v4 addObject:v29];
  }

  v30 = [v4 count];
  v31 = MEMORY[0x1E698CAD0];
  if (v30)
  {
    v32 = [MEMORY[0x1E698CAD0] promiseWithAll:v4];
    v33 = [v32 thenWithBlock:&__block_literal_global_27];

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __46__AMSUIWebFetchTreatmentAreasAction_runAction__block_invoke_4;
    v38[3] = &unk_1E7F24410;
    v38[4] = selfCopy;
    [v33 addErrorBlock:v38];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __46__AMSUIWebFetchTreatmentAreasAction_runAction__block_invoke_32;
    v37[3] = &unk_1E7F261F0;
    v37[4] = selfCopy;
    [v33 addSuccessBlock:v37];
  }

  else
  {
    v34 = AMSError();
    v33 = [v31 promiseWithError:v34];
  }

  return v33;
}

id __46__AMSUIWebFetchTreatmentAreasAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v8 = @"namespaceAreas";
  v9[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v2 promiseWithResult:v5];

  return v6;
}

id __46__AMSUIWebFetchTreatmentAreasAction_runAction__block_invoke_19(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v8 = @"topicAreas";
  v9[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v2 promiseWithResult:v5];

  return v6;
}

id __46__AMSUIWebFetchTreatmentAreasAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ams_reduceWithInitialResult:MEMORY[0x1E695E0F8] updateAccumulatingResult:&__block_literal_global_30];
  v3 = [MEMORY[0x1E698CAD0] promiseWithResult:v2];

  return v3;
}

void __46__AMSUIWebFetchTreatmentAreasAction_runAction__block_invoke_4(uint64_t a1, void *a2)
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

void __46__AMSUIWebFetchTreatmentAreasAction_runAction__block_invoke_32(uint64_t a1, void *a2)
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