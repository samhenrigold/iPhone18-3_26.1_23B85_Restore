@interface ISBiometricAuthorizationDialogOperation
- (BOOL)_runAuthkitOperationWithError:(id)error returningError:(id *)returningError;
- (BOOL)_runSignatureOperationReturningError:(id *)error;
- (BOOL)_shouldFallbackToAuthKitForError:(id)error;
- (ISBiometricAuthorizationDialogOperation)initWithTouchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog;
- (void)_findSelectedButtonForButtons:(id)buttons;
- (void)_loadURLBag;
- (void)_performMetricsWithBiometricMatch:(unint64_t)match didBiometricsFail:(BOOL)fail;
- (void)run;
@end

@implementation ISBiometricAuthorizationDialogOperation

- (ISBiometricAuthorizationDialogOperation)initWithTouchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog
{
  dialogCopy = dialog;
  fallbackDialogCopy = fallbackDialog;
  v13.receiver = self;
  v13.super_class = ISBiometricAuthorizationDialogOperation;
  v9 = [(ISOperation *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.itunesstored.ISBiometricAuthorizationDialogOperation", 0);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v10;

    objc_storeStrong(&v9->_fallbackDialog, fallbackDialog);
    objc_storeStrong(&v9->_touchIDDialog, dialog);
  }

  return v9;
}

- (void)run
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D69A60];
  metricsDictionary = [(ISBiometricAuthorizationDialogOperation *)self metricsDictionary];
  v5 = [v3 dialogIdForMetricsDictionary:metricsDictionary];

  if (v5 || (v5 = *MEMORY[0x277D6A468]) != 0)
  {
    [(SSBiometricAuthenticationContext *)self->_context setDialogId:v5];
  }

  v77 = v5;
  userAgent = [(ISBiometricAuthorizationDialogOperation *)self userAgent];

  if (userAgent)
  {
    context = self->_context;
    userAgent2 = [(ISBiometricAuthorizationDialogOperation *)self userAgent];
    [(SSBiometricAuthenticationContext *)context setUserAgent:userAgent2];
  }

  v81 = 0;
  v9 = [(ISBiometricAuthorizationDialogOperation *)self _runSignatureOperationReturningError:&v81];
  v10 = v81;
  v11 = MEMORY[0x277D6A110];
  if (v9)
  {
    v12 = 0;
    v13 = 1;
    v14 = 2;
    goto LABEL_71;
  }

  v15 = ISWeakLinkedStringConstantForString("LAErrorDomain", 0x1E);
  domain = [v10 domain];
  if (![domain isEqualToString:v15])
  {
    goto LABEL_13;
  }

  code = [v10 code];
  if (code == -1)
  {
LABEL_12:
    v12 = 1;
    goto LABEL_14;
  }

  if (code != -2)
  {
    if (code == -8)
    {
      goto LABEL_12;
    }

LABEL_13:
    v12 = 0;
LABEL_14:
    if ([(ISBiometricAuthorizationDialogOperation *)self _shouldFallbackToAuthKitForError:v10])
    {
      goto LABEL_15;
    }

    if (![domain isEqualToString:*v11] || objc_msgSend(v10, "code") != 16)
    {
      v14 = 1;
      goto LABEL_33;
    }

    v74 = v12;
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      v82 = 138543362;
      v83 = v23;
      v24 = v23;
      v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%{public}@: (StoreServices) User canceled out of biometric authorization", &v82, 12);

      if (!v25)
      {
LABEL_31:

        v14 = 8;
        v12 = v74;
LABEL_33:
        v76 = v15;
        if (![domain isEqualToString:{v15, v71}] || objc_msgSend(v10, "code") != -2)
        {
          goto LABEL_54;
        }

        v75 = v12;
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
        if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
        {
          LODWORD(v28) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v28) = shouldLog2;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v28 = v28;
        }

        else
        {
          v28 &= 2u;
        }

        if (v28)
        {
          v30 = objc_opt_class();
          v82 = 138543362;
          v83 = v30;
          v31 = v30;
          LODWORD(v73) = 12;
          v32 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: (LocalAuthentication) User canceled out of biometric authorization", &v82, v73);

          if (!v32)
          {
LABEL_47:

            v14 = 8;
            v12 = v75;
            goto LABEL_54;
          }

          oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:4];
          free(v32);
          v71 = oSLogObject2;
          SSFileLog();
        }

        goto LABEL_47;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:4];
      free(v25);
      v71 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_31;
  }

  v12 = 0;
  if ([(ISBiometricAuthorizationDialogOperation *)self _shouldFallbackToAuthKitForError:v10])
  {
LABEL_15:
    v80 = 0;
    v13 = [(ISBiometricAuthorizationDialogOperation *)self _runAuthkitOperationWithError:v10 returningError:&v80];
    mEMORY[0x277D69B38]3 = v80;

    if (v13)
    {
      v14 = 4;
LABEL_69:
      v10 = mEMORY[0x277D69B38]3;
      goto LABEL_70;
    }

    domain2 = [mEMORY[0x277D69B38]3 domain];
    if ([domain2 isEqualToString:*v11])
    {
      v34 = domain;
      v35 = v12;
      code2 = [mEMORY[0x277D69B38]3 code];

      v37 = code2 == 140;
      v12 = v35;
      domain = v34;
      if (v37)
      {
        v14 = 8;
        goto LABEL_69;
      }
    }

    else
    {
    }

    v14 = 16;
    goto LABEL_69;
  }

  v76 = v15;
  v14 = 8;
LABEL_54:
  v38 = v12;
  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    LODWORD(v40) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v40) = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v40 = v40;
  }

  else
  {
    v40 &= 2u;
  }

  if (v40)
  {
    v42 = objc_opt_class();
    v82 = 138543618;
    v83 = v42;
    v84 = 2114;
    v85 = v10;
    v43 = v42;
    LODWORD(v73) = 22;
    v44 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_275BC3000, oSLogObject3, 1, "%{public}@: Biometric signature failed to obtain authorization with error: %{public}@", &v82, v73);

    if (!v44)
    {
      v13 = 0;
      v12 = v38;
      v15 = v76;
      goto LABEL_70;
    }

    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:4];
    free(v44);
    v71 = oSLogObject3;
    SSFileLog();
    v12 = v38;
  }

  else
  {
    v12 = v38;
  }

  v13 = 0;
  v15 = v76;
LABEL_70:

LABEL_71:
  biometricAuthenticationContext = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  isExtendedAction = [biometricAuthenticationContext isExtendedAction];

  if (isExtendedAction)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ISBiometricAuthorizationDialogOperation_run__block_invoke;
    block[3] = &unk_27A670F40;
    block[4] = self;
    block[5] = v14;
    v79 = v12;
    dispatch_async(dispatchQueue, block);
  }

  mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]5 = mEMORY[0x277D69B38]4;
  if (v13)
  {
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      LODWORD(v51) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v51) = shouldLog4;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      v51 = v51;
    }

    else
    {
      v51 &= 2u;
    }

    if (!v51)
    {
      goto LABEL_96;
    }

    v53 = objc_opt_class();
    v82 = 138543362;
    v83 = v53;
    v54 = v53;
    LODWORD(v73) = 12;
    v55 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_275BC3000, oSLogObject4, 2, "%{public}@: Operation completed successfully", &v82, v73);
  }

  else
  {
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      LODWORD(v57) = shouldLog5 | 2;
    }

    else
    {
      LODWORD(v57) = shouldLog5;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v57 = v57;
    }

    else
    {
      v57 &= 2u;
    }

    if (!v57)
    {
      goto LABEL_96;
    }

    v58 = objc_opt_class();
    v82 = 138543618;
    v83 = v58;
    v84 = 2114;
    v85 = v10;
    v54 = v58;
    LODWORD(v73) = 22;
    v55 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_275BC3000, oSLogObject4, 16, "%{public}@: Operation failed with error: %{public}@", &v82, v73);
  }

  v59 = v55;

  if (!v59)
  {
    goto LABEL_97;
  }

  oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v59 encoding:4];
  free(v59);
  v72 = oSLogObject4;
  SSFileLog();
LABEL_96:

LABEL_97:
  domain3 = [v10 domain];
  if (domain3 != *v11)
  {
    v61 = v77;
LABEL_112:

    goto LABEL_113;
  }

  v61 = v77;
  if ([v10 code] != 149)
  {
    goto LABEL_112;
  }

  biometricAuthenticationContext2 = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  isExtendedAction2 = [biometricAuthenticationContext2 isExtendedAction];

  if ((isExtendedAction2 & 1) == 0)
  {
    mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog6 = [mEMORY[0x277D69B38]6 shouldLog];
    if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
    {
      LODWORD(v66) = shouldLog6 | 2;
    }

    else
    {
      LODWORD(v66) = shouldLog6;
    }

    oSLogObject5 = [mEMORY[0x277D69B38]6 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v66 = v66;
    }

    else
    {
      v66 &= 2u;
    }

    if (v66)
    {
      v68 = objc_opt_class();
      v82 = 138543362;
      v83 = v68;
      v69 = v68;
      LODWORD(v73) = 12;
      v70 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &dword_275BC3000, oSLogObject5, 0, "%{public}@: Encountered keychain timeout, attempting to display [PW] payment sheet", &v82, v73);

      if (!v70)
      {
LABEL_111:

        domain3 = v10;
        v10 = 0;
        goto LABEL_112;
      }

      oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v70 encoding:4];
      free(v70);
      v72 = oSLogObject5;
      SSFileLog();
    }

    goto LABEL_111;
  }

LABEL_113:
  [(ISOperation *)self setError:v10, v72];
  [(ISOperation *)self setSuccess:v13];
}

- (void)_findSelectedButtonForButtons:(id)buttons
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  buttonsCopy = buttons;
  v5 = [buttonsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *v16;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(buttonsCopy);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      if ([v9 actionType] == 1)
      {
        selectedButton = [v9 dictionary];
        v11 = [selectedButton objectForKey:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          redirectURL = self->_redirectURL;
          self->_redirectURL = v12;
        }

        objc_storeStrong(&self->_selectedButton, v9);

        goto LABEL_15;
      }

      if ([v9 actionType] == 3)
      {
        [(SSBiometricAuthenticationContext *)self->_context setDidBuyParamsChange:1];
        v14 = v9;
        selectedButton = self->_selectedButton;
        self->_selectedButton = v14;
LABEL_15:

        goto LABEL_16;
      }
    }

    v6 = [buttonsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_16:
}

- (void)_loadURLBag
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v16 = 0;
  v4 = [(ISOperation *)self runSubOperation:v3 returningError:&v16];
  v5 = v16;
  v6 = v5;
  if (v4 && v5 == 0)
  {
    uRLBag = [(ISLoadURLBagOperation *)v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = uRLBag;
    goto LABEL_18;
  }

  urlBag = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!urlBag)
  {
    urlBag = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [urlBag OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = objc_opt_class();
  v17 = 138543618;
  v18 = v12;
  v19 = 2114;
  v20 = v6;
  v13 = v12;
  v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Failed to load URL bag with error: %{public}@", &v17, 22);

  if (v14)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_16:
  }

LABEL_18:
}

- (void)_performMetricsWithBiometricMatch:(unint64_t)match didBiometricsFail:(BOOL)fail
{
  v46 = *MEMORY[0x277D85DE8];
  urlBag = self->_urlBag;
  if (urlBag || ([(ISBiometricAuthorizationDialogOperation *)self _loadURLBag:match], (urlBag = self->_urlBag) != 0))
  {
    fail = [(ISURLBag *)urlBag valueForKey:*MEMORY[0x277D6A4F8], fail];
    if ([fail count])
    {
      v8 = MEMORY[0x277D69A60];
      metricsDictionary = [(ISBiometricAuthorizationDialogOperation *)self metricsDictionary];
      mEMORY[0x277D69B38]2 = [v8 dialogIdForMetricsDictionary:metricsDictionary];

      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = *MEMORY[0x277D6A468];
      }

      oSLogObject2 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [oSLogObject2 setObject:mEMORY[0x277D69B38]2 forKey:*MEMORY[0x277D69DB0]];
      [oSLogObject2 setObject:&unk_2884CA908 forKey:*MEMORY[0x277D69DC0]];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:match];
      [oSLogObject2 setObject:v12 forKey:*MEMORY[0x277D69DA0]];

      buyParams = [(ISBiometricAuthorizationDialogOperation *)self buyParams];

      if (buyParams)
      {
        buyParams2 = [(ISBiometricAuthorizationDialogOperation *)self buyParams];
        v15 = [buyParams2 objectForKey:@"mtTopic"];

        if (v15)
        {
          [oSLogObject2 setObject:v15 forKey:*MEMORY[0x277D69DD8]];
        }
      }

      userAgent = [(ISBiometricAuthorizationDialogOperation *)self userAgent];

      if (userAgent)
      {
        userAgent2 = [(ISBiometricAuthorizationDialogOperation *)self userAgent];
        [oSLogObject2 setObject:userAgent2 forKey:*MEMORY[0x277D69DE0]];
      }

      v18 = +[ISDevice sharedInstance];
      deviceBiometricStyle = [v18 deviceBiometricStyle];

      if (deviceBiometricStyle)
      {
        if (deviceBiometricStyle == 3)
        {
          v20 = MEMORY[0x277D69DE8];
          goto LABEL_38;
        }

        if (deviceBiometricStyle == 2)
        {
          v20 = MEMORY[0x277D69DF0];
LABEL_38:
          [oSLogObject2 setObject:*v20 forKey:*MEMORY[0x277D69DA8]];
LABEL_63:
          v38 = [MEMORY[0x277D69A60] authorizationDialogEventForParameters:{oSLogObject2, v41}];
          v39 = [objc_alloc(MEMORY[0x277D69B70]) initWithGlobalConfiguration:fail];
          v40 = objc_alloc_init(MEMORY[0x277D69B78]);
          [v40 setGlobalConfiguration:v39];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __95__ISBiometricAuthorizationDialogOperation__performMetricsWithBiometricMatch_didBiometricsFail___block_invoke;
          v43[3] = &unk_27A670F68;
          v43[4] = self;
          [v40 insertEvent:v38 withCompletionHandler:v43];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __95__ISBiometricAuthorizationDialogOperation__performMetricsWithBiometricMatch_didBiometricsFail___block_invoke_21;
          v42[3] = &unk_27A670F68;
          v42[4] = self;
          [v40 flushUnreportedEventsWithCompletionHandler:v42];

          goto LABEL_64;
        }

        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          LODWORD(v36) = shouldLog | 2;
        }

        else
        {
          LODWORD(v36) = shouldLog;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v36;
        }

        else
        {
          v36 &= 2u;
        }

        if (!v36)
        {
          goto LABEL_61;
        }

        v44 = 138543362;
        v45 = objc_opt_class();
        v33 = v45;
      }

      else
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          LODWORD(v31) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v31) = shouldLog2;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v31;
        }

        else
        {
          v31 &= 2u;
        }

        if (!v31)
        {
          goto LABEL_61;
        }

        v44 = 138543362;
        v45 = objc_opt_class();
        v33 = v45;
      }

      v37 = v34;

      if (!v37)
      {
LABEL_62:

        goto LABEL_63;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:4];
      free(v37);
      v41 = oSLogObject;
      SSFileLog();
LABEL_61:

      goto LABEL_62;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v22) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v22) = shouldLog3;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (!v22)
    {
      goto LABEL_64;
    }

    v44 = 138543362;
    v45 = objc_opt_class();
    v23 = v45;
    v24 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: Metrics failed with no bag key", &v44, 12);

    if (v24)
    {
      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
LABEL_64:
    }

LABEL_65:

    goto LABEL_66;
  }

  fail = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!fail)
  {
    fail = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [fail shouldLog];
  if ([fail shouldLogToDisk])
  {
    LODWORD(v26) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v26) = shouldLog4;
  }

  mEMORY[0x277D69B38]2 = [fail OSLogObject];
  if (os_log_type_enabled(mEMORY[0x277D69B38]2, OS_LOG_TYPE_INFO))
  {
    v26 = v26;
  }

  else
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_65;
  }

  v44 = 138543362;
  v45 = objc_opt_class();
  v27 = v45;
  v28 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38]2, 1, "%{public}@: Metrics failed with no bag", &v44, 12);

  if (v28)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
    free(v28);
    SSFileLog();
    goto LABEL_65;
  }

LABEL_66:
}

void __95__ISBiometricAuthorizationDialogOperation__performMetricsWithBiometricMatch_didBiometricsFail___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = v4 | 2;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = v2;
      v7 = v10;
      v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, v6, 0, "%{public}@: Failed to install metrics event with error: %{public}@", &v9, 22);

      if (!v8)
      {
LABEL_14:

        goto LABEL_15;
      }

      v6 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __95__ISBiometricAuthorizationDialogOperation__performMetricsWithBiometricMatch_didBiometricsFail___block_invoke_21(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = v4 | 2;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = v2;
      v7 = v10;
      v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, v6, 0, "%{public}@: Failed to flush metrics events with error: %{public}@", &v9, 22);

      if (!v8)
      {
LABEL_14:

        goto LABEL_15;
      }

      v6 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (BOOL)_runAuthkitOperationWithError:(id)error returningError:(id *)returningError
{
  accountIdentifier = [(SSBiometricAuthenticationContext *)self->_context accountIdentifier];
  v7 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:accountIdentifier];
  [v7 setCanCreateNewAccount:0];
  [v7 setCanSetActiveAccount:0];
  [v7 setPromptStyle:1];
  [v7 setShouldCreateNewSession:1];
  passwordEquivalentToken = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];

  if (passwordEquivalentToken)
  {
    passwordEquivalentToken2 = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];
    [v7 setPasswordEquivalentToken:passwordEquivalentToken2];
  }

  v10 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v10 setAuthenticationContext:v7];
  fallbackDialog = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
  [(ISServerAuthenticationOperation *)v10 setDialog:fallbackDialog];

  [(ISServerAuthenticationOperation *)v10 setPerformsButtonAction:0];
  v19 = 0;
  v12 = [(ISOperation *)self runSubOperation:v10 returningError:&v19];
  v13 = v19;
  context = self->_context;
  if (!v12 || v13)
  {
    [(SSBiometricAuthenticationContext *)context setDidAuthenticate:0];
    [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:1];
    if (!returningError)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = v13;
    *returningError = v13;
    goto LABEL_11;
  }

  [(SSBiometricAuthenticationContext *)context setDidAuthenticate:1];
  [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:1];
  [(SSBiometricAuthenticationContext *)self->_context setShouldSendFallbackHeader:1];
  fallbackDialog2 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];

  if (fallbackDialog2)
  {
    fallbackDialog3 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
    fallbackDialog2 = [fallbackDialog3 buttons];
  }

  [(ISBiometricAuthorizationDialogOperation *)self _findSelectedButtonForButtons:fallbackDialog2];
  objc_storeStrong(&self->_dialog, self->_fallbackDialog);

  if (returningError)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v12;
}

- (BOOL)_runSignatureOperationReturningError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [ISBiometricSignatureOperation alloc];
  context = self->_context;
  touchIDDialog = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];
  fallbackDialog = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
  v9 = [(ISBiometricSignatureOperation *)v5 initWithBiometricAuthenticationContext:context touchIDDialog:touchIDDialog fallbackDialog:fallbackDialog];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__6;
  v44 = __Block_byref_object_dispose__6;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__6;
  v38 = __Block_byref_object_dispose__6;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __80__ISBiometricAuthorizationDialogOperation__runSignatureOperationReturningError___block_invoke;
  v27[3] = &unk_27A670F90;
  v27[4] = &v40;
  v27[5] = &v34;
  v27[6] = &v28;
  [(ISBiometricSignatureOperation *)v9 setOutputBlock:v27];
  v26 = 0;
  v10 = [(ISOperation *)self runSubOperation:v9 returningError:&v26];
  v11 = v26;
  if (v10 && v41[5])
  {
    [(SSBiometricAuthenticationContext *)self->_context setDidAuthenticate:1];
    [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:0];
    [(SSBiometricAuthenticationContext *)self->_context setSignature:v41[5]];
    [(SSBiometricAuthenticationContext *)self->_context setPaymentTokenData:v35[5]];
    [(SSBiometricAuthenticationContext *)self->_context setFpanID:v29[5]];
    touchIDDialog2 = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];

    if (touchIDDialog2)
    {
      touchIDDialog3 = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];
      buttons = [touchIDDialog3 buttons];
      v15 = &OBJC_IVAR___ISBiometricAuthorizationDialogOperation__touchIDDialog;
    }

    else
    {
      buttons = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];

      if (!buttons)
      {
LABEL_21:
        [(ISBiometricAuthorizationDialogOperation *)self _findSelectedButtonForButtons:buttons];
        goto LABEL_22;
      }

      touchIDDialog3 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
      buttons = [touchIDDialog3 buttons];
      v15 = &OBJC_IVAR___ISBiometricAuthorizationDialogOperation__fallbackDialog;
    }

    objc_storeStrong(&self->_dialog, *(&self->super.super.super.isa + *v15));
    goto LABEL_21;
  }

  passwordEquivalentToken = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];

  if (passwordEquivalentToken)
  {
    SSError();
    v11 = buttons = v11;
    goto LABEL_22;
  }

  buttons = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!buttons)
  {
    buttons = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v17) = [buttons shouldLog];
  shouldLogToDisk = [buttons shouldLogToDisk];
  oSLogObject = [buttons OSLogObject];
  v20 = oSLogObject;
  if (shouldLogToDisk)
  {
    LODWORD(v17) = v17 | 2;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v21 = objc_opt_class();
    v46 = 138543618;
    v47 = v21;
    v48 = 2114;
    v49 = v11;
    v22 = v21;
    v23 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, v20, 16, "%{public}@: Failed to obtain biometric signature with error: %{public}@", &v46, 22);

    if (!v23)
    {
      goto LABEL_22;
    }

    v20 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
    free(v23);
    SSFileLog();
  }

LABEL_22:
  if (error)
  {
    v24 = v11;
    *error = v11;
  }

  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v10;
}

void __80__ISBiometricAuthorizationDialogOperation__runSignatureOperationReturningError___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v21 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v21)
  {
    v12 = [v21 copy];
    v13 = *(a1[4] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (v9)
  {
    v15 = [v9 copy];
    v16 = *(a1[5] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  if (v10)
  {
    v18 = [v10 copy];
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

- (BOOL)_shouldFallbackToAuthKitForError:(id)error
{
  errorCopy = error;
  v5 = ISWeakLinkedStringConstantForString("LAErrorDomain", 0x1E);
  biometricAuthenticationContext = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  v7 = ISWeakLinkedStringConstantForString("MobileActivationErrorDomain", 0x25);
  code = [errorCopy code];
  domain = [errorCopy domain];
  if ([domain isEqualToString:v5])
  {
    LOBYTE(v11) = (~code & 0xFFFFFFFFFFFFFFFDLL) == 0 || code == -8;
  }

  else if ([domain isEqualToString:v7])
  {
    if (([(SSBiometricAuthenticationContext *)self->_context isExtendedAction]& 1) != 0)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = [(SSBiometricAuthenticationContext *)self->_context isPayment]^ 1;
    }
  }

  else if ([domain isEqualToString:*MEMORY[0x277D6A110]])
  {
    LOBYTE(v11) = 1;
    if (code != 4 && code != 151 && (code != 149 || ([biometricAuthenticationContext isExtendedAction] & 1) == 0))
    {
      userInfo = [errorCopy userInfo];
      v14 = [userInfo objectForKey:*MEMORY[0x277D6A100]];
      if (v14)
      {
        v11 = [biometricAuthenticationContext isIdentityMapInvalid] ^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end