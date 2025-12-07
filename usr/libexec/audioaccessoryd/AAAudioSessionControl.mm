@interface AAAudioSessionControl
- (AAAudioSessionControl)init;
- (AAAudioSessionControl)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activate:(BOOL)_activate;
- (void)_activateDirect:(id)direct;
- (void)_activateXPC:(id)c reactivate:(BOOL)reactivate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setConversationDetectSignal:(int)signal;
- (void)setMuteAction:(int)action auditToken:(id *)token;
- (void)setMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier;
@end

@implementation AAAudioSessionControl

- (AAAudioSessionControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAAudioSessionControl *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_conversationDetectSignal = 0;
    }

    v6 = v5;
  }

  return v5;
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

  conversationDetectSignal = self->_conversationDetectSignal;
  if (conversationDetectSignal)
  {
    [v7 encodeInteger:conversationDetectSignal forKey:@"cds"];
    coderCopy = v7;
  }
}

- (id)description
{
  v10 = 0;
  conversationDetectSignal = self->_conversationDetectSignal;
  if (conversationDetectSignal > 0xB)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B6A58)[conversationDetectSignal];
  }

  NSAppendPrintF(&v10, "AAAudioSessionControl, CID 0x%X, cds %s", self->_clientID, v4);
  v5 = v10;
  v6 = v5;
  if (self->_direct)
  {
    v9 = v5;
    NSAppendPrintF_safe(&v9, ", direct");
    v7 = v9;

    v6 = v7;
  }

  return v6;
}

- (AAAudioSessionControl)init
{
  v5.receiver = self;
  v5.super_class = AAAudioSessionControl;
  v2 = [(AAAudioSessionControl *)&v5 init];
  if (v2)
  {
    v2->_clientID = sub_10000DAF8();
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3 = v2;
  }

  return v2;
}

- (void)setConversationDetectSignal:(int)signal
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000C62C;
    v6[3] = &unk_1002B68F8;
    v6[4] = selfCopy;
    signalCopy = signal;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    selfCopy->_conversationDetectSignal = signal;
  }

  objc_sync_exit(selfCopy);
}

- (void)setMuteAction:(int)action auditToken:(id *)token
{
  v4 = *&token->var0[4];
  v5[0] = *token->var0;
  v5[1] = v4;
  [(AAAudioSessionControl *)self setMuteAction:*&action auditToken:v5 bundleIdentifier:0];
}

- (void)setMuteAction:(int)action auditToken:(id *)token bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1ED4(action);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v11 = *&token->var0[4];
    v15 = *token->var0;
    block[2] = sub_10000C86C;
    block[3] = &unk_1002B6920;
    block[4] = selfCopy;
    actionCopy = action;
    v16 = v11;
    v13 = identifierCopy;
    dispatch_async(dispatchQueue, block);
  }

  else if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F5E10, "[AAAudioSessionControl setMuteAction:auditToken:bundleIdentifier:]", 90, "### setMuteAction failed: AAudioSessionControl not activated");
  }

  objc_sync_exit(selfCopy);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C9D4;
  v7[3] = &unk_1002B6948;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activate:(BOOL)_activate
{
  _activateCopy = _activate;
  if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1FB0();
  }

  if (self->_testListenerEndpoint)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_100300AE0 == 0;
  }

  v6 = !v5;
  self->_direct = v6;
  if (self->_invalidateCalled)
  {
    v10 = NSErrorF(NSOSStatusErrorDomain, 4294896148, "Activate after invalidate");
    if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F5E10, "[AAAudioSessionControl _activate:]", 90, "### Activate failed: %@, %@", self, v10);
    }

    v8 = objc_retainBlock(self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v8)
    {
      v8[2](v8, v10);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000CCCC;
    v11[3] = &unk_1002B6970;
    v11[4] = self;
    v12 = _activateCopy;
    v7 = objc_retainBlock(v11);
    if (self->_direct)
    {
      [(AAAudioSessionControl *)self _activateDirect:v7];
    }

    else
    {
      [(AAAudioSessionControl *)self _activateXPC:v7 reactivate:_activateCopy];
    }
  }
}

- (void)_activateDirect:(id)direct
{
  directCopy = direct;
  if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D207C(self);
  }

  v5 = qword_100300AE0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CF04;
  v7[3] = &unk_1002B69C0;
  v7[4] = self;
  v8 = directCopy;
  v6 = directCopy;
  [v5 activateAudioSessionControl:self completion:v7];
}

- (void)_activateXPC:(id)c reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  cCopy = c;
  if (reactivateCopy)
  {
    if (dword_1002F5E10 > 30)
    {
      goto LABEL_12;
    }

    if (dword_1002F5E10 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

    v9 = "Re-activate XPC";
    goto LABEL_17;
  }

  if (dword_1002F5E10 > 30)
  {
    goto LABEL_12;
  }

  if (dword_1002F5E10 != -1 || _LogCategory_Initialize())
  {
    v9 = "Activate XPC";
LABEL_17:
    sub_1001D20C0(v9, v6, v7);
  }

LABEL_9:
  if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D20D8(self);
  }

LABEL_12:
  _ensureXPCStarted = [(AAAudioSessionControl *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    cCopy[2](cCopy, _ensureXPCStarted);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000D1D0;
    v16[3] = &unk_1002B69E8;
    v18 = reactivateCopy;
    v12 = cCopy;
    v17 = v12;
    v13 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000D2A8;
    v14[3] = &unk_1002B6A10;
    v15 = v12;
    [v13 audioSessionControlActivate:self completion:v14];
  }
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = [NSXPCConnection alloc];
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AAServicesXPCClientInterface];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D454;
    v11[3] = &unk_1002B6880;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000D45C;
    v10[3] = &unk_1002B6880;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AAServicesXPCDaemonInterface];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1002F5E10 <= 50)
  {
    if (dword_1002F5E10 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001D219C(v3, v4, v5);
    }
  }

  v6 = BTErrorF(4294960596, "XPC interrupted");
  [(AAAudioSessionControl *)self _reportError:v6];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (self->_activateCalled)
  {
    [(AAAudioSessionControl *)self _activate:1];
  }

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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D5E8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    selfCopy = self;
    if (!self->_invalidateCalled && dword_1002F5E10 <= 50)
    {
      if (dword_1002F5E10 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D21D4(self, a2, v2);
      }
    }

    if (!selfCopy->_direct && !selfCopy->_xpcCnx)
    {
      v9 = objc_retainBlock(selfCopy->_activateCompletion);
      activateCompletion = selfCopy->_activateCompletion;
      selfCopy->_activateCompletion = 0;

      if (v9)
      {
        v5 = BTErrorF(4294896148, "Unexpectedly invalidated");
        v9[2](v9, v5);
      }

      v6 = objc_retainBlock(selfCopy->_invalidationHandler);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      if (v6)
      {
        v6[2](v6);
      }

      xpcCnx = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;

      selfCopy->_invalidateDone = 1;
      if (dword_1002F5E10 <= 10 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D21F0();
      }
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2210(errorCopy);
  }

  v4 = objc_retainBlock(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    v4[2](v4, errorCopy);
  }
}

@end