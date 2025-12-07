@interface SFRemoteInteractionSession
- (SFRemoteInteractionSession)init;
- (SFRemoteInteractionSession)initWithCoder:(id)coder;
- (id)description;
- (void)_activateWithCompletion:(id)completion;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_sessionHandleEvent:(id)event;
- (void)_sessionSendPayload:(id)payload;
- (void)_sessionStart;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)remoteInteractionSessionRemoteTextEvent:(id)event;
- (void)remoteInteractionSessionTextSessionDidBegin:(id)begin;
- (void)remoteInteractionSessionTextSessionDidChange:(id)change;
- (void)remoteInteractionSessionTextSessionDidEnd:(id)end;
- (void)sendPayload:(id)payload;
- (void)setDispatchQueue:(id)queue;
@end

@implementation SFRemoteInteractionSession

- (SFRemoteInteractionSession)init
{
  v6.receiver = self;
  v6.super_class = SFRemoteInteractionSession;
  v2 = [(SFRemoteInteractionSession *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  peerDevice = self->_peerDevice;
  if (peerDevice)
  {
    [coder encodeObject:peerDevice forKey:@"peerDevice"];
  }
}

- (id)description
{
  v8 = 0;
  NSAppendPrintF(&v8, "SFRemoteInteractionSession %{ptr}", self);
  v3 = v8;
  v4 = v3;
  if (self->_invalidateCalled)
  {
    v7 = v3;
    NSAppendPrintF(&v7, ", invalidated");
    v5 = v7;

    v4 = v5;
  }

  return v4;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF("Attempt to set dispatch queue after activate has been called");
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
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
  v8[2] = __53__SFRemoteInteractionSession_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30)
  {
    if (gLogCategory_SFRemoteInteractionSession != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(SFRemoteInteractionSession *)v5 _activateWithCompletion:v6, v7];
    }
  }

  if (self->_invalidateCalled)
  {
    v15 = 4294960572;
LABEL_13:
    [(SFRemoteInteractionSession *)completionCopy _activateWithCompletion:v15, &v24, v25];
    goto LABEL_10;
  }

  if (!self->_peerDevice)
  {
    v15 = 4294960551;
    goto LABEL_13;
  }

  if (self->_agent)
  {
    v8 = objc_alloc_init(SFSession);
    remoteSession = self->_remoteSession;
    self->_remoteSession = v8;

    [(SFSession *)self->_remoteSession setDispatchQueue:self->_dispatchQueue];
    [(SFSession *)self->_remoteSession setPeerDevice:self->_peerDevice];
    [(SFSession *)self->_remoteSession setServiceIdentifier:@"com.apple.sharing.Control"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke;
    v23[3] = &unk_1E78903D0;
    v23[4] = self;
    [(SFSession *)self->_remoteSession setEventMessageHandler:v23];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_2;
    v22[3] = &unk_1E788B198;
    v22[4] = self;
    [(SFSession *)self->_remoteSession setInvalidationHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_3;
    v21[3] = &unk_1E788CFF8;
    v21[4] = self;
    [(SFSession *)self->_remoteSession setReceivedObjectHandler:v21];
    v10 = self->_remoteSession;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_4;
    v19[3] = &unk_1E788BF88;
    v19[4] = self;
    v20 = completionCopy;
    [(SFSession *)v10 activateWithCompletion:v19];
  }

  else
  {
    v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteInteractionSession/remoteInteractionSessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    [(SFRemoteInteractionSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_5;
    v16[3] = &unk_1E788B6D8;
    v13 = completionCopy;
    v17 = v13;
    v14 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
    [v14 remoteInteractionSessionActivate:self completion:v13];

    os_activity_scope_leave(&state);
  }

LABEL_10:
}

void __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  CFDictionaryGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  v5 = v7;
  if (v7)
  {
    v6 = *(*(a1 + 32) + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, v7);
      v5 = v7;
    }
  }
}

void __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sessionStart];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFRemoteInteractionSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  if (!self->_invalidateDone && gLogCategory_SFRemoteInteractionSession <= 30)
  {
    if (gLogCategory_SFRemoteInteractionSession != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFRemoteInteractionSession *)v3 _invalidate];
    }
  }

  remoteSession = self->_remoteSession;
  if (remoteSession)
  {
    [(SFSession *)remoteSession invalidate];
    v7 = self->_remoteSession;
    self->_remoteSession = 0;
LABEL_10:

    return;
  }

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    [(NSXPCConnection *)xpcCnx invalidate];
    v7 = self->_xpcCnx;
    self->_xpcCnx = 0;
    goto LABEL_10;
  }

  [(SFRemoteInteractionSession *)self _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFRemoteInteractionSession <= 50)
    {
      if (gLogCategory_SFRemoteInteractionSession != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFRemoteInteractionSession *)v3 _invalidated];
      }
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v8 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    textSessionDidBegin = self->_textSessionDidBegin;
    self->_textSessionDidBegin = 0;

    textSessionDidEnd = self->_textSessionDidEnd;
    self->_textSessionDidEnd = 0;

    textSessionDidChange = self->_textSessionDidChange;
    self->_textSessionDidChange = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFRemoteInteractionSession <= 10 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _invalidated];
    }
  }
}

- (void)sendPayload:(id)payload
{
  payloadCopy = payload;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFRemoteInteractionSession_sendPayload___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  dispatch_async(dispatchQueue, v7);
}

void __42__SFRemoteInteractionSession_sendPayload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = *(a1 + 40);

    [v2 _sessionSendPayload:v3];
  }

  else
  {
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteInteractionSession/remoteInteractionSessionSendPayload", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    v5 = [*(*(a1 + 32) + 24) remoteObjectProxy];
    [v5 remoteInteractionSessionSendPayload:*(a1 + 40)];

    os_activity_scope_leave(&v6);
  }
}

- (void)_sessionStart
{
  v4 = objc_alloc_init(SFEventMessage);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(SFMessage *)v4 setIdentifier:uUID];

  [(SFMessage *)v4 setHeaderFields:&unk_1F1D7D718];
  [(SFMessage *)v4 setPeerDevice:self->_peerDevice];
  [(SFSession *)self->_remoteSession sendEvent:v4];
}

- (void)_sessionSendPayload:(id)payload
{
  payloadCopy = payload;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v5;
  v20 = 0;
  if (payloadCopy)
  {
    v9 = SFRTIDataPayloadForData(payloadCopy);
    if (v9)
    {
      v12 = v9;
      [v8 setObject:payloadCopy forKeyedSubscript:@"rp"];
      v19 = 0;
      SFRemoteTextInputPayloadToLegacyAPI(v12, &v20, &v19);
      v13 = v19;
      v14 = v20;
      if (v20)
      {
        if (gLogCategory_SFRemoteInteractionSession <= 30)
        {
          if (gLogCategory_SFRemoteInteractionSession != -1 || (v15 = _LogCategory_Initialize(), v14 = v20, v15))
          {
            LogPrintF(&gLogCategory_SFRemoteInteractionSession, "[SFRemoteInteractionSession _sessionSendPayload:]", 30, "Inferred legacy opCode: %d", v14);
            v14 = v20;
          }
        }

        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v14];
        [v8 setObject:v16 forKeyedSubscript:@"o"];

        if (v13)
        {
          [v8 setObject:v13 forKeyedSubscript:@"t"];
        }
      }

      else if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteInteractionSession _sessionSendPayload:];
      }

      v17 = objc_alloc_init(SFEventMessage);
      [(SFMessage *)v17 setHeaderFields:v8];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [(SFMessage *)v17 setIdentifier:uUID];

      [(SFMessage *)v17 setPeerDevice:self->_peerDevice];
      [(SFSession *)self->_remoteSession sendEvent:v17];
    }

    else
    {
      [(SFRemoteInteractionSession *)0 _sessionSendPayload:v10, v11];
    }
  }

  else
  {
    [(SFRemoteInteractionSession *)v5 _sessionSendPayload:v6, v7];
  }
}

- (void)_sessionHandleEvent:(id)event
{
  eventCopy = event;
  v23 = 0;
  headerFields = [eventCopy headerFields];
  CFDictionaryGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  if (v6)
  {
    if (gLogCategory_SFRemoteInteractionSession <= 30)
    {
      if (gLogCategory_SFRemoteInteractionSession != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        [(SFRemoteInteractionSession *)v7 _sessionHandleEvent:v8, v9];
      }
    }

    remoteTextEventHandler = self->_remoteTextEventHandler;
    if (remoteTextEventHandler)
    {
      remoteTextEventHandler[2](remoteTextEventHandler, v6);
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  headerFields2 = [eventCopy headerFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v13 = Int64Ranged;
  if (Int64Ranged > 9u)
  {
    goto LABEL_60;
  }

  if (((1 << Int64Ranged) & 0x23C) != 0)
  {
    if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _sessionHandleEvent:?];
    }

    goto LABEL_12;
  }

  if (((1 << Int64Ranged) & 0xC0) != 0)
  {
    headerFields3 = [eventCopy headerFields];
    CFDictionaryGetTypeID();
    v14 = CFDictionaryGetTypedValue();

    v18 = [[SFRemoteTextSessionInfo alloc] initWithDictionary:v14];
    if (v18)
    {
      v15 = v18;
      if (v13 == 6)
      {
        if (self->_agent)
        {
          peerDevice = [eventCopy peerDevice];
          if (peerDevice)
          {
            [(SDRemoteInteractionAgent *)self->_agent clientTextSessionDidBegin:v15 device:peerDevice];
          }
        }

        if (!self->_textSessionDidBegin)
        {
          if (gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
          {
            [SFRemoteInteractionSession _sessionHandleEvent:];
          }

          goto LABEL_14;
        }

        if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
        {
          [SFRemoteInteractionSession _sessionHandleEvent:];
        }

        textSessionDidBegin = self->_textSessionDidBegin;
      }

      else
      {
        if (!self->_textSessionDidEnd)
        {
          if (gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
          {
            [SFRemoteInteractionSession _sessionHandleEvent:];
          }

          goto LABEL_14;
        }

        if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
        {
          [SFRemoteInteractionSession _sessionHandleEvent:];
        }

        textSessionDidBegin = self->_textSessionDidEnd;
      }

      textSessionDidBegin[2](textSessionDidBegin, v15);
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _sessionHandleEvent:?];
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  if (Int64Ranged != 8)
  {
LABEL_60:
    if (gLogCategory_SFRemoteInteractionSession <= 40 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _sessionHandleEvent:?];
    }

    goto LABEL_12;
  }

  headerFields4 = [eventCopy headerFields];
  CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue();

  v15 = objc_alloc_init(SFRemoteTextSessionInfo);
  [(SFRemoteTextSessionInfo *)v15 setText:v16];
  textSessionDidChange = self->_textSessionDidChange;
  if (textSessionDidChange)
  {
    textSessionDidChange[2](textSessionDidChange, v15);
  }

  v14 = 0;
LABEL_15:
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
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__SFRemoteInteractionSession__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__SFRemoteInteractionSession__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v7];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEEA0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFRemoteInteractionSession <= 10 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 50)
  {
    if (gLogCategory_SFRemoteInteractionSession != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFRemoteInteractionSession *)v3 _interrupted];
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_activateCalled)
  {
    v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteInteractionSession/remoteInteractionSessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9.opaque[0] = 0;
    v9.opaque[1] = 0;
    os_activity_scope_enter(v7, &v9);
    if (gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFRemoteInteractionSession, "[SFRemoteInteractionSession _interrupted]", 50, "Restarting after interruption\n");
    }

    [(SFRemoteInteractionSession *)self _ensureXPCStarted];
    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy remoteInteractionSessionActivate:self completion:&__block_literal_global_64];

    os_activity_scope_leave(&v9);
  }
}

void __42__SFRemoteInteractionSession__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFRemoteInteractionSession <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFRemoteInteractionSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __42__SFRemoteInteractionSession__interrupted__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)remoteInteractionSessionRemoteTextEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30)
  {
    if (gLogCategory_SFRemoteInteractionSession != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(SFRemoteInteractionSession *)v4 remoteInteractionSessionRemoteTextEvent:v5, v6];
    }
  }

  remoteTextEventHandler = self->_remoteTextEventHandler;
  v8 = eventCopy;
  if (remoteTextEventHandler)
  {
    remoteTextEventHandler[2](remoteTextEventHandler, eventCopy);
    v8 = eventCopy;
  }
}

- (void)remoteInteractionSessionTextSessionDidBegin:(id)begin
{
  beginCopy = begin;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession remoteInteractionSessionTextSessionDidBegin:beginCopy];
  }

  textSessionDidBegin = self->_textSessionDidBegin;
  v5 = beginCopy;
  if (textSessionDidBegin)
  {
    textSessionDidBegin[2](textSessionDidBegin, beginCopy);
    v5 = beginCopy;
  }
}

- (void)remoteInteractionSessionTextSessionDidEnd:(id)end
{
  endCopy = end;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession remoteInteractionSessionTextSessionDidEnd:endCopy];
  }

  textSessionDidEnd = self->_textSessionDidEnd;
  v5 = endCopy;
  if (textSessionDidEnd)
  {
    textSessionDidEnd[2](textSessionDidEnd, endCopy);
    v5 = endCopy;
  }
}

- (void)remoteInteractionSessionTextSessionDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 10 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession remoteInteractionSessionTextSessionDidChange:changeCopy];
  }

  textSessionDidChange = self->_textSessionDidChange;
  v5 = changeCopy;
  if (textSessionDidChange)
  {
    textSessionDidChange[2](textSessionDidChange, changeCopy);
    v5 = changeCopy;
  }
}

- (SFRemoteInteractionSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SFRemoteInteractionSession;
  v5 = [(SFRemoteInteractionSession *)&v12 init];
  if (v5)
  {
    v6 = SFMainQueue();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    if ([coderCopy containsValueForKey:@"peerDevice"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDevice"];
      peerDevice = v5->_peerDevice;
      v5->_peerDevice = v8;
    }

    v10 = v5;
  }

  return v5;
}

- (void)_activateWithCompletion:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteInteractionSession, "[SFRemoteInteractionSession _activateWithCompletion:]", 60, "### Activate failed: %#m\n", a2);
  }

  if (a1)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v10 = a2;
    *a3 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    *a4 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:1];
    v15 = [v8 errorWithDomain:v9 code:v10 userInfo:v14];
    (*(a1 + 16))(a1, v15);
  }
}

- (void)_sessionSendPayload:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16(&gLogCategory_SFRemoteInteractionSession, "[SFRemoteInteractionSession _sessionSendPayload:]", a3, "### Failed to deserialize payload?");
  }
}

- (void)_sessionSendPayload:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16(&gLogCategory_SFRemoteInteractionSession, "[SFRemoteInteractionSession _sessionSendPayload:]", a3, "### Send payload without data?");
  }
}

uint64_t __42__SFRemoteInteractionSession__interrupted__block_invoke_cold_1(__CFString *a1)
{
  v1 = @"no error";
  if (a1)
  {
    v1 = a1;
  }

  return LogPrintF(&gLogCategory_SFRemoteInteractionSession, "[SFRemoteInteractionSession _interrupted]_block_invoke", 30, "Restart completed: %@\n", v1);
}

@end