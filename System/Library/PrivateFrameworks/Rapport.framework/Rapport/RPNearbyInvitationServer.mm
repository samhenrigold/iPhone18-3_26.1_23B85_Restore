@interface RPNearbyInvitationServer
- (RPNearbyInvitationServer)init;
- (RPNearbyInvitationServer)initWithCoder:(id)coder;
- (id)description;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)nearbyInvitationReceivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD;
- (void)nearbyInvitationReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD;
- (void)nearbyInvitationSessionEndedWithID:(id)d;
- (void)nearbyInvitationSessionError:(id)error withID:(id)d;
- (void)nearbyInvitationStartServerSessionID:(id)d device:(id)device completion:(id)completion;
@end

@implementation RPNearbyInvitationServer

- (RPNearbyInvitationServer)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationServer;
  v2 = [(RPNearbyInvitationServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPNearbyInvitationServer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationServer;
  v5 = [(RPNearbyInvitationServer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  serviceType = self->_serviceType;
  if (serviceType)
  {
    [coder encodeObject:serviceType forKey:@"srvTy"];
  }
}

- (id)description
{
  v10 = 0;
  NSAppendPrintF(&v10, "RPNearbyInvitationServer %{ptr}", self);
  v3 = v10;
  v4 = v3;
  serviceType = self->_serviceType;
  if (serviceType)
  {
    v9 = v3;
    v6 = serviceType;
    NSAppendPrintF(&v9, ", Srv %@", v6);
    v7 = v9;

    v4 = v7;
  }

  return v4;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__RPNearbyInvitationServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  if (reactivateCopy)
  {
    if (gLogCategory_RPNearbyInvitationServer <= 30 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
    {
      v9 = "Re-activate\n";
LABEL_11:
      [(RPNearbyInvitationServer *)v9 _activateWithCompletion:v6 reactivate:v7];
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 30 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    v9 = "Activate\n";
    goto LABEL_11;
  }

  [(RPNearbyInvitationServer *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke;
  v17[3] = &unk_1E7C92F88;
  v19 = reactivateCopy;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2;
  v14[3] = &unk_1E7C92F88;
  v16 = reactivateCopy;
  v15 = v11;
  v13 = v11;
  [v12 nearbyInvitationActivateServer:self completion:v14];
}

void __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_RPNearbyInvitationServer <= 90)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        v5 = "### Re-activate XPC error: %{error}\n";
LABEL_15:
        __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_cold_1(v5, v8);
        v3 = v8;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 90)
  {
    if (gLogCategory_RPNearbyInvitationServer != -1 || (v6 = _LogCategory_Initialize(), v3 = v8, v6))
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

void __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v9 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPNearbyInvitationServer <= 90)
      {
        if (gLogCategory_RPNearbyInvitationServer != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
        {
          __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_2(v5);
LABEL_20:
          v5 = v9;
        }
      }
    }

    else if (gLogCategory_RPNearbyInvitationServer <= 90)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (v7 = _LogCategory_Initialize(), v5 = v9, v7))
      {
        __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_1(v5);
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPNearbyInvitationServer <= 30)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_4(v3, v5, v4);
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 30)
  {
    if (gLogCategory_RPNearbyInvitationServer != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_3(v3, v5, v4);
      goto LABEL_20;
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
    v5 = v9;
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.NearbyInvitation" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF3528];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__RPNearbyInvitationServer__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__RPNearbyInvitationServer__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEC58];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPNearbyInvitationServer <= 10 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationServer _ensureXPCStarted];
    }
  }
}

uint64_t __45__RPNearbyInvitationServer__ensureXPCStarted__block_invoke_2(uint64_t a1)
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
  if (gLogCategory_RPNearbyInvitationServer <= 50 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationServer _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPNearbyInvitationServer *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __38__RPNearbyInvitationServer_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__38__RPNearbyInvitationServer_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v7 = result[4];
  if ((*(v7 + 9) & 1) == 0)
  {
    v10 = v3;
    v8 = result;
    *(v7 + 9) = 1;
    if (gLogCategory_RPNearbyInvitationServer <= 30)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (result = _LogCategory_Initialize(), result))
      {
        __38__RPNearbyInvitationServer_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    [*(v8[4] + 16) enumerateKeysAndObjectsUsingBlock:{&__block_literal_global_0, v4, v10, v5}];
    [*(v8[4] + 24) invalidate];
    v9 = v8[4];

    return [v9 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_sessions count]&& !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    sessionStartHandler = self->_sessionStartHandler;
    self->_sessionStartHandler = 0;

    sessionEndedHandler = self->_sessionEndedHandler;
    self->_sessionEndedHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearbyInvitationServer <= 30)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        [(RPNearbyInvitationServer *)v8 _invalidated];
      }
    }
  }
}

- (void)nearbyInvitationStartServerSessionID:(id)d device:(id)device completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  deviceCopy = device;
  dispatch_assert_queue_V2(dispatchQueue);
  v11 = objc_alloc_init(RPNearbyInvitationSession);
  [(RPNearbyInvitationSession *)v11 setDestinationDevice:deviceCopy];

  [(RPNearbyInvitationSession *)v11 setDispatchQueue:self->_dispatchQueue];
  [(RPNearbyInvitationSession *)v11 setServer:self];
  [(RPNearbyInvitationSession *)v11 setSessionID:dCopy];
  [(RPNearbyInvitationSession *)v11 setXpcCnx:self->_xpcCnx];
  sessions = self->_sessions;
  if (!sessions)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = self->_sessions;
    self->_sessions = v13;

    sessions = self->_sessions;
  }

  [(NSMutableDictionary *)sessions setObject:v11 forKeyedSubscript:dCopy];
  v15 = _Block_copy(self->_sessionStartHandler);
  v22 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v11, completionCopy);
  }

  else
  {
    v23 = RPErrorF(4294960582, "No session start handler", v16, v17, v18, v19, v20, v21, v24);
    completionCopy[2](completionCopy, v23);
  }
}

- (void)nearbyInvitationSessionEndedWithID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:dCopy];
  if (v4)
  {
    v5 = _Block_copy(self->_sessionEndedHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, v4, 0);
    }

    [(NSMutableDictionary *)self->_sessions setObject:0 forKeyedSubscript:dCopy];
  }
}

- (void)nearbyInvitationReceivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  iDCopy = iD;
  if (iDCopy)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    v13 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:iDCopy];
    v14 = v13;
    if (v13)
    {
      [v13 nearbyInvitationReceivedEventID:dCopy event:eventCopy options:optionsCopy sessionID:iDCopy];
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 90 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationServer nearbyInvitationReceivedEventID:dCopy event:? options:? sessionID:?];
  }
}

- (void)nearbyInvitationReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  iDCopy = iD;
  if (iDCopy)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    v16 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:iDCopy];
    v17 = v16;
    if (v16)
    {
      [v16 nearbyInvitationReceivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:handlerCopy sessionID:iDCopy];
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 90 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationServer nearbyInvitationReceivedRequestID:dCopy request:? options:? responseHandler:? sessionID:?];
  }
}

- (void)nearbyInvitationSessionError:(id)error withID:(id)d
{
  errorCopy = error;
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:d];
  v7 = v6;
  if (v6)
  {
    [v6 nearbyInvitationSessionError:errorCopy];
  }
}

@end