@interface CancelPreordersOperation
- (BOOL)_cancelPreorderWithOperation:(id)operation error:(id *)error;
- (id)_newURLOperationWithItemID:(id)d accountID:(id)iD;
- (void)run;
@end

@implementation CancelPreordersOperation

- (void)run
{
  v3 = +[DownloadsDatabase downloadsDatabase];
  v4 = objc_alloc_init(NSMutableDictionary);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001818DC;
  v21[3] = &unk_100327EE8;
  v21[4] = self;
  v21[5] = v4;
  [v3 readUsingTransactionBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    v14 = 1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_alloc_init(NSAutoreleasePool);
        v12 = [v4 objectForKey:v10];
        v16 = 0;
        if ([(CancelPreordersOperation *)self _cancelPreorderWithOperation:v12 error:&v16])
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_100181A74;
          v15[3] = &unk_100329E90;
          v15[4] = v10;
          [v3 modifyUsingTransactionBlock:v15];
        }

        else
        {
          if (!v7)
          {
            v7 = v16;
          }

          v14 = 0;
        }

        [v11 drain];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v14 = 1;
  }

  v13 = v7;
  [(CancelPreordersOperation *)self setError:v7];
  [(CancelPreordersOperation *)self setSuccess:v14 & 1];
}

- (BOOL)_cancelPreorderWithOperation:(id)operation error:(id *)error
{
  v26 = 0;
  LODWORD(v6) = [(CancelPreordersOperation *)self runSubOperation:operation returningError:&v26];
  if (v6)
  {
    v7 = [objc_msgSend(operation "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:kISFailureTypeKey];
      if (v8)
      {
        v9 = v8;
        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          LODWORD(v12) = shouldLog | 2;
        }

        else
        {
          LODWORD(v12) = shouldLog;
        }

        oSLogObject = [v10 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v12;
        }

        else
        {
          v12 &= 2u;
        }

        if (v12)
        {
          v14 = objc_opt_class();
          v27 = 138412546;
          v28 = v14;
          v29 = 2112;
          v30 = v9;
          v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cancel failed with failureType: %@", &v27, 22);
          if (v15)
          {
            v16 = v15;
            [NSString stringWithCString:v15 encoding:4];
            free(v16);
            SSFileLog();
          }
        }

        if (objc_opt_respondsToSelector())
        {
          [v9 intValue];
        }

        v24 = SSError();
        LOBYTE(v6) = 0;
        v26 = v24;
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }

    else
    {
      v17 = +[SSLogConfig sharedDaemonConfig];
      if (!v17)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        LODWORD(v19) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v19) = shouldLog2;
      }

      oSLogObject2 = [v17 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v19;
      }

      else
      {
        v19 &= 2u;
      }

      if (v19)
      {
        v21 = objc_opt_class();
        v22 = objc_opt_class();
        v27 = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        v6 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Invalid response type: %@", &v27, 22);
        if (!v6)
        {
          goto LABEL_31;
        }

        v23 = v6;
        [NSString stringWithCString:v6 encoding:4];
        free(v23);
        SSFileLog();
      }

      LOBYTE(v6) = 0;
    }
  }

LABEL_31:
  if (error)
  {
    *error = v26;
  }

  return v6;
}

- (id)_newURLOperationWithItemID:(id)d accountID:(id)iD
{
  v6 = objc_alloc_init(ISStoreURLOperation);
  [v6 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v6 setNeedsAuthentication:1];
  v7 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:iD];
  [v6 setAuthenticationContext:v7];

  v8 = objc_alloc_init(SSMutableURLRequestProperties);
  [v8 setURLBagKey:@"p2-cancel-pre-order"];
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:objc_msgSend(d forKey:{"stringValue"), @"id"}];
  [v8 setRequestParameters:v9];

  [v6 setRequestProperties:v8];
  return v6;
}

@end