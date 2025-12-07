@interface LoadMicroPaymentQueuePaymentsOperation
- (BOOL)_appendRangeRequestsToResponse:(id)response error:(id *)error;
- (BOOL)_loadResponseReturningError:(id *)error;
- (BOOL)_parsePropertyList:(id)list error:(id *)error;
- (void)dealloc;
- (void)run;
@end

@implementation LoadMicroPaymentQueuePaymentsOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMicroPaymentQueuePaymentsOperation;
  [(LoadMicroPaymentQueuePaymentsOperation *)&v3 dealloc];
}

- (void)run
{
  v4 = 0;
  v3 = [(LoadMicroPaymentQueuePaymentsOperation *)self _loadResponseReturningError:&v4];
  [(LoadMicroPaymentQueuePaymentsOperation *)self setError:v4];
  [(LoadMicroPaymentQueuePaymentsOperation *)self setSuccess:v3];
}

- (BOOL)_appendRangeRequestsToResponse:(id)response error:(id *)error
{
  v22 = 0;
  request = [(LoadMicroPaymentQueuePaymentsOperation *)self request];
  uRLBagKey = [(LoadMicroPaymentQueuePaymentsOperation *)self URLBagKey];
  responseCopy = response;
  rangesToLoad = [response rangesToLoad];
  v10 = [rangesToLoad count];
  if (v10 < 1)
  {
    LOBYTE(v16) = 1;
    if (!error)
    {
      return v16;
    }

    goto LABEL_11;
  }

  v11 = v10;
  errorCopy = error;
  v12 = 2;
  do
  {
    v13 = objc_alloc_init(NSAutoreleasePool);
    v14 = objc_alloc_init(LoadMicroPaymentQueuePaymentsOperation);
    [(LoadMicroPaymentQueuePaymentsOperation *)v14 setURLBagKey:uRLBagKey];
    v15 = [(MicroPaymentQueueRequest *)request copy];
    [v15 setRangeEndIdentifier:{objc_msgSend(rangesToLoad, "objectAtIndex:", v12 - 1)}];
    [v15 setRangeStartIdentifier:{objc_msgSend(rangesToLoad, "objectAtIndex:", v12 - 2)}];
    [(LoadMicroPaymentQueuePaymentsOperation *)v14 setRequest:v15];
    v16 = [(LoadMicroPaymentQueuePaymentsOperation *)self runSubOperation:v14 returningError:&v22];
    if (v16)
    {
      [responseCopy appendResponse:{-[LoadMicroPaymentQueuePaymentsOperation response](v14, "response")}];
    }

    else
    {
      v17 = v22;
    }

    [v13 drain];
    if (v12 < v11)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v12 += 2;
  }

  while ((v18 & 1) != 0);
  error = errorCopy;
  if (errorCopy)
  {
LABEL_11:
    *error = v22;
  }

  return v16;
}

- (BOOL)_loadResponseReturningError:(id *)error
{
  v21 = 0;
  request = [(LoadMicroPaymentQueuePaymentsOperation *)self request];
  v6 = [(MicroPaymentQueueRequest *)request newStoreURLOperation:&v21];
  [v6 setDelegate:self];
  if (!v6)
  {
    v18 = 0;
    if (!error)
    {
      return v18;
    }

    goto LABEL_19;
  }

  v7 = objc_alloc_init(DaemonProtocolDataProvider);
  [v6 setDataProvider:v7];
  v8 = [objc_msgSend(v6 "requestProperties")];
  [v8 setURLBagKey:{-[LoadMicroPaymentQueuePaymentsOperation URLBagKey](self, "URLBagKey")}];
  [v6 setRequestProperties:v8];

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v13 = objc_opt_class();
    uRLBagKey = [(LoadMicroPaymentQueuePaymentsOperation *)self URLBagKey];
    v22 = 138412802;
    v23 = v13;
    v24 = 2112;
    v25 = uRLBagKey;
    v26 = 2112;
    v27 = request;
    v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Running %@ request: %@", &v22, 32);
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4];
      free(v16);
      v20 = v17;
      SSFileLog();
    }
  }

  if ([(LoadMicroPaymentQueuePaymentsOperation *)self runSubOperation:v6 returningError:&v21, v20])
  {
    v18 = [(LoadMicroPaymentQueuePaymentsOperation *)self _parsePropertyList:[(DaemonProtocolDataProvider *)v7 output] error:&v21];
  }

  else
  {
    v18 = 0;
  }

  [v6 setDelegate:0];
  if (error)
  {
LABEL_19:
    *error = v21;
  }

  return v18;
}

- (BOOL)_parsePropertyList:(id)list error:(id *)error
{
  v37 = 0;
  v7 = objc_alloc_init(MicroPaymentQueueResponse);
  [(MicroPaymentQueueResponse *)v7 setUserIdentifier:[(MicroPaymentQueueRequest *)[(LoadMicroPaymentQueuePaymentsOperation *)self request] userIdentifier]];
  v8 = [(MicroPaymentQueueResponse *)v7 loadFromPropertyList:list];
  v9 = +[SSLogConfig sharedDaemonConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v38 = 138412802;
      v39 = objc_opt_class();
      v40 = 2048;
      *v41 = [(NSArray *)[(MicroPaymentQueueResponse *)v7 payments] count];
      *&v41[8] = 2112;
      *&v41[10] = [(LoadMicroPaymentQueuePaymentsOperation *)self request];
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Fetched %lu payments for %@", &v38, 32);
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4];
        free(v15);
        v34 = v16;
        SSFileLog();
      }
    }

    if ([(LoadMicroPaymentQueuePaymentsOperation *)self _appendRangeRequestsToResponse:v7 error:&v37, v34])
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
        v22 = [(NSData *)[(MicroPaymentQueueResponse *)v7 appReceipt] length];
        bundleIdentifier = [(StoreKitClientIdentity *)[(MicroPaymentQueueRequest *)[(LoadMicroPaymentQueuePaymentsOperation *)self request] clientIdentity] bundleIdentifier];
        v38 = 138412802;
        v39 = v21;
        v40 = 1024;
        *v41 = v22;
        *&v41[4] = 2112;
        *&v41[6] = bundleIdentifier;
        LODWORD(v36) = 28;
        v24 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[%@] Deciding to write receipt: %d bytes -- %@", &v38, v36);
        if (v24)
        {
          v25 = v24;
          v26 = [NSString stringWithCString:v24 encoding:4];
          free(v25);
          v35 = v26;
          SSFileLog();
        }
      }

      if ([(NSData *)[(MicroPaymentQueueResponse *)v7 appReceipt] length])
      {
        [AppReceipt writeReceipt:[(MicroPaymentQueueResponse *)v7 appReceipt] forStoreKitClient:[(MicroPaymentQueueRequest *)[(LoadMicroPaymentQueuePaymentsOperation *)self request] clientIdentity]];
      }

      [(LoadMicroPaymentQueuePaymentsOperation *)self setResponse:v7];
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v29) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v29) = shouldLog3;
    }

    oSLogObject3 = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v38 = 138412290;
      v39 = objc_opt_class();
      v31 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Received invalid response", &v38, 12);
      if (v31)
      {
        v32 = v31;
        [NSString stringWithCString:v31 encoding:4];
        free(v32);
        SSFileLog();
      }
    }

    v27 = 0;
    v37 = ISError();
  }

  if (error)
  {
    *error = v37;
  }

  return v27;
}

@end