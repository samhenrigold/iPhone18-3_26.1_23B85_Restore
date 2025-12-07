@interface CheckPreorderQueueOperation
- (CheckPreorderQueueOperation)initWithAccountIdentifier:(id)identifier;
- (NSNumber)accountIdentifier;
- (id)_newURLOperation;
- (int64_t)numberOfPreordersInQueue;
- (void)dealloc;
- (void)run;
@end

@implementation CheckPreorderQueueOperation

- (CheckPreorderQueueOperation)initWithAccountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CheckPreorderQueueOperation;
  v4 = [(CheckPreorderQueueOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = identifier;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckPreorderQueueOperation;
  [(CheckPreorderQueueOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountID;

  return v2;
}

- (int64_t)numberOfPreordersInQueue
{
  [(CheckPreorderQueueOperation *)self lock];
  numberOfPreorders = self->_numberOfPreorders;
  [(CheckPreorderQueueOperation *)self unlock];
  return numberOfPreorders;
}

- (void)run
{
  _newURLOperation = [(CheckPreorderQueueOperation *)self _newURLOperation];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v34 = 138412290;
    v35 = objc_opt_class();
    v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Checking preorder queue", &v34, 12);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v30 = v10;
      SSFileLog();
    }
  }

  v33 = 0;
  v11 = [(CheckPreorderQueueOperation *)self runSubOperation:_newURLOperation returningError:&v33, v30];
  if (v11)
  {
    v12 = [objc_msgSend(_newURLOperation "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKey:@"pre-order-queue-count"];
      if (objc_opt_respondsToSelector())
      {
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          LODWORD(v16) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v16) = shouldLog2;
        }

        oSLogObject2 = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v16 = v16;
        }

        else
        {
          v16 &= 2u;
        }

        if (v16)
        {
          v18 = objc_opt_class();
          v34 = 138412546;
          v35 = v18;
          v36 = 2112;
          v37 = v13;
          LODWORD(v32) = 22;
          v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Found %@ preorders in the queue", &v34, v32);
          if (v19)
          {
            v20 = v19;
            v21 = [NSString stringWithCString:v19 encoding:4];
            free(v20);
            v31 = v21;
            SSFileLog();
          }
        }

        [(CheckPreorderQueueOperation *)self lock];
        self->_numberOfPreorders = [v13 intValue];
        [(CheckPreorderQueueOperation *)self unlock];
      }
    }
  }

  else
  {
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog3;
    }

    oSLogObject3 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v34 = 138412546;
      v35 = v26;
      v36 = 2112;
      v37 = v33;
      LODWORD(v32) = 22;
      v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not check preorder queue: %@", &v34, v32);
      if (v27)
      {
        v28 = v27;
        v29 = [NSString stringWithCString:v27 encoding:4];
        free(v28);
        v31 = v29;
        SSFileLog();
      }
    }
  }

  [(CheckPreorderQueueOperation *)self setError:v33, v31];
  [(CheckPreorderQueueOperation *)self setSuccess:v11];
}

- (id)_newURLOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v4];

  v5 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  [v3 setAuthenticationContext:v5];

  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setCachePolicy:1];
  [v6 setURLBagKey:@"p2-check-pre-order-queue"];
  [v3 setRequestProperties:v6];

  return v3;
}

@end