@interface AMSUIWebMetricsAction
- (AMSUIWebMetricsAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebMetricsAction

- (AMSUIWebMetricsAction)initWithJSObject:(id)object context:(id)context
{
  v53 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v45.receiver = self;
  v45.super_class = AMSUIWebMetricsAction;
  contextCopy = context;
  v37 = [(AMSUIWebAction *)&v45 initWithJSObject:objectCopy context:?];
  if (v37)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = [objectCopy objectForKeyedSubscript:@"events"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 countByEnumeratingWithState:&v41 objects:v52 count:16];
    v36 = objectCopy;
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      v39 = v8;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          if (v14)
          {
            v15 = [[AMSUIWebMetricsEvent alloc] initWithJSObject:v14 context:contextCopy];
            mEMORY[0x1E698C968]2 = v15;
            if (v15)
            {
              account = [(AMSUIWebMetricsEvent *)v15 account];

              if (!account)
              {
                v18 = [objectCopy objectForKeyedSubscript:@"account"];
                v19 = [contextCopy iTunesAccountFromJSAccount:v18];
                [mEMORY[0x1E698C968]2 setAccount:v19];

                account2 = [mEMORY[0x1E698C968]2 account];

                if (!account2)
                {
                  v21 = [objectCopy objectForKeyedSubscript:@"dsid"];
                  v22 = [contextCopy iTunesAccountFromJSDSID:v21];
                  [mEMORY[0x1E698C968]2 setAccount:v22];
                }
              }

              [(NSArray *)v38 addObject:mEMORY[0x1E698C968]2];
            }

            else
            {
              mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
              if (!mEMORY[0x1E698C968])
              {
                mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
              }

              oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
              if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
              {
                v28 = objc_opt_class();
                v29 = AMSLogKey();
                *buf = 138543874;
                v47 = v28;
                v48 = 2114;
                v49 = v29;
                v50 = 2112;
                v51 = v13;
                _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create metrics event from definition: %@", buf, 0x20u);

                objectCopy = v36;
              }

              v8 = v39;
            }
          }

          else
          {
            mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!mEMORY[0x1E698C968]2)
            {
              mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
            }

            oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v24 = objc_opt_class();
              v25 = AMSLogKey();
              *buf = 138543874;
              v47 = v24;
              v8 = v39;
              v48 = 2114;
              v49 = v25;
              v50 = 2112;
              v51 = v13;
              _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid metrics event: %@", buf, 0x20u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v10);
    }

    events = v37->_events;
    v37->_events = v38;
    v31 = v38;

    v32 = [objectCopy objectForKeyedSubscript:@"flush"];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      bOOLValue = [v32 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v37->_shouldFlush = bOOLValue;

    objectCopy = v36;
  }

  return v37;
}

- (id)runAction
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AMSUIWebMetricsAction;
  runAction = [(AMSUIWebAction *)&v21 runAction];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  events = [(AMSUIWebMetricsAction *)self events];
  v5 = [events countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        context = [(AMSUIWebAction *)self context];
        metrics = [context metrics];
        [metrics enqueueEvent:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [events countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  if ([(AMSUIWebMetricsAction *)self shouldFlush])
  {
    context2 = [(AMSUIWebAction *)self context];
    metrics2 = [context2 metrics];
    flush = [metrics2 flush];
  }

  v15 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];

  return v15;
}

@end