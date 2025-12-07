@interface SFCoordinatedAlertRequest
- (SFCoordinatedAlertRequest)init;
- (SFCoordinatedAlertRequest)initWithCoder:(id)coder;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_startWithTimer;
- (void)_timeoutFired;
- (void)coordinatedAlertUpdatedWithError:(id)error bestIsMe:(BOOL)me info:(id)info;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)start;
@end

@implementation SFCoordinatedAlertRequest

- (SFCoordinatedAlertRequest)init
{
  v6.receiver = self;
  v6.super_class = SFCoordinatedAlertRequest;
  v2 = [(SFCoordinatedAlertRequest *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFCoordinatedAlertRequest_start__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_startWithTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFCoordinatedAlertRequest <= 30)
  {
    if (gLogCategory_SFCoordinatedAlertRequest != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFCoordinatedAlertRequest *)v3 _startWithTimer];
    }
  }

  if (!self->_completionHandler)
  {
    [SFCoordinatedAlertRequest _startWithTimer];
    goto LABEL_15;
  }

  if (self->_started)
  {
LABEL_15:
    [SFCoordinatedAlertRequest _startWithTimer];
    goto LABEL_16;
  }

  self->_started = 1;
  timeout = self->_timeout;
  if (timeout <= 0.0)
  {
    CFPrefs_GetDouble();
    self->_timeout = timeout;
  }

  v7 = 2.0;
  if (timeout <= 0.0 || (v7 = 900.0, timeout > 900.0))
  {
    self->_timeout = v7;
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v8;

  v10 = self->_timeoutTimer;
  if (!v10)
  {
LABEL_16:
    [SFBLEScanner _startTimeoutIfNeeded];
    v18 = v17;
    os_activity_scope_leave(&state);
    _Unwind_Resume(v18);
  }

  v11 = (self->_timeout * 1000000000.0);
  v12 = dispatch_time(0, v11);
  dispatch_source_set_timer(v10, v12, v11, v11 >> 2);
  v13 = self->_timeoutTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke;
  handler[3] = &unk_1E788B198;
  handler[4] = self;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(self->_timeoutTimer);
  v14 = _os_activity_create(&dword_1A9662000, "Sharing/SFCoordinatedAlertRequest/coordinatedAlertsRequestStart", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);
  [(SFCoordinatedAlertRequest *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_2;
  v20[3] = &unk_1E788B238;
  v20[4] = self;
  v16 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_3;
  v19[3] = &unk_1E788ECB8;
  v19[4] = self;
  [v16 coordinatedAlertsRequestStart:self completion:v19];

  os_activity_scope_leave(&state);
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__SFCoordinatedAlertRequest__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__SFCoordinatedAlertRequest__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v7];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEBA0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFCoordinatedAlertRequest <= 10 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
    {
      [SFCoordinatedAlertRequest _ensureXPCStarted];
    }
  }
}

void __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    v3[2]();
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFCoordinatedAlertRequest_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (!self->_invalidateDone && gLogCategory_SFCoordinatedAlertRequest <= 30)
    {
      if (gLogCategory_SFCoordinatedAlertRequest != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFCoordinatedAlertRequest *)v3 _invalidate];
      }
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v7 = timeoutTimer;
      dispatch_source_cancel(v7);
      v8 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      [(NSXPCConnection *)xpcCnx invalidate];
      v10 = self->_xpcCnx;
      self->_xpcCnx = 0;
    }

    else
    {

      [(SFCoordinatedAlertRequest *)self _invalidated];
    }
  }
}

- (void)_invalidated
{
  v23[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFCoordinatedAlertRequest <= 50)
    {
      if (gLogCategory_SFCoordinatedAlertRequest != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFCoordinatedAlertRequest *)v3 _invalidated];
      }
    }

    completionHandler = self->_completionHandler;
    if (completionHandler && self->_started)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A768];
      v22 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v10 = v9;
      v11 = @"?";
      if (v9)
      {
        v11 = v9;
      }

      v23[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v13 = [v7 errorWithDomain:v8 code:-6723 userInfo:v12];
      completionHandler[2](completionHandler, v13, 1, 0);
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy coordinatedAlertsRequestCancel];

    v16 = self->_completionHandler;
    self->_completionHandler = 0;

    v17 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v19 = timeoutTimer;
      dispatch_source_cancel(v19);
      v20 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFCoordinatedAlertRequest <= 10 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
    {
      [SFCoordinatedAlertRequest _invalidated];
    }
  }
}

- (void)dealloc
{
  if (self->_timeoutTimer)
  {
    [SFCoordinatedAlertRequest dealloc];
    goto LABEL_7;
  }

  if (self->_xpcCnx)
  {
LABEL_7:
    v6 = [SFProximityClient dealloc];
    [(SFCoordinatedAlertRequest *)v6 .cxx_destruct];
    return;
  }

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    self->_dispatchQueue = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v8.receiver = self;
  v8.super_class = SFCoordinatedAlertRequest;
  [(SFCoordinatedAlertRequest *)&v8 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  if (type)
  {
    [coder encodeInteger:type forKey:@"type"];
  }
}

void __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (gLogCategory_SFCoordinatedAlertRequest <= 50)
  {
    if (gLogCategory_SFCoordinatedAlertRequest != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
    {
      __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_2_cold_1(v3);
      v3 = v8;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 1, 0);
    v5 = *(a1 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 40) = 0;
}

- (void)coordinatedAlertUpdatedWithError:(id)error bestIsMe:(BOOL)me info:(id)info
{
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    updateHandler[2](updateHandler, error, me, info);
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFCoordinatedAlertRequest <= 50)
  {
    if (gLogCategory_SFCoordinatedAlertRequest != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFCoordinatedAlertRequest *)v3 _interrupted];
    }
  }

  v11 = SFErrorF(4294896154, "SFCoordinatedAlert XPC Connection interrupted", v5, v6, v7, v8, v9, v10, v13);
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    v14 = v11;
    updateHandler[2]();
    v11 = v14;
  }
}

- (void)_timeoutFired
{
  v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFCoordinatedAlertRequest/coordinatedAlertsRequestFinish", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy coordinatedAlertsRequestFinish];

  os_activity_scope_leave(&v8);
}

- (SFCoordinatedAlertRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SFCoordinatedAlertRequest;
  v5 = [(SFCoordinatedAlertRequest *)&v14 init];
  if (v5)
  {
    v6 = SFMainQueue();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    if ([coderCopy containsValueForKey:@"type"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"type"];
      v5->_type = v8;
      if (v8 >= 7)
      {
        v9 = MEMORY[0x1E695DF30];
        v10 = *MEMORY[0x1E695D940];
        v11 = _NSMethodExceptionProem();
        [v9 raise:v10 format:{@"%@: type (%ld) out-of-range", v11, v5->_type}];
      }
    }

    v12 = v5;
  }

  return v5;
}

@end