@interface SpatialAudioProfileClient
- (SpatialAudioProfileClient)init;
- (SpatialAudioProfileClient)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (void)_fetchSpatialAudioProfileRecordWithCompletion:(id)completion;
- (void)_interrupted;
- (void)_invalidated;
- (void)fetchSpatialAudioProfileRecordWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation SpatialAudioProfileClient

- (SpatialAudioProfileClient)initWithCoder:(id)coder
{
  v3 = [(SpatialAudioProfileClient *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (SpatialAudioProfileClient)init
{
  v6.receiver = self;
  v6.super_class = SpatialAudioProfileClient;
  v2 = [(SpatialAudioProfileClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)fetchSpatialAudioProfileRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SpatialAudioProfileClient_fetchSpatialAudioProfileRecordWithCompletion___block_invoke;
  v7[3] = &unk_279CD8040;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __74__SpatialAudioProfileClient_fetchSpatialAudioProfileRecordWithCompletion___block_invoke(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = 0;
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __74__SpatialAudioProfileClient_fetchSpatialAudioProfileRecordWithCompletion___block_invoke_1;
  v6 = &unk_279CD8018;
  v8 = v9;
  v7 = *(a1 + 40);
  v2 = MEMORY[0x26D6736A0](&v3);
  [*(a1 + 32) _fetchSpatialAudioProfileRecordWithCompletion:{*(a1 + 40), v3, v4, v5, v6}];
  v2[2](v2);

  _Block_object_dispose(v9, 8);
}

uint64_t __74__SpatialAudioProfileClient_fetchSpatialAudioProfileRecordWithCompletion___block_invoke_1(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_SpatialAudioProfileClient <= 90)
  {
    if (gLogCategory_SpatialAudioProfileClient == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_SpatialAudioProfileClient, "[SpatialAudioProfileClient fetchSpatialAudioProfileRecordWithCompletion:]_block_invoke", 90, "### Failed to fetch sound profile, %{error}", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

- (void)_fetchSpatialAudioProfileRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_invalidateCalled)
  {
    _ensureXPCStarted = NSErrorF();
    if (gLogCategory_SpatialAudioProfileClient <= 90 && (gLogCategory_SpatialAudioProfileClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SpatialAudioProfileClient, "[SpatialAudioProfileClient _fetchSpatialAudioProfileRecordWithCompletion:]", 90, "### Fetch Sound Profile failed: %@, %@", self, _ensureXPCStarted);
    }
  }

  else
  {
    if (gLogCategory_SpatialAudioProfileClient <= 30)
    {
      if (gLogCategory_SpatialAudioProfileClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [(SpatialAudioProfileClient *)completionCopy _fetchSpatialAudioProfileRecordWithCompletion:v5, v6];
      }
    }

    _ensureXPCStarted = [(SpatialAudioProfileClient *)self _ensureXPCStarted];
    if (!_ensureXPCStarted)
    {
      xpcCnx = self->_xpcCnx;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __75__SpatialAudioProfileClient__fetchSpatialAudioProfileRecordWithCompletion___block_invoke;
      v12[3] = &unk_279CD8068;
      v10 = v7;
      v13 = v10;
      v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v12];
      [v11 fetchSpatialAudioProfileRecordForClient:self WithCompletion:v10];

      goto LABEL_13;
    }
  }

  if (v7)
  {
    (v7)[2](v7, 0, _ensureXPCStarted);
  }

LABEL_13:
}

uint64_t __75__SpatialAudioProfileClient__fetchSpatialAudioProfileRecordWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (gLogCategory_SpatialAudioProfileClient <= 90)
  {
    if (gLogCategory_SpatialAudioProfileClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __75__SpatialAudioProfileClient__fetchSpatialAudioProfileRecordWithCompletion___block_invoke_cold_1(v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v7);
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.SpatialAudioProfileXPCService"];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCEB28];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SpatialAudioProfileClient__ensureXPCStarted__block_invoke;
    v9[3] = &unk_279CD8090;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__SpatialAudioProfileClient__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_279CD8090;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCEB88];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __46__SpatialAudioProfileClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SpatialAudioProfileClient <= 50)
  {
    if (gLogCategory_SpatialAudioProfileClient != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SpatialAudioProfileClient *)v3 _interrupted];
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v7 = *(interruptionHandler + 2);

    v7();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SpatialAudioProfileClient_invalidate__block_invoke;
  block[3] = &unk_279CD8090;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__39__SpatialAudioProfileClient_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 8) & 1) == 0)
  {
    v5 = result;
    *(v4 + 8) = 1;
    if ((*(result[4] + 9) & 1) == 0 && gLogCategory_SpatialAudioProfileClient <= 30)
    {
      if (gLogCategory_SpatialAudioProfileClient != -1 || (result = _LogCategory_Initialize(), result))
      {
        __39__SpatialAudioProfileClient_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];
    if (v6[2])
    {
      [v6[2] invalidate];
      v6 = v5[4];
    }

    return [v6 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    selfCopy = self;
    if (!self->_invalidateCalled && gLogCategory_SpatialAudioProfileClient <= 50)
    {
      if (gLogCategory_SpatialAudioProfileClient != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SpatialAudioProfileClient *)self _invalidated];
      }
    }

    if (!selfCopy->_xpcCnx)
    {
      v7 = MEMORY[0x26D6736A0](selfCopy->_invalidationHandler, a2);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      if (v7)
      {
        v7[2](v7);
      }

      interruptionHandler = selfCopy->_interruptionHandler;
      selfCopy->_interruptionHandler = 0;

      xpcCnx = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;

      selfCopy->_invalidateDone = 1;
      if (gLogCategory_SpatialAudioProfileClient <= 10 && (gLogCategory_SpatialAudioProfileClient != -1 || _LogCategory_Initialize()))
      {
        [SpatialAudioProfileClient _invalidated];
      }
    }
  }
}

@end