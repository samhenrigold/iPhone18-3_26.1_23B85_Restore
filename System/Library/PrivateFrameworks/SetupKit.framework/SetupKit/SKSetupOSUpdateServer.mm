@interface SKSetupOSUpdateServer
- (BOOL)_bleAdvertiserShouldRun;
- (SKSetupOSUpdateServer)init;
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

@implementation SKSetupOSUpdateServer

- (void)_oobEnsureStarted
{
  if (!self->super._skCnx)
  {
    v4 = objc_alloc_init(SKConnection);
    [(SKConnection *)v4 setSendDataHandler:self->super._sendDataHandler];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v4 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_16];
  }
}

- (void)_bleServerAcceptConnecton:(id)connecton
{
  v12 = *MEMORY[0x277D85DE8];
  connectonCopy = connecton;
  v5 = self->super._skCnx;
  if (v5)
  {
    v6 = v5;
    v7 = logger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = connectonCopy;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&dword_265B01000, v7, OS_LOG_TYPE_ERROR, "### Reject BLE connection when already connected: %@ vs %@", &v8, 0x16u);
    }

    [connectonCopy invalidate];
  }

  else
  {
    v6 = objc_alloc_init(SKConnection);
    [(SKConnection *)v6 setBleConnection:connectonCopy];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v6 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_1097];
  }
}

- (void)_bleServerEnsureStopped
{
  if (self->_bleServer)
  {
    v3 = logger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_265B01000, v3, OS_LOG_TYPE_DEFAULT, "BLE server stop", v6, 2u);
    }

    bleServer = self->_bleServer;
  }

  else
  {
    bleServer = 0;
  }

  [(CBServer *)bleServer invalidate];
  v5 = self->_bleServer;
  self->_bleServer = 0;
}

- (void)_bleServerEnsureStarted
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_bleServer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBE090]);
    bleServer = self->_bleServer;
    self->_bleServer = v3;

    [(CBServer *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBServer *)v3 setBleListenPSM:130];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SKSetupOSUpdateServer__bleServerEnsureStarted__block_invoke;
    v7[3] = &unk_279BB8180;
    v7[4] = v3;
    v7[5] = self;
    [(CBServer *)v3 setAcceptHandler:v7];
    v5 = logger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_265B01000, v5, OS_LOG_TYPE_DEFAULT, "BLE server start: %@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SKSetupOSUpdateServer__bleServerEnsureStarted__block_invoke_13;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CBServer *)v3 activateWithCompletion:v6];
  }
}

void __48__SKSetupOSUpdateServer__bleServerEnsureStarted__block_invoke(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 216))
  {
    v9 = a3;
    v10 = logger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_265B01000, v10, OS_LOG_TYPE_DEFAULT, "BLE server incoming connection: %@", &v11, 0xCu);
    }

    [*(a1 + 40) _bleServerAcceptConnecton:v5];
    [*(a1 + 40) _run];
    v9[2](v9, 0);
  }

  else
  {
    v6 = *MEMORY[0x277CCA590];
    v7 = a3;
    v8 = NSErrorF_safe(v6, 4294896148, "Server invalidated");
    (a3)[2](v7, v8);
  }
}

void __48__SKSetupOSUpdateServer__bleServerEnsureStarted__block_invoke_13(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 216))
  {
    v4 = logger();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v9 = CUPrintNSError();
        v10 = 138412290;
        v11 = v9;
        _os_log_error_impl(&dword_265B01000, v5, OS_LOG_TYPE_ERROR, "### BLE server failed: %@", &v10, 0xCu);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 216);
      *(v6 + 216) = 0;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_265B01000, v5, OS_LOG_TYPE_DEFAULT, "BLE server started: %@", &v10, 0xCu);
      }

      [*(a1 + 40) _run];
    }
  }
}

- (void)_bleAdvertiserEnsureStopped
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_bleAdvertiser)
  {
    v3 = logger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bleAdvertiser = self->_bleAdvertiser;
      v7 = 138412290;
      v8 = bleAdvertiser;
      _os_log_impl(&dword_265B01000, v3, OS_LOG_TYPE_DEFAULT, "BLE advertiser stop: %@", &v7, 0xCu);
    }

    v5 = self->_bleAdvertiser;
  }

  else
  {
    v5 = 0;
  }

  [(CBAdvertiser *)v5 invalidate];
  v6 = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;
}

- (void)_bleAdvertiserEnsureStarted
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_bleAdvertiser)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDFF0]);
    bleAdvertiser = self->_bleAdvertiser;
    self->_bleAdvertiser = v3;

    [(CBAdvertiser *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBAdvertiser *)v3 setNearbyActionFlags:64];
    [(CBAdvertiser *)v3 setNearbyActionType:83];
    v5 = logger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_265B01000, v5, OS_LOG_TYPE_DEFAULT, "BLE advertiser start: %@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__SKSetupOSUpdateServer__bleAdvertiserEnsureStarted__block_invoke;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CBAdvertiser *)v3 activateWithCompletion:v6];
  }
}

void __52__SKSetupOSUpdateServer__bleAdvertiserEnsureStarted__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == v4[26])
  {
    if (v3)
    {
      v5 = logger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = CUPrintNSError();
        v9 = 138412290;
        v10 = v8;
        _os_log_error_impl(&dword_265B01000, v5, OS_LOG_TYPE_ERROR, "### BLE advertiser failed: %@", &v9, 0xCu);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 208);
      *(v6 + 208) = 0;
    }

    else
    {
      [v4 _run];
    }
  }
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
  if ([(SKSetupOSUpdateServer *)self _bleAdvertiserShouldRun])
  {

    [(SKSetupOSUpdateServer *)self _bleAdvertiserEnsureStarted];
  }

  else
  {

    [(SKSetupOSUpdateServer *)self _bleAdvertiserEnsureStopped];
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
  v5[2] = __38__SKSetupOSUpdateServer__prepareSteps__block_invoke;
  v5[3] = &unk_279BB8370;
  v5[4] = self;
  [(SKStepWiFiSetupServerCW *)v4 setSkCompletionHandler:v5];
  [(SKSetupBase *)self _addStep:v4];
  [(SKStepWiFiSetupServerCW *)v4 activate];
}

void __38__SKSetupOSUpdateServer__prepareSteps__block_invoke(uint64_t a1, void *a2)
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
  [(SKSetupOSUpdateServer *)self _bleAdvertiserEnsureStopped];
  [(SKSetupOSUpdateServer *)self _bleServerEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupOSUpdateServer;
  [(SKSetupBase *)&v3 _invalidate];
}

- (void)_activate
{
  if (self->super._sendDataHandler)
  {
    [(SKSetupOSUpdateServer *)self _oobEnsureStarted];
  }

  else
  {
    [(SKSetupOSUpdateServer *)self _bleServerEnsureStarted];
  }

  [(SKSetupOSUpdateServer *)self _prepareSteps];
  v3.receiver = self;
  v3.super_class = SKSetupOSUpdateServer;
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

- (SKSetupOSUpdateServer)init
{
  v6.receiver = self;
  v6.super_class = SKSetupOSUpdateServer;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupOSUpdateServer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end