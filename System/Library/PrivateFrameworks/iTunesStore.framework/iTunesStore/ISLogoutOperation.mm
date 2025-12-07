@interface ISLogoutOperation
- (ISLogoutOperation)initWithAccount:(id)account logKey:(id)key;
- (id)_copyAuthenticationContext;
- (id)_createDisableBookkeeperRequestPropertiesWithURL:(id)l;
- (id)_createLogoutRequestProperties;
- (id)_sbsyncData;
- (void)_disableAutomaticDownloadKinds;
- (void)_disableBookkeeper;
- (void)_sendLogoutRequest;
- (void)run;
@end

@implementation ISLogoutOperation

- (ISLogoutOperation)initWithAccount:(id)account logKey:(id)key
{
  accountCopy = account;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = ISLogoutOperation;
  v9 = [(ISOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_logKey, key);
    if (!v10->_logKey)
    {
      v11 = SSGenerateLogCorrelationString();
      logKey = v10->_logKey;
      v10->_logKey = v11;
    }
  }

  return v10;
}

- (void)run
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = objc_opt_class();
  v8 = v7;
  logKey = [(ISLogoutOperation *)self logKey];
  v11 = 138543618;
  v12 = v7;
  v13 = 2114;
  v14 = logKey;
  v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%{public}@: [%{public}@] Running logout operation.", &v11, 22);

  if (v10)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
LABEL_12:
  }

  [(ISLogoutOperation *)self _disableAutomaticDownloadKinds];
  [(ISLogoutOperation *)self _disableBookkeeper];
  [(ISLogoutOperation *)self _sendLogoutRequest];
  [(ISOperation *)self setSuccess:1];
}

- (id)_copyAuthenticationContext
{
  v3 = objc_alloc(MEMORY[0x277D69BC8]);
  account = [(ISLogoutOperation *)self account];
  v5 = [v3 initWithAccount:account];

  [v5 setPromptStyle:1000];
  v6 = [v5 copy];

  return v6;
}

- (id)_createDisableBookkeeperRequestPropertiesWithURL:(id)l
{
  v3 = MEMORY[0x277D69BD0];
  lCopy = l;
  v5 = objc_alloc_init(v3);
  [v5 setHTTPMethod:@"POST"];
  [v5 setURL:lCopy];

  [v5 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = +[ISDevice sharedInstance];
  guid = [v7 guid];

  if (guid)
  {
    [v6 setObject:guid forKey:@"guid"];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"0", @"bookkeeperDomain:com.apple.upp", 0}];
  [v6 setObject:v9 forKey:@"put-parameters"];
  [v6 setObject:@"mzbookkeeper" forKey:@"notification-type"];
  [v5 setRequestParameters:v6];

  return v5;
}

- (id)_createLogoutRequestProperties
{
  v3 = objc_alloc_init(MEMORY[0x277D69BD0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = +[ISDevice sharedInstance];
  guid = [v5 guid];

  if (guid)
  {
    [v4 setObject:guid forKey:@"guid"];
  }

  _sbsyncData = [(ISLogoutOperation *)self _sbsyncData];
  if (_sbsyncData)
  {
    [v4 setObject:_sbsyncData forKey:@"sbsync"];
  }

  if ([v4 count])
  {
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:100 options:0 error:0];
    [v3 setHTTPBody:v8];
    [v3 setHTTPMethod:@"POST"];
    [v3 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  }

  [v3 setURLBagKey:@"logout"];

  return v3;
}

- (void)_disableAutomaticDownloadKinds
{
  v28 = *MEMORY[0x277D85DE8];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v24 = 136446210;
      v25 = "[ISLogoutOperation _disableAutomaticDownloadKinds]";

      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
      free(v8);
      v21 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_27;
  }

  v13 = objc_opt_class();
  v14 = v13;
  logKey = [(ISLogoutOperation *)self logKey];
  v24 = 138543618;
  v25 = v13;
  v26 = 2114;
  v27 = logKey;
  LODWORD(v22) = 22;
  v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: [%{public}@] Disabling automatic download kinds.", &v24, v22);

  if (v16)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_27:
  }

  v17 = SSXPCCreateMessageDictionary();
  _copyAuthenticationContext = [(ISLogoutOperation *)self _copyAuthenticationContext];
  SSXPCDictionarySetCFObject();

  v19 = objc_alloc(MEMORY[0x277D69D68]);
  v20 = [v19 initWithServiceName:*MEMORY[0x277D6A6A8]];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __51__ISLogoutOperation__disableAutomaticDownloadKinds__block_invoke;
  v23[3] = &unk_27A671620;
  v23[4] = self;
  [v20 sendMessage:v17 withReply:v23];
}

void __51__ISLogoutOperation__disableAutomaticDownloadKinds__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 != MEMORY[0x277D863F0] && v3 && MEMORY[0x277C8C570](v3) == MEMORY[0x277D86468])
  {
    v21 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = xpc_dictionary_get_value(v4, "0");
    v5 = [v21 initWithXPCEncoding:v22];
  }

  else
  {
    v5 = SSError();
  }

  v6 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    v11 = objc_opt_class();
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 logKey];
    *v23 = 138543874;
    *&v23[4] = v11;
    *&v23[12] = 2114;
    *&v23[14] = v14;
    *&v23[22] = 2114;
    v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: [%{public}@] Failed to disable automatic download kinds. error = %{public}@", v23, 32, *v23, *&v23[8], v5);
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v17) = v16 | 2;
    }

    else
    {
      LODWORD(v17) = v16;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = objc_opt_class();
    v19 = *(a1 + 32);
    v13 = v18;
    v14 = [v19 logKey];
    *v23 = 138543618;
    *&v23[4] = v18;
    *&v23[12] = 2114;
    *&v23[14] = v14;
    v15 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, v10, 1, "%{public}@: [%{public}@] Successfully disabled automatic download kinds.", v23, 22, *v23, *&v23[8], v24);
  }

  v20 = v15;

  if (v20)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_28:
  }
}

- (void)_disableBookkeeper
{
  v65 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
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
    v7 = objc_opt_class();
    v8 = v7;
    logKey = [(ISLogoutOperation *)self logKey];
    v59 = 138543618;
    v60 = v7;
    v61 = 2114;
    v62 = logKey;
    v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%{public}@: [%{public}@] Disabling bookkeeper.", &v59, 22);

    if (!v10)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
    free(v10);
    v51 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v11 = [MEMORY[0x277D69C90] contextWithBagType:0];
  account = [(ISLogoutOperation *)self account];
  uniqueIdentifier = [account uniqueIdentifier];
  [v11 setUserIdentifier:uniqueIdentifier];

  v14 = [(ISOperation *)self loadedURLBagWithContext:v11 returningError:0];
  v15 = [v14 valueForKey:@"push-notification-types"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277D69B38]5 = [v15 objectForKey:@"add-push-notification-type-url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mEMORY[0x277D69B38]4 = objc_alloc_init(ISStoreURLOperation);
      _copyAuthenticationContext = [(ISLogoutOperation *)self _copyAuthenticationContext];
      [(ISURLOperation *)mEMORY[0x277D69B38]4 setAuthenticationContext:_copyAuthenticationContext];

      v19 = +[(ISDataProvider *)ISProtocolDataProvider];
      [(ISURLOperation *)mEMORY[0x277D69B38]4 setDataProvider:v19];

      v20 = [MEMORY[0x277CBEBC0] URLWithString:mEMORY[0x277D69B38]5];
      v21 = [(ISLogoutOperation *)self _createDisableBookkeeperRequestPropertiesWithURL:v20];
      [(ISURLOperation *)mEMORY[0x277D69B38]4 setRequestProperties:v21];

      v58 = 0;
      [(ISOperation *)self runSubOperation:mEMORY[0x277D69B38]4 returningError:&v58];
      oSLogObject3 = v58;
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
      mEMORY[0x277D69B38]3 = mEMORY[0x277D69B38]2;
      v56 = v15;
      if (oSLogObject3)
      {
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
        if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
        {
          shouldLog2 |= 2u;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v27 = shouldLog2;
        }

        else
        {
          v27 = shouldLog2 & 2;
        }

        if (v27)
        {
          v54 = v14;
          v28 = objc_opt_class();
          v53 = v28;
          logKey2 = [(ISLogoutOperation *)self logKey];
          v59 = 138543874;
          v60 = v28;
          v61 = 2114;
          v62 = logKey2;
          v63 = 2114;
          v64 = oSLogObject3;
          LODWORD(v52) = 32;
          v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: [%{public}@] Failed to disable bookkeeper. error = %{public}@", &v59, v52);

          if (v30)
          {
            v14 = v54;
LABEL_58:
            v15 = v56;
            oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v30 encoding:4];
            free(v30);
            SSFileLog();
LABEL_60:

LABEL_64:
            goto LABEL_65;
          }

          v14 = v54;
LABEL_63:
          v15 = v56;
          goto LABEL_64;
        }
      }

      else
      {
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
        if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
        {
          shouldLog3 |= 2u;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v47 = shouldLog3;
        }

        else
        {
          v47 = shouldLog3 & 2;
        }

        if (v47)
        {
          v48 = objc_opt_class();
          v55 = v48;
          logKey3 = [(ISLogoutOperation *)self logKey];
          v59 = 138543618;
          v60 = v48;
          v61 = 2114;
          v62 = logKey3;
          v50 = logKey3;
          LODWORD(v52) = 22;
          v30 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: [%{public}@] Successfully disabled bookkeeper.", &v59, v52);

          if (v30)
          {
            goto LABEL_58;
          }

          goto LABEL_63;
        }
      }

      v15 = v56;
      goto LABEL_60;
    }

    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [(ISStoreURLOperation *)mEMORY[0x277D69B38]4 shouldLog];
    if ([(ISStoreURLOperation *)mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      v40 = shouldLog4 | 2;
    }

    else
    {
      v40 = shouldLog4;
    }

    oSLogObject3 = [(ISStoreURLOperation *)mEMORY[0x277D69B38]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 & 2;
    }

    if (!v41)
    {
      goto LABEL_65;
    }

    v57 = v15;
    v42 = objc_opt_class();
    v43 = v42;
    logKey4 = [(ISLogoutOperation *)self logKey];
    v59 = 138543618;
    v60 = v42;
    v61 = 2114;
    v62 = logKey4;
    LODWORD(v52) = 22;
    v45 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%{public}@: [%{public}@] Unable to disable bookkeeper. Bag is misconfigured and doesn't contain add push notification type url.", &v59, v52);

    if (v45)
    {
      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:4];
      free(v45);
      SSFileLog();
      v15 = v57;
LABEL_65:

      goto LABEL_66;
    }

    v15 = v57;
LABEL_66:

    goto LABEL_67;
  }

  mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!mEMORY[0x277D69B38]5)
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
  if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
  {
    v32 = shouldLog5 | 2;
  }

  else
  {
    v32 = shouldLog5;
  }

  mEMORY[0x277D69B38]4 = [mEMORY[0x277D69B38]5 OSLogObject];
  if (os_log_type_enabled(&mEMORY[0x277D69B38]4->super.super.super.super, OS_LOG_TYPE_ERROR))
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 & 2;
  }

  if (!v33)
  {
    goto LABEL_66;
  }

  v34 = v15;
  v35 = objc_opt_class();
  v36 = v35;
  logKey5 = [(ISLogoutOperation *)self logKey];
  v59 = 138543618;
  v60 = v35;
  v61 = 2114;
  v62 = logKey5;
  LODWORD(v52) = 22;
  v38 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38]4, 16, "%{public}@: [%{public}@] Unable to disable bookkeeper. Bag is misconfigured and doesn't contain the push notification types.", &v59, v52);

  if (v38)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:4];
    free(v38);
    SSFileLog();
    v15 = v34;
    goto LABEL_66;
  }

  v15 = v34;
LABEL_67:
}

- (id)_sbsyncData
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  qi864985u0(-1, &v15, &v13 + 4, &v14, &v13);
  v3 = 0;
  if (!v4)
  {
    account = [(ISLogoutOperation *)self account];
    uniqueIdentifier = [account uniqueIdentifier];
    unsignedLongLongValue = [uniqueIdentifier unsignedLongLongValue];

    v8 = objc_alloc_init(MEMORY[0x277D69CC8]);
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = [v9 initWithBytesNoCopy:v15 length:HIDWORD(v13) freeWhenDone:0];
    v12 = 0;
    [v8 generateSubscriptionBagRequestWithAccountUniqueIdentifier:unsignedLongLongValue transactionType:303 machineIDData:v10 returningSubscriptionBagData:&v12 error:0];
    v3 = v12;
  }

  if (v15)
  {
    jk24uiwqrg(v15);
  }

  if (v14)
  {
    jk24uiwqrg(v14);
  }

  return v3;
}

- (void)_sendLogoutRequest
{
  v37 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
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
    v7 = objc_opt_class();
    v8 = v7;
    logKey = [(ISLogoutOperation *)self logKey];
    v31 = 138543618;
    v32 = v7;
    v33 = 2114;
    v34 = logKey;
    v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%{public}@: [%{public}@] Sending logout request.", &v31, 22);

    if (!v10)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
    free(v10);
    v28 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v11 = objc_alloc_init(ISStoreURLOperation);
  _copyAuthenticationContext = [(ISLogoutOperation *)self _copyAuthenticationContext];
  [(ISURLOperation *)v11 setAuthenticationContext:_copyAuthenticationContext];

  v13 = +[(ISDataProvider *)ISProtocolDataProvider];
  [(ISURLOperation *)v11 setDataProvider:v13];

  _createLogoutRequestProperties = [(ISLogoutOperation *)self _createLogoutRequestProperties];
  [(ISURLOperation *)v11 setRequestProperties:_createLogoutRequestProperties];

  [(ISStoreURLOperation *)v11 setUseUserSpecificURLBag:1];
  v30 = 0;
  [(ISOperation *)self runSubOperation:v11 returningError:&v30];
  v15 = v30;
  if (!v15)
  {
    goto LABEL_27;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsLogoutConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v18) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v18) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v18 = v18;
  }

  else
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_25;
  }

  v20 = objc_opt_class();
  v21 = v20;
  logKey2 = [(ISLogoutOperation *)self logKey];
  v31 = 138543874;
  v32 = v20;
  v33 = 2114;
  v34 = logKey2;
  v35 = 2114;
  v36 = v15;
  LODWORD(v29) = 32;
  v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: [%{public}@] An error occurred while sending logout request. error = %{public}@", &v31, v29);

  if (v23)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
    free(v23);
    v28 = oSLogObject2;
    SSFileLog();
LABEL_25:
  }

LABEL_27:
  dataProvider = [(ISURLOperation *)v11 dataProvider];
  output = [dataProvider output];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = SSVSubscriptionBagForDictionary();
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x277D69CC8]);
      [v27 importSubscriptionKeyBagData:v26 returningError:0];
    }
  }
}

@end