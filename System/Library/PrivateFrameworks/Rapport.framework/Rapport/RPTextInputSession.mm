@interface RPTextInputSession
- (RPTextInputSession)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleTextInputChange:(id)change started:(BOOL)started;
- (void)_handleTextInputStarted:(id)started;
- (void)_handleTextInputStopped:(id)stopped;
- (void)_invalidate;
- (void)activateWithCompletion:(id)completion;
- (void)handleTextActionPayload:(id)payload;
- (void)invalidate;
- (void)performDocumentRequest:(id)request completion:(id)completion;
@end

@implementation RPTextInputSession

- (RPTextInputSession)init
{
  v6.receiver = self;
  v6.super_class = RPTextInputSession;
  v2 = [(RPTextInputSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__RPTextInputSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = self->_messenger;
  v13 = v5;
  if (!v5)
  {
    v18 = RPErrorF(4294960591, "No messenger provided", v7, v8, v9, v10, v11, v12, v19[0]);
    if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      [RPTextInputSession _activateWithCompletion:v18];
      if (!completionCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!completionCopy)
    {
LABEL_11:

      goto LABEL_12;
    }

    completionCopy[2](completionCopy, v18);
    goto LABEL_11;
  }

  if (gLogCategory_RPTextInputSession <= 30)
  {
    if (gLogCategory_RPTextInputSession != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(RPTextInputSession *)v5 _activateWithCompletion:v6, v7];
    }
  }

  v24 = @"statusFlags";
  v25[0] = &unk_1F2EEC920;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  messenger = self->_messenger;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke;
  v23[3] = &unk_1E7C94AD0;
  v23[4] = self;
  [(RPMessageable *)messenger registerEventID:@"_tiStarted" options:v14 handler:v23];
  v16 = self->_messenger;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke_2;
  v22[3] = &unk_1E7C94AD0;
  v22[4] = self;
  [(RPMessageable *)v16 registerEventID:@"_tiStopped" options:v14 handler:v22];
  v17 = self->_messenger;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke_3;
  v21[3] = &unk_1E7C94AD0;
  v21[4] = self;
  [(RPMessageable *)v17 registerEventID:@"_tiC" options:v14 handler:v21];
  self->_started = 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke_4;
  v19[3] = &unk_1E7C94750;
  v19[4] = self;
  v20 = completionCopy;
  [(RPMessageable *)v13 sendRequestID:@"_tiStart" request:MEMORY[0x1E695E0F8] destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v19];

LABEL_12:
}

void __46__RPTextInputSession__activateWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (v8)
  {
    if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      __46__RPTextInputSession__activateWithCompletion___block_invoke_4_cold_1(v11);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_12:
      v13();
    }
  }

  else
  {
    if (gLogCategory_RPTextInputSession <= 30)
    {
      if (gLogCategory_RPTextInputSession != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        __46__RPTextInputSession__activateWithCompletion___block_invoke_4_cold_2(v8, v9, v10);
      }
    }

    [*(a1 + 32) _handleTextInputChange:v15 started:1];
    v14 = *(a1 + 40);
    if (v14)
    {
      v13 = *(v14 + 16);
      goto LABEL_12;
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPTextInputSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (gLogCategory_RPTextInputSession <= 30)
  {
    if (gLogCategory_RPTextInputSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(RPTextInputSession *)self _invalidate];
    }
  }

  [(RPMessageable *)selfCopy->_messenger deregisterEventID:@"_tiStarted"];
  [(RPMessageable *)selfCopy->_messenger deregisterEventID:@"_tiStopped"];
  [(RPMessageable *)selfCopy->_messenger deregisterEventID:@"_tiC"];
  if (selfCopy->_started)
  {
    selfCopy->_started = 0;
    [(RPMessageable *)selfCopy->_messenger sendRequestID:@"_tiStop" request:MEMORY[0x1E695E0F8] destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:&__block_literal_global_19];
  }

  messenger = selfCopy->_messenger;
  selfCopy->_messenger = 0;

  [(RTIInputSystemSourceSession *)selfCopy->_rtiSession setPayloadDelegate:0];
  rtiSession = selfCopy->_rtiSession;
  selfCopy->_rtiSession = 0;

  rtiUpdatedHandler = selfCopy->_rtiUpdatedHandler;
  selfCopy->_rtiUpdatedHandler = 0;
}

void __33__RPTextInputSession__invalidate__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v6 = a3;
  v7 = a4;
  v10 = v7;
  if (v7)
  {
    if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      __33__RPTextInputSession__invalidate__block_invoke_cold_1(v10);
    }
  }

  else if (gLogCategory_RPTextInputSession <= 50)
  {
    if (gLogCategory_RPTextInputSession != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      __33__RPTextInputSession__invalidate__block_invoke_cold_2(v7, v8, v9);
    }
  }
}

- (void)_handleTextInputStarted:(id)started
{
  startedCopy = started;
  CFDataGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    [RPTextInputSession _handleTextInputStarted:v4];
  }

  [(RPTextInputSession *)self _handleTextInputChange:startedCopy started:1];
}

- (void)_handleTextInputStopped:(id)stopped
{
  stoppedCopy = stopped;
  v11 = stoppedCopy;
  if (gLogCategory_RPTextInputSession <= 50)
  {
    if (gLogCategory_RPTextInputSession != -1 || (stoppedCopy = _LogCategory_Initialize(), stoppedCopy))
    {
      [(RPTextInputSession *)stoppedCopy _handleTextInputStopped:v5, v6];
    }
  }

  if (self->_rtiSession)
  {
    v7 = [(objc_class *)getRTIDataPayloadClass() payloadWithData:0];
    [(RTIInputSystemSourceSession *)self->_rtiSession handleTextActionPayload:v7];
    [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:0];
    rtiSession = self->_rtiSession;
    self->_rtiSession = 0;

    v9 = _Block_copy(self->_rtiUpdatedHandler);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }
}

- (void)handleTextActionPayload:(id)payload
{
  payloadCopy = payload;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__RPTextInputSession_handleTextActionPayload___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = payloadCopy;
  selfCopy = self;
  v6 = payloadCopy;
  dispatch_async(dispatchQueue, v7);
}

void __46__RPTextInputSession_handleTextActionPayload___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(a1 + 32) data];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "version")}];
    [v8 setObject:v4 forKeyedSubscript:@"_tiV"];
  }

  if (v2)
  {
    v3 = [v8 setObject:v2 forKeyedSubscript:@"_tiD"];
  }

  v5 = _MergedGlobals(v3);
  v6 = [*(a1 + 32) data];
  v7 = [v5 payloadWithData:v6 version:{objc_msgSend(*(a1 + 32), "version")}];

  if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    __46__RPTextInputSession_handleTextActionPayload___block_invoke_cold_1(v2, v7);
  }

  [*(*(a1 + 40) + 24) sendEventID:@"_tiC" event:v8 destinationID:@"rapport:rdid:DirectPeer" options:0 completion:&__block_literal_global_53];
}

void __46__RPTextInputSession_handleTextActionPayload___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_RPTextInputSession <= 90)
    {
      v5 = v2;
      if (gLogCategory_RPTextInputSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        __46__RPTextInputSession_handleTextActionPayload___block_invoke_2_cold_1(v3);
        v3 = v5;
      }
    }
  }
}

- (void)performDocumentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    [RPTextInputSession performDocumentRequest:requestCopy completion:?];
  }
}

- (void)_handleTextInputChange:(id)change started:(BOOL)started
{
  changeCopy = change;
  CFDataGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  if (v6)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v8 = [_MergedGlobals(Int64Ranged) payloadWithData:v6 version:Int64Ranged];
    if (!v8)
    {
      if (gLogCategory_RPTextInputSession <= 60 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_RPTextInputSession, "[RPTextInputSession _handleTextInputChange:started:]", 60, "### TextInput change bad data\n");
      }

      goto LABEL_17;
    }

    if (!started)
    {
      if (gLogCategory_RPTextInputSession > 50)
      {
LABEL_12:
        rtiSession = self->_rtiSession;
        if (!rtiSession)
        {
          v13 = objc_alloc_init(off_1EE8AC1F8());
          v14 = self->_rtiSession;
          self->_rtiSession = v13;

          [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:self];
          v15 = _Block_copy(self->_rtiUpdatedHandler);
          v16 = v15;
          if (v15)
          {
            (*(v15 + 2))(v15);
          }

          rtiSession = self->_rtiSession;
        }

        [(RTIInputSystemSourceSession *)rtiSession handleTextActionPayload:v8];
LABEL_17:

        goto LABEL_18;
      }

      if (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_RPTextInputSession, "-[RPTextInputSession _handleTextInputChange:started:]", 50, "RTI Change remote: %d bytes\n", [v6 length]);
      }
    }

    if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      documentState = [v8 documentState];
      v9DocumentState = [documentState documentState];
      contextBeforeInput = [v9DocumentState contextBeforeInput];
      LogPrintF(&gLogCategory_RPTextInputSession, "-[RPTextInputSession _handleTextInputChange:started:]", 50, "RTI Change remote string length: %ld \n", [contextBeforeInput length]);
    }

    goto LABEL_12;
  }

LABEL_18:
}

void __46__RPTextInputSession_handleTextActionPayload___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = [a1 length];
  v6 = [a2 documentState];
  v4 = [v6 documentState];
  v5 = [v4 contextBeforeInput];
  LogPrintF(&gLogCategory_RPTextInputSession, "-[RPTextInputSession handleTextActionPayload:]_block_invoke", 50, "RTI send payload: %d bytes string length: %ld\n", v3, [v5 length]);
}

@end