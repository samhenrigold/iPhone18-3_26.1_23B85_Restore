@interface SFShareAudioSessionClient
- (SFShareAudioSessionClient)init;
- (SFShareAudioSessionClient)initWithCoder:(id)coder;
- (void)_activate:(BOOL)_activate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
- (void)shareAudioProgressEvent:(int)event info:(id)info;
- (void)userConfirmed;
@end

@implementation SFShareAudioSessionClient

- (SFShareAudioSessionClient)init
{
  v7.receiver = self;
  v7.super_class = SFShareAudioSessionClient;
  v2 = [(SFShareAudioSessionClient *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (SFShareAudioSessionClient)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SFShareAudioSessionClient;
  v3 = [(SFShareAudioSessionClient *)&v8 init];
  if (v3)
  {
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFShareAudioSessionClient_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__37__SFShareAudioSessionClient_activate__block_invoke(void *result)
{
  v1 = *(result + 4);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 4) _activate:0];
  }

  return result;
}

- (void)_activate:(BOOL)_activate
{
  if (_activate)
  {
    if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      v5 = "Re-activate\n";
LABEL_11:
      [(SFShareAudioSessionClient *)v5 _activate:a2, _activate];
    }
  }

  else if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    v5 = "Activate\n";
    goto LABEL_11;
  }

  [(SFShareAudioSessionClient *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__SFShareAudioSessionClient__activate___block_invoke;
  v10[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
  _activateCopy = _activate;
  v7 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SFShareAudioSessionClient__activate___block_invoke_2;
  v8[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
  _activateCopy2 = _activate;
  [v7 shareAudioSessionActivate:self completion:v8];
}

void __39__SFShareAudioSessionClient__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == 1)
  {
    if (gLogCategory_SFShareAudioSessionClient <= 90)
    {
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v7 = v3, v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        v5 = "### Re-activate XPC error: %{error}\n";
LABEL_13:
        v9 = v3;
        __39__SFShareAudioSessionClient__activate___block_invoke_cold_1(v5, v3);
        v3 = v9;
      }
    }
  }

  else if (gLogCategory_SFShareAudioSessionClient <= 90)
  {
    if (gLogCategory_SFShareAudioSessionClient != -1 || (v8 = v3, v6 = _LogCategory_Initialize(), v3 = v8, v6))
    {
      v5 = "### Activate XPC error: %{error}\n";
      goto LABEL_13;
    }
  }
}

void __39__SFShareAudioSessionClient__activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if (*(a1 + 32))
    {
      if (gLogCategory_SFShareAudioSessionClient <= 90)
      {
        v8 = v3;
        if (gLogCategory_SFShareAudioSessionClient != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
        {
          __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_2(v5);
LABEL_20:
          v5 = v8;
        }
      }
    }

    else if (gLogCategory_SFShareAudioSessionClient <= 90)
    {
      v8 = v3;
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v7 = _LogCategory_Initialize(), v5 = v8, v7))
      {
        __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_1(v5);
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 32))
  {
    if (gLogCategory_SFShareAudioSessionClient <= 30)
    {
      v8 = 0;
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_4(v3, v5, v4);
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_SFShareAudioSessionClient <= 30)
  {
    v8 = 0;
    if (gLogCategory_SFShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_3(v3, v5, v4);
      goto LABEL_20;
    }
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v22[6] = v5;
    v22[7] = v4;
    v22[18] = v2;
    v22[19] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v9 initWithObjects:{v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    [v20 setClasses:v18 forSelector:sel_shareAudioProgressEvent_info_ argumentIndex:1 ofReply:0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v20];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__SFShareAudioSessionClient__ensureXPCStarted__block_invoke;
    v22[3] = &unk_1E788B198;
    v22[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__SFShareAudioSessionClient__ensureXPCStarted__block_invoke_2;
    v21[3] = &unk_1E788B198;
    v21[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v21];
    v19 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEF60];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v19];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioSessionClient _ensureXPCStarted];
    }
  }
}

uint64_t __46__SFShareAudioSessionClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  selfCopy = self;
  if (gLogCategory_SFShareAudioSessionClient <= 50)
  {
    if (gLogCategory_SFShareAudioSessionClient != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFShareAudioSessionClient *)self _interrupted];
    }
  }

  v4 = _Block_copy(selfCopy->_progressHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 30, 0);
  }

  if (selfCopy->_activateCalled)
  {

    [(SFShareAudioSessionClient *)selfCopy _activate:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFShareAudioSessionClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__39__SFShareAudioSessionClient_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v7 = result[4];
  if ((*(v7 + 9) & 1) == 0)
  {
    v10 = v3;
    v8 = result;
    *(v7 + 9) = 1;
    if (gLogCategory_SFShareAudioSessionClient <= 30)
    {
      if (gLogCategory_SFShareAudioSessionClient != -1 || (result = _LogCategory_Initialize(), result))
      {
        __39__SFShareAudioSessionClient_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    [*(v8[4] + 16) invalidate];
    v9 = v8[4];

    return [v9 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFShareAudioSessionClient <= 50)
    {
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFShareAudioSessionClient *)v3 _invalidated];
      }
    }

    if (!self->_xpcCnx)
    {
      v6 = _Block_copy(self->_progressHandler);
      v7 = v6;
      if (v6)
      {
        (*(v6 + 2))(v6, 20, 0);
      }

      progressHandler = self->_progressHandler;
      self->_progressHandler = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_SFShareAudioSessionClient <= 10 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
      {
        [SFShareAudioSessionClient _invalidated];
      }
    }
  }
}

- (void)userConfirmed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SFShareAudioSessionClient_userConfirmed__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __42__SFShareAudioSessionClient_userConfirmed__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = gLogCategory_SFShareAudioSessionClient;
  if (v4)
  {
    if (gLogCategory_SFShareAudioSessionClient <= 30)
    {
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __42__SFShareAudioSessionClient_userConfirmed__block_invoke_cold_1(v5, a2, a3);
      }
    }

    v6 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v6 shareAudioUserConfirmed];
  }

  else
  {
    __42__SFShareAudioSessionClient_userConfirmed__block_invoke_cold_2(gLogCategory_SFShareAudioSessionClient);
  }
}

- (void)shareAudioProgressEvent:(int)event info:(id)info
{
  v4 = *&event;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioSessionClient shareAudioProgressEvent:v4 info:infoCopy];
  }

  v6 = _Block_copy(self->_progressHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4, infoCopy);
  }
}

uint64_t __42__SFShareAudioSessionClient_userConfirmed__block_invoke_cold_2(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF(&gLogCategory_SFShareAudioSessionClient, "[SFShareAudioSessionClient userConfirmed]_block_invoke", 90, "### User confirmed without XPC cnx\n");
    }
  }

  return result;
}

- (uint64_t)shareAudioProgressEvent:(int)a1 info:(__CFString *)a2 .cold.1(int a1, __CFString *a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 10:
        v4 = "Activated";
        break;
      case 20:
        v4 = "Invalidated";
        break;
      case 30:
        v4 = "Interrupted";
        break;
      case 40:
        v4 = "Succeeded";
        break;
      case 50:
        v4 = "Failed";
        break;
      case 100:
        v4 = "Confirm";
        break;
      case 120:
        v4 = "ShowPairInstructions";
        break;
      case 200:
        v4 = "GuestiOSConnecting";
        break;
      case 210:
        v4 = "GuestiOSAuthenticated";
        break;
      case 220:
        v4 = "GuestiOSWaitingForAccept";
        break;
      case 300:
        v4 = "GuestHeadphonesConnecting";
        break;
      case 310:
        v4 = "GuestHeadphonesConnected";
        break;
      case 320:
        v4 = "GuestHeadphonesWaitForRoute";
        break;
      default:
        v4 = "?";
        break;
    }
  }

  else
  {
    v4 = "Invalid";
  }

  v5 = &stru_1F1D30528;
  if (a2)
  {
    v5 = a2;
  }

  return LogPrintF(&gLogCategory_SFShareAudioSessionClient, "[SFShareAudioSessionClient shareAudioProgressEvent:info:]", 30, "Progress: %s %##@\n", v4, v5, v2, v3);
}

@end