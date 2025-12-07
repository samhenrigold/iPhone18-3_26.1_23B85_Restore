@interface SFDeviceSetupServiceiOS
- (SFDeviceSetupServiceiOS)init;
- (int)_runResumeIfNeeded;
- (void)_cleanup;
- (void)_completed:(int)_completed;
- (void)_handleAppEventReceived:(id)received;
- (void)_handleConfigRequestReceived:(id)received;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionSecured:(id)secured;
- (void)_handleSessionStarted:(id)started;
- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler;
- (void)_handleSetupActionResume;
- (void)_handleSetupActionSuspend;
- (void)_invalidated;
- (void)_receivedObject:(id)object flags:(unsigned int)flags;
- (void)_run;
- (void)_sfServiceStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)sendObject:(id)object;
- (void)sendSetupAction:(unsigned int)action info:(id)info responseHandler:(id)handler;
@end

@implementation SFDeviceSetupServiceiOS

- (SFDeviceSetupServiceiOS)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceSetupServiceiOS;
  v2 = [(SFDeviceSetupServiceiOS *)&v6 init];
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
    [(SFDeviceSetupServiceiOS *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupServiceiOS *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupServiceiOS;
    [(SFDeviceSetupServiceiOS *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  showPINHandlerEx = self->_showPINHandlerEx;
  self->_showPINHandlerEx = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;

  progressHandlerEx = self->_progressHandlerEx;
  self->_progressHandlerEx = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupServiceiOS_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupServiceiOS_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __35__SFDeviceSetupServiceiOS_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  *(*(v3 + 32) + 9) = CFPrefs_GetInt64() != 0;
  v4 = *(v3 + 32);
  if (!v4[4])
  {
    v5 = objc_alloc_init(SFClient);
    v6 = *(v3 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    [*(*(v3 + 32) + 32) preventExitForLocaleReason:@"iOSSetup"];
    v4 = *(v3 + 32);
  }

  return [v4 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupServiceiOS_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupServiceiOS_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 10) & 1) == 0 && gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFDeviceSetupServiceiOS_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 10) = 1;
  v4 = *(v3 + 32);
  if (*(v4 + 80))
  {
    [v4 _handleSessionEnded:?];
    v4 = *(v3 + 32);
  }

  [*(v4 + 32) invalidate];
  v5 = *(v3 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  [*(*(v3 + 32) + 64) invalidate];
  *(*(v3 + 32) + 72) = 0;
  v7 = *(v3 + 32);

  return [v7 _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFDeviceSetupServiceiOSCore <= 60)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFDeviceSetupServiceiOS *)v3 _invalidated];
      }
    }

    if (!self->_sfService)
    {
      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, 0);
      }

      _cleanup = [(SFDeviceSetupServiceiOS *)self _cleanup];
      self->_invalidateDone = 1;
      if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
      {
        if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (_cleanup = _LogCategory_Initialize(), _cleanup))
        {
          [(SFDeviceSetupServiceiOS *)_cleanup _invalidated];
        }
      }
    }
  }
}

- (void)_completed:(int)_completed
{
  v3 = *&_completed;
  v19[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _completed:v3];
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    if (v3)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A768];
      v18 = *MEMORY[0x1E696A578];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v9 = v8;
      v10 = @"?";
      if (v8)
      {
        v10 = v8;
      }

      v19[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v12 = [v6 errorWithDomain:v7 code:v3 userInfo:v11];
      completionHandler[2](completionHandler, v12);
    }

    else
    {
      completionHandler[2](self->_completionHandler, 0);
    }

    v13 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v16[0] = @"_cat";
  v16[1] = @"_op";
  v17[0] = @"iOSSetup";
  v17[1] = @"Done";
  v16[2] = @"error";
  v14 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v17[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  SFDashboardLogJSON(v15);

  [(SFDeviceSetupServiceiOS *)self _cleanup];
}

- (void)_run
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _run]", a3, "Service not activated yet\n");
  }
}

- (int)_runResumeIfNeeded
{
  resumeState = self->_resumeState;
  if (resumeState)
  {
    return resumeState;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69994A8]);
  [v4 setAccessGroup:@"com.apple.Sharing"];
  [v4 setAccessibleType:7];
  [v4 setIdentifier:@"SetupResumeKey"];
  [v4 setSyncType:1];
  [v4 setType:@"SetupResumeKey"];
  v5 = objc_alloc_init(MEMORY[0x1E69994B0]);
  v17 = 0;
  v6 = [v5 copyItemMatchingItem:v4 flags:1 error:&v17];
  v7 = v17;
  v8 = v7;
  if (!v6)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupServiceiOS *)v8 _runResumeIfNeeded];
    }

    resumeState = 2;
    self->_resumeState = 2;

    goto LABEL_21;
  }

  v16 = v7;
  v9 = [v5 removeItemMatchingItem:v6 error:&v16];
  v10 = v16;

  if ((v9 & 1) == 0 && gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupServiceiOS *)v10 _runResumeIfNeeded];
  }

  secrets = [v6 secrets];
  v12 = CFDictionaryGetCFDataOfLength();

  if (!v12)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _runResumeIfNeeded];
    }

    resumeState = 2;
    self->_resumeState = 2;

LABEL_21:
    return resumeState;
  }

  secrets2 = [v6 secrets];
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();

  if (v14)
  {
    objc_storeStrong(&self->_resumeAuthTag, v12);
    objc_storeStrong(&self->_resumePassword, v14);
    self->_resumeState = 4;
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupServiceiOS *)&self->_resumePassword _runResumeIfNeeded];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _runResumeIfNeeded];
    }

    self->_resumeState = 2;
  }

  if (v14)
  {
    return self->_resumeState;
  }

  else
  {
    return 2;
  }
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupServiceiOS *)self _sfServiceStart];
    }
  }

  [(SFService *)selfCopy->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v4;

  if (selfCopy->_advertiseFast)
  {
    [(SFService *)selfCopy->_sfService setAdvertiseRate:50];
  }

  [(SFService *)selfCopy->_sfService setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)selfCopy->_sfService setIdentifier:@"com.apple.sharing.iOSSetup"];
  [(SFService *)selfCopy->_sfService setNeedsSetup:1];
  [(SFService *)selfCopy->_sfService setDeviceActionType:9];
  [(SFService *)selfCopy->_sfService setSessionFlags:1];
  if (selfCopy->_resumeAuthTag)
  {
    [(SFService *)selfCopy->_sfService setAuthTagOverride:?];
    [(SFService *)selfCopy->_sfService setSessionFlags:[(SFService *)selfCopy->_sfService sessionFlags]| 0x80];
  }

  [(SFService *)selfCopy->_sfService setInterruptionHandler:&__block_literal_global_50];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_2;
  v14[3] = &unk_1E788B198;
  v14[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setInvalidationHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_3;
  v13[3] = &unk_1E788B238;
  v13[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setPairSetupCompletionHandler:v13];
  [(SFService *)selfCopy->_sfService setPeerDisconnectedHandler:&__block_literal_global_185_0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_5;
  v12[3] = &unk_1E788FA78;
  v12[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setShowPINHandlerEx:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_6;
  v11[3] = &unk_1E788FAA0;
  v11[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setReceivedObjectHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7;
  v10[3] = &unk_1E788CA68;
  v10[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionStartedHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8;
  v9[3] = &unk_1E788CA90;
  v9[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionEndedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9;
  v8[3] = &unk_1E788CA68;
  v8[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionSecuredHandler:v8];
  v6 = selfCopy->_sfService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFService *)v6 activateWithCompletion:v7];
}

uint64_t __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1)
    {
      return __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_cold_1(result, a2, a3);
    }
  }

  return result;
}

uint64_t __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = 0;

  v6 = *(v3 + 32);

  return [v6 _invalidated];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v7 = v3;
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v3 = _LogCategory_Initialize(), v5 = v7, v3))
      {
        __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_3_cold_1(v3, v5, v4);
        v5 = v7;
      }
    }

    *(*(a1 + 32) + 24) = 0;
    v6 = *(*(a1 + 32) + 136);
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
      v5 = v7;
    }
  }
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _sfServiceStart]_block_invoke_4", 50, "Peer disconnected %@: %{error}\n", v5, v4);
  }
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v6 = _LogCategory_Initialize(), v5 = v10, v6))
    {
      __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_5_cold_1(v5, a2);
      v5 = v10;
    }
  }

  *(*(a1 + 32) + 24) = 1;
  v7 = *(a1 + 32);
  v8 = *(v7 + 120);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v10);
  }

  else
  {
    v9 = *(v7 + 128);
    if (!v9)
    {
      goto LABEL_9;
    }

    (*(v9 + 16))(v9, v5);
  }

  v5 = v10;
LABEL_9:
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7_cold_1(v7);
  }

  v3 = *(a1 + 32);
  if (!v3[2])
  {
    v4 = [v7 peer];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(a1 + 32);
  }

  [v3 _handleSessionStarted:v7];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8_cold_1(v10, v5);
  }

  v6 = *(*(a1 + 32) + 16);
  v7 = [v10 peer];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;
  }

  [*(a1 + 32) _handleSessionEnded:v10];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _handleSessionSecured:v3];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
      {
        __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10_cold_1(v6);
      }
    }

    [*(a1 + 32) _completed:NSErrorToOSStatus()];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10_cold_2(v3, v4, v5);
      }
    }

    *(*(a1 + 32) + 72) = 1;
    [*(a1 + 32) _run];
  }
}

- (void)_receivedObject:(id)object flags:(unsigned int)flags
{
  v4 = *&flags;
  objectCopy = object;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _receivedObject:objectCopy flags:v4];
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged > 4)
  {
    if (Int64Ranged != 5)
    {
      if (Int64Ranged == 12)
      {
        [(SFDeviceSetupServiceiOS *)self _handleAppEventReceived:objectCopy];
        goto LABEL_29;
      }

LABEL_18:
      if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _receivedObject:flags:]", 50, "### Ignoring unsupported opcode 0x%02X: %#m\n", Int64Ranged);
      }

      goto LABEL_29;
    }

    if (v4)
    {
      receivedObjectHandler = self->_receivedObjectHandler;
      if (receivedObjectHandler)
      {
        receivedObjectHandler[2](receivedObjectHandler, objectCopy);
      }
    }

    else
    {
      [SFDeviceSetupServiceiOS _receivedObject:objectCopy flags:?];
    }
  }

  else
  {
    if (Int64Ranged != 1)
    {
      if (Int64Ranged == 3)
      {
        if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupServiceiOS _receivedObject:flags:];
        }

        v8 = self->_receivedObjectHandler;
        if (v8)
        {
          v8[2](v8, objectCopy);
        }

        progressHandlerEx = self->_progressHandlerEx;
        if (progressHandlerEx)
        {
          progressHandlerEx[2](progressHandlerEx, 40, objectCopy);
        }

        [(SFService *)self->_sfService sendToPeer:self->_peer flags:v4 object:&unk_1F1D7D448];
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v4)
    {
      [(SFDeviceSetupServiceiOS *)self _handleConfigRequestReceived:objectCopy];
      if (CFDictionaryGetInt64())
      {
        v10 = self->_progressHandlerEx;
        if (v10)
        {
          v10[2](v10, 96, 0);
        }
      }
    }

    else
    {
      [SFDeviceSetupServiceiOS _receivedObject:objectCopy flags:?];
    }
  }

LABEL_29:
}

- (void)sendObject:(id)object
{
  objectCopy = object;
  v10 = objectCopy;
  if (self->_sfService)
  {
    v7 = objectCopy;
    if (self->_peer)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
      {
        if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v8 = _LogCategory_Initialize(), v7 = v10, v8))
        {
          [SFDeviceSetupServiceiOS sendObject:v7];
          v7 = v10;
        }
      }

      v9 = [v7 mutableCopy];
      [v9 setObject:&unk_1F1D7CF28 forKeyedSubscript:@"op"];
      [(SFService *)self->_sfService sendToPeer:self->_peer flags:1 object:v9];
    }

    else
    {
      [gLogCategory_SFDeviceSetupServiceiOSCore sendObject:objectCopy, v6];
    }
  }

  else
  {
    [(SFDeviceSetupServiceiOS *)objectCopy sendObject:v5, v6];
  }
}

- (void)sendSetupAction:(unsigned int)action info:(id)info responseHandler:(id)handler
{
  v6 = *&action;
  infoCopy = info;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (self->_sfSession)
  {
    v10 = _Block_copy(handlerCopy);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &__block_literal_global_223_0;
    }

    if (infoCopy)
    {
      v12 = [infoCopy mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v13 = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [v13 setObject:v14 forKeyedSubscript:@"sa"];

    [(SFSession *)self->_sfSession sendRequestID:@"_sa" options:&unk_1F1D7D470 request:v13 responseHandler:v11];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_12;
    }

    v11 = NSErrorWithOSStatusF(4294960551, "No session");
    (v9)[2](v9, v11, 0, 0);
  }

LABEL_12:
}

- (void)_handleSessionStarted:(id)started
{
  v22[1] = *MEMORY[0x1E69E9840];
  startedCopy = started;
  p_sfSession = &self->_sfSession;
  if (self->_sfSession)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupServiceiOS *)startedCopy _handleSessionStarted:?];
    }

    goto LABEL_33;
  }

  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _handleSessionStarted:startedCopy];
  }

  objc_storeStrong(&self->_sfSession, started);
  resumePassword = self->_resumePassword;
  if (resumePassword)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v12 = _LogCategory_Initialize(), resumePassword = self->_resumePassword, v12))
      {
        LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _handleSessionStarted:]", 50, "Enable Resume: %{mask}\n", resumePassword);
        resumePassword = self->_resumePassword;
      }
    }

    v11 = *p_sfSession;
  }

  else
  {
    sharingSourceVersion = [*p_sfSession sharingSourceVersion];
    if (sharingSourceVersion < 0x89A260)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupServiceiOS _handleSessionStarted:?];
      }

      goto LABEL_25;
    }

    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (sharingSourceVersion = _LogCategory_Initialize(), sharingSourceVersion))
      {
        [(SFDeviceSetupServiceiOS *)sharingSourceVersion _handleSessionStarted:v9, v10];
      }
    }

    v11 = *p_sfSession;
    resumePassword = @"public";
  }

  [v11 setFixedPIN:resumePassword];
LABEL_25:
  messageSessionTemplate = [startedCopy messageSessionTemplate];
  v16 = messageSessionTemplate;
  if (messageSessionTemplate)
  {
    sfSession = self->_sfSession;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__SFDeviceSetupServiceiOS__handleSessionStarted___block_invoke;
    v20[3] = &unk_1E788B4F8;
    v20[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_sa" options:&unk_1F1D7D498 handler:v20];
    progressHandlerEx = self->_progressHandlerEx;
    if (progressHandlerEx)
    {
      v21 = @"mst";
      v22[0] = v16;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      progressHandlerEx[2](progressHandlerEx, 31, v19);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }

  else if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (messageSessionTemplate = _LogCategory_Initialize(), messageSessionTemplate))
    {
      [(SFDeviceSetupServiceiOS *)messageSessionTemplate _handleSessionStarted:v14, v15];
    }
  }

LABEL_33:
}

- (void)_handleSessionEnded:(id)ended
{
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession == endedCopy)
  {
    v12 = endedCopy;
    if (endedCopy && gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1)
      {
LABEL_5:
        peer = [(SFSession *)sfSession peer];
        LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _handleSessionEnded:]", 30, "Ending setup session with %@\n", peer);

        goto LABEL_7;
      }

      if (_LogCategory_Initialize())
      {
        sfSession = self->_sfSession;
        goto LABEL_5;
      }
    }

LABEL_7:
    v7 = _Block_copy(self->_progressHandlerEx);
    v8 = v7;
    if (self->_suspendPending)
    {
      self->_suspendPending = 0;
      if (v7)
      {
        (*(v7 + 2))(v7, 98, 0);
LABEL_11:
        v8[2](v8, 32, 0);
      }
    }

    else if (v7)
    {
      goto LABEL_11;
    }

    resumeAuthTag = self->_resumeAuthTag;
    self->_resumeAuthTag = 0;

    resumePassword = self->_resumePassword;
    self->_resumePassword = 0;

    v11 = self->_sfSession;
    self->_sfSession = 0;

    [(SFService *)self->_sfService setAuthTagOverride:0];
    [(SFService *)self->_sfService setNeedsSetup:1];

    endedCopy = v12;
  }
}

- (void)_handleSessionSecured:(id)secured
{
  v16[1] = *MEMORY[0x1E69E9840];
  securedCopy = secured;
  fixedPIN = [(SFSession *)self->_sfSession fixedPIN];

  if (fixedPIN)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        [(SFDeviceSetupServiceiOS *)v6 _handleSessionSecured:v7, v8];
      }
    }

    [(SFSession *)self->_sfSession setFixedPIN:0];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        [(SFDeviceSetupServiceiOS *)v6 _handleSessionSecured:v7, v8];
      }
    }

    if (self->_progressHandlerEx)
    {
      messageSessionTemplate = [securedCopy messageSessionTemplate];
      v12 = messageSessionTemplate;
      if (messageSessionTemplate)
      {
        progressHandlerEx = self->_progressHandlerEx;
        v15 = @"mst";
        v16[0] = messageSessionTemplate;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        progressHandlerEx[2](progressHandlerEx, 33, v14);
      }

      else if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60)
      {
        if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (messageSessionTemplate = _LogCategory_Initialize(), messageSessionTemplate))
        {
          [(SFDeviceSetupServiceiOS *)messageSessionTemplate _handleSessionSecured:v10, v11];
        }
      }
    }
  }
}

- (void)_handleConfigRequestReceived:(id)received
{
  v4 = MEMORY[0x1E695DF90];
  receivedCopy = received;
  v14 = objc_alloc_init(v4);
  fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
  if (!fileTransferSessionTemplate)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69C6B90]);
    v8 = self->_fileTransferSessionTemplate;
    self->_fileTransferSessionTemplate = v7;

    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setFlags:291];
    [(RPFileTransferSession *)self->_fileTransferSessionTemplate prepareTemplateAndReturnError:0];
  }

  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();

  if (v9)
  {
    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setPeerPublicKey:v9];
  }

  selfPublicKey = [(RPFileTransferSession *)self->_fileTransferSessionTemplate selfPublicKey];
  if (selfPublicKey)
  {
    [v14 setObject:selfPublicKey forKeyedSubscript:@"ftPK"];
  }

  targetID = [(RPFileTransferSession *)self->_fileTransferSessionTemplate targetID];
  if (targetID)
  {
    [v14 setObject:targetID forKeyedSubscript:@"ftTID"];
  }

  if (!fileTransferSessionTemplate)
  {
    v12 = _Block_copy(self->_progressHandlerEx);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 420, 0);
    }
  }

  [(SFDeviceSetupServiceiOS *)self sendObject:v14];
}

- (void)_handleAppEventReceived:(id)received
{
  receivedCopy = received;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    v5 = Int64Ranged;
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize())
    {
      [SFDeviceSetupServiceiOS _handleAppEventReceived:v5];
    }
  }

  receivedObjectHandler = self->_receivedObjectHandler;
  v7 = receivedCopy;
  if (receivedObjectHandler)
  {
    receivedObjectHandler[2](receivedObjectHandler, receivedCopy);
    v7 = receivedCopy;
  }
}

- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  v6 = MEMORY[0x1E695DF90];
  handlerCopy = handler;
  v8 = objc_alloc_init(v6);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupServiceiOS *)Int64Ranged _handleSetupActionRequest:requestCopy responseHandler:?];
  }

  if (Int64Ranged == 7)
  {
    [(SFDeviceSetupServiceiOS *)self _handleSetupActionResume];
  }

  else if (Int64Ranged == 6)
  {
    [(SFDeviceSetupServiceiOS *)self _handleSetupActionSuspend];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _handleSetupActionRequest:Int64Ranged responseHandler:?];
    }

    [v8 setObject:&unk_1F1D7CF40 forKeyedSubscript:@"er"];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
}

- (void)_handleSetupActionSuspend
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _handleSetupActionSuspend]", 90, "### Suspend derive key failed\n");
  }
}

- (void)_handleSetupActionResume
{
  v2 = _Block_copy(self->_progressHandlerEx);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 97, 0);
    v2 = v3;
  }
}

uint64_t __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_5_cold_1(__CFString *a1, uint64_t a2)
{
  v4 = IsAppleInternalBuild();
  v5 = @"*";
  if (v4)
  {
    v5 = a1;
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _sfServiceStart]_block_invoke_5", 30, "Show PIN '%@', Flags %#{flags}\n", v5, a2, &unk_1A998FC08);
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _sfServiceStart]_block_invoke_7", 30, "Session started with %@\n", v1);
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _sfServiceStart]_block_invoke_8", 30, "Session ended with %@: %{error}\n", v3, a2);
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _sfServiceStart]_block_invoke_9", 30, "Session secured with %@\n", v1);
}

- (uint64_t)_receivedObject:(uint64_t)result flags:.cold.2(uint64_t result)
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
  {
    v1 = result;
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config message: %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config message: %@\n", v1);
    }
  }

  return result;
}

- (uint64_t)_receivedObject:(uint64_t)result flags:.cold.3(uint64_t result)
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
  {
    v1 = result;
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config request: %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _receivedObject:flags:]", 50, "### Ignoring unencrypted config request: %@\n", v1);
    }
  }

  return result;
}

- (uint64_t)sendObject:(uint64_t)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS sendObject:]", a3, "### Send object without peer\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS sendObject:]", a3, "### Send object without peer\n");
    }
  }

  return result;
}

- (void)sendObject:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS sendObject:]", a3, "### Send object without service\n");
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _handleSessionStarted:]", 60, "### Ignoring session from %@ when active with %@\n", v4, v3);
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _handleSessionStarted:]", 30, "Starting setup session with %@\n", v1);
}

- (uint64_t)_handleSetupActionRequest:(uint64_t)a3 responseHandler:.cold.1(unsigned int a1, char a2, uint64_t a3)
{
  if (a1 > 0xA)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788FAC0[a2 & 0xF];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _handleSetupActionRequest:responseHandler:]", 30, "SetupActionRequest: %s, %##.32@\n", v5, a3, v3, v4);
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 > 0xA)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1E788FB18[a2 & 0xF];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupServiceiOSCore, "[SFDeviceSetupServiceiOS _handleSetupActionRequest:responseHandler:]", 60, "### Unsupported SetupAction: %u (%s)\n", a1, v2);
}

@end