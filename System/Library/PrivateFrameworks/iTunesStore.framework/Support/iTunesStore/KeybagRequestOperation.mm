@interface KeybagRequestOperation
- (KeybagRequestOperation)initWithKeybagRequest:(id)request client:(id)client;
- (KeybagRequestOperation)initWithKeybagRequest:(id)request clientIdentifierHeader:(id)header userAgent:(id)agent;
- (void)_getDownloaderIdentifier:(id *)identifier purchaserIdentifier:(id *)purchaserIdentifier forApplication:(id)application;
- (void)run;
@end

@implementation KeybagRequestOperation

- (KeybagRequestOperation)initWithKeybagRequest:(id)request clientIdentifierHeader:(id)header userAgent:(id)agent
{
  requestCopy = request;
  headerCopy = header;
  agentCopy = agent;
  v15.receiver = self;
  v15.super_class = KeybagRequestOperation;
  v12 = [(KeybagRequestOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientIdentifierHeader, header);
    objc_storeStrong(&v13->_request, request);
    objc_storeStrong(&v13->_userAgent, agent);
  }

  return v13;
}

- (KeybagRequestOperation)initWithKeybagRequest:(id)request client:(id)client
{
  requestCopy = request;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = KeybagRequestOperation;
  v9 = [(KeybagRequestOperation *)&v15 init];
  if (v9)
  {
    clientIdentifierHeader = [clientCopy clientIdentifierHeader];
    clientIdentifierHeader = v9->_clientIdentifierHeader;
    v9->_clientIdentifierHeader = clientIdentifierHeader;

    objc_storeStrong(&v9->_request, request);
    userAgent = [clientCopy userAgent];
    userAgent = v9->_userAgent;
    v9->_userAgent = userAgent;
  }

  return v9;
}

- (void)run
{
  contentIdentifier = [(SSKeybagRequest *)self->_request contentIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v4 = [LSApplicationProxy applicationProxyForIdentifier:contentIdentifier];
  v5 = v4;
  if (!v4)
  {
LABEL_17:
    v19 = 1;
    goto LABEL_34;
  }

  if ([v4 profileValidated])
  {
    goto LABEL_33;
  }

  itemID = [v5 itemID];
  integerValue = [itemID integerValue];

  if (integerValue)
  {
    goto LABEL_33;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    request = self->_request;
    v15 = v13;
    contentIdentifier2 = [(SSKeybagRequest *)request contentIdentifier];
    *v67 = 138412546;
    *&v67[4] = v13;
    *&v67[12] = 2112;
    *&v67[14] = contentIdentifier2;
    v17 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Attempting claim before authorization for contentID: %@", v67, 22);

    if (v17)
    {
      v18 = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      v43 = v18;
      SSFileLog();
    }
  }

  else
  {
  }

  *v67 = 0;
  *&v67[8] = v67;
  *&v67[16] = 0x3032000000;
  v68 = sub_1000D74DC;
  v69 = sub_1000D74EC;
  v70 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1000D74DC;
  v61 = sub_1000D74EC;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000D74F4;
  v48[3] = &unk_1003283A0;
  v50 = v67;
  v51 = &v57;
  v52 = &v53;
  v20 = dispatch_semaphore_create(0);
  v49 = v20;
  [AppStoreUtility checkClaimsEstablishingActiveAccounts:1 ignoringPreviousClaimAttempts:1 completionBlock:v48];
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  if ((v54[3] & 1) == 0)
  {
    claimedBundleIdentifiers = +[SSLogConfig sharedDaemonConfig];
    if (!claimedBundleIdentifiers)
    {
      claimedBundleIdentifiers = +[SSLogConfig sharedConfig];
    }

    LODWORD(v23) = [claimedBundleIdentifiers shouldLog];
    shouldLogToDisk = [claimedBundleIdentifiers shouldLogToDisk];
    oSLogObject2 = [claimedBundleIdentifiers OSLogObject];
    v26 = oSLogObject2;
    if (shouldLogToDisk)
    {
      LODWORD(v23) = v23 | 2;
    }

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
      v27 = objc_opt_class();
      v28 = v58[5];
      v63 = 138412546;
      v64 = v27;
      v65 = 2112;
      v66 = v28;
      v29 = v27;
      LODWORD(v44) = 22;
      v30 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v26, 0, "%@: Could not claim apps: %@", &v63, v44);

      if (!v30)
      {
        goto LABEL_32;
      }

      v26 = [NSString stringWithCString:v30 encoding:4];
      free(v30);
      v43 = v26;
      SSFileLog();
    }

    goto LABEL_32;
  }

  v21 = [*(*&v67[8] + 40) copy];
  claimedBundleIdentifiers = self->_claimedBundleIdentifiers;
  self->_claimedBundleIdentifiers = v21;
LABEL_32:

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(v67, 8);
LABEL_33:
  v19 = 0;
LABEL_34:
  v31 = objc_alloc_init(AuthorizeMachineOperation);
  [(AuthorizeMachineOperation *)v31 setClientIdentifierHeader:self->_clientIdentifierHeader];
  [(AuthorizeMachineOperation *)v31 setReason:@"refetch"];
  [(AuthorizeMachineOperation *)v31 setShouldAddKeysToKeyBag:1];
  [(AuthorizeMachineOperation *)v31 setUserAgent:self->_userAgent];
  if (v19)
  {
    accountID = [(SSKeybagRequest *)self->_request accountID];
    v33 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    [(KeybagRequestOperation *)self _getDownloaderIdentifier:&v47 purchaserIdentifier:&v46 forApplication:v5];
    accountID = v47;
    v33 = v46;
  }

  [(AuthorizeMachineOperation *)v31 setAccountIdentifier:accountID, v43];
  if (([v33 isEqualToNumber:accountID] & 1) == 0)
  {
    [(AuthorizeMachineOperation *)v31 setFamilyMemberAccountIdentifier:v33];
    [(AuthorizeMachineOperation *)v31 setReason:@"family"];
  }

  if (([(SSKeybagRequest *)self->_request keybagOptions]& 1) == 0)
  {
    [(AuthorizeMachineOperation *)v31 setShouldPromptForCredentials:1];
  }

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

  oSLogObject3 = [v34 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v36 = v36;
  }

  else
  {
    v36 &= 2u;
  }

  if (!v36)
  {
    goto LABEL_52;
  }

  v38 = objc_opt_class();
  *v67 = 138412802;
  *&v67[4] = v38;
  *&v67[12] = 2112;
  *&v67[14] = accountID;
  *&v67[22] = 2112;
  v68 = v33;
  v39 = v38;
  LODWORD(v44) = 32;
  v40 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Running authorize operation for account ID: %@, family account ID: %@", v67, v44);

  if (v40)
  {
    oSLogObject3 = [NSString stringWithCString:v40 encoding:4];
    free(v40);
    SSFileLog();
LABEL_52:
  }

  v45 = 0;
  v41 = [(KeybagRequestOperation *)self runSubOperation:v31 returningError:&v45];
  v42 = v45;

  [(KeybagRequestOperation *)self setError:v42];
  [(KeybagRequestOperation *)self setSuccess:v41];
}

- (void)_getDownloaderIdentifier:(id *)identifier purchaserIdentifier:(id *)purchaserIdentifier forApplication:(id)application
{
  applicationCopy = application;
  accountID = [(SSKeybagRequest *)self->_request accountID];
  familyID = [applicationCopy familyID];
  if ([familyID longLongValue])
  {
    downloaderDSID = [applicationCopy downloaderDSID];
    purchaserDSID = [applicationCopy purchaserDSID];
    v12 = +[SSAccountStore defaultStore];
    v13 = v12;
    if (downloaderDSID && purchaserDSID)
    {
      v14 = [v12 accountWithUniqueIdentifier:downloaderDSID];
      if (v14)
      {
        v15 = downloaderDSID;

        v16 = purchaserDSID;
        accountID = v16;
      }

      else
      {
        v15 = accountID;
      }
    }

    else
    {
      v15 = accountID;
    }

    if (identifier)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = accountID;
    if (identifier)
    {
LABEL_12:
      v17 = v15;
      *identifier = v15;
    }
  }

  if (purchaserIdentifier)
  {
    v18 = accountID;
    *purchaserIdentifier = accountID;
  }
}

@end