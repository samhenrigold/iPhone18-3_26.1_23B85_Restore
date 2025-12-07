@interface SyncRentalOperation
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (SyncRentalOperation)initWithAccountIdentifier:(id)identifier;
- (SyncRentalOperation)initWithSinfs:(id)sinfs;
- (id)_bodyData;
- (void)_run;
@end

@implementation SyncRentalOperation

- (SyncRentalOperation)initWithSinfs:(id)sinfs
{
  sinfsCopy = sinfs;
  if (![sinfsCopy count])
  {
    sub_10027202C(a2, self);
  }

  v13.receiver = self;
  v13.super_class = SyncRentalOperation;
  v6 = [(SyncRentalOperation *)&v13 init];
  if (v6)
  {
    v7 = [sinfsCopy copy];
    sinfs = v6->_sinfs;
    v6->_sinfs = v7;

    if (v6->_sinfs)
    {
      v9 = [[SinfsArray alloc] initWithSINFs:v6->_sinfs];
      v10 = [(SinfsArray *)v9 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v10;
    }
  }

  return v6;
}

- (SyncRentalOperation)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy unsignedLongLongValue])
  {
    sub_1002720A0(a2, self);
  }

  v10.receiver = self;
  v10.super_class = SyncRentalOperation;
  v6 = [(SyncRentalOperation *)&v10 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    accountIdentifier = v6->_accountIdentifier;
    v6->_accountIdentifier = v7;
  }

  return v6;
}

- (id)_bodyData
{
  if ([(NSNumber *)self->_accountIdentifier unsignedLongLongValue])
  {
    v3 = sub_1000B1E14();
    if (v3)
    {
      v4 = v3;
      v34 = 0;
      v35 = 0;
      v5 = sub_1000B208C(&v35, &v34);
      v6 = v35;
      v7 = v34;
      if (v5)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = v8;
        if (v6)
        {
          [v8 setObject:v6 forKey:@"device-diversity"];
        }

        accountIdentifier = self->_accountIdentifier;
        if (accountIdentifier)
        {
          [v9 setObject:accountIdentifier forKey:@"dsid"];
        }

        v11 = +[ISDevice sharedInstance];
        guid = [v11 guid];

        if (guid)
        {
          [v9 setObject:guid forKey:@"guid"];
        }

        v13 = +[SSDevice currentDevice];
        productType = [v13 productType];

        if (productType)
        {
          [v9 setObject:productType forKey:@"hw.model"];
        }

        if (v7)
        {
          [v9 setObject:v7 forKey:@"rbsync"];
        }

        [v9 setObject:v4 forKey:@"rental-bag"];
        v15 = [NSPropertyListSerialization dataWithPropertyList:v9 format:100 options:0 error:0];
        goto LABEL_54;
      }

      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        LODWORD(v22) = shouldLog | 2;
      }

      else
      {
        LODWORD(v22) = shouldLog;
      }

      oSLogObject = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (!v22)
      {
        goto LABEL_39;
      }

      v24 = objc_opt_class();
      v36 = 138412290;
      v37 = v24;
      v25 = v24;
      v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not get rental bag request", &v36, 12);

      if (v26)
      {
        oSLogObject = [NSString stringWithCString:v26 encoding:4];
        free(v26);
        v32 = oSLogObject;
        SSFileLog();
LABEL_39:
      }
    }

    else
    {
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog2;
      }

      oSLogObject2 = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v36 = 138412290;
        v37 = objc_opt_class();
        v20 = v37;
        v6 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not get rental bag", &v36, 12);

        if (!v6)
        {
          v4 = 0;
          v7 = 0;
          goto LABEL_41;
        }

        oSLogObject2 = [NSString stringWithCString:v6 encoding:4];
        free(v6);
        v32 = oSLogObject2;
        SSFileLog();
      }

      v4 = 0;
      v7 = 0;
      v6 = 0;
    }

LABEL_41:

    goto LABEL_42;
  }

  v4 = 0;
  v7 = 0;
  v6 = 0;
LABEL_42:
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v28) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v28) = shouldLog3;
  }

  productType = [v9 OSLogObject];
  if (os_log_type_enabled(productType, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v28;
  }

  else
  {
    v28 &= 2u;
  }

  if (v28)
  {
    v29 = objc_opt_class();
    v36 = 138412290;
    v37 = v29;
    v30 = v29;
    LODWORD(v33) = 12;
    v15 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, productType, 0, "%@: Could not generate sync request body", &v36, v33);

    if (!v15)
    {
      goto LABEL_55;
    }

    productType = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog();
  }

  v15 = 0;
LABEL_54:

LABEL_55:

  return v15;
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v5 = [responseCopy objectForKey:kISFailureTypeKey];
  v6 = [responseCopy objectForKey:@"rental-bag-response"];
  v7 = v6;
  if (v5)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v46 = 138412546;
      v47 = objc_opt_class();
      v48 = 2112;
      v49 = v5;
      v12 = v47;
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Received failure type: %@", &v46, 22);

      if (!v13)
      {
LABEL_14:

        if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 intValue] == 5102)
        {
          v14 = ISError();
          v15 = [v14 errorBySettingFatalError:1];
        }

        else
        {
          v15 = ISError();
        }

        goto LABEL_35;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      v43 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v6)
  {
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      LODWORD(v29) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v29) = shouldLog2;
    }

    oSLogObject2 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v46 = 138412290;
      v47 = objc_opt_class();
      v31 = v47;
      v32 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Succeeding because no rental bag data", &v46, 12);

      if (!v32)
      {
LABEL_48:

LABEL_49:
        v15 = 0;
        goto LABEL_50;
      }

      oSLogObject2 = [NSString stringWithCString:v32 encoding:4];
      free(v32);
      v43 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_48;
  }

  if (!sub_1000B2C3C(v6))
  {
    goto LABEL_22;
  }

  v16 = [responseCopy objectForKey:@"device-diversity"];
  v15 = v16;
  if (v16)
  {
    v17 = sub_1000B2D94(v16);

    if (!v17)
    {
LABEL_22:
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        LODWORD(v20) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v20) = shouldLog3;
      }

      oSLogObject3 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v20;
      }

      else
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v46 = 138412290;
        v47 = objc_opt_class();
        v22 = v47;
        v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not process rental bag keys", &v46, 12);

        if (!v23)
        {
LABEL_34:

          v24 = ISError();
          v25 = [NSNumber numberWithBool:1];
          v15 = SSErrorBySettingUserInfoValue();

LABEL_35:
          v26 = 0;
          goto LABEL_51;
        }

        oSLogObject3 = [NSString stringWithCString:v23 encoding:4];
        free(v23);
        v43 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_34;
    }

    goto LABEL_49;
  }

LABEL_50:
  v26 = 1;
LABEL_51:
  v33 = +[SSLogConfig sharedWriteToDiskConfig];
  if (!v33)
  {
    v33 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    LODWORD(v35) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v35) = shouldLog4;
  }

  oSLogObject4 = [v33 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v35 = v35;
  }

  else
  {
    v35 &= 2u;
  }

  if (v35)
  {
    v37 = objc_opt_class();
    v46 = 138412546;
    v47 = v37;
    v48 = 2112;
    v49 = responseCopy;
    v38 = v37;
    LODWORD(v44) = 22;
    v39 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Rental sync response: %@", &v46, v44);

    errorCopy2 = error;
    if (!v39)
    {
      goto LABEL_64;
    }

    oSLogObject4 = [NSString stringWithCString:v39 encoding:4];
    free(v39);
    SSFileLog();
  }

  else
  {
    errorCopy2 = error;
  }

LABEL_64:
  if (errorCopy2)
  {
    v41 = v15;
    *errorCopy2 = v15;
  }

  return v26;
}

- (void)_run
{
  _bodyData = [(SyncRentalOperation *)self _bodyData];
  if (!_bodyData)
  {
    v17 = ISError();
    v16 = 0;
    goto LABEL_18;
  }

  v4 = objc_alloc_init(ISStoreURLOperation);
  v26 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountIdentifier];
  [v4 setAuthenticationContext:?];
  v5 = objc_alloc_init(DaemonProtocolDataProvider);
  [v4 setDataProvider:v5];
  [(DaemonProtocolDataProvider *)v5 setShouldProcessDialogs:0];
  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setCachePolicy:1];
  clientIdentifierHeader = [(SyncRentalOperation *)self clientIdentifierHeader];
  [v6 setClientIdentifier:clientIdentifierHeader];

  [v6 setHTTPBody:_bodyData];
  [v6 setHTTPMethod:@"POST"];
  [v6 setURLBagKey:@"rental-sync"];
  userAgent = [(SyncRentalOperation *)self userAgent];
  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

  [v4 setRequestProperties:v6];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v29 = 138412290;
  v30 = objc_opt_class();
  v14 = v30;
  v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Syncing rental", &v29, 12);

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    v24 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  v28 = 0;
  v16 = [(SyncRentalOperation *)self runSubOperation:v4 returningError:&v28];
  v17 = v28;
  if (v16)
  {
    output = [(DaemonProtocolDataProvider *)v5 output];
    v27 = v17;
    v16 = [(SyncRentalOperation *)self _handleResponse:output error:&v27];
    v25 = v27;

    v19 = [NSPropertyListSerialization dataWithPropertyList:output format:100 options:0 error:0];
    [(SyncRentalOperation *)self lock];
    v20 = [SSURLConnectionResponse alloc];
    response = [v4 response];
    v22 = [v20 initWithURLResponse:response bodyData:v19];
    URLResponse = self->_URLResponse;
    self->_URLResponse = v22;

    [(SyncRentalOperation *)self unlock];
    v17 = v25;
  }

LABEL_18:
  [(SyncRentalOperation *)self setError:v17, v24];
  [(SyncRentalOperation *)self setSuccess:v16];
}

@end