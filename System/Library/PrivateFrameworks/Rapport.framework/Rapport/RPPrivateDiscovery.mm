@interface RPPrivateDiscovery
- (RPPrivateDiscovery)init;
- (RPPrivateDiscovery)initWithCoder:(id)coder;
- (id)description;
- (void)_activateDirect;
- (void)_activateXPC:(BOOL)c;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)activate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation RPPrivateDiscovery

- (RPPrivateDiscovery)init
{
  if (gRPPrivateDiscoveryClientIDOnce != -1)
  {
    [RPPrivateDiscovery init];
  }

  v7.receiver = self;
  v7.super_class = RPPrivateDiscovery;
  v3 = [(RPPrivateDiscovery *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v3->_clientID = atomic_fetch_add(&gRPPrivateDiscoveryClientIDNext, 1u) + 1;
    objc_storeStrong(&v3->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4->_ucat = &gLogCategory_RPPrivateDiscovery;
    v5 = v4;
  }

  return v4;
}

uint64_t __26__RPPrivateDiscovery_init__block_invoke()
{
  result = RandomBytes();
  gRPPrivateDiscoveryClientIDNext = word_1EB97BFAA << 16;
  return result;
}

- (RPPrivateDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RPPrivateDiscovery;
  v5 = [(RPPrivateDiscovery *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPPrivateDiscovery;
    v11 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_clientID = v11;
    }

    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientID = self->_clientID;
  v7 = coderCopy;
  if (clientID)
  {
    [coderCopy encodeInt64:clientID forKey:@"cid"];
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
  v4.super_class = RPPrivateDiscovery;
  [(RPPrivateDiscovery *)&v4 dealloc];
}

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "RPPrivateDiscovery, CID 0x%X, ST '%@'", self->_clientID, self->_serviceType);
  v2 = v4;

  return v2;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB97B0A8;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__RPPrivateDiscovery_activate__block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

int *__30__RPPrivateDiscovery_activate__block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 11) == 1)
  {
    return __30__RPPrivateDiscovery_activate__block_invoke_cold_1(v2, v3);
  }

  *(v2 + 10) = gRPPrivateDaemon != 0;
  v4 = *v3;
  if (*(*v3 + 10) == 1)
  {

    return [v4 _activateDirect];
  }

  else
  {

    return [v4 _activateXPC:0];
  }
}

- (void)_activateDirect
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPPrivateDiscovery _activateDirect]", 30, "Activate, CID 0x%X, ST '%@', direct\n", self->_clientID, self->_serviceType);
  }

LABEL_5:
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__RPPrivateDiscovery__activateDirect__block_invoke;
  v4[3] = &unk_1E7C92D58;
  v4[4] = self;
  [gRPPrivateDaemon addDiscovery:self completion:v4];
}

void __37__RPPrivateDiscovery__activateDirect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = *v5;
  if (v3)
  {
    v11 = v3;
    if (v6 <= 90)
    {
      if (v6 == -1)
      {
        v7 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v7)
        {
          goto LABEL_9;
        }

        v5 = *(v4 + 16);
        v3 = v11;
      }

      LogPrintF(v5, "[RPPrivateDiscovery _activateDirect]_block_invoke", 90, "### Activate failed: CID 0x%X, direct, %{error}\n", *(v4 + 32), v3);
      v4 = *(a1 + 32);
    }

LABEL_9:
    v8 = _Block_copy(*(v4 + 72));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v11);
    }

    goto LABEL_12;
  }

  if (v6 > 30)
  {
    goto LABEL_13;
  }

  v11 = 0;
  if (v6 != -1)
  {
LABEL_7:
    LogPrintF(v5, "[RPPrivateDiscovery _activateDirect]_block_invoke", 30, "Activated, CID 0x%X\n", *(v4 + 32));
LABEL_12:
    v3 = v11;
    goto LABEL_13;
  }

  v10 = _LogCategory_Initialize();
  v3 = 0;
  if (v10)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    goto LABEL_7;
  }

LABEL_13:
}

- (void)_activateXPC:(BOOL)c
{
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (c)
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

      LogPrintF(ucat, "[RPPrivateDiscovery _activateXPC:]", 30, "Re-activate, CID 0x%X, ST '%@'\n", self->_clientID, self->_serviceType);
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

    LogPrintF(ucat, "[RPPrivateDiscovery _activateXPC:]", 30, "Activate, CID 0x%X, ST '%@'\n", self->_clientID, self->_serviceType);
  }

LABEL_11:
  [(RPPrivateDiscovery *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__RPPrivateDiscovery__activateXPC___block_invoke;
  v11[3] = &unk_1E7C94CD8;
  cCopy = c;
  v11[4] = self;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__RPPrivateDiscovery__activateXPC___block_invoke_2;
  v9[3] = &unk_1E7C94CD8;
  cCopy2 = c;
  v9[4] = self;
  [v8 xpcPrivateDiscoveryActivate:self completion:v9];
}

void __35__RPPrivateDiscovery__activateXPC___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(a1 + 32) + 16);
  v4 = *v3;
  if (*(a1 + 40) == 1)
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    v5 = v9;
    if (v4 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(*(a1 + 32) + 16);
      v5 = v9;
LABEL_4:
      LogPrintF(v3, "[RPPrivateDiscovery _activateXPC:]_block_invoke", 90, "### Re-activate XPC error: %{error}\n", v5);
    }
  }

  else
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    v6 = v9;
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v3 = *(*(a1 + 32) + 16);
      v6 = v9;
    }

    LogPrintF(v3, "[RPPrivateDiscovery _activateXPC:]_block_invoke", 90, "### Activate XPC error: %{error}\n", v6);
  }

LABEL_12:
  v7 = _Block_copy(*(*(a1 + 32) + 72));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9);
  }
}

void __35__RPPrivateDiscovery__activateXPC___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v5 = *v4;
  v8 = v3;
  if (!v3)
  {
    if (*(a1 + 40))
    {
      if (v5 > 30)
      {
        goto LABEL_22;
      }

      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v4 = *(*(a1 + 32) + 16);
      }

      LogPrintF(v4, "[RPPrivateDiscovery _activateXPC:]_block_invoke_2", 30, "Re-activated\n");
      goto LABEL_22;
    }

    if (v5 > 30)
    {
      goto LABEL_22;
    }

    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v4 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v4, "[RPPrivateDiscovery _activateXPC:]_block_invoke_2", 30, "Activated\n");
    goto LABEL_22;
  }

  if (*(a1 + 40))
  {
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v4 = *(*(a1 + 32) + 16);
      }

      LogPrintF(v4, "[RPPrivateDiscovery _activateXPC:]_block_invoke_2", 90, "### Re-activate failed: %{error}\n", v8);
    }
  }

  else if (v5 <= 90)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v4 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v4, "[RPPrivateDiscovery _activateXPC:]_block_invoke_2", 90, "### Activate failed: %{error}\n", v8);
  }

LABEL_19:
  v6 = _Block_copy(*(*(a1 + 32) + 72));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8);
  }

LABEL_22:
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.private-discovery" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF75A8];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__RPPrivateDiscovery__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__RPPrivateDiscovery__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEE38];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }
}

uint64_t __39__RPPrivateDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPPrivateDiscovery _interrupted]", 30, "### Interrupted\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(RPPrivateDiscovery *)self _activateXPC:1];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPPrivateDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__32__RPPrivateDiscovery_invalidate__block_invoke(void *result)
{
  v2 = result[4];
  if (*(v2 + 11))
  {
    return result;
  }

  v3 = result;
  *(v2 + 11) = 1;
  v4 = result[4];
  v5 = *(v4 + 16);
  if (*v5 <= 30)
  {
    if (*v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = v3[4];
      if (!v6)
      {
        goto LABEL_6;
      }

      v5 = *(v4 + 16);
    }

    LogPrintF(v5, "[RPPrivateDiscovery invalidate]_block_invoke", 30, "Invalidate CID 0x%X\n", *(v4 + 32));
    v4 = v3[4];
  }

LABEL_6:
  if (*(v4 + 10) == 1)
  {
    [v4 _invalidateDirect];
    v4 = v3[4];
  }

  if (*(v4 + 24))
  {
    [*(v4 + 24) invalidate];
    v4 = v3[4];
  }

  return [v4 _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct && !self->_xpcCnx)
  {
    self->_invalidateCalled = 1;
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    endpointFoundHandler = self->_endpointFoundHandler;
    self->_endpointFoundHandler = 0;

    endpointLostHandler = self->_endpointLostHandler;
    self->_endpointLostHandler = 0;

    endpointChangedHandler = self->_endpointChangedHandler;
    self->_endpointChangedHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v9 = self->_invalidationHandler;
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

      LogPrintF(ucat, "[RPPrivateDiscovery _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled && !selfCopy->_changesPending)
  {
    selfCopy->_changesPending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__RPPrivateDiscovery__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    changesPending = selfCopy->_changesPending;
    selfCopy->_changesPending = 0;
    objc_sync_exit(selfCopy);

    ucat = selfCopy->_ucat;
    var0 = ucat->var0;
    if (changesPending)
    {
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          ucat = selfCopy->_ucat;
        }

        LogPrintF(ucat, "[RPPrivateDiscovery _update]", 30, "Update: %@\n", selfCopy);
      }

LABEL_12:
      xpcCnx = selfCopy->_xpcCnx;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __29__RPPrivateDiscovery__update__block_invoke;
      v9[3] = &unk_1E7C92D58;
      v9[4] = selfCopy;
      v7 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v9];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __29__RPPrivateDiscovery__update__block_invoke_2;
      v8[3] = &unk_1E7C92D58;
      v8[4] = selfCopy;
      [v7 xpcPrivateDiscoveryUpdate:selfCopy completion:v8];

      return;
    }

    if (var0 > 10)
    {
      return;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      ucat = selfCopy->_ucat;
    }

    LogPrintF(ucat, "[RPPrivateDiscovery _update]", 10, "Update: unchanged\n");
  }
}

void __29__RPPrivateDiscovery__update__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v9 = v3;
  if (*v5 <= 90)
  {
    if (*v5 != -1)
    {
LABEL_3:
      LogPrintF(v5, "[RPPrivateDiscovery _update]_block_invoke", 90, "### Update XPC error: %{error}\n", v3);
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v5 = *(v4 + 16);
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = _Block_copy(*(v4 + 72));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9);
  }
}

void __29__RPPrivateDiscovery__update__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = *v5;
  v10 = v3;
  if (!v3)
  {
    if (v6 > 30)
    {
      goto LABEL_12;
    }

    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v5 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v5, "[RPPrivateDiscovery _update]_block_invoke_2", 30, "Updated\n");
    goto LABEL_12;
  }

  if (v6 <= 90)
  {
    if (v6 == -1)
    {
      v7 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_9;
      }

      v5 = *(v4 + 16);
    }

    LogPrintF(v5, "[RPPrivateDiscovery _update]_block_invoke_2", 90, "### Update failed: %{error}\n", v10);
    v4 = *(a1 + 32);
  }

LABEL_9:
  v8 = _Block_copy(*(v4 + 72));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }

LABEL_12:
}

int *__30__RPPrivateDiscovery_activate__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*result <= 115)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(*a2 + 16);
    }

    return LogPrintF(result, "[RPPrivateDiscovery activate]_block_invoke", 115, "### Activate after invalidate\n");
  }

  return result;
}

@end