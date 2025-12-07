@interface FinishMicroPaymentOperation
- (BOOL)_parseResponse:(id)response returningError:(id *)error;
- (NSNumber)userDSID;
- (NSString)transactionIdentifier;
- (StoreKitClientIdentity)clientIdentity;
- (void)dealloc;
- (void)run;
- (void)setClientIdentity:(id)identity;
- (void)setTransactionIdentifier:(id)identifier;
- (void)setUserDSID:(id)d;
@end

@implementation FinishMicroPaymentOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FinishMicroPaymentOperation;
  [(FinishMicroPaymentOperation *)&v3 dealloc];
}

- (StoreKitClientIdentity)clientIdentity
{
  [(FinishMicroPaymentOperation *)self lock];
  v3 = self->_clientIdentity;
  [(FinishMicroPaymentOperation *)self unlock];
  return v3;
}

- (void)setClientIdentity:(id)identity
{
  [(FinishMicroPaymentOperation *)self lock];
  clientIdentity = self->_clientIdentity;
  if (clientIdentity != identity)
  {

    self->_clientIdentity = [identity copy];
  }

  [(FinishMicroPaymentOperation *)self unlock];
}

- (void)setTransactionIdentifier:(id)identifier
{
  [(FinishMicroPaymentOperation *)self lock];
  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier != identifier)
  {

    self->_transactionIdentifier = [identifier copy];
  }

  [(FinishMicroPaymentOperation *)self unlock];
}

- (void)setUserDSID:(id)d
{
  [(FinishMicroPaymentOperation *)self lock];
  userDSID = self->_userDSID;
  if (userDSID != d)
  {

    self->_userDSID = d;
  }

  [(FinishMicroPaymentOperation *)self unlock];
}

- (NSString)transactionIdentifier
{
  [(FinishMicroPaymentOperation *)self lock];
  v3 = self->_transactionIdentifier;
  [(FinishMicroPaymentOperation *)self unlock];
  return v3;
}

- (NSNumber)userDSID
{
  [(FinishMicroPaymentOperation *)self lock];
  v3 = self->_userDSID;
  [(FinishMicroPaymentOperation *)self unlock];
  return v3;
}

- (void)run
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v4];
  v5 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:{-[FinishMicroPaymentOperation userDSID](self, "userDSID")}];
  [v5 setAllowsBootstrapCellularData:{-[StoreKitClientIdentity allowsBootstrapCellularData](self->_clientIdentity, "allowsBootstrapCellularData")}];
  [v5 setTokenType:1];
  [v3 setAuthenticationContext:v5];

  v6 = [[NSDictionary alloc] initWithObjectsAndKeys:{-[FinishMicroPaymentOperation transactionIdentifier](self, "transactionIdentifier"), @"transactionId", 0}];
  v7 = objc_alloc_init(SSMutableURLRequestProperties);
  [v7 setAllowsBootstrapCellularData:{-[StoreKitClientIdentity allowsBootstrapCellularData](self->_clientIdentity, "allowsBootstrapCellularData")}];
  [v7 setCachePolicy:1];
  [v7 setRequestParameters:v6];
  [v7 setURLBagKey:@"p2-in-app-transaction-done"];
  if ([(StoreKitClientIdentity *)[(FinishMicroPaymentOperation *)self clientIdentity] isSandboxed])
  {
    [v7 setURLBagType:1];
  }

  [v3 setRequestProperties:v7];

  v18 = 0;
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v19 = 138412546;
    v20 = objc_opt_class();
    v21 = 2112;
    transactionIdentifier = [(FinishMicroPaymentOperation *)self transactionIdentifier];
    LODWORD(v17) = 22;
    v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Finishing payment: %@", &v19, v17);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v16 = v14;
      SSFileLog();
    }
  }

  if (([(FinishMicroPaymentOperation *)self runSubOperation:v3 returningError:&v18, v16]& 1) != 0)
  {
    v15 = [(FinishMicroPaymentOperation *)self _parseResponse:[(DaemonProtocolDataProvider *)v4 output] returningError:&v18];
    [(FinishMicroPaymentOperation *)self setError:v18];
    [(FinishMicroPaymentOperation *)self setSuccess:v15];
  }

  else
  {
    [(FinishMicroPaymentOperation *)self setError:v18];
  }
}

- (BOOL)_parseResponse:(id)response returningError:(id *)error
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
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
      *v20 = 138412290;
      *&v20[4] = objc_opt_class();
      v12 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Failed with non-dictionary response", v20, 12, *v20, *&v20[8]);
LABEL_23:
      if (v12)
      {
        v17 = v12;
        [NSString stringWithCString:v12 encoding:4];
        free(v17);
        SSFileLog();
      }
    }

LABEL_25:
    v18 = ISError();
    result = 0;
    if (!error)
    {
      return result;
    }

    goto LABEL_26;
  }

  v6 = [response objectForKey:kISFailureTypeKey];
  if (v6)
  {
    v7 = v6;
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog2;
    }

    oSLogObject2 = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v20 = 138412546;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2112;
      *&v20[14] = v7;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Failed with failureType: %@", v20, 22, *v20, *&v20[8]);
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v18 = 0;
  result = 1;
  if (!error)
  {
    return result;
  }

LABEL_26:
  *error = v18;
  return result;
}

@end