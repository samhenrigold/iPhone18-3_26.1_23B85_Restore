@interface SFAuthenticateAccountsSession
+ (id)_myGameCenterAccount;
- (SFAuthenticateAccountsSession)init;
- (id)_availableAccountsToSignIn;
- (id)_trTargetedServices;
- (int)__validateAccountsWithAccountStore:(id)store;
- (int)_runFinish;
- (int)_runHomeKitSetup;
- (int)_runInfoExchange;
- (int)_runPairSetup;
- (int)_runPairVerify;
- (int)_runRepairCDP;
- (int)_runSFSessionStart;
- (int)_runTRAuthentication;
- (int)_runTRSessionStart;
- (int)_validateAccounts;
- (int)_validateiCloudAccountTerms;
- (void)__runFinishWithSFSession:(id)session;
- (void)_cleanup;
- (void)_handleShowTermsUI:(id)i responseHandler:(id)handler;
- (void)_presentiCloudTermsUIWithAccount:(id)account;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_runInfoExchangeRequest;
- (void)_runInfoExchangeResponse:(id)response error:(id)error;
- (void)activate;
- (void)dealloc;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
@end

@implementation SFAuthenticateAccountsSession

- (SFAuthenticateAccountsSession)init
{
  v8.receiver = self;
  v8.super_class = SFAuthenticateAccountsSession;
  v2 = [(SFAuthenticateAccountsSession *)&v8 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = defaultStore;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFAuthenticateAccountsSession *)v3 _cleanup];
  }

  else
  {
    [(SFAuthenticateAccountsSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFAuthenticateAccountsSession;
    [(SFAuthenticateAccountsSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  v23 = *MEMORY[0x1E69E9840];
  self->_targetedAccountTypes = 0;
  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_trOperations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        [v9 cancel];
        [v9 setCompletionBlock:0];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_trOperations removeAllObjects];
  trOperations = self->_trOperations;
  self->_trOperations = 0;

  trSession = self->_trSession;
  self->_trSession = 0;

  [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
  homeKitSetupOperation = self->_homeKitSetupOperation;
  self->_homeKitSetupOperation = 0;

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v15 = self->_progressHandler;
  }

  else
  {
    v15 = 0;
  }

  self->_progressHandler = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFAuthenticateAccountsSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __41__SFAuthenticateAccountsSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFAuthenticateAccountsSession <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __41__SFAuthenticateAccountsSession_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  *(*(v3 + 32) + 16) = mach_absolute_time();
  v9 = [(objc_class *)getHMHomeManagerConfigurationClass() defaultPrivateConfiguration];
  v4 = [objc_alloc(getHMHomeManagerClass()) initWithHomeMangerConfiguration:v9];
  v5 = *(v3 + 32);
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;

  v7 = *(v3 + 32);
  v8 = v7[27];
  if (v8)
  {
    (*(v8 + 16))(v7[27], 10, 0);
    v7 = *(v3 + 32);
  }

  [v7 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFAuthenticateAccountsSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__SFAuthenticateAccountsSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFAuthenticateAccountsSession <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __43__SFAuthenticateAccountsSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 9) = 1;
  v4 = *(v3 + 32);

  return [v4 _cleanup];
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFAuthenticateAccountsSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportError:(id)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (gLogCategory_SFAuthenticateAccountsSession <= 90 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsSession _reportError:errorCopy];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v16 = @"eo";
    v8 = errorCopy;
    if (!errorCopy)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A768];
      v14 = *MEMORY[0x1E696A578];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v11;
      v12 = @"?";
      if (v11)
      {
        v12 = v11;
      }

      v15 = v12;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v8 = [v9 errorWithDomain:v10 code:-6700 userInfo:v4];
    }

    v17[0] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    progressHandler[2](progressHandler, 30, v13);

    if (!errorCopy)
    {
    }
  }
}

- (int)_runSFSessionStart
{
  selfCopy = self;
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_sfSessionState;
          }

          sfSessionState = selfCopy->_sfSessionState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runSFSessionStart]", 30, "SFSession hasn't succeeded yet (%d)\n", sfSessionState);
      }
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFAuthenticateAccountsSession *)self _runSFSessionStart];
        }
      }

      selfCopy->_sfSessionState = 1;
      [(SFSession *)selfCopy->_sfSession invalidate];
      v5 = objc_alloc_init(SFSession);
      sfSession = selfCopy->_sfSession;
      selfCopy->_sfSession = v5;

      [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFSession *)selfCopy->_sfSession setLabel:@"AuthenticateAccounts"];
      [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
      [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.AuthenticateAccounts"];
      [(SFSession *)selfCopy->_sfSession setSessionFlags:4097];
      [(SFSession *)selfCopy->_sfSession setTouchRemoteEnabled:1];
      objc_initWeak(&location, selfCopy);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke;
      v16[3] = &unk_1E788B4A8;
      objc_copyWeak(&v17, &location);
      [(SFSession *)selfCopy->_sfSession setErrorHandler:v16];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_2;
      v14[3] = &unk_1E788B4D0;
      objc_copyWeak(&v15, &location);
      [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v14];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_3;
      v12[3] = &unk_1E788B4D0;
      objc_copyWeak(&v13, &location);
      [(SFSession *)selfCopy->_sfSession setInvalidationHandler:v12];
      if (selfCopy->_promptForPINHandler)
      {
        [(SFSession *)selfCopy->_sfSession setPromptForPINHandler:?];
      }

      v7 = selfCopy->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_4;
      v11[3] = &unk_1E788B4F8;
      v11[4] = selfCopy;
      [(SFSession *)v7 registerRequestID:@"_aaTerms" options:0 handler:v11];
      v8 = selfCopy->_sfSession;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_5;
      v10[3] = &unk_1E788B238;
      v10[4] = selfCopy;
      [(SFSession *)v8 activateWithCompletion:v10];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return selfCopy->_sfSessionState;
}

void __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_SFAuthenticateAccountsSession <= 90 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_cold_1(v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportError:v4];
}

void __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A768];
  v9 = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6762 userInfo:v7];
  [WeakRetained _reportError:v8];
}

void __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v12 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v8 = v7;
    v9 = @"?";
    if (v7)
    {
      v9 = v7;
    }

    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v5 errorWithDomain:v6 code:-6736 userInfo:v10];
    [v4 _reportError:v11];
  }
}

uint64_t __51__SFAuthenticateAccountsSession__runSFSessionStart__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 64) = 3;
    return [*(a1 + 32) _reportError:a2];
  }

  else
  {
    *(v2 + 64) = 4;
    return [*(a1 + 32) _run];
  }
}

- (int)_runPairVerify
{
  pairVerifyState = self->_pairVerifyState;
  if (pairVerifyState != 4)
  {
    if (pairVerifyState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairVerifyState;
          }

          pairVerifyState = self->_pairVerifyState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runPairVerify]", 30, "PairVerify hasn't succeeded yet (%d)\n", pairVerifyState);
      }
    }

    else
    {
      self->_pairVerifyState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__SFAuthenticateAccountsSession__runPairVerify__block_invoke;
      v7[3] = &unk_1E788B238;
      v7[4] = self;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v7];
    }
  }

  return self->_pairVerifyState;
}

void __47__SFAuthenticateAccountsSession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    if (gLogCategory_SFAuthenticateAccountsSession <= 30)
    {
      if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __47__SFAuthenticateAccountsSession__runPairVerify__block_invoke_cold_1(v3, v4, v5);
      }
    }

    v7 = *(a1 + 32);
    v6 = a1 + 32;
    *(v7 + 72) = 2;
    goto LABEL_11;
  }

  if (gLogCategory_SFAuthenticateAccountsSession <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __47__SFAuthenticateAccountsSession__runPairVerify__block_invoke_cold_2(v3, v4, v5);
    }
  }

  v8 = *(a1 + 32);
  v6 = a1 + 32;
  *(v8 + 68) = 1;
  *(*v6 + 72) = 4;
  v9 = *v6;
  v10 = *(*v6 + 216);
  if (v10)
  {
    (*(v10 + 16))(*(*v6 + 216), 70, 0);
LABEL_11:
    v9 = *v6;
  }

  [v9 _run];
}

- (int)_runPairSetup
{
  pairSetupState = self->_pairSetupState;
  if (pairSetupState != 4)
  {
    if (pairSetupState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairSetupState;
          }

          pairSetupState = self->_pairSetupState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runPairSetup]", 30, "PairSetup hasn't succeeded yet (%d)\n", pairSetupState);
      }
    }

    else
    {
      self->_pairSetupState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __46__SFAuthenticateAccountsSession__runPairSetup__block_invoke;
      v7[3] = &unk_1E788B238;
      v7[4] = self;
      [(SFSession *)sfSession pairSetupWithFlags:8 completion:v7];
    }
  }

  return self->_pairSetupState;
}

void __46__SFAuthenticateAccountsSession__runPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    *(v4 + 76) = 3;
    [*(a1 + 32) _reportError:v3];
  }

  else
  {
    *(v4 + 68) = 1;
    *(*(a1 + 32) + 76) = 4;
    v5 = *(a1 + 32);
    v6 = v5[27];
    if (v6)
    {
      (*(v6 + 16))(v5[27], 70, 0);
      v5 = *(a1 + 32);
    }

    [v5 _run];
  }
}

- (int)_runInfoExchange
{
  selfCopy = self;
  infoExchangeState = self->_infoExchangeState;
  if (infoExchangeState != 4 && infoExchangeState != 2)
  {
    if (infoExchangeState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_infoExchangeState;
          }

          infoExchangeState = selfCopy->_infoExchangeState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runInfoExchange]", 30, "InfoExchange not done yet (%d)\n", infoExchangeState);
      }
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFAuthenticateAccountsSession *)self _runInfoExchange];
        }
      }

      selfCopy->_infoExchangeState = 1;
      [(SFAuthenticateAccountsSession *)selfCopy _runInfoExchangeRequest];
      selfCopy->_trAuthenticationEnabled = 1;
      [(SFAuthenticateAccountsSession *)selfCopy _run];
    }
  }

  return selfCopy->_infoExchangeState;
}

- (void)_runInfoExchangeRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v7 = preferredLanguages;
  if (preferredLanguages && (preferredLanguages = [preferredLanguages count]) != 0)
  {
    firstObject = [v7 firstObject];
    [v3 setObject:firstObject forKeyedSubscript:@"lang"];

    [v3 setObject:v7 forKeyedSubscript:@"langs"];
  }

  else if (gLogCategory_SFAuthenticateAccountsSession <= 60)
  {
    if (gLogCategory_SFAuthenticateAccountsSession != -1 || (preferredLanguages = _LogCategory_Initialize(), preferredLanguages))
    {
      [(SFAuthenticateAccountsSession *)preferredLanguages _runInfoExchangeRequest];
    }
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    [v3 setObject:localeIdentifier forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_SFAuthenticateAccountsSession <= 60)
  {
    if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v11 = _LogCategory_Initialize(), v11))
    {
      [(SFAuthenticateAccountsSession *)v11 _runInfoExchangeRequest];
    }
  }

  v26 = 0;
  CFArrayGetTypeID();
  v14 = CFPrefs_CopyTypedValue();
  v15 = v14;
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"kbs"];
  }

  else if (gLogCategory_SFAuthenticateAccountsSession <= 60 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsSession _runInfoExchangeRequest];
  }

  _availableAccountsToSignIn = [(SFAuthenticateAccountsSession *)self _availableAccountsToSignIn];
  if ([_availableAccountsToSignIn count])
  {
    [v3 addEntriesFromDictionary:_availableAccountsToSignIn];
  }

  v17 = SFDeviceSetupHomeKitCurrentUserIdentifiers(self->_homeManager);
  if ([v17 count])
  {
    [v3 setObject:v17 forKeyedSubscript:@"hkcuis"];
  }

  v18 = SFDeviceSetupHomeKitRMVEnabledForAllHomes(self->_homeManager);
  v19 = [v18 count];
  if (v19)
  {
    v19 = [v3 setObject:v18 forKeyedSubscript:@"hkhrmve"];
  }

  sharedPreferences = [getVTPreferencesClass(v19) sharedPreferences];
  voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:voiceTriggerEnabled];
  [v3 setObject:v22 forKeyedSubscript:@"siriVP"];

  if (gLogCategory_SFAuthenticateAccountsSession <= 30 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    [(SFAuthenticateAccountsSession *)v3 _runInfoExchangeRequest];
  }

  sfSession = self->_sfSession;
  v24 = [v3 copy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__SFAuthenticateAccountsSession__runInfoExchangeRequest__block_invoke;
  v25[3] = &unk_1E788B548;
  v25[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_info" options:0 request:v24 responseHandler:v25];
}

- (id)_availableAccountsToSignIn
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v5 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
    [v3 setObject:aa_altDSID forKeyedSubscript:@"aaiCloudAltDSID"];
  }

  ams_activeiTunesAccount = [(ACAccountStore *)self->_accountStore ams_activeiTunesAccount];
  v8 = ams_activeiTunesAccount;
  if (ams_activeiTunesAccount)
  {
    aa_altDSID2 = [ams_activeiTunesAccount aa_altDSID];
    [v3 setObject:aa_altDSID2 forKeyedSubscript:@"aaiTunesAltDSID"];
  }

  _myGameCenterAccount = [objc_opt_class() _myGameCenterAccount];
  v11 = _myGameCenterAccount;
  if (_myGameCenterAccount)
  {
    aa_altDSID3 = [_myGameCenterAccount aa_altDSID];
    [v3 setObject:aa_altDSID3 forKeyedSubscript:@"aaGameCenterAltDSID"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)_runInfoExchangeResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  if (!responseCopy || errorCopy)
  {
    self->_infoExchangeState = 3;
    if (!errorCopy)
    {
      NSErrorWithOSStatusF(4294960596, "No response, no error?");
      goto LABEL_15;
    }

    [(SFAuthenticateAccountsSession *)self _reportError:errorCopy];
    goto LABEL_26;
  }

  if (gLogCategory_SFAuthenticateAccountsSession <= 30 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsSession _runInfoExchangeResponse:responseCopy error:?];
  }

  self->_peerFeatureFlags = CFDictionaryGetInt64();
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v10 = CFDictionaryGetInt64Ranged();
  if (!v10 && (Int64Ranged & 2) == 0)
  {
    self->_infoExchangeState = 3;
    NSErrorWithOSStatusF(4294960591, "No account types to authenticate.");
    v14 = LABEL_15:;
    [(SFAuthenticateAccountsSession *)self _reportError:v14];

    goto LABEL_26;
  }

  self->_targetedAccountTypes = v10;
  Int64 = CFDictionaryGetInt64();
  self->_problemFlags = Int64;
  if ((self->_peerFeatureFlags & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v12 = Int64;
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (v13)
  {
    self->_isSigningInNewiCloud = 0;
  }

  else
  {
    targetedAccountTypes = self->_targetedAccountTypes;
    self->_isSigningInNewiCloud = targetedAccountTypes & 1;
    if (targetedAccountTypes)
    {
LABEL_22:

LABEL_23:
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 800, 0);
      }

      self->_infoExchangeState = 4;
      [(SFAuthenticateAccountsSession *)self _run];
      goto LABEL_26;
    }
  }

  if ((v12 & 0x20000) == 0)
  {
    goto LABEL_22;
  }

  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];

  if (v13 && aa_altDSID && [v13 isEqual:aa_altDSID])
  {

    goto LABEL_22;
  }

  if (gLogCategory_SFAuthenticateAccountsSession <= 90 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runInfoExchangeResponse:error:]", 90, "InfoExchange asked to repair CDP but iCloud account don't match. {remoteiCloud=%@, localiCloud=%@}", v13, aa_altDSID);
  }

  self->_infoExchangeState = 3;
  v19 = NSErrorWithOSStatusF(301015, "Mismatched, or missing, iCloud account. CDP cannot be repaired.");
  [(SFAuthenticateAccountsSession *)self _reportError:v19];

LABEL_26:
}

- (int)_runTRSessionStart
{
  selfCopy = self;
  v23[1] = *MEMORY[0x1E69E9840];
  trSessionState = self->_trSessionState;
  if (trSessionState == 4)
  {
    return selfCopy->_trSessionState;
  }

  if (!trSessionState)
  {
    if (gLogCategory_SFAuthenticateAccountsSession <= 30)
    {
      if (gLogCategory_SFAuthenticateAccountsSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFAuthenticateAccountsSession *)self _runTRSessionStart];
      }
    }

    selfCopy->_trSessionState = 1;
    trSession = [(SFSession *)selfCopy->_sfSession trSession];
    trSession = selfCopy->_trSession;
    selfCopy->_trSession = trSession;

    if (selfCopy->_trSession)
    {
      v9 = objc_alloc_init(getTROperationQueueClass());
      trOperationQueue = selfCopy->_trOperationQueue;
      selfCopy->_trOperationQueue = v9;

      if (selfCopy->_trOperationQueue)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        trOperations = selfCopy->_trOperations;
        selfCopy->_trOperations = v11;

        selfCopy->_trSessionState = 4;
        return selfCopy->_trSessionState;
      }

      if (gLogCategory_SFAuthenticateAccountsSession > 90 || gLogCategory_SFAuthenticateAccountsSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v14 = "### Create TROperationQueue failed\n";
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession > 90 || gLogCategory_SFAuthenticateAccountsSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v14 = "### No TRSession on SFSession\n";
    }

    [(SFAuthenticateAccountsSession *)v14 _runTRSessionStart];
LABEL_22:
    selfCopy->_trSessionState = 3;
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A768];
    v22 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v18 = v17;
    v19 = @"?";
    if (v17)
    {
      v19 = v17;
    }

    v23[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v21 = [v15 errorWithDomain:v16 code:-6700 userInfo:v20];
    [(SFAuthenticateAccountsSession *)selfCopy _reportError:v21];

    return selfCopy->_trSessionState;
  }

  if (gLogCategory_SFAuthenticateAccountsSession <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return selfCopy->_trSessionState;
      }

      trSessionState = selfCopy->_trSessionState;
    }

    LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runTRSessionStart]", 30, "TRSession hasn't succeeded yet (%d)\n", trSessionState);
  }

  return selfCopy->_trSessionState;
}

- (int)_runTRAuthentication
{
  _trTargetedServices = [(SFAuthenticateAccountsSession *)self _trTargetedServices];
  v4 = _trTargetedServices;
  trAuthenticationState = self->_trAuthenticationState;
  if (!trAuthenticationState)
  {
    v7 = [_trTargetedServices count];
    if (!v7)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 40 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsSession _runTRAuthentication];
      }

      self->_trAuthenticationState = 2;
      goto LABEL_22;
    }

    trAuthenticationState = self->_trAuthenticationState;
    if (!trAuthenticationState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          [(SFAuthenticateAccountsSession *)v7 _runTRAuthentication];
        }
      }

      self->_trAuthenticationState = 1;
      v10 = [objc_alloc(getTRAuthenticationOperationClass()) initWithSession:self->_trSession];
      [v10 setShouldIgnoreAuthFailures:0];
      [(NSMutableArray *)self->_trOperations addObject:v10];
      [v10 setTargetedServices:v4];
      if (self->_presentingViewController)
      {
        [v10 setPresentingViewController:?];
      }

      objc_initWeak(&location, v10);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__SFAuthenticateAccountsSession__runTRAuthentication__block_invoke;
      v13[3] = &unk_1E788AF18;
      v13[4] = self;
      objc_copyWeak(&v14, &location);
      [v10 setCompletionBlock:v13];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v10];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);

      goto LABEL_22;
    }
  }

  v6 = trAuthenticationState == 2 || trAuthenticationState == 4;
  if (!v6 && gLogCategory_SFAuthenticateAccountsSession <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      trAuthenticationState = self->_trAuthenticationState;
    }

    LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runTRAuthentication]", 30, "TRAuthentication hasn't succeeded yet (%d)\n", trAuthenticationState);
  }

LABEL_22:
  v11 = self->_trAuthenticationState;

  return v11;
}

void __53__SFAuthenticateAccountsSession__runTRAuthentication__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 192);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__SFAuthenticateAccountsSession__runTRAuthentication__block_invoke_2;
  v3[3] = &unk_1E788AF18;
  v3[4] = v1;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

void __53__SFAuthenticateAccountsSession__runTRAuthentication__block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 128))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained result];
    v3 = v2;
    if (v2)
    {
      v4 = getTRAuthenticationOperationUnauthenticatedServicesKey(v2);
      v5 = [v3 objectForKeyedSubscript:v4];

      v6 = [v5 count];
      if (v6)
      {
        if (gLogCategory_SFAuthenticateAccountsSession <= 60 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
        {
          __53__SFAuthenticateAccountsSession__runTRAuthentication__block_invoke_2_cold_1(v5);
        }

        *(*(a1 + 32) + 156) = 3;
        v9 = [WeakRetained error];
        if (!v9)
        {
          getTRAuthenticationOperationErrorKey(0);
          CFErrorGetTypeID();
          v9 = CFDictionaryGetTypedValue();
          if (!v9)
          {
            v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-6736 userInfo:0];
          }
        }

        v10 = v9;
        [*(a1 + 32) _reportError:v9];
      }

      else
      {
        if (gLogCategory_SFAuthenticateAccountsSession <= 30)
        {
          if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v6 = _LogCategory_Initialize(), v6))
          {
            __53__SFAuthenticateAccountsSession__runTRAuthentication__block_invoke_2_cold_2(v6, v7, v8);
          }
        }

        *(*(a1 + 32) + 156) = 4;
        [*(a1 + 32) _run];
      }
    }

    else
    {
      v5 = [WeakRetained error];
      if (gLogCategory_SFAuthenticateAccountsSession <= 60 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
      {
        __53__SFAuthenticateAccountsSession__runTRAuthentication__block_invoke_2_cold_3(v5);
      }

      *(*(a1 + 32) + 156) = 3;
      [*(a1 + 32) _reportError:v5];
    }
  }
}

- (id)_trTargetedServices
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = v3;
  targetedAccountTypes = self->_targetedAccountTypes;
  if (targetedAccountTypes)
  {
    [v3 addObject:&unk_1F1D7CD30];
    targetedAccountTypes = self->_targetedAccountTypes;
    if ((targetedAccountTypes & 2) == 0)
    {
LABEL_3:
      if ((targetedAccountTypes & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((targetedAccountTypes & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:&unk_1F1D7CD48];
  if ((self->_targetedAccountTypes & 4) != 0)
  {
LABEL_4:
    [v4 addObject:&unk_1F1D7CD60];
  }

LABEL_5:
  v6 = [v4 copy];

  return v6;
}

- (int)_runRepairCDP
{
  selfCopy = self;
  cdpState = self->_cdpState;
  if (cdpState != 4)
  {
    if (cdpState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_cdpState;
          }

          cdpState = selfCopy->_cdpState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runRepairCDP]", 30, "Repair CDP hasn't succeeded yet (%d)\n", cdpState);
      }
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFAuthenticateAccountsSession *)self _runRepairCDP];
        }
      }

      selfCopy->_cdpState = 1;
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 236, 0);
      }

      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation invalidate];
      v6 = objc_alloc_init(SFDeviceOperationCDPSetup);
      cdpSetupOperation = selfCopy->_cdpSetupOperation;
      selfCopy->_cdpSetupOperation = v6;

      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setSfSession:selfCopy->_sfSession];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setIsRepair:!selfCopy->_isSigningInNewiCloud];
      if (selfCopy->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setPresentingViewController:?];
      }

      objc_initWeak(&location, selfCopy);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __46__SFAuthenticateAccountsSession__runRepairCDP__block_invoke;
      v9[3] = &unk_1E788D048;
      objc_copyWeak(&v10, &location);
      v9[4] = selfCopy;
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation activate];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  return selfCopy->_cdpState;
}

void __46__SFAuthenticateAccountsSession__runRepairCDP__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 20))
  {
    v7 = v8;
    if (v8)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 90)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          __46__SFAuthenticateAccountsSession__runRepairCDP__block_invoke_cold_1(v7, v4, v5);
        }
      }

      *(*(a1 + 32) + 168) = 3;
      [v6 _reportError:v8];
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          __46__SFAuthenticateAccountsSession__runRepairCDP__block_invoke_cold_2(v7, v4, v5);
        }
      }

      *(*(a1 + 32) + 168) = 4;
      [v6 _run];
    }
  }
}

- (int)_runHomeKitSetup
{
  selfCopy = self;
  homeKitSetupState = self->_homeKitSetupState;
  if (homeKitSetupState != 4)
  {
    if (homeKitSetupState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_homeKitSetupState;
          }

          homeKitSetupState = selfCopy->_homeKitSetupState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runHomeKitSetup]", 30, "HomeKitSetup hasn't succeeded yet (%d)\n", homeKitSetupState);
      }
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFAuthenticateAccountsSession *)self _runHomeKitSetup];
        }
      }

      selfCopy->_homeKitSetupState = 1;
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation invalidate];
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 234, 0);
      }

      v6 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      homeKitSetupOperation = selfCopy->_homeKitSetupOperation;
      selfCopy->_homeKitSetupOperation = v6;

      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setKeyExchangeOnly:1];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setUserInteractive:1];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setTrSession:selfCopy->_trSession];
      objc_initWeak(&location, selfCopy);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__SFAuthenticateAccountsSession__runHomeKitSetup__block_invoke;
      v9[3] = &unk_1E788B4A8;
      objc_copyWeak(&v10, &location);
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation activate];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  return selfCopy->_homeKitSetupState;
}

void __49__SFAuthenticateAccountsSession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = v8;
    if (v8)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
      {
        __49__SFAuthenticateAccountsSession__runHomeKitSetup__block_invoke_cold_1(v8);
      }

      v7 = 2;
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          __49__SFAuthenticateAccountsSession__runHomeKitSetup__block_invoke_cold_2(v6, v3, v4);
        }
      }

      v7 = 4;
    }

    WeakRetained[46] = v7;
    [WeakRetained _run];
  }
}

- (int)_runFinish
{
  selfCopy = self;
  finishState = self->_finishState;
  if (finishState != 4 && finishState != 2)
  {
    if (finishState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_finishState;
          }

          finishState = selfCopy->_finishState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _runFinish]", 30, "Finish hasn't succeeded yet (%d)\n", finishState);
      }
    }

    else
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFAuthenticateAccountsSession *)self _runFinish];
        }
      }

      selfCopy->_finishState = 1;
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setObject:&unk_1F1D7CD78 forKeyedSubscript:@"op"];
      if ((selfCopy->_problemFlags & 8) != 0)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInt:selfCopy->_homeKitSetupState == 4];
        [v6 setObject:v7 forKeyedSubscript:@"aaHKSetup"];
      }

      sfSession = selfCopy->_sfSession;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__SFAuthenticateAccountsSession__runFinish__block_invoke;
      v10[3] = &unk_1E788D070;
      v10[4] = selfCopy;
      [(SFSession *)sfSession sendRequestWithFlags:1 object:v6 responseHandler:v10];
      selfCopy->_finishState = 4;
    }
  }

  return selfCopy->_finishState;
}

void __43__SFAuthenticateAccountsSession__runFinish__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    goto LABEL_21;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (!Int64Ranged)
  {
    goto LABEL_22;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A768];
  v11 = Int64Ranged;
  v24 = *MEMORY[0x1E696A578];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v13 = v12;
  v14 = @"?";
  if (v12)
  {
    v14 = v12;
  }

  v25[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v6 = [v9 errorWithDomain:v10 code:v11 userInfo:v15];

  if (v6)
  {
LABEL_21:
    if (gLogCategory_SFAuthenticateAccountsSession <= 90 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFAuthenticateAccountsSession__runFinish__block_invoke_cold_1(v6);
    }

    *(*(a1 + 32) + 188) = 3;
    [*(a1 + 32) _reportError:v6];
  }

  else
  {
LABEL_22:
    if (gLogCategory_SFAuthenticateAccountsSession <= 30 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFAuthenticateAccountsSession__runFinish__block_invoke_cold_2();
    }

    v16 = objc_alloc_init(SFClient);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __43__SFAuthenticateAccountsSession__runFinish__block_invoke_2;
    v22 = &unk_1E788B238;
    v6 = v16;
    v23 = v6;
    [(SFClient *)v6 reenableProxCardType:32 completion:&v19];
    v17 = *(a1 + 32);
    v18 = v17[27];
    if (v18)
    {
      (*(v18 + 16))(v17[27], 96, 0);
      v17 = *(a1 + 32);
    }

    [v17 _cleanup];
  }
}

void __43__SFAuthenticateAccountsSession__runFinish__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFAuthenticateAccountsSession <= 30 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    __43__SFAuthenticateAccountsSession__runFinish__block_invoke_2_cold_1(v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)__runFinishWithSFSession:(id)session
{
  objc_storeStrong(&self->_sfSession, session);

  [(SFAuthenticateAccountsSession *)self _runFinish];
}

- (int)_validateAccounts
{
  accountsState = self->_accountsState;
  if (accountsState != 4 && accountsState != 2)
  {
    if (accountsState)
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 30)
      {
        if (gLogCategory_SFAuthenticateAccountsSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_accountsState;
          }

          accountsState = self->_accountsState;
        }

        LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _validateAccounts]", 30, "Account validation hasn't succeeded yet (%d)\n", accountsState);
      }
    }

    else
    {
      _availableAccountsToSignIn = [(SFAuthenticateAccountsSession *)self _availableAccountsToSignIn];
      v6 = [_availableAccountsToSignIn count];

      if (v6)
      {
        self->_accountsState = 4;
      }

      else
      {
        self->_accountsState = 3;
        v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UserErrorDomain" code:301005 userInfo:0];
        [(SFAuthenticateAccountsSession *)self _reportError:v7];
      }
    }
  }

  return self->_accountsState;
}

- (int)__validateAccountsWithAccountStore:(id)store
{
  objc_storeStrong(&self->_accountStore, store);

  return [(SFAuthenticateAccountsSession *)self _validateAccounts];
}

- (void)_handleShowTermsUI:(id)i responseHandler:(id)handler
{
  v5 = (*(handler + 2))(handler, 0, 0, MEMORY[0x1E695E0F8]);
  if (gLogCategory_SFAuthenticateAccountsSession <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsSession != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(SFAuthenticateAccountsSession *)v5 _handleShowTermsUI:v6 responseHandler:v7];
    }
  }

  self->_trSessionState = 0;
  self->_trAuthenticationState = 0;
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  [(SFAuthenticateAccountsSession *)self _presentiCloudTermsUIWithAccount:aa_primaryAppleAccount];
}

- (int)_validateiCloudAccountTerms
{
  iCloudTermsState = self->_iCloudTermsState;
  if (iCloudTermsState <= 2)
  {
    if (iCloudTermsState)
    {
      if (iCloudTermsState == 2)
      {
        return self->_iCloudTermsState;
      }

      goto LABEL_7;
    }

    aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
    if ([aa_primaryAppleAccount aa_needsToVerifyTerms])
    {
      if (gLogCategory_SFAuthenticateAccountsSession <= 50 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsSession _validateiCloudAccountTerms];
      }

      [(SFAuthenticateAccountsSession *)self _presentiCloudTermsUIWithAccount:aa_primaryAppleAccount];
    }

    else
    {
      self->_iCloudTermsState = 4;
    }

LABEL_17:

    return self->_iCloudTermsState;
  }

  if (iCloudTermsState == 3)
  {
    aa_primaryAppleAccount = [MEMORY[0x1E696ABC0] errorWithDomain:@"UserErrorDomain" code:301025 userInfo:0];
    [(SFAuthenticateAccountsSession *)self _reportError:aa_primaryAppleAccount];
    goto LABEL_17;
  }

  if (iCloudTermsState == 4)
  {
    return self->_iCloudTermsState;
  }

LABEL_7:
  if (gLogCategory_SFAuthenticateAccountsSession <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_iCloudTermsState;
      }

      iCloudTermsState = self->_iCloudTermsState;
    }

    LogPrintF(&gLogCategory_SFAuthenticateAccountsSession, "[SFAuthenticateAccountsSession _validateiCloudAccountTerms]", 30, "iCloud Terms of Service hasn't succeeded yet (%d)\n", iCloudTermsState);
  }

  return self->_iCloudTermsState;
}

- (void)_presentiCloudTermsUIWithAccount:(id)account
{
  v4 = getAAUIGenericTermsRemoteUIClass;
  accountCopy = account;
  v6 = [objc_alloc(v4()) initWithAccount:accountCopy inStore:self->_accountStore];

  [v6 setDelegate:self];
  [v6 presentFromViewController:self->_presentingViewController modal:1];
  termsRemoteUI = self->_termsRemoteUI;
  self->_termsRemoteUI = v6;

  self->_iCloudTermsState = 1;
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  iCopy = i;
  if (gLogCategory_SFAuthenticateAccountsSession <= 50 && (gLogCategory_SFAuthenticateAccountsSession != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsSession genericTermsRemoteUI:successCopy didFinishWithSuccess:?];
  }

  termsRemoteUI = self->_termsRemoteUI;
  self->_termsRemoteUI = 0;

  if (successCopy)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  self->_iCloudTermsState = v8;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SFAuthenticateAccountsSession_genericTermsRemoteUI_didFinishWithSuccess___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

+ (id)_myGameCenterAccount
{
  v12[1] = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v3 = [defaultStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959860]];
  v4 = [defaultStore accountsWithAccountType:v3];
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x1E696AEB0];
    v6 = NSStringFromSelector(sel_creationDate);
    v7 = [v5 sortDescriptorWithKey:v6 ascending:0];

    v12[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [v4 sortedArrayUsingDescriptors:v8];

    v4 = v9;
  }

  firstObject = [v4 firstObject];

  return firstObject;
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _validateAccounts = [(SFAuthenticateAccountsSession *)self _validateAccounts];
    if (_validateAccounts == 4 || _validateAccounts == 2)
    {
      _validateiCloudAccountTerms = [(SFAuthenticateAccountsSession *)self _validateiCloudAccountTerms];
      if (_validateiCloudAccountTerms == 4 || _validateiCloudAccountTerms == 2)
      {
        _runSFSessionStart = [(SFAuthenticateAccountsSession *)self _runSFSessionStart];
        if (_runSFSessionStart == 4 || _runSFSessionStart == 2)
        {
          _runPairVerify = [(SFAuthenticateAccountsSession *)self _runPairVerify];
          if (_runPairVerify == 4 || _runPairVerify == 2)
          {
            if (self->_sessionSecured || ((v11 = [(SFAuthenticateAccountsSession *)self _runPairSetup], v11 != 4) ? (v12 = v11 == 2) : (v12 = 1), v12))
            {
              _runInfoExchange = [(SFAuthenticateAccountsSession *)self _runInfoExchange];
              if (_runInfoExchange == 4 || _runInfoExchange == 2)
              {
                _runTRSessionStart = [(SFAuthenticateAccountsSession *)self _runTRSessionStart];
                if (_runTRSessionStart == 4 || _runTRSessionStart == 2)
                {
                  if (!self->_trAuthenticationEnabled || ((v17 = [(SFAuthenticateAccountsSession *)self _runTRAuthentication], v17 != 4) ? (v18 = v17 == 2) : (v18 = 1), v18))
                  {
                    if ((self->_problemFlags & 0x20000) == 0 && !self->_isSigningInNewiCloud || ((v19 = [(SFAuthenticateAccountsSession *)self _runRepairCDP], v19 != 4) ? (v20 = v19 == 2) : (v20 = 1), v20))
                    {
                      if ((self->_problemFlags & 8) == 0 || ((v21 = [(SFAuthenticateAccountsSession *)self _runHomeKitSetup], v21 != 4) ? (v22 = v21 == 2) : (v22 = 1), v22))
                      {

                        [(SFAuthenticateAccountsSession *)self _runFinish];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end