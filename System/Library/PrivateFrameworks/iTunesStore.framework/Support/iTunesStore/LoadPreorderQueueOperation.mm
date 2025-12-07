@interface LoadPreorderQueueOperation
- (LoadPreorderQueueOperation)initWithAccountIdentifier:(id)identifier;
- (NSArray)preorderItems;
- (NSNumber)accountIdentifier;
- (id)_newURLOperation;
- (void)dealloc;
- (void)run;
@end

@implementation LoadPreorderQueueOperation

- (LoadPreorderQueueOperation)initWithAccountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = LoadPreorderQueueOperation;
  v4 = [(LoadPreorderQueueOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = identifier;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadPreorderQueueOperation;
  [(LoadPreorderQueueOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountID;

  return v2;
}

- (NSArray)preorderItems
{
  [(LoadPreorderQueueOperation *)self lock];
  v3 = self->_items;
  [(LoadPreorderQueueOperation *)self unlock];
  return v3;
}

- (void)run
{
  _newURLOperation = [(LoadPreorderQueueOperation *)self _newURLOperation];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (v8)
  {
    v52 = 138412290;
    v53 = objc_opt_class();
    v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Loading preorder queue", &v52, 12);
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4];
      free(v10);
      v42 = v11;
      SSFileLog();
    }
  }

  v50 = 0;
  v12 = [(LoadPreorderQueueOperation *)self runSubOperation:_newURLOperation returningError:&v50, v42];
  if (v12)
  {
    v13 = [objc_msgSend(_newURLOperation "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKey:@"items"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = _newURLOperation;
        v15 = objc_alloc_init(NSMutableArray);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v16 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v47;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v47 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v46 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [[SSItem alloc] initWithItemDictionary:v20];
                if (v21)
                {
                  v22 = v21;
                  [v15 addObject:v21];
                }
              }
            }

            v17 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v17);
        }

        v23 = +[SSLogConfig sharedDaemonConfig];
        if (!v23)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v23 shouldLog];
        if ([v23 shouldLogToDisk])
        {
          v25 = shouldLog2 | 2;
        }

        else
        {
          v25 = shouldLog2;
        }

        oSLogObject2 = [v23 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v27 = v25;
        }

        else
        {
          v27 = v25 & 2;
        }

        if (v27)
        {
          v28 = objc_opt_class();
          v29 = [v15 count];
          v52 = 138412546;
          v53 = v28;
          v54 = 2048;
          v55 = v29;
          LODWORD(v44) = 22;
          v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Loaded %lu preorder items", &v52, v44);
          if (v30)
          {
            v31 = v30;
            v32 = [NSString stringWithCString:v30 encoding:4];
            free(v31);
            v43 = v32;
            SSFileLog();
          }
        }

        [(LoadPreorderQueueOperation *)self lock];

        self->_items = [v15 copy];
        [(LoadPreorderQueueOperation *)self unlock];

        _newURLOperation = v45;
      }
    }
  }

  else
  {
    v33 = +[SSLogConfig sharedDaemonConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v35 = shouldLog3 | 2;
    }

    else
    {
      v35 = shouldLog3;
    }

    oSLogObject3 = [v33 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 2;
    }

    if (v37)
    {
      v38 = objc_opt_class();
      v52 = 138412546;
      v53 = v38;
      v54 = 2112;
      v55 = v50;
      LODWORD(v44) = 22;
      v39 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not load preorder queue: %@", &v52, v44);
      if (v39)
      {
        v40 = v39;
        v41 = [NSString stringWithCString:v39 encoding:4];
        free(v40);
        v43 = v41;
        SSFileLog();
      }
    }
  }

  [(LoadPreorderQueueOperation *)self setError:v50, v43];
  [(LoadPreorderQueueOperation *)self setSuccess:v12];
}

- (id)_newURLOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setNeedsAuthentication:1];
  v4 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v4];

  v5 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  [v3 setAuthenticationContext:v5];

  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setCachePolicy:1];
  [v6 setURLBagKey:@"p2-pre-order-queue"];
  [v3 setRequestProperties:v6];

  return v3;
}

@end