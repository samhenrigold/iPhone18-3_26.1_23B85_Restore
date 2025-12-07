@interface SFDeviceSetupTVLatencySession
- (SFDeviceSetupTVLatencySession)init;
- (int)_runFinish;
- (int)_runPairSetup;
- (int)_runPairVerify:(BOOL)verify;
- (int)_runSFSessionStart;
- (int)_runTVLatencySetup;
- (void)_cleanup;
- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_runSFSessionActivated;
- (void)_runTVLatencySetupEstimate;
- (void)_runTVLatencySetupProgressEvent:(unint64_t)event info:(id)info;
- (void)_runTVLatencySetupRequest;
- (void)activate;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
- (void)tryAgain;
@end

@implementation SFDeviceSetupTVLatencySession

- (SFDeviceSetupTVLatencySession)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupTVLatencySession;
  v2 = [(SFDeviceSetupTVLatencySession *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)_cleanup
{
  v8 = self->_tvLatencyEstimator;
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  [(TVLAudioLatencyEstimator *)v8 invalidate];
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v6 = self->_progressHandler;
  }

  else
  {
    v6 = 0;
  }

  self->_progressHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupTVLatencySession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupTVLatencySession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __41__SFDeviceSetupTVLatencySession_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  *(*(v3 + 32) + 32) = mach_absolute_time();
  v4 = *(v3 + 32);
  v5 = v4[11];
  if (v5)
  {
    (*(v5 + 16))(v4[11], 10, 0);
    v4 = *(v3 + 32);
  }

  return [v4 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceSetupTVLatencySession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__SFDeviceSetupTVLatencySession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 16) & 1) == 0 && gLogCategory_SFDeviceSetupTVLatencySession <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __43__SFDeviceSetupTVLatencySession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 16) = 1;
  v4 = *(v3 + 32);

  return [v4 _cleanup];
}

- (void)_reportError:(id)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 60 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencySession _reportError:errorCopy];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v26 = @"eo";
    v8 = errorCopy;
    if (!errorCopy)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A768];
      v24 = *MEMORY[0x1E696A578];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v11;
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = @"?";
      }

      v25 = v12;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v8 = [v9 errorWithDomain:v10 code:-6700 userInfo:v4];
    }

    v27[0] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    progressHandler[2](progressHandler, 30, v13);

    if (!errorCopy)
    {
    }
  }

  v22[0] = @"errCode";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v23[0] = v14;
  v22[1] = @"errDomain";
  domain = [errorCopy domain];
  v16 = domain;
  if (domain)
  {
    v17 = domain;
  }

  else
  {
    v17 = @"?";
  }

  v23[1] = v17;
  v23[2] = MEMORY[0x1E695E110];
  v22[2] = @"success";
  v22[3] = @"totalMs";
  v18 = MEMORY[0x1E696AD98];
  mach_absolute_time();
  v19 = [v18 numberWithUnsignedLongLong:UpTicksToMilliseconds()];
  v23[3] = v19;
  v22[4] = @"triggerMs";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_triggerMs];
  v23[4] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
  SFMetricsLog(@"com.apple.sharing.TVLatencyResult", v21);
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFDeviceSetupTVLatencySession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)tryAgain
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupTVLatencySession_tryAgain__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupTVLatencySession_tryAgain__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __41__SFDeviceSetupTVLatencySession_tryAgain__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(*(v3 + 32) + 56);

  return [v4 estimate];
}

- (int)_runSFSessionStart
{
  selfCopy = self;
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_sfSessionState;
          }

          sfSessionState = selfCopy->_sfSessionState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _runSFSessionStart]", 30, "SFSession hasn't succeeded yet (%d)\n", sfSessionState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupTVLatencySession *)self _runSFSessionStart];
        }
      }

      selfCopy->_sfSessionState = 1;
      [(SFSession *)selfCopy->_sfSession invalidate];
      v6 = objc_alloc_init(SFSession);
      sfSession = selfCopy->_sfSession;
      selfCopy->_sfSession = v6;

      [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFSession *)selfCopy->_sfSession setLabel:@"TVLatency"];
      [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
      [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.AppleTVSetup"];
      [(SFSession *)selfCopy->_sfSession setSessionFlags:33];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke;
      v15[3] = &unk_1E788B238;
      v15[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setErrorHandler:v15];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_2;
      v14[3] = &unk_1E788B198;
      v14[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v14];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_3;
      v13[3] = &unk_1E788B198;
      v13[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInvalidationHandler:v13];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_4;
      v12[3] = &unk_1E788B198;
      v12[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setSessionStartedHandler:v12];
      v8 = _Block_copy(selfCopy->_promptForPINHandler);
      if (v8)
      {
        [(SFSession *)selfCopy->_sfSession setPromptForPINHandler:v8];
      }

      v9 = selfCopy->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_5;
      v11[3] = &unk_1E788B238;
      v11[4] = selfCopy;
      [(SFSession *)v9 activateWithCompletion:v11];
    }
  }

  return selfCopy->_sfSessionState;
}

_BYTE *__51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[16] & 1) == 0)
  {
    return [result _reportError:a2];
  }

  return result;
}

void __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[16] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF(4294960534, "SFSessionInterruption");
    [v1 _reportError:v2];
  }
}

void __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[16] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF(4294960560, "SFSessionInvalidation");
    [v1 _reportError:v2];
  }
}

void *__51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_4(void *result)
{
  v1 = *(result + 4);
  if ((*(v1 + 16) & 1) == 0 && *(v1 + 48) == 1)
  {
    *(v1 + 48) = 4;
    return [*(result + 4) _run];
  }

  return result;
}

void __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 16) & 1) == 0)
  {
    v5 = v3;
    if (v3)
    {
      *(v4 + 48) = 3;
      [*(a1 + 32) _reportError:v3];
    }

    else
    {
      [v4 _runSFSessionActivated];
    }

    v3 = v5;
  }
}

- (void)_runSFSessionActivated
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupTVLatencySession *)self _runSFSessionActivated];
    }
  }

  sfSession = selfCopy->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SFDeviceSetupTVLatencySession__runSFSessionActivated__block_invoke;
  v5[3] = &unk_1E788B4F8;
  v5[4] = selfCopy;
  [(SFSession *)sfSession registerRequestID:@"_sa" options:&unk_1F1D7D600 handler:v5];
  [(SFDeviceSetupTVLatencySession *)selfCopy _run];
}

- (int)_runPairVerify:(BOOL)verify
{
  if (verify && ([(SFSession *)self->_sfSession sessionFlags]& 0x400) == 0)
  {
    [(SFSession *)self->_sfSession setSessionFlags:[(SFSession *)self->_sfSession sessionFlags]| 0x400];
    self->_pairVerifyState = 0;
  }

  pairVerifyState = self->_pairVerifyState;
  if (pairVerifyState != 4 && pairVerifyState != 2)
  {
    if (pairVerifyState)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairVerifyState;
          }

          pairVerifyState = self->_pairVerifyState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _runPairVerify:]", 30, "PairVerify hasn't succeeded yet (%d)\n", pairVerifyState);
      }
    }

    else
    {
      sessionFlags = [(SFSession *)self->_sfSession sessionFlags];
      v7 = @"CUPairing";
      if ((sessionFlags & 0x400) == 0)
      {
        v7 = @"HomeKit";
      }

      v8 = v7;
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupTVLatencySession _runPairVerify:v8];
      }

      self->_pairVerifyState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke;
      v12[3] = &unk_1E788B520;
      v12[4] = self;
      v12[5] = v8;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v12];
    }
  }

  return self->_pairVerifyState;
}

void __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v6 = v3;
    if (v3)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke_cold_1(a1);
      }

      *(*(a1 + 32) + 24) = 2;
    }

    else
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke_cold_2(a1);
      }

      *(*(a1 + 32) + 24) = 4;
      *(*(a1 + 32) + 28) = 1;
      v4 = *(a1 + 32);
      v5 = v4[11];
      if (!v5)
      {
        goto LABEL_13;
      }

      (*(v5 + 16))(v4[11], 70, 0);
    }

    v4 = *(a1 + 32);
LABEL_13:
    [v4 _run];
    v3 = v6;
  }
}

- (int)_runPairSetup
{
  pairSetupState = self->_pairSetupState;
  if (pairSetupState != 4)
  {
    if (pairSetupState)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairSetupState;
          }

          pairSetupState = self->_pairSetupState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _runPairSetup]", 30, "PairSetup hasn't succeeded yet (%d)\n", pairSetupState);
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
      v7[2] = __46__SFDeviceSetupTVLatencySession__runPairSetup__block_invoke;
      v7[3] = &unk_1E788B238;
      v7[4] = self;
      [(SFSession *)sfSession pairSetupWithFlags:8 completion:v7];
    }
  }

  return self->_pairSetupState;
}

void __46__SFDeviceSetupTVLatencySession__runPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    *(*(a1 + 32) + 20) = 3;
    [*(a1 + 32) _reportError:v3];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __46__SFDeviceSetupTVLatencySession__runPairSetup__block_invoke_cold_1(v3, v4, v5);
      }
    }

    *(*(a1 + 32) + 28) = 1;
    *(*(a1 + 32) + 20) = 4;
    v6 = *(a1 + 32);
    v7 = v6[11];
    if (v7)
    {
      (*(v7 + 16))(v6[11], 70, 0);
      v6 = *(a1 + 32);
    }

    [v6 _run];
  }
}

- (int)_runTVLatencySetup
{
  tvLatencySetupState = self->_tvLatencySetupState;
  if (tvLatencySetupState > 3)
  {
    if (tvLatencySetupState == 4)
    {
      return self->_tvLatencySetupState;
    }

    if (tvLatencySetupState == 11)
    {
      [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetupEstimate];
      return self->_tvLatencySetupState;
    }

    goto LABEL_8;
  }

  if (!tvLatencySetupState)
  {
    [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetupRequest];
    return self->_tvLatencySetupState;
  }

  if (tvLatencySetupState != 2)
  {
LABEL_8:
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_tvLatencySetupState;
        }

        tvLatencySetupState = self->_tvLatencySetupState;
      }

      LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _runTVLatencySetup]", 30, "TVLatencySetup hasn't succeeded yet (%d)\n", tvLatencySetupState);
    }
  }

  return self->_tvLatencySetupState;
}

- (void)_runTVLatencySetupRequest
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetupRequest];
    }
  }

  progressHandler = selfCopy->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 260, 0);
  }

  selfCopy->_tvLatencySetupState = 10;
  sfSession = selfCopy->_sfSession;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SFDeviceSetupTVLatencySession__runTVLatencySetupRequest__block_invoke;
  v6[3] = &unk_1E788B548;
  v6[4] = selfCopy;
  [(SFSession *)sfSession sendRequestID:@"_tvlS" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v6];
}

void __58__SFDeviceSetupTVLatencySession__runTVLatencySetupRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (v13)
  {
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v11 = NSErrorNestedF();
    [v10 _reportError:v11];

    v12 = 3;
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
    {
      __58__SFDeviceSetupTVLatencySession__runTVLatencySetupRequest__block_invoke_cold_1(v8);
    }

    v9 = (a1 + 32);
    v12 = 11;
  }

  *(*v9 + 16) = v12;
  [*v9 _run];
}

- (void)_runTVLatencySetupEstimate
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetupEstimate];
    }
  }

  selfCopy->_tvLatencySetupState = 12;
  messageSessionTemplate = [(SFSession *)selfCopy->_sfSession messageSessionTemplate];
  if (messageSessionTemplate)
  {
    v5 = [objc_alloc(getTVLAudioLatencyEstimatorClass_2()) initWithMessageSession:messageSessionTemplate];
    objc_storeStrong(&selfCopy->_tvLatencyEstimator, v5);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke;
    v11 = &unk_1E788B598;
    v12 = selfCopy;
    v13 = v5;
    v6 = v5;
    [v6 setProgressEventHandler:&v8];
    [v6 activate];
    [v6 estimate];
  }

  else
  {
    v7 = NSErrorWithOSStatusF(4294960551, "No message session");
    [(SFDeviceSetupTVLatencySession *)selfCopy _reportError:v7];

    selfCopy->_tvLatencySetupState = 3;
  }
}

void __59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke_2;
  v10[3] = &unk_1E788B570;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v14 = a2;
  v9 = v5;
  dispatch_async(v6, v10);
}

id *__59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke_2(id *result)
{
  if (result[4] == *(result[5] + 7))
  {
    return [result[5] _runTVLatencySetupProgressEvent:result[7] info:result[6]];
  }

  return result;
}

- (void)_runTVLatencySetupProgressEvent:(unint64_t)event info:(id)info
{
  infoCopy = info;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _runTVLatencySetupProgressEvent:info:]", 30, "TVLatency progress: %d, %##.32@\n", event, infoCopy);
  }

  if (event <= 1)
  {
    if (event)
    {
      if (event != 1)
      {
        goto LABEL_25;
      }

      v9 = _Block_copy(self->_progressHandler);
      v7 = v9;
      if (!v9)
      {
        goto LABEL_24;
      }

      v8 = v9[2];
      goto LABEL_23;
    }

    v15 = _Block_copy(self->_progressHandler);
    v7 = v15;
    if (v15)
    {
      v8 = v15[2];
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (event == 2)
  {
    v10 = _Block_copy(self->_progressHandler);
    v7 = v10;
    if (v10)
    {
      v8 = v10[2];
LABEL_23:
      v8();
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (event != 3)
  {
    if (event != 4)
    {
      goto LABEL_25;
    }

    v6 = _Block_copy(self->_progressHandler);
    v7 = v6;
    if (!v6)
    {
      goto LABEL_24;
    }

    v8 = v6[2];
    goto LABEL_23;
  }

  v11 = _Block_copy(self->_progressHandler);
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, 272, infoCopy);
  }

  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;
  v14 = tvLatencyEstimator;

  [(TVLAudioLatencyEstimator *)v14 invalidate];
  if (self->_tvLatencySetupState == 12)
  {
    self->_tvLatencySetupState = 4;
    [(SFDeviceSetupTVLatencySession *)self _run];
  }

LABEL_25:
}

- (int)_runFinish
{
  selfCopy = self;
  finishState = self->_finishState;
  if (finishState != 4 && finishState != 2)
  {
    if (finishState)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_finishState;
          }

          finishState = selfCopy->_finishState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _runFinish]", 30, "Finish hasn't succeeded yet (%d)\n", finishState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupTVLatencySession *)self _runFinish];
        }
      }

      selfCopy->_finishState = 1;
      sfSession = selfCopy->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__SFDeviceSetupTVLatencySession__runFinish__block_invoke;
      v8[3] = &unk_1E788B548;
      v8[4] = selfCopy;
      [(SFSession *)sfSession sendRequestID:@"_finish" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v8];
    }
  }

  return selfCopy->_finishState;
}

void __43__SFDeviceSetupTVLatencySession__runFinish__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _runFinish]_block_invoke", 30, "Finish response: %##.32@, %{error}\n", v8, v9);
  }

  *(*(a1 + 32) + 12) = 4;
  [*(a1 + 32) _run];
}

- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupTVLatencySession *)Int64Ranged _handleSetupActionRequest:requestCopy responseHandler:?];
  }

  if (Int64Ranged == 1)
  {
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 400, requestCopy);
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 60 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencySession _handleSetupActionRequest:Int64Ranged responseHandler:?];
    }

    [v7 setObject:&unk_1F1D7D030 forKeyedSubscript:@"er"];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runSFSessionStart = [(SFDeviceSetupTVLatencySession *)self _runSFSessionStart];
    if (_runSFSessionStart == 4 || _runSFSessionStart == 2)
    {
      v5 = [(SFDeviceSetupTVLatencySession *)self _runPairVerify:0];
      if (v5 == 4 || v5 == 2)
      {
        if (self->_sessionSecured || ((v7 = [(SFDeviceSetupTVLatencySession *)self _runPairVerify:1], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          if (self->_sessionSecured || ((v9 = [(SFDeviceSetupTVLatencySession *)self _runPairSetup], v9 != 4) ? (v10 = v9 == 2) : (v10 = 1), v10))
          {
            _runTVLatencySetup = [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetup];
            if (_runTVLatencySetup == 4 || _runTVLatencySetup == 2)
            {
              _runFinish = [(SFDeviceSetupTVLatencySession *)self _runFinish];
              if (_runFinish == 4 || _runFinish == 2)
              {
                v15 = _Block_copy(self->_progressHandler);
                if (v15)
                {
                  v16 = v15;
                  (*(v15 + 2))(v15, 96, 0);
                  v15 = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

- (uint64_t)_handleSetupActionRequest:(uint64_t)a3 responseHandler:.cold.1(unsigned int a1, char a2, uint64_t a3)
{
  if (a1 > 0xA)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E78900E0[a2 & 0xF];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _handleSetupActionRequest:responseHandler:]", 30, "SetupActionRequest: %s, %##.32@\n", v5, a3, v3, v4);
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 > 0xA)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1E7890138[a2 & 0xF];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupTVLatencySession, "[SFDeviceSetupTVLatencySession _handleSetupActionRequest:responseHandler:]", 60, "### Unsupported SetupAction: %u (%s)\n", a1, v2);
}

@end