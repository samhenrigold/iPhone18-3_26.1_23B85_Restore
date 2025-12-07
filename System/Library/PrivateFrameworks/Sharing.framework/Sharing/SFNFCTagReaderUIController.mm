@interface SFNFCTagReaderUIController
- (SFNFCTagReaderUIController)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_nfcTagScannedCount;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)nfcTagScannedCount:(int64_t)count;
- (void)setPurpose:(id)purpose;
- (void)uiActivatedWithCompletion:(id)completion;
- (void)uiInvalidatedWithCompletion:(id)completion;
@end

@implementation SFNFCTagReaderUIController

- (SFNFCTagReaderUIController)init
{
  v6.receiver = self;
  v6.super_class = SFNFCTagReaderUIController;
  v2 = [(SFNFCTagReaderUIController *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    *&v2->_mode = xmmword_1A998FEC0;
  }

  return v2;
}

- (void)setPurpose:(id)purpose
{
  v4 = [purpose copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__SFNFCTagReaderUIController_setPurpose___block_invoke;
    v7[3] = &unk_1E788A658;
    v7[4] = selfCopy;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    objc_storeStrong(&selfCopy->_purpose, v4);
  }

  objc_sync_exit(selfCopy);
}

void __41__SFNFCTagReaderUIController_setPurpose___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 64) remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    [v2 setPurpose:*(a1 + 40)];
LABEL_3:
    v3 = v5;
    goto LABEL_7;
  }

  if (gLogCategory_SFNFCTagReaderUIController <= 60)
  {
    v5 = 0;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = 0, v4))
    {
      __41__SFNFCTagReaderUIController_setPurpose___block_invoke_cold_1();
      goto LABEL_3;
    }
  }

LABEL_7:
}

void __41__SFNFCTagReaderUIController_setPurpose___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFNFCTagReaderUIController <= 60)
  {
    v5 = v2;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __41__SFNFCTagReaderUIController_setPurpose___block_invoke_2_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SFNFCTagReaderUIController_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v25[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = completionCopy;
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFNFCTagReaderUIController *)completionCopy _activateWithCompletion:v5, v6];
    }
  }

  [(SFNFCTagReaderUIController *)self _ensureXPCStarted];
  listenerEndpoint = [(CUXPCAgent *)self->_xpcAgent listenerEndpoint];
  if (listenerEndpoint)
  {
    v9 = _os_activity_create(&dword_1A9662000, "Sharing/SFNFCTagReaderUIController/nfcTagReaderUIActivateWithEndpoint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    xpcCnx = self->_xpcCnx;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke;
    v21[3] = &unk_1E788B6D8;
    v11 = v7;
    v22 = v11;
    v12 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v21];
    v24[0] = @"mode";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mode];
    v25[0] = v13;
    v24[1] = @"operationMode";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_operationMode];
    v15 = v14;
    v24[2] = @"purpose";
    purpose = self->_purpose;
    if (!purpose)
    {
      purpose = &stru_1F1D30528;
    }

    v25[1] = v14;
    v25[2] = purpose;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2;
    v19[3] = &unk_1E788B6D8;
    v20 = v11;
    [v12 nfcTagReaderUIActivateWithEndpoint:listenerEndpoint params:v17 completion:v19];

    os_activity_scope_leave(&state);
  }

  else if (v7)
  {
    v18 = NSErrorWithOSStatusF(4294960534, "No XPC endpoint");
    (v7)[2](v7, v18);
  }
}

void __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_SFNFCTagReaderUIController <= 60)
    {
      if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_cold_1(v3);
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v8 = v3;
  if (v3)
  {
    if (gLogCategory_SFNFCTagReaderUIController <= 60)
    {
      if (gLogCategory_SFNFCTagReaderUIController != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
      {
        __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2_cold_1(v5);
LABEL_15:
        v5 = v8;
      }
    }
  }

  else if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2_cold_2(v3, v5, v4);
      goto LABEL_15;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
    v5 = v8;
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke;
    v18[3] = &unk_1E788B198;
    v18[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_2;
    v17[3] = &unk_1E788B198;
    v17[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v17];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAED80];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  if (!self->_xpcAgent)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6999578]);
    xpcAgent = self->_xpcAgent;
    self->_xpcAgent = v6;

    [(CUXPCAgent *)self->_xpcAgent setDispatchQueue:self->_dispatchQueue];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:off_1EB3B00D0];
    [(CUXPCAgent *)self->_xpcAgent setLabel:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEDE0];
    [(CUXPCAgent *)self->_xpcAgent setExportedInterface:v9];

    [(CUXPCAgent *)self->_xpcAgent setExportedObject:self];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEE40];
    [(CUXPCAgent *)self->_xpcAgent setRemoteObjectInterface:v10];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3;
    v16[3] = &unk_1E7890238;
    v16[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setConnectionStartedHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_4;
    v15[3] = &unk_1E7890238;
    v15[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setConnectionEndedHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_5;
    v14[3] = &unk_1E788B198;
    v14[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setInvalidationHandler:v14];
    v11 = self->_xpcAgent;
    v13 = 0;
    LODWORD(v10) = [(CUXPCAgent *)v11 activateDirectAndReturnError:&v13];
    v12 = v13;
    if (v10)
    {
      if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
      {
        [SFNFCTagReaderUIController _ensureXPCStarted];
      }
    }

    else if (gLogCategory_SFNFCTagReaderUIController <= 60 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
    {
      [(SFNFCTagReaderUIController *)v12 _ensureXPCStarted];
    }
  }
}

uint64_t __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3_cold_1(v8);
  }

  objc_storeStrong((*(a1 + 32) + 64), a2);
  v7 = *(a1 + 32);
  if (*(v7 + 40) == 1)
  {
    *(v7 + 40) = 0;
    if (gLogCategory_SFNFCTagReaderUIController <= 30)
    {
      if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3_cold_2(v4, v5, v6);
      }
    }

    [*(a1 + 32) _nfcTagScannedCount];
  }
}

void __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_4_cold_1(v9);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (v4 == v9)
  {
    *(v3 + 64) = 0;

    v3 = *(a1 + 32);
  }

  v5 = *(v3 + 72);
  if (v5)
  {
    v6 = NSErrorWithOSStatusF(4294960573, "Unexpected UI end");
    (*(v5 + 16))(v5, v6);

    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = 0;
  }
}

uint64_t __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_5(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_5_cold_1(v2, v3, v4);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;

  v7 = *(a1 + 32);

  return [v7 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFNFCTagReaderUIController <= 50)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      [(SFNFCTagReaderUIController *)v2 _interrupted];
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFNFCTagReaderUIController_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__40__SFNFCTagReaderUIController_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v7 = result[4];
  if ((*(v7 + 24) & 1) == 0)
  {
    v10 = v3;
    v8 = result;
    *(v7 + 24) = 1;
    if (gLogCategory_SFNFCTagReaderUIController <= 30)
    {
      if (gLogCategory_SFNFCTagReaderUIController != -1 || (result = _LogCategory_Initialize(), result))
      {
        __40__SFNFCTagReaderUIController_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    [*(v8[4] + 48) invalidate];
    [*(v8[4] + 56) invalidate];
    v9 = v8[4];

    return [v9 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFNFCTagReaderUIController <= 50)
    {
      if (gLogCategory_SFNFCTagReaderUIController != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFNFCTagReaderUIController *)v3 _invalidated];
      }
    }

    if (!self->_xpcAgent && !self->_xpcCnx && !self->_xpcUICnx)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2](invalidationHandler, 0);
        v7 = self->_invalidationHandler;
      }

      else
      {
        v7 = 0;
      }

      self->_invalidationHandler = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_SFNFCTagReaderUIController <= 30)
      {
        if (gLogCategory_SFNFCTagReaderUIController != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          [(SFNFCTagReaderUIController *)v8 _invalidated];
        }
      }
    }
  }
}

- (void)nfcTagScannedCount:(int64_t)count
{
  nfcTagScanCount = self->_nfcTagScanCount + count;
  self->_nfcTagScanCount = nfcTagScanCount;
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1)
    {
LABEL_3:
      LogPrintF(&gLogCategory_SFNFCTagReaderUIController, "[SFNFCTagReaderUIController nfcTagScannedCount:]", 30, "NFC tag scanned (%ld total)\n", nfcTagScanCount);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      nfcTagScanCount = self->_nfcTagScanCount;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(SFNFCTagReaderUIController *)self _nfcTagScannedCount];
}

- (void)_nfcTagScannedCount
{
  v3 = [(CUXPCAgentConnection *)self->_xpcUICnx remoteObjectProxyWithErrorHandler:&__block_literal_global_178_0];
  v5 = v3;
  if (v3)
  {
    v6 = v3;
    [v3 nfcTagScannedCount:self->_nfcTagScanCount];
LABEL_3:
    v5 = v6;
    goto LABEL_7;
  }

  self->_nfcTagScanPending = 1;
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    v6 = 0;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      [(SFNFCTagReaderUIController *)v3 _nfcTagScannedCount];
      goto LABEL_3;
    }
  }

LABEL_7:
}

void __49__SFNFCTagReaderUIController__nfcTagScannedCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFNFCTagReaderUIController <= 60)
  {
    v5 = v2;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __49__SFNFCTagReaderUIController__nfcTagScannedCount__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)uiActivatedWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(SFNFCTagReaderUIController *)v4 uiActivatedWithCompletion:v5, v6];
    }
  }

  if (self->_nfcTagScanCount >= 1)
  {
    [(SFNFCTagReaderUIController *)self _nfcTagScannedCount];
  }

  completionCopy[2](completionCopy, 0);
}

- (void)uiInvalidatedWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(SFNFCTagReaderUIController *)v4 uiInvalidatedWithCompletion:v5, v6];
    }
  }

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v8 = NSErrorWithOSStatusF(4294960573, "User dismissed");
    invalidationHandler[2](invalidationHandler, v8);

    v9 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }

  completionCopy[2](completionCopy, 0);
}

@end