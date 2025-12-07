@interface SFDeviceSetupSessioniOS
- (BOOL)_allowAllOTCSenders;
- (SFDeviceSetupSessioniOS)init;
- (int)_runCoreCDPSetup;
- (int)_runDependentSetup;
- (int)_runESIMSetup;
- (int)_runPreAuthPairSetup;
- (int)_runResume;
- (int)_runWalletSetup;
- (uint64_t)_sendConfigInfo;
- (void)_cleanup;
- (void)_completedWithError:(id)error;
- (void)_handleBuddyProgress:(id)progress;
- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler;
- (void)_handleSetupActionSoftwareUpdate;
- (void)_handleSetupPeerSuspended;
- (void)_handleSetupResumeFoundDevice:(id)device;
- (void)_presentOneTimeCodeProxCard:(id)card;
- (void)_receivedConfigResponse:(id)response;
- (void)_receivedObject:(id)object flags:(unsigned int)flags;
- (void)_registerOneTimeCodeDetection:(id)detection;
- (void)_run;
- (void)_runOTCSetup;
- (void)_runSFSessionActivated;
- (void)_runSFSessionStart;
- (void)_sendConfigInfo;
- (void)_sendPreAuthInfo;
- (void)_startBuddySession;
- (void)activate;
- (void)dealloc;
- (void)didComplete;
- (void)didRequestPresentationForProxCard:(id)card;
- (void)invalidate;
- (void)proximitySetupCompletedWithResult:(id)result;
- (void)sendAppEvent:(id)event;
- (void)setPairFlags:(unsigned int)flags;
- (void)tryPIN:(id)n;
@end

@implementation SFDeviceSetupSessioniOS

- (SFDeviceSetupSessioniOS)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceSetupSessioniOS;
  v2 = [(SFDeviceSetupSessioniOS *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_pairFlags = 0;
    if (CFPrefs_GetInt64())
    {
      v2->_pairFlags |= 0x100u;
    }
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFDeviceSetupSessioniOS *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupSessioniOS *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupSessioniOS;
    [(SFDeviceSetupSessioniOS *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;
}

- (void)setPairFlags:(unsigned int)flags
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SFDeviceSetupSessioniOS_setPairFlags___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  flagsCopy = flags;
  dispatch_async(dispatchQueue, v4);
}

void *__40__SFDeviceSetupSessioniOS_setPairFlags___block_invoke(void *result)
{
  *(*(result + 4) + 184) = *(result + 10);
  v1 = *(result + 4);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 184) |= 0x80000u;
    *(*(result + 4) + 37) = 1;
    return [*(result + 4) _run];
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupSessioniOS_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupSessioniOS_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __35__SFDeviceSetupSessioniOS_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  v4 = CFPrefs_GetInt64() != 0;
  *(*(v3 + 32) + 104) = v4;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceSetupSessioniOS_activate__block_invoke_cold_2(v4);
  }

  RandomBytes();
  v5 = *(v3 + 32);
  v6 = v5[29];
  if (v6)
  {
    (*(v6 + 16))(v5[29], 10, 0);
    v5 = *(v3 + 32);
  }

  return [v5 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupSessioniOS_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupSessioniOS_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 35) & 1) == 0 && gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFDeviceSetupSessioniOS_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 35) = 1;
  [*(*(v3 + 32) + 24) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  [*(*(v3 + 32) + 144) invalidate];
  v6 = *(v3 + 32);
  v7 = *(v6 + 144);
  *(v6 + 144) = 0;

  v8 = *(v3 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = 0;

  v10 = *(*(v3 + 32) + 96);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 endPlanTransferForEndPoint:1];
    v13 = *(v3 + 32);
    v14 = *(v13 + 96);
    *(v13 + 96) = 0;
  }

  [*(*(v3 + 32) + 168) invalidate];
  v15 = *(v3 + 32);
  v16 = *(v15 + 168);
  *(v15 + 168) = 0;

  [*(*(v3 + 32) + 80) invalidate];
  v17 = *(v3 + 32);
  v18 = *(v17 + 80);
  *(v17 + 80) = 0;

  *(*(v3 + 32) + 88) = 0;
  v19 = *(v3 + 32);
  v20 = v19[27];
  if (v20)
  {
    (*(v20 + 16))(v19[27]);
    v19 = *(v3 + 32);
  }

  return [v19 _cleanup];
}

- (void)_completedWithError:(id)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = errorCopy;
  v8 = v5;
  if (v5)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _completedWithError:v8];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v19 = @"eo";
      v20[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      progressHandler[2](progressHandler, 20, v10);
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        [(SFDeviceSetupSessioniOS *)v5 _completedWithError:v6, v7];
      }
    }

    v11 = self->_progressHandler;
    if (v11)
    {
      v11[2](v11, 20, 0);
    }
  }

  v17[0] = @"errDomain";
  domain = [v8 domain];
  v13 = domain;
  if (domain)
  {
    v14 = domain;
  }

  else
  {
    v14 = &stru_1F1D30528;
  }

  v17[1] = @"errCode";
  v18[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  v18[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  SFMetricsLog(@"com.apple.sharing.iOSSetup", v16);
}

- (void)_run
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _run]", a3, "Buddy not complete yet\n");
  }
}

void __31__SFDeviceSetupSessioniOS__run__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 38) = 0;
  *(*(a1 + 32) + 36) = 1;
  v8 = v3;
  if (v3)
  {
    [*(a1 + 32) _completedWithError:v3];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __31__SFDeviceSetupSessioniOS__run__block_invoke_cold_1(v3, v4, v5);
      }
    }

    v6 = *(a1 + 32);
    v7 = v6[29];
    if (v7)
    {
      (*(v7 + 16))(v6[29], 70, 0);
      v6 = *(a1 + 32);
    }

    [v6 _run];
  }
}

- (void)_runSFSessionStart
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupSessioniOS *)self _runSFSessionStart];
    }
  }

  [(SFSession *)selfCopy->_sfSession invalidate];
  v4 = objc_alloc_init(SFSession);
  sfSession = selfCopy->_sfSession;
  selfCopy->_sfSession = v4;

  [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
  [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.iOSSetup"];
  [(SFSession *)selfCopy->_sfSession setSessionFlags:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke;
  v11[3] = &unk_1E788B238;
  v11[4] = selfCopy;
  [(SFSession *)selfCopy->_sfSession setErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_2;
  v10[3] = &unk_1E788B198;
  v10[4] = selfCopy;
  [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v10];
  [(SFSession *)selfCopy->_sfSession setInvalidationHandler:&__block_literal_global_53];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_4;
  v9[3] = &unk_1E788CFD0;
  v9[4] = selfCopy;
  [(SFSession *)selfCopy->_sfSession setPromptForPINHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_5;
  v8[3] = &unk_1E788CFF8;
  v8[4] = selfCopy;
  [(SFSession *)selfCopy->_sfSession setReceivedObjectHandler:v8];
  v6 = selfCopy->_sfSession;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_6;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFSession *)v6 activateWithCompletion:v7];
}

void __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _completedWithError:v3];
}

void __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = NSErrorWithOSStatusF(4294960534, "SFSession Interrupted");
  [v4 _completedWithError:v5];
}

uint64_t __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1)
    {
      return __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }
  }

  return result;
}

uint64_t __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_4(uint64_t a1, int a2, int a3)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _runSFSessionStart]_block_invoke_4", 30, "Prompt for PIN, flags 0x%X, %d throttle seconds\n", a2, a3);
  }

  result = *(*(a1 + 32) + 240);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_6_cold_1(v4);
        v4 = v6;
      }
    }

    [*(a1 + 32) _completedWithError:v4];
  }

  else
  {
    [*(a1 + 32) _runSFSessionActivated];
  }
}

- (void)_runSFSessionActivated
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupSessioniOS *)self _runSFSessionActivated];
    }
  }

  selfCopy->_sfSessionActivated = 1;
  sfSession = selfCopy->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SFDeviceSetupSessioniOS__runSFSessionActivated__block_invoke;
  v5[3] = &unk_1E788B4F8;
  v5[4] = selfCopy;
  [(SFSession *)sfSession registerRequestID:@"_sa" options:&unk_1F1D7D4C0 handler:v5];
  [(SFDeviceSetupSessioniOS *)selfCopy _run];
}

- (int)_runPreAuthPairSetup
{
  selfCopy = self;
  preAuthPairSetupState = self->_preAuthPairSetupState;
  if (preAuthPairSetupState != 4)
  {
    if (preAuthPairSetupState)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_preAuthPairSetupState;
          }

          preAuthPairSetupState = selfCopy->_preAuthPairSetupState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _runPreAuthPairSetup]", 30, "PreAuth PairSetup not done yet (%d)\n", preAuthPairSetupState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupSessioniOS *)self _runPreAuthPairSetup];
        }
      }

      selfCopy->_preAuthPairSetupState = 1;
      [(SFSession *)selfCopy->_sfSession setFixedPIN:@"public"];
      sfSession = selfCopy->_sfSession;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__SFDeviceSetupSessioniOS__runPreAuthPairSetup__block_invoke;
      v7[3] = &unk_1E788B238;
      v7[4] = selfCopy;
      [(SFSession *)sfSession pairSetupWithFlags:24 completion:v7];
    }
  }

  return selfCopy->_preAuthPairSetupState;
}

void __47__SFDeviceSetupSessioniOS__runPreAuthPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 80) setFixedPIN:0];
  v5 = v6;
  if (v6)
  {
    *(*(a1 + 32) + 40) = 3;
    [*(a1 + 32) _completedWithError:v6];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __47__SFDeviceSetupSessioniOS__runPreAuthPairSetup__block_invoke_cold_1(v3, v5, v4);
      }
    }

    *(*(a1 + 32) + 40) = 4;
    [*(a1 + 32) _run];
  }
}

- (int)_runESIMSetup
{
  eSIMSetupState = self->_eSIMSetupState;
  if (!eSIMSetupState)
  {
    selfCopy = self;
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceSetupSessioniOS *)self _runESIMSetup];
      }
    }

    messageSessionTemplate = [(SFSession *)selfCopy->_sfSession messageSessionTemplate];
    if (messageSessionTemplate)
    {
      v9 = messageSessionTemplate;
      v10 = [objc_alloc(getCoreTelephonyClientClass()) initWithQueue:selfCopy->_dispatchQueue];
      if (v10)
      {
        v13 = v10;
        objc_storeStrong(&selfCopy->_eSIMClient, v10);
        v14 = [v13 bootstrapPlanTransferForEndpoint:1 usingMessageSession:v9];
        selfCopy->_eSIMSetupState = 4;

        return selfCopy->_eSIMSetupState;
      }

      else
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
        {
          if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v10 = _LogCategory_Initialize(), v10))
          {
            [(SFDeviceSetupSessioniOS *)v10 _runESIMSetup];
          }
        }

        eSIMSetupState = 2;
        selfCopy->_eSIMSetupState = 2;
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (messageSessionTemplate = _LogCategory_Initialize(), messageSessionTemplate))
        {
          [(SFDeviceSetupSessioniOS *)messageSessionTemplate _runESIMSetup];
        }
      }

      eSIMSetupState = 2;
      selfCopy->_eSIMSetupState = 2;
    }
  }

  return eSIMSetupState;
}

- (void)_runOTCSetup
{
  if (!self->_eSIMClient)
  {
    v3 = [objc_alloc(getCoreTelephonyClientClass()) initWithQueue:self->_dispatchQueue];
    eSIMClient = self->_eSIMClient;
    self->_eSIMClient = v3;
  }

  objc_initWeak(&location, self);
  v5 = self->_eSIMClient;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke;
  v6[3] = &unk_1E788FE60;
  objc_copyWeak(&v7, &location);
  [(CoreTelephonyClient *)v5 carrierOneTimeCodeSendersWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke_cold_1(v5);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      if (([WeakRetained _allowAllOTCSenders] & 1) != 0 || objc_msgSend(v10, "count"))
      {
        [v9 _registerOneTimeCodeDetection:v10];
      }
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (WeakRetained = _LogCategory_Initialize(), WeakRetained))
      {
        __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke_cold_2(WeakRetained, v7, v8);
      }
    }
  }
}

- (BOOL)_allowAllOTCSenders
{
  v2 = IsAppleInternalBuild();
  if (v2)
  {
    CFPreferencesSynchronize(@"com.apple.Sharing", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAllOTCSenders", @"com.apple.Sharing", &keyExistsAndHasValidFormat);
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupSessioniOS *)AppBooleanValue _allowAllOTCSenders];
    }

    if (AppBooleanValue)
    {
      v4 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v4 = 1;
    }

    LOBYTE(v2) = !v4;
  }

  return v2;
}

- (void)_registerOneTimeCodeDetection:(id)detection
{
  detectionCopy = detection;
  v7 = detectionCopy;
  if (self->_oneTimeCodeAccelerator)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (detectionCopy = _LogCategory_Initialize(), detectionCopy))
      {
        [(SFDeviceSetupSessioniOS *)detectionCopy _registerOneTimeCodeDetection:v5, v6];
      }
    }
  }

  else
  {
    inited = objc_initWeak(&location, self);
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (inited = _LogCategory_Initialize(), inited))
      {
        inited = LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _registerOneTimeCodeDetection:]", 30, "register OTC detection\n");
      }
    }

    v9 = objc_alloc(getIMOneTimeCodeAcceleratorClass(inited));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke;
    v12[3] = &unk_1E788FE88;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    v10 = [v9 initWithBlockForUpdates:v12];
    oneTimeCodeAccelerator = self->_oneTimeCodeAccelerator;
    self->_oneTimeCodeAccelerator = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v4 = _LogCategory_Initialize(), v3 = v15, v4))
    {
      __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke_cold_1(v3);
      v3 = v15;
    }
  }

  v5 = [v3 firstObject];
  v6 = [v5 objectForKeyedSubscript:@"code"];
  if ([v6 length])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = [v5 objectForKeyedSubscript:@"handle"];
      if (([*(a1 + 32) containsObject:v11] & 1) != 0 || (v12 = objc_msgSend(v10, "_allowAllOTCSenders"), v12))
      {
        [v10 _presentOneTimeCodeProxCard:v6];
      }

      else if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v12 = _LogCategory_Initialize(), v12))
        {
          __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke_cold_2(v12, v13, v14);
        }
      }
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (WeakRetained = _LogCategory_Initialize(), WeakRetained))
      {
        __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke_cold_3(WeakRetained, v8, v9);
      }
    }
  }
}

- (void)_presentOneTimeCodeProxCard:(id)card
{
  v8[1] = *MEMORY[0x1E69E9840];
  cardCopy = card;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _presentOneTimeCodeProxCard:cardCopy];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v7 = @"oneTimeCode";
    v8[0] = cardCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    progressHandler[2](progressHandler, 1100, v6);
  }
}

- (int)_runDependentSetup
{
  dependentSetupState = self->_dependentSetupState;
  if (!dependentSetupState)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (dependentSetupState = _LogCategory_Initialize(), dependentSetupState))
      {
        [(SFDeviceSetupSessioniOS *)dependentSetupState _runDependentSetup];
      }
    }

    messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (messageSessionTemplate)
    {
      v8 = messageSessionTemplate;
      self->_dependentSetupState = 1;
      v9 = [objc_alloc(getPRXCardContentViewControllerClass()) initWithNibName:0 bundle:0];
      v10 = [objc_alloc(getPASUIGuardianViewPresenterClass()) initWithSharingViewController:v9];
      dependentSetupSession = self->_dependentSetupSession;
      self->_dependentSetupSession = v10;

      if (objc_opt_respondsToSelector())
      {
        [(PASUIGuardianViewPresenter *)self->_dependentSetupSession setDelegate:self];
      }

      v12 = self->_dependentSetupSession;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke;
      v14[3] = &unk_1E788FEB0;
      v14[4] = self;
      [(PASUIGuardianViewPresenter *)v12 activateWithTemplateMessageSession:v8 completion:v14];

      LODWORD(dependentSetupState) = self->_dependentSetupState;
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (messageSessionTemplate = _LogCategory_Initialize(), messageSessionTemplate))
        {
          [(SFDeviceSetupSessioniOS *)messageSessionTemplate _runDependentSetup];
        }
      }

      LODWORD(dependentSetupState) = 2;
      self->_dependentSetupState = 2;
    }
  }

  return dependentSetupState;
}

void __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 192);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke_2;
    v10 = &unk_1E788A658;
    v11 = v5;
    v12 = v3;
    dispatch_async(v6, &v7);
    [*(a1 + 32) _startBuddySession];
  }
}

void __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 232);
  v4 = @"viewController";
  v5[0] = v1;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  (*(v2 + 16))(v2, 2000, v3);
}

- (int)_runCoreCDPSetup
{
  selfCopy = self;
  cdpState = self->_cdpState;
  if (cdpState != 4 && cdpState != 2)
  {
    if (cdpState)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_cdpState;
          }

          cdpState = selfCopy->_cdpState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _runCoreCDPSetup]", 30, "CoreCDP hasn't succeeded yet (%d)\n", cdpState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupSessioniOS *)self _runCoreCDPSetup];
        }
      }

      selfCopy->_cdpState = 1;
      messageSessionTemplate = [(SFSession *)selfCopy->_sfSession messageSessionTemplate];
      if (messageSessionTemplate)
      {
        v7 = objc_alloc_init(getCDPContextClass_0());
        cdpContext = selfCopy->_cdpContext;
        selfCopy->_cdpContext = v7;

        v9 = [(CDPContext *)selfCopy->_cdpContext setSharingChannel:messageSessionTemplate];
        v10 = [objc_alloc(getCDPStateControllerClass_0(v9)) initWithContext:selfCopy->_cdpContext];
        cdpController = selfCopy->_cdpController;
        selfCopy->_cdpController = v10;

        v12 = selfCopy->_cdpController;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke;
        v15[3] = &unk_1E788C170;
        v15[4] = selfCopy;
        [(CDPStateController *)v12 startCircleApplicationApprovalServer:v15];
      }

      else
      {
        selfCopy->_cdpState = 3;
        v13 = NSErrorWithOSStatusF(4294960551, "NoMessageSessionTemplateForCoreCDP");
        [(SFDeviceSetupSessioniOS *)selfCopy _completedWithError:v13];
      }
    }
  }

  return selfCopy->_cdpState;
}

void __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  v12 = a2;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2_cold_1(a1);
  }

  *(*(a1 + 40) + 128) = 4;
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (int)_runWalletSetup
{
  walletClientState = self->_walletClientState;
  if (!walletClientState)
  {
    selfCopy = self;
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceSetupSessioniOS *)self _runWalletSetup];
      }
    }

    messageSessionTemplate = [(SFSession *)selfCopy->_sfSession messageSessionTemplate];
    if (messageSessionTemplate)
    {
      v9 = messageSessionTemplate;
      v10 = objc_alloc_init(getPKProximitySetupSourceClientClass());
      if (v10)
      {
        walletClient = selfCopy->_walletClient;
        selfCopy->_walletClient = v10;
        v14 = v10;

        [(PKProximitySetupSourceClient *)v14 startWithSession:v9];
        selfCopy->_walletClientState = 4;

        return selfCopy->_walletClientState;
      }

      else
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
        {
          if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v10 = _LogCategory_Initialize(), v10))
          {
            [(SFDeviceSetupSessioniOS *)v10 _runWalletSetup];
          }
        }

        walletClientState = 2;
        selfCopy->_walletClientState = 2;
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (messageSessionTemplate = _LogCategory_Initialize(), messageSessionTemplate))
        {
          [(SFDeviceSetupSessioniOS *)messageSessionTemplate _runWalletSetup];
        }
      }

      walletClientState = 2;
      selfCopy->_walletClientState = 2;
    }
  }

  return walletClientState;
}

- (int)_runResume
{
  selfCopy = self;
  resumeState = self->_resumeState;
  if (resumeState != 4)
  {
    if (resumeState)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_resumeState;
          }

          resumeState = selfCopy->_resumeState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _runResume]", 30, "Resume not done yet (%d)\n", resumeState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupSessioniOS *)self _runResume];
        }
      }

      selfCopy->_resumeState = 1;
      sfSession = selfCopy->_sfSession;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __37__SFDeviceSetupSessioniOS__runResume__block_invoke;
      v7[3] = &unk_1E788B548;
      v7[4] = selfCopy;
      [(SFSession *)sfSession sendRequestID:@"_sa" options:0 request:&unk_1F1D7D4E8 responseHandler:v7];
    }
  }

  return selfCopy->_resumeState;
}

void __37__SFDeviceSetupSessioniOS__runResume__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _runResume]_block_invoke", 30, "Resume response: %##@, %{error}\n", v8, v12);
  }

  if (v12)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  *(*(a1 + 32) + 72) = v9;
  v10 = _Block_copy(*(*(a1 + 32) + 232));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 97, 0);
  }

  [*(a1 + 32) _run];
}

- (void)_sendConfigInfo
{
  v30 = 0;
  sfSession = self->_sfSession;
  v5 = gLogCategory_SFDeviceSetupSessioniOS;
  if (sfSession)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        [(SFDeviceSetupSessioniOS *)v5 _sendConfigInfo];
      }
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:&unk_1F1D7CF70 forKeyedSubscript:@"op"];
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"dn"];
    fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
    if (!fileTransferSessionTemplate)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69C6B90]);
      v9 = self->_fileTransferSessionTemplate;
      self->_fileTransferSessionTemplate = v8;

      [(RPFileTransferSession *)self->_fileTransferSessionTemplate setFlags:418];
      [(RPFileTransferSession *)self->_fileTransferSessionTemplate prepareTemplateAndReturnError:0];
      fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
    }

    selfPublicKey = [(RPFileTransferSession *)fileTransferSessionTemplate selfPublicKey];
    if (selfPublicKey)
    {
      [v6 setObject:selfPublicKey forKeyedSubscript:@"ftPK"];
    }

    v11 = objc_alloc_init(getACAccountStoreClass_5());
    aa_primaryAppleAccount = [v11 aa_primaryAppleAccount];
    username = [aa_primaryAppleAccount username];
    v14 = [username length];
    if (v14)
    {
      [v6 setObject:username forKeyedSubscript:@"icn"];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v14 = _LogCategory_Initialize(), v14))
      {
        [(SFDeviceSetupSessioniOS *)v14 _sendConfigInfo];
      }
    }

    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    if (firstObject)
    {
      [v6 setObject:firstObject forKeyedSubscript:@"lang"];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v19 = _LogCategory_Initialize(), v19))
      {
        [(SFDeviceSetupSessioniOS *)v19 _sendConfigInfo];
      }
    }

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    if (localeIdentifier)
    {
      [v6 setObject:localeIdentifier forKeyedSubscript:@"locale"];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v24 = _LogCategory_Initialize(), v24))
      {
        [(SFDeviceSetupSessioniOS *)v24 _sendConfigInfo];
      }
    }

    v27 = WiFiCopyCurrentNetworkInfoEx();
    v28 = v27;
    if (v27)
    {
      v29 = [v27 objectForKeyedSubscript:@"ssid"];

      if (v29)
      {
        [v6 setObject:v29 forKeyedSubscript:@"wifiSSID"];
      }

      else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _sendConfigInfo];
      }

      localeIdentifier = [v28 objectForKeyedSubscript:@"password"];

      if (localeIdentifier)
      {
        [v6 setObject:localeIdentifier forKeyedSubscript:@"wifiPW"];
      }

      else
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupSessioniOS _sendConfigInfo];
        }

        localeIdentifier = 0;
      }
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupSessioniOS *)&v30 _sendConfigInfo];
    }

    [(SFSession *)self->_sfSession sendWithFlags:1 object:v6];
  }

  else
  {
    [gLogCategory_SFDeviceSetupSessioniOS _sendConfigInfo];
  }
}

- (void)_receivedConfigResponse:(id)response
{
  responseCopy = response;
  CFDataGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (v4)
  {
    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setPeerPublicKey:v4];
  }

  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    targetID = [(RPFileTransferSession *)self->_fileTransferSessionTemplate targetID];

    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setTargetID:v5];
    if (!targetID)
    {
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 420, 0);
      }
    }
  }
}

- (void)_sendPreAuthInfo
{
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [v27 setObject:&unk_1F1D7CF88 forKeyedSubscript:@"op"];
  if (AccessibilityLibrary_sOnce_0 != -1)
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

  if (AccessibilityLibrary_sLib_0)
  {
    v3 = dlsym(AccessibilityLibrary_sLib_0, "_AXSCopySettingsDataBlobForBuddy");
    if (v3)
    {
      v5 = softLink_AXSCopySettingsDataBlobForBuddy(v3);
      v8 = v5;
      if (v5)
      {
        [v27 setObject:v5 forKeyedSubscript:@"axSt"];
      }

      else if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          [(SFDeviceSetupSessioniOS *)v5 _sendPreAuthInfo];
        }
      }
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{SFDeviceClassCodeGet(v3, v4)}];
  [v27 setObject:v9 forKeyedSubscript:@"dclass"];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v13 = preferredLanguages;
  if (preferredLanguages)
  {
    [v27 setObject:preferredLanguages forKeyedSubscript:@"langs"];
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (preferredLanguages = _LogCategory_Initialize(), preferredLanguages))
    {
      [(SFDeviceSetupSessioniOS *)preferredLanguages _sendPreAuthInfo];
    }
  }

  firstObject = [v13 firstObject];
  v17 = firstObject;
  if (firstObject)
  {
    [v27 setObject:firstObject forKeyedSubscript:@"lang"];
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (firstObject = _LogCategory_Initialize(), firstObject))
    {
      [(SFDeviceSetupSessioniOS *)firstObject _sendPreAuthInfo];
    }
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    [v27 setObject:localeIdentifier forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v20 = _LogCategory_Initialize(), v20))
    {
      [(SFDeviceSetupSessioniOS *)v20 _sendPreAuthInfo];
    }
  }

  v23 = GestaltCopyAnswer();

  if (v23)
  {
    [v27 setObject:v23 forKeyedSubscript:@"model"];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS > 60)
    {
      goto LABEL_34;
    }

    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v24 = _LogCategory_Initialize(), v24))
    {
      [(SFDeviceSetupSessioniOS *)v24 _sendPreAuthInfo];
    }
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupSessioniOS *)v27 _sendPreAuthInfo];
  }

LABEL_34:
  [(SFSession *)self->_sfSession sendWithFlags:self->_preAuthPairSetupState == 4 object:v27];
}

- (void)_startBuddySession
{
  if (!self->_buddySession)
  {
    v9[7] = v3;
    v9[8] = v4;
    selfCopy = self;
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceSetupSessioniOS *)self _startBuddySession];
      }
    }

    v6 = objc_alloc_init(getBYDeviceSetupSourceSessionClass());
    buddySession = selfCopy->_buddySession;
    selfCopy->_buddySession = v6;

    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupSessioniOS *)selfCopy _startBuddySession];
    }

    [(BYDeviceSetupSourceSession *)selfCopy->_buddySession setFileTransferSessionTemplate:selfCopy->_fileTransferSessionTemplate];
    messageSessionTemplate = [(SFSession *)selfCopy->_sfSession messageSessionTemplate];
    [(BYDeviceSetupSourceSession *)selfCopy->_buddySession setMessageSession:messageSessionTemplate];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__SFDeviceSetupSessioniOS__startBuddySession__block_invoke;
    v9[3] = &unk_1E788FED8;
    v9[4] = selfCopy;
    [(BYDeviceSetupSourceSession *)selfCopy->_buddySession setProgressHandler:v9];
    [(BYDeviceSetupSourceSession *)selfCopy->_buddySession activate];
    selfCopy->_buddyConfigured = 1;
  }
}

void __45__SFDeviceSetupSessioniOS__startBuddySession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupSessioniOS__startBuddySession__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_handleBuddyProgress:(id)progress
{
  v23[2] = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  if (self->_buddySession)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _handleBuddyProgress:progressCopy];
    }

    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (Int64 = _LogCategory_Initialize(), Int64))
        {
          [(SFDeviceSetupSessioniOS *)Int64 _handleBuddyProgress:v6, v7];
        }
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 242, progressCopy);
      }

      self->_buddyComplete = 1;
      if (self->_dependentSetupState == 1)
      {
        self->_dependentSetupState = 4;
        self->_eSIMSetupState = 2;
        self->_cdpState = 2;
      }

      [(SFDeviceSetupSessioniOS *)self _run];
      goto LABEL_24;
    }

    CFErrorGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _handleBuddyProgress:v9];
      }

      [(SFDeviceSetupSessioniOS *)self _completedWithError:v9];
    }

    else
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      CFDictionaryGetDouble();
      v12 = v11;
      CFDictionaryGetDouble();
      v14 = v13;
      if (Int64Ranged == 2)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _handleBuddyProgress:]", 30, "Buddy sync progress: %f%% (%f seconds remaining)\n", v12 * 100.0, v14);
        }

        v19 = self->_progressHandler;
        if (!v19)
        {
          goto LABEL_23;
        }

        v20[0] = @"progress";
        v16 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v20[1] = @"remainSecs";
        v21[0] = v16;
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
        v21[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
        v19[2](v19, 310, v18);
      }

      else
      {
        if (Int64Ranged != 1)
        {
          goto LABEL_23;
        }

        if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _handleBuddyProgress:]", 30, "Buddy backup progress: %f%% (%f seconds remaining)\n", v12 * 100.0, v14);
        }

        v15 = self->_progressHandler;
        if (!v15)
        {
          goto LABEL_23;
        }

        v22[0] = @"progress";
        v16 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v22[1] = @"remainSecs";
        v23[0] = v16;
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
        v23[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
        v15[2](v15, 300, v18);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleBuddyProgress:progressCopy];
  }

LABEL_24:
}

- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupSessioniOS *)Int64Ranged _handleSetupActionRequest:requestCopy responseHandler:?];
  }

  if (Int64Ranged <= 3)
  {
    switch(Int64Ranged)
    {
      case 1:
        progressHandler = self->_progressHandler;
        if (!progressHandler)
        {
          goto LABEL_31;
        }

        v10 = *(progressHandler + 2);
        goto LABEL_30;
      case 2:
        v15 = self->_progressHandler;
        if (!v15)
        {
          goto LABEL_31;
        }

        v10 = *(v15 + 2);
        goto LABEL_30;
      case 3:
        v9 = self->_progressHandler;
        if (!v9)
        {
          goto LABEL_31;
        }

        v10 = *(v9 + 2);
        goto LABEL_30;
    }
  }

  else
  {
    if (Int64Ranged <= 8)
    {
      if (Int64Ranged != 4)
      {
        if (Int64Ranged == 5)
        {
          [(SFDeviceSetupSessioniOS *)self _handleSetupActionSoftwareUpdate];
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v13 = self->_progressHandler;
      if (!v13)
      {
        goto LABEL_31;
      }

      v10 = *(v13 + 2);
LABEL_30:
      v10();
      goto LABEL_31;
    }

    if (Int64Ranged == 9)
    {
      v14 = self->_progressHandler;
      if (!v14)
      {
        goto LABEL_31;
      }

      v10 = *(v14 + 2);
      goto LABEL_30;
    }

    if (Int64Ranged == 10)
    {
      v11 = self->_progressHandler;
      if (!v11)
      {
        goto LABEL_31;
      }

      v10 = *(v11 + 2);
      goto LABEL_30;
    }
  }

LABEL_20:
  if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleSetupActionRequest:Int64Ranged responseHandler:?];
  }

  [v7 setObject:&unk_1F1D7CFA0 forKeyedSubscript:@"er"];
LABEL_31:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
}

- (void)_handleSetupActionSoftwareUpdate
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_13(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _handleSetupActionSoftwareUpdate]", a3, "### SWUpdate derive ResumeKey failed\n");
  }
}

void __59__SFDeviceSetupSessioniOS__handleSetupActionSoftwareUpdate__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _handleSetupActionSoftwareUpdate]_block_invoke", 30, "Suspend response: %##@, %{error}\n", v8, v9);
  }

  [*(a1 + 32) _handleSetupPeerSuspended];
}

- (void)_handleSetupPeerSuspended
{
  *&self->_buddyConfigured = 0;
  fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
  self->_fileTransferSessionTemplate = 0;

  self->_pairSetupDone = 0;
  peerDevice = self->_peerDevice;
  self->_peerDevice = 0;

  self->_sfSessionActivated = 0;
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      [(SFDeviceSetupSessioniOS *)v6 _handleSetupPeerSuspended];
    }
  }

  v9 = objc_alloc_init(SFDeviceDiscovery);
  resumeDiscovery = self->_resumeDiscovery;
  self->_resumeDiscovery = v9;
  v11 = v9;

  [(SFDeviceDiscovery *)v11 setDiscoveryFlags:512];
  [(SFDeviceDiscovery *)v11 setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceDiscovery *)v11 setPurpose:@"iOSSetupResume"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke;
  v13[3] = &unk_1E788FF00;
  v13[4] = v11;
  v13[5] = self;
  [(SFDeviceDiscovery *)v11 setDeviceFoundHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke_2;
  v12[3] = &unk_1E788B520;
  v12[4] = v11;
  v12[5] = self;
  [(SFDeviceDiscovery *)v11 activateWithCompletion:v12];
}

void *__52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[7])
  {
    return [result _handleSetupResumeFoundDevice:a2];
  }

  return result;
}

void __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 56) && gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    v6 = v3;
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke_2_cold_1(v4);
      v4 = v6;
    }
  }
}

- (void)_handleSetupResumeFoundDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy deviceFlags] & 0x100) != 0)
  {
    bleDevice = [deviceCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    CFDataGetTypeID();
    v7 = CFDictionaryGetTypedValue();

    if ([v7 isEqual:self->_resumeAuthTag])
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _handleSetupResumeFoundDevice:deviceCopy];
      }

      objc_storeStrong(&self->_peerDevice, device);
      [(SFDeviceDiscovery *)self->_resumeDiscovery invalidate];
      resumeDiscovery = self->_resumeDiscovery;
      self->_resumeDiscovery = 0;

      [(SFDeviceSetupSessioniOS *)self _run];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _handleSetupResumeFoundDevice:]", 30, "Resume discovery ignoring non-matching device: %@ vs %@, %@\n", v7, self->_resumeAuthTag, deviceCopy);
    }
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleSetupResumeFoundDevice:deviceCopy];
  }
}

- (void)_receivedObject:(id)object flags:(unsigned int)flags
{
  v4 = *&flags;
  objectCopy = object;
  v16 = objectCopy;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v7 = _LogCategory_Initialize(), objectCopy = v16, v7))
    {
      [SFDeviceSetupSessioniOS _receivedObject:objectCopy flags:v4];
    }
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v11 = Int64Ranged;
  if (Int64Ranged == 2)
  {
    v13 = gLogCategory_SFDeviceSetupSessioniOS;
    if ((v4 & 1) == 0)
    {
      [SFDeviceSetupSessioniOS _receivedObject:v16 flags:?];
      goto LABEL_21;
    }

    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v13 = _LogCategory_Initialize(), v13))
      {
        [(SFDeviceSetupSessioniOS *)v13 _receivedObject:v9 flags:v10];
      }
    }

    [(SFDeviceSetupSessioniOS *)self _receivedConfigResponse:v16];
    receivedObjectHandler = self->_receivedObjectHandler;
    if (receivedObjectHandler)
    {
      receivedObjectHandler[2](receivedObjectHandler, v16);
    }

    self->_configResponseReceived = 1;
    goto LABEL_20;
  }

  if (Int64Ranged == 5)
  {
    v12 = v16;
    if (v4)
    {
      goto LABEL_22;
    }

    [SFDeviceSetupSessioniOS _receivedObject:v16 flags:?];
    goto LABEL_21;
  }

  v12 = v16;
  if (Int64Ranged == 4)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (Int64Ranged = _LogCategory_Initialize(), Int64Ranged))
      {
        [(SFDeviceSetupSessioniOS *)Int64Ranged _receivedObject:v12 flags:v10];
      }
    }

    self->_preAuthResponseReceived = 1;
LABEL_20:
    [(SFDeviceSetupSessioniOS *)self _run];
LABEL_21:
    v12 = v16;
    goto LABEL_22;
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v15 = _LogCategory_Initialize(), v12 = v16, v15))
    {
      [SFDeviceSetupSessioniOS _receivedObject:v11 flags:?];
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)sendAppEvent:(id)event
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFDeviceSetupSessioniOS_sendAppEvent___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(dispatchQueue, v7);
}

void __40__SFDeviceSetupSessioniOS_sendAppEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  *(v2 + 12) = v3 + 1;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __40__SFDeviceSetupSessioniOS_sendAppEvent___block_invoke_cold_1(v3);
  }

  v5 = [*(a1 + 40) mutableCopy];
  [v5 setObject:&unk_1F1D7CFD0 forKeyedSubscript:@"op"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setObject:v4 forKeyedSubscript:@"appID"];

  [*(*(a1 + 32) + 80) sendWithFlags:1 object:v5];
}

- (void)tryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SFDeviceSetupSessioniOS_tryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __34__SFDeviceSetupSessioniOS_tryPIN___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (!*(*(a1 + 32) + 80) && gLogCategory_SFDeviceSetupSessioniOS <= 60)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __34__SFDeviceSetupSessioniOS_tryPIN___block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 40);
  v5 = *(*(v3 + 32) + 80);

  return [v5 pairSetupTryPIN:v4];
}

- (void)didComplete
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupSessioniOS *)self didComplete];
    }
  }

  progressHandler = selfCopy->_progressHandler;
  if (progressHandler)
  {
    v5 = *(progressHandler + 2);

    v5();
  }
}

- (void)didRequestPresentationForProxCard:(id)card
{
  v8[1] = *MEMORY[0x1E69E9840];
  cardCopy = card;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS didRequestPresentationForProxCard:cardCopy];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v7 = @"viewController";
    v8[0] = cardCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    progressHandler[2](progressHandler, 1000, v6);
  }
}

- (void)proximitySetupCompletedWithResult:(id)result
{
  resultCopy = result;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = resultCopy;
  selfCopy = self;
  v6 = resultCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) accountType];
  if (!v3)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS > 50 || gLogCategory_SFDeviceSetupSessioniOS == -1 && !_LogCategory_Initialize())
    {
LABEL_15:
      v4 = 4;
      goto LABEL_16;
    }

    __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_2(v2, &v8);
    v7 = v8;
    goto LABEL_23;
  }

  if (v3 != 2)
  {
    if (v3 != 1)
    {
      goto LABEL_17;
    }

    if (gLogCategory_SFDeviceSetupSessioniOS > 50 || gLogCategory_SFDeviceSetupSessioniOS == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_3(v2, &v8);
    v7 = v8;
LABEL_23:
    v4 = 4;
    goto LABEL_24;
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_1(v2, &v8);
    v7 = v8;
    v4 = 7;
LABEL_24:

    goto LABEL_16;
  }

  v4 = 7;
LABEL_16:
  *(*(a1 + 40) + 152) = v4;
  (*(*(*(a1 + 40) + 232) + 16))();
LABEL_17:
  v5 = *(a1 + 40);

  return [v5 _run];
}

uint64_t __35__SFDeviceSetupSessioniOS_activate__block_invoke_cold_2(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS activate]_block_invoke", 30, "eSIMSetup: %s\n", v1);
}

uint64_t __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = "no";
  if (*(a1 + 48))
  {
    v1 = "yes";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _runCoreCDPSetup]_block_invoke_2", 30, "CoreCDP start approval server: success %s, %{error}\n", v1, *(a1 + 32));
}

- (uint64_t)_sendConfigInfo
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _sendConfigInfo]", a3, "### Send config info without session\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _sendConfigInfo]", a3, "### Send config info without session\n");
    }
  }

  return result;
}

- (uint64_t)_handleSetupActionRequest:(uint64_t)a3 responseHandler:.cold.1(unsigned int a1, char a2, uint64_t a3)
{
  if (a1 > 0xA)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788FF20[a2 & 0xF];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _handleSetupActionRequest:responseHandler:]", 30, "SetupActionRequest: %s, %##.32@\n", v5, a3, v3, v4);
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 > 0xA)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1E788FF78[a2 & 0xF];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _handleSetupActionRequest:responseHandler:]", 60, "### Unsupported SetupAction: %u (%s)\n", a1, v2);
}

- (uint64_t)_receivedObject:(uint64_t)result flags:.cold.2(uint64_t result)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 50)
  {
    v1 = result;
    if (gLogCategory_SFDeviceSetupSessioniOS != -1)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config message: %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config message: %@\n", v1);
    }
  }

  return result;
}

- (uint64_t)_receivedObject:(uint64_t)result flags:(uint64_t)a2 .cold.4(uint64_t result, uint64_t a2)
{
  if (result <= 50)
  {
    if (result != -1)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config response: %@\n", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config response: %@\n", a2);
    }
  }

  return result;
}

uint64_t __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_1(id *a1, uint64_t *a2)
{
  v3 = [*a1 error];
  *a2 = v3;
  return LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS proximitySetupCompletedWithResult:]_block_invoke", 90, "Finished PAS with error: %@\n", v3);
}

void __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_2(id *a1, uint64_t *a2)
{
  v4 = [*a1 authResults];
  *a2 = v4;
  v5 = [*a1 familyMember];
  LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS proximitySetupCompletedWithResult:]_block_invoke", 50, "Finished PAS for dependent with\nauth results: %@\nfamily member: %@\n", v4, v5);
}

void __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_3(id *a1, uint64_t *a2)
{
  v4 = [*a1 authResults];
  *a2 = v4;
  v5 = [*a1 personalAccount];
  LogPrintF(&gLogCategory_SFDeviceSetupSessioniOS, "[SFDeviceSetupSessioniOS proximitySetupCompletedWithResult:]_block_invoke", 50, "Finished PAS for self with\nauth results: %@\naccount: %@\n", v4, v5);
}

@end