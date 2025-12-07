@interface RPNearbyInvitationSession
- (NSString)description;
- (RPNearbyInvitationSession)init;
- (RPNearbyInvitationSession)initWithCoder:(id)coder;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)nearbyInvitationReceivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD;
- (void)nearbyInvitationReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD;
- (void)nearbyInvitationSessionError:(id)error;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
@end

@implementation RPNearbyInvitationSession

- (RPNearbyInvitationSession)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationSession;
  v2 = [(RPNearbyInvitationSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPNearbyInvitationSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationSession;
  v5 = [(RPNearbyInvitationSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceType = self->_serviceType;
  v7 = coderCopy;
  if (serviceType)
  {
    [coderCopy encodeObject:serviceType forKey:@"srvTy"];
    coderCopy = v7;
  }

  destinationDevice = self->_destinationDevice;
  if (destinationDevice)
  {
    [v7 encodeObject:destinationDevice forKey:@"dd"];
    coderCopy = v7;
  }
}

- (NSString)description
{
  v14 = 0;
  NSAppendPrintF(&v14, "RPNearbyInvitationSession %{ptr} ", self);
  v3 = v14;
  v4 = v3;
  serviceType = self->_serviceType;
  if (serviceType)
  {
    v13 = v3;
    v6 = serviceType;
    NSAppendPrintF(&v13, " ST %@", v6);
    v7 = v13;

    v4 = v7;
  }

  destinationDevice = self->_destinationDevice;
  if (destinationDevice)
  {
    v12 = v4;
    v9 = destinationDevice;
    NSAppendPrintF(&v12, ", dst %@", v9);
    v10 = v12;

    v4 = v10;
  }

  return v4;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__RPNearbyInvitationSession_activateWithCompletion___block_invoke;
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
  v9 = completionCopy;
  if (!self->_server)
  {
    if (reactivateCopy)
    {
      if (gLogCategory_RPNearbyInvitationSession > 30 || gLogCategory_RPNearbyInvitationSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v10 = "Re-activate\n";
    }

    else
    {
      if (gLogCategory_RPNearbyInvitationSession > 30 || gLogCategory_RPNearbyInvitationSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v10 = "Activate\n";
    }

    [(RPNearbyInvitationSession *)v10 _activateWithCompletion:v7 reactivate:v8];
LABEL_12:
    [(RPNearbyInvitationSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke;
    v17[3] = &unk_1E7C93500;
    v17[4] = self;
    v19 = reactivateCopy;
    v12 = v9;
    v18 = v12;
    v13 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2;
    v14[3] = &unk_1E7C92F88;
    v16 = reactivateCopy;
    v15 = v12;
    [v13 nearbyInvitationActivateSession:self completion:v14];

    goto LABEL_13;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_13:
}

void __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v14 = v3;
    v9 = RPNestedErrorF(v3, 4294896148, "Invalidated", v4, v5, v6, v7, v8, v13);

    v3 = v9;
  }

  v15 = v3;
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
    {
      v10 = "### Re-activate XPC error: %{error}\n";
LABEL_17:
      __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_cold_1(v10, v15);
    }
  }

  else if (gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    v10 = "### Activate XPC error: %{error}\n";
    goto LABEL_17;
  }

  v11 = *(a1 + 40);
  v12 = v15;
  if (v11)
  {
    (*(v11 + 16))(v11, v15);
    v12 = v15;
  }
}

void __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v9 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPNearbyInvitationSession <= 90)
      {
        if (gLogCategory_RPNearbyInvitationSession != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
        {
          __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_2(v5);
LABEL_20:
          v5 = v9;
        }
      }
    }

    else if (gLogCategory_RPNearbyInvitationSession <= 90)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (v7 = _LogCategory_Initialize(), v5 = v9, v7))
      {
        __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_1(v5);
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPNearbyInvitationSession <= 30)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_4(v3, v5, v4);
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationSession <= 30)
  {
    if (gLogCategory_RPNearbyInvitationSession != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_3(v3, v5, v4);
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
    v12[2] = __46__RPNearbyInvitationSession__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__RPNearbyInvitationSession__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEC58];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPNearbyInvitationSession <= 10 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationSession _ensureXPCStarted];
    }
  }
}

uint64_t __46__RPNearbyInvitationSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)nearbyInvitationSessionError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__RPNearbyInvitationSession_nearbyInvitationSessionError___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(dispatchQueue, v7);
}

void __58__RPNearbyInvitationSession_nearbyInvitationSessionError___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 72));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40));
    v2 = v3;
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPNearbyInvitationSession <= 50 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationSession _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPNearbyInvitationSession *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __39__RPNearbyInvitationSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__39__RPNearbyInvitationSession_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 24) & 1) == 0)
  {
    v5 = result;
    *(v4 + 24) = 1;
    if (gLogCategory_RPNearbyInvitationSession <= 30)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (result = _LogCategory_Initialize(), result))
      {
        __39__RPNearbyInvitationSession_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];
    if (*(v6 + 104))
    {
      v7 = *(v6 + 112);
      if (v7)
      {
        v8 = [*(v5[4] + 120) remoteObjectProxy];
        [v8 nearbyInvitationInvalidateSessionID:v7];
      }

      v9 = v5[4];
      v10 = *(v9 + 104);
      *(v9 + 104) = 0;

      v11 = v5[4];
      v12 = *(v11 + 112);
      *(v11 + 112) = 0;

      v13 = v5[4];
      v14 = *(v13 + 120);
      *(v13 + 120) = 0;
    }

    else
    {
      v15 = [*(v6 + 120) remoteObjectProxy];
      [v15 nearbyInvitationInvalidateClientSession];

      [*(v5[4] + 120) invalidate];
    }

    v16 = v5[4];

    return [v16 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    [(NSMutableDictionary *)self->_eventRegistrations removeAllObjects];
    [(NSMutableDictionary *)self->_requestRegistrations removeAllObjects];
    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearbyInvitationSession <= 30)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        [(RPNearbyInvitationSession *)v6 _invalidated];
      }
    }
  }
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__RPNearbyInvitationSession_registerEventID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v16 = dCopy;
  v17 = optionsCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

void __61__RPNearbyInvitationSession_registerEventID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __61__RPNearbyInvitationSession_registerEventID_options_handler___block_invoke_cold_1();
  }

  v6 = objc_alloc_init(RPEventRegistration);
  [(RPEventRegistration *)v6 setEventID:a1[4]];
  [(RPEventRegistration *)v6 setOptions:a1[5]];
  [(RPEventRegistration *)v6 setHandler:a1[7]];
  v2 = *(a1[6] + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[6];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1[6] + 16);
  }

  [v2 setObject:v6 forKeyedSubscript:a1[4]];
}

- (void)deregisterEventID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__RPNearbyInvitationSession_deregisterEventID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __47__RPNearbyInvitationSession_deregisterEventID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __47__RPNearbyInvitationSession_deregisterEventID___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 setObject:0 forKeyedSubscript:v2];
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  if ([iD isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPNearbyInvitationSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke;
    v31[3] = &unk_1E7C937A8;
    v31[4] = self;
    v23 = dCopy;
    v32 = v23;
    v24 = completionCopy;
    v33 = v24;
    v25 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke_2;
    v28[3] = &unk_1E7C93470;
    v29 = v23;
    v30 = v24;
    [v25 nearbyInvitationSendEventID:v29 event:eventCopy options:optionsCopy completion:v28];
  }

  else if (completionCopy)
  {
    v26 = RPErrorF(4294960591, "Non-DirectPeer destination", v16, v17, v18, v19, v20, v21, v27);
    (*(completionCopy + 2))(completionCopy, v26);
  }
}

void __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (*(a1[4] + 24) == 1)
  {
    v14 = v3;
    v10 = RPNestedErrorF(v3, 4294896148, "Invalidated", v4, v5, v6, v7, v8, v13);

    v9 = v10;
  }

  v15 = v9;
  if (gLogCategory_RPNearbyInvitationSession <= 90)
  {
    if (gLogCategory_RPNearbyInvitationSession != -1 || (v11 = _LogCategory_Initialize(), v9 = v15, v11))
    {
      LogPrintF(&gLogCategory_RPNearbyInvitationSession, "[RPNearbyInvitationSession sendEventID:event:destinationID:options:completion:]_block_invoke", 90, "### SendEventID '%@' XPC error: %{error}\n", a1[5], v9);
      v9 = v15;
    }
  }

  v12 = a1[6];
  if (v12)
  {
    (*(v12 + 16))(v12, v15);
    v9 = v15;
  }
}

void __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_RPNearbyInvitationSession <= 90)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        LogPrintF(&gLogCategory_RPNearbyInvitationSession, "[RPNearbyInvitationSession sendEventID:event:destinationID:options:completion:]_block_invoke_2", 90, "### SendEventID '%@' failed: %{error}\n", *(a1 + 32), v3);
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

- (void)nearbyInvitationReceivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD
{
  v19[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  v12 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:dCopy];
  if (v12)
  {
    v13 = v12;
LABEL_3:
    handler = [v13 handler];
    v15 = handler;
    if (handler)
    {
      (*(handler + 16))(handler, eventCopy, optionsCopy);
    }

    goto LABEL_6;
  }

  v16 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:@"*"];
  if (v16)
  {
    v13 = v16;
    if (optionsCopy)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
      [v17 setObject:dCopy forKeyedSubscript:@"eventID"];

      optionsCopy = v17;
    }

    else
    {
      v18 = @"eventID";
      v19[0] = dCopy;
      optionsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }

    goto LABEL_3;
  }

  if (gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationSession nearbyInvitationReceivedEventID:dCopy event:? options:? sessionID:?];
  }

LABEL_6:
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__RPNearbyInvitationSession_registerRequestID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v16 = dCopy;
  v17 = optionsCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

void __63__RPNearbyInvitationSession_registerRequestID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __63__RPNearbyInvitationSession_registerRequestID_options_handler___block_invoke_cold_1();
  }

  v6 = objc_alloc_init(RPRequestRegistration);
  [(RPRequestRegistration *)v6 setRequestID:a1[4]];
  [(RPRequestRegistration *)v6 setOptions:a1[5]];
  [(RPRequestRegistration *)v6 setHandler:a1[7]];
  v2 = *(a1[6] + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[6];
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1[6] + 32);
  }

  [v2 setObject:v6 forKeyedSubscript:a1[4]];
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__RPNearbyInvitationSession_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __49__RPNearbyInvitationSession_deregisterRequestID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __49__RPNearbyInvitationSession_deregisterRequestID___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 32);

  return [v3 setObject:0 forKeyedSubscript:v2];
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationSession sendRequestID:requestCopy request:dCopy destinationID:? options:? responseHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__RPNearbyInvitationSession_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
  v23[3] = &unk_1E7C94D90;
  v23[4] = self;
  v24 = dCopy;
  v25 = requestCopy;
  v26 = iDCopy;
  v27 = optionsCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = optionsCopy;
  v20 = iDCopy;
  v21 = requestCopy;
  v22 = dCopy;
  dispatch_async(dispatchQueue, v23);
}

- (void)_sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if ([iD isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPNearbyInvitationSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke;
    v31[3] = &unk_1E7C937A8;
    v31[4] = self;
    v23 = dCopy;
    v32 = v23;
    v24 = handlerCopy;
    v33 = v24;
    v25 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2;
    v28[3] = &unk_1E7C94DB8;
    v29 = v23;
    v30 = v24;
    [v25 nearbyInvitationSendRequestID:v29 request:requestCopy options:optionsCopy responseHandler:v28];
  }

  else if (handlerCopy)
  {
    v26 = RPErrorF(4294960591, "Non-DirectPeer destination", v16, v17, v18, v19, v20, v21, v27);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);
  }
}

void __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1[4] + 24) == 1)
  {
    v12 = v3;
    v9 = RPNestedErrorF(v3, 4294896148, "Invalidated", v3, v4, v5, v6, v7, v11);

    v8 = v9;
  }

  v13 = v8;
  if (gLogCategory_RPNearbyInvitationSession <= 90)
  {
    if (gLogCategory_RPNearbyInvitationSession != -1 || (v10 = _LogCategory_Initialize(), v8 = v13, v10))
    {
      LogPrintF(&gLogCategory_RPNearbyInvitationSession, "[RPNearbyInvitationSession _sendRequestID:request:destinationID:options:responseHandler:]_block_invoke", 90, "### SendRequestID '%@' XPC error: %{error}\n", a1[5], v8);
    }
  }

  (*(a1[6] + 16))();
}

void __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPNearbyInvitationSession, "[RPNearbyInvitationSession _sendRequestID:request:destinationID:options:responseHandler:]_block_invoke_2", 90, "### SendRequestID '%@' failed: %{error}\n", *(a1 + 32), v8);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)nearbyInvitationReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD
{
  v28[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v15 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:dCopy];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v19 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:@"*"];
    if (!v19)
    {
      v16 = RPErrorF(4294960582, "No request handler for '%@'", v20, v21, v22, v23, v24, v25, dCopy);
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v16);
      goto LABEL_6;
    }

    v16 = v19;
    if (optionsCopy)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
      [v26 setObject:dCopy forKeyedSubscript:@"requestID"];

      optionsCopy = v26;
    }

    else
    {
      v27 = @"requestID";
      v28[0] = dCopy;
      optionsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    }
  }

  handler = [v16 handler];
  v18 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, requestCopy, optionsCopy, handlerCopy);
  }

LABEL_6:
}

@end