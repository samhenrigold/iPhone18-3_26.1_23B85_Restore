@interface AMSUIWebOpenFamilyCircleAction
- (AMSUIWebOpenFamilyCircleAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebOpenFamilyCircleAction

- (AMSUIWebOpenFamilyCircleAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebOpenFamilyCircleAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"clientName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    clientName = v7->_clientName;
    v7->_clientName = v9;
  }

  return v7;
}

- (id)runAction
{
  v48 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AMSUIWebOpenFamilyCircleAction;
  runAction = [(AMSUIWebAction *)&v34 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
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
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting to open family circle", buf, 0x16u);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v9 = getFACircleContextClass_softClass_0;
  v38 = getFACircleContextClass_softClass_0;
  if (!getFACircleContextClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFACircleContextClass_block_invoke_0;
    v45 = &unk_1E7F241B0;
    v46 = &v35;
    __getFACircleContextClass_block_invoke_0(buf);
    v9 = *(v36 + 24);
  }

  v10 = v9;
  _Block_object_dispose(&v35, 8);
  v11 = [v9 alloc];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v12 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  v38 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFACircleEventTypeInitiateSymbolLoc_block_invoke_0;
    v45 = &unk_1E7F241B0;
    v46 = &v35;
    v13 = FamilyCircleUILibrary_0();
    v14 = dlsym(v13, "FACircleEventTypeInitiate");
    *(*(v46 + 1) + 24) = v14;
    getFACircleEventTypeInitiateSymbolLoc_ptr_0 = *(*(v46 + 1) + 24);
    v12 = *(v36 + 24);
  }

  _Block_object_dispose(&v35, 8);
  if (!v12)
  {
    [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
    __break(1u);
  }

  v15 = [v11 initWithEventType:*v12];
  clientName = [(AMSUIWebOpenFamilyCircleAction *)self clientName];
  [v15 setClientName:clientName];

  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__8;
  v46 = __Block_byref_object_dispose__8;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v20 = getFACircleStateControllerClass_softClass_0;
  v43 = getFACircleStateControllerClass_softClass_0;
  if (!getFACircleStateControllerClass_softClass_0)
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __getFACircleStateControllerClass_block_invoke_0;
    v38 = &unk_1E7F241B0;
    v39 = &v40;
    __getFACircleStateControllerClass_block_invoke_0(&v35);
    v20 = v41[3];
  }

  v21 = v20;
  _Block_object_dispose(&v40, 8);
  v47 = [[v20 alloc] initWithPresenter:currentContainer];
  v22 = AMSLogKey();
  v23 = *(*&buf[8] + 40);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __43__AMSUIWebOpenFamilyCircleAction_runAction__block_invoke;
  v29[3] = &unk_1E7F26968;
  v24 = v22;
  v33 = buf;
  v30 = v24;
  selfCopy = self;
  v25 = v4;
  v32 = v25;
  [v23 performWithContext:v15 completion:v29];
  v26 = v32;
  v27 = v25;

  _Block_object_dispose(buf, 8);

  return v27;
}

void __43__AMSUIWebOpenFamilyCircleAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKey();
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = [v3 error];

  v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = [v3 error];
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to open family circle. %{public}@", &v19, 0x20u);
    }

    v14 = *(a1 + 48);
    v15 = [v3 error];
    [v14 finishWithError:v15];
  }

  else
  {
    if (!v8)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v9 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = 138543618;
      v20 = v17;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successully opened family circle", &v19, 0x16u);
    }

    [*(a1 + 48) finishWithResult:MEMORY[0x1E695E118]];
  }
}

@end