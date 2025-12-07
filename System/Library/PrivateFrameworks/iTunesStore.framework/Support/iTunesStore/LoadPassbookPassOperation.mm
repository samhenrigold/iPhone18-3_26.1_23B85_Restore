@interface LoadPassbookPassOperation
- (LoadPassbookPassOperation)initWithAccountIdentifier:(id)identifier;
- (NSNumber)accountIdentifier;
- (id)outputBlock;
- (void)dealloc;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation LoadPassbookPassOperation

- (LoadPassbookPassOperation)initWithAccountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = LoadPassbookPassOperation;
  v4 = [(LoadPassbookPassOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = [identifier copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadPassbookPassOperation;
  [(LoadPassbookPassOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountID;

  return v2;
}

- (id)outputBlock
{
  [(LoadPassbookPassOperation *)self lock];
  v3 = self->_outputBlock;
  [(LoadPassbookPassOperation *)self unlock];

  return v3;
}

- (void)setOutputBlock:(id)block
{
  [(LoadPassbookPassOperation *)self lock];
  outputBlock = self->_outputBlock;
  if (outputBlock != block)
  {

    self->_outputBlock = [block copy];
  }

  [(LoadPassbookPassOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setDataProvider:{+[ISDataProvider provider](ISDataProvider, "provider")}];
  v4 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  [v3 setAuthenticationContext:v4];

  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  [v5 setURLBagKey:@"getAddCreditPassUrl"];
  [v3 setRequestProperties:v5];

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    accountID = self->_accountID;
    v39 = 138412546;
    v40 = v10;
    v41 = 2112;
    v42 = accountID;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Loading pass for account ID: %@", &v39, 22);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v35 = v14;
      SSFileLog();
    }
  }

  v38 = 0;
  v15 = [(LoadPassbookPassOperation *)self runSubOperation:v3 returningError:&v38, v35];
  if (!v15 || (v16 = [objc_msgSend(v3 "dataProvider")], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v17 = objc_msgSend(objc_alloc(ISWeakLinkedClassForString()), "initWithData:error:", v16, &v38)) == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      LODWORD(v28) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v28) = shouldLog2;
    }

    oSLogObject2 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      v18 = 0;
      goto LABEL_38;
    }

    v30 = objc_opt_class();
    v31 = self->_accountID;
    v39 = 138412802;
    v40 = v30;
    v41 = 2112;
    v42 = v31;
    v43 = 2112;
    v44 = v38;
    LODWORD(v37) = 32;
    v25 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Failed to load pass for account ID: %@, error: %@", &v39, v37);
    v18 = 0;
    if (!v25)
    {
      goto LABEL_38;
    }

LABEL_36:
    v32 = v25;
    v33 = [NSString stringWithCString:v25 encoding:4];
    free(v32);
    v36 = v33;
    SSFileLog();
    goto LABEL_38;
  }

  v18 = v17;
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
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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
    v24 = self->_accountID;
    v39 = 138412802;
    v40 = v23;
    v41 = 2112;
    v42 = v24;
    v43 = 2112;
    v44 = v18;
    LODWORD(v37) = 32;
    v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Loaded account ID: %@, pass: %@", &v39, v37);
    if (v25)
    {
      goto LABEL_36;
    }
  }

LABEL_38:
  outputBlock = [(LoadPassbookPassOperation *)self outputBlock];
  if (outputBlock)
  {
    (outputBlock)[2](outputBlock, v18, v38);
    [(LoadPassbookPassOperation *)self setOutputBlock:0];
  }

  [(LoadPassbookPassOperation *)self setError:v38];
  [(LoadPassbookPassOperation *)self setSuccess:v15];
}

@end