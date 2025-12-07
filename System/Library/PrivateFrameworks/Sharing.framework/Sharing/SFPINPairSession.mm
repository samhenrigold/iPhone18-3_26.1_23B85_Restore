@interface SFPINPairSession
- (SFPINPairSession)init;
- (uint64_t)_activate;
- (void)_activate;
- (void)_cleanup;
- (void)_clientHeartbeatSend;
- (void)_clientPairSetup:(id)setup start:(BOOL)start;
- (void)_clientPairVerify:(id)verify start:(BOOL)start;
- (void)_clientRun;
- (void)_clientSFSessionStart;
- (void)_clientTryPIN:(id)n;
- (void)_completed:(int)_completed;
- (void)_handleServerRequest:(id)request;
- (void)_hearbeatTimer;
- (void)_invalidate;
- (void)activate;
- (void)clientTryPIN:(id)n;
- (void)dealloc;
- (void)handleServerHeartbeat:(id)heartbeat;
- (void)handleServerPairSetup:(id)setup reset:(BOOL)reset;
- (void)handleServerPairVerify:(id)verify reset:(BOOL)reset;
- (void)handleServerRequest:(id)request;
- (void)invalidate;
@end

@implementation SFPINPairSession

- (SFPINPairSession)init
{
  v6.receiver = self;
  v6.super_class = SFPINPairSession;
  v2 = [(SFPINPairSession *)&v6 init];
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
    [(SFPINPairSession *)v7 activate];
  }

  else
  {
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    promptForPINHandler = self->_promptForPINHandler;
    self->_promptForPINHandler = 0;

    showPINHandler = self->_showPINHandler;
    self->_showPINHandler = 0;

    hidePINHandler = self->_hidePINHandler;
    self->_hidePINHandler = 0;

    v9.receiver = self;
    v9.super_class = SFPINPairSession;
    [(SFPINPairSession *)&v9 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFPINPairSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [(SFPINPairSession *)self _activate];
  }

  self->_activateCalled = 1;
  _activate = mach_absolute_time();
  self->_startTicks = _activate;
  if (!self->_transaction)
  {
    v6 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v6;

    if (!self->_transaction && gLogCategory_SFPINPairSession <= 60)
    {
      if (gLogCategory_SFPINPairSession != -1 || (_activate = _LogCategory_Initialize(), _activate))
      {
        _activate = [(SFPINPairSession *)_activate _activate];
      }
    }
  }

  if (!self->_heartbeatTimer)
  {
    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (_activate = _LogCategory_Initialize(), _activate))
      {
        [(SFPINPairSession *)_activate _activate];
      }
    }

    self->_heartbeatLastTicks = mach_absolute_time();
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    heartbeatTimer = self->_heartbeatTimer;
    self->_heartbeatTimer = v8;

    v10 = self->_heartbeatTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__SFPINPairSession__activate__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    SFDispatchTimerSet(self->_heartbeatTimer, 1.0, 1.0, -4.0);
    dispatch_resume(self->_heartbeatTimer);
  }

  if (self->_peerDevice)
  {
    [(SFPINPairSession *)self _clientRun];
  }

  else if (!self->_sfService)
  {
    [(SFPINPairSession *)self _activate];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SFPINPairSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (!self->_invalidateCalled && gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFPINPairSession *)self _invalidate];
    }
  }

  selfCopy->_invalidateCalled = 1;
  heartbeatTimer = selfCopy->_heartbeatTimer;
  if (heartbeatTimer)
  {
    v5 = heartbeatTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_heartbeatTimer;
    selfCopy->_heartbeatTimer = 0;
  }

  [(SFPINPairSession *)selfCopy _cleanup];
  completionHandler = selfCopy->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
    v8 = selfCopy->_completionHandler;
  }

  else
  {
    v8 = 0;
  }

  selfCopy->_completionHandler = 0;

  promptForPINHandler = selfCopy->_promptForPINHandler;
  selfCopy->_promptForPINHandler = 0;

  showPINHandler = selfCopy->_showPINHandler;
  selfCopy->_showPINHandler = 0;

  hidePINHandler = selfCopy->_hidePINHandler;
  selfCopy->_hidePINHandler = 0;

  transaction = selfCopy->_transaction;
  selfCopy->_transaction = 0;
}

- (void)_cleanup
{
  self->_pairSetupDone = 0;
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    CFRelease(pairSetupSession);
    self->_pairSetupSession = 0;
  }

  self->_pairVerifyDone = 0;
  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  self->_sfSessionActivated = 0;
}

- (void)_completed:(int)_completed
{
  v3 = *&_completed;
  v26[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  mach_absolute_time();
  v5 = UpTicksToMilliseconds();
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _completed:]", 30, "Completed (%llu ms): %#m\n", v5);
  }

  completionHandler = self->_completionHandler;
  v7 = 0x1E695D000uLL;
  if (completionHandler)
  {
    if (v3)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A768];
      v25 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v11 = v10;
      v12 = @"?";
      if (v10)
      {
        v12 = v10;
      }

      v26[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v14 = [v8 errorWithDomain:v9 code:v3 userInfo:v13];
      completionHandler[2](completionHandler, v14);

      v7 = 0x1E695D000;
    }

    else
    {
      completionHandler[2](self->_completionHandler, 0);
    }

    v15 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v23[0] = @"_cat";
  v23[1] = @"_op";
  v24[0] = @"PINPair";
  v24[1] = @"Done";
  v23[2] = @"error";
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v24[2] = v16;
  v23[3] = @"ms";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  v24[3] = v17;
  v18 = [*(v7 + 3872) dictionaryWithObjects:v24 forKeys:v23 count:4];
  SFDashboardLogJSON(v18);

  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    v20 = heartbeatTimer;
    dispatch_source_cancel(v20);
    v21 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  [(SFPINPairSession *)self _cleanup];
  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)_hearbeatTimer
{
  mach_absolute_time();
  v3 = UpTicksToMilliseconds();
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [(SFPINPairSession *)v3 _hearbeatTimer];
  }

  if (self->_pairSetupWaitingForUser || v3 >> 3 < 0x753)
  {
    if (self->_sfSessionActivated)
    {

      [(SFPINPairSession *)self _clientHeartbeatSend];
    }
  }

  else
  {
    if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [(SFPINPairSession *)v3 _hearbeatTimer];
    }

    heartbeatTimer = self->_heartbeatTimer;
    if (heartbeatTimer)
    {
      v5 = heartbeatTimer;
      dispatch_source_cancel(v5);
      v6 = self->_heartbeatTimer;
      self->_heartbeatTimer = 0;
    }

    [(SFPINPairSession *)self _completed:4294960574];
  }
}

- (void)_clientRun
{
  v8[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientStarted)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFPINPairSession *)v3 _clientRun];
      }
    }

    [(SFPINPairSession *)self _cleanup];
    UUIDGet();
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:16];
    clientSessionUUID = self->_clientSessionUUID;
    self->_clientSessionUUID = v6;

    self->_clientStarted = 1;
  }

  if (!self->_sfSession)
  {
    [(SFPINPairSession *)self _clientSFSessionStart];
    return;
  }

  if (self->_sfSessionActivated)
  {
    if (self->_pairVerifySession)
    {
      if (!self->_pairVerifyDone)
      {
        if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
        {
          [SFPINPairSession _clientRun];
        }

        return;
      }
    }

    else if (!self->_pairVerifyDone)
    {
      [(SFPINPairSession *)self _clientPairVerify:0 start:1];
      return;
    }

    if (self->_pairSetupSession)
    {
      if (!self->_pairSetupDone && gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
      {
        [SFPINPairSession _clientRun];
      }
    }

    else if (!self->_pairSetupDone)
    {
      [(SFPINPairSession *)self _clientPairSetup:0 start:1];
    }
  }

  else if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _clientRun];
  }
}

- (void)_clientHeartbeatSend
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (self->_heartbeatSending)
  {
    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFPINPairSession *)self _clientHeartbeatSend];
      }
    }
  }

  else
  {
    selfCopy = self;
    self->_heartbeatSending = 1;
    v4 = objc_alloc_init(SFRequestMessage);
    v8[0] = @"op";
    v8[1] = @"sid";
    clientSessionUUID = selfCopy->_clientSessionUUID;
    v9[0] = &unk_1F1D7D078;
    v9[1] = clientSessionUUID;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [(SFMessage *)v4 setHeaderFields:v6];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__SFPINPairSession__clientHeartbeatSend__block_invoke;
    v7[3] = &unk_1E78902C0;
    v7[4] = selfCopy;
    [(SFRequestMessage *)v4 setResponseHandler:v7];
    [(SFSession *)selfCopy->_sfSession sendRequest:v4];
  }
}

void __40__SFPINPairSession__clientHeartbeatSend__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientHeartbeatSend]_block_invoke", 30, "Heartbeat response %@, error %{error}\n", v5, v6);
  }

  *(*(a1 + 32) + 32) = mach_absolute_time();
  *(*(a1 + 32) + 48) = 0;
}

- (void)_clientSFSessionStart
{
  selfCopy = self;
  if (gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFPINPairSession *)self _clientSFSessionStart];
    }
  }

  [(SFSession *)selfCopy->_sfSession invalidate];
  v4 = objc_alloc_init(SFSession);
  sfSession = selfCopy->_sfSession;
  selfCopy->_sfSession = v4;

  [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
  [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.PINPair"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__SFPINPairSession__clientSFSessionStart__block_invoke;
  v9[3] = &unk_1E788B238;
  v9[4] = selfCopy;
  [(SFSession *)selfCopy->_sfSession setErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SFPINPairSession__clientSFSessionStart__block_invoke_2;
  v8[3] = &unk_1E788B198;
  v8[4] = selfCopy;
  [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v8];
  [(SFSession *)selfCopy->_sfSession setInvalidationHandler:&__block_literal_global_61];
  v6 = selfCopy->_sfSession;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SFPINPairSession__clientSFSessionStart__block_invoke_4;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFSession *)v6 activateWithCompletion:v7];
}

void __41__SFPINPairSession__clientSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFPINPairSession <= 90)
  {
    if (gLogCategory_SFPINPairSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __41__SFPINPairSession__clientSFSessionStart__block_invoke_cold_1(v3);
    }
  }

  [*(a1 + 32) _completed:NSErrorToOSStatus()];
}

uint64_t __41__SFPINPairSession__clientSFSessionStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFPINPairSession <= 60)
  {
    if (gLogCategory_SFPINPairSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __41__SFPINPairSession__clientSFSessionStart__block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _completed:4294960534];
}

uint64_t __41__SFPINPairSession__clientSFSessionStart__block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession != -1)
    {
      return __41__SFPINPairSession__clientSFSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __41__SFPINPairSession__clientSFSessionStart__block_invoke_3_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __41__SFPINPairSession__clientSFSessionStart__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFPINPairSession <= 90)
    {
      if (gLogCategory_SFPINPairSession != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
      {
        __41__SFPINPairSession__clientSFSessionStart__block_invoke_4_cold_1(v6);
      }
    }

    [*(a1 + 32) _completed:NSErrorToOSStatus()];
  }

  else
  {
    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __41__SFPINPairSession__clientSFSessionStart__block_invoke_4_cold_2(v3, v4, v5);
      }
    }

    *(*(a1 + 32) + 88) = 1;
    [*(a1 + 32) _clientRun];
  }
}

- (void)_clientPairVerify:(id)verify start:(BOOL)start
{
  startCopy = start;
  v28[3] = *MEMORY[0x1E69E9840];
  verifyCopy = verify;
  v9 = verifyCopy;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (startCopy)
  {
    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (verifyCopy = _LogCategory_Initialize(), verifyCopy))
      {
        [(SFPINPairSession *)verifyCopy _clientPairVerify:v7 start:v8];
      }
    }

    pairVerifySession = self->_pairVerifySession;
    if (pairVerifySession)
    {
      CFRelease(pairVerifySession);
      self->_pairVerifySession = 0;
    }

    v11 = PairingSessionCreate();
    v26 = v11;
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_34;
    }

    PairingSessionSetFlags();
    PairingSessionSetLogging();
    if ([(SFDevice *)self->_peerDevice osVersion]>= 9)
    {
      PairingSessionSetACL();
    }
  }

  else
  {
    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (verifyCopy = _LogCategory_Initialize(), verifyCopy))
      {
        [(SFPINPairSession *)verifyCopy _clientPairVerify:v7 start:v8];
      }
    }

    if (!self->_pairVerifySession)
    {
      v12 = 0;
      v13 = 0;
      v11 = 4294960551;
LABEL_54:
      v26 = v11;
      goto LABEL_34;
    }
  }

  if (v9)
  {
    headerFields = [v9 headerFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v26 = Int64Ranged;

    if (Int64Ranged)
    {
      if (gLogCategory_SFPINPairSession <= 30)
      {
        if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
        {
          [SFPINPairSession _clientPairVerify:? start:?];
        }

        goto LABEL_51;
      }

LABEL_52:
      v13 = 0;
      v12 = 0;
      goto LABEL_40;
    }

    headerFields2 = [v9 headerFields];
    CFDataGetTypeID();
    v12 = CFDictionaryGetTypedValue();

    if (!v12)
    {
      v26 = -6762;
      if (gLogCategory_SFPINPairSession <= 60)
      {
        if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
        {
          [SFPINPairSession _clientPairVerify:start:];
        }

LABEL_51:
        v13 = 0;
        v12 = 0;
        goto LABEL_33;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v12 = 0;
  }

  [v12 bytes];
  [v12 length];
  v17 = PairingSessionExchange();
  v26 = v17;
  if (v23 && !v17)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairVerify:start:];
    }

    [(SFPINPairSession *)self _completed:0];
    goto LABEL_27;
  }

  if (v17)
  {
LABEL_27:
    v13 = 0;
    goto LABEL_33;
  }

  if (!v25)
  {
    v13 = 0;
    v11 = 4294960534;
    goto LABEL_54;
  }

  v13 = objc_alloc_init(SFRequestMessage);
  v18 = &unk_1F1D7D0A8;
  if (startCopy)
  {
    v18 = &unk_1F1D7D090;
  }

  v28[0] = v18;
  v27[0] = @"op";
  v27[1] = @"pd";
  v19 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v25 length:v24 freeWhenDone:1];
  v27[2] = @"sid";
  clientSessionUUID = self->_clientSessionUUID;
  v28[1] = v19;
  v28[2] = clientSessionUUID;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
  [(SFMessage *)v13 setHeaderFields:v21];

  v25 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __44__SFPINPairSession__clientPairVerify_start___block_invoke;
  v22[3] = &unk_1E78902C0;
  v22[4] = self;
  [(SFRequestMessage *)v13 setResponseHandler:v22];
  [(SFSession *)self->_sfSession sendRequest:v13];
LABEL_33:
  v11 = v26;
  if (!v26)
  {
    goto LABEL_41;
  }

LABEL_34:
  if (gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_40;
      }

      v11 = v26;
    }

    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientPairVerify:start:]", 30, "PairVerify failed (not paired): %#m\n", v11);
  }

LABEL_40:
  self->_pairVerifyDone = 1;
  [(SFPINPairSession *)self _clientRun];
LABEL_41:
  if (v25)
  {
    free(v25);
  }
}

void __44__SFPINPairSession__clientPairVerify_start___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientPairVerify:start:]_block_invoke", 30, "PairVerify response %@, error %{error}\n", v5, v6);
  }

  if (v6 || !v5)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      __44__SFPINPairSession__clientPairVerify_start___block_invoke_cold_1(v6);
    }

    *(*(a1 + 32) + 65) = 1;
    [*(a1 + 32) _clientRun];
  }

  else
  {
    [*(a1 + 32) _clientPairVerify:v5 start:0];
  }
}

- (void)_clientPairSetup:(id)setup start:(BOOL)start
{
  startCopy = start;
  v34[3] = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v9 = setupCopy;
  Int64Ranged = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if (startCopy)
  {
    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (setupCopy = _LogCategory_Initialize(), setupCopy))
      {
        [(SFPINPairSession *)setupCopy _clientPairSetup:v7 start:v8];
      }
    }

    v26 = 0;
    v28 = 0u;
    v27 = 0u;
    v24 = 0u;
    v23[5] = self;
    v25 = _clientPairSetupPromptForPIN;
    pairSetupSession = self->_pairSetupSession;
    if (pairSetupSession)
    {
      CFRelease(pairSetupSession);
      self->_pairSetupSession = 0;
    }

    v11 = PairingSessionCreate();
    Int64Ranged = v11;
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
LABEL_38:
      if (gLogCategory_SFPINPairSession <= 60)
      {
        if (gLogCategory_SFPINPairSession != -1 || (v22 = _LogCategory_Initialize(), v12 = Int64Ranged, v22))
        {
          LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientPairSetup:start:]", 60, "### PairSetup failed: %#m\n", v12);
          v12 = Int64Ranged;
        }
      }

      goto LABEL_42;
    }

    PairingSessionSetFlags();
    PairingSessionSetLogging();
    if ([(SFDevice *)self->_peerDevice osVersion]>= 9)
    {
      PairingSessionSetACL();
    }
  }

  else
  {
    if (!self->_pairSetupSession)
    {
      v13 = 0;
      v14 = 0;
      v12 = 4294960551;
      goto LABEL_58;
    }

    if (gLogCategory_SFPINPairSession <= 30)
    {
      if (gLogCategory_SFPINPairSession != -1 || (setupCopy = _LogCategory_Initialize(), setupCopy))
      {
        [(SFPINPairSession *)setupCopy _clientPairSetup:v7 start:v8];
      }
    }
  }

  if (!v9)
  {
    v13 = 0;
    goto LABEL_24;
  }

  headerFields = [v9 headerFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v12 = Int64Ranged;
  if (Int64Ranged)
  {
    if (gLogCategory_SFPINPairSession > 60)
    {
      goto LABEL_52;
    }

    if (gLogCategory_SFPINPairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_61;
      }

      v12 = Int64Ranged;
    }

    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientPairSetup:start:]", 60, "### PairSetup response error: %#m\n", v12);
LABEL_61:
    v14 = 0;
    v13 = 0;
    goto LABEL_37;
  }

  headerFields2 = [v9 headerFields];
  CFDataGetTypeID();
  v13 = CFDictionaryGetTypedValue();

  if (!v13)
  {
    v12 = 4294960534;
    Int64Ranged = -6762;
    if (gLogCategory_SFPINPairSession <= 60)
    {
      if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
      {
        [SFPINPairSession _clientPairSetup:start:];
      }

      goto LABEL_61;
    }

LABEL_52:
    v14 = 0;
    v13 = 0;
LABEL_42:
    [(SFPINPairSession *)self _completed:v12];
    goto LABEL_43;
  }

LABEL_24:
  [v13 bytes];
  [v13 length];
  v17 = PairingSessionExchange();
  Int64Ranged = v17;
  if (v29 && !v17)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairSetup:start:];
    }

    [(SFPINPairSession *)self _completed:Int64Ranged];
    goto LABEL_30;
  }

  if (v17 != -6771)
  {
    if (v17)
    {
LABEL_30:
      v14 = 0;
      goto LABEL_37;
    }

    if (v31)
    {
      v14 = objc_alloc_init(SFRequestMessage);
      v18 = &unk_1F1D7D0D8;
      if (startCopy)
      {
        v18 = &unk_1F1D7D0C0;
      }

      v34[0] = v18;
      v33[0] = @"op";
      v33[1] = @"pd";
      v19 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v31 length:v30 freeWhenDone:1];
      v33[2] = @"sid";
      clientSessionUUID = self->_clientSessionUUID;
      v34[1] = v19;
      v34[2] = clientSessionUUID;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
      [(SFMessage *)v14 setHeaderFields:v21];

      v31 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __43__SFPINPairSession__clientPairSetup_start___block_invoke;
      v23[3] = &unk_1E78902C0;
      v23[4] = self;
      [(SFRequestMessage *)v14 setResponseHandler:v23];
      [(SFSession *)self->_sfSession sendRequest:v14];
LABEL_37:
      v12 = Int64Ranged;
      if (!Int64Ranged)
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    }

    v14 = 0;
    v12 = 4294960534;
LABEL_58:
    Int64Ranged = v12;
    goto LABEL_38;
  }

  Int64Ranged = 0;
  if (gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
    {
      [SFPINPairSession _clientPairSetup:start:];
    }

    goto LABEL_30;
  }

  v14 = 0;
LABEL_43:
  if (v31)
  {
    free(v31);
  }
}

void __43__SFPINPairSession__clientPairSetup_start___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientPairSetup:start:]_block_invoke", 30, "PairSetup response %@, error %{error}\n", v5, v8);
  }

  v6 = v8;
  if (v8 || !v5)
  {
    if (gLogCategory_SFPINPairSession <= 60)
    {
      if (gLogCategory_SFPINPairSession != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
      {
        __43__SFPINPairSession__clientPairSetup_start___block_invoke_cold_1(v6);
      }
    }

    [*(a1 + 32) _completed:NSErrorToOSStatus()];
  }

  else
  {
    [*(a1 + 32) _clientPairSetup:v5 start:0];
  }
}

- (void)clientTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SFPINPairSession_clientTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_clientTryPIN:(id)n
{
  nCopy = n;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [(SFPINPairSession *)nCopy _clientTryPIN:v4];
  }

  self->_pairSetupWaitingForUser = 0;
  if (self->_pairSetupSession)
  {
    [(__CFString *)nCopy UTF8String];
    v5 = PairingSessionSetSetupCode();
    if (!v5)
    {
      [(SFPINPairSession *)self _clientPairSetup:0 start:0];
      goto LABEL_7;
    }

    v6 = v5;
  }

  else
  {
    v6 = 4294960551;
  }

  [(SFPINPairSession *)self _clientTryPIN:v6];
LABEL_7:
}

- (void)handleServerRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFPINPairSession_handleServerRequest___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleServerRequest:(id)request
{
  requestCopy = request;
  headerFields = [requestCopy headerFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [(SFPINPairSession *)Int64Ranged _handleServerRequest:requestCopy];
  }

  if (Int64Ranged > 2u)
  {
    if (Int64Ranged != 3)
    {
      if (Int64Ranged == 4)
      {
        selfCopy2 = self;
        v8 = requestCopy;
        v9 = 1;
        goto LABEL_15;
      }

      if (Int64Ranged == 5)
      {
        selfCopy2 = self;
        v8 = requestCopy;
        v9 = 0;
LABEL_15:
        [(SFPINPairSession *)selfCopy2 handleServerPairSetup:v8 reset:v9];
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    selfCopy4 = self;
    v11 = requestCopy;
    v12 = 0;
LABEL_13:
    [(SFPINPairSession *)selfCopy4 handleServerPairVerify:v11 reset:v12];
    goto LABEL_20;
  }

  if (Int64Ranged == 1)
  {
    [(SFPINPairSession *)self handleServerHeartbeat:requestCopy];
    goto LABEL_20;
  }

  if (Int64Ranged == 2)
  {
    selfCopy4 = self;
    v11 = requestCopy;
    v12 = 1;
    goto LABEL_13;
  }

LABEL_17:
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _handleServerRequest:?];
  }

LABEL_20:
}

- (void)handleServerHeartbeat:(id)heartbeat
{
  heartbeatCopy = heartbeat;
  self->_heartbeatLastTicks = mach_absolute_time();
  v5 = [[SFResponseMessage alloc] initWithRequestMessage:heartbeatCopy];

  [(SFService *)self->_sfService sendResponse:v5];
}

- (void)handleServerPairVerify:(id)verify reset:(BOOL)reset
{
  v18[1] = *MEMORY[0x1E69E9840];
  verifyCopy = verify;
  v16 = 0;
  pairVerifySession = self->_pairVerifySession;
  if (reset)
  {
    if (pairVerifySession)
    {
      CFRelease(pairVerifySession);
      self->_pairVerifySession = 0;
    }
  }

  else if (pairVerifySession)
  {
    goto LABEL_11;
  }

  v8 = PairingSessionCreate();
  v16 = v8;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  PairingSessionSetFlags();
  PairingSessionSetLogging();
LABEL_11:
  headerFields = [verifyCopy headerFields];
  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();

  if (v10)
  {
    [v10 bytes];
    [v10 length];
    v16 = PairingSessionExchange();
    v9 = [[SFResponseMessage alloc] initWithRequestMessage:verifyCopy];
    v12 = v16;
    if (v16)
    {
      if (gLogCategory_SFPINPairSession <= 30)
      {
        if (gLogCategory_SFPINPairSession != -1 || (v13 = _LogCategory_Initialize(), v12 = v16, v13))
        {
          LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairVerify:reset:]", 30, "PairVerify failed: %#m\n", v12);
          v12 = v16;
        }
      }

      v17 = @"err";
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      v18[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(SFMessage *)v9 setHeaderFields:v15];

      [(SFService *)self->_sfService sendResponse:v9];
      v16 = 0;
      goto LABEL_21;
    }

    v8 = 4294960534;
    v16 = -6762;
  }

  else
  {
    v9 = 0;
    if (([SFPINPairSession handleServerPairVerify:? reset:?]& 1) != 0)
    {
      v10 = 0;
      goto LABEL_21;
    }

    v8 = v16;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

LABEL_7:
  if (gLogCategory_SFPINPairSession <= 60)
  {
    if (gLogCategory_SFPINPairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v8 = v16;
    }

    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairVerify:reset:]", 60, "### PairVerify failed: %#m\n", v8);
  }

LABEL_21:
}

- (void)handleServerPairSetup:(id)setup reset:(BOOL)reset
{
  v29[1] = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  pairSetupSession = self->_pairSetupSession;
  if (reset || !pairSetupSession)
  {
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18[0] = self;
    v18[1] = _handleServerPairSetupShowPIN;
    v18[2] = _handleServerPairSetupHidePIN;
    if (pairSetupSession)
    {
      CFRelease(pairSetupSession);
      self->_pairSetupSession = 0;
    }

    v8 = PairingSessionCreate();
    v25 = v8;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
LABEL_7:
      if (gLogCategory_SFPINPairSession > 60)
      {
        goto LABEL_23;
      }

      if (gLogCategory_SFPINPairSession != -1)
      {
        goto LABEL_9;
      }

      if (_LogCategory_Initialize())
      {
        v8 = v25;
LABEL_9:
        LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairSetup:reset:]", 60, "### PairSetup failed: %#m\n", v8);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    PairingSessionSetFlags();
    PairingSessionSetLogging();
    PairingSessionSetACL();
  }

  headerFields = [setupCopy headerFields];
  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();

  if (v10)
  {
    [v10 bytes];
    [v10 length];
    v25 = PairingSessionExchange();
    v9 = [[SFResponseMessage alloc] initWithRequestMessage:setupCopy];
    v12 = v25;
    if (v25)
    {
      if (gLogCategory_SFPINPairSession <= 60)
      {
        if (gLogCategory_SFPINPairSession != -1 || (v15 = _LogCategory_Initialize(), v12 = v25, v15))
        {
          LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairSetup:reset:]", 60, "## PairSetup failed: %#m\n", v12);
          v12 = v25;
        }
      }

      v28 = @"err";
      v16 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      v29[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      [(SFMessage *)v9 setHeaderFields:v17];
    }

    else
    {
      if (!v24)
      {
        v8 = 4294960534;
        v25 = -6762;
        goto LABEL_7;
      }

      v26 = @"pd";
      v13 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v24 length:v23 freeWhenDone:1];
      v27 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [(SFMessage *)v9 setHeaderFields:v14];

      v24 = 0;
    }

    [(SFService *)self->_sfService sendResponse:v9];
    v25 = 0;
    goto LABEL_23;
  }

  if (([SFPINPairSession handleServerPairSetup:v18 reset:?]& 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  v10 = v18[0];
  v9 = 0;
  v8 = v25;
  if (v25)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v24)
  {
    free(v24);
  }
}

- (uint64_t)_activate
{
  if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _activate]", 60, "### No peer device or service\n");
  }

  return [self _completed:4294960591];
}

- (uint64_t)_clientTryPIN:(__CFString *)a1 .cold.1(__CFString *a1, uint64_t a2)
{
  v3 = IsAppleInternalBuild();
  v4 = @"*";
  if (v3)
  {
    v4 = a1;
  }

  return LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientTryPIN:]", 30, "Try PIN %@\n", v4);
}

- (uint64_t)_clientTryPIN:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _clientTryPIN:]", 60, "### TryPIN failed: %#m\n", a2);
  }

  return [a1 _completed:a2];
}

- (uint64_t)_handleServerRequest:(uint64_t)a3 .cold.1(unsigned __int8 a1, char a2, uint64_t a3)
{
  if (a1 > 5u)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E78902E0[a2 & 7];
  }

  return LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _handleServerRequest:]", 30, "Handle server request %s: %@\n", v5, a3, v3, v4);
}

- (unsigned)_handleServerRequest:(unsigned int *)result .cold.2(unsigned int *result, uint64_t a2)
{
  if (gLogCategory_SFPINPairSession > 90)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_SFPINPairSession == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      goto LABEL_5;
    }

    a2 = *v2;
  }

  result = LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _handleServerRequest:]", 90, "### No request opcode: %#m\n", a2);
LABEL_5:
  v3 = *v2;
  if (v3 && gLogCategory_SFPINPairSession <= 60)
  {
    if (gLogCategory_SFPINPairSession != -1)
    {
      return LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _handleServerRequest:]", 60, "### Server request error: %#m\n", v3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *v2;
      return LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession _handleServerRequest:]", 60, "### Server request error: %#m\n", v3);
    }
  }

  return result;
}

- (uint64_t)handleServerPairVerify:(unsigned int *)a1 reset:(uint64_t)a2 .cold.1(unsigned int *a1, uint64_t a2)
{
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  if (gLogCategory_SFPINPairSession != -1)
  {
LABEL_3:
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairVerify:reset:]", 60, "### PairVerify request no pairing data: %#m\n", a2);
    return 0;
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    a2 = *a1;
    goto LABEL_3;
  }

  return result;
}

- (uint64_t)handleServerPairVerify:(_DWORD *)a1 reset:.cold.2(_DWORD *a1)
{
  *a1 = -6762;
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  if (gLogCategory_SFPINPairSession != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairVerify:reset:]", 60, "### PairVerify request no pairing data?\n", v1, v2);
    return 0;
  }

  return result;
}

- (uint64_t)handleServerPairSetup:(uint64_t)a3 reset:(void *)a4 .cold.1(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  if (gLogCategory_SFPINPairSession == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_6;
    }

    a2 = *a1;
  }

  LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairSetup:reset:]", 60, "### PairSetup request no pairing data: %#m\n", a2);
LABEL_6:
  result = 0;
  *a4 = a3;
  return result;
}

- (uint64_t)handleServerPairSetup:(_DWORD *)a1 reset:(void *)a2 .cold.2(_DWORD *a1, void *a2)
{
  *a1 = -6762;
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  v8 = v2;
  if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "[SFPINPairSession handleServerPairSetup:reset:]", 60, "### PairSetup request no pairing data?\n", v3, v8, v4, v5);
  }

  result = 0;
  *a2 = 0;
  return result;
}

@end