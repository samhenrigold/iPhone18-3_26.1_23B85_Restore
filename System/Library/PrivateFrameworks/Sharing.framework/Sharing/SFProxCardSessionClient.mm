@interface SFProxCardSessionClient
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SFProxCardSessionClient)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)_xpcCheckinTimerFired;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setLabel:(id)label;
- (void)xpcCheckinWithCompletion:(id)completion;
- (void)xpcPerformAction:(int)action completion:(id)completion;
@end

@implementation SFProxCardSessionClient

- (SFProxCardSessionClient)init
{
  v7.receiver = self;
  v7.super_class = SFProxCardSessionClient;
  v2 = [(SFProxCardSessionClient *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucat = &gLogCategory_SFProxCardSessionClient;
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SFProxCardSessionClient;
  [(SFProxCardSessionClient *)&v4 dealloc];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB3AE078;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SFProxCardSessionClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __50__SFProxCardSessionClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = NSErrorF();
    v4 = *(*(a1 + 32) + 40);
    v7 = v3;
    if (*v4 <= 90)
    {
      if (*v4 == -1)
      {
        v6 = _LogCategory_Initialize();
        v3 = v7;
        if (!v6)
        {
          goto LABEL_9;
        }

        v4 = *(*(a1 + 32) + 40);
      }

      LogPrintF(v4, "[SFProxCardSessionClient activateWithCompletion:]_block_invoke", 90, "### Activate failed: %{error}\n", v3);
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();

    return;
  }

  v5 = *(a1 + 40);

  [v2 _activateWithCompletion:v5];
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__3;
  v81 = __Block_byref_object_dispose__3;
  v82 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SFProxCardSessionClient__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_1E788CD48;
  v76 = &v77;
  aBlock[4] = self;
  v5 = completionCopy;
  v75 = v5;
  v12 = _Block_copy(aBlock);
  if (self->_activateCalled)
  {
    v65 = SFErrorF(4294960575, "Activate already called", v6, v7, v8, v9, v10, v11, v72);
    _endpoint = v78[5];
    v78[5] = v65;
    goto LABEL_24;
  }

  self->_activateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "[SFProxCardSessionClient _activateWithCompletion:]", 30, "Activate start\n");
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = anonymousListener;

  [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  endpoint = [(NSXPCListener *)self->_xpcListener endpoint];
  _endpoint = [endpoint _endpoint];

  if (!_endpoint)
  {
    v66 = SFErrorF(4294960596, "No XPC listener endpoint", v18, v19, v20, v21, v22, v23, v72);
    v30 = v78[5];
    v78[5] = v66;
    goto LABEL_23;
  }

  v30 = self->_viewControllerClassName;
  if (!v30)
  {
    v67 = SFErrorF(4294960591, "No viewControllerClassName", v24, v25, v26, v27, v28, v29, v72);
    v68 = v78[5];
    v78[5] = v67;

    goto LABEL_23;
  }

  viewServiceName = self->_viewServiceName;
  if (!viewServiceName)
  {
    viewServiceName = @"com.apple.SharingViewService";
  }

  v32 = viewServiceName;
  v39 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:v32 viewControllerClassName:v30];
  if (!v39)
  {
    v69 = SFErrorF(4294960596, "Create alert definition failed", v33, v34, v35, v36, v37, v38, v72);
    v47 = v78[5];
    v78[5] = v69;
    goto LABEL_22;
  }

  v40 = objc_alloc_init(MEMORY[0x1E69D4298]);
  v47 = v40;
  if (!v40)
  {
    v70 = SFErrorF(4294960596, "Create alert context failed", v41, v42, v43, v44, v45, v46, v72);
    v51 = v78[5];
    v78[5] = v70;
    goto LABEL_21;
  }

  [v40 setXpcEndpoint:_endpoint];
  v48 = [(NSDictionary *)self->_userInfo mutableCopy];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v51 = v50;

  [v51 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_proxXPC"];
  [v47 setUserInfo:v51];
  v52 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v39 configurationContext:v47];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v52;

  v60 = self->_remoteAlertHandle;
  if (!v60)
  {
    v71 = SFErrorF(4294960596, "Create alert failed", v54, v55, v56, v57, v58, v59, v72);
    v61 = v78[5];
    v78[5] = v71;
    goto LABEL_20;
  }

  [(SBSRemoteAlertHandle *)v60 addObserver:self];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:0];
  v61 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_xpcCheckinTimer, v61);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__SFProxCardSessionClient__activateWithCompletion___block_invoke_2;
  handler[3] = &unk_1E788B198;
  handler[4] = self;
  dispatch_source_set_event_handler(v61, handler);
  SFDispatchTimerSet(v61, 30.0, -1.0, 1.0);
  dispatch_activate(v61);
  v62 = _Block_copy(v5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v62;

  v64 = self->_ucat;
  if (v64->var0 <= 30)
  {
    if (v64->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v64 = self->_ucat;
    }

    LogPrintF(v64, "[SFProxCardSessionClient _activateWithCompletion:]", 30, "Activate waiting for XPC checkin\n");
  }

LABEL_20:

LABEL_21:
LABEL_22:

LABEL_23:
LABEL_24:

  v12[2](v12);
  _Block_object_dispose(&v77, 8);
}

void *__51__SFProxCardSessionClient__activateWithCompletion___block_invoke(void *result)
{
  v1 = *(*(result[6] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v3 = *(result[4] + 40);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(v2[4] + 40);
      v1 = *(*(v2[6] + 8) + 40);
    }

    LogPrintF(v3, "[SFProxCardSessionClient _activateWithCompletion:]_block_invoke", 90, "### Activate failed: %{error}\n", v1);
  }

LABEL_7:
  v4 = *(v2[5] + 16);

  return v4();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFProxCardSessionClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__37__SFProxCardSessionClient_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if (*(v5 + 25))
  {
    return result;
  }

  v10 = v1;
  v6 = result;
  *(v5 + 25) = 1;
  v7 = result[4];
  v8 = v7[5];
  if (*v8 <= 30)
  {
    if (*v8 == -1)
    {
      v9 = _LogCategory_Initialize();
      v7 = v6[4];
      if (!v9)
      {
        goto LABEL_6;
      }

      v8 = v7[5];
    }

    LogPrintF(v8, "[SFProxCardSessionClient invalidate]_block_invoke", 30, "Invalidate\n", v2, v10, v3);
    v7 = v6[4];
  }

LABEL_6:

  return [v7 _invalidate];
}

- (void)_invalidate
{
  delegate = self->_delegate;
  self->_delegate = 0;

  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v5 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;
  }

  xpcCheckinTimer = self->_xpcCheckinTimer;
  if (xpcCheckinTimer)
  {
    v7 = xpcCheckinTimer;
    dispatch_source_cancel(v7);
    v8 = self->_xpcCheckinTimer;
    self->_xpcCheckinTimer = 0;
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  [(NSXPCConnection *)self->_xpcCnx invalidate];

  [(SFProxCardSessionClient *)self _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone && self->_invalidateCalled && !self->_remoteAlertHandle && !self->_xpcCnx)
  {
    v9 = _Block_copy(self->_activateCompletion);
    if (v9)
    {
      v10 = SFErrorF(4294896148, "Invalidated before activate completed", v3, v4, v5, v6, v7, v8, v17);
      v9[2](v9, v10);
    }

    v11 = _Block_copy(self->_invalidationHandler);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }

    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFProxCardSessionClient _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    v5 = errorCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SFProxCardSessionClient _reportError:]", 90, "### Error: %{error}\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      v5 = errorCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = _Block_copy(self->_activateCompletion);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, errorCopy);
  }

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  v9 = _Block_copy(self->_errorHandler);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, errorCopy);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  p_xpcCnx = &self->_xpcCnx;
  if (self->_xpcCnx)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "-[SFProxCardSessionClient listener:shouldAcceptNewConnection:]", 30, "Invalidating existing XPC connection on re-accept: %#{pid}\n", [connectionCopy processIdentifier]);
    }

LABEL_6:
    [(NSXPCConnection *)*p_xpcCnx invalidate];
    v9 = *p_xpcCnx;
    *p_xpcCnx = 0;
  }

  v10 = self->_ucat;
  if (v10->var0 <= 30)
  {
    if (v10->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v10 = self->_ucat;
    }

    LogPrintF(v10, "-[SFProxCardSessionClient listener:shouldAcceptNewConnection:]", 30, "XPC connection started: %#{pid}\n", [connectionCopy processIdentifier]);
  }

LABEL_11:
  objc_storeStrong(&self->_xpcCnx, connection);
  [connectionCopy _setQueue:self->_dispatchQueue];
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D8ABC8];
  [connectionCopy setExportedInterface:v11];

  [connectionCopy setExportedObject:self];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__SFProxCardSessionClient_listener_shouldAcceptNewConnection___block_invoke;
  v15[3] = &unk_1E788A658;
  v15[4] = self;
  v16 = connectionCopy;
  v12 = connectionCopy;
  [v12 setInvalidationHandler:v15];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEA20];
  [v12 setRemoteObjectInterface:v13];

  [v12 resume];
  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke(uint64_t result)
{
  v2 = result + 40;
  v1 = *(result + 40);
  v3 = *(v1 + 40);
  v4 = *v3;
  if (*(result + 32) != *(v1 + 32))
  {
    return __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke_cold_1(v4 < 31, v4, v3, v2);
  }

  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v3 = *(*v2 + 40);
    }

    return LogPrintF(v3, "[SFProxCardSessionClient remoteAlertHandleDidActivate:]_block_invoke", 30, "UI DidActivate\n");
  }

  return result;
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

int *__58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v1 = *(a1 + 40);
  if (*(v2 - 8) != *(v1 + 32))
  {
    return __58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke_cold_1(v1, v2);
  }

  if ((*(v1 + 25) & 1) != 0 || *(v1 + 24) == 1)
  {
    result = *(v1 + 40);
    if (*result > 30)
    {
      return result;
    }

    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(*v2 + 40);
    }

    v4 = "UI DidDeactivate\n";
    v5 = 30;
  }

  else
  {
    result = *(v1 + 40);
    if (*result > 90)
    {
      return result;
    }

    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(*v2 + 40);
    }

    v4 = "### UI DidDeactivate without dismiss\n";
    v5 = 90;
  }

  return LogPrintF(result, "[SFProxCardSessionClient remoteAlertHandleDidDeactivate:]_block_invoke", v5, v4);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke;
  block[3] = &unk_1E788BD88;
  v12 = handleCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

int *__68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(v3 - 8) != *(v2 + 32))
  {
    return __68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke_cold_1(v2, v3, a1);
  }

  if ((*(v2 + 25) & 1) != 0 || *(v2 + 24) == 1)
  {
    v4 = *(v2 + 40);
    if (*v4 <= 30)
    {
      if (*v4 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v4 = *(*v3 + 40);
      }

      LogPrintF(v4, "[SFProxCardSessionClient remoteAlertHandle:didInvalidateWithError:]_block_invoke", 30, "UI DidInvalidate: %{error}\n", *(a1 + 48));
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (*v5 <= 90)
    {
      if (*v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v5 = *(*v3 + 40);
      }

      LogPrintF(v5, "[SFProxCardSessionClient remoteAlertHandle:didInvalidateWithError:]_block_invoke", 90, "### UI DidInvalidate without dismiss: %{error}\n", *(a1 + 48));
    }
  }

LABEL_14:
  v6 = *(*v3 + 32);
  *(*v3 + 32) = 0;

  v7 = *v3;

  return [v7 _invalidated];
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && !self->_dismissCalled)
  {
    v10 = SFErrorF(4294960596, "XPC unexpectedly invalidated", v4, v5, v6, v7, v8, v9, v14);
    [(SFProxCardSessionClient *)self _reportError:v10];
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 20)
  {
    v12 = invalidatedCopy;
    if (ucat->var0 != -1)
    {
LABEL_6:
      LogPrintF(ucat, "[SFProxCardSessionClient _xpcConnectionInvalidated:]", 20, "XPC connection ended: %#{pid}\n", [(NSXPCConnection *)v12 processIdentifier]);
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      v12 = invalidatedCopy;
      goto LABEL_6;
    }
  }

LABEL_8:
  xpcCnx = self->_xpcCnx;
  if (xpcCnx == invalidatedCopy)
  {
    self->_xpcCnx = 0;
  }

  [(SFProxCardSessionClient *)self _invalidated];
}

- (void)_xpcCheckinTimerFired
{
  xpcCheckinTimer = self->_xpcCheckinTimer;
  if (xpcCheckinTimer)
  {
    v10 = xpcCheckinTimer;
    dispatch_source_cancel(v10);
    v11 = self->_xpcCheckinTimer;
    self->_xpcCheckinTimer = 0;
  }

  v13 = SFErrorF(4294960574, "XPC checkin timed out", v2, v3, v4, v5, v6, v7, v12);
  [(SFProxCardSessionClient *)self _reportError:v13];
}

- (void)xpcCheckinWithCompletion:(id)completion
{
  dispatchQueue = self->_dispatchQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SFProxCardSessionClient xpcCheckinWithCompletion:]", 30, "XPC checkin received\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  xpcCheckinTimer = self->_xpcCheckinTimer;
  if (xpcCheckinTimer)
  {
    v7 = xpcCheckinTimer;
    dispatch_source_cancel(v7);
    v8 = self->_xpcCheckinTimer;
    self->_xpcCheckinTimer = 0;
  }

  v9 = _Block_copy(self->_activateCompletion);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  completionCopy[2](completionCopy, 0);
}

- (void)xpcPerformAction:(int)action completion:(id)completion
{
  v4 = *&action;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_9;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

    ucat = self->_ucat;
  }

  if (v4 > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1E788CD68[v4];
  }

  LogPrintF(ucat, "[SFProxCardSessionClient xpcPerformAction:completion:]", 30, "PerformAction: %s\n", v7);
LABEL_9:
  self->_dismissCalled = 1;
  v8 = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(SFProxCardXPCClientInterface *)v8 xpcPerformAction:v4 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

uint64_t __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke_cold_1(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a2 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      a3 = *(*a4 + 40);
    }

    return LogPrintF(a3, "[SFProxCardSessionClient remoteAlertHandleDidActivate:]_block_invoke", 30, "### Unknown remoteAlertHandleDidActivate\n");
  }

  return result;
}

int *__58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (*result <= 30)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(*a2 + 40);
    }

    return LogPrintF(result, "[SFProxCardSessionClient remoteAlertHandleDidDeactivate:]_block_invoke", 30, "### Unknown remoteAlertHandleDidDeactivate\n");
  }

  return result;
}

int *__68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (*result <= 30)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "[SFProxCardSessionClient remoteAlertHandle:didInvalidateWithError:]_block_invoke", 30, "### Unknown didInvalidateWithError: %{error}\n", *(a3 + 48));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *(*a2 + 40);
      return LogPrintF(result, "[SFProxCardSessionClient remoteAlertHandle:didInvalidateWithError:]_block_invoke", 30, "### Unknown didInvalidateWithError: %{error}\n", *(a3 + 48));
    }
  }

  return result;
}

@end