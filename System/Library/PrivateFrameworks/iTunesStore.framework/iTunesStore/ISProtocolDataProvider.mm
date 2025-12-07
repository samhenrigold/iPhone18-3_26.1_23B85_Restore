@interface ISProtocolDataProvider
- (BOOL)_processFailureTypeFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)_shouldAttemptPasswordPaymentSheetForError:(id)error;
- (BOOL)_shouldFailWithTokenErrorForDialog:(id)dialog dictionary:(id)dictionary error:(id *)error;
- (BOOL)parseData:(id)data returningError:(id *)error;
- (BOOL)processDialogFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)processDictionary:(id)dictionary error:(id *)error;
- (BOOL)shouldProcessTouchIDDialogs;
- (ISProtocolDataProvider)init;
- (id)_metricsDictionaryForResponse:(id)response;
- (id)_touchIDDialogForResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_checkBiometricFailureForResponse:(id)response;
- (void)_checkDownloadQueues;
- (void)_checkInAppPurchaseQueueForAction:(id)action;
- (void)_performActionsForResponse:(id)response;
- (void)_presentDialog:(id)dialog;
- (void)_refreshSubscriptionStatus;
- (void)_selectFooterSection:(id)section;
@end

@implementation ISProtocolDataProvider

- (ISProtocolDataProvider)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISProtocolDataProvider.m", 106, a2);
  v4.receiver = self;
  v4.super_class = ISProtocolDataProvider;
  result = [(ISDataProvider *)&v4 init];
  if (result)
  {
    result->_shouldPostFooterSectionChanged = 1;
    result->_shouldProcessAccount = 1;
    result->_shouldProcessAuthenticationDialogs = 1;
    result->_shouldProcessDialogs = 1;
    result->_shouldProcessDialogsOutsideDaemon = 0;
    result->_shouldProcessProtocol = 1;
    result->_shouldTriggerDownloads = 1;
  }

  return result;
}

- (BOOL)processDialogFromDictionary:(id)dictionary error:(id *)error
{
  v81 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  authenticationContext = [(ISDataProvider *)self authenticationContext];
  v7 = [authenticationContext mutableCopy];

  v8 = MEMORY[0x277D69A20];
  response = [(ISDataProvider *)self response];
  [v7 setAllowsSilentAuthentication:{objc_msgSend(v8, "URLResponseAllowsSilentAuthentication:", response)}];

  LODWORD(v8) = [(ISProtocolDataProvider *)self shouldProcessAuthenticationDialogs];
  selfCopy = self;
  shouldProcessTouchIDDialogs = [(ISProtocolDataProvider *)self shouldProcessTouchIDDialogs];
  if (!v8)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    if ([v7 promptStyle] == 1000)
    {
LABEL_4:
      v57 = 0;
      goto LABEL_8;
    }

    v10 = [v7 shouldSuppressDialogs] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v57 = v10;
LABEL_8:
  if ([(ISProtocolDataProvider *)self shouldProcessDialogs])
  {
    v58 = [v7 shouldSuppressDialogs] ^ 1;
  }

  else
  {
    v58 = 0;
  }

  v65 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:dictionaryCopy];
  [v65 actionsWithActionType:*MEMORY[0x277D6A570]];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v11 = v75 = 0u;
  v64 = [v11 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v64)
  {
    errorCopy = error;
    v12 = 0;
    v63 = *v73;
    v60 = v7;
    obj = v11;
LABEL_13:
    v13 = 0;
    v14 = v12;
    while (1)
    {
      if (*v73 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v72 + 1) + 8 * v13);
      v16 = [(ISProtocolDataProvider *)selfCopy _metricsDictionaryForResponse:v65, v54];
      v17 = [MEMORY[0x277D69A60] dialogIdForMetricsDictionary:v16];
      dialog = [v15 dialog];
      v19 = [ISDialog alloc];
      dialogDictionary = [dialog dialogDictionary];
      v21 = [(ISDialog *)v19 initWithDialogDictionary:dialogDictionary authenticationContext:v7];

      paymentSheet = [(ISDialog *)v21 paymentSheet];
      [paymentSheet setDialogId:v17];

      paymentSheet2 = [(ISDialog *)v21 paymentSheet];
      [paymentSheet2 setPresentingSceneIdentifier:selfCopy->_presentingSceneIdentifier];

      if (!v21)
      {
        v32 = 1;
LABEL_34:
        v12 = v14;
        goto LABEL_50;
      }

      v71 = v14;
      v24 = [(ISProtocolDataProvider *)selfCopy _shouldFailWithTokenErrorForDialog:v21 dictionary:dictionaryCopy error:&v71];
      v12 = v71;

      if (v24)
      {
        break;
      }

      if ([(ISDialog *)v21 kind]!= 1)
      {
        if (v58)
        {
          [(ISProtocolDataProvider *)selfCopy _presentDialog:v21];
        }

LABEL_49:
        v32 = 1;
        goto LABEL_50;
      }

      if (!shouldProcessTouchIDDialogs)
      {
        if (!v57)
        {
          goto LABEL_49;
        }

        biometricSessionDelegate = [(ISDataProvider *)selfCopy biometricSessionDelegate];
        v42 = objc_opt_respondsToSelector();

        if (v42)
        {
          biometricSessionDelegate2 = [(ISDataProvider *)selfCopy biometricSessionDelegate];
          [biometricSessionDelegate2 sender:selfCopy didFallbackToPassword:1];
        }

        v67 = v12;
        v32 = [(ISDataProvider *)selfCopy runAuthorizationDialog:v21 error:&v67];
        v14 = v67;

        goto LABEL_34;
      }

      v33 = selfCopy;
      v34 = [(ISProtocolDataProvider *)selfCopy _touchIDDialogForResponse:v65];
      paymentSheet3 = [v34 paymentSheet];
      [paymentSheet3 setDialogId:v17];

      paymentSheet4 = [v34 paymentSheet];
      v37 = v34;
      [paymentSheet4 setPresentingSceneIdentifier:selfCopy->_presentingSceneIdentifier];

      [(ISProtocolDataProvider *)selfCopy _checkBiometricFailureForResponse:dictionaryCopy];
      v70 = v12;
      v38 = [(ISDataProvider *)selfCopy runTouchIDAuthorizationDialog:v34 fallbackDialog:v21 metricsDictionary:v16 error:&v70];
      v39 = v70;

      if (v39)
      {
        v40 = 1;
      }

      else
      {
        v40 = v38;
      }

      if ((v40 | v57 ^ 1))
      {
        if (v38)
        {
          v12 = v39;
LABEL_56:

          v32 = 1;
          goto LABEL_32;
        }

        v33 = selfCopy;
        if (([(ISProtocolDataProvider *)selfCopy _shouldAttemptPasswordPaymentSheetForError:v39]& v57) == 1)
        {
          v68 = v39;
          v49 = [(ISDataProvider *)selfCopy runAuthorizationDialog:v21 error:&v68];
          v12 = v68;

          if (v49)
          {
LABEL_54:
            biometricAuthenticationContext = [(ISDataProvider *)v33 biometricAuthenticationContext];
            [biometricAuthenticationContext setDidFallbackToPassword:1];

            biometricSessionDelegate3 = [(ISDataProvider *)v33 biometricSessionDelegate];
            v47 = objc_opt_respondsToSelector();

            if (v47)
            {
              biometricSessionDelegate4 = [(ISDataProvider *)selfCopy biometricSessionDelegate];
              [biometricSessionDelegate4 sender:selfCopy didFallbackToPassword:1];
            }

            goto LABEL_56;
          }
        }

        else
        {
          v12 = v39;
        }
      }

      else
      {
        v69 = 0;
        v44 = [(ISDataProvider *)selfCopy runAuthorizationDialog:v21 error:&v69];
        v12 = v69;
        if (v44)
        {
          goto LABEL_54;
        }
      }

LABEL_31:
      v32 = 0;
LABEL_32:
      v7 = v60;
LABEL_50:

      if ((v32 & 1) == 0)
      {
        v11 = obj;

        if (errorCopy)
        {
          v51 = v12;
          v52 = 0;
          *errorCopy = v12;
        }

        else
        {
          v52 = 0;
        }

        goto LABEL_69;
      }

      ++v13;
      v14 = v12;
      if (v64 == v13)
      {
        v11 = obj;
        v50 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
        v64 = v50;
        if (v50)
        {
          goto LABEL_13;
        }

        goto LABEL_67;
      }
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v27) = shouldLog | 2;
    }

    else
    {
      LODWORD(v27) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v27 = v27;
    }

    else
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v29 = objc_opt_class();
      v76 = 138543618;
      v77 = v29;
      v78 = 2112;
      v79 = v12;
      v30 = v29;
      LODWORD(v55) = 22;
      v31 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Failing dialog with token error. error = %@", &v76, v55);

      if (!v31)
      {
LABEL_30:

        goto LABEL_31;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
      free(v31);
      v54 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_67:

  v52 = 1;
LABEL_69:

  return v52;
}

- (BOOL)processDictionary:(id)dictionary error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (![(ISProtocolDataProvider *)self shouldProcessProtocol])
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_46;
  }

  v7 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:dictionaryCopy];
  errorCopy = error;
  v45 = dictionaryCopy;
  if (([v7 isSupportedProtocolVersion] & 1) == 0)
  {
    versionMismatchURL = [v7 versionMismatchURL];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v54 = 138412546;
      v55 = objc_opt_class();
      v56 = 2112;
      v57 = versionMismatchURL;
      v19 = v55;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Unsupported protocol version, redirecting to: %@", &v54, 22);

      if (!v20)
      {
LABEL_18:

        [(ISDataProvider *)self setRedirectURL:versionMismatchURL];
        v11 = 0;
        v41 = versionMismatchURL != 0;
        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
      free(v20);
      v38 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_18;
  }

  v52 = 0;
  v8 = [(ISProtocolDataProvider *)self processDialogFromDictionary:dictionaryCopy error:&v52];
  v9 = v52;
  versionMismatchURL = v9;
  if (!v8)
  {
    v42 = v9;
    v41 = 0;
    goto LABEL_21;
  }

  [(ISProtocolDataProvider *)self _performActionsForResponse:v7];
  v51 = versionMismatchURL;
  v41 = [(ISProtocolDataProvider *)self _processFailureTypeFromDictionary:dictionaryCopy error:&v51];
  v11 = v51;
LABEL_19:

  v42 = v11;
LABEL_21:
  v43 = v7;
  [v7 pingURLs];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v21 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = v21;
  v23 = *v48;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v48 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v47 + 1) + 8 * i);
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v28 = shouldLog2 | 2;
      }

      else
      {
        v28 = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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
        v54 = 138412546;
        v55 = v31;
        v56 = 2112;
        v57 = v25;
        v32 = v31;
        LODWORD(v40) = 22;
        v33 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_275BC3000, oSLogObject2, 2, "%@: Pinging %@", &v54, v40);

        if (!v33)
        {
          goto LABEL_38;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:4];
        free(v33);
        v39 = oSLogObject2;
        SSFileLog();
      }

LABEL_38:
      v34 = +[ISOperationQueue mainQueue];
      v35 = [ISStoreURLOperation pingOperationWithUrl:v25];
      [v34 addOperation:v35];
    }

    v22 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  }

  while (v22);
LABEL_40:

  v13 = v41;
  if (errorCopy)
  {
    v36 = v41;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    dictionaryCopy = v45;
    v12 = v42;
  }

  else
  {
    v12 = v42;
    v13 = 0;
    *errorCopy = v12;
    dictionaryCopy = v45;
  }

LABEL_46:

  return v13;
}

- (BOOL)shouldProcessTouchIDDialogs
{
  biometricAuthenticationContext = [(ISDataProvider *)self biometricAuthenticationContext];
  v3 = biometricAuthenticationContext != 0;

  return v3;
}

- (BOOL)parseData:(id)data returningError:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contentType = [(ISDataProvider *)self contentType];
  v8 = contentType;
  v9 = contentType != 0;
  if (contentType && [contentType rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    mEMORY[0x277D69B38]3 = 0;
  }

  else
  {
    v42 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v42];
    mEMORY[0x277D69B38]3 = v42;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  if (!v10)
  {
    if (dataCopy)
    {
      v41 = 0;
      v10 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v41];
      v12 = v41;

      mEMORY[0x277D69B38]3 = v12;
      goto LABEL_8;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      v43 = 138412290;
      v44 = v26;
      v27 = v26;
      v28 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%@: Property list serialization failed with nil data", &v43, 12);

      if (!v28)
      {
LABEL_35:

LABEL_36:
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
        if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
        {
          LODWORD(v31) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v31) = shouldLog2;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
          v43 = 138412546;
          v44 = v33;
          v45 = 2112;
          v46 = mEMORY[0x277D69B38]3;
          v34 = v33;
          LODWORD(v39) = 22;
          v35 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%@: Couldn't parse protocol: %@", &v43, v39);

          if (!v35)
          {
LABEL_48:

            v14 = SSError();
            v10 = 0;
            goto LABEL_49;
          }

          oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:4];
          free(v35);
          SSFileLog();
        }

        goto LABEL_48;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
      free(v28);
      v38 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_35;
  }

LABEL_8:
  if (!v10)
  {
    goto LABEL_36;
  }

  v40 = mEMORY[0x277D69B38]3;
  v13 = [(ISProtocolDataProvider *)self processDictionary:v10 error:&v40];
  v14 = v40;

  if (v13)
  {
    [(ISDataProvider *)self setOutput:v10];
    v15 = 1;
    goto LABEL_52;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    LODWORD(v17) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v17) = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
    v43 = 138412546;
    v44 = v19;
    v45 = 2112;
    v46 = v14;
    v20 = v19;
    v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%@: Error processing protocol: %@", &v43, 22);

    if (!v21)
    {
      goto LABEL_49;
    }

    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:4];
    free(v21);
    SSFileLog();
  }

LABEL_49:
  [(ISDataProvider *)self setOutput:v10];
  if (error)
  {
    v36 = v14;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_52:

  return v15;
}

- (void)_presentDialog:(id)dialog
{
  dialogCopy = dialog;
  if ((SSIsDaemon() & 1) != 0 || [(ISProtocolDataProvider *)self shouldProcessDialogsOutsideDaemon])
  {
    defaultCenter = +[ISOperationQueue mainQueue];
    v5 = [ISDialogOperation operationWithDialog:dialogCopy];
    [defaultCenter addOperation:v5];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ISDialogReceivedNotification" object:dialogCopy];
  }
}

- (void)_checkDownloadQueues
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(ISProtocolDataProvider *)self shouldTriggerDownloads])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v4) = shouldLog | 2;
    }

    else
    {
      LODWORD(v4) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v8 = 138412290;
      v9 = objc_opt_class();
      v6 = v9;
      v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Triggering queue check", &v8, 12);

      if (!v7)
      {
LABEL_14:

        [MEMORY[0x277D69AB8] _triggerDownloads];
        return;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
      free(v7);
      SSFileLog();
    }

    goto LABEL_14;
  }
}

- (void)_checkBiometricFailureForResponse:(id)response
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D69B38];
  responseCopy = response;
  sharediTunesStoreConfig = [v4 sharediTunesStoreConfig];
  if (!sharediTunesStoreConfig)
  {
    sharediTunesStoreConfig = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [sharediTunesStoreConfig shouldLog];
  if ([sharediTunesStoreConfig shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [sharediTunesStoreConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v55 = 138543362;
    v56 = objc_opt_class();
    v10 = v56;
    v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%{public}@: Checking for server verification failure", &v55, 12);

    if (!v11)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
    free(v11);
    v52 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v12 = [responseCopy objectForKeyedSubscript:@"dialog"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKeyedSubscript:@"okButtonAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKeyedSubscript:@"buyParams"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v14 unescapedValues:1];
        v16 = [v15 objectForKeyedSubscript:@"hasFailedTouchIDChallenge"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          lowercaseString = [v16 lowercaseString];
          v18 = [lowercaseString isEqualToString:@"true"];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v21) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v21) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (v21)
  {
    v23 = objc_opt_class();
    v24 = MEMORY[0x277CCABB0];
    v25 = v23;
    v26 = [v24 numberWithBool:v18];
    v55 = 138543618;
    v56 = v23;
    v57 = 2114;
    v58 = v26;
    LODWORD(v54) = 22;
    v27 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_275BC3000, oSLogObject2, 2, "%{public}@: Did server verification occur? %{public}@", &v55, v54);

    if (!v27)
    {
      goto LABEL_37;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:4];
    free(v27);
    v53 = oSLogObject2;
    SSFileLog();
  }

LABEL_37:
  if (v18)
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];

    biometricAuthenticationContext = [(ISDataProvider *)self biometricAuthenticationContext];
    accountName = [biometricAuthenticationContext accountName];

    if (accountName)
    {
      goto LABEL_52;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v34) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v34) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v34 = v34;
    }

    else
    {
      v34 &= 2u;
    }

    if (v34)
    {
      v36 = objc_opt_class();
      v55 = 138543362;
      v56 = v36;
      v37 = v36;
      LODWORD(v54) = 12;
      v38 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_275BC3000, oSLogObject3, 2, "%{public}@: Setting accountName on context to active account", &v55, v54);

      if (!v38)
      {
LABEL_51:

        biometricAuthenticationContext2 = [(ISDataProvider *)self biometricAuthenticationContext];
        accountName2 = [activeAccount accountName];
        [biometricAuthenticationContext2 setAccountName:accountName2];

LABEL_52:
        biometricAuthenticationContext3 = [(ISDataProvider *)self biometricAuthenticationContext];
        accountIdentifier = [biometricAuthenticationContext3 accountIdentifier];

        if (accountIdentifier)
        {
LABEL_66:

          goto LABEL_67;
        }

        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]3)
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
        if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
        {
          LODWORD(v45) = shouldLog4 | 2;
        }

        else
        {
          LODWORD(v45) = shouldLog4;
        }

        oSLogObject4 = [mEMORY[0x277D69B38]3 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
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
          v55 = 138543362;
          v56 = v47;
          v48 = v47;
          LODWORD(v54) = 12;
          v49 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_275BC3000, oSLogObject4, 2, "%{public}@: Setting accountIdentifier on context to active account", &v55, v54);

          if (!v49)
          {
LABEL_65:

            biometricAuthenticationContext4 = [(ISDataProvider *)self biometricAuthenticationContext];
            uniqueIdentifier = [activeAccount uniqueIdentifier];
            [biometricAuthenticationContext4 setAccountIdentifier:uniqueIdentifier];

            goto LABEL_66;
          }

          oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v49 encoding:4];
          free(v49);
          SSFileLog();
        }

        goto LABEL_65;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:4];
      free(v38);
      v53 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_51;
  }

LABEL_67:
}

- (void)_checkInAppPurchaseQueueForAction:(id)action
{
  v24 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = objc_alloc_init(MEMORY[0x277D69C90]);
  [v5 setBagType:{objc_msgSend(actionCopy, "URLBagType")}];
  authenticationContext = [(ISDataProvider *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];
  [v5 setUserIdentifier:requiredUniqueIdentifier];

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_class();
  v13 = v12;
  bagType = [v5 bagType];
  clientIdentifier = [actionCopy clientIdentifier];
  v18 = 138412802;
  v19 = v12;
  v20 = 2048;
  v21 = bagType;
  v22 = 2112;
  v23 = clientIdentifier;
  v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Trigger in-app queue check: [%ld, %@]", &v18, 32);

  if (v16)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_12:
  }

  clientIdentifier2 = [actionCopy clientIdentifier];
  SSCheckInAppPurchaseQueue();
}

- (id)_metricsDictionaryForResponse:(id)response
{
  responseDictionary = [response responseDictionary];
  v4 = [responseDictionary objectForKey:@"metrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performActionsForResponse:(id)response
{
  v123 = *MEMORY[0x277D85DE8];
  actions = [response actions];
  v5 = 0x277D69000uLL;
  if (![actions count])
  {
    goto LABEL_15;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v116 = 138412546;
  v117 = objc_opt_class();
  v118 = 2112;
  v119 = actions;
  v10 = v117;
  v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Performing actions: %@", &v116, 22);

  if (v11)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
    free(v11);
    v87 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

LABEL_15:
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v12 = actions;
  v13 = [v12 countByEnumeratingWithState:&v112 objects:v122 count:16];
  if (!v13)
  {
    goto LABEL_127;
  }

  v14 = v13;
  v15 = *v113;
  v107 = *MEMORY[0x277D6A530];
  v103 = *MEMORY[0x277D6A538];
  v100 = *MEMORY[0x277D6A540];
  name = *MEMORY[0x277D6A6F0];
  v109 = *MEMORY[0x277D6A548];
  v106 = *MEMORY[0x277D6A550];
  v102 = *MEMORY[0x277D6A558];
  v98 = *MEMORY[0x277D6A560];
  v97 = *MEMORY[0x277D6A568];
  v16 = *MEMORY[0x277D6A520];
  v92 = *MEMORY[0x277D6A528];
  v101 = v12;
  v104 = *v113;
  v105 = *MEMORY[0x277D6A520];
  do
  {
    v17 = 0;
    v108 = v14;
    do
    {
      if (*v113 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v112 + 1) + 8 * v17);
      actionType = [v18 actionType];
      if ([actionType isEqualToString:v16])
      {
        [(ISProtocolDataProvider *)self _checkDownloadQueues];
        goto LABEL_62;
      }

      if (![actionType isEqualToString:v107])
      {
        if ([actionType isEqualToString:v103])
        {
          sharediTunesStoreConfig = [*(v5 + 2872) sharediTunesStoreConfig];
          if (!sharediTunesStoreConfig)
          {
            sharediTunesStoreConfig = [*(v5 + 2872) sharedConfig];
          }

          LODWORD(v29) = [sharediTunesStoreConfig shouldLog];
          if ([sharediTunesStoreConfig shouldLogToDisk])
          {
            LODWORD(v29) = v29 | 2;
          }

          oSLogObject2 = [sharediTunesStoreConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v29 = v29;
          }

          else
          {
            v29 &= 2u;
          }

          if (v29)
          {
            v31 = objc_opt_class();
            v116 = 138412290;
            v117 = v31;
            v32 = v31;
            LODWORD(v89) = 12;
            v33 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_275BC3000, oSLogObject2, 2, "%@: Invalidating URL bag", &v116, v89);

            v15 = v104;
            if (v33)
            {
              oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:4];
              free(v33);
              v88 = oSLogObject2;
              SSFileLog();
              goto LABEL_46;
            }
          }

          else
          {
LABEL_46:
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
          goto LABEL_61;
        }

        if (![actionType isEqualToString:v100])
        {
          goto LABEL_62;
        }

        sharediTunesStoreConfig2 = [*(v5 + 2872) sharediTunesStoreConfig];
        if (!sharediTunesStoreConfig2)
        {
          sharediTunesStoreConfig2 = [*(v5 + 2872) sharedConfig];
        }

        LODWORD(v36) = [sharediTunesStoreConfig2 shouldLog];
        if ([sharediTunesStoreConfig2 shouldLogToDisk])
        {
          LODWORD(v36) = v36 | 2;
        }

        oSLogObject3 = [sharediTunesStoreConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
        {
          v36 = v36;
        }

        else
        {
          v36 &= 2u;
        }

        if (v36)
        {
          v38 = objc_opt_class();
          v39 = v38;
          v40 = [v18 URL];
          v116 = 138412546;
          v117 = v38;
          v118 = 2112;
          v119 = v40;
          LODWORD(v89) = 22;
          v41 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_275BC3000, oSLogObject3, 2, "%@: Opening URL action: %@", &v116, v89);

          v12 = v101;
          v5 = 0x277D69000uLL;

          if (v41)
          {
            oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v41 encoding:4];
            free(v41);
            v88 = oSLogObject3;
            SSFileLog();
            goto LABEL_59;
          }
        }

        else
        {
LABEL_59:
        }

        v42 = [v18 URL];
        v43 = [ISOpenURLRequest openURLRequestWithURL:v42];

        [v43 setITunesStoreURL:0];
        v44 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:v43];
        v45 = +[ISOperationQueue mainQueue];
        [v45 addOperation:v44];

        v15 = v104;
        goto LABEL_61;
      }

      sharediTunesStoreConfig3 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig3)
      {
        sharediTunesStoreConfig3 = [*(v5 + 2872) sharedConfig];
      }

      LODWORD(v21) = [sharediTunesStoreConfig3 shouldLog];
      if ([sharediTunesStoreConfig3 shouldLogToDisk])
      {
        LODWORD(v21) = v21 | 2;
      }

      oSLogObject4 = [sharediTunesStoreConfig3 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (!v21)
      {
        goto LABEL_33;
      }

      v23 = objc_opt_class();
      v24 = v23;
      v25 = [v18 URL];
      v116 = 138412546;
      v117 = v23;
      v12 = v101;
      v118 = 2112;
      v119 = v25;
      LODWORD(v89) = 22;
      v26 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%@: Plist-driven redirect to: %@", &v116, v89);

      v5 = 0x277D69000;
      v15 = v104;

      if (v26)
      {
        oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:4];
        free(v26);
        v88 = oSLogObject4;
        SSFileLog();
LABEL_33:
      }

      v27 = [v18 URL];
      [(ISDataProvider *)self setRedirectURL:v27];

LABEL_61:
      v14 = v108;
      v16 = v105;
LABEL_62:
      if ([actionType isEqualToString:{v109, v88}])
      {
        [(ISProtocolDataProvider *)self _refreshSubscriptionStatus];
        goto LABEL_68;
      }

      if ([actionType isEqualToString:v106])
      {
        [MEMORY[0x277D69AB8] retryAllRestoreDownloads];
        goto LABEL_68;
      }

      if ([actionType isEqualToString:v102])
      {
        footerSection = [v18 footerSection];
        [(ISProtocolDataProvider *)self _selectFooterSection:footerSection];

        goto LABEL_68;
      }

      if ([actionType isEqualToString:v98])
      {
        if (![(ISProtocolDataProvider *)self shouldProcessAccount])
        {
          goto LABEL_68;
        }

        account = [v18 account];
        creditsString = [v18 creditsString];
        [account setCreditsString:creditsString];

        defaultStore = [MEMORY[0x277D69A20] defaultStore];
        v111 = 0;
        [defaultStore saveAccount:account verifyCredentials:0 error:&v111];
        v50 = v111;

        if (v50)
        {
          sharedAccountsConfig = [*(v5 + 2872) sharedAccountsConfig];
          if (!sharedAccountsConfig)
          {
            sharedAccountsConfig = [*(v5 + 2872) sharedConfig];
          }

          LODWORD(v52) = [sharedAccountsConfig shouldLog];
          if ([sharedAccountsConfig shouldLogToDisk])
          {
            LODWORD(v52) = v52 | 2;
          }

          oSLogObject5 = [sharedAccountsConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
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
            v93 = v54;
            accountName = [account accountName];
            SSHashIfNeeded();
            v56 = v95 = v50;
            v116 = 138543618;
            v117 = v54;
            v15 = v104;
            v118 = 2114;
            v119 = v56;
            LODWORD(v89) = 22;
            v57 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &dword_275BC3000, oSLogObject5, 16, "%{public}@: Failed to save credit string to account: %{public}@", &v116, v89);

            v5 = 0x277D69000;
            v50 = v95;

            if (v57)
            {
              oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v57 encoding:4];
              free(v57);
              v87 = oSLogObject5;
              SSFileLog();
              goto LABEL_83;
            }
          }

          else
          {
LABEL_83:
          }

          v12 = v101;
          v14 = v108;
        }

        v16 = v105;
        goto LABEL_68;
      }

      if ([actionType isEqualToString:v97])
      {
        if (![(ISProtocolDataProvider *)self shouldProcessAccount])
        {
          goto LABEL_68;
        }

        account2 = [v18 account];
        [account2 setActive:1];
        sharedAccountsConfig2 = [*(v5 + 2872) sharedAccountsConfig];
        if (!sharedAccountsConfig2)
        {
          sharedAccountsConfig2 = [*(v5 + 2872) sharedConfig];
        }

        shouldLog2 = [sharedAccountsConfig2 shouldLog];
        if ([sharedAccountsConfig2 shouldLogToDisk])
        {
          shouldLog2 |= 2u;
        }

        oSLogObject6 = [sharedAccountsConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v62 = shouldLog2;
        }

        else
        {
          v62 = shouldLog2 & 2;
        }

        v96 = account2;
        if (v62)
        {
          v63 = objc_opt_class();
          v64 = v63;
          accountName2 = [account2 accountName];
          v66 = SSHashIfNeeded();
          v116 = 138543618;
          v117 = v63;
          v118 = 2114;
          v119 = v66;
          LODWORD(v89) = 22;
          v67 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &dword_275BC3000, oSLogObject6, 0, "%{public}@: The server told us to set the active account. Saving %{public}@.", &v116, v89);

          v5 = 0x277D69000uLL;
          account2 = v96;

          if (v67)
          {
            oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v67 encoding:4];
            free(v67);
            v87 = oSLogObject6;
            SSFileLog();
            goto LABEL_98;
          }
        }

        else
        {
LABEL_98:
        }

        defaultStore2 = [MEMORY[0x277D69A20] defaultStore];
        v110 = 0;
        v69 = [defaultStore2 saveAccount:account2 verifyCredentials:0 error:&v110];
        v94 = v110;

        sharedAccountsConfig3 = [*(v5 + 2872) sharedAccountsConfig];
        sharedConfig = sharedAccountsConfig3;
        if (v69)
        {
          if (!sharedAccountsConfig3)
          {
            sharedConfig = [*(v5 + 2872) sharedConfig];
          }

          shouldLog3 = [sharedConfig shouldLog];
          if ([sharedConfig shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          oSLogObject7 = [sharedConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
          {
            v74 = shouldLog3;
          }

          else
          {
            v74 = shouldLog3 & 2;
          }

          if (v74)
          {
            v75 = objc_opt_class();
            v76 = v75;
            accountName3 = [account2 accountName];
            v78 = SSHashIfNeeded();
            v116 = 138543618;
            v117 = v75;
            v118 = 2114;
            v119 = v78;
            LODWORD(v89) = 22;
            v79 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &dword_275BC3000, oSLogObject7, 1, "%{public}@: Successfully set %{public}@ as the active account.", &v116, v89);

            goto LABEL_120;
          }

LABEL_122:
          v12 = v101;
          v15 = v104;
LABEL_123:
          v14 = v108;
        }

        else
        {
          if (!sharedAccountsConfig3)
          {
            sharedConfig = [*(v5 + 2872) sharedConfig];
          }

          shouldLog4 = [sharedConfig shouldLog];
          if ([sharedConfig shouldLogToDisk])
          {
            shouldLog4 |= 2u;
          }

          oSLogObject7 = [sharedConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
          {
            v81 = shouldLog4;
          }

          else
          {
            v81 = shouldLog4 & 2;
          }

          if (!v81)
          {
            goto LABEL_122;
          }

          v82 = objc_opt_class();
          v91 = v82;
          accountName4 = [account2 accountName];
          v83 = SSHashIfNeeded();
          v84 = [v94 description];
          v85 = SSHashIfNeeded();
          v116 = 138543874;
          v117 = v82;
          v118 = 2114;
          v119 = v83;
          v120 = 2114;
          v121 = v85;
          LODWORD(v89) = 32;
          v79 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &dword_275BC3000, oSLogObject7, 16, "%{public}@: Failed to set %{public}@ as the active account. error = %{public}@", &v116, v89);

LABEL_120:
          v5 = 0x277D69000;
          if (v79)
          {
            v12 = v101;
            v15 = v104;
            oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v79 encoding:4];
            free(v79);
            v87 = oSLogObject7;
            SSFileLog();
            goto LABEL_123;
          }

          v12 = v101;
          v15 = v104;
          v14 = v108;
        }

        v16 = v105;

        goto LABEL_68;
      }

      if ([actionType isEqualToString:v92])
      {
        [(ISProtocolDataProvider *)self _checkInAppPurchaseQueueForAction:v18];
      }

LABEL_68:

      ++v17;
    }

    while (v14 != v17);
    v86 = [v12 countByEnumeratingWithState:&v112 objects:v122 count:16];
    v14 = v86;
  }

  while (v86);
LABEL_127:
}

- (BOOL)_processFailureTypeFromDictionary:(id)dictionary error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [dictionary objectForKey:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    intValue = [v5 intValue];
    if ((intValue - 1001) <= 3 && intValue != 1002)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
      mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        LODWORD(v23) = shouldLog | 2;
      }

      else
      {
        LODWORD(v23) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
        v26 = v25;
        v28 = 138543618;
        v29 = v25;
        v30 = 1024;
        intValue2 = [v5 intValue];
        v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Saw token failure: %d", &v28, 18);

        if (!v27)
        {
LABEL_37:

          [v5 intValue];
          v15 = SSError();
LABEL_38:
          v16 = v15;
          v17 = 0;
          if (!error)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:4];
        free(v27);
        SSFileLog();
      }

      goto LABEL_37;
    }

    if (intValue == 2034 || intValue == 2002)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        LODWORD(v10) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v10) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
        v13 = v12;
        v28 = 138543618;
        v29 = v12;
        v30 = 1024;
        intValue2 = [v5 intValue];
        v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Saw token failure: %d", &v28, 18);

        if (!v14)
        {
LABEL_21:

          v15 = ISError(18, 0, 0);
          goto LABEL_38;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
        free(v14);
        SSFileLog();
      }

      goto LABEL_21;
    }
  }

  v16 = 0;
  v17 = 1;
  if (error)
  {
LABEL_23:
    v18 = v16;
    *error = v16;
  }

LABEL_24:

  return v17;
}

- (void)_refreshSubscriptionStatus
{
  if ((SSIsDaemon() & 1) == 0)
  {
    v2 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = [v2 initWithObjectsAndKeys:{MEMORY[0x277CBEC28], *MEMORY[0x277D6A638], MEMORY[0x277CBEC38], *MEMORY[0x277D6A640], 0}];
    mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
    [mEMORY[0x277D69D18] getStatusWithOptions:v4 statusBlock:0];
  }
}

- (void)_selectFooterSection:(id)section
{
  v17 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  if ([(ISProtocolDataProvider *)self shouldPostFooterSectionChanged])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = sectionCopy;
      v9 = v14;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Select footer section: %@", &v13, 22);

      if (!v10)
      {
LABEL_14:

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__ISProtocolDataProvider__selectFooterSection___block_invoke;
        block[3] = &unk_27A670818;
        v12 = sectionCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __47__ISProtocolDataProvider__selectFooterSection___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{*(a1 + 32), @"ISProtocolKeySection", 0}];
  [v3 postNotificationName:@"ISProtocolNotificationSelectFooterSection" object:0 userInfo:v2];
}

- (BOOL)_shouldAttemptPasswordPaymentSheetForError:(id)error
{
  errorCopy = error;
  v4 = ISWeakLinkedStringConstantForString("MobileActivationErrorDomain", 0x25);
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:v4];

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v8 = [errorCopy code] == 147;

    v6 |= v8;
  }

  else
  {
  }

  return v6 & 1;
}

- (BOOL)_shouldFailWithTokenErrorForDialog:(id)dialog dictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  contentType = [(ISDataProvider *)self contentType];
  v9 = [contentType rangeOfString:@"json" options:1];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v10 = [dictionaryCopy objectForKey:@"errorNumber"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v10 integerValue] != 2055)
  {

LABEL_8:
    v13 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v11 = SSError();

  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  v13 = 1;
LABEL_9:

  return v13;
}

- (id)_touchIDDialogForResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy actionsWithActionType:*MEMORY[0x277D6A578]];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    dialog = [v5 dialog];

    v7 = [ISTouchIDDialog alloc];
    dialogDictionary = [dialog dialogDictionary];
    v9 = [(ISTouchIDDialog *)v7 initWithDialogDictionary:dialogDictionary];
  }

  else
  {
    v9 = 0;
  }

  v10 = [responseCopy actionsWithActionType:*MEMORY[0x277D6A570]];
  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    dialog2 = [v11 dialog];

    if (v9)
    {
      message = [dialog2 message];
      if (message)
      {
        [(ISTouchIDDialog *)v9 setFallbackExplanation:message];
      }

      title = [dialog2 title];
      if (title)
      {
        [(ISTouchIDDialog *)v9 setFallbackMessage:title];
      }
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = ISProtocolDataProvider;
  v5 = [(ISDataProvider *)&v11 copyWithZone:?];
  v5[112] = [(ISProtocolDataProvider *)self shouldPostFooterSectionChanged];
  v5[113] = [(ISProtocolDataProvider *)self shouldProcessAccount];
  v5[114] = [(ISProtocolDataProvider *)self shouldProcessAuthenticationDialogs];
  v5[115] = [(ISProtocolDataProvider *)self shouldProcessDialogs];
  v5[117] = [(ISProtocolDataProvider *)self shouldProcessProtocol];
  v5[118] = [(ISProtocolDataProvider *)self shouldProcessTouchIDDialogs];
  v5[119] = [(ISProtocolDataProvider *)self shouldTriggerDownloads];
  v6 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext copyWithZone:zone];
  v7 = *(v5 + 15);
  *(v5 + 15) = v6;

  v8 = [(NSString *)self->_presentingSceneIdentifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

@end