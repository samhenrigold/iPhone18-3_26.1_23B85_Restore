@interface RPRemoteXPCConnection
- (NSXPCConnection)xpcConnection;
- (RPRemoteXPCConnection)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation RPRemoteXPCConnection

- (RPRemoteXPCConnection)init
{
  v6.receiver = self;
  v6.super_class = RPRemoteXPCConnection;
  v2 = [(RPRemoteXPCConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (NSXPCConnection)xpcConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_xpcConnection;
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696B0B8]);
    [(NSXPCConnection *)v3 _setQueue:selfCopy->_dispatchQueue];
    objc_storeStrong(&selfCopy->_xpcConnection, v3);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__RPRemoteXPCConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  v6 = completionCopy;
  if (gLogCategory_RPRemoteXPC > 30 || gLogCategory_RPRemoteXPC == -1 && (completionCopy = _LogCategory_Initialize(), v5 = v6, !completionCopy))
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(RPRemoteXPCConnection *)completionCopy _activateWithCompletion:v5, v4];
  v5 = v6;
  if (v6)
  {
LABEL_5:
    v5[2](v5, 0);
    v5 = v6;
  }

LABEL_6:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPRemoteXPCConnection_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (gLogCategory_RPRemoteXPC <= 30)
    {
      if (gLogCategory_RPRemoteXPC != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(RPRemoteXPCConnection *)self _invalidate];
      }
    }

    [(RPRemoteXPCConnection *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v3 = _Block_copy(self->_invalidationHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPRemoteXPC <= 30)
    {
      if (gLogCategory_RPRemoteXPC != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        [(RPRemoteXPCConnection *)v7 _invalidated];
      }
    }
  }
}

@end