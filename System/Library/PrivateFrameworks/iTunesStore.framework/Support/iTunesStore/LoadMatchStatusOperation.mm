@interface LoadMatchStatusOperation
- (LoadMatchStatusOperation)initWithAccountIdentifier:(id)identifier;
- (NSString)userAgent;
- (id)_newMatchStatusOperationWithURLBag:(id)bag;
- (unint64_t)matchStatus;
- (void)dealloc;
- (void)run;
- (void)setUserAgent:(id)agent;
@end

@implementation LoadMatchStatusOperation

- (LoadMatchStatusOperation)initWithAccountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = LoadMatchStatusOperation;
  v4 = [(LoadMatchStatusOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = [identifier copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMatchStatusOperation;
  [(LoadMatchStatusOperation *)&v3 dealloc];
}

- (unint64_t)matchStatus
{
  [(LoadMatchStatusOperation *)self lock];
  matchStatus = self->_matchStatus;
  [(LoadMatchStatusOperation *)self unlock];
  return matchStatus;
}

- (void)setUserAgent:(id)agent
{
  [(LoadMatchStatusOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(LoadMatchStatusOperation *)self unlock];
}

- (NSString)userAgent
{
  [(LoadMatchStatusOperation *)self lock];
  v3 = self->_userAgent;
  [(LoadMatchStatusOperation *)self unlock];

  return v3;
}

- (void)run
{
  v39 = 0;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    accountID = self->_accountID;
    v40 = 138412546;
    v41 = v7;
    v42 = 2112;
    v43 = accountID;
    v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Loading match status for account: %@", &v40, 22);
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4];
      free(v10);
      v36 = v11;
      SSFileLog();
    }
  }

  v12 = [SSURLBagContext contextWithBagType:0, v36];
  [(SSURLBagContext *)v12 setIgnoresCaches:1];
  [(SSURLBagContext *)v12 setUserIdentifier:self->_accountID];
  userAgent = [(LoadMatchStatusOperation *)self userAgent];
  [(SSURLBagContext *)v12 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v14 = [(LoadMatchStatusOperation *)self loadedURLBagWithContext:v12 returningError:&v39];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 valueForKey:@"isMatchServiceEnabled"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v16 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [v15 valueForKey:@"cloud-welcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue |= 2uLL;
    }

    v18 = [(LoadMatchStatusOperation *)self _newMatchStatusOperationWithURLBag:v15];
    if (v18)
    {
      v19 = v18;
      if ([(LoadMatchStatusOperation *)self runSubOperation:v18 returningError:&v39])
      {
        v20 = [objc_msgSend(objc_msgSend(v19 "dataProvider")];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 BOOLValue])
        {
          bOOLValue |= 4uLL;
        }

        v21 = +[SSLogConfig sharedDaemonConfig];
        if (!v21)
        {
          v21 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v21 shouldLog];
        if ([v21 shouldLogToDisk])
        {
          LODWORD(v23) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v23) = shouldLog2;
        }

        oSLogObject2 = [v21 OSLogObject];
        v25 = 1;
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v23 = v23;
        }

        else
        {
          v23 &= 2u;
        }

        if (!v23)
        {
          goto LABEL_48;
        }

        v26 = objc_opt_class();
        v27 = self->_accountID;
        v40 = 138412802;
        v41 = v26;
        v42 = 2048;
        v43 = bOOLValue;
        v44 = 2112;
        v45 = v27;
        LODWORD(v38) = 32;
        v28 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Loaded match status: %ld for account: %@", &v40, v38);
        if (!v28)
        {
          goto LABEL_48;
        }

LABEL_46:
        v34 = v28;
        v35 = [NSString stringWithCString:v28 encoding:4];
        free(v34);
        v37 = v35;
        SSFileLog();
        goto LABEL_48;
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    LODWORD(v31) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v31) = shouldLog3;
  }

  oSLogObject3 = [v29 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v31;
  }

  else
  {
    v31 &= 2u;
  }

  if (!v31)
  {
    v25 = 0;
    goto LABEL_48;
  }

  v33 = objc_opt_class();
  v40 = 138412546;
  v41 = v33;
  v42 = 2112;
  v43 = v39;
  LODWORD(v38) = 22;
  v28 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not load match status: %@", &v40, v38);
  v25 = 0;
  if (v28)
  {
    goto LABEL_46;
  }

LABEL_48:
  [(LoadMatchStatusOperation *)self lock];
  self->_matchStatus = bOOLValue;
  [(LoadMatchStatusOperation *)self unlock];
  [(LoadMatchStatusOperation *)self setError:v39];
  [(LoadMatchStatusOperation *)self setSuccess:v25];
}

- (id)_newMatchStatusOperationWithURLBag:(id)bag
{
  v4 = [bag valueForKey:@"getMatchStatusSrv"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = objc_alloc_init(ISStoreURLOperation);
  [v5 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v5 setUseUserSpecificURLBag:1];
  v6 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  userAgent = [(LoadMatchStatusOperation *)self userAgent];
  v8 = SSHTTPHeaderUserAgent;
  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v5 setAuthenticationContext:v6];

  v9 = [[SSMutableURLRequestProperties alloc] initWithURL:{+[NSURL URLWithString:](NSURL, "URLWithString:", v4)}];
  [v9 setITunesStoreRequest:1];
  [v9 setValue:-[LoadMatchStatusOperation userAgent](self forHTTPHeaderField:{"userAgent"), v8}];
  [v5 setRequestProperties:v9];

  return v5;
}

@end