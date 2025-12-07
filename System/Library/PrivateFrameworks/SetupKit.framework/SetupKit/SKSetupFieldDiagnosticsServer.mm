@interface SKSetupFieldDiagnosticsServer
- (BOOL)_bleAdvertiserShouldRun;
- (SKSetupFieldDiagnosticsServer)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_bleAdvertiserEnsureStarted;
- (void)_bleAdvertiserEnsureStopped;
- (void)_bleServerAcceptConnecton:(id)connecton;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_invalidate;
- (void)_oobEnsureStarted;
- (void)_prepareSteps;
- (void)_run;
@end

@implementation SKSetupFieldDiagnosticsServer

- (void)_oobEnsureStarted
{
  if (!self->super._skCnx)
  {
    v4 = objc_alloc_init(SKConnection);
    [(SKConnection *)v4 setSendDataHandler:self->super._sendDataHandler];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v4 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_24];
  }
}

- (void)_bleServerAcceptConnecton:(id)connecton
{
  connectonCopy = connecton;
  v4 = self->super._skCnx;
  if (!v4)
  {
    v5 = objc_alloc_init(SKConnection);
    [(SKConnection *)v5 setBleConnection:connectonCopy];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v5 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_1141];
    goto LABEL_8;
  }

  v5 = v4;
  ucat = self->super._ucat;
  if (ucat->var0 <= 90)
  {
    v7 = connectonCopy;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->super._ucat;
      v7 = connectonCopy;
    }

    LogPrintF(ucat, "[SKSetupFieldDiagnosticsServer _bleServerAcceptConnecton:]", 90, "### Reject BLE connection when already connected: %@ vs %@", v7, v5);
  }

LABEL_7:
  [connectonCopy invalidate];
LABEL_8:
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
        LogPrintF(ucat, "[SKSetupFieldDiagnosticsServer _bleServerEnsureStopped]", 30, "BLE server stop");
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
    v7[2] = __56__SKSetupFieldDiagnosticsServer__bleServerEnsureStarted__block_invoke;
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

      LogPrintF(ucat, "[SKSetupFieldDiagnosticsServer _bleServerEnsureStarted]", 30, "BLE server start: %@", v3);
    }

LABEL_6:
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__SKSetupFieldDiagnosticsServer__bleServerEnsureStarted__block_invoke_2;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CBServer *)v3 activateWithCompletion:v6];
  }
}

void __56__SKSetupFieldDiagnosticsServer__bleServerEnsureStarted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (*(a1 + 32) != v6[27])
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

    LogPrintF(v8, "[SKSetupFieldDiagnosticsServer _bleServerEnsureStarted]_block_invoke", 30, "BLE server incoming connection: %@", v9);
    v9 = v11;
    v6 = *(a1 + 40);
  }

LABEL_8:
  [v6 _bleServerAcceptConnecton:v9];
  [*(a1 + 40) _run];
  v5[2](v5, 0);
LABEL_9:
}

uint64_t __56__SKSetupFieldDiagnosticsServer__bleServerEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == v4[27])
  {
    v6 = v4[18];
    v7 = *v6;
    v13 = v3;
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
        LogPrintF(v6, "[SKSetupFieldDiagnosticsServer _bleServerEnsureStarted]_block_invoke_2", 90, "### BLE server failed: %@", v8);
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v9 = *(a1 + 40);
      v10 = *(v9 + 216);
      *(v9 + 216) = 0;

LABEL_13:
      v3 = v13;
      goto LABEL_14;
    }

    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        v11 = _LogCategory_Initialize();
        v4 = *(a1 + 40);
        if (!v11)
        {
          goto LABEL_12;
        }

        v6 = v4[18];
        v5 = *(a1 + 32);
      }

      LogPrintF(v6, "[SKSetupFieldDiagnosticsServer _bleServerEnsureStarted]_block_invoke_2", 30, "BLE server started: %@", v5);
      v4 = *(a1 + 40);
    }

LABEL_12:
    v4 = [v4 _run];
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
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[SKSetupFieldDiagnosticsServer _bleAdvertiserEnsureStopped]", 30, "BLE advertiser stop: %@", bleAdvertiser);
        bleAdvertiser = self->_bleAdvertiser;
        goto LABEL_6;
      }

      v5 = _LogCategory_Initialize();
      bleAdvertiser = self->_bleAdvertiser;
      if (v5)
      {
        ucat = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBAdvertiser *)bleAdvertiser invalidate];
  v6 = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;
}

- (void)_bleAdvertiserEnsureStarted
{
  if (!self->_bleAdvertiser)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDFF0]);
    bleAdvertiser = self->_bleAdvertiser;
    self->_bleAdvertiser = v3;

    [(CBAdvertiser *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBAdvertiser *)v3 setNearbyActionFlags:64];
    [(CBAdvertiser *)v3 setNearbyActionType:44];
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

      LogPrintF(ucat, "[SKSetupFieldDiagnosticsServer _bleAdvertiserEnsureStarted]", 30, "BLE advertiser start: %@", v3);
    }

LABEL_6:
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__SKSetupFieldDiagnosticsServer__bleAdvertiserEnsureStarted__block_invoke;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CBAdvertiser *)v3 activateWithCompletion:v6];
  }
}

uint64_t __60__SKSetupFieldDiagnosticsServer__bleAdvertiserEnsureStarted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == v4[26])
  {
    v10 = v3;
    if (!v3)
    {
      v4 = [v4 _run];
LABEL_9:
      v3 = v10;
      goto LABEL_10;
    }

    v5 = v4[18];
    if (*v5 <= 90)
    {
      if (*v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v5 = *(*(a1 + 40) + 144);
      }

      v6 = CUPrintNSError();
      LogPrintF(v5, "[SKSetupFieldDiagnosticsServer _bleAdvertiserEnsureStarted]_block_invoke", 90, "### BLE advertiser failed: %@", v6);
    }

LABEL_8:
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 40);
    v8 = *(v7 + 208);
    *(v7 + 208) = 0;

    goto LABEL_9;
  }

LABEL_10:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)_bleAdvertiserShouldRun
{
  if (self->_completed)
  {
    LOBYTE(bleListeningPSM) = 0;
  }

  else
  {
    bleListeningPSM = [(CBServer *)self->_bleServer bleListeningPSM];
    if (bleListeningPSM)
    {
      LOBYTE(bleListeningPSM) = [(SKConnection *)self->super._skCnx state]!= 1;
    }
  }

  return bleListeningPSM;
}

- (void)_run
{
  if ([(SKSetupFieldDiagnosticsServer *)self _bleAdvertiserShouldRun])
  {

    [(SKSetupFieldDiagnosticsServer *)self _bleAdvertiserEnsureStarted];
  }

  else
  {

    [(SKSetupFieldDiagnosticsServer *)self _bleAdvertiserEnsureStopped];
  }
}

- (void)_prepareSteps
{
  v3 = objc_alloc_init(SKStepBasicConfigServer);
  [(SKStepBasicConfigServer *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepBasicConfigServer *)v3 setSkMessaging:self];
  [(SKSetupBase *)self _addStep:v3];
  [(SKStepBasicConfigServer *)v3 activate];

  v4 = objc_alloc_init(SKStepWiFiSetupServerCW);
  [(SKStepWiFiSetupServerCW *)v4 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepWiFiSetupServerCW *)v4 setSkMessaging:self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SKSetupFieldDiagnosticsServer__prepareSteps__block_invoke;
  v5[3] = &unk_279BB8370;
  v5[4] = self;
  [(SKStepWiFiSetupServerCW *)v4 setSkCompletionHandler:v5];
  [(SKSetupBase *)self _addStep:v4];
  [(SKStepWiFiSetupServerCW *)v4 activate];
}

void __46__SKSetupFieldDiagnosticsServer__prepareSteps__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[SKEvent alloc] initWithEventType:20 error:v4];

  [v3 _reportEvent:v5];
  if (!v4)
  {
    *(*(a1 + 32) + 224) = 1;
  }
}

- (void)_invalidate
{
  [(SKSetupFieldDiagnosticsServer *)self _bleAdvertiserEnsureStopped];
  [(SKSetupFieldDiagnosticsServer *)self _bleServerEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupFieldDiagnosticsServer;
  [(SKSetupBase *)&v3 _invalidate];
}

- (void)_activate
{
  if (self->super._sendDataHandler)
  {
    [(SKSetupFieldDiagnosticsServer *)self _oobEnsureStarted];
  }

  else
  {
    [(SKSetupFieldDiagnosticsServer *)self _bleServerEnsureStarted];
  }

  [(SKSetupFieldDiagnosticsServer *)self _prepareSteps];
  v3.receiver = self;
  v3.super_class = SKSetupFieldDiagnosticsServer;
  [(SKSetupBase *)&v3 _activate];
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 12;
  }

  v10 = v3;
  if ((level & 0x8000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v9 = 0;
    v4 = [objc_opt_class() description];
    CUAppendF(&v9, &v10, "%@", v4);
    v5 = v9;
  }

  v6 = &stru_2877689A8;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (SKSetupFieldDiagnosticsServer)init
{
  v6.receiver = self;
  v6.super_class = SKSetupFieldDiagnosticsServer;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupFieldDiagnosticsServer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end