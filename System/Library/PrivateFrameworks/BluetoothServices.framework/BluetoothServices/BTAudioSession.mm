@interface BTAudioSession
- (BTAudioSession)init;
- (BTAudioSession)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation BTAudioSession

- (BTAudioSession)init
{
  v5.receiver = self;
  v5.super_class = BTAudioSession;
  v2 = [(BTAudioSession *)&v5 init];
  if (v2)
  {
    v2->_clientID = BTXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v2->_ucat = &gLogCategory_BTAudioSession;
    v3 = v2;
  }

  return v2;
}

- (BTAudioSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BTAudioSession *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_category = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  category = self->_category;
  v8 = coderCopy;
  if (category)
  {
    [coderCopy encodeInteger:category forKey:@"cat"];
    coderCopy = v8;
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [v8 encodeInt64:clientID forKey:@"cid"];
    coderCopy = v8;
  }

  label = self->_label;
  if (label)
  {
    [v8 encodeObject:label forKey:@"label"];
    coderCopy = v8;
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
  v4.super_class = BTAudioSession;
  [(BTAudioSession *)&v4 dealloc];
}

- (id)description
{
  v6 = 0;
  category = self->_category;
  if (category > 5)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_278D11A78[category];
  }

  NSAppendPrintF(&v6, "BTAudioSession, CID 0x%X, Category %s, Timeout %.3f seconds", self->_clientID, v3, self->_timeoutSeconds);
  v4 = v6;

  return v4;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_27EC68578;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__BTAudioSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_278D11920;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __41__BTAudioSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = NSErrorF(*MEMORY[0x277CCA590], 4294960575, "Activate already called");
    v9 = v3;
    if (gLogCategory_BTAudioSession <= 90)
    {
      if (gLogCategory_BTAudioSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v9, v4))
      {
        __41__BTAudioSession_activateWithCompletion___block_invoke_cold_1(v3);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v5 = MEMORY[0x245CFACE0](*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = *(a1 + 32);

    [v8 _activate];
  }
}

- (void)_activate
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[BTAudioSession _activate]", 30, "Activate, %@", self);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v8 = self->_timeoutTimer;
  self->_timeoutTimer = v7;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __27__BTAudioSession__activate__block_invoke;
  handler[3] = &unk_278D11A58;
  handler[4] = v7;
  handler[5] = self;
  dispatch_source_set_event_handler(v7, handler);
  CUDispatchTimerSet();
  dispatch_activate(v7);
  _ensureXPCStarted = [(BTAudioSession *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    [(BTAudioSession *)self _reportError:_ensureXPCStarted];
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __27__BTAudioSession__activate__block_invoke_2;
    v13[3] = &unk_278D11970;
    v13[4] = self;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __27__BTAudioSession__activate__block_invoke_3;
    v12[3] = &unk_278D11970;
    v12[4] = self;
    [v11 audioSessionActivate:self completion:v12];
  }
}

void __27__BTAudioSession__activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 32);
  if (v9 == v10)
  {
    if (v9)
    {
      v12 = v10;
      dispatch_source_cancel(v12);
      v13 = *(a1 + 40);
      v14 = *(v13 + 32);
      *(v13 + 32) = 0;
    }

    v15 = *(a1 + 40);
    v17 = BTErrorF(4294960574, "Timeout", a3, a4, a5, a6, a7, a8, v16);
    [v15 _reportError:v17];
  }
}

void __27__BTAudioSession__activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[5];
  v7 = v3;
  if (*v5 <= 90)
  {
    if (*v5 != -1)
    {
LABEL_3:
      LogPrintF(v5, "[BTAudioSession _activate]_block_invoke_2", 90, "### Activate XPC error: %{error}", v3);
      v3 = v7;
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v5 = v4[5];
      v3 = v7;
      goto LABEL_3;
    }

    v3 = v7;
  }

LABEL_6:
  [v4 _reportError:v3];
}

void __27__BTAudioSession__activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v18 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = v4[5];
    if (*v6 <= 90)
    {
      if (*v6 == -1)
      {
        v13 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v13)
        {
          v5 = v18;
          goto LABEL_12;
        }

        v6 = v4[5];
        v5 = v18;
      }

      LogPrintF(v6, "[BTAudioSession _activate]_block_invoke_3", 90, "### Activate failed: %{error}", v5);
      v5 = v18;
      v4 = *(a1 + 32);
    }

LABEL_12:
    [v4 _reportError:v5];
    goto LABEL_17;
  }

  v7 = v4[4];
  if (v7)
  {
    v8 = v7;
    dispatch_source_cancel(v8);
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  if (*v12 <= 30)
  {
    if (*v12 == -1)
    {
      v14 = _LogCategory_Initialize();
      v11 = *(a1 + 32);
      if (!v14)
      {
        goto LABEL_14;
      }

      v12 = *(v11 + 40);
    }

    LogPrintF(v12, "[BTAudioSession _activate]_block_invoke_3", 30, "Activated");
    v11 = *(a1 + 32);
  }

LABEL_14:
  v15 = MEMORY[0x245CFACE0](*(v11 + 16));
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = 0;

  if (v15)
  {
    v15[2](v15, 0);
  }

LABEL_17:
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D8F88];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__BTAudioSession__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278D11830;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__BTAudioSession__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278D11830;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D9090];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __35__BTAudioSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  selfCopy = self;
  if (gLogCategory_BTAudioSession <= 50)
  {
    if (gLogCategory_BTAudioSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTAudioSession *)self _interrupted];
    }
  }

  v10 = BTErrorF(4294960596, "XPC interrupted", v2, v3, v4, v5, v6, v7, v9);
  [(BTAudioSession *)selfCopy _reportError:v10];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BTAudioSession_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __28__BTAudioSession_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_BTAudioSession <= 30 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
    {
      __28__BTAudioSession_invalidate__block_invoke_cold_1();
    }

    v4 = *(*(a1 + 32) + 32);
    if (v4)
    {
      v5 = v4;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      *(v6 + 32) = 0;
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    if (v9)
    {
      [v9 invalidate];
      v8 = *(a1 + 32);
    }

    v20 = MEMORY[0x245CFACE0](*(v8 + 16));
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    *(v10 + 16) = 0;

    if (v20)
    {
      v18 = BTErrorF(4294896148, "Invalidate called", v12, v13, v14, v15, v16, v17, v19);
      v20[2](v20, v18);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    selfCopy = self;
    if (!self->_invalidateCalled && gLogCategory_BTAudioSession <= 50)
    {
      if (gLogCategory_BTAudioSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(BTAudioSession *)self _invalidated];
      }
    }

    if (!selfCopy->_xpcCnx)
    {
      v19 = MEMORY[0x245CFACE0](selfCopy->_activateCompletion, a2);
      activateCompletion = selfCopy->_activateCompletion;
      selfCopy->_activateCompletion = 0;

      if (v19)
      {
        v11 = BTErrorF(4294896148, "Unexpectedly invalidated", v5, v6, v7, v8, v9, v10, v18);
        v19[2](v19, v11);
      }

      v12 = MEMORY[0x245CFACE0](selfCopy->_invalidationHandler);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      if (v12)
      {
        v12[2](v12);
      }

      timeoutTimer = selfCopy->_timeoutTimer;
      if (timeoutTimer)
      {
        v15 = timeoutTimer;
        dispatch_source_cancel(v15);
        v16 = selfCopy->_timeoutTimer;
        selfCopy->_timeoutTimer = 0;
      }

      xpcCnx = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;

      selfCopy->_invalidateDone = 1;
      if (gLogCategory_BTAudioSession <= 10 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
      {
        [BTAudioSession _invalidated];
      }
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (gLogCategory_BTAudioSession <= 90 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
  {
    [BTAudioSession _reportError:errorCopy];
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v7 = MEMORY[0x245CFACE0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v7)
  {
    (v7)[2](v7, errorCopy);
  }
}

@end