@interface ServerAuthenticationOperation
- (BOOL)_copyAccountIdentifier:(id *)identifier returningError:(id *)error;
- (BOOL)_copySelectedButton:(id *)button returningError:(id *)error;
- (BOOL)_isLocalizationAlreadyConfiguredForAuthContext:(id)context;
- (BOOL)_shouldAuthenticateForButton:(id)button;
- (BOOL)_shouldSkipInitialDialog:(id)dialog;
- (BOOL)performsButtonAction;
- (ISDialog)dialog;
- (ISDialogButton)performedButton;
- (ISDialogButton)selectedButton;
- (NSNumber)authenticatedAccountDSID;
- (NSURL)redirectURL;
- (SSAuthenticationContext)authenticationContext;
- (ServerAuthenticationOperation)init;
- (ServerAuthenticationOperation)initWithDialog:(id)dialog;
- (id)_copyAuthenticationContext;
- (id)_copyButtonToSkipDialog:(id)dialog;
- (void)_handleSelectedButton:(id)button;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setPerformsButtonAction:(BOOL)action;
@end

@implementation ServerAuthenticationOperation

- (ServerAuthenticationOperation)init
{
  if (!+[SSDevice deviceIsInternalBuild])
  {
    goto LABEL_15;
  }

  v3 = +[SSLogConfig sharedAccountsAuthenticationConfig];
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = objc_opt_class();
  v8 = v7;
  v9 = +[SSStackShot generateSymbolicatedStackShot];
  v14 = 138543618;
  v15 = v7;
  v16 = 2114;
  v17 = v9;
  v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Creating an ServerAuthenticationOperation. callStack = %{public}@", &v14, 22);

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    v12 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

LABEL_15:
  v13.receiver = self;
  v13.super_class = ServerAuthenticationOperation;
  result = [(ServerAuthenticationOperation *)&v13 init];
  if (result)
  {
    result->_performsButtonAction = 1;
  }

  return result;
}

- (ServerAuthenticationOperation)initWithDialog:(id)dialog
{
  dialogCopy = dialog;
  v6 = [(ServerAuthenticationOperation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialog, dialog);
  }

  return v7;
}

- (NSNumber)authenticatedAccountDSID
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_authenticatedAccountDSID;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (SSAuthenticationContext)authenticationContext
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_authenticationContext;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (ISDialog)dialog
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_dialog;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (ISDialogButton)performedButton
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_performedButton;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (BOOL)performsButtonAction
{
  [(ServerAuthenticationOperation *)self lock];
  performsButtonAction = self->_performsButtonAction;
  [(ServerAuthenticationOperation *)self unlock];
  return performsButtonAction;
}

- (NSURL)redirectURL
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_redirectURL;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (ISDialogButton)selectedButton
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_selectedButton;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(ServerAuthenticationOperation *)self lock];
  if (self->_authenticationContext != contextCopy)
  {
    v4 = [(SSAuthenticationContext *)contextCopy copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(ServerAuthenticationOperation *)self unlock];
}

- (void)setPerformsButtonAction:(BOOL)action
{
  [(ServerAuthenticationOperation *)self lock];
  self->_performsButtonAction = action;

  [(ServerAuthenticationOperation *)self unlock];
}

- (void)run
{
  dialog = [(ServerAuthenticationOperation *)self dialog];
  if ([(ServerAuthenticationOperation *)self _shouldSkipInitialDialog:dialog])
  {
    firstObject = [(ServerAuthenticationOperation *)self _copyButtonToSkipDialog:dialog];
    v5 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v6 = [(ServerAuthenticationOperation *)self _copySelectedButton:&v26 returningError:&v25];
    firstObject = v26;
    v5 = v25;
    if (!v6)
    {
      v12 = 0;
      v11 = 0;
LABEL_31:

      goto LABEL_32;
    }
  }

  if (firstObject)
  {
    if ([(ServerAuthenticationOperation *)self _shouldAuthenticateForButton:firstObject])
    {
      v23 = v5;
      v24 = 0;
      v7 = [(ServerAuthenticationOperation *)self _copyAccountIdentifier:&v24 returningError:&v23];
      v8 = v24;
      v9 = v24;
      v10 = v23;

      if (v7)
      {
        [(ServerAuthenticationOperation *)self lock];
        objc_storeStrong(&self->_authenticatedAccountDSID, v8);
        [(ServerAuthenticationOperation *)self unlock];
        [(ServerAuthenticationOperation *)self _handleSelectedButton:firstObject];
        v11 = 1;
LABEL_30:
        v12 = firstObject;
        [(ServerAuthenticationOperation *)self lock];
        objc_storeStrong(&self->_selectedButton, firstObject);
        [(ServerAuthenticationOperation *)self unlock];
        firstObject = v9;
        v5 = v10;
        goto LABEL_31;
      }

      if (ISErrorIsEqual())
      {
        buttons = [dialog buttons];
        firstObject = [buttons firstObject];

        if ([(ServerAuthenticationOperation *)self performsButtonAction])
        {
          [firstObject performDefaultActionForDialog:dialog];
        }
      }

      else
      {
        firstObject = 0;
      }

LABEL_29:
      v11 = 0;
      goto LABEL_30;
    }

    v13 = +[SSLogConfig sharedAccountsAuthenticationConfig];
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
      v17 = objc_opt_class();
      v27 = 138543362;
      v28 = v17;
      v18 = v17;
      v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: User picked non-actionable button", &v27, 12);

      if (!v19)
      {
LABEL_22:

        v10 = ISError();

        if ([(ServerAuthenticationOperation *)self performsButtonAction])
        {
          dialog2 = [(ServerAuthenticationOperation *)self dialog];
          [firstObject performDefaultActionForDialog:dialog2];
        }

        else
        {
          [(ServerAuthenticationOperation *)self lock];
          objc_storeStrong(&self->_performedButton, firstObject);
          [(ServerAuthenticationOperation *)self unlock];
        }

        v9 = 0;
        goto LABEL_29;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      v22 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_22;
  }

  v12 = 0;
  v11 = 0;
LABEL_32:
  [(ServerAuthenticationOperation *)self setError:v5];
  [(ServerAuthenticationOperation *)self setSuccess:v11];
}

- (BOOL)_copyAccountIdentifier:(id *)identifier returningError:(id *)error
{
  _copyAuthenticationContext = [(ServerAuthenticationOperation *)self _copyAuthenticationContext];
  v7 = &CFDictionaryGetValue_ptr;
  v8 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = AMSLogKey();
    redirectURL = [(ServerAuthenticationOperation *)self redirectURL];
    v37 = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = v15;
    v41 = 2114;
    v42 = redirectURL;
    v17 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%{public}@]: [%{public}@] Performing authentication. redirectURL = %{public}@.", &v37, 32);

    v7 = &CFDictionaryGetValue_ptr;
    if (v17)
    {
      v18 = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      v32 = v18;
      SSFileLog();
    }
  }

  else
  {
  }

  v35 = 0;
  v36 = 0;
  v19 = [(ServerAuthenticationOperation *)self copyAccountID:&v36 credentialSource:0 byAuthenticatingWithContext:_copyAuthenticationContext returningError:&v35];
  v20 = v36;
  v21 = v35;
  if ((v19 & 1) == 0)
  {
    sharedAccountsAuthenticationConfig = [v7[412] sharedAccountsAuthenticationConfig];
    if (!sharedAccountsAuthenticationConfig)
    {
      sharedAccountsAuthenticationConfig = [v7[412] sharedConfig];
    }

    shouldLog2 = [sharedAccountsAuthenticationConfig shouldLog];
    if ([sharedAccountsAuthenticationConfig shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [sharedAccountsAuthenticationConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v25 = shouldLog2;
    }

    else
    {
      v25 = shouldLog2 & 2;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v37 = 138543618;
      v38 = v26;
      v39 = 2112;
      v40 = v21;
      v27 = v26;
      LODWORD(v33) = 22;
      v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Could not authenticate. error = %@", &v37, v33);

      if (!v28)
      {
LABEL_25:

        goto LABEL_26;
      }

      oSLogObject2 = [NSString stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog();
    }

    goto LABEL_25;
  }

LABEL_26:
  if (error)
  {
    v29 = v21;
    *error = v21;
  }

  if (identifier)
  {
    v30 = v20;
    *identifier = v20;
  }

  return v19;
}

- (id)_copyAuthenticationContext
{
  authenticationContext = [(ServerAuthenticationOperation *)self authenticationContext];
  v4 = [authenticationContext mutableCopy];

  if (!v4)
  {
    v5 = [SSMutableAuthenticationContext alloc];
    v6 = +[SSAccountStore defaultStore];
    activeAccount = [v6 activeAccount];
    v4 = [v5 initWithAccount:activeAccount];
  }

  dialog = [(ServerAuthenticationOperation *)self dialog];
  authorizationIsForced = [dialog authorizationIsForced];

  if (authorizationIsForced)
  {
    [v4 setPromptStyle:1];
  }

  v10 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"serverDialog", @"why", @"true", @"createSession", 0}];
  requestParameters = [v4 requestParameters];
  if (requestParameters)
  {
    [v10 addEntriesFromDictionary:requestParameters];
  }

  [v4 setRequestParameters:v10];
  dialog2 = [(ServerAuthenticationOperation *)self dialog];
  if (!dialog2)
  {
    goto LABEL_62;
  }

  v13 = dialog2;
  v14 = [(ServerAuthenticationOperation *)self _isLocalizationAlreadyConfiguredForAuthContext:v4];

  if (v14)
  {
    goto LABEL_62;
  }

  dialog3 = [(ServerAuthenticationOperation *)self dialog];
  title = [dialog3 title];
  v17 = [title length];

  if (v17)
  {
    title2 = [dialog3 title];
    [v4 setPromptTitle:title2];
    v19 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = shouldLog | 2;
    }

    else
    {
      v21 = shouldLog;
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      v66 = requestParameters;
      v24 = v10;
      v25 = dialog3;
      v26 = objc_opt_class();
      v63 = v26;
      v27 = SSHashIfNeeded();
      v74 = 138543618;
      v75 = v26;
      dialog3 = v25;
      v10 = v24;
      requestParameters = v66;
      v76 = 2114;
      v77 = v27;
      LODWORD(v62) = 22;
      v28 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Appending server-driven title: %{public}@", &v74, v62);

      if (v28)
      {
        v29 = [NSString stringWithCString:v28 encoding:4];
        free(v28);
        v60 = v29;
        SSFileLog();
      }
    }

    else
    {
    }
  }

  message = [dialog3 message];
  v31 = [message length];

  if (!v31)
  {
    goto LABEL_36;
  }

  message2 = [dialog3 message];
  accountName = [v4 accountName];
  v34 = [SSPaymentSheet stringWithFormattedUsernameForString:message2 username:accountName];

  [v4 setReasonDescription:v34];
  v35 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v35)
  {
    v35 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  oSLogObject2 = [v35 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v38 = shouldLog2;
  }

  else
  {
    v38 = shouldLog2 & 2;
  }

  if (!v38)
  {
    goto LABEL_34;
  }

  v39 = objc_opt_class();
  v64 = v39;
  SSHashIfNeeded();
  v67 = v34;
  v41 = v40 = dialog3;
  v74 = 138543618;
  v75 = v39;
  v76 = 2114;
  v77 = v41;
  LODWORD(v62) = 22;
  v42 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%{public}@: Appending server-driven reason: %{public}@", &v74, v62);

  dialog3 = v40;
  v34 = v67;

  if (v42)
  {
    oSLogObject2 = [NSString stringWithCString:v42 encoding:4];
    free(v42);
    v61 = oSLogObject2;
    SSFileLog();
LABEL_34:
  }

LABEL_36:
  buttons = [dialog3 buttons];
  v44 = [buttons count];

  if (v44 > 2)
  {
    goto LABEL_61;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  buttons2 = [dialog3 buttons];
  v46 = [buttons2 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (!v46)
  {
    goto LABEL_60;
  }

  v47 = v46;
  v48 = *v70;
  while (2)
  {
    for (i = 0; i != v47; i = i + 1)
    {
      if (*v70 != v48)
      {
        objc_enumerationMutation(buttons2);
      }

      v50 = *(*(&v69 + 1) + 8 * i);
      if ([v50 actionType] && objc_msgSend(v50, "actionType") != 5)
      {
        v68 = dialog3;
        title3 = [v50 title];
        [v4 setOkButtonLabel:title3];
        v52 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v52)
        {
          v52 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v52 shouldLog];
        if ([v52 shouldLogToDisk])
        {
          shouldLog3 |= 2u;
        }

        oSLogObject3 = [v52 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
        {
          v55 = shouldLog3;
        }

        else
        {
          v55 = shouldLog3 & 2;
        }

        if (v55)
        {
          v56 = objc_opt_class();
          v65 = v56;
          v57 = SSHashIfNeeded();
          v74 = 138543618;
          v75 = v56;
          v76 = 2114;
          v77 = v57;
          LODWORD(v62) = 22;
          v58 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%{public}@: Appending server-driven buy button label: %{public}@", &v74, v62);

          dialog3 = v68;
          if (!v58)
          {
LABEL_59:

            goto LABEL_60;
          }

          oSLogObject3 = [NSString stringWithCString:v58 encoding:4];
          free(v58);
          SSFileLog();
        }

        else
        {
          dialog3 = v68;
        }

        goto LABEL_59;
      }
    }

    v47 = [buttons2 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_60:

LABEL_61:
LABEL_62:

  return v4;
}

- (id)_copyButtonToSkipDialog:(id)dialog
{
  dialogCopy = dialog;
  buttons = [dialogCopy buttons];
  v5 = [buttons count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [buttons objectAtIndex:v6 - 1];
      if ([v8 actionType])
      {
        v9 = v8;

        v7 = v9;
      }

      if ([v8 actionType] == 1)
      {
        subtarget = [v8 subtarget];
        lowercaseString = [subtarget lowercaseString];
        v12 = [lowercaseString containsString:@"signup"];

        if (!v12 || v6 <= 1)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (v6 < 2)
        {
          goto LABEL_12;
        }
      }

      --v6;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)_copySelectedButton:(id *)button returningError:(id *)error
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10013F620;
  v25 = sub_10013F630;
  v26 = 0;
  dialog = [(ServerAuthenticationOperation *)self dialog];
  v8 = [[DaemonDialogOperation alloc] initWithDialog:dialog];
  authenticationContext = [(ServerAuthenticationOperation *)self authenticationContext];
  -[DaemonDialogOperation setDisplaysOnLockscreen:](v8, "setDisplaysOnLockscreen:", [authenticationContext displaysOnLockScreen]);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10013F638;
  v17[3] = &unk_100329AA8;
  v19 = &v21;
  v10 = dialog;
  v18 = v10;
  v20 = &v27;
  [(DaemonDialogOperation *)v8 setOutputBlock:v17];
  v16 = 0;
  [(ServerAuthenticationOperation *)self runSubOperation:v8 returningError:&v16];
  v11 = v16;
  v12 = v11;
  if (error)
  {
    v13 = v11;
    *error = v12;
  }

  if (button)
  {
    *button = v22[5];
  }

  v14 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v14;
}

- (void)_handleSelectedButton:(id)button
{
  buttonCopy = button;
  _copyAuthenticationContext = [(ServerAuthenticationOperation *)self _copyAuthenticationContext];
  if ([buttonCopy actionType] == 1 && ((objc_msgSend(_copyAuthenticationContext, "shouldFollowAccountButtons") & 1) != 0 || objc_msgSend(buttonCopy, "urlType") != 1))
  {
    [(ServerAuthenticationOperation *)self lock];
    parameter = [buttonCopy parameter];
    redirectURL = self->_redirectURL;
    self->_redirectURL = parameter;

LABEL_20:
    [(ServerAuthenticationOperation *)self unlock];
    goto LABEL_21;
  }

  if (![(ServerAuthenticationOperation *)self performsButtonAction])
  {
    [(ServerAuthenticationOperation *)self lock];
    objc_storeStrong(&self->_performedButton, button);
    goto LABEL_20;
  }

  v7 = +[SSLogConfig sharedAccountsAuthenticationConfig];
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

  if (!v9)
  {
    goto LABEL_16;
  }

  v16 = 138543362;
  v17 = objc_opt_class();
  v11 = v17;
  v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Performing default action instead of redirecting", &v16, 12);

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_16:
  }

  dialog = [(ServerAuthenticationOperation *)self dialog];
  [buttonCopy performDefaultActionForDialog:dialog];

LABEL_21:
}

- (BOOL)_isLocalizationAlreadyConfiguredForAuthContext:(id)context
{
  contextCopy = context;
  okButtonLabel = [contextCopy okButtonLabel];
  if (okButtonLabel)
  {
    v5 = 1;
  }

  else
  {
    promptTitle = [contextCopy promptTitle];
    if (promptTitle)
    {
      v5 = 1;
    }

    else
    {
      reasonDescription = [contextCopy reasonDescription];
      v5 = reasonDescription != 0;
    }
  }

  return v5;
}

- (BOOL)_shouldAuthenticateForButton:(id)button
{
  buttonCopy = button;
  dialog = [(ServerAuthenticationOperation *)self dialog];
  buttons = [dialog buttons];

  if ([buttonCopy actionType])
  {
    v7 = [buttons count] != 2 || objc_msgSend(buttons, "indexOfObjectIdenticalTo:", buttonCopy) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldSkipInitialDialog:(id)dialog
{
  dialogCopy = dialog;
  v5 = CFPreferencesCopyAppValue(@"Password", kSSUserDefaultsIdentifier);
  if ([v5 length])
  {
    _copyAuthenticationContext = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!_copyAuthenticationContext)
    {
      _copyAuthenticationContext = +[SSLogConfig sharedConfig];
    }

    shouldLog = [_copyAuthenticationContext shouldLog];
    if ([_copyAuthenticationContext shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [_copyAuthenticationContext OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (!v8)
    {
      goto LABEL_15;
    }

    *v33 = 138543362;
    *&v33[4] = objc_opt_class();
    v10 = *&v33[4];
    v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Skipping explanation because of password default", v33, 12, *v33, *&v33[8]);
    goto LABEL_12;
  }

  title = [dialogCopy title];
  if ([title length])
  {
  }

  else
  {
    message = [dialogCopy message];
    v17 = [message length];

    if (!v17)
    {
      _copyAuthenticationContext = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!_copyAuthenticationContext)
      {
        _copyAuthenticationContext = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [_copyAuthenticationContext shouldLog];
      if ([_copyAuthenticationContext shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog2;
      }

      oSLogObject = [_copyAuthenticationContext OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (!v25)
      {
        goto LABEL_15;
      }

      *v33 = 138543362;
      *&v33[4] = objc_opt_class();
      v10 = *&v33[4];
      v11 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Skipping explanation as strings are empty", v33, 12, *v33, *&v33[8]);
LABEL_12:
      v12 = v11;
      goto LABEL_13;
    }
  }

  if ([dialogCopy kind] != 1)
  {
    if ([dialogCopy authorizationIsForced])
    {
      v13 = 0;
      goto LABEL_18;
    }

    _copyAuthenticationContext = [(ServerAuthenticationOperation *)self _copyAuthenticationContext];
    if (+[SSAccountStore isExpiredForTokenType:](SSAccountStore, "isExpiredForTokenType:", [_copyAuthenticationContext tokenType]))
    {
      goto LABEL_62;
    }

    v22 = +[SSAccountStore defaultStore];
    requiredUniqueIdentifier = [_copyAuthenticationContext requiredUniqueIdentifier];
    if (requiredUniqueIdentifier)
    {
      [v22 accountWithUniqueIdentifier:requiredUniqueIdentifier];
    }

    else
    {
      [v22 activeAccount];
    }
    v26 = ;
    isAuthenticated = [v26 isAuthenticated];

    if (!isAuthenticated)
    {
LABEL_62:
      v13 = 0;
      goto LABEL_17;
    }

    oSLogObject = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!oSLogObject)
    {
      oSLogObject = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [oSLogObject shouldLog];
    if ([oSLogObject shouldLogToDisk])
    {
      LODWORD(v29) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v29) = shouldLog3;
    }

    v9OSLogObject = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v9OSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      *v33 = 138543362;
      *&v33[4] = objc_opt_class();
      v31 = *&v33[4];
      v32 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, v9OSLogObject, 0, "%{public}@: Skipping dialog because we are authenticated and not forced", v33, 12);

      if (!v32)
      {
        goto LABEL_15;
      }

      v9OSLogObject = [NSString stringWithCString:v32 encoding:4];
      free(v32);
      SSFileLog();
    }

    goto LABEL_15;
  }

  _copyAuthenticationContext = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!_copyAuthenticationContext)
  {
    _copyAuthenticationContext = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [_copyAuthenticationContext shouldLog];
  if ([_copyAuthenticationContext shouldLogToDisk])
  {
    LODWORD(v19) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v19) = shouldLog4;
  }

  oSLogObject = [_copyAuthenticationContext OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v19;
  }

  else
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = objc_opt_class();
  v10 = v20;
  v21 = AMSLogKey();
  *v33 = 138543618;
  *&v33[4] = v20;
  *&v33[12] = 2114;
  *&v33[14] = v21;
  v12 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: [%{public}@] Skipping explanation because of consolidated auth dialogs", v33, 22);

LABEL_13:
  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_15:
  }

  v13 = 1;
LABEL_17:

LABEL_18:
  return v13;
}

@end