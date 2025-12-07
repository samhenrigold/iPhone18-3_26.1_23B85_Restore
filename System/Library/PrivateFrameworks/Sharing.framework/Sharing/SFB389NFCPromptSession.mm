@interface SFB389NFCPromptSession
- (SFB389NFCPromptSession)initWithInitialConfiguration:(id)configuration;
- (id)_getRemoteObjectProxy;
- (void)_ensureXPCStarted;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)updateCardConfiguration:(id)configuration;
@end

@implementation SFB389NFCPromptSession

- (SFB389NFCPromptSession)initWithInitialConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SFB389NFCPromptSession;
  v5 = [(SFB389NFCPromptSession *)&v11 init];
  if (v5)
  {
    v6 = CUMainQueue();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    v8 = [configurationCopy copy];
    config = v5->_config;
    v5->_config = v8;
  }

  return v5;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFB389NFCPromptSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __34__SFB389NFCPromptSession_activate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  if ((*(v5 + 8) & 1) == 0)
  {
    *(v5 + 8) = 1;
    if (gLogCategory_SFB389NFCPromptSession <= 30)
    {
      if (gLogCategory_SFB389NFCPromptSession != -1 || (v2 = _LogCategory_Initialize(), v2))
      {
        __34__SFB389NFCPromptSession_activate__block_invoke_cold_1(v2, v3, v4);
      }
    }

    v6 = [*(a1 + 32) _getRemoteObjectProxy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__SFB389NFCPromptSession_activate__block_invoke_2;
    v9[3] = &unk_1E788CC68;
    v9[4] = v7;
    [v6 b389NFCPromptDidRequestPresentationWithConfiguration:v8 responseHandler:v9];
  }
}

void __34__SFB389NFCPromptSession_activate__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v10 = a2;
  if (gLogCategory_SFB389NFCPromptSession <= 30 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    __34__SFB389NFCPromptSession_activate__block_invoke_2_cold_1(a3, a4);
  }

  v7 = _Block_copy(*(*(a1 + 32) + 40));
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v7[2](v7, v10, a3, a4);
  }

  [*(a1 + 32) invalidate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFB389NFCPromptSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __36__SFB389NFCPromptSession_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 9) & 1) == 0)
  {
    *(v1 + 9) = 1;
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = [*(a1 + 32) _getRemoteObjectProxy];
    [v5 dismissCurrentB389NFCPrompt];

    if (gLogCategory_SFB389NFCPromptSession <= 30)
    {
      if (gLogCategory_SFB389NFCPromptSession != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        __36__SFB389NFCPromptSession_invalidate__block_invoke_cold_1(v6, v7, v8);
      }
    }
  }
}

- (void)dealloc
{
  if (!self->_invalidateCalled && gLogCategory_SFB389NFCPromptSession <= 115 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    [SFB389NFCPromptSession dealloc];
  }

  v3.receiver = self;
  v3.super_class = SFB389NFCPromptSession;
  [(SFB389NFCPromptSession *)&v3 dealloc];
}

- (id)_getRemoteObjectProxy
{
  xpcCnx = self->_xpcCnx;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SFB389NFCPromptSession__getRemoteObjectProxy__block_invoke;
  v5[3] = &unk_1E788B238;
  v5[4] = self;
  v3 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __47__SFB389NFCPromptSession__getRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (gLogCategory_SFB389NFCPromptSession <= 90 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    __47__SFB389NFCPromptSession__getRemoteObjectProxy__block_invoke_cold_1(v6);
  }

  v3 = _Block_copy(*(*(a1 + 32) + 40));
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v3[2](v3, v6, 0, -1.0);
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = MEMORY[0x1E696B0B8];
    selfCopy = self;
    v5 = [[v3 alloc] initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke;
    v9[3] = &unk_1E788B198;
    v9[4] = selfCopy;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_1E788B198;
    v8[4] = selfCopy;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE9C0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }
}

uint64_t __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFB389NFCPromptSession <= 90)
  {
    if (gLogCategory_SFB389NFCPromptSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 invalidate];
}

uint64_t __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFB389NFCPromptSession <= 90)
  {
    if (gLogCategory_SFB389NFCPromptSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 invalidate];
}

- (void)updateCardConfiguration:(id)configuration
{
  v4 = [configuration copy];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SFB389NFCPromptSession_updateCardConfiguration___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __50__SFB389NFCPromptSession_updateCardConfiguration___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = [v2 _getRemoteObjectProxy];
    [v3 b389NFCPromptUpdateConfiguration:*(*(a1 + 32) + 16)];
  }
}

uint64_t __34__SFB389NFCPromptSession_activate__block_invoke_2_cold_1(uint64_t a1, double a2)
{
  if ((a1 - 1) > 3)
  {
    v4 = @"?";
  }

  else
  {
    v4 = off_1E788CC88[a1 - 1];
  }

  return LogPrintF(&gLogCategory_SFB389NFCPromptSession, "[SFB389NFCPromptSession activate]_block_invoke_2", 30, "NFC Presentation responseHandler action: '%@', duration %f\n", v4, *&a2, v2, v3);
}

@end