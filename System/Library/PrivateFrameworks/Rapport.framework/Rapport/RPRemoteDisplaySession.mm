@interface RPRemoteDisplaySession
- (RPRemoteDisplaySession)init;
- (RPRemoteDisplaySession)initWithCoder:(id)coder;
- (id)description;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)_sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)remoteDisplayAuthCompleted:(id)completed;
- (void)remoteDisplayPromptForPasswordWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)remoteDisplayReceivedEventID:(id)d event:(id)event options:(id)options;
- (void)remoteDisplayReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)remoteDisplaySessionError:(id)error;
- (void)remoteDisplayUpdateDataLinkType:(id)type;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)tryPassword:(id)password;
@end

@implementation RPRemoteDisplaySession

- (RPRemoteDisplaySession)init
{
  v6.receiver = self;
  v6.super_class = RPRemoteDisplaySession;
  v2 = [(RPRemoteDisplaySession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPRemoteDisplaySession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = RPRemoteDisplaySession;
  v5 = [(RPRemoteDisplaySession *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"cFl"])
    {
      v6->_controlFlags = [v7 decodeInt64ForKey:@"cFl"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v13 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_internalAuthFlags = v13;
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_passwordType = v13;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  controlFlags = self->_controlFlags;
  v11 = coderCopy;
  if (controlFlags)
  {
    [coderCopy encodeInt64:controlFlags forKey:@"cFl"];
    coderCopy = v11;
  }

  destinationDevice = self->_destinationDevice;
  if (destinationDevice)
  {
    [v11 encodeObject:destinationDevice forKey:@"dd"];
    coderCopy = v11;
  }

  internalAuthFlags = self->_internalAuthFlags;
  if (internalAuthFlags)
  {
    [v11 encodeInt64:internalAuthFlags forKey:@"iaf"];
    coderCopy = v11;
  }

  pairingInfo = self->_pairingInfo;
  if (pairingInfo)
  {
    [v11 encodeObject:pairingInfo forKey:@"pairI"];
    coderCopy = v11;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    [v11 encodeInteger:passwordType forKey:@"pwTy"];
    coderCopy = v11;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v11 encodeObject:serviceType forKey:@"srvTy"];
    coderCopy = v11;
  }
}

- (id)description
{
  v14 = 0;
  NSAppendPrintF(&v14, "RPRemoteDisplaySession %{ptr}", self);
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
  v7[2] = __49__RPRemoteDisplaySession_activateWithCompletion___block_invoke;
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
  if (self->_server)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    goto LABEL_21;
  }

  if (reactivateCopy)
  {
    if (gLogCategory_RPRemoteDisplaySession > 30 || gLogCategory_RPRemoteDisplaySession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_12;
    }

    v10 = "Re-activate\n";
  }

  else
  {
    if (gLogCategory_RPRemoteDisplaySession > 30 || gLogCategory_RPRemoteDisplaySession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_12;
    }

    v10 = "Activate\n";
  }

  [(RPRemoteDisplaySession *)v10 _activateWithCompletion:v7 reactivate:v8];
LABEL_12:
  if (self->_authCompletionHandler)
  {
    self->_internalAuthFlags |= 8u;
  }

  if (self->_showPasswordHandler)
  {
    self->_internalAuthFlags |= 1u;
  }

  if (self->_hidePasswordHandler)
  {
    self->_internalAuthFlags |= 2u;
  }

  if (self->_promptForPasswordHandler)
  {
    self->_internalAuthFlags |= 4u;
  }

  [(RPRemoteDisplaySession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke;
  v17[3] = &unk_1E7C93500;
  v17[4] = self;
  v19 = reactivateCopy;
  v12 = v9;
  v18 = v12;
  v13 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2;
  v14[3] = &unk_1E7C92F88;
  v16 = reactivateCopy;
  v15 = v12;
  [v13 remoteDisplayActivateSession:self completion:v14];

LABEL_21:
}

void __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
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
    if (gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
    {
      v10 = "### Re-activate XPC error: %{error}\n";
LABEL_17:
      __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_cold_1(v10, v15);
    }
  }

  else if (gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
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

void __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v9 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPRemoteDisplaySession <= 90)
      {
        if (gLogCategory_RPRemoteDisplaySession != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
        {
          __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_2(v5);
LABEL_20:
          v5 = v9;
        }
      }
    }

    else if (gLogCategory_RPRemoteDisplaySession <= 90)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (v7 = _LogCategory_Initialize(), v5 = v9, v7))
      {
        __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_1(v5);
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPRemoteDisplaySession <= 30)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_4(v3, v5, v4);
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplaySession <= 30)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_3(v3, v5, v4);
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
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.RemoteDisplay" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF7D58];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__RPRemoteDisplaySession__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__RPRemoteDisplaySession__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEE98];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPRemoteDisplaySession <= 10 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplaySession _ensureXPCStarted];
    }
  }
}

uint64_t __43__RPRemoteDisplaySession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  *(v2 + 232) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPRemoteDisplaySession <= 50 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPRemoteDisplaySession *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __36__RPRemoteDisplaySession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__36__RPRemoteDisplaySession_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 24) & 1) == 0)
  {
    v5 = result;
    *(v4 + 24) = 1;
    if (gLogCategory_RPRemoteDisplaySession <= 30)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (result = _LogCategory_Initialize(), result))
      {
        __36__RPRemoteDisplaySession_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];
    if (*(v6 + 216))
    {
      v7 = *(v6 + 224);
      if (v7)
      {
        v8 = [*(v5[4] + 232) remoteObjectProxy];
        [v8 remoteDisplayInvalidateSessionID:v7];
      }

      v9 = v5[4];
      v10 = *(v9 + 216);
      *(v9 + 216) = 0;

      v11 = v5[4];
      v12 = *(v11 + 224);
      *(v11 + 224) = 0;

      v13 = v5[4];
      v14 = *(v13 + 232);
      *(v13 + 232) = 0;
    }

    else
    {
      v15 = [*(v6 + 232) remoteObjectProxy];
      [v15 remoteDisplayInvalidateClientSession];

      [*(v5[4] + 232) invalidate];
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
    authCompletionHandler = self->_authCompletionHandler;
    self->_authCompletionHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v7 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    showPasswordHandler = self->_showPasswordHandler;
    self->_showPasswordHandler = 0;

    hidePasswordHandler = self->_hidePasswordHandler;
    self->_hidePasswordHandler = 0;

    promptForPasswordHandler = self->_promptForPasswordHandler;
    self->_promptForPasswordHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPRemoteDisplaySession <= 30)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [(RPRemoteDisplaySession *)v11 _invalidated];
      }
    }
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__RPRemoteDisplaySession_tryPassword___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

void __38__RPRemoteDisplaySession_tryPassword___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) remoteObjectProxy];
  [v2 remoteDisplayTryPassword:*(a1 + 40)];
}

- (void)remoteDisplayPromptForPasswordWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v4 = *&seconds;
  v5 = *&flags;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  v7 = _Block_copy(self->_promptForPasswordHandler);
  v9 = v7;
  if (v7)
  {
    v10 = v7;
    (*(v7 + 16))(v7, v5, v4);
LABEL_4:
    v9 = v10;
    goto LABEL_8;
  }

  if (gLogCategory_RPRemoteDisplaySession <= 90)
  {
    v10 = 0;
    if (gLogCategory_RPRemoteDisplaySession != -1 || (v7 = _LogCategory_Initialize(), v9 = 0, v7))
    {
      [(RPRemoteDisplaySession *)v7 remoteDisplayPromptForPasswordWithFlags:v9 throttleSeconds:v8];
      goto LABEL_4;
    }
  }

LABEL_8:
}

- (void)remoteDisplayAuthCompleted:(id)completed
{
  completedCopy = completed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = _Block_copy(self->_authCompletionHandler);
  v7 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, completedCopy);
  }

  else if (gLogCategory_RPRemoteDisplaySession <= 90)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(RPRemoteDisplaySession *)v4 remoteDisplayAuthCompleted:v5, v6];
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
  v15[2] = __58__RPRemoteDisplaySession_registerEventID_options_handler___block_invoke;
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

void __58__RPRemoteDisplaySession_registerEventID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __58__RPRemoteDisplaySession_registerEventID_options_handler___block_invoke_cold_1();
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
  v7[2] = __44__RPRemoteDisplaySession_deregisterEventID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __44__RPRemoteDisplaySession_deregisterEventID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __44__RPRemoteDisplaySession_deregisterEventID___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 setObject:0 forKeyedSubscript:v2];
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  iDCopy = iD;
  optionsCopy = options;
  completionCopy = completion;
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession sendEventID:eventCopy event:dCopy destinationID:? options:? completion:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__RPRemoteDisplaySession_sendEventID_event_destinationID_options_completion___block_invoke;
  v23[3] = &unk_1E7C94D90;
  v23[4] = self;
  v24 = dCopy;
  v25 = eventCopy;
  v26 = iDCopy;
  v27 = optionsCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = optionsCopy;
  v20 = iDCopy;
  v21 = eventCopy;
  v22 = dCopy;
  dispatch_async(dispatchQueue, v23);
}

- (void)_sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  if ([iD isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPRemoteDisplaySession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke;
    v31[3] = &unk_1E7C937A8;
    v31[4] = self;
    v23 = dCopy;
    v32 = v23;
    v24 = completionCopy;
    v33 = v24;
    v25 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke_2;
    v28[3] = &unk_1E7C93470;
    v29 = v23;
    v30 = v24;
    [v25 remoteDisplaySendEventID:v29 event:eventCopy options:optionsCopy completion:v28];
  }

  else if (completionCopy)
  {
    v26 = RPErrorF(4294960591, "Non-DirectPeer destination", v16, v17, v18, v19, v20, v21, v27);
    (*(completionCopy + 2))(completionCopy, v26);
  }
}

void __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke(void *a1, void *a2)
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
  if (gLogCategory_RPRemoteDisplaySession <= 90)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1 || (v11 = _LogCategory_Initialize(), v9 = v15, v11))
    {
      LogPrintF(&gLogCategory_RPRemoteDisplaySession, "[RPRemoteDisplaySession _sendEventID:event:destinationID:options:completion:]_block_invoke", 90, "### SendEventID '%@' XPC error: %{error}\n", a1[5], v9);
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

void __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_RPRemoteDisplaySession <= 90)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        LogPrintF(&gLogCategory_RPRemoteDisplaySession, "[RPRemoteDisplaySession _sendEventID:event:destinationID:options:completion:]_block_invoke_2", 90, "### SendEventID '%@' failed: %{error}\n", *(a1 + 32), v3);
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

- (void)remoteDisplayReceivedEventID:(id)d event:(id)event options:(id)options
{
  v18[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  v11 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:dCopy];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v15 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:@"*"];
    if (!v15)
    {
      goto LABEL_6;
    }

    v12 = v15;
    if (optionsCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
      [v16 setObject:dCopy forKeyedSubscript:@"eventID"];

      optionsCopy = v16;
    }

    else
    {
      v17 = @"eventID";
      v18[0] = dCopy;
      optionsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }
  }

  handler = [v12 handler];
  v14 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, eventCopy, optionsCopy);
  }

LABEL_6:
}

- (void)remoteDisplaySessionError:(id)error
{
  errorCopy = error;
  v4 = _Block_copy(self->_errorHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, errorCopy);
  }
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__RPRemoteDisplaySession_registerRequestID_options_handler___block_invoke;
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

void __60__RPRemoteDisplaySession_registerRequestID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __60__RPRemoteDisplaySession_registerRequestID_options_handler___block_invoke_cold_1();
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
  v7[2] = __46__RPRemoteDisplaySession_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __46__RPRemoteDisplaySession_deregisterRequestID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __46__RPRemoteDisplaySession_deregisterRequestID___block_invoke_cold_1();
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
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession sendRequestID:requestCopy request:dCopy destinationID:? options:? responseHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__RPRemoteDisplaySession_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
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
    [(RPRemoteDisplaySession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke;
    v31[3] = &unk_1E7C937A8;
    v31[4] = self;
    v23 = dCopy;
    v32 = v23;
    v24 = handlerCopy;
    v33 = v24;
    v25 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2;
    v28[3] = &unk_1E7C94DB8;
    v29 = v23;
    v30 = v24;
    [v25 remoteDisplaySendRequestID:v29 request:requestCopy options:optionsCopy responseHandler:v28];
  }

  else if (handlerCopy)
  {
    v26 = RPErrorF(4294960591, "Non-DirectPeer destination", v16, v17, v18, v19, v20, v21, v27);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);
  }
}

void __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke(void *a1, void *a2)
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
  if (gLogCategory_RPRemoteDisplaySession <= 90)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1 || (v10 = _LogCategory_Initialize(), v8 = v13, v10))
    {
      LogPrintF(&gLogCategory_RPRemoteDisplaySession, "[RPRemoteDisplaySession _sendRequestID:request:destinationID:options:responseHandler:]_block_invoke", 90, "### SendRequestID '%@' XPC error: %{error}\n", a1[5], v8);
    }
  }

  (*(a1[6] + 16))();
}

void __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPRemoteDisplaySession, "[RPRemoteDisplaySession _sendRequestID:request:destinationID:options:responseHandler:]_block_invoke_2", 90, "### SendRequestID '%@' failed: %{error}\n", *(a1 + 32), v8);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)remoteDisplayReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  v27[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:dCopy];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v18 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:@"*"];
    if (!v18)
    {
      v15 = RPErrorF(4294960582, "No request handler for '%@'", v19, v20, v21, v22, v23, v24, dCopy);
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
      goto LABEL_6;
    }

    v15 = v18;
    if (optionsCopy)
    {
      v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
      [v25 setObject:dCopy forKeyedSubscript:@"requestID"];

      optionsCopy = v25;
    }

    else
    {
      v26 = @"requestID";
      v27[0] = dCopy;
      optionsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    }
  }

  handler = [v15 handler];
  v17 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, requestCopy, optionsCopy, handlerCopy);
  }

LABEL_6:
}

- (void)remoteDisplayUpdateDataLinkType:(id)type
{
  intValue = [type intValue];
  linkType = self->_linkType;
  if (linkType)
  {
    v6 = linkType == intValue;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    dispatchQueue = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__RPRemoteDisplaySession_remoteDisplayUpdateDataLinkType___block_invoke;
    v8[3] = &unk_1E7C934D8;
    v8[4] = self;
    v9 = intValue;
    dispatch_async(dispatchQueue, v8);
  }

  else
  {
    [(RPRemoteDisplaySession *)&self->_linkType remoteDisplayUpdateDataLinkType:intValue];
  }
}

uint64_t __58__RPRemoteDisplaySession_remoteDisplayUpdateDataLinkType___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 60))
  {
    v2 = result;
    if (gLogCategory_RPRemoteDisplaySession <= 30)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1)
      {
        v3 = "Unknown";
        goto LABEL_5;
      }

      result = _LogCategory_Initialize();
      v1 = *(v2 + 32);
      if (result)
      {
        v6 = *(v1 + 60);
        if (v6 > 0xB)
        {
          v3 = "?";
        }

        else
        {
          v3 = off_1E7C94DD8[v6];
        }

LABEL_5:
        v4 = *(v2 + 40);
        if (v4 > 0xB)
        {
          v5 = "?";
        }

        else
        {
          v5 = off_1E7C94DD8[v4];
        }

        result = LogPrintF(&gLogCategory_RPRemoteDisplaySession, "[RPRemoteDisplaySession remoteDisplayUpdateDataLinkType:]_block_invoke", 30, "Data link type changed %s -> %s\n", v3, v5);
        v1 = *(v2 + 32);
      }
    }

    *(v1 + 60) = *(v2 + 40);
  }

  return result;
}

- (unsigned)remoteDisplayUpdateDataLinkType:(unsigned int)a3 .cold.1(unsigned int *result, unsigned int a2, unsigned int a3)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1)
    {
LABEL_3:
      v4 = RPDataLinkTypeToString_0(a2);
      v5 = RPDataLinkTypeToString_0(a3);
      return LogPrintF(&gLogCategory_RPRemoteDisplaySession, "[RPRemoteDisplaySession remoteDisplayUpdateDataLinkType:]", 30, "Ignore unexpected link type change from %s -> %s", v4, v5);
    }

    v6 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      a2 = *v6;
      goto LABEL_3;
    }
  }

  return result;
}

@end