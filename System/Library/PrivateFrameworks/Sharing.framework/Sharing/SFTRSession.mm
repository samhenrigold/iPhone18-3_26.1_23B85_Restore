@interface SFTRSession
- (SFTRSession)init;
- (id)_decodeTRMessageData:(id)data kindOfClass:(Class)class;
- (void)_cleanup;
- (void)activate;
- (void)dealloc;
- (void)handleEvent:(id)event flags:(unsigned int)flags;
- (void)handleRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler;
- (void)invalidate;
- (void)sendEvent:(id)event;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
- (void)setEventHandler:(id)handler forEventClass:(Class)class;
- (void)setRequestHandler:(id)handler forRequestClass:(Class)class;
@end

@implementation SFTRSession

- (SFTRSession)init
{
  v7.receiver = self;
  v7.super_class = SFTRSession;
  v2 = [(SFTRSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_connected = 1;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFTRSession *)v3 _cleanup];
  }

  else
  {
    [(SFTRSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFTRSession;
    [(SFTRSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  anisetteDataHandler = self->_anisetteDataHandler;
  self->_anisetteDataHandler = 0;

  disconnectHandler = self->_disconnectHandler;
  self->_disconnectHandler = 0;

  [(NSMutableDictionary *)self->_handlerMap removeAllObjects];
  handlerMap = self->_handlerMap;
  self->_handlerMap = 0;

  sendEventImpHandler = self->_sendEventImpHandler;
  self->_sendEventImpHandler = 0;

  sendRequestImpHandler = self->_sendRequestImpHandler;
  self->_sendRequestImpHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFTRSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __23__SFTRSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFTRSession <= 30)
  {
    if (gLogCategory_SFTRSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __23__SFTRSession_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = objc_alloc_init(getTRAnisetteDataHandlerClass());
  v5 = *(v3 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  v7 = *(v3 + 32);
  v8 = v7[2];
  v9 = [v7 trSession];
  [v8 registerForAnisetteDataRequestsFromSession:v9];

  *(*(v3 + 32) + 8) = 1;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SFTRSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__SFTRSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 24) & 1) == 0 && gLogCategory_SFTRSession <= 30)
  {
    if (gLogCategory_SFTRSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __25__SFTRSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 24) = 1;
  v4 = *(v3 + 32);

  return [v4 _cleanup];
}

- (void)handleEvent:(id)event flags:(unsigned int)flags
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFTRSession_handleEvent_flags___block_invoke;
  block[3] = &unk_1E788EC90;
  flagsCopy = flags;
  v10 = eventCopy;
  selfCopy = self;
  v8 = eventCopy;
  dispatch_async(dispatchQueue, block);
}

void __33__SFTRSession_handleEvent_flags___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    if (gLogCategory_SFTRSession <= 90)
    {
      if (gLogCategory_SFTRSession != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __33__SFTRSession_handleEvent_flags___block_invoke_cold_5(a1, a2, a3);
      }
    }

    goto LABEL_20;
  }

  v3 = a1;
  CFDataGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (!v4)
  {
    if (gLogCategory_SFTRSession <= 90)
    {
      if (gLogCategory_SFTRSession != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        __33__SFTRSession_handleEvent_flags___block_invoke_cold_4(v4, v5, v6);
      }
    }

LABEL_20:
    v14 = 0;
LABEL_21:
    v11 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v14 = v4;
  getTREventMessageClass();
  v7 = objc_opt_class();
  v8 = [*(v3 + 40) _decodeTRMessageData:v14 kindOfClass:v7];
  if (!v8)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __33__SFTRSession_handleEvent_flags___block_invoke_cold_3(v7);
    }

    goto LABEL_21;
  }

  v9 = v8;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [*(*(v3 + 40) + 32) objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = v12;
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __33__SFTRSession_handleEvent_flags___block_invoke_cold_1(v14, v11);
    }

    (v13)[2](v13, v9);
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __33__SFTRSession_handleEvent_flags___block_invoke_cold_2(v11);
  }

LABEL_9:
}

- (void)handleRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke;
  v13[3] = &unk_1E788EAB8;
  flagsCopy = flags;
  v14 = requestCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  dispatch_async(dispatchQueue, v13);
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if (gLogCategory_SFTRSession <= 90)
    {
      if (gLogCategory_SFTRSession != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_5(a1, a2, a3);
      }
    }

    goto LABEL_18;
  }

  v3 = a1;
  CFDataGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (!v4)
  {
    if (gLogCategory_SFTRSession <= 90)
    {
      if (gLogCategory_SFTRSession != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_4(v4, v5, v6);
      }
    }

LABEL_18:
    v7 = 0;
LABEL_19:
    v12 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  v7 = v4;
  getTRRequestMessageClass();
  v8 = objc_opt_class();
  v9 = [*(v3 + 40) _decodeTRMessageData:v7 kindOfClass:v8];
  if (!v9)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_3(v8);
    }

    goto LABEL_19;
  }

  v10 = v9;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [*(*(v3 + 40) + 32) objectForKeyedSubscript:v12];
  if (v13)
  {
    v14 = v13;
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_1(v7, v12);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2;
    v15[3] = &unk_1E7891388;
    v12 = v12;
    v16 = v12;
    v17 = *(v3 + 48);
    (v14)[2](v14, v10, v15);
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_2(v12);
  }

LABEL_9:
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    v9 = v8;
    if (v8)
    {
      v22 = @"trMsg";
      v23 = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
      {
        __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2_cold_1(v7, v9);
      }

      v5 = 0;
      goto LABEL_18;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A768];
    v24 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v19 = v18;
    v20 = @"?";
    if (v18)
    {
      v20 = v18;
    }

    v25 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v5 = [v16 errorWithDomain:v17 code:-6712 userInfo:v21];

    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2_cold_2();
    }

LABEL_17:
    v10 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (gLogCategory_SFTRSession <= 60 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFTRSession, "[SFTRSession handleRequest:flags:responseHandler:]_block_invoke_2", 60, "### Response to %@ failed: %{error}\n", *(a1 + 32), v5);
  }

  if (!v5)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v26 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v13;
    v14 = @"?";
    if (v13)
    {
      v14 = v13;
    }

    v27[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v5 = [v11 errorWithDomain:v12 code:-6700 userInfo:v15];

    goto LABEL_17;
  }

  v10 = 0;
LABEL_19:
  (*(*(a1 + 40) + 16))();
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__SFTRSession_sendEvent___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_async(dispatchQueue, v7);
}

void __25__SFTRSession_sendEvent___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  if (v4)
  {
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __25__SFTRSession_sendEvent___block_invoke_cold_1(v4, v3);
    }

    v9[0] = @"op";
    v9[1] = @"trMsg";
    v10[0] = &unk_1F1D7D210;
    v10[1] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = *(a1 + 40);
    v7 = *(v6 + 72);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, 1);
    }

    else
    {
      v8 = *(v6 + 56);
      if (v8)
      {
        [v8 sendWithFlags:1 object:v5];
      }

      else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
      {
        __25__SFTRSession_sendEvent___block_invoke_cold_2();
      }
    }
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __25__SFTRSession_sendEvent___block_invoke_cold_3(v3);
  }
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFTRSession_sendRequest_withResponseHandler___block_invoke;
  block[3] = &unk_1E788A570;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke(void *a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1[4] requiringSecureCoding:1 error:0];
  v5 = v2;
  if (v2)
  {
    v24[0] = @"op";
    v24[1] = @"trMsg";
    v25[0] = &unk_1F1D7D228;
    v25[1] = v2;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161;
    aBlock[3] = &unk_1E78913B0;
    v7 = a1[6];
    aBlock[4] = a1[5];
    v21 = v7;
    v8 = _Block_copy(aBlock);
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_1(a1 + 4, v5);
    }

    v9 = a1[5];
    v10 = *(v9 + 80);
    if (v10)
    {
      (*(v10 + 16))(v10, v6, 1, v8);
    }

    else
    {
      v11 = *(v9 + 56);
      if (v11)
      {
        [v11 sendRequestWithFlags:1 object:v6 responseHandler:v8];
      }

      else
      {
        if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
        {
          __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_2();
        }

        v12 = a1[6];
        v13 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A768];
        v22 = *MEMORY[0x1E696A578];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
        v16 = v15;
        v17 = @"?";
        if (v15)
        {
          v17 = v15;
        }

        v23 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v19 = [v13 errorWithDomain:v14 code:-6753 userInfo:v18];
        (*(v12 + 16))(v12, v19, 0);
      }
    }
  }

  else if (gLogCategory_SFTRSession <= 90)
  {
    if (gLogCategory_SFTRSession != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_3(v2, v3, v4);
    }
  }
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161(uint64_t a1, char a2, void *a3, void *a4)
{
  v20 = a3;
  v7 = a4;
  v8 = v20;
  v9 = v7;
  if (v20)
  {
    if (gLogCategory_SFTRSession <= 60)
    {
      if (gLogCategory_SFTRSession == -1 && !_LogCategory_Initialize())
      {
LABEL_24:
        v11 = 0;
LABEL_29:
        v14 = 0;
        v8 = v20;
        goto LABEL_9;
      }

      __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_1(v20);
      v8 = v20;
    }

LABEL_25:
    v11 = 0;
    goto LABEL_30;
  }

  if ((a2 & 1) == 0)
  {
    v15 = NSErrorWithOSStatusF(4294960528, "Unencrypted response");
    v8 = v15;
    if (gLogCategory_SFTRSession <= 90)
    {
      v20 = v15;
      if (gLogCategory_SFTRSession != -1 || (v15 = _LogCategory_Initialize(), v15))
      {
        __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_5(v15, v8, v16);
      }

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    v17 = NSErrorWithOSStatusF(4294960584, "No TRMessage data in response");
    v8 = v17;
    if (gLogCategory_SFTRSession <= 90)
    {
      v20 = v17;
      if (gLogCategory_SFTRSession != -1 || (v17 = _LogCategory_Initialize(), v17))
      {
        __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_4(v17, v8, v18);
      }

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v11 = v10;
  getTRResponseMessageClass();
  v12 = objc_opt_class();
  v13 = [*(a1 + 32) _decodeTRMessageData:v11 kindOfClass:v12];
  if (!v13)
  {
    v19 = NSErrorWithOSStatusF(4294960540, "Bad response type");
    v8 = v19;
    if (gLogCategory_SFTRSession <= 90)
    {
      v20 = v19;
      if (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize())
      {
        __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_3(v12);
      }

      goto LABEL_29;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_9;
  }

  v14 = v13;
  if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_2(v14, v11);
  }

  v8 = 0;
LABEL_9:
  v21 = v8;
  (*(*(a1 + 40) + 16))();
}

- (void)setEventHandler:(id)handler forEventClass:(Class)class
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFTRSession_setEventHandler_forEventClass___block_invoke;
  block[3] = &unk_1E78913D8;
  v10 = handlerCopy;
  classCopy = class;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __45__SFTRSession_setEventHandler_forEventClass___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __45__SFTRSession_setEventHandler_forEventClass___block_invoke_cold_1(a1);
  }

  if (!*(*(a1 + 32) + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;
  }

  v7 = [*(a1 + 40) copy];
  v5 = *(*(a1 + 32) + 32);
  v6 = NSStringFromClass(*(a1 + 48));
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (void)setRequestHandler:(id)handler forRequestClass:(Class)class
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke;
  block[3] = &unk_1E78913D8;
  v10 = handlerCopy;
  classCopy = class;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke_cold_1(a1);
  }

  if (!*(*(a1 + 32) + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;
  }

  v7 = [*(a1 + 40) copy];
  v5 = *(*(a1 + 32) + 32);
  v6 = NSStringFromClass(*(a1 + 48));
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (id)_decodeTRMessageData:(id)data kindOfClass:(Class)class
{
  v15[6] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFD8];
  dataCopy = data;
  v7 = [v5 alloc];
  v15[0] = class;
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v15[4] = objc_opt_class();
  v15[5] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
  v9 = [v7 initWithArray:v8];

  v14 = 0;
  v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v14];

  v11 = v14;
  if (v10)
  {
    v12 = v10;
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    [SFTRSession _decodeTRMessageData:v11 kindOfClass:?];
  }

  return v10;
}

void __33__SFTRSession_handleEvent_flags___block_invoke_cold_3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  LogPrintF(&gLogCategory_SFTRSession, "[SFTRSession handleEvent:flags:]_block_invoke", 90, "### Event message not a %@\n", v1);
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  LogPrintF(&gLogCategory_SFTRSession, "[SFTRSession handleRequest:flags:responseHandler:]_block_invoke", 90, "### Request message not a %@\n", v1);
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LogPrintF(&gLogCategory_SFTRSession, "-[SFTRSession handleRequest:flags:responseHandler:]_block_invoke_2", 30, "Send response %@ (%ld bytes)\n", v4, [a2 length]);
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LogPrintF(&gLogCategory_SFTRSession, "-[SFTRSession sendRequest:withResponseHandler:]_block_invoke_2", 30, "Send request %@ (%ld bytes)\n", v4, [a2 length]);
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_2(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  LogPrintF(&gLogCategory_SFTRSession, "-[SFTRSession sendRequest:withResponseHandler:]_block_invoke", 30, "Received response %@ (%ld bytes)\n", v4, [a2 length]);
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  LogPrintF(&gLogCategory_SFTRSession, "[SFTRSession sendRequest:withResponseHandler:]_block_invoke", 90, "### Response message not a %@\n", v1);
}

void __45__SFTRSession_setEventHandler_forEventClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = NSStringFromClass(*(a1 + 48));
  LogPrintF(&gLogCategory_SFTRSession, "[SFTRSession setEventHandler:forEventClass:]_block_invoke", 30, "Set event handler for %@\n", v1);
}

void __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = NSStringFromClass(*(a1 + 48));
  LogPrintF(&gLogCategory_SFTRSession, "[SFTRSession setRequestHandler:forRequestClass:]_block_invoke", 30, "Set request handler for %@\n", v1);
}

@end