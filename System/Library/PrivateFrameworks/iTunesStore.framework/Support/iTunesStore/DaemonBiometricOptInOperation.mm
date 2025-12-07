@interface DaemonBiometricOptInOperation
- (BOOL)_updateTouchIDSettingsForAccount:(id)account;
- (BOOL)requiresStoreAuthentication;
- (DaemonBiometricOptInOperation)init;
- (id)_authenticateWithAccount:(id)account error:(id *)error;
- (id)resultBlock;
- (void)run;
- (void)setRequiresStoreAuthentication:(BOOL)authentication;
- (void)setResultBlock:(id)block;
@end

@implementation DaemonBiometricOptInOperation

- (DaemonBiometricOptInOperation)init
{
  v3.receiver = self;
  v3.super_class = DaemonBiometricOptInOperation;
  result = [(DaemonBiometricOptInOperation *)&v3 init];
  if (result)
  {
    result->_requiresStoreAuthentication = 1;
  }

  return result;
}

- (BOOL)requiresStoreAuthentication
{
  [(DaemonBiometricOptInOperation *)self lock];
  requiresStoreAuthentication = self->_requiresStoreAuthentication;
  [(DaemonBiometricOptInOperation *)self unlock];
  return requiresStoreAuthentication;
}

- (id)resultBlock
{
  [(DaemonBiometricOptInOperation *)self lock];
  v3 = [self->_resultBlock copy];
  [(DaemonBiometricOptInOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setRequiresStoreAuthentication:(BOOL)authentication
{
  [(DaemonBiometricOptInOperation *)self lock];
  self->_requiresStoreAuthentication = authentication;

  [(DaemonBiometricOptInOperation *)self unlock];
}

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(DaemonBiometricOptInOperation *)self lock];
  if (self->_resultBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(DaemonBiometricOptInOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(DaemonBiometricStore);
  if (![(DaemonBiometricStore *)v3 canPerformBiometricOptIn])
  {
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v26 = 138543362;
      v27 = objc_opt_class();
      v13 = v27;
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed for no biometrics", &v26, 12);

      if (!v14)
      {
LABEL_17:

        v7 = SSError();
        v8 = 0;
        goto LABEL_33;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4];
      free(v14);
      v24 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_17;
  }

  v4 = +[SSAccountStore defaultStore];
  activeAccount = [v4 activeAccount];

  if (![(DaemonBiometricOptInOperation *)self requiresStoreAuthentication])
  {
    v7 = 0;
    if (activeAccount)
    {
      goto LABEL_4;
    }

LABEL_19:
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog2;
    }

    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
      v26 = 138543362;
      v27 = v19;
      v20 = v19;
      v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Failed for no account", &v26, 12);

      if (!v21)
      {
LABEL_31:

        v8 = 0;
        goto LABEL_32;
      }

      oSLogObject2 = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      v24 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_31;
  }

  v25 = 0;
  v6 = [(DaemonBiometricOptInOperation *)self _authenticateWithAccount:activeAccount error:&v25];
  v7 = v25;

  activeAccount = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_4:
  v8 = [(DaemonBiometricOptInOperation *)self _updateTouchIDSettingsForAccount:activeAccount];
LABEL_32:

LABEL_33:
  [(DaemonBiometricOptInOperation *)self setError:v7, v24];
  [(DaemonBiometricOptInOperation *)self setSuccess:v8];
  resultBlock = [(DaemonBiometricOptInOperation *)self resultBlock];
  v23 = resultBlock;
  if (resultBlock)
  {
    (*(resultBlock + 16))(resultBlock, v8, v7);
  }
}

- (id)_authenticateWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v5 = [[SSMutableAuthenticationContext alloc] initWithAccount:accountCopy];
  [v5 setCanCreateNewAccount:0];
  [v5 setCanSetActiveAccount:accountCopy == 0];
  [v5 setPromptStyle:1];
  accountName = [accountCopy accountName];
  uniqueIdentifier = [accountCopy uniqueIdentifier];

  v8 = uniqueIdentifier;
  v9 = objc_opt_new();
  biometricState = [v9 biometricState];
  v79 = v9;
  v11 = [v9 tokenAvailabilityForAccountIdentifier:v8];
  v12 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v12 deviceBiometricStyle];

  if (v11 == 2)
  {
    if ([accountName length])
    {
      if (deviceBiometricStyle == 3)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = v14;
        v16 = @"PROMPT_REASON_NEW_FACE_FORMAT_%@";
        goto LABEL_15;
      }

      if (deviceBiometricStyle == 2)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = v14;
        v16 = @"PROMPT_REASON_NEW_FINGERS_FORMAT_%@";
LABEL_15:
        v22 = [v14 localizedStringForKey:v16 value:&stru_10033CC30 table:@"Mesa"];
        v23 = [NSString stringWithFormat:v22, accountName];

LABEL_28:
LABEL_43:
        [v5 setReasonDescription:{v23, v74}];
LABEL_44:

        goto LABEL_45;
      }

      v24 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = shouldLog | 2;
      }

      else
      {
        v26 = shouldLog;
      }

      oSLogObject = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v26;
      }

      else
      {
        v28 = v26 & 2;
      }

      if (!v28)
      {
        goto LABEL_41;
      }

      v80 = 138543362;
      v81 = objc_opt_class();
      v29 = v81;
      v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Failed to determine device biometric style for new identity map", &v80, 12);
      goto LABEL_39;
    }

    if (deviceBiometricStyle == 3)
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = v20;
      v21 = @"PROMPT_REASON_NEW_FACE_ANONYMOUS";
    }

    else
    {
      if (deviceBiometricStyle != 2)
      {
        v24 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v24)
        {
          v24 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v32 = shouldLog2 | 2;
        }

        else
        {
          v32 = shouldLog2;
        }

        oSLogObject = [v24 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 & 2;
        }

        if (!v33)
        {
          goto LABEL_41;
        }

        v80 = 138543362;
        v81 = objc_opt_class();
        v29 = v81;
        v30 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Failed to determine device biometric style for new anonymous idenitty map", &v80, 12);
LABEL_39:
        v34 = v30;

        if (!v34)
        {
LABEL_42:

          v23 = 0;
          goto LABEL_43;
        }

        oSLogObject = [NSString stringWithCString:v34 encoding:4];
        free(v34);
        v74 = oSLogObject;
        SSFileLog();
LABEL_41:

        goto LABEL_42;
      }

      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = v20;
      v21 = @"PROMPT_REASON_NEW_FINGERS_ANONYMOUS";
    }

    v23 = [v20 localizedStringForKey:v21 value:&stru_10033CC30 table:@"Mesa"];
    goto LABEL_28;
  }

  if (biometricState != 2 && [accountName length])
  {
    if (deviceBiometricStyle == 2)
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"PROMPT_REASON_GENERIC";
    }

    else
    {
      if (deviceBiometricStyle != 3)
      {
        v23 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v23)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v23 shouldLog];
        if ([v23 shouldLogToDisk])
        {
          v68 = shouldLog3 | 2;
        }

        else
        {
          v68 = shouldLog3;
        }

        oSLogObject2 = [v23 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v70 = v68;
        }

        else
        {
          v70 = v68 & 2;
        }

        if (v70)
        {
          v80 = 138543362;
          v81 = objc_opt_class();
          v71 = v81;
          v72 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Failed to determine device biometric style for enabling biometrics", &v80, 12);

          if (!v72)
          {
            goto LABEL_44;
          }

          oSLogObject2 = [NSString stringWithCString:v72 encoding:4];
          free(v72);
          v74 = oSLogObject2;
          SSFileLog();
        }

        goto LABEL_44;
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"PROMPT_REASON_FACE_GENERIC";
    }

    v65 = [v17 localizedStringForKey:v19 value:&stru_10033CC30 table:@"Mesa"];
    v66 = [NSString stringWithFormat:v65, accountName];
    [v5 setReasonDescription:v66];
  }

LABEL_45:
  v35 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v35)
  {
    v35 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    v37 = shouldLog4 | 2;
  }

  else
  {
    v37 = shouldLog4;
  }

  oSLogObject3 = [v35 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 & 2;
  }

  if (!v39)
  {
    goto LABEL_56;
  }

  v40 = objc_opt_class();
  v80 = 138543362;
  v81 = v40;
  v41 = v40;
  LODWORD(v76) = 12;
  v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Authenticating to opt-in to biometrics.", &v80, v76);

  if (v42)
  {
    oSLogObject3 = [NSString stringWithCString:v42 encoding:4];
    free(v42);
    v75 = oSLogObject3;
    SSFileLog();
LABEL_56:
  }

  v43 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v5];
  v44 = [v43 run];
  error = [v44 error];

  if (error || (v47 = [v44 authenticateResponseType], v47 > 8))
  {
    authenticatedAccount = 0;
    goto LABEL_102;
  }

  v78 = v8;
  v48 = accountName;
  if (((1 << v47) & 0x1CF) != 0)
  {
    v49 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v49)
    {
      v49 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      v51 = shouldLog5 | 2;
    }

    else
    {
      v51 = shouldLog5;
    }

    oSLogObject4 = [v49 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v51;
    }

    else
    {
      v53 = v51 & 2;
    }

    if (v53)
    {
      v54 = objc_opt_class();
      v55 = v54;
      v56 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v44 authenticateResponseType]);
      v80 = 138543618;
      v81 = v54;
      v82 = 2114;
      v83 = v56;
      LODWORD(v76) = 22;
      v57 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Auth response was no-op: %{public}@", &v80, v76);

      accountName = v48;
      v8 = v78;
      v9 = v79;
      if (!v57)
      {
LABEL_74:

        authenticatedAccount = 0;
        goto LABEL_102;
      }

      oSLogObject4 = [NSString stringWithCString:v57 encoding:4];
      free(v57);
      SSFileLog();
    }

    else
    {
      accountName = v48;
      v8 = v78;
      v9 = v79;
    }

    goto LABEL_74;
  }

  v58 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v58)
  {
    v58 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v58 shouldLog];
  if ([v58 shouldLogToDisk])
  {
    shouldLog6 |= 2u;
  }

  oSLogObject5 = [v58 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v61 = shouldLog6;
  }

  else
  {
    v61 = shouldLog6 & 2;
  }

  if (!v61)
  {
    accountName = v48;
    v8 = v78;
    v9 = v79;
    goto LABEL_100;
  }

  v62 = objc_opt_class();
  v77 = v62;
  v63 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v44 authenticateResponseType]);
  v80 = 138543618;
  v81 = v62;
  v82 = 2114;
  v83 = v63;
  LODWORD(v76) = 22;
  v64 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: Auth response returned new account: %{public}@", &v80, v76);

  accountName = v48;
  v8 = v78;
  v9 = v79;
  if (v64)
  {
    oSLogObject5 = [NSString stringWithCString:v64 encoding:4];
    free(v64);
    SSFileLog();
LABEL_100:
  }

  authenticatedAccount = [v44 authenticatedAccount];
LABEL_102:

  return authenticatedAccount;
}

- (BOOL)_updateTouchIDSettingsForAccount:(id)account
{
  accountCopy = account;
  v4 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  uniqueIdentifier = [accountCopy uniqueIdentifier];

  v6 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:uniqueIdentifier];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E91DC;
  v19[3] = &unk_100328A40;
  v7 = v4;
  v20 = v7;
  [v6 setResultBlock:v19];
  v8 = +[ISOperationQueue mainQueue];
  [v8 addOperation:v6];

  v9 = objc_alloc_init(DaemonBiometricStore);
  [(DaemonBiometricStore *)v9 setBiometricState:2];
  identityMap = [(DaemonBiometricStore *)v9 identityMap];
  [(DaemonBiometricStore *)v9 saveIdentityMap:identityMap forAccountIdentifier:uniqueIdentifier];

  [(DaemonBiometricStore *)v9 registerAccountIdentifier:uniqueIdentifier];
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = objc_opt_class();
  v21 = 138412546;
  v22 = v15;
  v23 = 2112;
  v24 = uniqueIdentifier;
  v16 = v15;
  v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Biometrics enabled and cached for DSID: %@", &v21, 22);

  if (v17)
  {
    oSLogObject = [NSString stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_12:
  }

  return 1;
}

@end