@interface SFDeviceOperationHandlerCNJSetup
- (SFDeviceOperationHandlerCNJSetup)init;
- (void)_handleCaptiveJoinRequestWithResponseHandler:(id)handler reachabilityError:(id)error;
- (void)_runReachability:(id)reachability responseHandler:(id)handler;
- (void)_updateCaptiveState;
- (void)activate;
- (void)invalidate;
- (void)reset;
@end

@implementation SFDeviceOperationHandlerCNJSetup

- (SFDeviceOperationHandlerCNJSetup)init
{
  v5.receiver = self;
  v5.super_class = SFDeviceOperationHandlerCNJSetup;
  v2 = [(SFDeviceOperationHandlerCNJSetup *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_cnsNotifyToken = -1;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 80);
  v5 = gLogCategory_SFDeviceOperationCNJ;
  if (!v4)
  {
    return __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_cold_2(gLogCategory_SFDeviceOperationCNJ);
  }

  if (gLogCategory_SFDeviceOperationCNJ <= 30)
  {
    if (gLogCategory_SFDeviceOperationCNJ != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_cold_1(v5, a2, a3);
    }
  }

  v6 = *MEMORY[0x1E6993938];
  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_2;
  handler[3] = &unk_1E788CB60;
  handler[4] = v7;
  notify_register_dispatch(v6, (v7 + 32), v8, handler);
  [*(a1 + 32) _updateCaptiveState];
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_3;
  v12[3] = &unk_1E788B4F8;
  v12[4] = v9;
  return [v10 registerRequestID:@"_cnj" options:0 handler:v12];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCNJSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __46__SFDeviceOperationHandlerCNJSetup_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceOperationCNJ <= 30)
  {
    if (gLogCategory_SFDeviceOperationCNJ != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __46__SFDeviceOperationHandlerCNJSetup_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 16) = 1;
  *(*(v3 + 32) + 72) = 0;
  v4 = *(v3 + 32);
  v5 = *(v4 + 32);
  if (v5 != -1)
  {
    notify_cancel(v5);
    *(*(v3 + 32) + 32) = -1;
    v4 = *(v3 + 32);
  }

  [*(v4 + 80) deregisterRequestID:@"_cnj"];
  [*(*(v3 + 32) + 80) deregisterRequestID:@"_cnjExtIO"];
  [*(*(v3 + 32) + 8) invalidate];
  v6 = *(v3 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v8 = *(v3 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(v3 + 32);
  v11 = *(v10 + 56);
  if (v11)
  {
    v12 = v11;
    dispatch_source_cancel(v12);
    v13 = *(v3 + 32);
    v14 = *(v13 + 56);
    *(v13 + 56) = 0;

    v10 = *(v3 + 32);
  }

  v15 = *(v10 + 64);
  if (v15)
  {

    nw_path_monitor_cancel(v15);
  }
}

- (void)_updateCaptiveState
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    if (self->_reachabilityDone || (self = CNUserInteractionIsRequired(), !self))
    {
      if (gLogCategory_SFDeviceOperationCNJ <= 30)
      {
        if (gLogCategory_SFDeviceOperationCNJ != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceOperationHandlerCNJSetup *)self _updateCaptiveState];
        }
      }
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCNJ <= 30)
      {
        if (gLogCategory_SFDeviceOperationCNJ != -1 || (self = _LogCategory_Initialize(), self))
        {
          self = [(SFDeviceOperationHandlerCNJSetup *)self _updateCaptiveState];
        }
      }

      selfCopy->_reachabilityDone = 1;
      if (selfCopy->_responseHandler)
      {
        if (gLogCategory_SFDeviceOperationCNJ <= 30)
        {
          if (gLogCategory_SFDeviceOperationCNJ != -1 || (self = _LogCategory_Initialize(), self))
          {
            [(SFDeviceOperationHandlerCNJSetup *)self _updateCaptiveState];
          }
        }

        responseHandler = selfCopy->_responseHandler;

        [(SFDeviceOperationHandlerCNJSetup *)selfCopy _handleCaptiveJoinRequestWithResponseHandler:responseHandler];
      }
    }
  }
}

- (void)_runReachability:(id)reachability responseHandler:(id)handler
{
  reachabilityCopy = reachability;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (gLogCategory_SFDeviceOperationCNJ <= 30)
  {
    if (gLogCategory_SFDeviceOperationCNJ != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      handlerCopy = [SFDeviceOperationHandlerCNJSetup _runReachability:responseHandler:];
    }
  }

  if (self->_reachabilityDone)
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 30)
    {
      if (gLogCategory_SFDeviceOperationCNJ != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
      {
        [(SFDeviceOperationHandlerCNJSetup *)handlerCopy _runReachability:v7 responseHandler:v8];
      }
    }

    [(SFDeviceOperationHandlerCNJSetup *)self _handleCaptiveJoinRequestWithResponseHandler:v9];
  }

  else
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 30)
    {
      if (gLogCategory_SFDeviceOperationCNJ != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
      {
        [(SFDeviceOperationHandlerCNJSetup *)handlerCopy _runReachability:v7 responseHandler:v8];
      }
    }

    v10 = _Block_copy(v9);
    responseHandler = self->_responseHandler;
    self->_responseHandler = v10;

    if (gLogCategory_SFDeviceOperationCNJ <= 30)
    {
      if (gLogCategory_SFDeviceOperationCNJ != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [(SFDeviceOperationHandlerCNJSetup *)v12 _runReachability:v13 responseHandler:v14];
      }
    }

    v9[2](v9, 0, 0, 0);
  }
}

- (void)_handleCaptiveJoinRequestWithResponseHandler:(id)handler reachabilityError:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  v10 = errorCopy;
  if (gLogCategory_SFDeviceOperationCNJ <= 30)
  {
    if (gLogCategory_SFDeviceOperationCNJ != -1 || (errorCopy = _LogCategory_Initialize(), errorCopy))
    {
      [(SFDeviceOperationHandlerCNJSetup *)errorCopy _handleCaptiveJoinRequestWithResponseHandler:v8 reachabilityError:v9];
    }
  }

  v11 = objc_alloc_init(getSKSetupCaptiveNetworkJoinServerClass());
  cnjServer = self->_cnjServer;
  self->_cnjServer = v11;

  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke;
  v22[3] = &unk_1E788FD70;
  objc_copyWeak(&v23, &location);
  [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer setSendDataHandler:v22];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_2;
  v19 = &unk_1E788FDC0;
  objc_copyWeak(&v21, &location);
  selfCopy = self;
  [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer setEventHandler:&v16];
  v13 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"A2A772B2-84C1-447A-B978-5793FF08E513" keyLength:32, v16, v17, v18, v19];
  if (v13)
  {
    [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer setPskData:v13];
    [(SFSession *)self->_sfSession registerForExternalIO:self->_cnjServer];
    [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer activate];
    v14 = objc_opt_new();
    if (v10)
    {
      v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
      [v14 setObject:v15 forKeyedSubscript:@"re"];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v14);
  }

  else
  {
    v14 = NSErrorWithOSStatusF(4294960534, "Failed to create pre-shared secret from session");
    (*(handlerCopy + 2))(handlerCopy, v14, 0, 0);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained sfSession];
  [v4 sendExternalIO:v3];
}

void __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_2_cold_1(v3);
  }

  if ([v3 eventType] == 202)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_3;
    block[3] = &unk_1E788B198;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }

  if ([v3 eventType] == 203 || (*(*(a1 + 32) + 48) & 1) == 0 && objc_msgSend(v3, "eventType") == 30)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 dispatchQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_4;
    v8[3] = &unk_1E788B4D0;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_async(v7, v8);

    objc_destroyWeak(&v9);
  }
}

void __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceOperationCNJ <= 30)
  {
    if (gLogCategory_SFDeviceOperationCNJ != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_4_cold_1(a1, a2, a3);
    }
  }

  WeakRetained = objc_loadWeakRetained((v3 + 32));
  [WeakRetained reset];
}

- (void)reset
{
  [(SFDeviceOperationHandlerCNJSetup *)self invalidate];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceOperationHandlerCNJSetup_reset__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceOperationHandlerCNJSetup_reset__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceOperationHandlerCNJSetup_reset__block_invoke_cold_1();
  }

  WiFiDisassociateAndForget();
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 36) = 0;
  *(*(a1 + 32) + 48) = 0;
  v4 = *(a1 + 32);

  return [v4 activate];
}

uint64_t __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_cold_2(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF(&gLogCategory_SFDeviceOperationCNJ, "[SFDeviceOperationHandlerCNJSetup activate]_block_invoke", 60, "### No SFSession");
    }
  }

  return result;
}

@end