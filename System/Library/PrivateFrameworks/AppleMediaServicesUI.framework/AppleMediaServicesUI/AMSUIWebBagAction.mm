@interface AMSUIWebBagAction
- (AMSUIWebBagAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
- (void)_fetchValuesForKeys:(id)keys bag:(id)bag startingAtIndex:(int64_t)index valuesArray:(id)array completion:(id)completion;
@end

@implementation AMSUIWebBagAction

- (AMSUIWebBagAction)initWithJSObject:(id)object context:(id)context
{
  v54 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v46.receiver = self;
  v46.super_class = AMSUIWebBagAction;
  v7 = [(AMSUIWebAction *)&v46 initWithJSObject:objectCopy context:context];
  v8 = v7;
  if (v7)
  {
    context = [(AMSUIWebAction *)v7 context];
    v10 = [objectCopy objectForKeyedSubscript:@"account"];
    v11 = [context iTunesAccountFromJSAccount:v10];
    account = v8->_account;
    v8->_account = v11;

    v13 = [objectCopy objectForKeyedSubscript:@"profile"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    profile = v8->_profile;
    v8->_profile = v14;

    v16 = [objectCopy objectForKeyedSubscript:@"profileVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    profileVersion = v8->_profileVersion;
    v8->_profileVersion = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = [objectCopy objectForKeyedSubscript:@"keys"];
    objc_opt_class();
    v38 = objectCopy;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = v21;
    v41 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v41)
    {
      v40 = *v43;
      v39 = v19;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v43 != v40)
          {
            objc_enumerationMutation(v22);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = [v25 objectForKeyedSubscript:@"key"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = [v25 objectForKeyedSubscript:@"type"];
          if (objc_opt_respondsToSelector())
          {
            integerValue = [v28 integerValue];
            if (v27)
            {
              goto LABEL_24;
            }
          }

          else
          {
            integerValue = 4;
            if (v27)
            {
LABEL_24:
              mEMORY[0x1E698C968] = objc_alloc_init(AMSUIWebBagKey);
              [(AMSUIWebBagKey *)mEMORY[0x1E698C968] setKey:v27];
              [(AMSUIWebBagKey *)mEMORY[0x1E698C968] setValueType:integerValue];
              [(NSArray *)v19 addObject:mEMORY[0x1E698C968]];
              goto LABEL_31;
            }
          }

          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!mEMORY[0x1E698C968])
          {
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
          }

          oSLogObject = [(AMSUIWebBagKey *)mEMORY[0x1E698C968] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v32 = v8;
            v33 = v22;
            v34 = objc_opt_class();
            v35 = AMSLogKey();
            *buf = 138543874;
            v48 = v34;
            v22 = v33;
            v49 = 2114;
            v50 = v35;
            v51 = 2114;
            v52 = v25;
            _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown bag key in def: %{public}@", buf, 0x20u);

            v8 = v32;
            v19 = v39;
          }

LABEL_31:
        }

        v41 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v41);
    }

    requestedKeys = v8->_requestedKeys;
    v8->_requestedKeys = v19;

    objectCopy = v38;
  }

  return v8;
}

- (id)runAction
{
  v51 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = AMSUIWebBagAction;
  runAction = [(AMSUIWebAction *)&v43 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  requestedKeys = [(AMSUIWebBagAction *)self requestedKeys];
  v6 = [requestedKeys count];

  if (v6)
  {
    profile = [(AMSUIWebBagAction *)self profile];
    profileVersion = [(AMSUIWebBagAction *)self profileVersion];
    v9 = profileVersion;
    if (!profile || !profileVersion)
    {
      context = [(AMSUIWebAction *)self context];
      v11 = [context bag];
      profile2 = [v11 profile];

      context2 = [(AMSUIWebAction *)self context];
      v14 = [context2 bag];
      profileVersion2 = [v14 profileVersion];

      v9 = profileVersion2;
      profile = profile2;
    }

    v36 = v4;
    v16 = MEMORY[0x1E698C7D8];
    context3 = [(AMSUIWebAction *)self context];
    clientInfo = [context3 clientInfo];
    v35 = [v16 bagForProfile:profile profileVersion:v9 processInfo:clientInfo];

    v19 = objc_alloc_init(MEMORY[0x1E698CA40]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    requestedKeys2 = [(AMSUIWebBagAction *)self requestedKeys];
    v21 = [requestedKeys2 countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(requestedKeys2);
          }

          v25 = *(*(&v39 + 1) + 8 * i);
          v26 = [v25 key];
          [v19 addBagKey:v26 valueType:{objc_msgSend(v25, "valueType")}];
        }

        v22 = [requestedKeys2 countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v22);
    }

    [MEMORY[0x1E698C7E0] registerBagKeySet:v19 forProfile:profile profileVersion:v9];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      requestedKeys3 = [(AMSUIWebBagAction *)self requestedKeys];
      *buf = 138543874;
      v45 = v29;
      v46 = 2114;
      v47 = v30;
      v48 = 2114;
      v49 = requestedKeys3;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up keys: %{public}@", buf, 0x20u);
    }

    requestedKeys4 = [(AMSUIWebBagAction *)self requestedKeys];
    v33 = objc_opt_new();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __30__AMSUIWebBagAction_runAction__block_invoke;
    v37[3] = &unk_1E7F25BA0;
    v4 = v36;
    v38 = v36;
    [(AMSUIWebBagAction *)self _fetchValuesForKeys:requestedKeys4 bag:v35 startingAtIndex:0 valuesArray:v33 completion:v37];
  }

  else
  {
    profile = AMSError();
    [v4 finishWithError:profile];
  }

  return v4;
}

uint64_t __30__AMSUIWebBagAction_runAction__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2];
  }
}

- (void)_fetchValuesForKeys:(id)keys bag:(id)bag startingAtIndex:(int64_t)index valuesArray:(id)array completion:(id)completion
{
  keysCopy = keys;
  bagCopy = bag;
  arrayCopy = array;
  completionCopy = completion;
  v16 = [keysCopy objectAtIndexedSubscript:index];
  valueType = [v16 valueType];
  v18 = 0;
  if (valueType <= 2)
  {
    if (!valueType)
    {
      v19 = [v16 key];
      v20 = [bagCopy arrayForKey:v19];
      goto LABEL_23;
    }

    if (valueType == 1)
    {
      v19 = [v16 key];
      v20 = [bagCopy BOOLForKey:v19];
      goto LABEL_23;
    }

    if (valueType != 2)
    {
      goto LABEL_25;
    }

    v19 = [v16 key];
    v20 = [bagCopy doubleForKey:v19];
LABEL_23:
    v18 = v20;
LABEL_24:

    goto LABEL_25;
  }

  if (valueType <= 4)
  {
    if (valueType == 3)
    {
      v19 = [v16 key];
      [bagCopy integerForKey:v19];
    }

    else
    {
      v19 = [v16 key];
      [bagCopy stringForKey:v19];
    }
    v20 = ;
    goto LABEL_23;
  }

  if (valueType == 5)
  {
    v21 = objc_opt_respondsToSelector();
    v19 = [v16 key];
    if (v21)
    {
      account = [(AMSUIWebBagAction *)self account];
      account2 = account;
      if (!account)
      {
        context = [(AMSUIWebAction *)self context];
        account2 = [context account];
      }

      v30 = account2;
      v18 = [bagCopy URLForKey:v19 account:account2];
      if (!account)
      {
      }

      goto LABEL_24;
    }

    v20 = [bagCopy URLForKey:v19];
    goto LABEL_23;
  }

  if (valueType == 6)
  {
    v19 = [v16 key];
    v20 = [bagCopy dictionaryForKey:v19];
    goto LABEL_23;
  }

LABEL_25:
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __84__AMSUIWebBagAction__fetchValuesForKeys_bag_startingAtIndex_valuesArray_completion___block_invoke;
  v31[3] = &unk_1E7F25BC8;
  v32 = arrayCopy;
  v33 = v16;
  v37 = completionCopy;
  indexCopy = index;
  selfCopy = self;
  v35 = keysCopy;
  v36 = bagCopy;
  v24 = bagCopy;
  v25 = keysCopy;
  v26 = completionCopy;
  v27 = v16;
  v28 = arrayCopy;
  [v18 valueWithCompletion:v31];
}

void __84__AMSUIWebBagAction__fetchValuesForKeys_bag_startingAtIndex_valuesArray_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 absoluteString];
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) key];
  [v10 setObject:v9 forKeyedSubscript:v11];

  if (v7)
  {
    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = [*(a1 + 48) context];
      v16 = [v15 logKey];
      v17 = [*(a1 + 40) key];
      v20 = 138544130;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load bag key: %{public}@. %{public}@", &v20, 0x2Au);
    }
  }

  if ([v7 code] == 203)
  {
    v18 = *(*(a1 + 72) + 16);
LABEL_14:
    v18();
    goto LABEL_15;
  }

  v19 = *(a1 + 80);
  if (v19 >= [*(a1 + 56) count] - 1)
  {
    v18 = *(*(a1 + 72) + 16);
    goto LABEL_14;
  }

  [*(a1 + 48) _fetchValuesForKeys:*(a1 + 56) bag:*(a1 + 64) startingAtIndex:*(a1 + 80) + 1 valuesArray:*(a1 + 32) completion:*(a1 + 72)];
LABEL_15:
}

@end