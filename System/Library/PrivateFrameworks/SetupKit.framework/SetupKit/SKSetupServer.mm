@interface SKSetupServer
- (BOOL)_bleAdvertiserShouldRun;
- (SKSetupServer)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_bleAdvertiserEnsureStarted;
- (void)_bleAdvertiserEnsureStopped;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_handleAcceptBLEConnection:(id)connection;
- (void)_handleAcceptCommon:(id)common;
- (void)_handleAcceptNANData:(id)data endpoint:(id)endpoint;
- (void)_invalidate;
- (void)_invalidated;
- (void)_nanPublisherEnsureStarted;
- (void)_nanPublisherEnsureStopped;
- (void)_prepareSteps;
- (void)_prepareStepsOSRecovery;
- (void)_update;
- (void)_wifiKeepAliveEnsureStarted;
- (void)_wifiKeepAliveEnsureStopped;
- (void)activateWithCompletion:(id)completion;
- (void)reset;
@end

@implementation SKSetupServer

- (void)_handleAcceptCommon:(id)common
{
  commonCopy = common;
  objc_storeStrong(&self->super._skCnx, common);
  [commonCopy setConditionalPersistent:{-[SKSetupBase conditionalPersistent](self, "conditionalPersistent")}];
  [commonCopy setDispatchQueue:self->super._dispatchQueue];
  [commonCopy setPassword:self->super._password];
  [commonCopy setPersistentPairing:{-[SKSetupBase persistentPairing](self, "persistentPairing")}];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke;
  v34[3] = &unk_279BB8370;
  v34[4] = self;
  [commonCopy setAuthCompletionHandler:v34];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_2;
  v33[3] = &unk_279BB83C0;
  v33[4] = self;
  [commonCopy setAuthPromptHandler:v33];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_3;
  v32[3] = &unk_279BB83E8;
  v32[4] = self;
  [commonCopy setAuthShowPasswordHandler:v32];
  [commonCopy setAuthHidePasswordHandler:self->_authHidePasswordHandler];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_4;
  v29[3] = &unk_279BB8838;
  v6 = commonCopy;
  v30 = v6;
  selfCopy = self;
  [v6 setErrorHandler:v29];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_5;
  v26[3] = &unk_279BB8648;
  v7 = v6;
  v27 = v7;
  selfCopy2 = self;
  [v7 setInvalidationHandler:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_6;
  v25[3] = &unk_279BB8410;
  v25[4] = self;
  [v7 setPairSetupConfigHandler:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_7;
  v22[3] = &unk_279BB8438;
  v8 = v7;
  v23 = v8;
  selfCopy3 = self;
  [v8 setReceivedEventHandler:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_8;
  v19[3] = &unk_279BB8810;
  v9 = v8;
  v20 = v9;
  selfCopy4 = self;
  [v9 setReceivedRequestHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_9;
  v16[3] = &unk_279BB8648;
  v10 = v9;
  v17 = v10;
  selfCopy5 = self;
  [v10 setStateChangedHandler:v16];
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->super._ucat;
    }

    LogPrintF(ucat, "[SKSetupServer _handleAcceptCommon:]", 30, "Connection activate");
  }

LABEL_5:
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_10;
  v13[3] = &unk_279BB8838;
  v14 = v10;
  selfCopy6 = self;
  v12 = v10;
  [v12 activateWithCompletion:v13];
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[SKEvent alloc] initWithEventType:140 error:v6];
  [*(a1 + 32) _reportEvent:v3];
  v4 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 288));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[SKAuthenticationRequestEvent alloc] initWithPasswordType:a2 pairingFlags:a3 throttleSeconds:a4];
  [*(a1 + 32) _reportEvent:v5];
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [[SKAuthenticationPresentEvent alloc] initWithPasswordType:a2 password:v8];
  [*(a1 + 32) _reportEvent:v5];
  v6 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 304));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 120))
  {
    v9 = v3;
    v5 = *(v4 + 144);
    if (*v5 <= 90)
    {
      if (*v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v5 = *(*(a1 + 40) + 144);
      }

      v6 = CUPrintNSError();
      LogPrintF(v5, "[SKSetupServer _handleAcceptCommon:]_block_invoke_4", 90, "### Connection error: %@", v6);
    }

LABEL_6:
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 40);
    v8 = *(v7 + 120);
    *(v7 + 120) = 0;

    [*(a1 + 40) _update];
    v3 = v9;
  }
}

void *__37__SKSetupServer__handleAcceptCommon___block_invoke_5(void *result)
{
  v2 = result[4];
  v3 = result[5];
  if (v2 != *(v3 + 120))
  {
    return result;
  }

  v4 = result;
  v5 = *(v3 + 144);
  if (*v5 <= 30)
  {
    if (*v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = v4[5];
      if (!v6)
      {
        goto LABEL_6;
      }

      v5 = *(v3 + 144);
      v2 = v4[4];
    }

    LogPrintF(v5, "[SKSetupServer _handleAcceptCommon:]_block_invoke_5", 30, "Connection ended: %@", v2);
    v3 = v4[5];
  }

LABEL_6:
  v7 = *(v3 + 120);
  *(v3 + 120) = 0;

  v8 = v4[5];
  v9 = *(v8 + 240);
  *(v8 + 240) = 0;

  [v4[5] _connectionEnded:v4[4]];
  [v4[5] _reportEventType:41];
  v10 = v4[5];

  return [v10 _update];
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[18];
  v8 = v3;
  if (*v5 <= 30)
  {
    if (*v5 != -1)
    {
LABEL_3:
      v6 = CUPrintNSObjectOneLine();
      LogPrintF(v5, "[SKSetupServer _handleAcceptCommon:]_block_invoke_6", 30, "PairSetup config: %@", v6);

      v3 = v8;
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    v7 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v7)
    {
      v5 = v4[18];
      goto LABEL_3;
    }

    v3 = v8;
  }

LABEL_6:
  [v4 _pairSetupConfig:v3];
}

void *__37__SKSetupServer__handleAcceptCommon___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[15])
  {
    return [result _receivedEventID:a2 event:a3 options:a4];
  }

  return result;
}

void *__37__SKSetupServer__handleAcceptCommon___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[15])
  {
    return [result _receivedRequestID:a2 request:a3 options:a4 responseHandler:a5];
  }

  return result;
}

void *__37__SKSetupServer__handleAcceptCommon___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[15])
  {
    return [result _update];
  }

  return result;
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v16 = v3;
  if (*(a1 + 32) != v4[15])
  {
    v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated before activate completed");
    v6 = *(a1 + 40);
    v7 = v6[18];
    if (*v7 <= 90)
    {
      if (*v7 == -1)
      {
        v12 = _LogCategory_Initialize();
        v6 = *(a1 + 40);
        if (!v12)
        {
          goto LABEL_13;
        }

        v7 = v6[18];
      }

      v8 = CUPrintNSError();
      LogPrintF(v7, "[SKSetupServer _handleAcceptCommon:]_block_invoke_10", 90, "### Connection activate failed: %@", v8);

      v6 = *(a1 + 40);
    }

LABEL_13:
    [v6 _update];

    goto LABEL_19;
  }

  v9 = v4[18];
  v10 = *v9;
  if (!v3)
  {
    if (v10 <= 30)
    {
      if (v10 == -1)
      {
        v15 = _LogCategory_Initialize();
        v4 = *(a1 + 40);
        if (!v15)
        {
          goto LABEL_17;
        }

        v9 = v4[18];
      }

      LogPrintF(v9, "[SKSetupServer _handleAcceptCommon:]_block_invoke_10", 30, "Connection activated");
      v4 = *(a1 + 40);
    }

LABEL_17:
    [v4 _reportEventType:40];
    goto LABEL_18;
  }

  if (v10 <= 90)
  {
    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v9 = *(*(a1 + 40) + 144);
    }

    v11 = CUPrintNSError();
    LogPrintF(v9, "[SKSetupServer _handleAcceptCommon:]_block_invoke_10", 90, "### Connection activate failed: %@", v11);
  }

LABEL_15:
  [*(a1 + 32) invalidate];
  v13 = *(a1 + 40);
  v14 = *(v13 + 120);
  *(v13 + 120) = 0;

LABEL_18:
  [*(a1 + 40) _update];
LABEL_19:
}

- (void)_handleAcceptNANData:(id)data endpoint:(id)endpoint
{
  dataCopy = data;
  endpointCopy = endpoint;
  v8 = self->super._skCnx;
  if (!v8)
  {
    v9 = objc_alloc_init(SKConnection);
    skCnx = self->super._skCnx;
    self->super._skCnx = v9;

    identifier = [endpointCopy identifier];
    nanEndpointID = self->_nanEndpointID;
    self->_nanEndpointID = identifier;

    v12 = self->_nanPublisher;
    if (v12)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke;
      v20[3] = &unk_279BB79D8;
      v21 = v9;
      selfCopy = self;
      v23 = v12;
      v24 = endpointCopy;
      [(SKConnection *)v21 setSendDataHandler:v20];
    }

    [(SKSetupServer *)self _handleAcceptCommon:v9];
    goto LABEL_10;
  }

  v9 = v8;
  identifier2 = [endpointCopy identifier];
  v11 = self->_nanEndpointID;
  v12 = identifier2;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_10;
  }

  if ((v12 != 0) == (v13 == 0))
  {

    goto LABEL_13;
  }

  v15 = [(CUNANPublisher *)v12 isEqual:v13];

  if (v15)
  {
LABEL_10:
    [(SKConnection *)v9 receivedData:dataCopy];
    goto LABEL_11;
  }

LABEL_13:
  ucat = self->super._ucat;
  if (ucat->var0 <= 90)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->super._ucat;
    }

    LogPrintF(ucat, "[SKSetupServer _handleAcceptNANData:endpoint:]", 90, "### Reject NAN data when already in use: %@ vs %@", v12, self->_nanEndpointID);
  }

LABEL_11:
}

void __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  if (a1[4] == *(v4 + 120))
  {
    v5 = *(v4 + 248);
    if (a1[6] == v5)
    {
      v6 = a1[7];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke_2;
      v7[3] = &unk_279BB8370;
      v7[4] = v4;
      [v5 sendMessageData:v3 endpoint:v6 completionHandler:v7];
    }
  }
}

uint64_t __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 144);
    if (*v5 <= 90)
    {
      v8 = v3;
      if (*v5 != -1)
      {
LABEL_4:
        v6 = CUPrintNSError();
        LogPrintF(v5, "[SKSetupServer _handleAcceptNANData:endpoint:]_block_invoke_2", 90, "### Send NAN data failed: %@", v6);

        v4 = v8;
        goto LABEL_6;
      }

      v3 = _LogCategory_Initialize();
      v4 = v8;
      if (v3)
      {
        v5 = *(*(a1 + 32) + 144);
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_handleAcceptBLEConnection:(id)connection
{
  connectionCopy = connection;
  v4 = self->super._skCnx;
  if (!v4)
  {
    v5 = objc_alloc_init(SKConnection);
    [(SKConnection *)v5 setBleConnection:connectionCopy];
    [(SKSetupServer *)self _handleAcceptCommon:v5];
    goto LABEL_8;
  }

  v5 = v4;
  ucat = self->super._ucat;
  if (ucat->var0 <= 90)
  {
    v7 = connectionCopy;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->super._ucat;
      v7 = connectionCopy;
    }

    LogPrintF(ucat, "[SKSetupServer _handleAcceptBLEConnection:]", 90, "### Reject BLE connection when already connected: %@ vs %@", v7, v5);
  }

LABEL_7:
  [connectionCopy invalidate];
LABEL_8:
}

- (void)_wifiKeepAliveEnsureStopped
{
  if (!self->_wifiKeepAliveInterface)
  {
    goto LABEL_6;
  }

  ucat = self->super._ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_6;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->super._ucat;
LABEL_4:
    LogPrintF(ucat, "[SKSetupServer _wifiKeepAliveEnsureStopped]", 30, "WiFiKeepAlive stop");
  }

LABEL_6:
  [(CWFInterface *)self->_wifiKeepAliveInterface invalidate];
  wifiKeepAliveInterface = self->_wifiKeepAliveInterface;
  self->_wifiKeepAliveInterface = 0;

  wifiKeepAliveActivity = self->_wifiKeepAliveActivity;
  self->_wifiKeepAliveActivity = 0;

  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    CFRelease(wifiManager);
    self->_wifiManager = 0;
  }
}

- (void)_wifiKeepAliveEnsureStarted
{
  if (!self->_wifiManager)
  {
    self->_wifiManager = WiFiManagerClientCreate();
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupServer _wifiKeepAliveEnsureStarted]", 30, "WiFiKeepAlive start legacy");
    }
  }
}

- (void)_nanPublisherEnsureStopped
{
  if (self->_nanPublisher)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[SKSetupServer _nanPublisherEnsureStopped]", 30, "NAN publisher stop");
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CUNANPublisher *)self->_nanPublisher invalidate];
  nanPublisher = self->_nanPublisher;
  self->_nanPublisher = 0;
}

- (void)_nanPublisherEnsureStarted
{
  if (!self->_nanPublisher)
  {
    v3 = objc_alloc_init(MEMORY[0x277D028A0]);
    nanPublisher = self->_nanPublisher;
    self->_nanPublisher = v3;

    [(CUNANPublisher *)v3 setControlFlags:1];
    [(CUNANPublisher *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CUNANPublisher *)v3 setServiceType:@"com.apple.setup"];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__SKSetupServer__nanPublisherEnsureStarted__block_invoke;
    v7[3] = &unk_279BB79B0;
    v7[4] = v3;
    v7[5] = self;
    [(CUNANPublisher *)v3 setReceiveHandler:v7];
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupServer _nanPublisherEnsureStarted]", 30, "NAN publisher start");
    }

LABEL_6:
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SKSetupServer__nanPublisherEnsureStarted__block_invoke_2;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CUNANPublisher *)v3 activateWithCompletion:v6];
  }
}

void *__43__SKSetupServer__nanPublisherEnsureStarted__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[31])
  {
    return [result _handleAcceptNANData:a2 endpoint:a3];
  }

  return result;
}

uint64_t __43__SKSetupServer__nanPublisherEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 248))
  {
    v5 = *(v4 + 144);
    v6 = *v5;
    if (v3)
    {
      v13 = v3;
      if (v6 <= 90)
      {
        if (v6 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v5 = *(*(a1 + 40) + 144);
        }

        v7 = CUPrintNSError();
        LogPrintF(v5, "[SKSetupServer _nanPublisherEnsureStarted]_block_invoke_2", 90, "### NAN publisher failed: %@", v7);
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 248);
      *(v8 + 248) = 0;

      v10 = *(a1 + 40);
      v11 = [[SKEvent alloc] initWithEventType:42 error:v13];
      [v10 _reportEvent:v11];

      goto LABEL_11;
    }

    if (v6 > 30)
    {
      goto LABEL_11;
    }

    if (v6 != -1)
    {
LABEL_8:
      v3 = LogPrintF(v5, "[SKSetupServer _nanPublisherEnsureStarted]_block_invoke_2", 30, "NAN publisher started");
      goto LABEL_11;
    }

    v3 = _LogCategory_Initialize();
    if (v3)
    {
      v5 = *(*(a1 + 40) + 144);
      goto LABEL_8;
    }
  }

LABEL_11:

  return MEMORY[0x2821F9730](v3);
}

- (void)_bleServerEnsureStopped
{
  if (self->_bleServer)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[SKSetupServer _bleServerEnsureStopped]", 30, "BLE server stop");
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBServer *)self->_bleServer invalidate];
  bleServer = self->_bleServer;
  self->_bleServer = 0;
}

- (void)_bleServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBE090]);
    bleServer = self->_bleServer;
    self->_bleServer = v3;

    [(CBServer *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBServer *)v3 setBleListenPSM:130];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SKSetupServer__bleServerEnsureStarted__block_invoke;
    v7[3] = &unk_279BB8180;
    v7[4] = v3;
    v7[5] = self;
    [(CBServer *)v3 setAcceptHandler:v7];
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupServer _bleServerEnsureStarted]", 30, "BLE server start");
    }

LABEL_6:
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SKSetupServer__bleServerEnsureStarted__block_invoke_2;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CBServer *)v3 activateWithCompletion:v6];
  }
}

void __40__SKSetupServer__bleServerEnsureStarted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (*(a1 + 32) != v6[28])
  {
    v7 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Server invalidated");
    v5[2](v5, v7);

    goto LABEL_9;
  }

  v8 = v6[18];
  v9 = v11;
  if (*v8 <= 30)
  {
    if (*v8 == -1)
    {
      v10 = _LogCategory_Initialize();
      v6 = *(a1 + 40);
      if (!v10)
      {
        v9 = v11;
        goto LABEL_8;
      }

      v8 = v6[18];
      v9 = v11;
    }

    LogPrintF(v8, "[SKSetupServer _bleServerEnsureStarted]_block_invoke", 30, "BLE server incoming connection: %@", v9);
    v9 = v11;
    v6 = *(a1 + 40);
  }

LABEL_8:
  [v6 _handleAcceptBLEConnection:v9];
  [*(a1 + 40) _update];
  v5[2](v5, 0);
LABEL_9:
}

uint64_t __40__SKSetupServer__bleServerEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4 == v5[28])
  {
    v6 = v5[18];
    v7 = *v6;
    v15 = v3;
    if (v3)
    {
      if (v7 <= 90)
      {
        if (v7 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v6 = *(*(a1 + 40) + 144);
        }

        v8 = CUPrintNSError();
        LogPrintF(v6, "[SKSetupServer _bleServerEnsureStarted]_block_invoke_2", 90, "### BLE server failed: %@", v8);
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v9 = *(a1 + 40);
      v10 = *(v9 + 224);
      *(v9 + 224) = 0;

      v11 = *(a1 + 40);
      v12 = [[SKEvent alloc] initWithEventType:42 error:v15];
      [v11 _reportEvent:v12];

LABEL_13:
      v3 = v15;
      goto LABEL_14;
    }

    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        v13 = _LogCategory_Initialize();
        v5 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_12;
        }

        v6 = v5[18];
        v4 = *(a1 + 32);
      }

      LogPrintF(v6, "-[SKSetupServer _bleServerEnsureStarted]_block_invoke_2", 30, "BLE server started: PSM 0x%X", [v4 bleListeningPSM]);
      v5 = *(a1 + 40);
    }

LABEL_12:
    v4 = [v5 _update];
    goto LABEL_13;
  }

LABEL_14:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)_bleAdvertiserEnsureStopped
{
  bleAdvertiser = self->_bleAdvertiser;
  if (bleAdvertiser)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        v5 = _LogCategory_Initialize();
        bleAdvertiser = self->_bleAdvertiser;
        if (!v5)
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupServer _bleAdvertiserEnsureStopped]", 30, "BLE advertiser stop: %@", bleAdvertiser);
      bleAdvertiser = self->_bleAdvertiser;
    }
  }

LABEL_6:
  [(CBAdvertiser *)bleAdvertiser invalidate];
  v6 = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;

  self->_bleAdvertisePSM = 0;
}

- (void)_bleAdvertiserEnsureStarted
{
  bleListeningPSM = [(CBServer *)self->_bleServer bleListeningPSM];
  if (bleListeningPSM)
  {
    v4 = bleListeningPSM;
    bleAdvertisePSM = self->_bleAdvertisePSM;
    if (bleListeningPSM == bleAdvertisePSM || (v6 = self->_bleAdvertiser) == 0)
    {
LABEL_9:
      self->_bleAdvertisePSM = v4;
      v10 = self->_bleAdvertiser;
      if (v10)
      {
LABEL_31:

        return;
      }

      v11 = objc_alloc_init(MEMORY[0x277CBDFF0]);
      bleAdvertiser = self->_bleAdvertiser;
      self->_bleAdvertiser = v11;

      [(CBAdvertiser *)v11 setDispatchQueue:self->super._dispatchQueue];
      [(CBAdvertiser *)v11 setNearbyActionExtraData:self->_nearbyActionExtraData];
      if (self->_skipWifi)
      {
        v13 = 0;
      }

      else
      {
        v13 = 64;
      }

      [(CBAdvertiser *)v11 setNearbyActionFlags:v13];
      setupType = self->super._setupType;
      switch(setupType)
      {
        case 1u:
          v15 = v11;
          v16 = 37;
          goto LABEL_19;
        case 5u:
          v15 = v11;
          v16 = 85;
          goto LABEL_19;
        case 2u:
          v15 = v11;
          v16 = 39;
LABEL_19:
          [(CBAdvertiser *)v15 setNearbyActionType:v16];
          goto LABEL_20;
      }

      ucat = self->super._ucat;
      if (ucat->var0 <= 90)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          ucat = self->super._ucat;
          setupType = self->super._setupType;
        }

        if (setupType > 5)
        {
          v19 = "?";
        }

        else
        {
          v19 = off_279BB8458[setupType];
        }

        LogPrintF(ucat, "[SKSetupServer _bleAdvertiserEnsureStarted]", 90, "### BLE advertiser unsupported setup type: %d (%s)", setupType, v19);
      }

LABEL_20:
      if (self->super._authTagOverride)
      {
        [(CBAdvertiser *)v11 setNearbyActionFlags:[(CBAdvertiser *)v11 nearbyActionFlags]| 0x80];
        [(CBAdvertiser *)v11 setNearbyActionAuthTagData:self->super._authTagOverride];
      }

      v17 = self->super._ucat;
      if (v17->var0 > 30)
      {
        goto LABEL_30;
      }

      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v17 = self->super._ucat;
      }

      LogPrintF(v17, "[SKSetupServer _bleAdvertiserEnsureStarted]", 30, "BLE advertiser start: %@", v11);
LABEL_30:
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __44__SKSetupServer__bleAdvertiserEnsureStarted__block_invoke;
      v20[3] = &unk_279BB8838;
      v10 = v11;
      v21 = v10;
      selfCopy = self;
      [(CBAdvertiser *)v10 activateWithCompletion:v20];

      goto LABEL_31;
    }

    v7 = self->super._ucat;
    if (v7->var0 <= 30)
    {
      if (v7->var0 == -1)
      {
        v8 = _LogCategory_Initialize();
        v6 = self->_bleAdvertiser;
        if (!v8)
        {
          goto LABEL_8;
        }

        v7 = self->super._ucat;
        bleAdvertisePSM = self->_bleAdvertisePSM;
      }

      LogPrintF(v7, "[SKSetupServer _bleAdvertiserEnsureStarted]", 30, "BLE advertiser stop for PSM change: PSM 0x%X -> 0x%X, %@", bleAdvertisePSM, v4, v6);
      v6 = self->_bleAdvertiser;
    }

LABEL_8:
    [(CBAdvertiser *)v6 invalidate];
    v9 = self->_bleAdvertiser;
    self->_bleAdvertiser = 0;

    goto LABEL_9;
  }
}

uint64_t __44__SKSetupServer__bleAdvertiserEnsureStarted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == v4[27])
  {
    v6 = v4[18];
    v7 = *v6;
    v15 = v3;
    if (v3)
    {
      if (v7 <= 90)
      {
        if (v7 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v6 = *(*(a1 + 40) + 144);
        }

        v8 = CUPrintNSError();
        LogPrintF(v6, "[SKSetupServer _bleAdvertiserEnsureStarted]_block_invoke", 90, "### BLE advertiser failed: %@", v8);
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v9 = *(a1 + 40);
      v10 = *(v9 + 216);
      *(v9 + 216) = 0;

      v11 = *(a1 + 40);
      v12 = [[SKEvent alloc] initWithEventType:42 error:v15];
      [v11 _reportEvent:v12];

LABEL_13:
      v3 = v15;
      goto LABEL_14;
    }

    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        v13 = _LogCategory_Initialize();
        v4 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_12;
        }

        v6 = v4[18];
        v5 = *(a1 + 32);
      }

      LogPrintF(v6, "[SKSetupServer _bleAdvertiserEnsureStarted]_block_invoke", 30, "BLE advertiser started: %@", v5);
      v4 = *(a1 + 40);
    }

LABEL_12:
    v4 = [v4 _update];
    goto LABEL_13;
  }

LABEL_14:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)_bleAdvertiserShouldRun
{
  if (self->_completed)
  {
    LOBYTE(bleListeningPSM) = 0;
  }

  else if (self->super._controlFlags)
  {
    LOBYTE(bleListeningPSM) = 0;
  }

  else
  {
    bleListeningPSM = [(CBServer *)self->_bleServer bleListeningPSM];
    if (bleListeningPSM)
    {
      LOBYTE(bleListeningPSM) = self->super._skCnx == 0;
    }
  }

  return bleListeningPSM;
}

- (void)_prepareStepsOSRecovery
{
  [(SKSetupServer *)self _wifiKeepAliveEnsureStarted];
  v3 = objc_alloc_init(SKStepBasicConfigServer);
  [(SKStepBasicConfigServer *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepBasicConfigServer *)v3 setSkMessaging:self];
  serverConfig = [(SKSetupServer *)self serverConfig];
  [(SKStepBasicConfigServer *)v3 setServerConfig:serverConfig];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SKSetupServer__prepareStepsOSRecovery__block_invoke;
  v7[3] = &unk_279BB8370;
  v7[4] = self;
  [(SKStepBasicConfigServer *)v3 setSkCompletionHandler:v7];
  [(SKSetupBase *)self _addStep:v3];
  [(SKStepBasicConfigServer *)v3 activate];

  if (!self->_skipWifi)
  {
    v5 = objc_alloc_init(SKStepWiFiSetupServerLegacy);
    [(SKStepWiFiSetupServerLegacy *)v5 setDispatchQueue:self->super._dispatchQueue];
    [(SKStepWiFiSetupServerLegacy *)v5 setSkMessaging:self];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SKSetupServer__prepareStepsOSRecovery__block_invoke_2;
    v6[3] = &unk_279BB8370;
    v6[4] = self;
    [(SKStepWiFiSetupServerLegacy *)v5 setSkCompletionHandler:v6];
    [(SKSetupBase *)self _addStep:v5];
    [(SKStepWiFiSetupServerLegacy *)v5 activate];
  }
}

uint64_t __40__SKSetupServer__prepareStepsOSRecovery__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(result + 32);
    if (*(v2 + 280))
    {
      *(v2 + 232) = 1;
    }
  }

  return result;
}

void __40__SKSetupServer__prepareStepsOSRecovery__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[SKEvent alloc] initWithEventType:20 error:v4];

  [v3 _reportEvent:v5];
  if (!v4)
  {
    *(*(a1 + 32) + 232) = 1;
  }
}

- (void)_prepareSteps
{
  [(SKSetupBase *)self _invalidateSteps];
  if ((self->super._setupType | 4) == 5)
  {

    [(SKSetupServer *)self _prepareStepsOSRecovery];
  }
}

- (void)_update
{
  if (!self->super._invalidateCalled)
  {
    if (self->super._controlFlags)
    {
      [(SKSetupServer *)self _bleServerEnsureStopped];
    }

    else
    {
      [(SKSetupServer *)self _bleServerEnsureStarted];
    }

    if ([(SKSetupServer *)self _bleAdvertiserShouldRun])
    {
      [(SKSetupServer *)self _bleAdvertiserEnsureStarted];
    }

    else
    {
      [(SKSetupServer *)self _bleAdvertiserEnsureStopped];
    }

    if ((self->super._controlFlags & 2) != 0)
    {

      [(SKSetupServer *)self _nanPublisherEnsureStarted];
    }

    else
    {

      [(SKSetupServer *)self _nanPublisherEnsureStopped];
    }
  }
}

- (void)reset
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__SKSetupServer_reset__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __22__SKSetupServer_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[SKSetupServer reset]_block_invoke", 30, "Reset");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = *(v2 + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v2 + 232) = 0;
  v5 = *(a1 + 32);

  return [v5 _update];
}

- (void)_invalidated
{
  if (self->super._invalidateCalled)
  {
    v14 = v2;
    v15 = v3;
    authCompletionHandler = self->_authCompletionHandler;
    self->_authCompletionHandler = 0;

    authShowPasswordHandler = self->_authShowPasswordHandler;
    self->_authShowPasswordHandler = 0;

    authHidePasswordHandler = self->_authHidePasswordHandler;
    self->_authHidePasswordHandler = 0;

    v8 = MEMORY[0x26676A4C0](self->_overallCompletionHandler);
    overallCompletionHandler = self->_overallCompletionHandler;
    self->_overallCompletionHandler = 0;

    if (v8)
    {
      v10 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated");
      (v8)[2](v8, v10);
    }

    v11 = MEMORY[0x26676A4C0](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v11)
    {
      v11[2](v11);
    }

    v13.receiver = self;
    v13.super_class = SKSetupServer;
    [(SKSetupBase *)&v13 _invalidated];
  }
}

- (void)_invalidate
{
  [(SKSetupServer *)self _bleAdvertiserEnsureStopped];
  [(SKSetupServer *)self _bleServerEnsureStopped];
  [(SKSetupServer *)self _nanPublisherEnsureStopped];
  [(SKSetupServer *)self _wifiKeepAliveEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupServer;
  [(SKSetupBase *)&v3 _invalidate];
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __41__SKSetupServer__activateWithCompletion___block_invoke;
  v14 = &unk_279BB8500;
  v17 = &v18;
  selfCopy = self;
  v5 = completionCopy;
  v16 = v5;
  v6 = MEMORY[0x26676A4C0](&v11);
  if (self->super._activateCalled)
  {
    NSErrorF_safe(*MEMORY[0x277CCA590], 4294960575, "Activate already called");
    v9 = LABEL_11:;
    v10 = v19[5];
    v19[5] = v9;

    goto LABEL_8;
  }

  if (self->super._invalidateCalled)
  {
    NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Activate after invalidate");
    goto LABEL_11;
  }

  self->super._activateCalled = 1;
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->super._ucat;
    }

    v8 = CUDescriptionWithLevel();
    LogPrintF(ucat, "[SKSetupServer _activateWithCompletion:]", 30, "Activate: %@", v8, v11, v12, v13, v14, selfCopy);
  }

LABEL_7:
  [(SKSetupServer *)self _prepareSteps];
  [(SKSetupServer *)self _update];
  (*(v5 + 2))(v5, 0);
LABEL_8:
  v6[2](v6);

  _Block_object_dispose(&v18, 8);
}

uint64_t __41__SKSetupServer__activateWithCompletion___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(a1[4] + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(a1[4] + 144);
    }

    v4 = CUPrintNSError();
    LogPrintF(v3, "[SKSetupServer _activateWithCompletion:]_block_invoke", 90, "### Activate failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SKSetupServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_279BB82D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (SKSetupServer)init
{
  v6.receiver = self;
  v6.super_class = SKSetupServer;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupServer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end