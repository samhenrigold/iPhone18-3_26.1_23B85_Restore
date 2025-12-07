@interface SubscriptionOperation
- (BOOL)isRequestingOfflineSlot;
- (NSString)userAgent;
- (SSAuthenticationContext)authenticationContext;
- (SSVSubscriptionResponse)response;
- (id)_newMachineDataOperationWithAccount:(id)account response:(id)response;
- (id)_requestPropertiesWithAccount:(id)account syncState:(id)state fairPlaySubscriptionController:(id)controller;
- (int64_t)operationType;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setOperationType:(int64_t)type;
- (void)setRequestingOfflineSlot:(BOOL)slot;
- (void)setUserAgent:(id)agent;
@end

@implementation SubscriptionOperation

- (SSAuthenticationContext)authenticationContext
{
  [(SubscriptionOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext copy];
  [(SubscriptionOperation *)self unlock];

  return v3;
}

- (BOOL)isRequestingOfflineSlot
{
  [(SubscriptionOperation *)self lock];
  requestingOfflineSlot = self->_requestingOfflineSlot;
  [(SubscriptionOperation *)self unlock];
  return requestingOfflineSlot;
}

- (int64_t)operationType
{
  [(SubscriptionOperation *)self lock];
  operationType = self->_operationType;
  [(SubscriptionOperation *)self unlock];
  return operationType;
}

- (SSVSubscriptionResponse)response
{
  [(SubscriptionOperation *)self lock];
  v3 = [(SSVSubscriptionResponse *)self->_response copy];
  [(SubscriptionOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(SubscriptionOperation *)self lock];
  if (self->_authenticationContext != contextCopy)
  {
    v4 = [(SSAuthenticationContext *)contextCopy copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(SubscriptionOperation *)self unlock];
}

- (void)setOperationType:(int64_t)type
{
  [(SubscriptionOperation *)self lock];
  self->_operationType = type;

  [(SubscriptionOperation *)self unlock];
}

- (void)setRequestingOfflineSlot:(BOOL)slot
{
  [(SubscriptionOperation *)self lock];
  self->_requestingOfflineSlot = slot;

  [(SubscriptionOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  agentCopy = agent;
  [(SubscriptionOperation *)self lock];
  if (self->_userAgent != agentCopy)
  {
    v4 = [(NSString *)agentCopy copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(SubscriptionOperation *)self unlock];
}

- (NSString)userAgent
{
  [(SubscriptionOperation *)self lock];
  v3 = [(NSString *)self->_userAgent copy];
  [(SubscriptionOperation *)self unlock];

  return v3;
}

- (void)run
{
  authenticationContext = [(SubscriptionOperation *)self authenticationContext];
  [authenticationContext requiredUniqueIdentifier];
  v66 = v65 = 0;
  v62 = 0;
  v3 = 0;
  v4 = 1;
  v5 = &CFDictionaryGetValue_ptr;
  do
  {
    v6 = +[SSAccountStore defaultStore];
    if (![v66 longLongValue] || (objc_msgSend(v6, "accountWithUniqueIdentifier:", v66), (activeAccount = objc_claimAutoreleasedReturnValue()) == 0))
    {
      activeAccount = [v6 activeAccount];
    }

    v67 = v6;
    v8 = objc_alloc_init(ISStoreURLOperation);
    [v8 setAuthenticationContext:authenticationContext];
    v9 = +[DaemonProtocolDataProvider provider];
    [v8 setDataProvider:v9];

    [v8 setDelegate:self];
    [v8 setMachineDataStyle:0];
    [v8 setUseUserSpecificURLBag:1];
    v68 = objc_alloc_init(SSVFairPlaySubscriptionController);
    v69 = activeAccount;
    v70 = [(SubscriptionOperation *)self _requestPropertiesWithAccount:activeAccount syncState:v65 fairPlaySubscriptionController:?];
    [v8 setRequestProperties:?];
    sharedDaemonConfig = [v5[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [v5[412] sharedConfig];
    }

    shouldLog = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [sharedDaemonConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v13 = shouldLog;
    }

    else
    {
      v13 = shouldLog & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = v14;
      [v70 URLBagKey];
      v17 = v16 = v4;
      v74 = 138412546;
      v75 = v14;
      v76 = 2112;
      v77 = v17;
      LODWORD(v61) = 22;
      v18 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Running operation with bag key: %@", &v74, v61);

      v4 = v16;
      v5 = &CFDictionaryGetValue_ptr;

      if (!v18)
      {
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v18 encoding:4];
      free(v18);
      v60 = oSLogObject;
      SSFileLog();
    }

LABEL_16:
    v73 = v3;
    v19 = [(SubscriptionOperation *)self runSubOperation:v8 returningError:&v73];
    v20 = v73;

    if (v19)
    {
      dataProvider = [v8 dataProvider];
      output = [dataProvider output];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_50;
      }

      oSLogObject4 = SSVSubscriptionBagForDictionary();
      if (oSLogObject4)
      {
        [v68 importSubscriptionKeyBagData:oSLogObject4 returningError:0];
        v24 = objc_alloc_init(SSVSubscriptionResponse);
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100130F78;
        v71[3] = &unk_100329740;
        v25 = v24;
        v72 = v25;
        [v68 enumerateAccountSubscriptionStatusUsingBlock:v71];
        v26 = OBJC_IVAR___ISOperation__lock;
        [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__lock] lock];
        response = self->_response;
        self->_response = v25;
        v28 = v25;

        [*&self->ISOperation_opaque[v26] unlock];
      }

      v29 = [output objectForKey:{@"statusCode", v60}];
      v63 = v29;
      if ((objc_opt_respondsToSelector() & 1) == 0 || [v29 integerValue])
      {
        sharedDaemonConfig2 = [v5[412] sharedDaemonConfig];
        if (!sharedDaemonConfig2)
        {
          sharedDaemonConfig2 = [v5[412] sharedConfig];
        }

        LODWORD(v31) = [sharedDaemonConfig2 shouldLog];
        if ([sharedDaemonConfig2 shouldLogToDisk])
        {
          LODWORD(v31) = v31 | 2;
        }

        oSLogObject2 = [sharedDaemonConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v31;
        }

        else
        {
          v31 &= 2u;
        }

        if (v31)
        {
          v33 = objc_opt_class();
          v74 = 138412546;
          v75 = v33;
          v76 = 2112;
          v77 = v63;
          v34 = v4;
          v35 = v33;
          LODWORD(v61) = 22;
          v36 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Received error status=%@", &v74, v61);

          v4 = v34;
          if (!v36)
          {
LABEL_33:

            response = [v8 response];
            v38 = [(SubscriptionOperation *)self _newMachineDataOperationWithAccount:v69 response:response];

            if (v38)
            {
              v39 = [(SubscriptionOperation *)self runSubOperation:v38 returningError:0];
              syncState = [v38 syncState];

              v5 = &CFDictionaryGetValue_ptr;
              if ((v39 & 1) != 0 || (v65 = 0, syncState))
              {

                authenticatedAccountDSID = [v8 authenticatedAccountDSID];
                oSLogObject4 = authenticatedAccountDSID;
                if (!authenticatedAccountDSID)
                {
                  v42 = 1;
                  v65 = syncState;
                  goto LABEL_68;
                }

                oSLogObject4 = authenticatedAccountDSID;
                v42 = 1;
                v43 = v66;
                v65 = syncState;
                v66 = oSLogObject4;
                v44 = v43;
                goto LABEL_67;
              }
            }

            else
            {
              v5 = &CFDictionaryGetValue_ptr;
            }

            v44 = v63;
            if (v63)
            {
              [v63 integerValue];
            }

            v51 = SSError();

            v42 = 0;
            v20 = v51;
LABEL_67:

            goto LABEL_68;
          }

          oSLogObject2 = [NSString stringWithCString:v36 encoding:4];
          free(v36);
          v60 = oSLogObject2;
          SSFileLog();
        }

        goto LABEL_33;
      }

      sharedDaemonConfig3 = [v5[412] sharedDaemonConfig];
      if (!sharedDaemonConfig3)
      {
        sharedDaemonConfig3 = [v5[412] sharedConfig];
      }

      LODWORD(v53) = [sharedDaemonConfig3 shouldLog];
      if ([sharedDaemonConfig3 shouldLogToDisk])
      {
        LODWORD(v53) = v53 | 2;
      }

      oSLogObject3 = [sharedDaemonConfig3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v53 = v53;
      }

      else
      {
        v53 &= 2u;
      }

      if (v53)
      {
        v55 = objc_opt_class();
        v74 = 138412290;
        v75 = v55;
        v56 = v4;
        v57 = v55;
        LODWORD(v61) = 12;
        v58 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Received valid status=0", &v74, v61);

        v4 = v56;
        if (!v58)
        {
LABEL_66:

          v42 = 0;
          v62 = 1;
          v5 = &CFDictionaryGetValue_ptr;
          v44 = v63;
          goto LABEL_67;
        }

        oSLogObject3 = [NSString stringWithCString:v58 encoding:4];
        free(v58);
        v60 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_66;
    }

    output = [v5[412] sharedDaemonConfig];
    if (!output)
    {
      output = [v5[412] sharedConfig];
    }

    shouldLog2 = [output shouldLog];
    if ([output shouldLogToDisk])
    {
      v46 = shouldLog2 | 2;
    }

    else
    {
      v46 = shouldLog2;
    }

    oSLogObject4 = [output OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 2;
    }

    if (v47)
    {
      v48 = objc_opt_class();
      v74 = 138412546;
      v75 = v48;
      v76 = 2112;
      v77 = v20;
      v49 = v48;
      LODWORD(v61) = 22;
      v50 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Failed with error: %@", &v74, v61);

      if (!v50)
      {
LABEL_50:
        v42 = 0;
        goto LABEL_69;
      }

      oSLogObject4 = [NSString stringWithCString:v50 encoding:4];
      free(v50);
      v60 = oSLogObject4;
      SSFileLog();
    }

    v42 = 0;
LABEL_68:

LABEL_69:
    v3 = v20;

    [v8 setDelegate:0];
    v59 = v42 & v4;
    v4 = 0;
  }

  while ((v59 & 1) != 0);
  [(SubscriptionOperation *)self setError:v20];
  [(SubscriptionOperation *)self setSuccess:v62 & 1];
}

- (id)_newMachineDataOperationWithAccount:(id)account response:(id)response
{
  accountCopy = account;
  responseCopy = response;
  v8 = [[SSMachineDataRequest alloc] initWithURLResponse:responseCopy];

  if (v8)
  {
    uniqueIdentifier = [accountCopy uniqueIdentifier];
    [v8 setAccountIdentifier:uniqueIdentifier];

    [v8 setWaitsForPurchaseOperations:1];
    v10 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:v8];
    userAgent = [(SubscriptionOperation *)self userAgent];
    [v10 setUserAgent:userAgent];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_requestPropertiesWithAccount:(id)account syncState:(id)state fairPlaySubscriptionController:(id)controller
{
  accountCopy = account;
  stateCopy = state;
  controllerCopy = controller;
  v10 = objc_alloc_init(SSMutableURLRequestProperties);
  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v10 setValue:@"true" forHTTPHeaderField:@"x-apple-use-amd"];
  userAgent = [(SubscriptionOperation *)self userAgent];
  [v10 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

  operationType = [(SubscriptionOperation *)self operationType];
  if (operationType > 2)
  {
    v13 = 0;
    if (!stateCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = dword_1002A8FB8[operationType];
  [v10 setURLBagKey:off_100329760[operationType]];
  if (stateCopy)
  {
LABEL_5:
    [v10 setValue:stateCopy forHTTPHeaderField:SSHTTPHeaderXAppleAMDS];
  }

LABEL_6:
  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = +[ISDevice sharedInstance];
  guid = [v15 guid];

  if (guid)
  {
    [v14 setObject:guid forKey:@"guid"];
  }

  if ([(SubscriptionOperation *)self isRequestingOfflineSlot])
  {
    [v14 setObject:&__kCFBooleanTrue forKey:@"isRequestingSlot"];
  }

  v51 = 0;
  v52 = 0;
  v50 = 0;
  sub_1002442DC(-1, &v52, &v50 + 4, &v51, &v50);
  if (v17)
  {
    v18 = v17;
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v20) = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v20) = v20 | 2;
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v53 = 138412546;
      v54 = v22;
      v55 = 2048;
      v56 = v18;
      v23 = v22;
      v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%@: Skipping OTP after return code: %ld", &v53, 22);

      if (!v24)
      {
        goto LABEL_46;
      }

      oSLogObject = [NSString stringWithCString:v24 encoding:4];
      free(v24);
      v43 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_45;
  }

  if (HIDWORD(v50))
  {
    v25 = [NSData alloc];
    v26 = [v25 initWithBytesNoCopy:v52 length:HIDWORD(v50) freeWhenDone:0];
    v19 = v26;
    if (v26)
    {
      v27 = [v26 base64EncodedStringWithOptions:0];
      [v10 setValue:v27 forHTTPHeaderField:SSHTTPHeaderXAppleAMDM];
    }
  }

  else
  {
    v19 = 0;
  }

  if (v51)
  {
    v28 = [NSData alloc];
    v29 = [v28 initWithBytesNoCopy:v51 length:v50 freeWhenDone:0];
    v30 = [v29 base64EncodedStringWithOptions:0];
    [v10 setValue:v30 forHTTPHeaderField:SSHTTPHeaderXAppleAMD];
  }

  if (accountCopy)
  {
    uniqueIdentifier = [accountCopy uniqueIdentifier];
    unsignedLongLongValue = [uniqueIdentifier unsignedLongLongValue];

    v48 = 0;
    v49 = 0;
    [controllerCopy generateSubscriptionBagRequestWithAccountUniqueIdentifier:unsignedLongLongValue transactionType:v13 machineIDData:v19 returningSubscriptionBagData:&v49 error:&v48];
    oSLogObject = v49;
    v33 = v48;
    v34 = v33;
    if (!v33)
    {
      v35 = [oSLogObject base64EncodedStringWithOptions:0];
      if (v35)
      {
        [v14 setObject:v35 forKey:@"sbsync"];
      }

      goto LABEL_44;
    }

    v45 = accountCopy;
    v46 = v33;
    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      LODWORD(v37) = shouldLog | 2;
    }

    else
    {
      LODWORD(v37) = shouldLog;
    }

    oSLogObject2 = [v35 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v37;
    }

    else
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v39 = objc_opt_class();
      v53 = 138412546;
      v54 = v39;
      v55 = 2112;
      v56 = v46;
      v44 = v39;
      v40 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Skipping bag data after error: %@", &v53, 22);

      if (!v40)
      {
        accountCopy = v45;
        v34 = v46;
        goto LABEL_44;
      }

      oSLogObject2 = [NSString stringWithCString:v40 encoding:4];
      free(v40);
      v43 = oSLogObject2;
      SSFileLog();
    }

    accountCopy = v45;

    v34 = v46;
LABEL_44:

LABEL_45:
  }

LABEL_46:

  if (v52)
  {
    sub_100255DC4(v52);
  }

  if (v51)
  {
    sub_100255DC4(v51);
  }

  v41 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:0, v43];
  [v10 setHTTPBody:v41];

  return v10;
}

@end