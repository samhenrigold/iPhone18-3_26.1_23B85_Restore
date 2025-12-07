@interface SFRemoteTextInputClient
- (NSDictionary)currentPayload;
- (RTIInputSystemSourceSession)sourceSession;
- (SFRemoteTextInputClient)init;
- (void)_cleanup;
- (void)_fireEventHandlerWithPayload:(id)payload;
- (void)_handleSessionEvent:(int64_t)event forSession:(id)session;
- (void)activate;
- (void)currentPayload;
- (void)dealloc;
- (void)fireEventHandlerWithPayload:(id)payload;
- (void)handleTextActionPayload:(id)payload;
- (void)handleTextInputData:(id)data;
- (void)handleUsername:(id)username password:(id)password;
- (void)inputSystemService:(id)service didCreateInputSession:(id)session;
- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin;
- (void)inputSystemService:(id)service inputSessionDidDie:(id)die;
- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end;
- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change;
- (void)invalidate;
- (void)performTextOperations:(id)operations;
@end

@implementation SFRemoteTextInputClient

- (SFRemoteTextInputClient)init
{
  v6.receiver = self;
  v6.super_class = SFRemoteTextInputClient;
  v2 = [(SFRemoteTextInputClient *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFRemoteTextInputClient *)v3 activate];
  }

  else
  {
    [(SFRemoteTextInputClient *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFRemoteTextInputClient;
    [(SFRemoteTextInputClient *)&v5 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFRemoteTextInputClient_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFRemoteTextInputClient_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __35__SFRemoteTextInputClient_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  *(*(v3 + 32) + 10) = 0;
  v4 = objc_alloc(getRTIInputSystemServiceClass());
  v5 = getRTIServiceSharingName(v4);
  v6 = [v4 initWithMachName:v5];
  v7 = *(v3 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  [*(*(v3 + 32) + 16) setDelegate:?];
  v9 = [*(*(v3 + 32) + 16) setEnabled:1];
  v10 = objc_alloc_init(getRTIInputSystemSourceSessionClass(v9));
  v11 = *(v3 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = v10;

  v13 = *(*(v3 + 32) + 24);

  return [v13 setPayloadDelegate:?];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFRemoteTextInputClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFRemoteTextInputClient_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __37__SFRemoteTextInputClient_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 9) = 1;
  *(*(v3 + 32) + 10) = 0;
  [*(*(v3 + 32) + 16) setDelegate:0];
  [*(*(v3 + 32) + 16) setEnabled:0];
  [*(*(v3 + 32) + 24) setPayloadDelegate:0];
  v4 = *(v3 + 32);

  return [v4 _cleanup];
}

- (void)_cleanup
{
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;

  self->_paused = 0;
  rtiService = self->_rtiService;
  self->_rtiService = 0;

  rtiSourceSession = self->_rtiSourceSession;
  self->_rtiSourceSession = 0;

  textInputDidBegin = self->_textInputDidBegin;
  self->_textInputDidBegin = 0;

  textInputDidEnd = self->_textInputDidEnd;
  self->_textInputDidEnd = 0;
}

- (NSDictionary)currentPayload
{
  v11[1] = *MEMORY[0x1E69E9840];
  currentSession = [(RTIInputSystemService *)self->_rtiService currentSession];
  currentDataPayload = [currentSession currentDataPayload];

  if (self->_activateCalled && !self->_invalidateCalled)
  {
    if (self->_rtiService)
    {
      if (currentDataPayload)
      {
        v5 = SFTextInputDataForRTIDataPayload(currentDataPayload);
        if (v5)
        {
          v6 = v5;
          v7 = 0;
          goto LABEL_12;
        }

        v7 = NSErrorWithOSStatusF(4294960554, "Failed to create SFTextInputData");
        if (v7 && gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
        {
          [(SFRemoteTextInputClient *)v7 currentPayload];
        }

        goto LABEL_11;
      }

      NSErrorWithOSStatusF(4294960569, "No payload found");
    }

    else
    {
      NSErrorWithOSStatusF(4294960576, "No RTI system service");
    }
    v7 = ;
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  [(SFRemoteTextInputClient *)&v10 currentPayload];
  v6 = 0;
  v7 = v9;
LABEL_12:

  return v6;
}

- (RTIInputSystemSourceSession)sourceSession
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    return self->_rtiSourceSession;
  }

  else
  {
    return 0;
  }
}

- (void)handleTextInputData:(id)data
{
  dataCopy = data;
  v17 = dataCopy;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), dataCopy = v17, v5))
    {
      [SFRemoteTextInputClient handleTextInputData:dataCopy];
      dataCopy = v17;
    }
  }

  v6 = SFRTIDataPayloadForData(dataCopy);
  if (v6)
  {
    p_rtiService = &self->_rtiService;
    currentSession = [(RTIInputSystemService *)self->_rtiService currentSession];
    if (currentSession)
    {
    }

    else if (self->_rtiSourceSession)
    {
      if (gLogCategory_SFRemoteTextInputClient <= 30)
      {
        if (gLogCategory_SFRemoteTextInputClient != -1 || (currentSession = _LogCategory_Initialize(), currentSession))
        {
          [(SFRemoteTextInputClient *)currentSession handleTextInputData:v9, v10];
        }
      }

      [(RTIInputSystemSourceSession *)self->_rtiSourceSession handleTextActionPayload:v6];
      goto LABEL_17;
    }

    currentSession2 = [(RTIInputSystemService *)*p_rtiService currentSession];

    if (currentSession2)
    {
      if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteTextInputClient handleTextInputData:?];
      }

      currentSession3 = [(RTIInputSystemService *)*p_rtiService currentSession];
      [currentSession3 handleTextActionPayload:v6];

LABEL_17:
      v16 = 0;
      goto LABEL_18;
    }

    if (gLogCategory_SFRemoteTextInputClient <= 60)
    {
      if (gLogCategory_SFRemoteTextInputClient != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [(SFRemoteTextInputClient *)v12 handleTextInputData:v13, v14];
      }
    }

    NSErrorWithOSStatusF(4294960582, "No current service session, nor input session");
  }

  else
  {
    NSErrorWithOSStatusF(4294960554, "No payload");
  }
  v16 = ;
  if (v16 && gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteTextInputClient handleTextInputData:v16];
  }

LABEL_18:
}

- (void)handleUsername:(id)username password:(id)password
{
  usernameCopy = username;
  passwordCopy = password;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  currentSession = [(RTIInputSystemService *)self->_rtiService currentSession];
  v10 = currentSession;
  v11 = usernameCopy;
  if (!currentSession)
  {
    [(SFRemoteTextInputClient *)0 handleUsername:v9 password:usernameCopy];
    goto LABEL_11;
  }

  v12 = gLogCategory_SFRemoteTextInputClient;
  if (!(usernameCopy | passwordCopy))
  {
    [gLogCategory_SFRemoteTextInputClient < 31 handleUsername:usernameCopy password:?];
    goto LABEL_11;
  }

  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (currentSession = _LogCategory_Initialize(), v11 = usernameCopy, currentSession))
    {
      currentSession = [(SFRemoteTextInputClient *)currentSession handleUsername:v12 password:v11];
      if (!usernameCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (v11)
  {
LABEL_7:
    v13 = getTIKeyboardOutputInfoTypeUsernameStr(currentSession);
    [v7 setObject:usernameCopy forKeyedSubscript:v13];
  }

LABEL_8:
  if (passwordCopy)
  {
    v14 = getTIKeyboardOutputInfoTypePasswordStr(currentSession);
    [v7 setObject:passwordCopy forKeyedSubscript:v14];
  }

  textOperations = [v10 textOperations];
  keyboardOutput = [textOperations keyboardOutput];
  [keyboardOutput setCustomInfo:v7];

  [v10 setSessionDelegate:self->_rtiService];
  [v10 flushOperations];
LABEL_11:
}

- (void)fireEventHandlerWithPayload:(id)payload
{
  payloadCopy = payload;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFRemoteTextInputClient_fireEventHandlerWithPayload___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_fireEventHandlerWithPayload:(id)payload
{
  v11[1] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  payloadCopy = payload;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = SFTextInputDataForRTIDataPayload(payloadCopy);

  if (v6)
  {
    if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient _fireEventHandlerWithPayload:v6];
    }

    eventHandler = self->_eventHandler;
    if (eventHandler)
    {
      eventHandler[2](eventHandler, v6);
    }

    v8 = 0;
  }

  else
  {
    [(SFRemoteTextInputClient *)&v10 _fireEventHandlerWithPayload:v11, &v9];
    v8 = v9;
  }
}

- (void)_handleSessionEvent:(int64_t)event forSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  documentTraits = [sessionCopy documentTraits];
  autofillMode = [documentTraits autofillMode];

  if (gLogCategory_SFRemoteTextInputClient >= 31)
  {
    v8 = autofillMode == 1;
  }

  else
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize())
    {
      [SFRemoteTextInputClient _handleSessionEvent:autofillMode forSession:?];
    }

    v8 = autofillMode == 1;
    if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient _handleSessionEvent:event forSession:autofillMode == 1];
    }
  }

  documentTraits2 = [sessionCopy documentTraits];
  if (documentTraits2)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    associatedDomains = [documentTraits2 associatedDomains];
    [v10 setObject:associatedDomains forKeyedSubscript:@"remoteAssociatedDomains"];

    bundleId = [documentTraits2 bundleId];
    [v10 setObject:bundleId forKeyedSubscript:@"remoteBundleID"];

    localizedAppName = [documentTraits2 localizedAppName];
    [v10 setObject:localizedAppName forKeyedSubscript:@"remoteLocalizedAppName"];

    appName = [documentTraits2 appName];
    [v10 setObject:appName forKeyedSubscript:@"remoteUnlocalizedAppName"];
  }

  else
  {
    v10 = 0;
  }

  if (event > 3)
  {
    if (event == 4)
    {
LABEL_31:
      v18 = 0;
      goto LABEL_36;
    }

    if (event == 5)
    {
      v18 = 0;
      self->_paused = 1;
      goto LABEL_36;
    }

    if (event != 6)
    {
LABEL_23:
      if (gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteTextInputClient _handleSessionEvent:event forSession:?];
      }

      goto LABEL_31;
    }

    v18 = 0;
    self->_paused = 0;
  }

  else
  {
    switch(event)
    {
      case 1:
        self->_paused = 0;
        textInputDidBegin = self->_textInputDidBegin;
        if (textInputDidBegin)
        {
          textInputDidBegin[2](textInputDidBegin, v8, v10);
        }

        goto LABEL_31;
      case 2:
        if (self->_paused)
        {
          if (gLogCategory_SFRemoteTextInputClient <= 30)
          {
            if (gLogCategory_SFRemoteTextInputClient != -1 || (v15 = _LogCategory_Initialize(), v15))
            {
              [(SFRemoteTextInputClient *)v15 _handleSessionEvent:v16 forSession:v17];
            }
          }

          goto LABEL_31;
        }

        break;
      case 3:
        break;
      default:
        goto LABEL_23;
    }

    textInputDidEnd = self->_textInputDidEnd;
    if (textInputDidEnd)
    {
      textInputDidEnd[2](textInputDidEnd, v8, v10);
    }

    v18 = 1;
  }

LABEL_36:
  currentDataPayload = [sessionCopy currentDataPayload];
  v24 = currentDataPayload;
  if ((v18 & 1) != 0 || !currentDataPayload)
  {
    if (gLogCategory_SFRemoteTextInputClient <= 60)
    {
      if (gLogCategory_SFRemoteTextInputClient != -1 || (currentDataPayload = _LogCategory_Initialize(), currentDataPayload))
      {
        [(SFRemoteTextInputClient *)currentDataPayload _handleSessionEvent:v22 forSession:v23];
      }
    }
  }

  else
  {
    [(SFRemoteTextInputClient *)self fireEventHandlerWithPayload:currentDataPayload];
  }
}

- (void)performTextOperations:(id)operations
{
  operationsCopy = operations;
  v4 = operationsCopy;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    v6 = operationsCopy;
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFRemoteTextInputClient performTextOperations:];
      v4 = v6;
    }
  }
}

- (void)inputSystemService:(id)service didCreateInputSession:(id)session
{
  serviceCopy = service;
  sessionCopy = session;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/didCreateInputSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient inputSystemService:didCreateInputSession:]", 30, "Service created session: %@\n", sessionCopy);
  }

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin
{
  beginCopy = begin;
  v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidBegin", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SFRemoteTextInputClient_inputSystemService_inputSessionDidBegin___block_invoke;
  v9[3] = &unk_1E788A658;
  v9[4] = self;
  v10 = beginCopy;
  v8 = beginCopy;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end
{
  endCopy = end;
  v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidEnd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__SFRemoteTextInputClient_inputSystemService_inputSessionDidEnd___block_invoke;
  v9[3] = &unk_1E788A658;
  v9[4] = self;
  v10 = endCopy;
  v8 = endCopy;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidDie:(id)die
{
  dieCopy = die;
  v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidDie", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__SFRemoteTextInputClient_inputSystemService_inputSessionDidDie___block_invoke;
  v9[3] = &unk_1E788A658;
  v9[4] = self;
  v10 = dieCopy;
  v8 = dieCopy;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason
{
  pauseCopy = pause;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidPause", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SFRemoteTextInputClient_inputSystemService_inputSessionDidPause_withReason___block_invoke;
  v10[3] = &unk_1E788A658;
  v10[4] = self;
  v11 = pauseCopy;
  v9 = pauseCopy;
  dispatch_async(dispatchQueue, v10);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason
{
  unpauseCopy = unpause;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidUnpause", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SFRemoteTextInputClient_inputSystemService_inputSessionDidUnpause_withReason___block_invoke;
  v10[3] = &unk_1E788A658;
  v10[4] = self;
  v11 = unpauseCopy;
  v9 = unpauseCopy;
  dispatch_async(dispatchQueue, v10);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__SFRemoteTextInputClient_inputSystemService_inputSessionDocumentDidChange___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)handleTextActionPayload:(id)payload
{
  payloadCopy = payload;
  v6 = payloadCopy;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), payloadCopy = v6, v5))
    {
      [SFRemoteTextInputClient handleTextActionPayload:payloadCopy];
      payloadCopy = v6;
    }
  }

  [(SFRemoteTextInputClient *)self fireEventHandlerWithPayload:payloadCopy];
}

- (void)currentPayload
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  *self = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a2 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:self count:1];
  *a3 = [v6 errorWithDomain:v7 code:-6709 userInfo:v11];
}

- (void)handleTextInputData:(void *)a1 .cold.1(void *a1)
{
  v1 = SFTextInputDataLogString(a1);
  LogPrintF(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient handleTextInputData:]", 30, "Handle text input data (%@)\n", v1);
}

- (void)handleTextInputData:(id *)a1 .cold.3(id *a1)
{
  v1 = *a1;
  v2 = [*a1 currentSession];
  LogPrintF(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient handleTextInputData:]", 30, "Calling handleText... on the service's (%@) current session (%@)", v1, v2);
}

- (void)handleTextInputData:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient handleTextInputData:]", 60, "### Error handling text input data: %@\n", v1);
}

- (uint64_t)handleUsername:(uint64_t)a3 password:.cold.2(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return OUTLINED_FUNCTION_2_1(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient handleUsername:password:]", a3, "No credentials to handle\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_2_1(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient handleUsername:password:]", a3, "No credentials to handle\n");
    }
  }

  return result;
}

- (void)handleUsername:(uint64_t)a3 password:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient handleUsername:password:]", a3, "No current session to handle credentials\n");
  }
}

- (void)_fireEventHandlerWithPayload:(void *)a1 .cold.1(void *a1)
{
  v1 = SFTextInputDataLogString(a1);
  LogPrintF(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient _fireEventHandlerWithPayload:]", 30, "Firing event handler with data (%@)\n", v1);
}

- (void)_fireEventHandlerWithPayload:(void *)a3 .cold.2(void *a1, __CFString **a2, void *a3)
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  *a1 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a2 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:1];
  v12 = [v6 errorWithDomain:v7 code:-6720 userInfo:v11];

  if (v12 && gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    v13 = [v12 localizedDescription];
    LogPrintF(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient _fireEventHandlerWithPayload:]", 60, "### Error firing event handler: %@\n", v13);
  }

  *a3 = v12;
}

- (uint64_t)_handleSessionEvent:(uint64_t)a1 forSession:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  if ((a1 - 1) > 5)
  {
    v4 = @"?";
  }

  else
  {
    v4 = *(&off_1E788DAB8 + a1 - 1);
  }

  return LogPrintF(&gLogCategory_SFRemoteTextInputClient, "[SFRemoteTextInputClient _handleSessionEvent:forSession:]", 30, "Handle session event: %@ with flags: %x", v4, a2, v2, v3);
}

@end