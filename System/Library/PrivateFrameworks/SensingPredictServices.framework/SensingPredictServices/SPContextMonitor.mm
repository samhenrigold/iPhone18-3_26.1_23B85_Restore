@interface SPContextMonitor
- (BOOL)isSystemContext;
- (SPContextMonitor)init;
- (SPContextMonitor)initWithCoder:(id)coder;
- (id)description;
- (void)_activate:(BOOL)_activate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)contextMonitorContextChanged:(id)changed;
- (void)contextSignalUpdated:(id)updated fusedState:(unsigned int)state;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setContextChangeFlags:(unsigned int)flags;
@end

@implementation SPContextMonitor

- (SPContextMonitor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SPContextMonitor *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_contextChangeFlags = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contextChangeFlags = self->_contextChangeFlags;
  if (contextChangeFlags)
  {
    [coder encodeInt64:contextChangeFlags forKey:@"cmcf"];
  }
}

- (SPContextMonitor)init
{
  v5.receiver = self;
  v5.super_class = SPContextMonitor;
  v2 = [(SPContextMonitor *)&v5 init];
  if (v2)
  {
    if (SPXPCGetNextClientID_sOnce != -1)
    {
      [SPContextMonitor init];
    }

    v2->_clientID = atomic_fetch_add(&SPXPCGetNextClientID_sNext, 1u) + 1;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (void)setContextChangeFlags:(unsigned int)flags
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__SPContextMonitor_setContextChangeFlags___block_invoke;
    v6[3] = &unk_279B97290;
    v6[4] = selfCopy;
    flagsCopy = flags;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    selfCopy->_contextChangeFlags = flags;
  }

  objc_sync_exit(selfCopy);
}

void __42__SPContextMonitor_setContextChangeFlags___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v2 contextMonitorUpdate:*(a1 + 32)];
}

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "SPContextMonitor, CID 0x%X cmcf %d", self->_clientID, self->_contextChangeFlags);
  v2 = v4;

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SPContextMonitor_activateWithCompletion___block_invoke;
  v7[3] = &unk_279B972B8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __43__SPContextMonitor_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = NSErrorF();
    v9 = v3;
    if (gLogCategory_SPContextMonitor <= 90)
    {
      if (gLogCategory_SPContextMonitor != -1 || (v4 = _LogCategory_Initialize(), v3 = v9, v4))
      {
        __43__SPContextMonitor_activateWithCompletion___block_invoke_cold_1(v3);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v5 = MEMORY[0x266759430](*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = *(a1 + 32);

    [v8 _activate:0];
  }
}

- (void)_activate:(BOOL)_activate
{
  if (!self->_invalidateCalled)
  {
    if (_activate)
    {
      if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v5 = "Re-activate XPC, CID 0x%X";
    }

    else
    {
      if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v5 = "Activate, CID 0x%X";
    }

    [(SPContextMonitor *)self _activate:v5];
LABEL_13:
    [(SPContextMonitor *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __30__SPContextMonitor__activate___block_invoke;
    v13[3] = &unk_279B972E0;
    _activateCopy = _activate;
    v13[4] = self;
    v7 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__SPContextMonitor__activate___block_invoke_2;
    v11[3] = &unk_279B972E0;
    v11[4] = self;
    _activateCopy2 = _activate;
    [v7 contextMonitorActivate:self completion:v11];

    return;
  }

  v10 = NSErrorF();
  if (gLogCategory_SPContextMonitor <= 90 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPContextMonitor, "[SPContextMonitor _activate:]", 90, "### Activate failed: %@, %@", self, v10);
  }

  v8 = MEMORY[0x266759430](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v8)
  {
    (v8)[2](v8, v10);
  }
}

void __30__SPContextMonitor__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_SPContextMonitor <= 30)
    {
      if (gLogCategory_SPContextMonitor != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __30__SPContextMonitor__activate___block_invoke_cold_2(v3);
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (gLogCategory_SPContextMonitor <= 90)
  {
    if (gLogCategory_SPContextMonitor != -1 || (v5 = _LogCategory_Initialize(), v3 = v6, v5))
    {
      __30__SPContextMonitor__activate___block_invoke_cold_1(v3);
      goto LABEL_13;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __30__SPContextMonitor__activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_SPContextMonitor <= 90)
    {
      if (gLogCategory_SPContextMonitor != -1 || (v5 = _LogCategory_Initialize(), v4 = v10, v5))
      {
        __30__SPContextMonitor__activate___block_invoke_2_cold_1(v4);
        v4 = v10;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    v6 = "Re-activated: %@\n";
  }

  else
  {
    if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    v6 = "Activated: %@\n";
  }

  __30__SPContextMonitor__activate___block_invoke_2_cold_2(a1, v6);
LABEL_14:
  v7 = MEMORY[0x266759430](*(*(a1 + 32) + 16));
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_17:
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.SensingPredictXPCService"];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876FBCA0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__SPContextMonitor__ensureXPCStarted__block_invoke;
    v12[3] = &unk_279B97308;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SPContextMonitor__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_279B97308;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876FBD00];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }
}

uint64_t __37__SPContextMonitor__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SPContextMonitor <= 50)
  {
    if (gLogCategory_SPContextMonitor != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SPContextMonitor *)v3 _interrupted];
    }
  }

  v6 = NSErrorF();
  [(SPContextMonitor *)self _reportError:v6];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v9 = *(interruptionHandler + 2);

    v9();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SPContextMonitor_invalidate__block_invoke;
  block[3] = &unk_279B97308;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __30__SPContextMonitor_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_SPContextMonitor <= 30 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
    {
      __30__SPContextMonitor_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    if (v5)
    {
      [v5 invalidate];
      v4 = *(a1 + 32);
    }

    v9 = MEMORY[0x266759430](*(v4 + 16));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    if (v9)
    {
      v8 = NSErrorF();
      v9[2](v9, v8);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)contextMonitorContextChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  contextChangeHandler = self->_contextChangeHandler;
  if (contextChangeHandler)
  {
    contextChangeHandler[2](contextChangeHandler, changedCopy);
  }

  else if (gLogCategory_SPContextMonitor <= 30 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    [SPContextMonitor contextMonitorContextChanged:?];
  }
}

- (void)contextSignalUpdated:(id)updated fusedState:(unsigned int)state
{
  v4 = *&state;
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  contextSignalUpdatedHandler = self->_contextSignalUpdatedHandler;
  if (contextSignalUpdatedHandler)
  {
    contextSignalUpdatedHandler[2](contextSignalUpdatedHandler, v4, updatedCopy);
  }

  else if (gLogCategory_SPContextMonitor <= 30 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    [SPContextMonitor contextSignalUpdated:? fusedState:?];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    selfCopy = self;
    if (!self->_invalidateCalled && gLogCategory_SPContextMonitor <= 50)
    {
      if (gLogCategory_SPContextMonitor != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SPContextMonitor *)self _invalidated];
      }
    }

    if (!selfCopy->_xpcCnx)
    {
      v9 = MEMORY[0x266759430](selfCopy->_activateCompletion, a2);
      activateCompletion = selfCopy->_activateCompletion;
      selfCopy->_activateCompletion = 0;

      if (v9)
      {
        v5 = NSErrorF();
        v9[2](v9, v5);
      }

      v6 = MEMORY[0x266759430](selfCopy->_invalidationHandler);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      if (v6)
      {
        v6[2](v6);
      }

      xpcCnx = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;

      selfCopy->_invalidateDone = 1;
      if (gLogCategory_SPContextMonitor <= 10 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
      {
        [SPContextMonitor _invalidated];
      }
    }
  }
}

- (BOOL)isSystemContext
{
  if (isSystemContext_once != -1)
  {
    [SPContextMonitor isSystemContext];
  }

  return isSystemContext_result;
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (gLogCategory_SPContextMonitor <= 90 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    [SPContextMonitor _reportError:errorCopy];
  }

  v4 = MEMORY[0x266759430](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, errorCopy);
  }
}

@end