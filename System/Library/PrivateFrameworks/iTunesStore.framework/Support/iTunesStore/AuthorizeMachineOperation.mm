@interface AuthorizeMachineOperation
- (AuthorizeMachineOperation)initWithAuthorizationRequest:(id)request;
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (BOOL)_runAuthentication:(id *)authentication;
- (BOOL)_runAuthorizationWithAuthentication:(BOOL)authentication error:(id *)error;
- (BOOL)allowSilentAuthentication;
- (BOOL)shouldAddKeysToKeyBag;
- (BOOL)shouldPromptForCredentials;
- (NSNumber)accountIdentifier;
- (NSNumber)familyMemberAccountIdentifier;
- (NSString)clientIdentifierHeader;
- (NSString)keybagPath;
- (NSString)reason;
- (NSString)userAgent;
- (SSURLConnectionResponse)response;
- (id)_accountIdentifier;
- (id)_newAuthenticationContext;
- (id)_newBodyDictionary;
- (id)_newMachineDataOperationWithResponse:(id)response;
- (id)_newURLOperation;
- (id)authorizationToken;
- (void)_run;
- (void)_setResponse:(id)response;
- (void)dealloc;
- (void)setAccountIdentifier:(id)identifier;
- (void)setAllowSilentAuthentication:(BOOL)authentication;
- (void)setAuthorizationToken:(id)token;
- (void)setClientIdentifierHeader:(id)header;
- (void)setFamilyMemberAccountIdentifier:(id)identifier;
- (void)setKeybagPath:(id)path;
- (void)setReason:(id)reason;
- (void)setShouldAddKeysToKeyBag:(BOOL)bag;
- (void)setShouldPromptForCredentials:(BOOL)credentials;
- (void)setUserAgent:(id)agent;
@end

@implementation AuthorizeMachineOperation

- (AuthorizeMachineOperation)initWithAuthorizationRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = AuthorizeMachineOperation;
  v4 = [(AuthorizeMachineOperation *)&v6 init];
  if (v4)
  {
    v4->_accountIdentifier = [request accountIdentifier];
    v4->_allowSilentAuthentication = [request allowSilentAuthentication];
    if ([request familyAccountIdentifier])
    {
      v4->_familyMemberAccountIdentifier = [request familyAccountIdentifier];
    }

    v4->_keybagPath = [request keybagPath];
    v4->_token = [request authorizationToken];
    v4->_reason = [request reason];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AuthorizeMachineOperation;
  [(AuthorizeMachineOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_accountIdentifier;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (BOOL)allowSilentAuthentication
{
  [(AuthorizeMachineOperation *)self lock];
  allowSilentAuthentication = self->_allowSilentAuthentication;
  [(AuthorizeMachineOperation *)self unlock];
  return allowSilentAuthentication;
}

- (id)authorizationToken
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_token;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSNumber)familyMemberAccountIdentifier
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_familyMemberAccountIdentifier;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSString)keybagPath
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = [(NSString *)self->_keybagPath copy];
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSString)reason
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_reason;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (SSURLConnectionResponse)response
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_response;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (void)setAccountIdentifier:(id)identifier
{
  [(AuthorizeMachineOperation *)self lock];
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier != identifier)
  {

    self->_accountIdentifier = [identifier copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setAllowSilentAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  [(AuthorizeMachineOperation *)self lock];
  if (self->_allowSilentAuthentication != authenticationCopy)
  {
    self->_allowSilentAuthentication = authenticationCopy;
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setAuthorizationToken:(id)token
{
  [(AuthorizeMachineOperation *)self lock];
  token = self->_token;
  if (token != token)
  {

    self->_token = token;
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  [(AuthorizeMachineOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setFamilyMemberAccountIdentifier:(id)identifier
{
  [(AuthorizeMachineOperation *)self lock];
  familyMemberAccountIdentifier = self->_familyMemberAccountIdentifier;
  if (familyMemberAccountIdentifier != identifier)
  {

    self->_familyMemberAccountIdentifier = [identifier copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setKeybagPath:(id)path
{
  [(AuthorizeMachineOperation *)self lock];
  keybagPath = self->_keybagPath;
  if (keybagPath != path)
  {

    self->_keybagPath = [path copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setReason:(id)reason
{
  [(AuthorizeMachineOperation *)self lock];
  reason = self->_reason;
  if (reason != reason)
  {

    self->_reason = [reason copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setShouldAddKeysToKeyBag:(BOOL)bag
{
  [(AuthorizeMachineOperation *)self lock];
  self->_shouldAddKeysToKeyBag = bag;

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setShouldPromptForCredentials:(BOOL)credentials
{
  [(AuthorizeMachineOperation *)self lock];
  self->_shouldPromptForCredentials = credentials;

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  [(AuthorizeMachineOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (BOOL)shouldAddKeysToKeyBag
{
  [(AuthorizeMachineOperation *)self lock];
  shouldAddKeysToKeyBag = self->_shouldAddKeysToKeyBag;
  [(AuthorizeMachineOperation *)self unlock];
  return shouldAddKeysToKeyBag;
}

- (BOOL)shouldPromptForCredentials
{
  [(AuthorizeMachineOperation *)self lock];
  shouldPromptForCredentials = self->_shouldPromptForCredentials;
  [(AuthorizeMachineOperation *)self unlock];
  return shouldPromptForCredentials;
}

- (NSString)userAgent
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_userAgent;
  [(AuthorizeMachineOperation *)self unlock];

  return v3;
}

- (id)_accountIdentifier
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_accountIdentifier;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  v7 = [response objectForKey:@"failureType"];
  if (!v7)
  {
    if ([(AuthorizeMachineOperation *)self shouldAddKeysToKeyBag])
    {
      v8 = [response objectForKey:@"keybag"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 length];
        if (!v9)
        {
          goto LABEL_20;
        }

        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
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
          v17 = 138412546;
          v18 = objc_opt_class();
          v19 = 2048;
          v20 = [v8 length];
          v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Importing %lu keybag bytes", &v17, 22);
          if (v14)
          {
            v15 = v14;
            [NSString stringWithCString:v14 encoding:4];
            free(v15);
            SSFileLog();
          }
        }

        sub_1000B29AC(v8);
      }
    }

    v9 = 0;
LABEL_20:
    if (!error)
    {
      return v7 == 0;
    }

LABEL_21:
    *error = v9;
    return v7 == 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 integerValue];
  }

  v9 = SSError();
  if (error)
  {
    goto LABEL_21;
  }

  return v7 == 0;
}

- (id)_newAuthenticationContext
{
  accountIdentifier = [(AuthorizeMachineOperation *)self accountIdentifier];
  v4 = [SSMutableAuthenticationContext alloc];
  if (accountIdentifier)
  {
    v5 = [v4 initWithAccountIdentifier:accountIdentifier];
  }

  else
  {
    v5 = [v4 initWithAccount:{objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), "activeAccount")}];
  }

  v6 = v5;
  [v5 setAllowsSilentAuthentication:{-[AuthorizeMachineOperation allowSilentAuthentication](self, "allowSilentAuthentication")}];
  [v6 setClientIdentifierHeader:{-[AuthorizeMachineOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  userAgent = [(AuthorizeMachineOperation *)self userAgent];
  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  if ([+[SpringBoardUtility isScreenLocked] sharedInstance]
  {
    [v6 setPromptStyle:1000];
  }

  return v6;
}

- (id)_newBodyDictionary
{
  reason = [(AuthorizeMachineOperation *)self reason];
  _accountIdentifier = [(AuthorizeMachineOperation *)self _accountIdentifier];
  if (!_accountIdentifier)
  {
    goto LABEL_40;
  }

  v5 = _accountIdentifier;
  v6 = [(NSString *)reason isEqualToString:@"refetch"]? 8 : 1;
  keybagPath = [(AuthorizeMachineOperation *)self keybagPath];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (keybagPath)
  {
    if (!v8)
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
      v40 = 138412802;
      v41 = objc_opt_class();
      v42 = 2112;
      v43 = v5;
      v44 = 2112;
      v45 = keybagPath;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Getting kbsync for account: %@ path: %@", &v40, 32);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v38 = v15;
        SSFileLog();
      }
    }

    v16 = sub_1000B1B1C([v5 unsignedLongLongValue], v6, keybagPath);
  }

  else
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog2;
    }

    oSLogObject2 = [v9 OSLogObject];
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
      v40 = 138412546;
      v41 = objc_opt_class();
      v42 = 2112;
      v43 = v5;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Getting kbsync data for account: %@", &v40, 22);
      if (v20)
      {
        v21 = v20;
        v22 = [NSString stringWithCString:v20 encoding:4];
        free(v21);
        v38 = v22;
        SSFileLog();
      }
    }

    v16 = sub_1000B18E8([v5 unsignedLongLongValue], v6);
  }

  v23 = v16;
  if (v16)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = v24;
    token = self->_token;
    if (token)
    {
      [v24 setObject:token forKey:@"token"];
    }

    [v25 setObject:v23 forKey:@"kbsync"];
    v27 = +[ISDevice sharedInstance];
    v28 = [-[ISDevice guid](v27 "guid")];
    if (v28)
    {
      [v25 setObject:v28 forKey:@"guid"];
    }

    deviceName = [(ISDevice *)v27 deviceName];
    if (deviceName)
    {
      [v25 setObject:deviceName forKey:@"machineName"];
    }

    if (reason)
    {
      [v25 setObject:reason forKey:@"reason"];
    }

    [v25 setObject:v5 forKey:@"ownerDsid"];
  }

  else
  {
LABEL_40:
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      LODWORD(v32) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v32) = shouldLog3;
    }

    oSLogObject3 = [v30 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v32;
    }

    else
    {
      v32 &= 2u;
    }

    if (v32)
    {
      v34 = objc_opt_class();
      v40 = 138412290;
      v41 = v34;
      LODWORD(v39) = 12;
      v35 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Failing authorization: could not get kbsync", &v40, v39);
      if (v35)
      {
        v36 = v35;
        [NSString stringWithCString:v35 encoding:4];
        free(v36);
        SSFileLog();
      }
    }

    v23 = 0;
    v25 = 0;
  }

  return v25;
}

- (id)_newMachineDataOperationWithResponse:(id)response
{
  v4 = [[SSMachineDataRequest alloc] initWithURLResponse:response];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  [v4 setAccountIdentifier:{-[AuthorizeMachineOperation accountIdentifier](self, "accountIdentifier")}];
  v6 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:v5];
  [v6 setUserAgent:{-[AuthorizeMachineOperation userAgent](self, "userAgent")}];

  return v6;
}

- (id)_newURLOperation
{
  _newBodyDictionary = [(AuthorizeMachineOperation *)self _newBodyDictionary];
  if (!_newBodyDictionary)
  {
    return 0;
  }

  v4 = _newBodyDictionary;
  v5 = [NSPropertyListSerialization dataWithPropertyList:_newBodyDictionary format:100 options:0 error:0];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(ISStoreURLOperation);
    [v7 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
    [v7 setMachineDataStyle:0];
    [v7 setUseUserSpecificURLBag:1];
    _newAuthenticationContext = [(AuthorizeMachineOperation *)self _newAuthenticationContext];
    [v7 setAuthenticationContext:_newAuthenticationContext];

    v9 = objc_alloc_init(SSMutableURLRequestProperties);
    [v9 setAllowedRetryCount:0];
    [v9 setClientIdentifier:{-[AuthorizeMachineOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
    [v9 setHTTPBody:v6];
    [v9 setHTTPMethod:@"POST"];
    [v9 setURLBagKey:@"authorizeMachine"];
    [v9 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    userAgent = [(AuthorizeMachineOperation *)self userAgent];
    [v9 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
    [(AuthorizeMachineOperation *)self lock];
    familyMemberAccountIdentifier = self->_familyMemberAccountIdentifier;
    if (familyMemberAccountIdentifier)
    {
      [v9 setValue:-[NSNumber stringValue](familyMemberAccountIdentifier forHTTPHeaderField:{"stringValue"), @"X-FM-Dsid"}];
    }

    mdSyncState = self->_mdSyncState;
    if (mdSyncState)
    {
      [v9 setValue:mdSyncState forHTTPHeaderField:SSHTTPHeaderXAppleMDS];
    }

    [(AuthorizeMachineOperation *)self unlock];
    if ([(NSString *)[(AuthorizeMachineOperation *)self reason] isEqualToString:@"refetch"])
    {
      [v9 setTimeoutInterval:15.0];
    }

    [(AuthorizeMachineOperation *)self accountIdentifier];
    MachineDataAddHeadersToRequestProperties();
    [v7 setRequestProperties:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_run
{
  v35 = 0;
  accountIdentifier = [(AuthorizeMachineOperation *)self accountIdentifier];
  if (accountIdentifier)
  {
    v4 = accountIdentifier;
    v34 = 0;
    authorizationToken = [(AuthorizeMachineOperation *)self authorizationToken];
    if (authorizationToken)
    {
      v6 = authorizationToken;
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v33 = 0;
    v6 = sub_1000B249C([(NSNumber *)v4 longLongValue], &v34, &v33);
    if (v6)
    {
      [(AuthorizeMachineOperation *)self setAuthorizationToken:v6];
      if ((v34 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v34 = 1;
    }

    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v36 = 138412802;
      v37 = v19;
      v38 = 2112;
      v39 = v4;
      v40 = 2112;
      v41 = v33;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Needs authentication for account: %@ token error: %@", &v36, 32);
      if (v20)
      {
        v21 = v20;
        v22 = [NSString stringWithCString:v20 encoding:4];
        free(v21);
        v31 = v22;
        SSFileLog();
      }
    }

    if (![(AuthorizeMachineOperation *)self shouldPromptForCredentials])
    {
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
        v36 = 138412546;
        v37 = v27;
        v38 = 2112;
        v39 = v4;
        LODWORD(v32) = 22;
        v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Failing silent request needing authentication for account: %@", &v36, v32);
        if (v28)
        {
          v29 = v28;
          v30 = [NSString stringWithCString:v28 encoding:4];
          free(v29);
          v31 = v30;
          SSFileLog();
        }
      }

      v8 = 0;
      v35 = v33;
      goto LABEL_6;
    }

    if (![(AuthorizeMachineOperation *)self _runAuthentication:&v35])
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = v34;
LABEL_5:
    v8 = [(AuthorizeMachineOperation *)self _runAuthorizationWithAuthentication:v7 & 1 error:&v35];
LABEL_6:

    v9 = v35;
    goto LABEL_23;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog3;
  }

  oSLogObject3 = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v36 = 138412290;
    v37 = objc_opt_class();
    v8 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Missing account for authorize", &v36, 12);
    if (!v8)
    {
      v9 = 0;
      goto LABEL_23;
    }

    v14 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    v31 = v14;
    SSFileLog();
  }

  v9 = 0;
  v8 = 0;
LABEL_23:
  [(AuthorizeMachineOperation *)self setError:v9, v31];
  [(AuthorizeMachineOperation *)self setSuccess:v8];
}

- (BOOL)_runAuthentication:(id *)authentication
{
  v5 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v5)
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v18 = 138543362;
    v19 = objc_opt_class();
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Performing authentication.", &v18, 12);
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4];
      free(v10);
      v17 = v11;
      SSFileLog();
    }
  }

  _newAuthenticationContext = [(AuthorizeMachineOperation *)self _newAuthenticationContext];
  v13 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:_newAuthenticationContext];
  v14 = [v13 run];
  error = [v14 error];
  if (!error)
  {
    -[AuthorizeMachineOperation setAccountIdentifier:](self, "setAccountIdentifier:", [objc_msgSend(v14 "authenticatedAccount")]);
  }

  if (authentication && error)
  {
    *authentication = 0;
  }

  return error == 0;
}

- (BOOL)_runAuthorizationWithAuthentication:(BOOL)authentication error:(id *)error
{
  authenticationCopy = authentication;
  v36 = 0;
  while (1)
  {
    _newURLOperation = [(AuthorizeMachineOperation *)self _newURLOperation];
    if (!_newURLOperation)
    {
      LOBYTE(self) = 0;
      v36 = SSError();
      goto LABEL_27;
    }

    v7 = _newURLOperation;
    [_newURLOperation setNeedsAuthentication:authenticationCopy];
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v9) = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v9) = v9 | 2;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      token = self->_token;
      v37 = 138412802;
      v38 = v11;
      v39 = 2112;
      v40 = token;
      v41 = 1024;
      v42 = authenticationCopy;
      LODWORD(v34) = 28;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Authorizing with token: %@, authentication: %d", &v37, v34);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v33 = v15;
        SSFileLog();
      }
    }

    if (![(AuthorizeMachineOperation *)self runSubOperation:v7 returningError:&v36, v33])
    {
      goto LABEL_40;
    }

    v16 = [objc_msgSend(v7 "dataProvider")];
    if ([(AuthorizeMachineOperation *)self _handleResponse:v16 error:&v36])
    {
      break;
    }

    v17 = -[AuthorizeMachineOperation _newMachineDataOperationWithResponse:](self, "_newMachineDataOperationWithResponse:", [v7 response]);
    if (!v17)
    {
      goto LABEL_40;
    }

    v18 = v17;
    v19 = [(AuthorizeMachineOperation *)self runSubOperation:v17 returningError:0];
    syncState = [v18 syncState];
    [(AuthorizeMachineOperation *)self lock];
    mdRetryCount = self->_mdRetryCount;
    self->_mdRetryCount = mdRetryCount + 1;

    self->_mdSyncState = [syncState copy];
    [(AuthorizeMachineOperation *)self unlock];
    if (mdRetryCount > 0)
    {

LABEL_26:
      LOBYTE(self) = 0;
LABEL_27:
      errorCopy3 = error;
      if (!error)
      {
        return self;
      }

      goto LABEL_43;
    }

    if (syncState)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19;
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v23 = [NSPropertyListSerialization dataWithPropertyList:v16 format:100 options:0 error:&v36];
  if (v23)
  {
    v24 = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v7 bodyData:{"response"), v23}];
    [(AuthorizeMachineOperation *)self _setResponse:v24];

    LOBYTE(self) = 1;
    goto LABEL_41;
  }

  v26 = +[SSLogConfig sharedDaemonConfig];
  if (!v26)
  {
    v26 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v26 shouldLog];
  if ([v26 shouldLogToDisk])
  {
    v28 = shouldLog | 2;
  }

  else
  {
    v28 = shouldLog;
  }

  oSLogObject2 = [v26 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 & 2;
  }

  if (v30)
  {
    v31 = objc_opt_class();
    v37 = 138412546;
    v38 = v31;
    v39 = 2112;
    v40 = v36;
    LODWORD(v34) = 22;
    self = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not encode plist: %@", &v37, v34);
    errorCopy3 = error;
    if (self)
    {
      [NSString stringWithCString:self encoding:4];
      free(self);
      SSFileLog();
      LOBYTE(self) = 0;
    }
  }

  else
  {
LABEL_40:
    LOBYTE(self) = 0;
LABEL_41:
    errorCopy3 = error;
  }

  if (!errorCopy3)
  {
    return self;
  }

LABEL_43:
  if ((self & 1) == 0)
  {
    *errorCopy3 = v36;
  }

  return self;
}

- (void)_setResponse:(id)response
{
  [(AuthorizeMachineOperation *)self lock];
  response = self->_response;
  if (response != response)
  {

    self->_response = response;
  }

  [(AuthorizeMachineOperation *)self unlock];
}

@end