@interface GetAutomaticDownloadKindsOperation
- (NSArray)enabledDownloadKinds;
- (SSAuthenticationContext)authenticationContext;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)context;
@end

@implementation GetAutomaticDownloadKindsOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GetAutomaticDownloadKindsOperation;
  [(GetAutomaticDownloadKindsOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(GetAutomaticDownloadKindsOperation *)self lock];
  v3 = self->_authContext;
  [(GetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (NSArray)enabledDownloadKinds
{
  [(GetAutomaticDownloadKindsOperation *)self lock];
  v3 = self->_enabledDownloadKinds;
  [(GetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  [(GetAutomaticDownloadKindsOperation *)self lock];
  authContext = self->_authContext;
  if (authContext != context)
  {

    self->_authContext = [context copy];
  }

  [(GetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setAuthenticationContext:{-[GetAutomaticDownloadKindsOperation authenticationContext](self, "authenticationContext")}];
  [v3 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v3 setUseUserSpecificURLBag:1];
  v4 = objc_alloc_init(SSMutableURLRequestProperties);
  [v4 setURLBagKey:@"enabled-media-types"];
  [v3 setRequestProperties:v4];

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v35 = 138412290;
    v36 = objc_opt_class();
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Fetching enabled kinds", &v35, 12);
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4];
      free(v10);
      v31 = v11;
      SSFileLog();
    }
  }

  v34 = 0;
  v12 = [(GetAutomaticDownloadKindsOperation *)self runSubOperation:v3 returningError:&v34, v31];
  if (v12)
  {
    v13 = [objc_msgSend(v3 "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKey:@"enabled-media-kinds"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = +[SSLogConfig sharedDaemonConfig];
        if (!v15)
        {
          v15 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v15 shouldLog];
        if ([v15 shouldLogToDisk])
        {
          LODWORD(v17) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v17) = shouldLog2;
        }

        oSLogObject2 = [v15 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v17 = v17;
        }

        else
        {
          v17 &= 2u;
        }

        if (v17)
        {
          v19 = objc_opt_class();
          v35 = 138412546;
          v36 = v19;
          v37 = 2112;
          v38 = v14;
          LODWORD(v33) = 22;
          v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Found enabled kinds: %@", &v35, v33);
          if (v20)
          {
            v21 = v20;
            v22 = [NSString stringWithCString:v20 encoding:4];
            free(v21);
            v32 = v22;
            SSFileLog();
          }
        }

        [(GetAutomaticDownloadKindsOperation *)self lock];

        self->_enabledDownloadKinds = v14;
        [(GetAutomaticDownloadKindsOperation *)self unlock];
      }
    }
  }

  else
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog3;
    }

    oSLogObject3 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v35 = 138412546;
      v36 = v27;
      v37 = 2112;
      v38 = v34;
      LODWORD(v33) = 22;
      v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not fetch kinds: %@", &v35, v33);
      if (v28)
      {
        v29 = v28;
        v30 = [NSString stringWithCString:v28 encoding:4];
        free(v29);
        v32 = v30;
        SSFileLog();
      }
    }
  }

  [(GetAutomaticDownloadKindsOperation *)self setError:v34, v32];
  [(GetAutomaticDownloadKindsOperation *)self setSuccess:v12];
}

@end