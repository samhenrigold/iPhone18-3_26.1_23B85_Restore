@interface ShowServerPromptOperation
- (BOOL)_automaticDownloadsPromptNeedsDisplay;
- (BOOL)_promptNeedsDisplay;
- (NSString)promptIdentifier;
- (ShowServerPromptOperation)initWithPromptIdentifier:(id)identifier;
- (id)_newStoreURLOperation:(id *)operation;
- (void)dealloc;
- (void)run;
@end

@implementation ShowServerPromptOperation

- (ShowServerPromptOperation)initWithPromptIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = ShowServerPromptOperation;
  v4 = [(ShowServerPromptOperation *)&v6 init];
  if (v4)
  {
    v4->_promptIdentifier = [identifier copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ShowServerPromptOperation;
  [(ShowServerPromptOperation *)&v3 dealloc];
}

- (NSString)promptIdentifier
{
  v2 = self->_promptIdentifier;

  return v2;
}

- (void)run
{
  if ([(ShowServerPromptOperation *)self _promptNeedsDisplay])
  {
    v33 = 0;
    v3 = [(ShowServerPromptOperation *)self _newStoreURLOperation:&v33];
    v4 = +[SSLogConfig sharedDaemonConfig];
    v5 = v4;
    if (v3)
    {
      if (!v4)
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
        v9 = objc_opt_class();
        promptIdentifier = self->_promptIdentifier;
        v34 = 138412546;
        v35 = v9;
        v36 = 2112;
        v37 = promptIdentifier;
        v11 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Showing prompt for prompt identifier: %@", &v34, 22);
        if (v11)
        {
          v12 = v11;
          v13 = [NSString stringWithCString:v11 encoding:4];
          free(v12);
          v32 = v13;
          SSFileLog();
        }
      }

      v14 = [(ShowServerPromptOperation *)self runSubOperation:v3 returningError:&v33, v32];
      if (v14)
      {
        [SSDevice setPromptWithIdentifier:self->_promptIdentifier needsDisplay:0];
      }

      else
      {
        +[SSDevice setLastPromptAttemptDate:forPromptWithIdentifier:](SSDevice, "setLastPromptAttemptDate:forPromptWithIdentifier:", +[NSDate date], self->_promptIdentifier);
      }

      CFPreferencesAppSynchronize(kSSUserDefaultsIdentifier);
    }

    else
    {
      if (!v4)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog2;
      }

      oSLogObject2 = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        v28 = self->_promptIdentifier;
        v34 = 138412546;
        v35 = v27;
        v36 = 2112;
        v37 = v28;
        v29 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: No operation for prompt identifier: %@", &v34, 22);
        if (v29)
        {
          v30 = v29;
          v31 = [NSString stringWithCString:v29 encoding:4];
          free(v30);
          v32 = v31;
          SSFileLog();
        }
      }

      v14 = 0;
    }

    [(ShowServerPromptOperation *)self setError:v33, v32];
    [(ShowServerPromptOperation *)self setSuccess:v14];
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
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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
      v20 = self->_promptIdentifier;
      v34 = 138412546;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Prompt does not need display: %@", &v34, 22);
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4];
        free(v22);
        v32 = v23;
        SSFileLog();
      }
    }

    [(ShowServerPromptOperation *)self setSuccess:1, v32];
    +[SSDevice setLastPromptAttemptDate:forPromptWithIdentifier:](SSDevice, "setLastPromptAttemptDate:forPromptWithIdentifier:", +[NSDate date], self->_promptIdentifier);
    CFPreferencesAppSynchronize(kSSUserDefaultsIdentifier);
  }
}

- (BOOL)_automaticDownloadsPromptNeedsDisplay
{
  v2 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  v3 = [v2 isManagedAppleID] ^ 1;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)_newStoreURLOperation:(id *)operation
{
  if (![(NSString *)self->_promptIdentifier isEqualToString:SSDevicePromptIdentifierAutomaticDownloadsAvailable])
  {
    return 0;
  }

  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v3 setUseUserSpecificURLBag:1];
  v4 = [[SSAuthenticationContext alloc] initWithAccount:{objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), "activeAccount")}];
  [v3 setAuthenticationContext:v4];

  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  [v5 setURLBagURLBlock:&stru_100329058];
  [v5 setValue:-[ISDevice guid](+[ISDevice sharedInstance](ISDevice forRequestParameter:{"sharedInstance"), "guid"), @"guid"}];
  [v3 setRequestProperties:v5];

  return v3;
}

- (BOOL)_promptNeedsDisplay
{
  CFPreferencesAppSynchronize(kSSUserDefaultsIdentifier);
  if (![SSDevice promptNeedsDisplay:self->_promptIdentifier]|| ![(NSString *)self->_promptIdentifier isEqualToString:SSDevicePromptIdentifierAutomaticDownloadsAvailable])
  {
    return 0;
  }

  return [(ShowServerPromptOperation *)self _automaticDownloadsPromptNeedsDisplay];
}

@end