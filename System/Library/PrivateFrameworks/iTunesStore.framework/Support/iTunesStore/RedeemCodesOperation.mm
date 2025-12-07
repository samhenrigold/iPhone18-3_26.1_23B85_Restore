@interface RedeemCodesOperation
- (BOOL)_canPerformExtendedBiometricActions;
- (BOOL)_didUserCancelWithError:(id)error;
- (BOOL)_fetchRedeemCodeMetadataWithError:(id *)error;
- (BOOL)_processDictionary:(id)dictionary dialog:(id *)dialog error:(id *)error;
- (BOOL)_useLegacyRedeem;
- (NSString)userAgent;
- (RedeemCodesOperation)initWithRedeemCodes:(id)codes;
- (SSAuthenticationContext)authenticationContext;
- (SSRedeemCodesResponse)redeemResponse;
- (id)_authenticateAppleAccount:(id)account withTitle:(id)title error:(id *)error;
- (id)_installedExternalVersionForRedeemCodeMetadata:(id)metadata;
- (id)_newURLRequestPropertiesForCode:(id)code;
- (id)_newURLRequestPropertiesForServiceActionButton:(id)button;
- (void)_postNotificationWithResponse:(id)response;
- (void)_runHeadless;
- (void)_runNonHeadless;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setUserAgent:(id)agent;
@end

@implementation RedeemCodesOperation

- (RedeemCodesOperation)initWithRedeemCodes:(id)codes
{
  codesCopy = codes;
  v13.receiver = self;
  v13.super_class = RedeemCodesOperation;
  v5 = [(RedeemCodesOperation *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(ISBiometricStore);
    biometricStore = v5->_biometricStore;
    v5->_biometricStore = v6;

    v8 = [codesCopy copy];
    redeemCodes = v5->_redeemCodes;
    v5->_redeemCodes = v8;

    v5->_headless = 1;
    v10 = AMSGenerateLogCorrelationKey();
    logCorrelationKey = v5->_logCorrelationKey;
    v5->_logCorrelationKey = v10;
  }

  return v5;
}

- (SSAuthenticationContext)authenticationContext
{
  [(RedeemCodesOperation *)self lock];
  v3 = self->_authenticationContext;
  [(RedeemCodesOperation *)self unlock];

  return v3;
}

- (SSRedeemCodesResponse)redeemResponse
{
  [(RedeemCodesOperation *)self lock];
  v3 = self->_redeemResponse;
  [(RedeemCodesOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(RedeemCodesOperation *)self lock];
  if (self->_authenticationContext != contextCopy)
  {
    v4 = [(SSAuthenticationContext *)contextCopy copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(RedeemCodesOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  agentCopy = agent;
  [(RedeemCodesOperation *)self lock];
  if (self->_userAgent != agentCopy)
  {
    v4 = [(NSString *)agentCopy copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(RedeemCodesOperation *)self unlock];
}

- (NSString)userAgent
{
  [(RedeemCodesOperation *)self lock];
  v3 = self->_userAgent;
  [(RedeemCodesOperation *)self unlock];

  return v3;
}

- (void)run
{
  if (self->_headless)
  {
    [(RedeemCodesOperation *)self _runHeadless];
  }

  else
  {
    [(RedeemCodesOperation *)self _runNonHeadless];
  }
}

- (id)_authenticateAppleAccount:(id)account withTitle:(id)title error:(id *)error
{
  titleCopy = title;
  accountCopy = account;
  aa_altDSID = [accountCopy aa_altDSID];
  aa_personID = [accountCopy aa_personID];
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [aa_personID longLongValue]);

  username = [accountCopy username];

  v13 = +[SSAccountStore defaultStore];
  v14 = [v13 accountWithAltDSID:aa_altDSID uniqueIdentifier:v11 accountName:username];

  if (!v14)
  {
    v14 = objc_alloc_init(SSAccount);
    [v14 setAccountName:username];
    [v14 setAltDSID:aa_altDSID];
    [v14 setUniqueIdentifier:v11];
  }

  v65 = username;
  v66 = v11;
  v68 = aa_altDSID;
  v15 = [[SSMutableAuthenticationContext alloc] initWithAccount:v14];
  [v15 setCanSetActiveAccount:0];
  [v15 setPromptStyle:1];
  [v15 setPromptTitle:titleCopy];

  [v15 setValue:@"1" forHTTPHeaderField:SSHTTPHeaderXAppleAllowLiteAccountConversion];
  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = shouldLog | 2;
  }

  else
  {
    v18 = shouldLog;
  }

  oSLogObject = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = objc_opt_class();
  v22 = v21;
  [(RedeemCodesOperation *)self logCorrelationKey];
  v24 = v23 = self;
  hashedDescription = [v14 hashedDescription];
  v69 = 138543874;
  v70 = v21;
  v71 = 2114;
  v72 = v24;
  v73 = 2114;
  v74 = hashedDescription;
  v26 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: [%{public}@] The server told us to redeem the code again using the iCloud account. iCloudAccount = %{public}@", &v69, 32);

  self = v23;
  if (v26)
  {
    oSLogObject = [NSString stringWithCString:v26 encoding:4];
    free(v26);
    v60 = oSLogObject;
    SSFileLog();
LABEL_14:
  }

  v27 = objc_alloc_init(SSPromise);
  v28 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v15];
  completionHandlerAdapter = [v27 completionHandlerAdapter];
  [v28 startWithAuthenticateResponseBlock:completionHandlerAdapter];

  v64 = [v27 resultWithError:0];
  error = [v64 error];
  domain = [error domain];
  if ([domain isEqualToString:SSErrorDomain] && objc_msgSend(error, "code") == 140)
  {

    goto LABEL_20;
  }

  domain2 = [error domain];
  if ([domain2 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    code = [error code];

    if (code == -7003)
    {
LABEL_20:
      v34 = +[SSLogConfig sharedDaemonConfig];
      if (!v34)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        LODWORD(v36) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v36) = shouldLog2;
      }

      oSLogObject2 = [v34 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v36;
      }

      else
      {
        v36 &= 2u;
      }

      if (v36)
      {
        v38 = v15;
        v39 = v28;
        v40 = v14;
        v41 = v27;
        v42 = objc_opt_class();
        v62 = v42;
        logCorrelationKey = [(RedeemCodesOperation *)self logCorrelationKey];
        v69 = 138543874;
        v70 = v42;
        v27 = v41;
        v14 = v40;
        v28 = v39;
        v15 = v38;
        v71 = 2114;
        v72 = logCorrelationKey;
        v73 = 2114;
        v74 = error;
        LODWORD(v61) = 32;
        v44 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: [%{public}@] The user cancelled the redeem. error = %{public}@", &v69, v61);

        if (!v44)
        {
LABEL_46:

          SSError();
          error = v45 = error;
          v55 = v65;
          goto LABEL_50;
        }

        oSLogObject2 = [NSString stringWithCString:v44 encoding:4];
        free(v44);
        v60 = oSLogObject2;
        SSFileLog();
      }

      goto LABEL_46;
    }
  }

  else
  {
  }

  if (!error)
  {
    v55 = v65;
    v56 = v66;
    goto LABEL_51;
  }

  v45 = +[SSLogConfig sharedDaemonConfig];
  if (!v45)
  {
    v45 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v45 shouldLog];
  if ([v45 shouldLogToDisk])
  {
    LODWORD(v47) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v47) = shouldLog3;
  }

  oSLogObject3 = [v45 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v47 = v47;
  }

  else
  {
    v47 &= 2u;
  }

  if (v47)
  {
    v63 = v27;
    v49 = objc_opt_class();
    v50 = v49;
    selfCopy = self;
    v52 = v50;
    logCorrelationKey2 = [(RedeemCodesOperation *)selfCopy logCorrelationKey];
    v69 = 138543874;
    v70 = v49;
    v71 = 2114;
    v72 = logCorrelationKey2;
    v73 = 2114;
    v74 = error;
    LODWORD(v61) = 32;
    v54 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: [%{public}@] Failed to authenticate the iCloud account. The redeem will fail. error = %{public}@", &v69, v61);

    if (!v54)
    {
      v55 = v65;
      v27 = v63;
      goto LABEL_50;
    }

    oSLogObject3 = [NSString stringWithCString:v54 encoding:4];
    free(v54);
    v60 = oSLogObject3;
    SSFileLog();
    v55 = v65;
    v27 = v63;
  }

  else
  {
    v55 = v65;
  }

LABEL_50:
  v56 = v66;
LABEL_51:
  if (error)
  {
    v57 = error;
    *error = error;
  }

  authenticatedAccount = [v64 authenticatedAccount];

  return authenticatedAccount;
}

- (void)_runHeadless
{
  v65 = objc_alloc_init(NSMutableDictionary);
  v64 = objc_alloc_init(NSMutableDictionary);
  v73 = objc_alloc_init(NSMutableDictionary);
  userAgent = [(RedeemCodesOperation *)self userAgent];
  selfCopy = self;
  authenticationContext = [(RedeemCodesOperation *)self authenticationContext];
  v5 = [authenticationContext mutableCopy];

  v71 = v5;
  v72 = userAgent;
  v70 = SSHTTPHeaderUserAgent;
  [v5 setValue:userAgent forHTTPHeaderField:?];
  v6 = &CFDictionaryGetValue_ptr;
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = objc_opt_class();
  v12 = v11;
  logCorrelationKey = [(RedeemCodesOperation *)selfCopy logCorrelationKey];
  v14 = [(NSArray *)selfCopy->_redeemCodes count];
  v80 = 138543874;
  v81 = v11;
  v82 = 2114;
  v83 = logCorrelationKey;
  v84 = 2048;
  v85 = v14;
  v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: [%{public}@] Redeeming %lu codes headless", &v80, 32);

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    v59 = oSLogObject;
    SSFileLog();
LABEL_12:
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = selfCopy;
  obj = selfCopy->_redeemCodes;
  v17 = v65;
  v69 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (!v69)
  {
    goto LABEL_60;
  }

  v63 = kISDialogKey;
  v68 = *v77;
  do
  {
    v18 = 0;
    do
    {
      if (*v77 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v76 + 1) + 8 * v18);
      context = objc_autoreleasePoolPush();
      v20 = objc_alloc_init(ISStoreURLOperation);
      [v20 setAuthenticationContext:v71];
      v21 = +[DaemonProtocolDataProvider provider];
      [v20 setDataProvider:v21];

      [v20 setNeedsAuthentication:{objc_msgSend(v16, "_canPerformExtendedBiometricActions") ^ 1}];
      v22 = objc_alloc_init(SSMutableURLRequestProperties);
      [v22 setValue:v19 forRequestParameter:@"certId"];
      [v22 setURLBagKey:@"p2-headless-redemption"];
      [v22 setValue:v72 forHTTPHeaderField:v70];
      [v20 setRequestProperties:v22];
      v75 = 0;
      LOBYTE(v21) = [v16 runSubOperation:v20 returningError:&v75];
      v23 = v75;
      if (v21)
      {
        dataProvider = [v20 dataProvider];
        output = [dataProvider output];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = output;
          v27 = [v26 objectForKey:@"failureType"];
          if (v27)
          {
            if (objc_opt_respondsToSelector())
            {
              [v27 integerValue];
            }

            v32 = [v26 objectForKey:{@"customerMessage", v59}];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v33 = [v26 objectForKey:v63];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v62 = [[ISDialog alloc] initWithDialogDictionary:v33];
                title = [v62 title];

                v32 = title;
              }
            }

            v34 = SSError();

            v23 = v34;
          }

          v35 = [v26 objectForKey:{@"cancel-purchase-batch", v59}];
          if (objc_opt_respondsToSelector())
          {
            bOOLValue = [v35 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          v17 = v65;
          v31 = v27 == 0;
        }

        else
        {
          v26 = 0;
          bOOLValue = 0;
          v31 = 1;
        }

        [v73 setObject:v26 forKey:v19];
        if (v31)
        {
          v16 = selfCopy;
          if (v26)
          {
            [(RedeemCodesOperation *)selfCopy _postNotificationWithResponse:v26];
            v29 = v64;
            v30 = v26;
            goto LABEL_41;
          }
        }

        else
        {
          v16 = selfCopy;
        }
      }

      else
      {
        [v73 setObject:0 forKey:v19];
        bOOLValue = 0;
        v26 = 0;
      }

      if (v23)
      {
        bOOLValue |= ISErrorIsEqual();
      }

      else
      {
        v23 = SSError();
      }

      v29 = v17;
      v30 = v23;
LABEL_41:
      [v29 setObject:v30 forKey:{v19, v59}];

      objc_autoreleasePoolPop(context);
      if (bOOLValue)
      {
        v6 = &CFDictionaryGetValue_ptr;
        v37 = +[SSLogConfig sharedDaemonConfig];
        if (!v37)
        {
          v37 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v37 shouldLog];
        if ([v37 shouldLogToDisk])
        {
          LODWORD(v39) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v39) = shouldLog2;
        }

        oSLogObject2 = [v37 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v39;
        }

        else
        {
          v39 &= 2u;
        }

        if (v39)
        {
          v41 = objc_opt_class();
          v42 = v41;
          logCorrelationKey2 = [v16 logCorrelationKey];
          v80 = 138543618;
          v81 = v41;
          v82 = 2114;
          v83 = logCorrelationKey2;
          LODWORD(v60) = 22;
          v44 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: [%{public}@] Canceled redeem batch", &v80, v60);

          if (!v44)
          {
LABEL_59:

            goto LABEL_60;
          }

          oSLogObject2 = [NSString stringWithCString:v44 encoding:4];
          free(v44);
          v59 = oSLogObject2;
          SSFileLog();
        }

        goto LABEL_59;
      }

      v18 = v18 + 1;
    }

    while (v69 != v18);
    v36 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v88 count:16];
    v6 = &CFDictionaryGetValue_ptr;
    v69 = v36;
  }

  while (v36);
LABEL_60:

  sharedDaemonConfig = [v6[412] sharedDaemonConfig];
  if (!sharedDaemonConfig)
  {
    sharedDaemonConfig = [v6[412] sharedConfig];
  }

  shouldLog3 = [sharedDaemonConfig shouldLog];
  if ([sharedDaemonConfig shouldLogToDisk])
  {
    v47 = shouldLog3 | 2;
  }

  else
  {
    v47 = shouldLog3;
  }

  oSLogObject3 = [sharedDaemonConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v47;
  }

  else
  {
    v49 = v47 & 2;
  }

  if (v49)
  {
    v50 = objc_opt_class();
    v51 = v50;
    logCorrelationKey3 = [v16 logCorrelationKey];
    v53 = [v64 count];
    v54 = v65;
    v55 = [v65 count];
    v80 = 138544130;
    v81 = v50;
    v82 = 2114;
    v83 = logCorrelationKey3;
    v84 = 2048;
    v85 = v53;
    v16 = selfCopy;
    v86 = 2048;
    v87 = v55;
    LODWORD(v60) = 42;
    v56 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: [%{public}@] Redeemed %lu codes with %lu failures", &v80, v60);

    if (v56)
    {
      oSLogObject3 = [NSString stringWithCString:v56 encoding:4];
      free(v56);
      SSFileLog();
      goto LABEL_72;
    }
  }

  else
  {
    v54 = v65;
LABEL_72:
  }

  [v16 lock];
  v57 = objc_alloc_init(SSRedeemCodesResponse);
  v58 = v16[20];
  v16[20] = v57;

  [v16[20] setCodeResponses:v73];
  [v16[20] setFailedCodes:v54];
  [v16[20] setRedeemedCodes:v64];
  [v16 unlock];
  [v16 setSuccess:1];
}

- (void)_runNonHeadless
{
  v103 = objc_alloc_init(NSMutableDictionary);
  v101 = objc_alloc_init(NSMutableDictionary);
  v105 = objc_alloc_init(NSMutableDictionary);
  userAgent = [(RedeemCodesOperation *)self userAgent];
  authenticationContext = [(RedeemCodesOperation *)self authenticationContext];
  v5 = [authenticationContext mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(SSMutableAuthenticationContext);
  }

  v109 = v5;
  [v5 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  selfCopy = self;
  v99 = userAgent;
  if (![(RedeemCodesOperation *)self _useLegacyRedeem])
  {
    v100 = 0;
LABEL_27:
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog;
    }

    oSLogObject = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v27 = v26;
      logCorrelationKey = [(RedeemCodesOperation *)selfCopy logCorrelationKey];
      v29 = [(NSArray *)selfCopy->_redeemCodes count];
      v131 = 138543874;
      v132 = v26;
      v133 = 2114;
      v134 = logCorrelationKey;
      v135 = 2048;
      v136 = v29;
      v30 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: [%{public}@] Redeeming %lu codes", &v131, 32, v99);

      if (!v30)
      {
LABEL_39:

        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v31 = selfCopy;
        obj = selfCopy->_redeemCodes;
        v106 = [(NSArray *)obj countByEnumeratingWithState:&v122 objects:v139 count:16];
        if (!v106)
        {
          v18 = v109;
          goto LABEL_97;
        }

        v104 = *v123;
        v18 = v109;
        while (1)
        {
          v32 = 0;
          do
          {
            if (*v123 != v104)
            {
              objc_enumerationMutation(obj);
            }

            v108 = v32;
            v111 = *(*(&v122 + 1) + 8 * v32);
            context = objc_autoreleasePoolPush();
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {

              v36 = objc_alloc_init(ISStoreURLOperation);
              [v36 setAuthenticationContext:v18];
              v37 = +[RedeemCodesProtocolDataProvider provider];
              [v37 setShouldProcessDialogs:0];
              [v36 setDataProvider:v37];
              v114 = [v31 _newURLRequestPropertiesForCode:v111];
              [v36 setRequestProperties:?];
              v121 = 0;
              v38 = [v31 runSubOperation:v36 returningError:&v121];
              v33 = v121;
              if (v38)
              {
                dataProvider = [v36 dataProvider];
                output = [dataProvider output];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = output;
                  v119 = v33;
                  v120 = 0;
                  v41 = [(RedeemCodesOperation *)selfCopy _processDictionary:v34 dialog:&v120 error:&v119];
                  v35 = v120;
                  v42 = v119;

                  v43 = v41;
                  v44 = v42;
                  v31 = selfCopy;
                  v33 = v44;
                }

                else
                {
                  v43 = 0;
                  v35 = 0;
                  v34 = 0;
                  v31 = selfCopy;
                }
              }

              else
              {
                v43 = 0;
                v35 = 0;
                v34 = 0;
              }

              dialogButton = [v37 dialogButton];
              v46 = v31[15];
              v31[15] = dialogButton;

              if ((v43 & 1) != 0 || [v33 code] != 3580)
              {
                break;
              }

              v110 = v43;
              v113 = v34;
              v47 = +[SSVAppleAccountStore sharedAccountStore];
              primaryAppleAccount = [v47 primaryAppleAccount];

              [v33 userInfo];
              v50 = v49 = v33;
              v51 = [v50 objectForKeyedSubscript:NSLocalizedDescriptionKey];
              v118 = 0;
              v52 = [v31 _authenticateAppleAccount:primaryAppleAccount withTitle:v51 error:&v118];
              v53 = v118;

              if (v52)
              {
                v54 = v49;
                uniqueIdentifier = [v52 uniqueIdentifier];
                v18 = v109;
                [v109 setRequiredUniqueIdentifier:uniqueIdentifier];
              }

              else
              {

                v35 = 0;
                v54 = v53;
                uniqueIdentifier = v49;
                v18 = v109;
              }

              v31 = selfCopy;
              v34 = v113;
              v33 = v54;
              if (!v52)
              {
                v43 = v110;
                if (!v35)
                {
                  goto LABEL_62;
                }

                goto LABEL_60;
              }
            }

            if (!v35)
            {
              goto LABEL_62;
            }

LABEL_60:
            if ([v35 kind] != 1)
            {
              v56 = [ISDialogOperation operationWithDialog:v35];
              [v56 setDelegate:v31];
              v117 = v33;
              [v31 runSubOperation:v56 returningError:&v117];
              v57 = v117;

              v33 = v57;
              v31 = selfCopy;
            }

LABEL_62:
            v58 = v31[15];
            if (v58)
            {
              if ([v58 actionType] == 10)
              {
                v59 = v43;
                v60 = v18;
                v61 = [v31 _newURLRequestPropertiesForServiceActionButton:v31[15]];
                v62 = objc_alloc_init(ISStoreURLOperation);
                v63 = v60;
                [v62 setAuthenticationContext:v60];
                v64 = +[DaemonProtocolDataProvider provider];
                [v62 setDataProvider:v64];

                [v62 setRequestProperties:v61];
                v116 = v33;
                LODWORD(v64) = [v31 runSubOperation:v62 returningError:&v116];
                v65 = v116;

                if (v64)
                {
                  v66 = v35;
                  dataProvider2 = [v62 dataProvider];
                  output2 = [dataProvider2 output];

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v69 = output2;

                    v115 = v65;
                    v59 = [v31 _processDictionary:v69 dialog:0 error:&v115];
                    v70 = v115;

                    v34 = v69;
                    v65 = v70;
                    v31 = selfCopy;
                  }

                  v35 = v66;
                }

                v71 = 0;
                v33 = v65;
                v18 = v63;
                v43 = v59;
              }

              else
              {
                [v31[15] performDefaultActionForDialog:v35];
                v71 = 1;
              }
            }

            else
            {
              v71 = 0;
            }

            [v105 setObject:v34 forKey:v111];
            if (v43 && v34)
            {
              [v31 _postNotificationWithResponse:v34];
              [v101 setObject:v34 forKey:v111];
              goto LABEL_93;
            }

            if (v33)
            {
              if (v71)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v33 = SSError();
              if (v71)
              {
                goto LABEL_79;
              }
            }

            if (ISErrorIsEqual())
            {
LABEL_79:
              v72 = v18;
              v73 = SSErrorBySettingUserInfoValue();

              v33 = v73;
              goto LABEL_81;
            }

            v72 = v18;
LABEL_81:
            [v103 setObject:v33 forKey:v111];
            v74 = +[SSLogConfig sharedDaemonConfig];
            if (!v74)
            {
              v74 = +[SSLogConfig sharedConfig];
            }

            LODWORD(v75) = [v74 shouldLog];
            if ([v74 shouldLogToDisk])
            {
              LODWORD(v75) = v75 | 2;
            }

            oSLogObject2 = [v74 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v75 = v75;
            }

            else
            {
              v75 &= 2u;
            }

            if (!v75)
            {
              goto LABEL_91;
            }

            v77 = objc_opt_class();
            v78 = v33;
            v79 = v77;
            logCorrelationKey2 = [(RedeemCodesOperation *)selfCopy logCorrelationKey];
            v81 = AMSLogableError();
            v131 = 138544130;
            v132 = v77;
            v133 = 2114;
            v134 = logCorrelationKey2;
            v135 = 2112;
            v31 = selfCopy;
            v136 = v111;
            v137 = 2114;
            v138 = v81;
            LODWORD(v98) = 42;
            v82 = _os_log_send_and_compose_impl(v75, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: [%{public}@] Redeem operation failed for code: %@, error: %{public}@", &v131, v98);

            v72 = v109;
            v33 = v78;

            if (v82)
            {
              oSLogObject2 = [NSString stringWithCString:v82 encoding:4];
              free(v82);
              v97 = oSLogObject2;
              SSFileLog();
LABEL_91:
            }

            v18 = v72;
LABEL_93:

            objc_autoreleasePoolPop(context);
            v32 = v108 + 1;
          }

          while ((v108 + 1) != v106);
          v106 = [(NSArray *)obj countByEnumeratingWithState:&v122 objects:v139 count:16];
          if (!v106)
          {
            goto LABEL_97;
          }
        }
      }

      oSLogObject = [NSString stringWithCString:v30 encoding:4];
      free(v30);
      v97 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_39;
  }

  v130 = 0;
  v6 = [(RedeemCodesOperation *)self _fetchRedeemCodeMetadataWithError:&v130];
  v100 = v130;
  if (v6)
  {
    goto LABEL_27;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog2 | 2;
  }

  else
  {
    v9 = shouldLog2;
  }

  oSLogObject3 = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = v12;
    logCorrelationKey3 = [(RedeemCodesOperation *)selfCopy logCorrelationKey];
    v15 = AMSLogableError();
    v131 = 138543874;
    v132 = v12;
    v133 = 2114;
    v134 = logCorrelationKey3;
    v135 = 2114;
    v136 = v15;
    v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: [%{public}@] Fetch redeem code metadata failed with error: %{public}@", &v131, 32, v99);

    if (!v16)
    {
      goto LABEL_17;
    }

    oSLogObject3 = [NSString stringWithCString:v16 encoding:4];
    free(v16);
    v97 = oSLogObject3;
    SSFileLog();
  }

LABEL_17:
  if (v100)
  {
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v126 = 0u;
    obj = selfCopy->_redeemCodes;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v126 objects:v140 count:16];
    v18 = v109;
    if (v17)
    {
      v19 = v17;
      v20 = *v127;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v127 != v20)
          {
            objc_enumerationMutation(obj);
          }

          [v103 setObject:v100 forKey:{*(*(&v126 + 1) + 8 * i), v97}];
        }

        v19 = [(NSArray *)obj countByEnumeratingWithState:&v126 objects:v140 count:16];
      }

      while (v19);
    }

LABEL_97:
  }

  else
  {
    v100 = 0;
    v18 = v109;
  }

  v83 = +[SSLogConfig sharedDaemonConfig];
  if (!v83)
  {
    v83 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v83 shouldLog];
  if ([v83 shouldLogToDisk])
  {
    v85 = shouldLog3 | 2;
  }

  else
  {
    v85 = shouldLog3;
  }

  oSLogObject4 = [v83 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v87 = v85;
  }

  else
  {
    v87 = v85 & 2;
  }

  if (!v87)
  {
    v88 = selfCopy;
    goto LABEL_110;
  }

  v88 = selfCopy;
  v89 = objc_opt_class();
  v90 = v89;
  logCorrelationKey4 = [(RedeemCodesOperation *)selfCopy logCorrelationKey];
  v92 = [v101 count];
  v93 = [v103 count];
  v131 = 138544130;
  v132 = v89;
  v133 = 2114;
  v134 = logCorrelationKey4;
  v135 = 2048;
  v136 = v92;
  v137 = 2048;
  v138 = v93;
  LODWORD(v98) = 42;
  v94 = _os_log_send_and_compose_impl(v87, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: [%{public}@] Redeemed %lu codes with %lu failures", &v131, v98);

  v18 = v109;
  if (v94)
  {
    oSLogObject4 = [NSString stringWithCString:v94 encoding:4];
    free(v94);
    SSFileLog();
LABEL_110:
  }

  [v88 lock];
  v95 = objc_alloc_init(SSRedeemCodesResponse);
  v96 = v88[20];
  v88[20] = v95;

  [v88[20] setCodeResponses:v105];
  [v88[20] setFailedCodes:v103];
  [v88[20] setRedeemedCodes:v101];
  [v88 unlock];
  [v88 setSuccess:1];
}

- (BOOL)_processDictionary:(id)dictionary dialog:(id *)dialog error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKey:@"status"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_16;
  }

  integerValue = [v8 integerValue];
  v10 = integerValue >= 0;
  if (integerValue < 0)
  {
    v11 = [dictionaryCopy objectForKey:@"userPresentableErrorMessage"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v8 = [dictionaryCopy objectForKey:@"errorNumber"];

    if (objc_opt_respondsToSelector())
    {
      [v8 integerValue];
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:

      goto LABEL_13;
    }

    *error = SSError();
    goto LABEL_12;
  }

LABEL_13:
  v13 = v8;
  v8 = [dictionaryCopy objectForKey:kISDialogKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (dialog && (isKindOfClass & 1) != 0)
  {
    *dialog = [[ISDialog alloc] initWithDialogDictionary:v8];
  }

LABEL_16:

  return v10;
}

- (id)_newURLRequestPropertiesForCode:(id)code
{
  codeCopy = code;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[ISDevice sharedInstance];
  guid = [v6 guid];
  [v5 setObject:guid forKeyedSubscript:@"guid"];

  [v5 setObject:codeCopy forKeyedSubscript:@"code"];
  [v5 setObject:@"application/json" forKeyedSubscript:@"response-content-type"];
  v8 = [NSNumber numberWithBool:self->_cameraRecognized];
  [v5 setObject:v8 forKeyedSubscript:@"cameraRecognizedCode"];

  if ([(RedeemCodesOperation *)self _useLegacyRedeem])
  {
    v9 = [(NSDictionary *)self->_redeemMetadataByCode valueForKey:codeCopy];
    v10 = [(RedeemCodesOperation *)self _installedExternalVersionForRedeemCodeMetadata:v9];
    if (v10)
    {
      [v5 setObject:v10 forKeyedSubscript:@"installed-version"];
    }
  }

  if (self->_params)
  {
    [v5 addEntriesFromDictionary:?];
  }

  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  v12 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:0];
  [v11 setHTTPBody:v12];

  [v11 setHTTPMethod:@"POST"];
  [v11 setURLBagKey:@"redeemCodeSrv"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  userAgent = [(RedeemCodesOperation *)self userAgent];
  [v11 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

  return v11;
}

- (id)_newURLRequestPropertiesForServiceActionButton:(id)button
{
  buttonCopy = button;
  dictionary = [buttonCopy dictionary];
  v6 = [dictionary objectForKey:@"url"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = [[NSURL alloc] initWithString:v6];
  if (!v7)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  dictionary2 = [buttonCopy dictionary];
  v9 = [dictionary2 objectForKey:@"dialogData"];

  v10 = [[SSMutableURLRequestProperties alloc] initWithURL:v7];
  v11 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:0];
  [v10 setHTTPBody:v11];

  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  userAgent = [(RedeemCodesOperation *)self userAgent];
  [v10 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

LABEL_6:
  return v10;
}

- (BOOL)_canPerformExtendedBiometricActions
{
  [(RedeemCodesOperation *)self lock];
  requiredUniqueIdentifier = [(SSAuthenticationContext *)self->_authenticationContext requiredUniqueIdentifier];
  v4 = [(ISBiometricStore *)self->_biometricStore canPerformExtendedBiometricActionsForAccountIdentifier:requiredUniqueIdentifier];
  [(RedeemCodesOperation *)self unlock];

  return v4;
}

- (BOOL)_didUserCancelWithError:(id)error
{
  errorCopy = error;
  v4 = ISWeakLinkedStringConstantForString();
  if (ISErrorIsEqual())
  {
    IsEqual = 1;
  }

  else
  {
    IsEqual = ISErrorIsEqual();
  }

  return IsEqual;
}

- (BOOL)_fetchRedeemCodeMetadataWithError:(id *)error
{
  v105 = objc_alloc_init(NSMutableDictionary);
  v124 = objc_alloc_init(NSMutableDictionary);
  userAgent = [(RedeemCodesOperation *)self userAgent];
  authenticationContext = [(RedeemCodesOperation *)self authenticationContext];
  v6 = [authenticationContext mutableCopy];

  v7 = SSHTTPHeaderUserAgent;
  v119 = v6;
  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v127 = objc_alloc_init(NSMutableArray);
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v107 = v7;
  v108 = userAgent;
  LODWORD(userAgent) = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(userAgent) = userAgent | 2;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    userAgent = userAgent;
  }

  else
  {
    userAgent &= 2u;
  }

  v10 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
  if (!userAgent)
  {
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  redeemCodes = self->_redeemCodes;
  v13 = v11;
  v14 = redeemCodes;
  v10 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
  v143 = 138543618;
  v144 = v11;
  v145 = 2050;
  v146 = [(NSArray *)v14 count];
  v15 = _os_log_send_and_compose_impl(userAgent, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Fetching metadata for %{public}lu codes", &v143, 22);

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    v101 = oSLogObject;
    SSFileLog();
LABEL_11:
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = self->_redeemCodes;
  selfCopy = self;
  v120 = [(NSArray *)obj countByEnumeratingWithState:&v138 objects:v150 count:16];
  if (!v120)
  {
    v109 = 0;
    v106 = 1;
    goto LABEL_65;
  }

  v109 = 0;
  v106 = 1;
  v115 = SSVRedeemCodeMetadataQueryParameterRedeemCode;
  v117 = *v139;
  v114 = SSVRedeemCodeMetadataURLBagKey;
  v17 = v107;
  v16 = v108;
  do
  {
    v18 = 0;
    do
    {
      if (*v139 != v117)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v138 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      v21 = objc_alloc_init(ISStoreURLOperation);
      [v21 setAuthenticationContext:v119];
      v22 = +[DaemonProtocolDataProvider provider];
      [v21 setDataProvider:v22];

      [v21 setNeedsAuthentication:{-[RedeemCodesOperation _canPerformExtendedBiometricActions](self, "_canPerformExtendedBiometricActions") ^ 1}];
      v23 = objc_alloc_init(SSMutableURLRequestProperties);
      [v23 setValue:v19 forRequestParameter:v115];
      [v23 setURLBagKey:v114];
      [v23 setValue:v16 forHTTPHeaderField:v17];
      [v21 setRequestProperties:v23];
      v137 = 0;
      LODWORD(v22) = [(RedeemCodesOperation *)self runSubOperation:v21 returningError:&v137];
      v24 = v137;
      v125 = v24;
      if (v22)
      {
        dataProvider = [v21 dataProvider];
        output = [dataProvider output];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v122 = v20;
          oSLogObject2 = output;
          v28 = [oSLogObject2 objectForKey:@"failureType"];
          if (v28)
          {
          }

          else
          {
            v35 = [[SSVRedeemCodeMetadata alloc] initWithRedeemCodeDictionary:oSLogObject2];
            if (v35)
            {
              v36 = v35;
              [v105 setObject:v35 forKey:v19];
              v135 = 0u;
              v136 = 0u;
              v133 = 0u;
              v134 = 0u;
              v113 = v36;
              items = [v36 items];
              v38 = [items countByEnumeratingWithState:&v133 objects:v149 count:16];
              if (v38)
              {
                v39 = v38;
                v40 = *v134;
                do
                {
                  for (i = 0; i != v39; i = i + 1)
                  {
                    if (*v134 != v40)
                    {
                      objc_enumerationMutation(items);
                    }

                    v42 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(*(&v133 + 1) + 8 * i) itemIdentifier]);
                    [v127 addObject:v42];
                  }

                  v39 = [items countByEnumeratingWithState:&v133 objects:v149 count:16];
                }

                while (v39);
              }

              v29 = 0;
              output = oSLogObject2;
              v17 = v107;
              v16 = v108;
              goto LABEL_35;
            }
          }

          v29 = 0;
          output = oSLogObject2;
LABEL_35:

          v20 = v122;
          goto LABEL_38;
        }

        v29 = 0;
      }

      else
      {
        v112 = [(RedeemCodesOperation *)self _didUserCancelWithError:v24];
        if (v112)
        {
          v30 = SSError();

          v109 = SSErrorBySettingUserInfoValue();

          v106 = 0;
        }

        v122 = v20;
        output = +[SSLogConfig sharedDaemonConfig];
        if (!output)
        {
          output = +[SSLogConfig sharedConfig];
        }

        LODWORD(v31) = [output shouldLog];
        if ([output shouldLogToDisk])
        {
          LODWORD(v31) = v31 | 2;
        }

        oSLogObject2 = [output OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v31;
        }

        else
        {
          v31 &= 2u;
        }

        if (!v31)
        {
          goto LABEL_34;
        }

        v32 = objc_opt_class();
        v110 = v32;
        v33 = AMSLogableError();
        v143 = 138543874;
        v144 = v32;
        v145 = 2112;
        v146 = v19;
        v147 = 2114;
        v148 = v33;
        LODWORD(v103) = 32;
        v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Failed to fetch metadata for redeem code: %@, error: %{public}@", &v143, v103);

        if (v34)
        {
          oSLogObject2 = [NSString stringWithCString:v34 encoding:4];
          free(v34);
          v101 = oSLogObject2;
          SSFileLog();
          v17 = v107;
          v16 = v108;
LABEL_34:
          v29 = v112;
          goto LABEL_35;
        }

        v17 = v107;
        v16 = v108;
        v20 = v122;
        v29 = v112;
      }

LABEL_38:

      objc_autoreleasePoolPop(v20);
      if (v29)
      {
        v44 = +[SSLogConfig sharedDaemonConfig];
        self = selfCopy;
        v10 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
        if (!v44)
        {
          v44 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v45) = [v44 shouldLog];
        if ([v44 shouldLogToDisk])
        {
          LODWORD(v45) = v45 | 2;
        }

        oSLogObject3 = [v44 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v45;
        }

        else
        {
          v45 &= 2u;
        }

        if (v45)
        {
          v47 = objc_opt_class();
          v143 = 138543362;
          v144 = v47;
          v48 = v47;
          LODWORD(v103) = 12;
          v49 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Canceled redeem metadata batch", &v143, v103);

          if (!v49)
          {
LABEL_63:

            goto LABEL_65;
          }

          oSLogObject3 = [NSString stringWithCString:v49 encoding:4];
          free(v49);
          v101 = oSLogObject3;
          SSFileLog();
        }

        goto LABEL_63;
      }

      v18 = v18 + 1;
      self = selfCopy;
      v10 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
    }

    while (v18 != v120);
    v43 = [(NSArray *)obj countByEnumeratingWithState:&v138 objects:v150 count:16];
    v120 = v43;
  }

  while (v43);
LABEL_65:

  v50 = &CFDictionaryGetValue_ptr;
  v51 = +[SSLogConfig sharedDaemonConfig];
  if (!v51)
  {
    v51 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v52) = [v51 shouldLog];
  if ([v51 shouldLogToDisk])
  {
    LODWORD(v52) = v52 | 2;
  }

  oSLogObject4 = [v51 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v52 = v52;
  }

  else
  {
    v52 &= 2u;
  }

  if (v52)
  {
    v54 = objc_opt_class();
    v143 = 138543362;
    v144 = v54;
    v55 = v54;
    LODWORD(v103) = 12;
    v56 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Performing a software-library lookup operation…", &v143, v103);

    if (v56)
    {
      oSLogObject4 = [NSString stringWithCString:v56 encoding:4];
      free(v56);
      v102 = oSLogObject4;
      SSFileLog();
      goto LABEL_75;
    }
  }

  else
  {
LABEL_75:
  }

  v132 = 0;
  v118 = [[SoftwareLibraryLookupOperation alloc] initWithItemIdentifiers:v127];
  v57 = [RedeemCodesOperation runSubOperation:"runSubOperation:returningError:" returningError:?];
  v116 = 0;
  if (!v57)
  {
    goto LABEL_121;
  }

  [(SoftwareLibraryLookupOperation *)v118 softwareLibraryItems];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v126 = v131 = 0u;
  v58 = [v126 countByEnumeratingWithState:&v128 objects:v142 count:16];
  if (!v58)
  {
    goto LABEL_120;
  }

  v59 = v58;
  v60 = *v129;
  v61 = SSSoftwareLibraryItemPropertyITunesItemIdentifier;
  v62 = SSSoftwareLibraryItemPropertyITunesVersionIdentifier;
  v123 = *v129;
  while (2)
  {
    v63 = 0;
    while (2)
    {
      if (*v129 != v60)
      {
        objc_enumerationMutation(v126);
      }

      v64 = *(*(&v128 + 1) + 8 * v63);
      v65 = [v64 valueForProperty:{v61, v102}];
      v66 = [v64 valueForProperty:v62];
      v67 = v66;
      if (v65)
      {
        v68 = v66 == 0;
      }

      else
      {
        v68 = 1;
      }

      if (!v68)
      {
        [v124 setObject:v66 forKey:v65];
        goto LABEL_118;
      }

      if (!v65)
      {
        sharedDaemonConfig = [v50[412] sharedDaemonConfig];
        if (!sharedDaemonConfig)
        {
          sharedDaemonConfig = [v50[412] sharedConfig];
        }

        shouldLog = [sharedDaemonConfig shouldLog];
        if ([sharedDaemonConfig shouldLogToDisk])
        {
          v71 = shouldLog | 2;
        }

        else
        {
          v71 = shouldLog;
        }

        oSLogObject5 = [sharedDaemonConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v73 = v71;
        }

        else
        {
          v73 = v71 & 2;
        }

        if (v73)
        {
          v74 = objc_opt_class();
          v143 = 138543362;
          v144 = v74;
          v75 = v74;
          LODWORD(v103) = 12;
          v76 = _os_log_send_and_compose_impl(v73, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: No iTunes identifier", &v143, v103);

          v50 = &CFDictionaryGetValue_ptr;
          if (!v76)
          {
            goto LABEL_103;
          }

          oSLogObject5 = [NSString stringWithCString:v76 encoding:4];
          free(v76);
          v102 = oSLogObject5;
          SSFileLog();
        }

        else
        {
          v50 = &CFDictionaryGetValue_ptr;
        }

LABEL_103:
        v60 = v123;
        if (!v67)
        {
          goto LABEL_104;
        }

        goto LABEL_118;
      }

      if (!v66)
      {
LABEL_104:
        sharedDaemonConfig2 = [v50[412] sharedDaemonConfig];
        if (!sharedDaemonConfig2)
        {
          sharedDaemonConfig2 = [v50[412] sharedConfig];
        }

        shouldLog2 = [sharedDaemonConfig2 shouldLog];
        if ([sharedDaemonConfig2 shouldLogToDisk])
        {
          v79 = shouldLog2 | 2;
        }

        else
        {
          v79 = shouldLog2;
        }

        oSLogObject6 = [sharedDaemonConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v81 = v79;
        }

        else
        {
          v81 = v79 & 2;
        }

        if (v81)
        {
          v82 = objc_opt_class();
          v143 = 138543362;
          v144 = v82;
          v83 = v82;
          LODWORD(v103) = 12;
          v84 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%{public}@: No installed external version", &v143, v103);

          v50 = &CFDictionaryGetValue_ptr;
          if (v84)
          {
            oSLogObject6 = [NSString stringWithCString:v84 encoding:4];
            free(v84);
            v102 = oSLogObject6;
            SSFileLog();
            goto LABEL_116;
          }
        }

        else
        {
          v50 = &CFDictionaryGetValue_ptr;
LABEL_116:
        }

        v60 = v123;
      }

LABEL_118:

      if (v59 != ++v63)
      {
        continue;
      }

      break;
    }

    v59 = [v126 countByEnumeratingWithState:&v128 objects:v142 count:16];
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_120:

  self = selfCopy;
  v10 = &OBJC_INSTANCE_METHODS_NSMutableCopying;
LABEL_121:
  sharedDaemonConfig3 = [v50[412] sharedDaemonConfig];
  if (!sharedDaemonConfig3)
  {
    sharedDaemonConfig3 = [v50[412] sharedConfig];
  }

  LODWORD(v86) = [sharedDaemonConfig3 shouldLog];
  if ([sharedDaemonConfig3 shouldLogToDisk])
  {
    LODWORD(v86) = v86 | 2;
  }

  oSLogObject7 = [sharedDaemonConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
  {
    v86 = v86;
  }

  else
  {
    v86 &= 2u;
  }

  if (v86)
  {
    v88 = objc_opt_class();
    v89 = v10;
    v90 = v88;
    v91 = [v105 count];
    v143 = v89[447];
    v144 = v88;
    v145 = 2050;
    v146 = v91;
    LODWORD(v103) = 22;
    v92 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &_mh_execute_header, oSLogObject7, 1, "%{public}@: Found metadata for %{public}lu codes", &v143, v103);

    v93 = v108;
    v94 = v109;
    if (v92)
    {
      oSLogObject7 = [NSString stringWithCString:v92 encoding:4];
      free(v92);
      SSFileLog();
      goto LABEL_132;
    }
  }

  else
  {
    v93 = v108;
    v94 = v109;
LABEL_132:
  }

  [(RedeemCodesOperation *)self lock];
  v95 = [v105 copy];
  redeemMetadataByCode = self->_redeemMetadataByCode;
  self->_redeemMetadataByCode = v95;

  v97 = [v124 copy];
  installedExternalVersionByiTunesIdentifier = self->_installedExternalVersionByiTunesIdentifier;
  self->_installedExternalVersionByiTunesIdentifier = v97;

  [(RedeemCodesOperation *)self unlock];
  if (error && v94)
  {
    v99 = v94;
    *error = v94;
  }

  return v106 & 1;
}

- (id)_installedExternalVersionForRedeemCodeMetadata:(id)metadata
{
  items = [metadata items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [firstObject itemIdentifier]);
    v7 = [(NSDictionary *)self->_installedExternalVersionByiTunesIdentifier objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_useLegacyRedeem
{
  v2 = [SSURLBagContext contextWithBagType:0];
  v3 = [[ISLoadURLBagOperation alloc] initWithBagContext:v2];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100206AF8;
  v19[3] = &unk_100327110;
  v4 = dispatch_semaphore_create(0);
  v20 = v4;
  [v3 setCompletionBlock:v19];
  v5 = +[ISOperationQueue mainQueue];
  [v5 addOperation:v3];

  v6 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v4, v6))
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      v21 = 138543362;
      v22 = v11;
      v12 = v11;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed to fetch bag.", &v21, 12);

      if (!v13)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      v18 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  uRLBag = [v3 URLBag];
  v15 = [uRLBag valueForKey:@"redeemCodeLanding"];
  v16 = v15 == 0;

  return v16;
}

- (void)_postNotificationWithResponse:(id)response
{
  responseCopy = response;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v25 = 138543362;
    v26 = objc_opt_class();
    v8 = v26;
    v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%{public}@: Sending redeem succeeded notification", &v25, 12);

    if (!v9)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    v20 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v22 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:responseCopy requiringSecureCoding:1 error:&v22];

  v11 = v22;
  if (!v11)
  {
    v23 = @"response";
    v24 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotification(DistributedCenter, kSSPurchaseRequestSucceededNotification, 0, v12, 1u);
    oSLogObject2 = +[EventDispatcher eventDispatcher];
    [oSLogObject2 postEventWithName:SSEventNamePurchaseSucceeded userInfo:v12];
    goto LABEL_26;
  }

  v12 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [(__CFDictionary *)v12 shouldLog];
  if ([(__CFDictionary *)v12 shouldLogToDisk])
  {
    LODWORD(v14) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v14) = shouldLog2;
  }

  oSLogObject2 = [(__CFDictionary *)v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v14 = v14;
  }

  else
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v16 = objc_opt_class();
  v25 = 138543618;
  v26 = v16;
  v27 = 2114;
  v28 = v11;
  v17 = v16;
  LODWORD(v21) = 22;
  v18 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Failed to archive response. Error = %{public}@", &v25, v21);

  if (v18)
  {
    oSLogObject2 = [NSString stringWithCString:v18 encoding:4];
    free(v18);
    SSFileLog();
LABEL_26:
  }
}

@end