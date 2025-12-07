@interface LoadMicroPaymentQueueCountOperation
- (BOOL)_loadCountReturningError:(id *)error;
- (BOOL)_setCountWithResponse:(id)response error:(id *)error;
- (void)dealloc;
- (void)run;
@end

@implementation LoadMicroPaymentQueueCountOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMicroPaymentQueueCountOperation;
  [(LoadMicroPaymentQueueCountOperation *)&v3 dealloc];
}

- (void)run
{
  v22 = 0;
  request = [(LoadMicroPaymentQueueCountOperation *)self request];
  lastQueueCheckDate = [(LoadMicroPaymentQueueCountOperation *)self lastQueueCheckDate];
  if (lastQueueCheckDate && (v5 = lastQueueCheckDate, -[NSDate timeIntervalSinceNow](lastQueueCheckDate, "timeIntervalSinceNow"), v6 < 2.22044605e-16) && (v7 = [-[LoadMicroPaymentQueueCountOperation loadedURLBagWithContext:returningError:](self loadedURLBagWithContext:+[SSURLBagContext contextWithBagType:](SSURLBagContext returningError:{"contextWithBagType:", -[MicroPaymentQueueRequest URLBagType](request, "URLBagType")), 0), "valueForKey:", @"p2-in-app-download-queue-check-interval"}]) != 0 && (v8 = v7, -[NSDate timeIntervalSinceNow](v5, "timeIntervalSinceNow"), v10 = v9, objc_msgSend(v8, "doubleValue"), v10 >= -v11))
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      clientIdentity = [(MicroPaymentQueueRequest *)request clientIdentity];
      v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Throttling queue check for client: %@", &v23, 22);
      if (v18)
      {
        v19 = v18;
        v20 = [NSString stringWithCString:v18 encoding:4];
        free(v19);
        v21 = v20;
        SSFileLog();
      }
    }

    v13 = SSError();
    v12 = 0;
    v22 = v13;
  }

  else
  {
    v12 = [(LoadMicroPaymentQueueCountOperation *)self _loadCountReturningError:&v22];
    v13 = v22;
  }

  [(LoadMicroPaymentQueueCountOperation *)self setError:v13, v21];
  [(LoadMicroPaymentQueueCountOperation *)self setSuccess:v12];
}

- (BOOL)_loadCountReturningError:(id *)error
{
  v21 = 0;
  request = [(LoadMicroPaymentQueueCountOperation *)self request];
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
  [v8 setURLBagKey:{-[LoadMicroPaymentQueueCountOperation URLBagKey](self, "URLBagKey")}];
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
    uRLBagKey = [(LoadMicroPaymentQueueCountOperation *)self URLBagKey];
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

  if ([(LoadMicroPaymentQueueCountOperation *)self runSubOperation:v6 returningError:&v21, v20])
  {
    v18 = [(LoadMicroPaymentQueueCountOperation *)self _setCountWithResponse:[(DaemonProtocolDataProvider *)v7 output] error:&v21];
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

- (BOOL)_setCountWithResponse:(id)response error:(id *)error
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v13 = ISError();
    if (!error)
    {
      return isKindOfClass & 1;
    }

    goto LABEL_16;
  }

  v8 = [response objectForKey:@"download-queue-item-count"];
  if (objc_opt_respondsToSelector())
  {
    -[LoadMicroPaymentQueueCountOperation setQueueItemCount:](self, "setQueueItemCount:", [v8 intValue]);
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    LODWORD(v11) = [v9 shouldLogToDisk] ? shouldLog | 2 : shouldLog;
    oSLogObject = [v9 OSLogObject];
    v11 = os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO) ? v11 : v11 & 2u;
    if (v11)
    {
      v16 = 138412802;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      uRLBagKey = [(LoadMicroPaymentQueueCountOperation *)self URLBagKey];
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Server claims %@ items for %@", &v16, 32);
      if (!v13)
      {
        goto LABEL_15;
      }

      v14 = v13;
      [NSString stringWithCString:v13 encoding:4];
      free(v14);
      SSFileLog();
    }
  }

  v13 = 0;
LABEL_15:
  if (error)
  {
LABEL_16:
    *error = v13;
  }

  return isKindOfClass & 1;
}

@end