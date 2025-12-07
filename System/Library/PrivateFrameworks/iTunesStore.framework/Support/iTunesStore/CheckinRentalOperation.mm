@interface CheckinRentalOperation
- (BOOL)_handleCheckinAckResponse:(id)response error:(id *)error;
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (BOOL)_runCheckinAckOperationWithResponseData:(id)data error:(id *)error;
- (CheckinRentalOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier;
- (CheckinRentalOperation)initWithCheckinRequest:(id)request;
- (CheckinRentalOperation)initWithSinfs:(id)sinfs;
- (NSNumber)accountIdentifier;
- (NSNumber)rentalKeyIdentifier;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSURLConnectionResponse)URLResponse;
- (id)_bodyData;
- (id)_bodyDataWithCheckinAckResponseData:(id)data;
- (void)_run;
- (void)dealloc;
- (void)setClientIdentifierHeader:(id)header;
- (void)setUserAgent:(id)agent;
@end

@implementation CheckinRentalOperation

- (CheckinRentalOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier
{
  if (![identifier unsignedLongLongValue] || !objc_msgSend(keyIdentifier, "unsignedLongLongValue"))
  {
    sub_100272318(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CheckinRentalOperation;
  v8 = [(CheckinRentalOperation *)&v10 init];
  if (v8)
  {
    v8->_accountIdentifier = [identifier copy];
    v8->_rentalKeyIdentifier = [keyIdentifier copy];
  }

  return v8;
}

- (CheckinRentalOperation)initWithSinfs:(id)sinfs
{
  if (![sinfs count])
  {
    sub_100272374(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CheckinRentalOperation;
  v6 = [(CheckinRentalOperation *)&v10 init];
  if (v6)
  {
    v7 = [sinfs copy];
    v6->_sinfs = v7;
    if (v7)
    {
      v8 = [[SinfsArray alloc] initWithSINFs:v6->_sinfs];
      v6->_accountIdentifier = [(SinfsArray *)v8 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];
      v6->_rentalKeyIdentifier = [(SinfsArray *)v8 copyValueForProperty:@"SinfPropertyFairPlayKeyIdentifier" error:0];
    }
  }

  return v6;
}

- (CheckinRentalOperation)initWithCheckinRequest:(id)request
{
  accountIdentifier = [request accountIdentifier];
  rentalKeyIdentifier = [request rentalKeyIdentifier];
  sinfs = [request sinfs];
  if (accountIdentifier && rentalKeyIdentifier)
  {

    return [(CheckinRentalOperation *)self initWithAccountIdentifier:accountIdentifier rentalKeyIdentifier:rentalKeyIdentifier];
  }

  else if (sinfs)
  {

    return [(CheckinRentalOperation *)self initWithSinfs:sinfs];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckinRentalOperation;
  [(CheckinRentalOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountIdentifier;

  return v2;
}

- (NSString)clientIdentifierHeader
{
  [(CheckinRentalOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(CheckinRentalOperation *)self unlock];
  return v3;
}

- (NSNumber)rentalKeyIdentifier
{
  v2 = self->_rentalKeyIdentifier;

  return v2;
}

- (void)setClientIdentifierHeader:(id)header
{
  [(CheckinRentalOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(CheckinRentalOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  [(CheckinRentalOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(CheckinRentalOperation *)self unlock];
}

- (SSURLConnectionResponse)URLResponse
{
  [(CheckinRentalOperation *)self lock];
  v3 = self->_urlResponse;
  [(CheckinRentalOperation *)self unlock];
  return v3;
}

- (NSString)userAgent
{
  [(CheckinRentalOperation *)self lock];
  v3 = self->_userAgent;
  [(CheckinRentalOperation *)self unlock];

  return v3;
}

- (id)_bodyData
{
  if (![(NSNumber *)self->_accountIdentifier unsignedLongLongValue]|| ![(NSNumber *)self->_rentalKeyIdentifier unsignedLongLongValue])
  {
LABEL_29:
    v4 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_30;
  }

  v3 = sub_1000B1E14();
  if (!v3)
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v37 = 138412290;
      v38 = objc_opt_class();
      v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not get rental bag", &v37, 12);
      if (v16)
      {
        v17 = v16;
        v18 = [NSString stringWithCString:v16 encoding:4];
        free(v17);
        v33 = v18;
        SSFileLog();
      }
    }

    goto LABEL_29;
  }

  v4 = v3;
  v35 = 0;
  v36 = 0;
  if ((sub_1000B208C(&v36, &v35) & 1) == 0)
  {
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      LODWORD(v27) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v27) = shouldLog2;
    }

    oSLogObject2 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v27;
    }

    else
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v29 = objc_opt_class();
      v37 = 138412290;
      v38 = v29;
      v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not get rental bag request", &v37, 12);
      if (v30)
      {
        v31 = v30;
        v32 = [NSString stringWithCString:v30 encoding:4];
        free(v31);
        v33 = v32;
        SSFileLog();
      }
    }

LABEL_30:
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog3;
    }

    oSLogObject3 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v37 = 138412290;
      v38 = v23;
      LODWORD(v34) = 12;
      v11 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not generate checkin request body", &v37, v34);
      if (!v11)
      {
        goto LABEL_42;
      }

      [NSString stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    v11 = 0;
    goto LABEL_42;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v5;
  if (v36)
  {
    [v5 setObject:v36 forKey:@"device-diversity"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v6 setObject:accountIdentifier forKey:@"dsid"];
  }

  guid = [+[ISDevice sharedInstance](ISDevice guid];
  if (guid)
  {
    [v6 setObject:guid forKey:@"guid"];
  }

  v9 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  if (v9)
  {
    [v6 setObject:v9 forKey:@"hw.model"];
  }

  if (v35)
  {
    [v6 setObject:v35 forKey:@"rbsync"];
  }

  [v6 setObject:v4 forKey:@"rental-bag"];
  rentalKeyIdentifier = self->_rentalKeyIdentifier;
  if (rentalKeyIdentifier)
  {
    [v6 setObject:rentalKeyIdentifier forKey:@"rental-id"];
  }

  v11 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:0];

LABEL_42:
  return v11;
}

- (id)_bodyDataWithCheckinAckResponseData:(id)data
{
  if (-[NSNumber unsignedLongLongValue](self->_accountIdentifier, "unsignedLongLongValue") && -[NSNumber unsignedLongLongValue](self->_rentalKeyIdentifier, "unsignedLongLongValue") && [data length])
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = v5;
    if (data)
    {
      [v5 setObject:data forKey:@"checkin-ack-sar"];
    }

    accountIdentifier = self->_accountIdentifier;
    if (accountIdentifier)
    {
      [v6 setObject:accountIdentifier forKey:@"dsid"];
    }

    guid = [+[ISDevice sharedInstance](ISDevice guid];
    if (guid)
    {
      [v6 setObject:guid forKey:@"guid"];
    }

    v9 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
    if (v9)
    {
      [v6 setObject:v9 forKey:@"hw.model"];
    }

    rentalKeyIdentifier = self->_rentalKeyIdentifier;
    if (rentalKeyIdentifier)
    {
      [v6 setObject:rentalKeyIdentifier forKey:@"rental-id"];
    }

    v11 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:0];

    return v11;
  }

  else
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not generate checkin ack request body", &v19, 12);
      if (v17)
      {
        v18 = v17;
        [NSString stringWithCString:v17 encoding:4];
        free(v18);
        SSFileLog();
      }
    }

    return 0;
  }
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  v24 = 0;
  v7 = [response objectForKey:kISFailureTypeKey];
  if (v7)
  {
    v8 = v7;
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v25 = 138412546;
      *&v25[4] = objc_opt_class();
      v26 = 2112;
      v27 = v8;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Received failure type: %@", v25, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v23 = v15;
        SSFileLog();
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v21 = ISError();
      goto LABEL_23;
    }

    [v8 intValue];
    v16 = SSError();
  }

  else
  {
    *v25 = 0;
    v17 = [response objectForKey:@"rental-bag-response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [response objectForKey:@"checkin-sar"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && sub_1000B2CB8(v17, v18))
      {
        v19 = [(CheckinRentalOperation *)self _runCheckinAckOperationWithResponseData:*v25 error:&v24];

        if (v19)
        {
          result = 1;
          goto LABEL_24;
        }
      }
    }

    v16 = ISError();
  }

  v21 = [v16 errorBySettingFatalError:{1, v23}];
LABEL_23:
  v22 = v21;
  result = 0;
  v24 = v22;
LABEL_24:
  if (error)
  {
    *error = v24;
  }

  return result;
}

- (BOOL)_handleCheckinAckResponse:(id)response error:(id *)error
{
  v5 = [response objectForKey:kISFailureTypeKey];
  v6 = v5;
  if (v5)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = v6;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Received failure type: %@", &v14, 22);
      if (v11)
      {
        v12 = v11;
        [NSString stringWithCString:v11 encoding:4];
        free(v12);
        SSFileLog();
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = ISError();
      if (!error)
      {
        return v6 == 0;
      }

      goto LABEL_16;
    }

    v5 = [ISError() errorBySettingFatalError:1];
  }

  if (error)
  {
LABEL_16:
    *error = v5;
  }

  return v6 == 0;
}

- (void)_run
{
  v20 = 0;
  _bodyData = [(CheckinRentalOperation *)self _bodyData];
  if (_bodyData)
  {
    v4 = objc_alloc_init(ISStoreURLOperation);
    v5 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountIdentifier];
    [v4 setAuthenticationContext:v5];

    v6 = objc_alloc_init(DaemonProtocolDataProvider);
    [v4 setDataProvider:v6];
    [(DaemonProtocolDataProvider *)v6 setShouldProcessDialogs:0];
    v7 = objc_alloc_init(SSMutableURLRequestProperties);
    [v7 setCachePolicy:1];
    [v7 setClientIdentifier:{-[CheckinRentalOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
    [v7 setHTTPBody:_bodyData];
    [v7 setHTTPMethod:@"POST"];
    [v7 setURLBagKey:@"rental-checkin"];
    userAgent = [(CheckinRentalOperation *)self userAgent];
    [v7 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
    [v4 setRequestProperties:v7];

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
      v21 = 138412290;
      v22 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Checking in rental", &v21, 12);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v19 = v15;
        SSFileLog();
      }
    }

    if ([(CheckinRentalOperation *)self runSubOperation:v4 returningError:&v20, v19])
    {
      output = [(DaemonProtocolDataProvider *)v6 output];
      _bodyData = [(CheckinRentalOperation *)self _handleResponse:output error:&v20];
      v17 = [NSPropertyListSerialization dataWithPropertyList:output format:100 options:0 error:0];
      [(CheckinRentalOperation *)self lock];

      self->_urlResponse = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v4 bodyData:{"response"), v17}];
      [(CheckinRentalOperation *)self unlock];
    }

    else
    {
      _bodyData = 0;
    }

    v18 = v20;
  }

  else
  {
    v18 = ISError();
    v20 = v18;
  }

  [(CheckinRentalOperation *)self setError:v18];
  [(CheckinRentalOperation *)self setSuccess:_bodyData];
}

- (BOOL)_runCheckinAckOperationWithResponseData:(id)data error:(id *)error
{
  v23 = 0;
  v6 = [(CheckinRentalOperation *)self _bodyDataWithCheckinAckResponseData:data];
  if (!v6)
  {
    v20 = 0;
    v23 = ISError();
    if (!error)
    {
      return v20;
    }

    goto LABEL_19;
  }

  v7 = v6;
  v8 = objc_alloc_init(ISStoreURLOperation);
  v9 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountIdentifier];
  [v8 setAuthenticationContext:v9];

  v10 = objc_alloc_init(DaemonProtocolDataProvider);
  [v8 setDataProvider:v10];
  [(DaemonProtocolDataProvider *)v10 setShouldProcessDialogs:0];
  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  [v11 setCachePolicy:1];
  [v11 setClientIdentifier:{-[CheckinRentalOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v11 setHTTPBody:v7];
  [v11 setHTTPMethod:@"POST"];
  [v11 setURLBagKey:@"rental-ack-checkin"];
  userAgent = [(CheckinRentalOperation *)self userAgent];
  [v11 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v8 setRequestProperties:v11];

  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog;
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v24 = 138412290;
    v25 = objc_opt_class();
    v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Acking rental checkin", &v24, 12);
    if (v17)
    {
      v18 = v17;
      v19 = [NSString stringWithCString:v17 encoding:4];
      free(v18);
      v22 = v19;
      SSFileLog();
    }
  }

  if ([(CheckinRentalOperation *)self runSubOperation:v8 returningError:&v23, v22])
  {
    v20 = [(CheckinRentalOperation *)self _handleCheckinAckResponse:[(DaemonProtocolDataProvider *)v10 output] error:&v23];
  }

  else
  {
    v20 = 0;
  }

  if (error)
  {
LABEL_19:
    *error = v23;
  }

  return v20;
}

@end