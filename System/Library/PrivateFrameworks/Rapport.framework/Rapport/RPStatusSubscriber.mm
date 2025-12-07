@interface RPStatusSubscriber
- (NSString)description;
- (RPStatusSubscriber)init;
- (RPStatusSubscriber)initWithCoder:(id)coder;
- (id)_connectionWithClient:(id)client queue:(id)queue userProvider:(id)provider interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (id)_ensureXPCStarted;
- (id)identifierFromDevice:(id)device;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)subscribeToStatusUpdate:(id)update leeway:(double)leeway configurationFlags:(unint64_t)flags statusUpdateHandler:(id)handler completion:(id)completion;
- (void)unsubscribeToStatusUpdate:(id)update completion:(id)completion;
- (void)xpcStatusUpdatableGiveStatusUpdate:(id)update peerDevice:(id)device currentState:(int)state statusInfo:(id)info;
@end

@implementation RPStatusSubscriber

- (RPStatusSubscriber)init
{
  v8.receiver = self;
  v8.super_class = RPStatusSubscriber;
  v2 = [(RPStatusSubscriber *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = objc_alloc_init(RPSignedInUserProvider);
    userProvider = v3->_userProvider;
    v3->_userProvider = v4;

    v6 = v3;
  }

  return v3;
}

- (RPStatusSubscriber)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RPStatusSubscriber;
  v3 = [(RPStatusSubscriber *)&v7 init];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v5 = v4;
  }

  return v4;
}

- (NSString)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "RPStatusSubscriber");
  v2 = v4;

  return v2;
}

- (void)subscribeToStatusUpdate:(id)update leeway:(double)leeway configurationFlags:(unint64_t)flags statusUpdateHandler:(id)handler completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__RPStatusSubscriber_subscribeToStatusUpdate_leeway_configurationFlags_statusUpdateHandler_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v15 = updateCopy;
  v16 = completionCopy;
  block[4] = self;
  v12 = updateCopy;
  v13 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __103__RPStatusSubscriber_subscribeToStatusUpdate_leeway_configurationFlags_statusUpdateHandler_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v7 = v2;
  if (!v2)
  {
    v6 = [*(*(a1 + 32) + 24) remoteObjectProxy];
    [v6 xpcStatusUpdatableSubscribeToStatus:*(a1 + 40)];

    goto LABEL_8;
  }

  v3 = v2;
  if (gLogCategory_StatusSubscriber <= 60)
  {
    if (gLogCategory_StatusSubscriber != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __103__RPStatusSubscriber_subscribeToStatusUpdate_leeway_configurationFlags_statusUpdateHandler_completion___block_invoke_cold_1(v3);
      v3 = v7;
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
LABEL_8:
    v3 = v7;
  }
}

- (void)unsubscribeToStatusUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__RPStatusSubscriber_unsubscribeToStatusUpdate_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v12 = updateCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = updateCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__RPStatusSubscriber_unsubscribeToStatusUpdate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v7 = v2;
  if (!v2)
  {
    v6 = [*(*(a1 + 32) + 24) remoteObjectProxy];
    [v6 xpcStatusUpdatableUnsubscribeToStatus:*(a1 + 40)];

    goto LABEL_8;
  }

  v3 = v2;
  if (gLogCategory_StatusSubscriber <= 60)
  {
    if (gLogCategory_StatusSubscriber != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __59__RPStatusSubscriber_unsubscribeToStatusUpdate_completion___block_invoke_cold_1(v3);
      v3 = v7;
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
LABEL_8:
    v3 = v7;
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
  v8[2] = __45__RPStatusSubscriber_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E7C92E20;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  if (reactivateCopy)
  {
    if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
      v7 = "Re-activate %s\n";
LABEL_17:
      [RPStatusSubscriber _activateWithCompletion:v7 reactivate:?];
    }
  }

  else if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    v7 = "Activate %s\n";
    goto LABEL_17;
  }

  _ensureXPCStarted = [(RPStatusSubscriber *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, _ensureXPCStarted);
    }
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke;
    v16[3] = &unk_1E7C92F88;
    v18 = reactivateCopy;
    v10 = completionCopy;
    v17 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2;
    v13[3] = &unk_1E7C93528;
    v15 = reactivateCopy;
    v13[4] = self;
    v12 = v10;
    v14 = v12;
    [v11 xpcStatusSubscriberActivate:self completion:v13];

    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

void __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_StatusSubscriber <= 60)
    {
      if (gLogCategory_StatusSubscriber != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        v5 = "### Re-activate XPC error: %{error}\n";
LABEL_15:
        __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_cold_1(v5, v8);
        v3 = v8;
      }
    }
  }

  else if (gLogCategory_StatusSubscriber <= 60)
  {
    if (gLogCategory_StatusSubscriber != -1 || (v6 = _LogCategory_Initialize(), v3 = v8, v6))
    {
      v5 = "### Activate XPC error: %{error}\n";
      goto LABEL_15;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
    v3 = v8;
  }
}

void __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (*(a1 + 48) == 1)
    {
      if (gLogCategory_StatusSubscriber <= 60 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
      {
        __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2_cold_2(v6);
      }
    }

    else if (gLogCategory_StatusSubscriber <= 60 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
      __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2_cold_1(v6);
    }

    goto LABEL_33;
  }

  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) getIdentifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
      v12 = "Re-activated: %@\n";
LABEL_23:
      __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2_cold_3((a1 + 32), v12);
    }
  }

  else if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    v12 = "Activated: %@\n";
    goto LABEL_23;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, 0);
  }

LABEL_33:
}

- (id)_ensureXPCStarted
{
  if (self->_xpcCnx)
  {
    v8 = 0;
    goto LABEL_16;
  }

  if (self->_invalidateCalled)
  {
    v8 = RPErrorF(4294896148, "RPStatusSubscriber has already been invalidated", v2, v3, v4, v5, v6, v7, v23[0]);
    goto LABEL_16;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__RPStatusSubscriber__ensureXPCStarted__block_invoke;
  aBlock[3] = &unk_1E7C92CE8;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__RPStatusSubscriber__ensureXPCStarted__block_invoke_2;
  v23[3] = &unk_1E7C92CE8;
  v23[4] = self;
  v11 = _Block_copy(v23);
  if ([(RPSignedInUserProvider *)self->_userProvider supportsMultipleUsers]&& self->_targetUserSession)
  {
    signedInUserID = [(RPSignedInUserProvider *)self->_userProvider signedInUserID];
    if (!signedInUserID)
    {
      if (gLogCategory_StatusSubscriber <= 50 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
      {
        [RPStatusSubscriber _ensureXPCStarted];
      }

      v8 = RPErrorF(4294960590, "No user logged in", v13, v14, v15, v16, v17, v18, v23[0]);
      goto LABEL_15;
    }

    if (gLogCategory_StatusSubscriber <= 30)
    {
      v19 = signedInUserID;
      if (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize())
      {
        [(RPStatusSubscriber *)v19 _ensureXPCStarted];
      }
    }
  }

  v20 = [(RPStatusSubscriber *)self _connectionWithClient:self queue:self->_dispatchQueue userProvider:self->_userProvider interruptionHandler:v10 invalidationHandler:v11];
  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = v20;

  if (gLogCategory_StatusSubscriber <= 10 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    [RPStatusSubscriber _ensureXPCStarted];
  }

  v8 = 0;
LABEL_15:

LABEL_16:

  return v8;
}

uint64_t __39__RPStatusSubscriber__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (id)_connectionWithClient:(id)client queue:(id)queue userProvider:(id)provider interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  providerCopy = provider;
  v11 = MEMORY[0x1E696B0B8];
  invalidationHandlerCopy = invalidationHandler;
  handlerCopy = handler;
  queueCopy = queue;
  clientCopy = client;
  v13 = [[v11 alloc] initWithMachServiceName:@"com.apple.rapport.StatusUpdates" options:0];
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v14 initWithObjects:{v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  v23 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF90E0];
  [v23 setClasses:v22 forSelector:sel_xpcStatusUpdatableGiveStatusUpdate_peerDevice_currentState_statusInfo_ argumentIndex:1 ofReply:0];
  v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEF58];
  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  [v24 setClasses:v27 forSelector:sel_xpcStatusSubscriberActivate_completion_ argumentIndex:0 ofReply:1];

  [v24 setClasses:v22 forSelector:sel_xpcStatusUpdatableSubscribeToStatus_ argumentIndex:0 ofReply:0];
  v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  [v24 setClasses:v28 forSelector:sel_xpcStatusUpdatableUnsubscribeToStatus_ argumentIndex:0 ofReply:0];

  [v13 setExportedInterface:v23];
  [v13 setExportedObject:clientCopy];

  [v13 setInterruptionHandler:handlerCopy];
  [v13 setInvalidationHandler:invalidationHandlerCopy];

  [v13 setRemoteObjectInterface:v24];
  [v13 _setQueue:queueCopy];

  if (self->_targetUserSession && [providerCopy supportsMultipleUsers] && objc_msgSend(providerCopy, "signedInUserID"))
  {
    [v13 _setTargetUserIdentifier:{objc_msgSend(providerCopy, "signedInUserID")}];
  }

  [v13 resume];

  return v13;
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_StatusSubscriber <= 50 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    [RPStatusSubscriber _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPStatusSubscriber *)self _activateWithCompletion:0 reactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPStatusSubscriber_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__32__RPStatusSubscriber_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v7 = result[4];
  if ((*(v7 + 9) & 1) == 0)
  {
    v10 = v3;
    v8 = result;
    *(v7 + 9) = 1;
    if (gLogCategory_StatusSubscriber <= 30)
    {
      if (gLogCategory_StatusSubscriber != -1 || (result = _LogCategory_Initialize(), result))
      {
        __32__RPStatusSubscriber_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    [*(v8[4] + 24) invalidate];
    v9 = v8[4];

    return [v9 _invalidated];
  }

  return result;
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

    devices = self->_devices;
    self->_devices = 0;

    statusConfigurations = self->_statusConfigurations;
    self->_statusConfigurations = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_StatusSubscriber <= 30)
    {
      if (gLogCategory_StatusSubscriber != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        [(RPStatusSubscriber *)v8 _invalidated];
      }
    }
  }
}

- (void)xpcStatusUpdatableGiveStatusUpdate:(id)update peerDevice:(id)device currentState:(int)state statusInfo:(id)info
{
  v7 = *&state;
  updateCopy = update;
  deviceCopy = device;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [(RPStatusSubscriber *)selfCopy identifierFromDevice:deviceCopy];
  if (v13)
  {
    v14 = [(NSMutableDictionary *)selfCopy->_devices objectForKeyedSubscript:v13];
    statusInfoMap = [v14 statusInfoMap];
    [statusInfoMap setObject:infoCopy forKeyedSubscript:updateCopy];

    v16 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    statusStateMap = [v14 statusStateMap];
    [statusStateMap setObject:v16 forKeyedSubscript:updateCopy];

    [(NSMutableDictionary *)selfCopy->_devices setObject:v14 forKeyedSubscript:v13];
    v18 = [(NSMutableDictionary *)selfCopy->_statusConfigurations objectForKeyedSubscript:updateCopy];
  }

  else
  {
    v18 = 0;
    v14 = 0;
  }

  objc_sync_exit(selfCopy);
  if (v13)
  {
    handler = [v18 handler];

    if (handler)
    {
      handler2 = [v18 handler];
      (handler2)[2](handler2, updateCopy, deviceCopy, v7, infoCopy);
    }
  }
}

- (id)identifierFromDevice:(id)device
{
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  v5 = idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    identifier = idsDeviceIdentifier;
  }

  else
  {
    identifier = [deviceCopy identifier];
  }

  v7 = identifier;

  return v7;
}

- (uint64_t)_activateWithCompletion:(uint64_t)a1 reactivate:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  if (*(a1 + 32))
  {
    v2 = "(TargetUserSession)";
  }

  else
  {
    v2 = "";
  }

  return LogPrintF(&gLogCategory_StatusSubscriber, "[RPStatusSubscriber _activateWithCompletion:reactivate:]", 30, a2, v2);
}

@end