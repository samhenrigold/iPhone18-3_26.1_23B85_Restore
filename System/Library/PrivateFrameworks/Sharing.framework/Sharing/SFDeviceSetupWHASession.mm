@interface SFDeviceSetupWHASession
- (BOOL)_verifyiCloudMatch:(unint64_t)match error:(id *)error;
- (SFDeviceSetupWHASession)init;
- (int)_runCDPSetup;
- (int)_runFinish;
- (int)_runHomeKitSetup;
- (int)_runInfoExchange;
- (int)_runPairSetup;
- (int)_runPairVerify;
- (int)_runSFSessionStart;
- (int)_runTRAuthentication;
- (int)_runTRSessionStart;
- (int)_runTRSetupConfiguration;
- (void)_cleanup;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_runInfoExchangeRequest;
- (void)_runInfoExchangeResponse:(id)response error:(id)error;
- (void)activate;
- (void)dealloc;
- (void)homeKitSelectHome:(id)home;
- (void)homeKitSelectRoom:(id)room;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
@end

@implementation SFDeviceSetupWHASession

- (SFDeviceSetupWHASession)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceSetupWHASession;
  v2 = [(SFDeviceSetupWHASession *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFDeviceSetupWHASession *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupWHASession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupWHASession;
    [(SFDeviceSetupWHASession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  v26 = *MEMORY[0x1E69E9840];
  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_trOperations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        [v9 cancel];
        [v9 setCompletionBlock:0];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_trOperations removeAllObjects];
  trOperations = self->_trOperations;
  self->_trOperations = 0;

  trSession = self->_trSession;
  self->_trSession = 0;

  [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
  cdpSetupOperation = self->_cdpSetupOperation;
  self->_cdpSetupOperation = 0;

  [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup invalidate];
  homeKitSetup = self->_homeKitSetup;
  self->_homeKitSetup = 0;

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v16 = self->_progressHandler;
  }

  else
  {
    v16 = 0;
  }

  self->_progressHandler = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  promptForRoomHandler = self->_promptForRoomHandler;
  self->_promptForRoomHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupWHASession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupWHASession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupWHASession <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHASession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __35__SFDeviceSetupWHASession_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  *(*(v3 + 32) + 120) = CFPrefs_GetInt64() != 0;
  *(*(v3 + 32) + 164) = CFPrefs_GetInt64() != 0;
  v4 = *(v3 + 32);
  v5 = v4[25];
  if (v5)
  {
    (*(v5 + 16))(v4[25], 10, 0);
    v4 = *(v3 + 32);
  }

  return [v4 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupWHASession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupWHASession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFDeviceSetupWHASession <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHASession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFDeviceSetupWHASession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 9) = 1;
  v4 = *(v3 + 32);

  return [v4 _cleanup];
}

- (void)homeKitSelectHome:(id)home
{
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupWHASession_homeKitSelectHome___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)homeKitSelectRoom:(id)room
{
  roomCopy = room;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupWHASession_homeKitSelectRoom___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = roomCopy;
  v6 = roomCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SFDeviceSetupWHASession_pairSetupTryPIN___block_invoke;
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
  if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHASession _reportError:errorCopy];
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
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_sfSessionState;
          }

          sfSessionState = selfCopy->_sfSessionState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runSFSessionStart]", 30, "SFSession hasn't succeeded yet (%d)\n", sfSessionState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupWHASession *)self _runSFSessionStart];
        }
      }

      selfCopy->_sfSessionState = 1;
      [(SFSession *)selfCopy->_sfSession invalidate];
      v5 = objc_alloc_init(SFSession);
      sfSession = selfCopy->_sfSession;
      selfCopy->_sfSession = v5;

      [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFSession *)selfCopy->_sfSession setLabel:@"WHASetup"];
      [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
      [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.WHASetup"];
      [(SFSession *)selfCopy->_sfSession setSessionFlags:1];
      [(SFSession *)selfCopy->_sfSession setTouchRemoteEnabled:1];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke;
      v12[3] = &unk_1E788B238;
      v12[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setErrorHandler:v12];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_2;
      v11[3] = &unk_1E788B198;
      v11[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v11];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_3;
      v10[3] = &unk_1E788B198;
      v10[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInvalidationHandler:v10];
      if (selfCopy->_promptForPINHandler)
      {
        [(SFSession *)selfCopy->_sfSession setPromptForPINHandler:?];
      }

      v7 = selfCopy->_sfSession;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_4;
      v9[3] = &unk_1E788B238;
      v9[4] = selfCopy;
      [(SFSession *)v7 activateWithCompletion:v9];
    }
  }

  return selfCopy->_sfSessionState;
}

void __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFDeviceSetupWHASession <= 60)
  {
    if (gLogCategory_SFDeviceSetupWHASession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
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
  [v1 _reportError:v8];
}

void __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((v1[9] & 1) == 0)
  {
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
    v8 = [v2 errorWithDomain:v3 code:-6736 userInfo:v7];
    [v1 _reportError:v8];
  }
}

uint64_t __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 24) = 3;
    return [*(a1 + 32) _reportError:a2];
  }

  else
  {
    *(v2 + 24) = 4;
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
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairVerifyState;
          }

          pairVerifyState = self->_pairVerifyState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runPairVerify]", 30, "PairVerify hasn't succeeded yet (%d)\n", pairVerifyState);
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
      v7[2] = __41__SFDeviceSetupWHASession__runPairVerify__block_invoke;
      v7[3] = &unk_1E788B238;
      v7[4] = self;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v7];
    }
  }

  return self->_pairVerifyState;
}

void __41__SFDeviceSetupWHASession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30)
    {
      if (gLogCategory_SFDeviceSetupWHASession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __41__SFDeviceSetupWHASession__runPairVerify__block_invoke_cold_1(v3, v4, v5);
      }
    }

    v7 = *(a1 + 32);
    v6 = a1 + 32;
    *(v7 + 32) = 2;
    goto LABEL_11;
  }

  if (gLogCategory_SFDeviceSetupWHASession <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHASession != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __41__SFDeviceSetupWHASession__runPairVerify__block_invoke_cold_2(v3, v4, v5);
    }
  }

  v8 = *(a1 + 32);
  v6 = a1 + 32;
  *(v8 + 28) = 1;
  *(*v6 + 32) = 4;
  v9 = *v6;
  v10 = *(*v6 + 200);
  if (v10)
  {
    (*(v10 + 16))(*(*v6 + 200), 70, 0);
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
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairSetupState;
          }

          pairSetupState = self->_pairSetupState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runPairSetup]", 30, "PairSetup hasn't succeeded yet (%d)\n", pairSetupState);
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
      v7[2] = __40__SFDeviceSetupWHASession__runPairSetup__block_invoke;
      v7[3] = &unk_1E788B238;
      v7[4] = self;
      [(SFSession *)sfSession pairSetupWithFlags:8 completion:v7];
    }
  }

  return self->_pairSetupState;
}

void __40__SFDeviceSetupWHASession__runPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    *(v4 + 36) = 3;
    [*(a1 + 32) _reportError:v3];
  }

  else
  {
    *(v4 + 28) = 1;
    *(*(a1 + 32) + 36) = 4;
    v5 = *(a1 + 32);
    v6 = v5[25];
    if (v6)
    {
      (*(v6 + 16))(v5[25], 70, 0);
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
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_infoExchangeState;
          }

          infoExchangeState = selfCopy->_infoExchangeState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runInfoExchange]", 30, "InfoExchange not done yet (%d)\n", infoExchangeState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupWHASession *)self _runInfoExchange];
        }
      }

      selfCopy->_infoExchangeState = 1;
      [(SFDeviceSetupWHASession *)selfCopy _runInfoExchangeRequest];
    }
  }

  return selfCopy->_infoExchangeState;
}

- (void)_runInfoExchangeRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupWHASession *)v3 _runInfoExchangeRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SFDeviceSetupWHASession__runInfoExchangeRequest__block_invoke;
  v5[3] = &unk_1E788B548;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_info" options:0 request:v3 responseHandler:v5];
}

- (void)_runInfoExchangeResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  v12 = 0;
  if (responseCopy && !errorCopy)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupWHASession _runInfoExchangeResponse:responseCopy error:?];
    }

    v11 = 0;
    v9 = [(SFDeviceSetupWHASession *)self _verifyiCloudMatch:CFDictionaryGetInt64() error:&v11];
    v10 = v11;
    if (v9)
    {
      self->_peerFeatureFlags = CFDictionaryGetInt64();
      self->_peerProblemsFlags = CFDictionaryGetInt64();
      self->_infoExchangeState = 4;
      [(SFDeviceSetupWHASession *)self _run];
LABEL_13:

      goto LABEL_14;
    }

    self->_infoExchangeState = 3;
LABEL_12:
    [(SFDeviceSetupWHASession *)self _reportError:v10];
    goto LABEL_13;
  }

  self->_infoExchangeState = 3;
  if (!errorCopy)
  {
    v10 = NSErrorWithOSStatusF(4294960596, "No response, no error?");
    goto LABEL_12;
  }

  [(SFDeviceSetupWHASession *)self _reportError:errorCopy];
LABEL_14:
}

- (int)_runTRSessionStart
{
  selfCopy = self;
  v21[1] = *MEMORY[0x1E69E9840];
  trSessionState = self->_trSessionState;
  if (trSessionState == 4)
  {
    return selfCopy->_trSessionState;
  }

  if (!trSessionState)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30)
    {
      if (gLogCategory_SFDeviceSetupWHASession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceSetupWHASession *)self _runTRSessionStart];
      }
    }

    selfCopy->_trSessionState = 1;
    trSession = [(SFSession *)selfCopy->_sfSession trSession];
    trSession = selfCopy->_trSession;
    selfCopy->_trSession = trSession;

    if (selfCopy->_trSession)
    {
      v7 = objc_alloc_init(getTROperationQueueClass_3());
      trOperationQueue = selfCopy->_trOperationQueue;
      selfCopy->_trOperationQueue = v7;

      if (selfCopy->_trOperationQueue)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        trOperations = selfCopy->_trOperations;
        selfCopy->_trOperations = v9;

        selfCopy->_trSessionState = 4;
        return selfCopy->_trSessionState;
      }

      if (gLogCategory_SFDeviceSetupWHASession > 90 || gLogCategory_SFDeviceSetupWHASession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v12 = "### Create TROperationQueue failed\n";
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession > 90 || gLogCategory_SFDeviceSetupWHASession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v12 = "### No TRSession on SFSession\n";
    }

    [(SFDeviceSetupWHASession *)v12 _runTRSessionStart];
LABEL_22:
    selfCopy->_trSessionState = 3;
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A768];
    v20 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v16 = v15;
    v17 = @"?";
    if (v15)
    {
      v17 = v15;
    }

    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v19 = [v13 errorWithDomain:v14 code:-6700 userInfo:v18];
    [(SFDeviceSetupWHASession *)selfCopy _reportError:v19];

    return selfCopy->_trSessionState;
  }

  if (gLogCategory_SFDeviceSetupWHASession <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHASession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return selfCopy->_trSessionState;
      }

      trSessionState = selfCopy->_trSessionState;
    }

    LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runTRSessionStart]", 30, "TRSession hasn't succeeded yet (%d)\n", trSessionState);
  }

  return selfCopy->_trSessionState;
}

- (int)_runTRSetupConfiguration
{
  selfCopy = self;
  trSetupConfigurationState = self->_trSetupConfigurationState;
  if (trSetupConfigurationState != 4)
  {
    if (trSetupConfigurationState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trSetupConfigurationState;
          }

          trSetupConfigurationState = selfCopy->_trSetupConfigurationState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runTRSetupConfiguration]", 30, "TRSetupConfiguration hasn't succeeded yet (%d)\n", trSetupConfigurationState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupWHASession *)self _runTRSetupConfiguration];
        }
      }

      selfCopy->_trSetupConfigurationState = 1;
      v5 = [objc_alloc(getTRSetupConfigurationOperationClass_0()) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v5];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke;
      v8[3] = &unk_1E788A658;
      v8[4] = selfCopy;
      v9 = v5;
      v6 = v5;
      [v6 setCompletionBlock:v8];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v6];
    }
  }

  return selfCopy->_trSetupConfigurationState;
}

void __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 176);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 72))
  {
    v3 = [*(a1 + 40) result];
    v7 = v3;
    if (v3)
    {
      getTRSetupConfigurationOperationUnauthenticatedServicesKey_0(v3);
      CFSetGetTypeID();
      v4 = CFDictionaryGetTypedValue();
      v5 = *(*v1 + 13);
      *(*v1 + 13) = v4;

      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 25) = 4;
      [*v1 _run];
    }

    else
    {
      v6 = [*(a1 + 40) error];
      if (gLogCategory_SFDeviceSetupWHASession <= 60 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2_cold_2(v6);
      }

      *(*v1 + 25) = 3;
      [*v1 _reportError:v6];
    }
  }
}

- (int)_runTRAuthentication
{
  selfCopy = self;
  trAuthenticationState = self->_trAuthenticationState;
  if (trAuthenticationState != 4)
  {
    if (trAuthenticationState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trAuthenticationState;
          }

          trAuthenticationState = selfCopy->_trAuthenticationState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runTRAuthentication]", 30, "TRAuthentication hasn't succeeded yet (%d)\n", trAuthenticationState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupWHASession *)self _runTRAuthentication];
        }
      }

      selfCopy->_trAuthenticationState = 1;
      v5 = [objc_alloc(getTRAuthenticationOperationClass_2()) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v5];
      [v5 setTargetedServices:selfCopy->_trUnauthServices];
      if (selfCopy->_presentingViewController)
      {
        [v5 setPresentingViewController:?];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke;
      v8[3] = &unk_1E788A658;
      v8[4] = selfCopy;
      v9 = v5;
      v6 = v5;
      [v6 setCompletionBlock:v8];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v6];
    }
  }

  return selfCopy->_trAuthenticationState;
}

void __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 176);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    v2 = [*(a1 + 40) result];
    v6 = v2;
    if (v2)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession != -1 || (v2 = _LogCategory_Initialize(), v2))
        {
          __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2_cold_1(v2, v3, v4);
        }
      }

      *(*(a1 + 32) + 116) = 4;
      [*(a1 + 32) _run];
    }

    else
    {
      v5 = [*(a1 + 40) error];
      if (gLogCategory_SFDeviceSetupWHASession <= 60 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2_cold_2(v5);
      }

      *(*(a1 + 32) + 116) = 3;
      [*(a1 + 32) _reportError:v5];
    }
  }
}

- (int)_runCDPSetup
{
  selfCopy = self;
  cdpState = self->_cdpState;
  if (cdpState != 4)
  {
    if (cdpState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_cdpState;
          }

          cdpState = selfCopy->_cdpState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runCDPSetup]", 30, "CDPSetup hasn't succeeded yet (%d)\n", cdpState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupWHASession *)self _runCDPSetup];
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
      if (selfCopy->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setPresentingViewController:?];
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__SFDeviceSetupWHASession__runCDPSetup__block_invoke;
      v9[3] = &unk_1E788B238;
      v9[4] = selfCopy;
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation activate];
    }
  }

  return selfCopy->_cdpState;
}

void __39__SFDeviceSetupWHASession__runCDPSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v9 = v11;
  v12 = *(v11 + 128);
  if (v12)
  {
    v17 = v3;
    if (v3)
    {
      *(v9 + 144) = 3;
      v13 = *v10;
      v14 = SFNestedErrorF(v3, 4294960596, "CDPSetup failed", v4, v5, v6, v7, v8, v16);
      [v13 _reportError:v14];
    }

    else
    {
      [v12 metricSeconds];
      *(*v10 + 17) = v15;
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceSetupWHASession__runCDPSetup__block_invoke_cold_1(v10);
      }

      *(*v10 + 36) = 4;
      [*v10 _run];
    }

    v3 = v17;
  }
}

- (int)_runHomeKitSetup
{
  selfCopy = self;
  homeKitState = self->_homeKitState;
  if (homeKitState != 4)
  {
    if (homeKitState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_homeKitState;
          }

          homeKitState = selfCopy->_homeKitState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runHomeKitSetup]", 30, "HomeKitSetup hasn't succeeded yet (%d)\n", homeKitState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupWHASession *)self _runHomeKitSetup];
        }
      }

      selfCopy->_homeKitState = 1;
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup invalidate];
      v5 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      homeKitSetup = selfCopy->_homeKitSetup;
      selfCopy->_homeKitSetup = v5;

      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup setUserInteractive:1];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup setTrSession:selfCopy->_trSession];
      if (selfCopy->_homeKitDoFullSetup)
      {
        if (selfCopy->_promptForHomeHandler)
        {
          [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup setPromptForHomeHandler:?];
        }

        if (selfCopy->_promptForRoomHandler)
        {
          [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup setPromptForRoomHandler:?];
        }
      }

      else
      {
        [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup setKeyExchangeOnly:1];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__SFDeviceSetupWHASession__runHomeKitSetup__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = selfCopy;
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup setCompletionHandler:v8];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetup activate];
    }
  }

  return selfCopy->_homeKitState;
}

void __43__SFDeviceSetupWHASession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    v11 = v3;
    if (v3)
    {
      if ((*(v4 + 49) & 2) == 0)
      {
        *(v4 + 160) = 3;
        [*(a1 + 32) _reportError:v3];
LABEL_16:
        v3 = v11;
        goto LABEL_17;
      }

      if (gLogCategory_SFDeviceSetupWHASession > 90)
      {
        goto LABEL_14;
      }

      if (gLogCategory_SFDeviceSetupWHASession == -1)
      {
        v10 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v10)
        {
          goto LABEL_14;
        }

        v5 = *(v4 + 152);
      }

      [v5 metricNonUserSeconds];
      LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runHomeKitSetup]_block_invoke", 90, "### HomeKitSetup failure skipped: %f secs, %{error}\n", v7, v11);
      v4 = *(a1 + 32);
LABEL_14:
      v9 = 2;
      goto LABEL_15;
    }

    if (gLogCategory_SFDeviceSetupWHASession <= 30)
    {
      if (gLogCategory_SFDeviceSetupWHASession == -1)
      {
        v8 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v8)
        {
          goto LABEL_12;
        }

        v5 = *(v4 + 152);
      }

      [v5 metricNonUserSeconds];
      LogPrintF(&gLogCategory_SFDeviceSetupWHASession, "[SFDeviceSetupWHASession _runHomeKitSetup]_block_invoke", 30, "HomeKitSetup succeeded (%f secs)\n", v6);
      v4 = *(a1 + 32);
    }

LABEL_12:
    v9 = 4;
LABEL_15:
    *(v4 + 160) = v9;
    [*(a1 + 32) _run];
    goto LABEL_16;
  }

LABEL_17:
}

- (int)_runFinish
{
  finishState = self->_finishState;
  if (!finishState)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30)
    {
      if (gLogCategory_SFDeviceSetupWHASession != -1 || (finishState = _LogCategory_Initialize(), finishState))
      {
        [(SFDeviceSetupWHASession *)finishState _runFinish];
      }
    }

    self->_finishState = 1;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:&unk_1F1D7D048 forKeyedSubscript:@"op"];
    sfSession = self->_sfSession;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__SFDeviceSetupWHASession__runFinish__block_invoke;
    v8[3] = &unk_1E788D070;
    v8[4] = self;
    [(SFSession *)sfSession sendRequestWithFlags:1 object:v5 responseHandler:v8];
    self->_finishState = 4;

    LODWORD(finishState) = self->_finishState;
  }

  return finishState;
}

void __37__SFDeviceSetupWHASession__runFinish__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    goto LABEL_19;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (!Int64Ranged)
  {
    goto LABEL_20;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A768];
  v11 = Int64Ranged;
  v16 = *MEMORY[0x1E696A578];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v13 = v12;
  v14 = @"?";
  if (v12)
  {
    v14 = v12;
  }

  v17[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v6 = [v9 errorWithDomain:v10 code:v11 userInfo:v15];

  if (v6)
  {
LABEL_19:
    if (gLogCategory_SFDeviceSetupWHASession <= 50 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      __37__SFDeviceSetupWHASession__runFinish__block_invoke_cold_1(v6);
    }

    *(*(a1 + 32) + 168) = 3;
    [*(a1 + 32) _reportError:v6];
  }

  else
  {
LABEL_20:
    if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      __37__SFDeviceSetupWHASession__runFinish__block_invoke_cold_2();
    }

    [*(a1 + 32) _cleanup];
  }
}

- (BOOL)_verifyiCloudMatch:(unint64_t)match error:(id *)error
{
  v7 = SFMyAltDSID();
  uTF8String = [v7 UTF8String];

  if (uTF8String)
  {
    v9 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v10 = v9;
    if (v9)
    {
      [v9 bytes];
      strlen(uTF8String);
      if (SipHash() == match)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_5;
      }

      NSErrorWithOSStatusF(301015, "Mismatch 0x%llX vs 0x%llX");
    }

    else
    {
      NSErrorWithOSStatusF(301015, "No derived key");
    }
    v12 = ;
  }

  else
  {
    v12 = NSErrorWithOSStatusF(301015, "No My AltDSID");
    v10 = 0;
  }

  v11 = v12 != 0;
  if (error && v12)
  {
    v14 = v12;
    *error = v12;
    v11 = 1;
  }

LABEL_5:

  return !v11;
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runSFSessionStart = [(SFDeviceSetupWHASession *)self _runSFSessionStart];
    if (_runSFSessionStart == 4 || _runSFSessionStart == 2)
    {
      _runPairVerify = [(SFDeviceSetupWHASession *)self _runPairVerify];
      if (_runPairVerify == 4 || _runPairVerify == 2)
      {
        if (self->_sessionSecured || ((v7 = [(SFDeviceSetupWHASession *)self _runPairSetup], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          _runInfoExchange = [(SFDeviceSetupWHASession *)self _runInfoExchange];
          if (_runInfoExchange == 4 || _runInfoExchange == 2)
          {
            _runTRSessionStart = [(SFDeviceSetupWHASession *)self _runTRSessionStart];
            if (_runTRSessionStart == 4 || _runTRSessionStart == 2)
            {
              if (!self->_trSetupConfigurationEnabled || ((v13 = [(SFDeviceSetupWHASession *)self _runTRSetupConfiguration], v13 != 4) ? (v14 = v13 == 2) : (v14 = 1), v14))
              {
                if (!self->_trAuthenticationEnabled || ((v15 = [(SFDeviceSetupWHASession *)self _runTRAuthentication], v15 != 4) ? (v16 = v15 == 2) : (v16 = 1), v16))
                {
                  _runHomeKitSetup = [(SFDeviceSetupWHASession *)self _runHomeKitSetup];
                  if (_runHomeKitSetup == 4 || _runHomeKitSetup == 2)
                  {
                    if (!self->_cdpEnabled || (self->_peerProblemsFlags & 0x20000) == 0 || ((v19 = [(SFDeviceSetupWHASession *)self _runCDPSetup], v19 != 4) ? (v20 = v19 == 2) : (v20 = 1), v20))
                    {

                      [(SFDeviceSetupWHASession *)self _runFinish];
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