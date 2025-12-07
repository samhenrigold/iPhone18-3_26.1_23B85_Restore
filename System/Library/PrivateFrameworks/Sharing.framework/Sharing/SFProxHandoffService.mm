@interface SFProxHandoffService
- (SFProxHandoffService)init;
- (id)description;
- (void)_activateWithCompletion:(id)completion;
- (void)_activated;
- (void)_cleanup;
- (void)_completedWithError:(id)error;
- (void)_serviceStart;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFProxHandoffService

- (SFProxHandoffService)init
{
  v6.receiver = self;
  v6.super_class = SFProxHandoffService;
  v2 = [(SFProxHandoffService *)&v6 init];
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
    [(SFProxHandoffService *)v3 description];
  }

  else
  {
    [(SFProxHandoffService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFProxHandoffService;
    [(SFProxHandoffService *)&v5 dealloc];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"SFProxHandoffService"];
  if (self->_activateCalled)
  {
    v4 = @", activated";
  }

  else
  {
    if (!self->_invalidateCalled)
    {
      goto LABEL_6;
    }

    v4 = @", invalidated";
  }

  [v3 appendString:v4];
LABEL_6:
  if (self->_service)
  {
    [v3 appendFormat:@", %@", self->_service];
  }

  return v3;
}

- (void)_cleanup
{
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  self->_serviceState = 0;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SFProxHandoffService_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock = completionCopy;
  if (gLogCategory_SFProxHandoffService <= 30)
  {
    if (gLogCategory_SFProxHandoffService != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFProxHandoffService *)completionCopy _activateWithCompletion:v5, v6];
    }
  }

  self->_activateCalled = 1;
  v7 = _Block_copy(aBlock);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v7;

  [(SFProxHandoffService *)self _serviceStart];
}

- (void)_activated
{
  if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1(&gLogCategory_SFProxHandoffService, "[SFProxHandoffService _activated]", a3, "Service not yet activated\n");
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFProxHandoffService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__SFProxHandoffService_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 24) & 1) == 0 && gLogCategory_SFProxHandoffService <= 30)
  {
    if (gLogCategory_SFProxHandoffService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __34__SFProxHandoffService_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 24) = 1;
  [*(*(v3 + 32) + 32) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(v3 + 32);

  return [v6 _cleanup];
}

- (void)_completedWithError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    if (gLogCategory_SFProxHandoffService <= 60)
    {
      v6 = errorCopy;
      if (gLogCategory_SFProxHandoffService != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        [SFProxHandoffService _completedWithError:v4];
        v4 = v6;
      }
    }
  }
}

- (void)_serviceStart
{
  if (!self->_service)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (gLogCategory_SFProxHandoffService <= 30)
    {
      if (gLogCategory_SFProxHandoffService != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFProxHandoffService *)self _serviceStart];
      }
    }

    selfCopy->_serviceState = 1;
    v8 = objc_alloc_init(SFService);
    service = selfCopy->_service;
    selfCopy->_service = v8;

    [(SFService *)selfCopy->_service setAdvertiseRate:50];
    [(SFService *)selfCopy->_service setDispatchQueue:selfCopy->_dispatchQueue];
    [(SFService *)selfCopy->_service setIdentifier:@"com.apple.sharing.ProxHandoff"];
    [(SFService *)selfCopy->_service setLabel:@"HandoffService"];
    [(SFService *)selfCopy->_service setSessionFlags:512];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__SFProxHandoffService__serviceStart__block_invoke;
    v12[3] = &unk_1E788B198;
    v12[4] = selfCopy;
    [(SFService *)selfCopy->_service setInterruptionHandler:v12];
    [(SFService *)selfCopy->_service setInvalidationHandler:&__block_literal_global_35];
    [(SFService *)selfCopy->_service setSessionEndedHandler:&__block_literal_global_159];
    [(SFService *)selfCopy->_service setSessionStartedHandler:&__block_literal_global_163];
    [(SFService *)selfCopy->_service setSessionSecuredHandler:&__block_literal_global_166];
    v10 = selfCopy->_service;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__SFProxHandoffService__serviceStart__block_invoke_6;
    v11[3] = &unk_1E788B238;
    v11[4] = selfCopy;
    [(SFService *)v10 activateWithCompletion:v11];
  }
}

uint64_t __37__SFProxHandoffService__serviceStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFProxHandoffService <= 30)
  {
    if (gLogCategory_SFProxHandoffService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 invalidate];
}

uint64_t __37__SFProxHandoffService__serviceStart__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFProxHandoffService <= 30)
  {
    if (gLogCategory_SFProxHandoffService != -1)
    {
      return __37__SFProxHandoffService__serviceStart__block_invoke_2_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __37__SFProxHandoffService__serviceStart__block_invoke_2_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __37__SFProxHandoffService__serviceStart__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    __37__SFProxHandoffService__serviceStart__block_invoke_3_cold_1(v5, v4);
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFProxHandoffService <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFProxHandoffService != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_4_cold_1(v3);
      v3 = v5;
    }
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFProxHandoffService <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFProxHandoffService != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_5_cold_1(v3);
      v3 = v5;
    }
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (gLogCategory_SFProxHandoffService <= 90 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_6_cold_1(v8);
    }

    *(*(a1 + 32) + 40) = 3;
    v6 = *(a1 + 32);
    v7 = NSErrorWithOSStatusF(4294960534, "### SFService failed to activate");
    [v6 _completedWithError:v7];
  }

  else
  {
    if (gLogCategory_SFProxHandoffService <= 30)
    {
      if (gLogCategory_SFProxHandoffService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __37__SFProxHandoffService__serviceStart__block_invoke_6_cold_2(v3, v4, v5);
      }
    }

    *(*(a1 + 32) + 40) = 4;
    [*(a1 + 32) _activated];
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_3_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 peer];
  LogPrintF(&gLogCategory_SFProxHandoffService, "[SFProxHandoffService _serviceStart]_block_invoke_3", 30, "Session ended with %@: %@\n", v3, a2);
}

void __37__SFProxHandoffService__serviceStart__block_invoke_4_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFProxHandoffService, "[SFProxHandoffService _serviceStart]_block_invoke_4", 30, "Session started with %@\n", v1);
}

void __37__SFProxHandoffService__serviceStart__block_invoke_5_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFProxHandoffService, "[SFProxHandoffService _serviceStart]_block_invoke_5", 30, "Session secured with %@\n", v1);
}

@end