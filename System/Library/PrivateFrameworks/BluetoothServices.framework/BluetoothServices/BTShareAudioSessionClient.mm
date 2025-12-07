@interface BTShareAudioSessionClient
- (BTShareAudioSessionClient)init;
- (BTShareAudioSessionClient)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (void)_activate:(BOOL)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)activate;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)shareAudioProgressEvent:(int)event info:(id)info;
- (void)userConfirmed:(BOOL)confirmed;
@end

@implementation BTShareAudioSessionClient

- (BTShareAudioSessionClient)init
{
  v6.receiver = self;
  v6.super_class = BTShareAudioSessionClient;
  v2 = [(BTShareAudioSessionClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (BTShareAudioSessionClient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BTShareAudioSessionClient *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mode = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  mode = self->_mode;
  if (mode)
  {
    [coder encodeInteger:mode forKey:@"mode"];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BTShareAudioSessionClient_activate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__37__BTShareAudioSessionClient_activate__block_invoke(void *result)
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
    if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      v5 = "Re-activate";
LABEL_17:
      [(BTShareAudioSessionClient *)v5 _activate:a2, _activate];
    }
  }

  else if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    v5 = "Activate";
    goto LABEL_17;
  }

  _ensureXPCStarted = [(BTShareAudioSessionClient *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (gLogCategory_BTShareAudioSessionClient <= 90 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioSessionClient _activate:_ensureXPCStarted];
    }
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__BTShareAudioSessionClient__activate___block_invoke;
    v11[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
    _activateCopy = _activate;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__BTShareAudioSessionClient__activate___block_invoke_2;
    v9[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
    _activateCopy2 = _activate;
    [v8 shareAudioSessionActivate:self completion:v9];
  }
}

uint64_t __39__BTShareAudioSessionClient__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == 1)
  {
    if (gLogCategory_BTShareAudioSessionClient <= 90)
    {
      if (gLogCategory_BTShareAudioSessionClient != -1 || (v8 = v3, v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        v5 = "### Re-activate XPC error: %{error}";
LABEL_13:
        __39__BTShareAudioSessionClient__activate___block_invoke_cold_1(v5, v3);
      }
    }
  }

  else if (gLogCategory_BTShareAudioSessionClient <= 90)
  {
    if (gLogCategory_BTShareAudioSessionClient != -1 || (v9 = v3, v6 = _LogCategory_Initialize(), v3 = v9, v6))
    {
      v5 = "### Activate XPC error: %{error}";
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __39__BTShareAudioSessionClient__activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if (*(a1 + 32))
    {
      if (gLogCategory_BTShareAudioSessionClient <= 90)
      {
        v9 = v3;
        if (gLogCategory_BTShareAudioSessionClient != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
        {
          __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_2(v5);
        }
      }
    }

    else if (gLogCategory_BTShareAudioSessionClient <= 90)
    {
      v10 = v3;
      if (gLogCategory_BTShareAudioSessionClient != -1 || (v7 = _LogCategory_Initialize(), v5 = v10, v7))
      {
        __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_1(v5);
      }
    }
  }

  else if (*(a1 + 32))
  {
    if (gLogCategory_BTShareAudioSessionClient <= 30)
    {
      if (gLogCategory_BTShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_4(v3, v5, v4);
      }
    }
  }

  else if (gLogCategory_BTShareAudioSessionClient <= 30)
  {
    if (gLogCategory_BTShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      __39__BTShareAudioSessionClient__activate___block_invoke_2_cold_3(v3, v5, v4);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    v20 = v3;
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D8F88];
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v18 = objc_opt_class();
    v15 = [v7 initWithObjects:{v8, v9, v10, v11, v12, v13, v14, v18, objc_opt_class(), 0}];
    [v19 setClasses:v15 forSelector:sel_shareAudioProgressEvent_info_ argumentIndex:1 ofReply:0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v19];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__BTShareAudioSessionClient__ensureXPCStarted__block_invoke;
    v22[3] = &unk_278D11830;
    v22[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v22];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__BTShareAudioSessionClient__ensureXPCStarted__block_invoke_2;
    v21[3] = &unk_278D11830;
    v21[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v21];
    v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D9090];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v16];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioSessionClient _ensureXPCStarted];
    }
  }

  return 0;
}

uint64_t __46__BTShareAudioSessionClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
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
  if (gLogCategory_BTShareAudioSessionClient <= 50)
  {
    if (gLogCategory_BTShareAudioSessionClient != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioSessionClient *)self _interrupted];
    }
  }

  v4 = MEMORY[0x245CFACE0](selfCopy->_progressHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 30, 0);
  }

  if (selfCopy->_activateCalled)
  {

    [(BTShareAudioSessionClient *)selfCopy _activate:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BTShareAudioSessionClient_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__39__BTShareAudioSessionClient_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 9) & 1) == 0)
  {
    v5 = result;
    *(v4 + 9) = 1;
    if (gLogCategory_BTShareAudioSessionClient <= 30)
    {
      if (gLogCategory_BTShareAudioSessionClient != -1 || (result = _LogCategory_Initialize(), result))
      {
        __39__BTShareAudioSessionClient_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];
    if (v6[2])
    {
      [v6[2] invalidate];
      v6 = v5[4];
    }

    return [v6 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_BTShareAudioSessionClient <= 50)
    {
      if (gLogCategory_BTShareAudioSessionClient != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(BTShareAudioSessionClient *)v3 _invalidated];
      }
    }

    if (!self->_xpcCnx)
    {
      v6 = MEMORY[0x245CFACE0](self->_progressHandler);
      v7 = v6;
      if (v6)
      {
        (*(v6 + 16))(v6, 20, 0);
      }

      progressHandler = self->_progressHandler;
      self->_progressHandler = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_BTShareAudioSessionClient <= 10 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
      {
        [BTShareAudioSessionClient _invalidated];
      }
    }
  }
}

- (void)userConfirmed:(BOOL)confirmed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__BTShareAudioSessionClient_userConfirmed___block_invoke;
  v4[3] = &unk_278D11AF8;
  v4[4] = self;
  confirmedCopy = confirmed;
  dispatch_async(dispatchQueue, v4);
}

void __43__BTShareAudioSessionClient_userConfirmed___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      __43__BTShareAudioSessionClient_userConfirmed___block_invoke_cold_1(a1);
    }

    v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v2 shareAudioUserConfirmed:*(a1 + 40)];
  }

  else
  {
    __43__BTShareAudioSessionClient_userConfirmed___block_invoke_cold_2(gLogCategory_BTShareAudioSessionClient);
  }
}

- (void)shareAudioProgressEvent:(int)event info:(id)info
{
  v4 = *&event;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_BTShareAudioSessionClient <= 30 && (gLogCategory_BTShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioSessionClient shareAudioProgressEvent:v4 info:infoCopy];
  }

  v6 = MEMORY[0x245CFACE0](self->_progressHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v4, infoCopy);
  }
}

uint64_t __43__BTShareAudioSessionClient_userConfirmed___block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_BTShareAudioSessionClient, "[BTShareAudioSessionClient userConfirmed:]_block_invoke", 30, "User confirmed: permanent %s", v1);
}

uint64_t __43__BTShareAudioSessionClient_userConfirmed___block_invoke_cold_2(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF(&gLogCategory_BTShareAudioSessionClient, "[BTShareAudioSessionClient userConfirmed:]_block_invoke", 90, "### User confirmed without XPC cnx");
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

  v5 = &stru_2853D12E8;
  if (a2)
  {
    v5 = a2;
  }

  return LogPrintF(&gLogCategory_BTShareAudioSessionClient, "[BTShareAudioSessionClient shareAudioProgressEvent:info:]", 30, "Progress: %s %##@", v4, v5, v2, v3);
}

@end