@interface SFProxCardSessionServer
- (SFProxCardSessionServer)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)performAction:(int)action completion:(id)completion;
- (void)setLabel:(id)label;
@end

@implementation SFProxCardSessionServer

- (SFProxCardSessionServer)init
{
  v7.receiver = self;
  v7.super_class = SFProxCardSessionServer;
  v2 = [(SFProxCardSessionServer *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucat = &gLogCategory_SFProxCardSessionServer;
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SFProxCardSessionServer;
  [(SFProxCardSessionServer *)&v4 dealloc];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB3AF990;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SFProxCardSessionServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __50__SFProxCardSessionServer_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[SFProxCardSessionServer activateWithCompletion:]_block_invoke", 30, "Activate\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = v2[2];
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(a1 + 40);

  return [v2 _activateWithCompletion:v5];
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = self->_xpcEndpoint;
  if (v11)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__13;
    v27[4] = __Block_byref_object_dispose__13;
    v28 = _Block_copy(completionCopy);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke;
    aBlock[3] = &unk_1E788C320;
    aBlock[4] = v27;
    v12 = _Block_copy(aBlock);
    v13 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v11];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v13;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEA20];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v15];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D8ABC8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v16];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_2;
    v25[3] = &unk_1E788B318;
    v25[4] = self;
    v25[5] = v12;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_3;
    v24[3] = &unk_1E788B318;
    v24[4] = self;
    v24[5] = v12;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v24];
    [(NSXPCConnection *)self->_xpcCnx resume];
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFProxCardSessionServer _activateWithCompletion:]", 30, "XPC checkin start\n");
    }

LABEL_7:
    v19 = self->_xpcCnx;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_4;
    v23[3] = &unk_1E788CB38;
    v23[4] = self;
    v23[5] = v12;
    v20 = [(NSXPCConnection *)v19 remoteObjectProxyWithErrorHandler:v23];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_5;
    v22[3] = &unk_1E788CB38;
    v22[4] = self;
    v22[5] = v12;
    [v20 xpcCheckinWithCompletion:v22];

    _Block_object_dispose(v27, 8);
    goto LABEL_8;
  }

  v18 = SFErrorF(4294960591, "No XPC endpoint", v5, v6, v7, v8, v9, v10, v21);
  (*(completionCopy + 2))(completionCopy, v18);
  [(SFProxCardSessionServer *)self _reportError:v18];

LABEL_8:
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = SFErrorF(4294960596, "XPC interrupted", a3, a4, a5, a6, a7, a8, v10);
  (*(*(a1 + 40) + 16))();
  v9 = *(a1 + 32);
  if ((v9[9] & 1) == 0 && (v9[8] & 1) == 0)
  {
    [v9 _reportError:v11];
  }
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = SFErrorF(4294896148, "XPC invalidated", a3, a4, a5, a6, a7, a8, v11);
  (*(*(a1 + 40) + 16))();
  v9 = *(a1 + 32);
  if ((*(v9 + 9) & 1) == 0 && (*(v9 + 8) & 1) == 0)
  {
    [v9 _reportError:v12];
    v9 = *(a1 + 32);
  }

  v10 = *(v9 + 24);
  *(v9 + 24) = 0;

  [*(a1 + 32) _invalidated];
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = SFNestedErrorF(a2, 4294960591, "XPC checkin XPC error", a4, a5, a6, a7, a8, v9);
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _reportError:v10];
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    v9 = SFNestedErrorF(v3, 4294960591, "XPC checkin failed", v4, v5, v6, v7, v8, v11);
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _reportError:v9];

    goto LABEL_8;
  }

  v10 = *(*(a1 + 32) + 16);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v10 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v10, "[SFProxCardSessionServer _activateWithCompletion:]_block_invoke_5", 30, "XPC checkin complete\n");
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
LABEL_8:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFProxCardSessionServer_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__37__SFProxCardSessionServer_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if (*(v5 + 9))
  {
    return result;
  }

  v10 = v1;
  v6 = result;
  v7 = *(v5 + 16);
  if (*v7 <= 30)
  {
    if (*v7 == -1)
    {
      v8 = _LogCategory_Initialize();
      v5 = v6[4];
      if (!v8)
      {
        goto LABEL_6;
      }

      v7 = *(v5 + 16);
    }

    LogPrintF(v7, "[SFProxCardSessionServer invalidate]_block_invoke", 30, "Invalidate\n", v2, v10, v3);
    v5 = v6[4];
  }

LABEL_6:
  *(v5 + 9) = 1;
  v9 = v6[4];

  return [v9 _invalidate];
}

- (void)_invalidate
{
  delegate = self->_delegate;
  self->_delegate = 0;

  [(NSXPCConnection *)self->_xpcCnx invalidate];

  [(SFProxCardSessionServer *)self _invalidated];
}

- (void)_invalidated
{
  if (!self->_invalidateDone && self->_invalidateCalled && !self->_xpcCnx)
  {
    v3 = _Block_copy(self->_invalidationHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFProxCardSessionServer _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    v5 = errorCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SFProxCardSessionServer _reportError:]", 90, "### Error: %{error}\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      v5 = errorCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = _Block_copy(self->_errorHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, errorCopy);
  }
}

- (void)performAction:(int)action completion:(id)completion
{
  v4 = *&action;
  completionCopy = completion;
  v13 = self->_xpcCnx;
  if (!v13)
  {
    v17 = SFErrorF(4294960543, "No XPC connection to client", v7, v8, v9, v10, v11, v12, v21);
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_8:
        if (v4 > 3)
        {
          v19 = "?";
        }

        else
        {
          v19 = off_1E788FA50[v4];
        }

        LogPrintF(ucat, "[SFProxCardSessionServer performAction:completion:]", 30, "PerformAction failed: %s, %{error}\n", v19, v17);
        goto LABEL_19;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_8;
      }
    }

LABEL_19:
    completionCopy[2](completionCopy, v17);

    goto LABEL_20;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__13;
  v27[4] = __Block_byref_object_dispose__13;
  v28 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SFProxCardSessionServer_performAction_completion___block_invoke;
  aBlock[3] = &unk_1E788C320;
  aBlock[4] = v27;
  v14 = _Block_copy(aBlock);
  v15 = self->_ucat;
  if (v15->var0 <= 30)
  {
    if (v15->var0 != -1)
    {
LABEL_4:
      if (v4 > 3)
      {
        v16 = "?";
      }

      else
      {
        v16 = off_1E788FA50[v4];
      }

      LogPrintF(v15, "[SFProxCardSessionServer performAction:completion:]", 30, "PerformAction start: %s\n", v16);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      v15 = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_14:
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__SFProxCardSessionServer_performAction_completion___block_invoke_2;
  v24[3] = &unk_1E788FA30;
  v25 = v4;
  v24[4] = self;
  v24[5] = v14;
  v20 = [(NSXPCConnection *)v13 remoteObjectProxyWithErrorHandler:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__SFProxCardSessionServer_performAction_completion___block_invoke_3;
  v22[3] = &unk_1E788FA30;
  v23 = v4;
  v22[4] = self;
  v22[5] = v14;
  [v20 xpcPerformAction:v4 completion:v22];

  _Block_object_dispose(v27, 8);
LABEL_20:
}

void __52__SFProxCardSessionServer_performAction_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __52__SFProxCardSessionServer_performAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8 = v3;
  if (*v4 <= 90)
  {
    if (*v4 != -1)
    {
LABEL_3:
      v5 = *(a1 + 48);
      if (v5 > 3)
      {
        v6 = "?";
      }

      else
      {
        v6 = off_1E788FA50[v5];
      }

      LogPrintF(v4, "[SFProxCardSessionServer performAction:completion:]_block_invoke_2", 90, "### PerformAction XPC error: %s, %{error}\n", v6, v3);
      goto LABEL_9;
    }

    v7 = _LogCategory_Initialize();
    v3 = v8;
    if (v7)
    {
      v4 = *(*(a1 + 32) + 16);
      goto LABEL_3;
    }
  }

LABEL_9:
  (*(*(a1 + 40) + 16))();
}

void __52__SFProxCardSessionServer_performAction_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v9 = v3;
  if (*v5 <= 30)
  {
    if (*v5 != -1)
    {
LABEL_3:
      v6 = *(a1 + 48);
      if (v6 > 3)
      {
        v7 = "?";
      }

      else
      {
        v7 = off_1E788FA50[v6];
      }

      LogPrintF(v5, "[SFProxCardSessionServer performAction:completion:]_block_invoke_3", 30, "PerformAction complete: %s, %{error}\n", v7, v3);
      v4 = *(a1 + 32);
      goto LABEL_9;
    }

    v8 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v8)
    {
      v5 = *(v4 + 16);
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_9:
  *(v4 + 8) = 1;
  (*(*(a1 + 40) + 16))();
}

@end