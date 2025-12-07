@interface RPSiriAudioSession
- (RPSiriAudioSession)init;
- (RPSiriAudioSession)initWithCoder:(id)coder;
- (id)description;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)receivedSiriAudioEvent:(id)event;
- (void)setLabel:(id)label;
- (void)xpcSiriStopClientRecordingWithDeviceId:(id)id;
@end

@implementation RPSiriAudioSession

- (RPSiriAudioSession)init
{
  v6.receiver = self;
  v6.super_class = RPSiriAudioSession;
  v2 = [(RPSiriAudioSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPSiriAudioSession;
    v4 = v3;
  }

  return v3;
}

- (RPSiriAudioSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RPSiriAudioSession;
  v5 = [(RPSiriAudioSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPSiriAudioSession;
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v6;
  }

  return v6;
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
  v4.super_class = RPSiriAudioSession;
  [(RPSiriAudioSession *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  sessionID = self->_sessionID;
  if (sessionID)
  {
    [coder encodeObject:sessionID forKey:@"sid"];
  }
}

- (id)description
{
  sessionID = self->_sessionID;
  v5 = 0;
  NSAppendPrintF(&v5, "RPSiriAudioSession %@", sessionID);
  v2 = v5;

  return v2;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB97B398;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__RPSiriAudioSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __45__RPSiriAudioSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);
  if (!v2[8])
  {
    v3 = NSRandomData();
    v4 = NSPrintF("%.3H", [v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v3, "length"));
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v2 = *(a1 + 32);
  }

  v7 = *(a1 + 40);

  return [v2 _activateWithCompletion:v7 reactivate:0];
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

      LogPrintF(ucat, "[RPSiriAudioSession _activateWithCompletion:reactivate:]", 30, "Re-activate\n");
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

    LogPrintF(ucat, "[RPSiriAudioSession _activateWithCompletion:reactivate:]", 30, "Activate\n");
  }

LABEL_11:
  [(RPSiriAudioSession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke;
  v16[3] = &unk_1E7C93500;
  v18 = reactivateCopy;
  v16[4] = self;
  v10 = completionCopy;
  v17 = v10;
  v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke_2;
  v13[3] = &unk_1E7C93500;
  v15 = reactivateCopy;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 xpcSiriAudioSessionActivate:self completion:v13];
}

void __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v5 = *v4;
  v9 = v3;
  if (*(a1 + 48) != 1)
  {
    if (v5 > 90)
    {
      goto LABEL_12;
    }

    if (v5 == -1)
    {
      v7 = _LogCategory_Initialize();
      v3 = v9;
      if (!v7)
      {
        goto LABEL_12;
      }

      v4 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v4, "[RPSiriAudioSession _activateWithCompletion:reactivate:]_block_invoke", 90, "### Activate XPC error: %{error}\n", v3);
    goto LABEL_8;
  }

  if (v5 > 90)
  {
    goto LABEL_12;
  }

  if (v5 != -1)
  {
    goto LABEL_4;
  }

  v6 = _LogCategory_Initialize();
  v3 = v9;
  if (v6)
  {
    v4 = *(*(a1 + 32) + 16);
LABEL_4:
    LogPrintF(v4, "[RPSiriAudioSession _activateWithCompletion:reactivate:]_block_invoke", 90, "### Re-activate XPC error: %{error}\n", v3);
LABEL_8:
    v3 = v9;
  }

LABEL_12:
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
    v3 = v9;
  }
}

void __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v5 = *v4;
  v11 = v3;
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

    v10 = v11;
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
    v10 = v11;
    v6 = "### Re-activate failed: %{error}\n";
LABEL_13:
    v7 = 90;
LABEL_18:
    LogPrintF(v4, "[RPSiriAudioSession _activateWithCompletion:reactivate:]_block_invoke_2", v7, v6, v10);
  }

LABEL_19:
  v8 = *(a1 + 40);
  v9 = v11;
  if (v8)
  {
    (*(v8 + 16))(v8, v11);
    v9 = v11;
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
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.siri-audio" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF84E0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__RPSiriAudioSession__ensureXPCStarted__block_invoke;
    v13[3] = &unk_1E7C92CE8;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__RPSiriAudioSession__ensureXPCStarted__block_invoke_2;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v12];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEEF8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[RPSiriAudioSession _ensureXPCStarted]", 10, "XPC started\n");
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

uint64_t __39__RPSiriAudioSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
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
      LogPrintF(ucat, "[RPSiriAudioSession _interrupted]", 50, "### Audio Session Interrupted\n");
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
    [(RPSiriAudioSession *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __32__RPSiriAudioSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__32__RPSiriAudioSession_invalidate__block_invoke(void *result)
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

    LogPrintF(v8, "[RPSiriAudioSession invalidate]_block_invoke", 30, "Invalidating RPSiriAudioSession\n", v2, v12, v3);
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

    delegate = self->_delegate;
    self->_delegate = 0;

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

      LogPrintF(ucat, "[RPSiriAudioSession _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)receivedSiriAudioEvent:(id)event
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__RPSiriAudioSession_receivedSiriAudioEvent___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__RPSiriAudioSession_receivedSiriAudioEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    v5 = [v3 remoteObjectProxy];
    [v5 xpcSiriAudioReceived:*(a1 + 40)];
  }

  else
  {
    v4 = *(v2 + 16);
    if (*v4 > 60)
    {
      return;
    }

    if (*v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v4 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v4, "[RPSiriAudioSession receivedSiriAudioEvent:]_block_invoke", 60, "### Ignoring Siri audio message when not Siri not started\n");
  }
}

- (void)xpcSiriStopClientRecordingWithDeviceId:(id)id
{
  idCopy = id;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_9;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPSiriAudioSession xpcSiriStopClientRecordingWithDeviceId:]", 30, "Received Stop Client Recording from - %@", idCopy);
  }

LABEL_6:
  v5 = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(RPSiriAudioSessionDelegate *)v5 siriAudioSessionDidReceiveStopRecordingWithDeviceId:idCopy];
  }

LABEL_9:
}

@end