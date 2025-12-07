@interface GratisClaimProtocolDataProvider
- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error;
- (void)dealloc;
@end

@implementation GratisClaimProtocolDataProvider

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GratisClaimProtocolDataProvider;
  [(DaemonProtocolDataProvider *)&v3 dealloc];
}

- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error
{
  v23 = 0;
  [operation setPerformsButtonAction:0];
  v7 = [(GratisClaimProtocolDataProvider *)self runSubOperation:operation error:&v23];
  redirectURL = [operation redirectURL];
  selectedButton = [operation selectedButton];
  if (redirectURL)
  {
    goto LABEL_2;
  }

  v19 = selectedButton;
  if ([selectedButton actionType] == 1 && (objc_msgSend(v19, "urlType") != 1 || objc_msgSend(objc_msgSend(v19, "subtarget"), "isEqualToString:", @"account.upToDateClaim")))
  {
    parameter = [v19 parameter];
    if (parameter)
    {
      redirectURL = parameter;
LABEL_2:
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
        v14 = objc_opt_class();
        v24 = 138412546;
        v25 = v14;
        v26 = 2112;
        v27 = redirectURL;
        v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Redirecting claim to URL: %@", &v24, 22);
        if (v15)
        {
          v16 = v15;
          v17 = [NSString stringWithCString:v15 encoding:4];
          free(v16);
          v22 = v17;
          SSFileLog();
        }
      }

      -[GratisClaimProtocolDataProvider setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [operation authenticatedAccountDSID]);
      [(GratisClaimProtocolDataProvider *)self setRedirectedClaimURL:redirectURL];
      goto LABEL_14;
    }
  }

  if (v7)
  {
    -[GratisClaimProtocolDataProvider setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [operation authenticatedAccountDSID]);
    return v7;
  }

  [v19 performDefaultActionForDialog:{objc_msgSend(operation, "dialog")}];
LABEL_14:
  if (error)
  {
    v18 = v7;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    *error = v23;
  }

  return v7;
}

@end