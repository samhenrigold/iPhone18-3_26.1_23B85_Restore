@interface ISBiometricOptInOperation
- (BOOL)_performOptInDialogOperationWithError:(id *)error;
- (BOOL)_performPasscodeDialogOperationWithError:(id *)error;
- (BOOL)promptUser;
- (ISBiometricOptInOperation)init;
- (id)_newSourceByStartingTimeoutTimer;
- (id)resultBlock;
- (void)_loadURLBag;
- (void)_performOptInDialogMetricsWithResult:(BOOL)result error:(id)error;
- (void)_updateTouchIDSettingsForAccount:(id)account;
- (void)run;
- (void)setPromptUser:(BOOL)user;
- (void)setResultBlock:(id)block;
@end

@implementation ISBiometricOptInOperation

- (ISBiometricOptInOperation)init
{
  v6.receiver = self;
  v6.super_class = ISBiometricOptInOperation;
  v2 = [(ISOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.ISBiometricOptInOperation", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (BOOL)promptUser
{
  [(ISOperation *)self lock];
  promptUser = self->_promptUser;
  [(ISOperation *)self unlock];
  return promptUser;
}

- (id)resultBlock
{
  [(ISOperation *)self lock];
  v3 = [self->_resultBlock copy];
  [(ISOperation *)self unlock];
  v4 = MEMORY[0x277C8C270](v3);

  return v4;
}

- (void)setPromptUser:(BOOL)user
{
  userCopy = user;
  [(ISOperation *)self lock];
  if (self->_promptUser != userCopy)
  {
    self->_promptUser = userCopy;
  }

  [(ISOperation *)self unlock];
}

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(ISOperation *)self lock];
  if (self->_resultBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)run
{
  v29 = *MEMORY[0x277D85DE8];
  if (![(ISBiometricOptInOperation *)self promptUser])
  {
    v5 = 0;
    goto LABEL_16;
  }

  v26 = 0;
  v3 = [(ISBiometricOptInOperation *)self _performOptInDialogOperationWithError:&v26];
  v4 = v26;
  v5 = v4;
  if (v3)
  {
    v25 = v4;
    v6 = [(ISBiometricOptInOperation *)self _performPasscodeDialogOperationWithError:&v25];
    v7 = v25;

    v5 = v7;
    if (v6)
    {
LABEL_16:
      defaultStore = [MEMORY[0x277D69A20] defaultStore];
      activeAccount = [defaultStore activeAccount];

      if (activeAccount)
      {
        [(ISBiometricOptInOperation *)self _updateTouchIDSettingsForAccount:activeAccount];
        v16 = 1;
        goto LABEL_32;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v20 = objc_opt_class();
        v27 = 138543362;
        v28 = v20;
        v21 = v20;
        v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Biometric opt-in failed with no account", &v27, 12);

        if (!v22)
        {
          goto LABEL_30;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
        free(v22);
        SSFileLog();
      }

      goto LABEL_30;
    }
  }

  activeAccount = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!activeAccount)
  {
    activeAccount = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [activeAccount shouldLog];
  if ([activeAccount shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog2;
  }

  mEMORY[0x277D69B38] = [activeAccount OSLogObject];
  if (os_log_type_enabled(mEMORY[0x277D69B38], OS_LOG_TYPE_ERROR))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

  v12 = objc_opt_class();
  v27 = 138543362;
  v28 = v12;
  v13 = v12;
  v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38], 16, "%{public}@: Biometric opt-in failed with no permission", &v27, 12);

  if (v14)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_30:
  }

  v16 = 0;
LABEL_32:

  [(ISOperation *)self setError:v5];
  [(ISOperation *)self setSuccess:v16];
  resultBlock = [(ISBiometricOptInOperation *)self resultBlock];
  v24 = resultBlock;
  if (resultBlock)
  {
    (*(resultBlock + 16))(resultBlock, v16, v5);
  }
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

- (void)_performOptInDialogMetricsWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  v44 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  urlBag = self->_urlBag;
  if (urlBag || ([(ISBiometricOptInOperation *)self _loadURLBag], (urlBag = self->_urlBag) != 0))
  {
    mEMORY[0x277D69B38]3 = [(ISURLBag *)urlBag valueForKey:*MEMORY[0x277D6A4F8]];
    if ([mEMORY[0x277D69B38]3 count])
    {
      v9 = +[ISDevice sharedInstance];
      deviceBiometricStyle = [v9 deviceBiometricStyle];

      if (deviceBiometricStyle == 3)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"BIO_OPT_IN_FACE_EXPLANATION";
        goto LABEL_20;
      }

      if (deviceBiometricStyle == 2)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"BIO_OPT_IN_EXPLANATION";
LABEL_20:
        mEMORY[0x277D69B38]2 = [v11 localizedStringForKey:v13 value:&stru_2884BCFD0 table:@"Mesa"];

LABEL_34:
        v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v26 setObject:*MEMORY[0x277D6A470] forKey:*MEMORY[0x277D69DB0]];
        [v26 setObject:&unk_2884CA920 forKey:*MEMORY[0x277D69DC0]];
        if (resultCopy)
        {
          v27 = MEMORY[0x277CBEC38];
        }

        else
        {
          v27 = MEMORY[0x277CBEC28];
        }

        [v26 setObject:v27 forKey:{*MEMORY[0x277D69DD0], v39}];
        if (errorCopy)
        {
          [v26 setObject:errorCopy forKey:*MEMORY[0x277D69DB8]];
        }

        if (mEMORY[0x277D69B38]2)
        {
          [v26 setObject:mEMORY[0x277D69B38]2 forKey:*MEMORY[0x277D69DC8]];
        }

        topicName = [(ISBiometricOptInOperation *)self topicName];

        if (topicName)
        {
          topicName2 = [(ISBiometricOptInOperation *)self topicName];
          [v26 setObject:topicName2 forKey:*MEMORY[0x277D69DD8]];
        }

        userAgent = [(ISBiometricOptInOperation *)self userAgent];

        if (userAgent)
        {
          userAgent2 = [(ISBiometricOptInOperation *)self userAgent];
          [v26 setObject:userAgent2 forKey:*MEMORY[0x277D69DE0]];
        }

        v32 = [MEMORY[0x277D69A60] authorizationDialogEventForParameters:v26];
        v33 = [objc_alloc(MEMORY[0x277D69B70]) initWithGlobalConfiguration:mEMORY[0x277D69B38]3];
        v34 = objc_alloc_init(MEMORY[0x277D69B78]);
        [v34 setGlobalConfiguration:v33];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke;
        v41[3] = &unk_27A670F68;
        v41[4] = self;
        [v34 insertEvent:v32 withCompletionHandler:v41];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke_26;
        v40[3] = &unk_27A670F68;
        v40[4] = self;
        [v34 flushUnreportedEventsWithCompletionHandler:v40];

        goto LABEL_46;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v22) = shouldLog | 2;
      }

      else
      {
        LODWORD(v22) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v42 = 138543362;
        v43 = objc_opt_class();
        v24 = v43;
        v25 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Failed to determine biometric style for metrics event", &v42, 12);

        if (!v25)
        {
LABEL_33:

          mEMORY[0x277D69B38]2 = 0;
          goto LABEL_34;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:4];
        free(v25);
        v39 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_33;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (!v16)
    {
      goto LABEL_18;
    }

    v42 = 138543362;
    v43 = objc_opt_class();
    v18 = v43;
    v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: Metrics failed with no bag key", &v42, 12);

    if (v19)
    {
      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
LABEL_18:
    }
  }

  else
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      LODWORD(v36) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v36) = shouldLog3;
    }

    mEMORY[0x277D69B38]2 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(mEMORY[0x277D69B38]2, OS_LOG_TYPE_INFO))
    {
      v36 = v36;
    }

    else
    {
      v36 &= 2u;
    }

    if (v36)
    {
      v42 = 138543362;
      v43 = objc_opt_class();
      v37 = v43;
      v38 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38]2, 1, "%{public}@: Metrics failed with no bag", &v42, 12);

      if (!v38)
      {
        goto LABEL_47;
      }

      mEMORY[0x277D69B38]2 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:4];
      free(v38);
      SSFileLog();
    }
  }

LABEL_46:

LABEL_47:
}

void __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke(uint64_t a1, void *a2)
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

void __72__ISBiometricOptInOperation__performOptInDialogMetricsWithResult_error___block_invoke_26(uint64_t a1, void *a2)
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

- (BOOL)_performPasscodeDialogOperationWithError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__13;
  v34 = __Block_byref_object_dispose__13;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  if (SSIsDaemon())
  {
    v4 = +[ISDevice sharedInstance];
    deviceBiometricStyle = [v4 deviceBiometricStyle];

    if (deviceBiometricStyle == 2)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [mEMORY[0x277D69B38] localizedStringForKey:@"PASSCODE_TITLE" value:&stru_2884BCFD0 table:@"Mesa"];
      goto LABEL_6;
    }

    if (deviceBiometricStyle == 3)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [mEMORY[0x277D69B38] localizedStringForKey:@"PASSCODE_TITLE_FACE" value:&stru_2884BCFD0 table:@"Mesa"];
LABEL_6:
      v8 = v7;
LABEL_19:

      if (*(v27 + 24) == 1)
      {
        do
        {
          _newSourceByStartingTimeoutTimer = [(ISBiometricOptInOperation *)self _newSourceByStartingTimeoutTimer];
          v18 = [objc_alloc(NSClassFromString(&cfstr_Devicepasscode.isa)) initWithTitle:v8 message:0];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __70__ISBiometricOptInOperation__performPasscodeDialogOperationWithError___block_invoke;
          v25[3] = &unk_27A671428;
          v25[4] = &v36;
          v25[5] = &v26;
          v25[6] = &v30;
          [v18 setTokenBlock:v25];
          v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"PASSCODE_INCORRECT" value:&stru_2884BCFD0 table:@"Mesa"];

          [(ISOperation *)self runSubOperation:v18 returningError:0];
          dispatch_source_cancel(_newSourceByStartingTimeoutTimer);

          v8 = v20;
        }

        while ((v27[3] & 1) != 0);
      }

      else
      {
        v20 = v8;
      }

      goto LABEL_24;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      v40 = 138543362;
      v41 = v14;
      v15 = v14;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, v12, 16, "%{public}@: Failed to identify device biometric style for opt-in operation", &v40, 12);

      if (!v16)
      {
LABEL_18:
        v8 = &stru_2884BCFD0;
        goto LABEL_19;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
      free(v16);
      v23 = v12;
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_24:
  if (error)
  {
    *error = v31[5];
  }

  v21 = v37[3] == 1;
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  return v21;
}

uint64_t __70__ISBiometricOptInOperation__performPasscodeDialogOperationWithError___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a2 == 2;
  *(*(a1[6] + 8) + 40) = [a4 copy];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_performOptInDialogOperationWithError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v3 deviceBiometricStyle];

  if (deviceBiometricStyle == 3)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"BIO_OPT_IN_FACE_EXPLANATION";
    goto LABEL_5;
  }

  if (deviceBiometricStyle != 2)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
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
      v47 = 138543362;
      v48 = objc_opt_class();
      v13 = v48;
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Failed to determine biometric style for dialog", &v47, 12);

      if (!v14)
      {
LABEL_18:

        v8 = 0;
        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
      free(v14);
      v38 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_18;
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  v7 = @"BIO_OPT_IN_EXPLANATION";
LABEL_5:
  v8 = [v5 localizedStringForKey:v7 value:&stru_2884BCFD0 table:@"Mesa"];

LABEL_19:
  v39 = v8;
  v15 = [[ISDialog alloc] initWithTitle:v8 message:0];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"BIO_OPT_IN_NOT_NOW" value:&stru_2884BCFD0 table:@"Mesa"];
  v18 = [ISDialogButton buttonWithTitle:v17];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"BIO_OPT_IN_OK" value:&stru_2884BCFD0 table:@"Mesa"];
  v21 = [ISDialogButton buttonWithTitle:v20];

  v46[0] = v18;
  v46[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  [(ISDialog *)v15 setButtons:v22];

  [(ISDialog *)v15 setDefaultButtonIndex:1];
  v23 = objc_opt_new();
  selfCopy2 = self;
  _newSourceByStartingTimeoutTimer = [(ISBiometricOptInOperation *)self _newSourceByStartingTimeoutTimer];
  v26 = [ISDialogOperation operationWithDialog:v15];
  v45 = 0;
  v27 = [(ISOperation *)self runSubOperation:v26 returningError:&v45];
  v28 = v45;
  if (v27 && ([v26 selectedButton], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = v29;
    buttons = [(ISDialog *)v15 buttons];
    v32 = [buttons indexOfObjectIdenticalTo:v30];

    selfCopy2 = self;
    dispatch_source_cancel(_newSourceByStartingTimeoutTimer);
    if (v32 == 1)
    {
      v33 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_source_cancel(_newSourceByStartingTimeoutTimer);
  }

  [v23 setBiometricState:{1, v38}];
  v33 = 0;
LABEL_25:
  dispatchQueue = selfCopy2->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ISBiometricOptInOperation__performOptInDialogOperationWithError___block_invoke;
  block[3] = &unk_27A671450;
  block[4] = selfCopy2;
  v44 = v33;
  v35 = v28;
  v43 = v35;
  dispatch_async(dispatchQueue, block);
  if (error)
  {
    v36 = v35;
    *error = v35;
  }

  return v33;
}

- (void)_updateTouchIDSettingsForAccount:(id)account
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  accountCopy = account;
  v5 = [v3 stringWithFormat:@"%@", objc_opt_class()];
  uniqueIdentifier = [accountCopy uniqueIdentifier];

  v7 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:uniqueIdentifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__ISBiometricOptInOperation__updateTouchIDSettingsForAccount___block_invoke;
  v18[3] = &unk_27A671478;
  v8 = v5;
  v19 = v8;
  [(ISBiometricUpdateTouchIDSettingsOperation *)v7 setResultBlock:v18];
  v9 = +[ISOperationQueue mainQueue];
  [v9 addOperation:v7];

  v10 = objc_opt_new();
  [v10 setBiometricState:2];
  [v10 saveIdentityMapForAccountIdentifier:uniqueIdentifier];
  [v10 registerAccountIdentifier:uniqueIdentifier];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
  v20 = 138543618;
  v21 = v15;
  v22 = 2112;
  v23 = uniqueIdentifier;
  v16 = v15;
  v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%{public}@: Biometrics enabled and cached for DSID: %@", &v20, 22);

  if (v17)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_12:
  }
}

void __62__ISBiometricOptInOperation__updateTouchIDSettingsForAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  v7 = v6;
  if (a2)
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

      goto LABEL_26;
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v5;
    v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 16, "%{public}@: UpdateTouchIDSettings request failed with status: %{public}@, error: %{public}@", &v19, 32);

    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v14 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v15) = v14 | 2;
  }

  else
  {
    LODWORD(v15) = v14;
  }

  v16 = [v7 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v19 = 138543618;
  v20 = v17;
  v21 = 2114;
  v22 = v18;
  v13 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, v16, 0, "%{public}@: UpdateTouchIDSettings request completed with status: %{public}@", &v19, 22);

  if (v13)
  {
LABEL_23:
    v16 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_24:
  }

LABEL_26:
}

- (id)_newSourceByStartingTimeoutTimer
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);

  v5 = dispatch_time(0, 180000000000);
  dispatch_source_set_timer(v4, v5, 0, 0);
  v6 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __61__ISBiometricOptInOperation__newSourceByStartingTimeoutTimer__block_invoke;
  handler[3] = &unk_27A670818;
  v10 = v6;
  v7 = v6;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v4);

  return v4;
}

void __61__ISBiometricOptInOperation__newSourceByStartingTimeoutTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) object];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v8 = 138543362;
  v9 = objc_opt_class();
  v6 = v9;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, v5, 0, "%{public}@: Biometric opt-in timeout", &v8, 12);

  if (v7)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog();
LABEL_12:
  }

  [v1 cancel];
}

@end