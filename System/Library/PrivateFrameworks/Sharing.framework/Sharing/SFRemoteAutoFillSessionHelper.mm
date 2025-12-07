@interface SFRemoteAutoFillSessionHelper
- (SFRemoteAutoFillSessionHelper)init;
- (SFRemoteAutoFillSessionHelper)initWithCoder:(id)coder;
- (void)_activateWithCompletion:(id)completion;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)autoFillDismissUserNotification;
- (void)autoFillPairingSucceeded:(BOOL)succeeded completion:(id)completion;
- (void)autoFillPromptForPIN:(unsigned int)n throttleSeconds:(int)seconds;
- (void)clientDismissUserNotification;
- (void)clientPairingSucceeded:(BOOL)succeeded completion:(id)completion;
- (void)clientPromptForPIN:(unsigned int)n throttleSeconds:(int)seconds;
- (void)invalidate;
- (void)serverDidPickUsername:(id)username password:(id)password error:(id)error;
- (void)serverTryPIN:(id)n;
- (void)serverUserNotificationDidActivate:(id)activate;
- (void)serverUserNotificationDidDismiss:(id)dismiss;
@end

@implementation SFRemoteAutoFillSessionHelper

- (SFRemoteAutoFillSessionHelper)init
{
  v6.receiver = self;
  v6.super_class = SFRemoteAutoFillSessionHelper;
  v2 = [(SFRemoteAutoFillSessionHelper *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (SFRemoteAutoFillSessionHelper)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SFRemoteAutoFillSessionHelper;
  v3 = [(SFRemoteAutoFillSessionHelper *)&v7 init];
  if (v3)
  {
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
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
  v8[2] = __56__SFRemoteAutoFillSessionHelper_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(SFRemoteAutoFillSessionHelper *)v5 _activateWithCompletion:v6, v7];
    }
  }

  if (self->_invalidateCalled)
  {
    if (([(SFRemoteAutoFillSessionHelper *)completionCopy _activateWithCompletion:v19, &state]& 1) != 0)
    {
      goto LABEL_9;
    }

    v8 = state.opaque[0];
    goto LABEL_8;
  }

  if (!self->_agent)
  {
    v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    [(SFRemoteAutoFillSessionHelper *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __57__SFRemoteAutoFillSessionHelper__activateWithCompletion___block_invoke;
    v15 = &unk_1E788B6D8;
    v10 = completionCopy;
    v16 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&v12];
    [v11 autoFillHelperActivate:self completion:{v10, v12, v13, v14, v15}];

    os_activity_scope_leave(&state);
LABEL_8:
  }

LABEL_9:
}

uint64_t __57__SFRemoteAutoFillSessionHelper__activateWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFRemoteAutoFillSessionHelper_invalidate__block_invoke;
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
    if (!self->_invalidateDone && gLogCategory_SFRemoteAutoFillSessionHelper <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFRemoteAutoFillSessionHelper *)v3 _invalidate];
      }
    }

    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      [(NSXPCConnection *)xpcCnx invalidate];
      v7 = self->_xpcCnx;
      self->_xpcCnx = 0;
    }

    else
    {

      [(SFRemoteAutoFillSessionHelper *)self _invalidated];
    }
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFRemoteAutoFillSessionHelper <= 50)
    {
      if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFRemoteAutoFillSessionHelper *)v3 _invalidated];
      }
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    self->_invalidateDone = 1;
    v8 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    pairingResponseHandler = self->_pairingResponseHandler;
    self->_pairingResponseHandler = 0;

    promptForPINHandler = self->_promptForPINHandler;
    self->_promptForPINHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 10 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSessionHelper _invalidated];
    }
  }
}

- (void)serverDidPickUsername:(id)username password:(id)password error:(id)error
{
  usernameCopy = username;
  passwordCopy = password;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SFRemoteAutoFillSessionHelper_serverDidPickUsername_password_error___block_invoke;
  v15[3] = &unk_1E788B9C0;
  v15[4] = self;
  v16 = usernameCopy;
  v17 = passwordCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = passwordCopy;
  v14 = usernameCopy;
  dispatch_async(dispatchQueue, v15);
}

void __70__SFRemoteAutoFillSessionHelper_serverDidPickUsername_password_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __70__SFRemoteAutoFillSessionHelper_serverDidPickUsername_password_error___block_invoke_cold_1(a1, a2, a3);
      }
    }
  }

  else
  {
    v3 = a1;
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/serverDidPickUsername", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    [*(v3 + 32) _ensureXPCStarted];
    v5 = [*(*(v3 + 32) + 16) remoteObjectProxy];
    [v5 autoFillHelperDidPickUsername:*(v3 + 40) password:*(v3 + 48) error:*(v3 + 56)];

    os_activity_scope_leave(&v6);
  }
}

- (void)serverTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFRemoteAutoFillSessionHelper_serverTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

void __46__SFRemoteAutoFillSessionHelper_serverTryPIN___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __46__SFRemoteAutoFillSessionHelper_serverTryPIN___block_invoke_cold_1(a1, a2, a3);
      }
    }
  }

  else
  {
    v3 = a1;
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperTryPin", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    [*(v3 + 32) _ensureXPCStarted];
    v5 = [*(*(v3 + 32) + 16) remoteObjectProxy];
    [v5 autoFillHelperTryPIN:*(v3 + 40)];

    os_activity_scope_leave(&v6);
  }
}

- (void)serverUserNotificationDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SFRemoteAutoFillSessionHelper_serverUserNotificationDidActivate___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = activateCopy;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

void __67__SFRemoteAutoFillSessionHelper_serverUserNotificationDidActivate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __67__SFRemoteAutoFillSessionHelper_serverUserNotificationDidActivate___block_invoke_cold_1(a1, a2, a3);
      }
    }
  }

  else
  {
    v3 = a1;
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperUserNotificationDidActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    [*(v3 + 32) _ensureXPCStarted];
    v5 = [*(*(v3 + 32) + 16) remoteObjectProxy];
    [v5 autoFillHelperUserNotificationDidActivate:*(v3 + 40)];

    os_activity_scope_leave(&v6);
  }
}

- (void)serverUserNotificationDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SFRemoteAutoFillSessionHelper_serverUserNotificationDidDismiss___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = dismissCopy;
  v6 = dismissCopy;
  dispatch_async(dispatchQueue, v7);
}

void __66__SFRemoteAutoFillSessionHelper_serverUserNotificationDidDismiss___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __66__SFRemoteAutoFillSessionHelper_serverUserNotificationDidDismiss___block_invoke_cold_1(a1, a2, a3);
      }
    }
  }

  else
  {
    v3 = a1;
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperUserNotificationDidDismiss", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    [*(v3 + 32) _ensureXPCStarted];
    v5 = [*(*(v3 + 32) + 16) remoteObjectProxy];
    [v5 autoFillHelperUserNotificationDidDismiss:*(v3 + 40)];

    os_activity_scope_leave(&v6);
  }
}

- (void)autoFillDismissUserNotification
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFRemoteAutoFillSessionHelper *)v3 autoFillDismissUserNotification];
    }
  }

  dismissUserNotificationHandler = self->_dismissUserNotificationHandler;
  if (dismissUserNotificationHandler)
  {
    v7 = *(dismissUserNotificationHandler + 2);

    v7();
  }
}

- (void)autoFillPairingSucceeded:(BOOL)succeeded completion:(id)completion
{
  succeededCopy = succeeded;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper autoFillPairingSucceeded:succeededCopy completion:?];
  }

  pairingResponseHandler = self->_pairingResponseHandler;
  if (pairingResponseHandler)
  {
    pairingResponseHandler[2](pairingResponseHandler, succeededCopy, completionCopy);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)autoFillPromptForPIN:(unsigned int)n throttleSeconds:(int)seconds
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(SFRemoteAutoFillSessionHelper *)v5 autoFillPromptForPIN:v6 throttleSeconds:v7];
    }
  }

  promptForPINHandler = self->_promptForPINHandler;
  if (promptForPINHandler)
  {
    v9 = *(promptForPINHandler + 2);

    v9();
  }
}

- (void)clientDismissUserNotification
{
  if (self->_agent)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SFRemoteAutoFillSessionHelper_clientDismissUserNotification__block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  else if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFRemoteAutoFillSessionHelper *)self clientDismissUserNotification];
    }
  }
}

- (void)clientPairingSucceeded:(BOOL)succeeded completion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_agent)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SFRemoteAutoFillSessionHelper_clientPairingSucceeded_completion___block_invoke;
    block[3] = &unk_1E788B9E8;
    block[4] = self;
    succeededCopy = succeeded;
    v12 = completionCopy;
    dispatch_async(dispatchQueue, block);
  }

  else if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFRemoteAutoFillSessionHelper *)completionCopy clientPairingSucceeded:v7 completion:v8];
    }
  }
}

- (void)clientPromptForPIN:(unsigned int)n throttleSeconds:(int)seconds
{
  if (self->_agent)
  {
    dispatchQueue = self->_dispatchQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__SFRemoteAutoFillSessionHelper_clientPromptForPIN_throttleSeconds___block_invoke;
    v5[3] = &unk_1E788B260;
    v5[4] = self;
    nCopy = n;
    secondsCopy = seconds;
    dispatch_async(dispatchQueue, v5);
  }

  else if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60)
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFRemoteAutoFillSessionHelper *)self clientPromptForPIN:a2 throttleSeconds:*&n];
    }
  }
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
    v8[2] = __50__SFRemoteAutoFillSessionHelper__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__SFRemoteAutoFillSessionHelper__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v7];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE6C0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 10 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSessionHelper _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFRemoteAutoFillSessionHelper *)v3 _interrupted];
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_activateCalled)
  {
    v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9.opaque[0] = 0;
    v9.opaque[1] = 0;
    os_activity_scope_enter(v7, &v9);
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 50 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFRemoteAutoFillSessionHelper, "[SFRemoteAutoFillSessionHelper _interrupted]", 50, "Restarting after interruption\n");
    }

    [(SFRemoteAutoFillSessionHelper *)self _ensureXPCStarted];
    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy autoFillHelperActivate:self completion:&__block_literal_global_7];

    os_activity_scope_leave(&v9);
  }
}

void __45__SFRemoteAutoFillSessionHelper__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __45__SFRemoteAutoFillSessionHelper__interrupted__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (uint64_t)_activateWithCompletion:(__CFString *)a3 .cold.2(uint64_t a1, void *a2, __CFString **a3, uint64_t *a4)
{
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFRemoteAutoFillSessionHelper, "[SFRemoteAutoFillSessionHelper _activateWithCompletion:]", 60, "### Activate failed: %#m\n", 4294960572);
  }

  if (!a1)
  {
    return 1;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A768];
  *a2 = *MEMORY[0x1E696A578];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v11 = @"?";
  *a4 = v10;
  if (v10)
  {
    v11 = v10;
  }

  *a3 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1];
  v13 = [v8 errorWithDomain:v9 code:-6724 userInfo:v12];
  (*(a1 + 16))(a1, v13);

  return 0;
}

- (uint64_t)autoFillPairingSucceeded:(char)a1 completion:.cold.1(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillSessionHelper, "[SFRemoteAutoFillSessionHelper autoFillPairingSucceeded:completion:]", 30, "PairingSucceeded: %s", v1);
}

uint64_t __45__SFRemoteAutoFillSessionHelper__interrupted__block_invoke_cold_1(__CFString *a1)
{
  v1 = @"no error";
  if (a1)
  {
    v1 = a1;
  }

  return LogPrintF(&gLogCategory_SFRemoteAutoFillSessionHelper, "[SFRemoteAutoFillSessionHelper _interrupted]_block_invoke", 30, "Restart completed: %@\n", v1);
}

@end