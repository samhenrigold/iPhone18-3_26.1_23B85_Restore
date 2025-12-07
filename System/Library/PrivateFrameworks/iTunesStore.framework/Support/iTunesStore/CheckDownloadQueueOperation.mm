@interface CheckDownloadQueueOperation
- (CheckDownloadQueueOperation)initWithDownloadQueueRequest:(id)request;
- (StoreDownloadQueueRequest)downloadQueueRequest;
- (id)_account;
- (id)_newURLOperation;
- (int64_t)numberOfAvailableDownloads;
- (void)_runPendingCancelDownloadOperations;
- (void)dealloc;
- (void)run;
@end

@implementation CheckDownloadQueueOperation

- (CheckDownloadQueueOperation)initWithDownloadQueueRequest:(id)request
{
  if (!request)
  {
    sub_100272190(a2, self);
  }

  v7.receiver = self;
  v7.super_class = CheckDownloadQueueOperation;
  v5 = [(CheckDownloadQueueOperation *)&v7 init];
  if (v5)
  {
    v5->_request = [request copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckDownloadQueueOperation;
  [(CheckDownloadQueueOperation *)&v3 dealloc];
}

- (StoreDownloadQueueRequest)downloadQueueRequest
{
  v2 = [(StoreDownloadQueueRequest *)self->_request copy];

  return v2;
}

- (int64_t)numberOfAvailableDownloads
{
  [(CheckDownloadQueueOperation *)self lock];
  numberOfAvailableDownloads = self->_numberOfAvailableDownloads;
  [(CheckDownloadQueueOperation *)self unlock];
  return numberOfAvailableDownloads;
}

- (void)run
{
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
    request = self->_request;
    v36 = 138412546;
    v37 = v7;
    v38 = 2112;
    v39 = request;
    v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Running request: %@", &v36, 22);
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4];
      free(v10);
      v32 = v11;
      SSFileLog();
    }
  }

  [(CheckDownloadQueueOperation *)self _runPendingCancelDownloadOperations];
  v35 = 0;
  _newURLOperation = [(CheckDownloadQueueOperation *)self _newURLOperation];
  if (([(CheckDownloadQueueOperation *)self runSubOperation:_newURLOperation returningError:&v35]& 1) != 0)
  {
    v13 = [objc_msgSend(objc_msgSend(_newURLOperation "dataProvider")];
    if (objc_opt_respondsToSelector())
    {
      intValue = [v13 intValue];
    }

    else
    {
      intValue = 0;
    }

    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog2;
    }

    oSLogObject2 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
      v28 = self->_request;
      v36 = 138412802;
      v37 = v27;
      v38 = 2048;
      v39 = intValue;
      v40 = 2112;
      v41 = v28;
      LODWORD(v34) = 32;
      v29 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Found %ld downloads for request: %@", &v36, v34);
      if (v29)
      {
        v30 = v29;
        v31 = [NSString stringWithCString:v29 encoding:4];
        free(v30);
        v33 = v31;
        SSFileLog();
      }
    }

    [(CheckDownloadQueueOperation *)self lock];
    self->_numberOfAvailableDownloads = intValue;
    [(CheckDownloadQueueOperation *)self unlock];
    [(CheckDownloadQueueOperation *)self setSuccess:1];
  }

  else
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog3;
    }

    oSLogObject3 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
      v20 = self->_request;
      v36 = 138412802;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      v40 = 2112;
      v41 = v35;
      LODWORD(v34) = 32;
      v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Request %@ failed: %@", &v36, v34);
      if (v21)
      {
        v22 = v21;
        [NSString stringWithCString:v21 encoding:4];
        free(v22);
        SSFileLog();
      }
    }
  }
}

- (id)_account
{
  accountIdentifier = [(StoreDownloadQueueRequest *)self->_request accountIdentifier];
  if (!accountIdentifier || (result = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")]) == 0)
  {
    v4 = +[SSAccountStore defaultStore];

    return [v4 activeAccount];
  }

  return result;
}

- (id)_newURLOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setUseUserSpecificURLBag:1];
  _account = [(CheckDownloadQueueOperation *)self _account];
  v5 = [[SSAuthenticationContext alloc] initWithAccount:_account];
  [v3 setAuthenticationContext:v5];

  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setAllowedRetryCount:0];
  [v6 setCachePolicy:1];
  [v6 setURLBagKey:{-[StoreDownloadQueueRequest queueCountURLBagKey](self->_request, "queueCountURLBagKey")}];
  [_account accountScope];
  [v6 setURLBagType:SSURLBagTypeForAccountScope()];
  [v3 setRequestProperties:v6];

  v7 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v7];

  return v3;
}

- (void)_runPendingCancelDownloadOperations
{
  v3 = objc_alloc_init(FinishDownloadsOperation);
  [(CheckDownloadQueueOperation *)self runSubOperation:v3 returningError:0];
}

@end