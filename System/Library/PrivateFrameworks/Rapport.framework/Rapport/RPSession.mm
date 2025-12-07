@interface RPSession
- (RPSession)init;
- (RPSession)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)setLabel:(id)label;
@end

@implementation RPSession

- (RPSession)init
{
  v8.receiver = self;
  v8.super_class = RPSession;
  v2 = [(RPSession *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    localIdentifier = v3->_localIdentifier;
    v3->_localIdentifier = uUID;

    v3->_ucat = &gLogCategory_RPSession;
    v6 = v3;
  }

  return v3;
}

- (RPSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = RPSession;
  v5 = [(RPSession *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPSession;
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    label = v6->_label;
    if (label)
    {
      v9 = qword_1EB97B328;
      v10 = label;
      LogCategoryReplaceF(&v6->_ucat, "%s-%s", v9, [(NSString *)v10 UTF8String]);
    }

    v11 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = self->_label;
  v7 = coderCopy;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"label"];
    coderCopy = v7;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v7 encodeObject:serviceType forKey:@"st"];
    coderCopy = v7;
  }
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
  v4.super_class = RPSession;
  [(RPSession *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v11 = 0;
  NSAppendPrintF(&v11, "RPSession: ST '%@', SID 0x%llX", *&level, self->_serviceType, self->_sessionID);
  v4 = v11;
  v5 = v4;
  peerID = self->_peerID;
  if (peerID)
  {
    v10 = v4;
    v7 = peerID;
    NSAppendPrintF(&v10, ", Peer %@", v7);
    v8 = v10;

    v5 = v8;
  }

  return v5;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB97B328;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activateCalled = selfCopy->_activateCalled;
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__RPSession_activateWithCompletion___block_invoke;
  block[3] = &unk_1E7C92F60;
  block[4] = selfCopy;
  v10 = completionCopy;
  v11 = activateCalled;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);

  objc_sync_exit(selfCopy);
}

void __36__RPSession_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 9) == 1)
  {
    v10 = RPErrorF(4294896148, "Activate after invalidate", a3, a4, a5, a6, a7, a8, v18);
    v11 = *(*(a1 + 32) + 16);
    v19 = v10;
    if (*v11 <= 115)
    {
      if (*v11 == -1)
      {
        v14 = _LogCategory_Initialize();
        v10 = v19;
        if (!v14)
        {
          goto LABEL_13;
        }

        v11 = *(*(a1 + 32) + 16);
      }

      LogPrintF(v11, "[RPSession activateWithCompletion:]_block_invoke", 115, "### Activate failed: %{error}\n", v10);
      v10 = v19;
    }

LABEL_13:
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v19);
      v10 = v19;
    }

    return;
  }

  if (*(a1 + 48) == 1)
  {
    v12 = *(v9 + 16);
    if (*v12 > 30)
    {
      goto LABEL_19;
    }

    if (*v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_19:
        v16 = *(a1 + 40);
        if (v16)
        {
          v17 = *(v16 + 16);

          v17();
        }

        return;
      }

      v12 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v12, "[RPSession activateWithCompletion:]_block_invoke", 30, "Activate when already activated\n");
    goto LABEL_19;
  }

  v13 = *(a1 + 40);

  [v9 _activateWithCompletion:v13 reactivate:{0, a5, a6, a7, a8}];
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (reactivateCopy)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPSession _activateWithCompletion:reactivate:]", 30, "Re-activate\n");
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPSession _activateWithCompletion:reactivate:]", 30, "Activate\n");
  }

LABEL_11:
  [(RPSession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__RPSession__activateWithCompletion_reactivate___block_invoke;
  v16[3] = &unk_1E7C93500;
  v18 = reactivateCopy;
  v16[4] = self;
  v10 = completionCopy;
  v17 = v10;
  v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__RPSession__activateWithCompletion_reactivate___block_invoke_2;
  v13[3] = &unk_1E7C93500;
  v15 = reactivateCopy;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 xpcSessionActivate:self completion:v13];
}

void __48__RPSession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 32) + 16);
  v4 = *v3;
  if (*(a1 + 48) == 1)
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    if (v4 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(*(a1 + 32) + 16);
LABEL_4:
      LogPrintF(v3, "[RPSession _activateWithCompletion:reactivate:]_block_invoke", 90, "### Re-activate XPC error: %{error}\n", v6);
    }
  }

  else
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v3 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v3, "[RPSession _activateWithCompletion:reactivate:]_block_invoke", 90, "### Activate XPC error: %{error}\n", v6);
  }

LABEL_12:
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __48__RPSession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v5 = *v4;
  v10 = v3;
  if (!v3)
  {
    if (*(a1 + 48))
    {
      if (v5 > 30)
      {
        goto LABEL_19;
      }

      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v4 = *(*(a1 + 32) + 16);
      }

      v6 = "Re-activated\n";
    }

    else
    {
      if (v5 > 30)
      {
        goto LABEL_19;
      }

      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v4 = *(*(a1 + 32) + 16);
      }

      v6 = "Activated\n";
    }

    v7 = 30;
    goto LABEL_18;
  }

  if (!*(a1 + 48))
  {
    if (v5 > 90)
    {
      goto LABEL_19;
    }

    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v4 = *(*(a1 + 32) + 16);
    }

    v9 = v10;
    v6 = "### Activate failed: %{error}\n";
    goto LABEL_13;
  }

  if (v5 > 90)
  {
    goto LABEL_19;
  }

  if (v5 != -1)
  {
    goto LABEL_5;
  }

  if (_LogCategory_Initialize())
  {
    v4 = *(*(a1 + 32) + 16);
LABEL_5:
    v9 = v10;
    v6 = "### Re-activate failed: %{error}\n";
LABEL_13:
    v7 = 90;
LABEL_18:
    LogPrintF(v4, "[RPSession _activateWithCompletion:reactivate:]_block_invoke_2", v7, v6, v9);
  }

LABEL_19:
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[11] = v2;
    v13[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.CompanionLink" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EEF148];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __30__RPSession__ensureXPCStarted__block_invoke;
    v13[3] = &unk_1E7C92CE8;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __30__RPSession__ensureXPCStarted__block_invoke_2;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v12];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFED18];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[RPSession _ensureXPCStarted]", 10, "XPC started\n");
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }
}

uint64_t __30__RPSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 50)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPSession _interrupted]", 50, "### Interrupted\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_activateCalled)
  {
    [(RPSession *)self _activateWithCompletion:0 reactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v5 = *(interruptionHandler + 2);

    v5();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__RPSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__23__RPSession_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if (*(v5 + 9))
  {
    return result;
  }

  v11 = v2;
  v12 = v1;
  v6 = result;
  *(v5 + 9) = 1;
  v7 = result[4];
  v8 = *(v7 + 16);
  if (*v8 <= 30)
  {
    if (*v8 == -1)
    {
      v9 = _LogCategory_Initialize();
      v7 = v6[4];
      if (!v9)
      {
        goto LABEL_6;
      }

      v8 = *(v7 + 16);
    }

    LogPrintF(v8, "[RPSession invalidate]_block_invoke", 30, "Invalidating\n", v2, v12, v3);
    v7 = v6[4];
  }

LABEL_6:
  [*(v7 + 24) invalidate];
  v10 = v6[4];

  return [v10 _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    cnx = self->_cnx;
    self->_cnx = 0;

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

      LogPrintF(ucat, "[RPSession _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

@end