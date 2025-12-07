@interface SetAutomaticDownloadKindsOperation
- (BOOL)_postDownloadKinds:(id)kinds error:(id *)error;
- (BOOL)runsOnlyIfKindsAreDirty;
- (BOOL)shouldSuppressServerDialogs;
- (NSSet)downloadKinds;
- (NSSet)previousDownloadKinds;
- (NSString)clientIdentifierHeader;
- (SSAuthenticationContext)authenticationContext;
- (SetAutomaticDownloadKindsOperation)initWithDownloadKinds:(id)kinds;
- (id)_copyFilteredDownloadKinds;
- (void)_run;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setClientIdentifierHeader:(id)header;
- (void)setPreviousDownloadKinds:(id)kinds;
- (void)setRunsOnlyIfKindsAreDirty:(BOOL)dirty;
- (void)setShouldSuppressServerDialogs:(BOOL)dialogs;
@end

@implementation SetAutomaticDownloadKindsOperation

- (SetAutomaticDownloadKindsOperation)initWithDownloadKinds:(id)kinds
{
  v6.receiver = self;
  v6.super_class = SetAutomaticDownloadKindsOperation;
  v4 = [(SetAutomaticDownloadKindsOperation *)&v6 init];
  if (v4)
  {
    v4->_downloadKinds = [kinds copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SetAutomaticDownloadKindsOperation;
  [(SetAutomaticDownloadKindsOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext copy];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (NSSet)downloadKinds
{
  v2 = self->_downloadKinds;

  return v2;
}

- (NSSet)previousDownloadKinds
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  v3 = [(NSSet *)self->_previousDownloadKinds copy];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (BOOL)runsOnlyIfKindsAreDirty
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  runsOnlyIfKindsAreDirty = self->_runsOnlyIfKindsAreDirty;
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return runsOnlyIfKindsAreDirty;
}

- (void)setAuthenticationContext:(id)context
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context copy];
  }

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = header;
  }

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setPreviousDownloadKinds:(id)kinds
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  previousDownloadKinds = self->_previousDownloadKinds;
  if (previousDownloadKinds != kinds)
  {

    self->_previousDownloadKinds = [kinds copy];
  }

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setRunsOnlyIfKindsAreDirty:(BOOL)dirty
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  self->_runsOnlyIfKindsAreDirty = dirty;

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setShouldSuppressServerDialogs:(BOOL)dialogs
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  self->_shouldSuppressServerDialogs = dialogs;

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (BOOL)shouldSuppressServerDialogs
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  shouldSuppressServerDialogs = self->_shouldSuppressServerDialogs;
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return shouldSuppressServerDialogs;
}

- (void)run
{
  if ([(SetAutomaticDownloadKindsOperation *)self runsOnlyIfKindsAreDirty]&& !CFPreferencesGetAppBooleanValue(@"DirtyAutoDownloadKinds", kITunesStoreDaemonDefaultsID, 0))
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
      v11 = 138412290;
      v12 = objc_opt_class();
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Skipping since kinds are no longer dirty", &v11, 12);
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4];
        free(v8);
        v10 = v9;
        SSFileLog();
      }
    }

    [(SetAutomaticDownloadKindsOperation *)self setSuccess:1, v10];
  }

  else
  {

    [(SetAutomaticDownloadKindsOperation *)self _run];
  }
}

- (id)_copyFilteredDownloadKinds
{
  v3 = [(NSSet *)self->_downloadKinds mutableCopy];
  v4 = [SSURLBagContext contextWithBagType:0];
  [(SetAutomaticDownloadKindsOperation *)self lock];
  [(SSURLBagContext *)v4 setUserIdentifier:[(SSAuthenticationContext *)self->_authenticationContext requiredUniqueIdentifier]];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  if ([(SetAutomaticDownloadKindsOperation *)self loadURLBagWithContext:v4 returningError:0])
  {
    v5 = [ISURLBag copyAllowedAutomaticDownloadKindsInBagContext:v4];
    [v3 intersectSet:v5];
  }

  v6 = [(NSSet *)self->_downloadKinds count];
  if (v6 != [v3 count])
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
      v11 = objc_opt_class();
      downloadKinds = self->_downloadKinds;
      v18 = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = downloadKinds;
      v22 = 2112;
      v23 = v3;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Filtered download kinds: %@ => %@", &v18, 32);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v17 = v15;
        SSFileLog();
      }
    }

    [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
  }

  return v3;
}

- (BOOL)_postDownloadKinds:(id)kinds error:(id *)error
{
  v7 = objc_alloc_init(ISStoreURLOperation);
  [v7 setUseUserSpecificURLBag:1];
  shouldSuppressServerDialogs = [(SetAutomaticDownloadKindsOperation *)self shouldSuppressServerDialogs];
  v9 = objc_alloc_init(DaemonProtocolDataProvider);
  [(DaemonProtocolDataProvider *)v9 setShouldProcessAuthenticationDialogs:shouldSuppressServerDialogs ^ 1];
  [(DaemonProtocolDataProvider *)v9 setShouldProcessDialogs:shouldSuppressServerDialogs ^ 1];
  [v7 setDataProvider:v9];
  [(SetAutomaticDownloadKindsOperation *)self lock];
  [v7 setAuthenticationContext:self->_authenticationContext];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  v10 = objc_alloc_init(SSMutableURLRequestProperties);
  [v10 setClientIdentifier:{-[SetAutomaticDownloadKindsOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  if ([+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")])
  {
    [v10 setValue:@"true" forHTTPHeaderField:SSHTTPHeaderXAppleMMeMultiUser];
  }

  [v10 setHTTPMethod:@"POST"];
  v11 = objc_alloc_init(NSMutableDictionary);
  guid = [+[ISDevice sharedInstance](ISDevice guid];
  if (guid)
  {
    [v11 setObject:guid forKey:@"guid"];
  }

  if (kinds)
  {
    [v11 setObject:objc_msgSend(kinds forKey:{"allObjects"), @"media-types"}];
  }

  [v10 setRequestParameters:v11];

  [v10 setURLBagURLBlock:&stru_100329038];
  [v7 setRequestProperties:v10];
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
    v33 = 138412546;
    v34 = objc_opt_class();
    v35 = 2112;
    kindsCopy = kinds;
    v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Setting automatic download kinds: %@", &v33, 22);
    if (v17)
    {
      v18 = v17;
      v19 = [NSString stringWithCString:v17 encoding:4];
      free(v18);
      v30 = v19;
      SSFileLog();
    }
  }

  v32 = 0;
  if ([(SetAutomaticDownloadKindsOperation *)self runSubOperation:v7 returningError:&v32, v30])
  {
    v20 = [-[DaemonProtocolDataProvider output](v9 "output")];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v20 intValue])
    {
      v28 = 1;
    }

    else
    {
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
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v23;
      }

      else
      {
        v23 &= 2u;
      }

      if (v23)
      {
        v25 = objc_opt_class();
        v33 = 138412546;
        v34 = v25;
        v35 = 2112;
        kindsCopy = v20;
        LODWORD(v31) = 22;
        v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Received invalid status: %@", &v33, v31);
        if (v26)
        {
          v27 = v26;
          [NSString stringWithCString:v26 encoding:4];
          free(v27);
          SSFileLog();
        }
      }

      v28 = 0;
      v32 = ISError();
    }
  }

  else
  {
    v28 = 0;
  }

  if (error)
  {
    *error = v32;
  }

  return v28;
}

- (void)_run
{
  v17 = 0;
  _copyFilteredDownloadKinds = [(SetAutomaticDownloadKindsOperation *)self _copyFilteredDownloadKinds];
  v4 = [(SetAutomaticDownloadKindsOperation *)self _postDownloadKinds:_copyFilteredDownloadKinds error:&v17];
  if (v4)
  {
    v5 = kITunesStoreDaemonDefaultsID;
    CFPreferencesSetAppValue(@"DirtyAutoDownloadKinds", kCFBooleanFalse, kITunesStoreDaemonDefaultsID);
    CFPreferencesAppSynchronize(v5);
  }

  else if ([(SetAutomaticDownloadKindsOperation *)self _isFatalError:v17])
  {
    previousDownloadKinds = [(SetAutomaticDownloadKindsOperation *)self previousDownloadKinds];
    if (previousDownloadKinds)
    {
      v7 = previousDownloadKinds;
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
        v12 = objc_opt_class();
        v18 = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v17;
        v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Rolling back automatic download kinds after fatal error: %@", &v18, 22);
        if (v13)
        {
          v14 = v13;
          v15 = [NSString stringWithCString:v13 encoding:4];
          free(v14);
          v16 = v15;
          SSFileLog();
        }
      }

      [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
    }
  }

  [(SetAutomaticDownloadKindsOperation *)self setSuccess:v4];
  [(SetAutomaticDownloadKindsOperation *)self setError:v17];
}

@end