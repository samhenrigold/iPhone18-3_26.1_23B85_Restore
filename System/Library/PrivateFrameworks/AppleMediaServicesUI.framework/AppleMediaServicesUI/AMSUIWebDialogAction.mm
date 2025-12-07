@interface AMSUIWebDialogAction
- (AMSUIWebDialogAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebDialogAction

- (AMSUIWebDialogAction)initWithJSObject:(id)object context:(id)context
{
  v86 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v77.receiver = self;
  v77.super_class = AMSUIWebDialogAction;
  contextCopy = context;
  v61 = [(AMSUIWebAction *)&v77 initWithJSObject:objectCopy context:?];
  if (v61)
  {
    v7 = [objectCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [objectCopy objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v59 = objectCopy;
    v11 = [objectCopy objectForKeyedSubscript:@"buttons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [objectCopy objectForKeyedSubscript:@"preferredButtonIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [objectCopy objectForKeyedSubscript:@"textFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = v15;
    }

    else
    {
      v60 = 0;
    }

    v16 = [objectCopy objectForKeyedSubscript:@"style"];
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v16 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    v18 = [objectCopy objectForKeyedSubscript:@"pauseTimeouts"];
    v54 = v18;
    v55 = v16;
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v18 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v61->_pauseTimeouts = bOOLValue;
    v57 = v10;
    v58 = v8;
    v20 = [objc_alloc(MEMORY[0x1E698C8C0]) initWithTitle:v8 message:v10];
    v56 = v14;
    [(AMSDialogRequest *)v20 setPreferredButtonActionIdentifier:v14];
    v65 = v20;
    [(AMSDialogRequest *)v20 setStyle:integerValue];
    v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v12;
    v21 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v74;
      do
      {
        v24 = 0;
        v67 = v22;
        do
        {
          if (*v74 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v73 + 1) + 8 * v24);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          if (v26)
          {
            mEMORY[0x1E698C968] = [[AMSUIWebButtonModel alloc] initWithJSObject:v26 context:contextCopy];
            createDialogAction = [(AMSUIWebButtonModel *)mEMORY[0x1E698C968] createDialogAction];
            [v64 addObject:createDialogAction];
          }

          else
          {
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!mEMORY[0x1E698C968])
            {
              mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
            }

            createDialogAction = [(AMSUIWebButtonModel *)mEMORY[0x1E698C968] OSLogObject];
            if (os_log_type_enabled(createDialogAction, OS_LOG_TYPE_ERROR))
            {
              v29 = objc_opt_class();
              context = [(AMSUIWebAction *)v61 context];
              [context logKey];
              v32 = v31 = v23;
              *buf = 138543874;
              v80 = v29;
              v81 = 2114;
              v82 = v32;
              v83 = 2114;
              v84 = v25;
              _os_log_impl(&dword_1BB036000, createDialogAction, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid button object: %{public}@", buf, 0x20u);

              v23 = v31;
              v22 = v67;
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v22);
    }

    [(AMSDialogRequest *)v65 setButtonActions:v64];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v62 = v60;
    v33 = [v62 countByEnumeratingWithState:&v69 objects:v78 count:16];
    objectCopy = v59;
    if (v33)
    {
      v34 = v33;
      v68 = *v70;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v70 != v68)
          {
            objc_enumerationMutation(v62);
          }

          v36 = *(*(&v69 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          if (v37)
          {
            v38 = [v59 objectForKeyedSubscript:@"placeholder"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              mEMORY[0x1E698C968]2 = v38;
            }

            else
            {
              mEMORY[0x1E698C968]2 = 0;
            }

            v44 = [v59 objectForKeyedSubscript:@"initialText"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              oSLogObject = v44;
            }

            else
            {
              oSLogObject = 0;
            }

            v45 = [v59 objectForKeyedSubscript:@"keyboardType"];
            if (objc_opt_respondsToSelector())
            {
              v46 = [v59 objectForKeyedSubscript:@"keyboardType"];
              integerValue2 = [v46 integerValue];
            }

            else
            {
              integerValue2 = 0;
            }

            v48 = [v59 objectForKeyedSubscript:@"tag"];
            if (objc_opt_respondsToSelector())
            {
              v49 = [v59 objectForKeyedSubscript:@"tag"];
              integerValue3 = [v49 integerValue];
            }

            else
            {
              integerValue3 = 0;
            }

            v51 = objc_alloc_init(MEMORY[0x1E698C8D0]);
            [v51 setPlaceholder:mEMORY[0x1E698C968]2];
            [v51 setText:oSLogObject];
            [v51 setKeyboardType:integerValue2];
            [v51 setTag:integerValue3];
            [(AMSDialogRequest *)v65 addTextField:v51];
          }

          else
          {
            mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!mEMORY[0x1E698C968]2)
            {
              mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
            }

            oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
            {
              v41 = objc_opt_class();
              context2 = [(AMSUIWebAction *)v61 context];
              logKey = [context2 logKey];
              *buf = 138543874;
              v80 = v41;
              v81 = 2114;
              v82 = logKey;
              v83 = 2114;
              v84 = v36;
              _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid text field object: %{public}@", buf, 0x20u);
            }
          }
        }

        v34 = [v62 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v34);
    }

    request = v61->_request;
    v61->_request = v65;
  }

  return v61;
}

- (id)runAction
{
  v24 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AMSUIWebDialogAction;
  runAction = [(AMSUIWebAction *)&v17 runAction];
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
    request = [(AMSUIWebDialogAction *)self request];
    *buf = 138543874;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = request;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running dialog: %{public}@", buf, 0x20u);
  }

  context = [(AMSUIWebAction *)self context];
  actionDelegate = [context actionDelegate];
  pauseTimeouts = [(AMSUIWebDialogAction *)self pauseTimeouts];
  request2 = [(AMSUIWebDialogAction *)self request];
  v13 = [actionDelegate action:self pauseTimeouts:pauseTimeouts handleDialogRequest:request2];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__AMSUIWebDialogAction_runAction__block_invoke;
  v16[3] = &unk_1E7F26000;
  v16[4] = self;
  v14 = [v13 thenWithBlock:v16];

  return v14;
}

id __33__AMSUIWebDialogAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) request];
  v5 = [v3 selectedActionIdentifier];
  v6 = [v4 locateActionWithIdentifier:v5];

  v7 = [v6 userInfo];

  if (v7)
  {
    v8 = [v6 userInfo];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = [AMSUIWebButtonModel alloc];
  v10 = [*(a1 + 32) context];
  v11 = [(AMSUIWebButtonModel *)v9 initWithJSObject:v8 context:v10];

  v12 = [(AMSUIWebButtonModel *)v11 action];

  if (v12)
  {
    v13 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = [(AMSUIWebButtonModel *)v11 action];
      *buf = 138543874;
      v28 = v15;
      v29 = 2114;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running dialog action: %{public}@", buf, 0x20u);
    }

    v18 = [(AMSUIWebButtonModel *)v11 action];
    v19 = [v18 runAction];
  }

  else
  {
    v19 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __33__AMSUIWebDialogAction_runAction__block_invoke_51;
  v24[3] = &unk_1E7F25FD8;
  v24[4] = *(a1 + 32);
  v25 = v8;
  v26 = v3;
  v20 = v3;
  v21 = v8;
  v22 = [v19 continueWithBlock:v24];

  return v22;
}

id __33__AMSUIWebDialogAction_runAction__block_invoke_51(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) acceptedResponseVersions];
  v3 = [v2 containsObject:&unk_1F394A690];

  v4 = MEMORY[0x1E698CAD0];
  if (v3)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11[0] = @"selectedButton";
    v11[1] = @"textFieldValues";
    v12[0] = v6;
    v7 = [v5 textfieldValues];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v9 = [v4 promiseWithResult:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E698CAD0] promiseWithResult:*(a1 + 40)];
  }

  return v9;
}

@end