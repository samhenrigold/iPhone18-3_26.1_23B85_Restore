@interface SFDeviceSetupWHAService
- (SFDeviceSetupWHAService)init;
- (void)_cleanup;
- (void)_handleInfoExchange:(id)exchange responseHandler:(id)handler;
- (void)_handleRequest:(id)request flags:(unsigned int)flags session:(id)session responseHandler:(id)handler;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionStarted:(id)started;
- (void)_sfServiceStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFDeviceSetupWHAService

- (SFDeviceSetupWHAService)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceSetupWHAService;
  v2 = [(SFDeviceSetupWHAService *)&v6 init];
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
    [(SFDeviceSetupWHAService *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupWHAService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupWHAService;
    [(SFDeviceSetupWHAService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupWHAService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupWHAService_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupWHAService <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHAService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __35__SFDeviceSetupWHAService_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  *(*(v3 + 32) + 10) = CFPrefs_GetInt64() != 0;
  return [*(v3 + 32) _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupWHAService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupWHAService_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFDeviceSetupWHAService <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHAService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFDeviceSetupWHAService_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 9) = 1;
  v4 = *(v3 + 32);
  if (*(v4 + 24))
  {
    [v4 _handleSessionEnded:?];
    v4 = *(v3 + 32);
  }

  [*(v4 + 16) invalidate];
  v5 = *(v3 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(v3 + 32);
  v8 = v7[7];
  if (v8)
  {
    (*(v8 + 16))(v7[7], 20, 0);
    v7 = *(v3 + 32);
  }

  return [v7 _cleanup];
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupWHAService <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHAService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupWHAService *)self _sfServiceStart];
    }
  }

  [(SFService *)selfCopy->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v4;

  [(SFService *)selfCopy->_sfService setDeviceActionType:13];
  [(SFService *)selfCopy->_sfService setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)selfCopy->_sfService setIdentifier:@"com.apple.sharing.WHASetup"];
  [(SFService *)selfCopy->_sfService setLabel:@"WHASetup"];
  [(SFService *)selfCopy->_sfService setNeedsSetup:1];
  [(SFService *)selfCopy->_sfService setPairSetupACL:&unk_1F1D7D628];
  [(SFService *)selfCopy->_sfService setPinType:1];
  [(SFService *)selfCopy->_sfService setSessionFlags:1];
  [(SFService *)selfCopy->_sfService setTouchRemoteEnabled:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke;
  v10[3] = &unk_1E788CA68;
  v10[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionStartedHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_2;
  v9[3] = &unk_1E788CA90;
  v9[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionEndedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_3;
  v8[3] = &unk_1E788CA40;
  v8[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setReceivedRequestHandler:v8];
  v6 = selfCopy->_sfService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_4;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFService *)v6 activateWithCompletion:v7];
}

void __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 56);
  if (v3)
  {
    if (v5)
    {
      v7 = @"eo";
      v8[0] = v3;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      (*(v5 + 16))(v5, 30, v6);
    }
  }

  else if (v5)
  {
    (*(v5 + 16))(v5, 10, 0);
  }
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  if (self->_sfSession)
  {
    if (gLogCategory_SFDeviceSetupWHAService <= 60 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupWHAService *)startedCopy _handleSessionStarted:?];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupWHAService _handleSessionStarted:startedCopy];
    }

    objc_storeStrong(&self->_sfSession, started);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__SFDeviceSetupWHAService__handleSessionStarted___block_invoke;
    v12[3] = &unk_1E788B4F8;
    v12[4] = self;
    activate = [startedCopy registerRequestID:@"_info" options:0 handler:v12];
    if (self->_prefCDPEnabled)
    {
      v7 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v7;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:startedCopy];
      activate = [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    v9 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass_2(activate));
    objc_setAssociatedObject(startedCopy, "hmDeviceSetup", v9, 0x301);
    trSession = [startedCopy trSession];
    [v9 registerMessageHandlersForSession:trSession];

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 31, 0);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }
}

- (void)_handleSessionEnded:(id)ended
{
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession != endedCopy)
  {
    goto LABEL_14;
  }

  object = endedCopy;
  if (endedCopy && gLogCategory_SFDeviceSetupWHAService <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHAService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    peer = [(SFSession *)sfSession peer];
    LogPrintF(&gLogCategory_SFDeviceSetupWHAService, "[SFDeviceSetupWHAService _handleSessionEnded:]", 30, "Ending setup session with %@\n", peer);
  }

LABEL_7:
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  objc_setAssociatedObject(object, "hmDeviceSetup", 0, 0x301);
  v8 = objc_getAssociatedObject(object, "finished");
  if (v8)
  {
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 100, 0);
    }

    objc_setAssociatedObject(object, "finished", 0, 0x301);
  }

  v10 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:1];
  v11 = self->_progressHandler;
  if (v11)
  {
    v11[2](v11, 32, 0);
  }

  endedCopy = object;
LABEL_14:
}

- (void)_handleInfoExchange:(id)exchange responseHandler:(id)handler
{
  exchangeCopy = exchange;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHAService _handleInfoExchange:exchangeCopy responseHandler:?];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = SFMyAltDSID();
  uTF8String = [v9 UTF8String];

  if (uTF8String)
  {
    v11 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v12 = v11;
    if (v11)
    {
      [v11 bytes];
      strlen(uTF8String);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:SipHash()];
      [v8 setObject:v13 forKeyedSubscript:@"adh"];
    }
  }

  v14 = 16;
  if (!self->_prefCDPEnabled)
  {
    v14 = 0;
  }

  if (self->_needsCDPRepair)
  {
    v15 = v14 | 0x200;
  }

  else
  {
    v15 = v14;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
  [v8 setObject:v16 forKeyedSubscript:@"ff"];

  v17 = 0;
  if (self->_prefCDPEnabled)
  {
    v18 = objc_alloc_init(getCDPStateControllerClass_1());
    v20 = 0;
    if ([v18 isManateeAvailable:&v20])
    {
      v17 = 0;
    }

    else
    {
      v17 = 0x20000;
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
  [v8 setObject:v19 forKeyedSubscript:@"dpf"];

  if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHAService _handleInfoExchange:v8 responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
}

- (void)_handleRequest:(id)request flags:(unsigned int)flags session:(id)session responseHandler:(id)handler
{
  v7 = *&flags;
  v23[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  handlerCopy = handler;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 9)
  {
    if (v7)
    {
      if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupWHAService _handleRequest:flags:session:responseHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, v7, 0, MEMORY[0x1E695E0F8]);
      objc_setAssociatedObject(sessionCopy, "finished", MEMORY[0x1E695E118], 0x301);
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 96, 0);
      }

      goto LABEL_16;
    }

    v13 = -6768;
    if (gLogCategory_SFDeviceSetupWHAService <= 60)
    {
      if (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize())
      {
        [SFDeviceSetupWHAService _handleRequest:flags:session:responseHandler:];
      }

      v13 = -6768;
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupWHAService <= 60 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceSetupWHAService, "[SFDeviceSetupWHAService _handleRequest:flags:session:responseHandler:]", 60, "### Ignoring unsupported request %u: %#m\n", Int64Ranged);
    }

    v13 = -6732;
  }

  v14 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A768];
  v16 = v13;
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
  v21 = [v14 errorWithDomain:v15 code:v16 userInfo:v20];
  (*(handlerCopy + 2))(handlerCopy, v7, v21, 0);

LABEL_16:
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupWHAService, "[SFDeviceSetupWHAService _handleSessionStarted:]", 60, "### Ignoring session from %@ when active with %@\n", v4, v3);
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupWHAService, "[SFDeviceSetupWHAService _handleSessionStarted:]", 30, "Starting setup session with %@\n", v1);
}

@end