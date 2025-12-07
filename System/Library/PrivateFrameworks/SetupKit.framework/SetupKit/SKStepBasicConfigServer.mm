@interface SKStepBasicConfigServer
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepBasicConfigServer)init;
- (void)_activate;
- (void)_completeWithError:(id)error;
- (void)_handleRequestBasicConfig:(id)config responseHandler:(id)handler;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation SKStepBasicConfigServer

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (void)_handleRequestBasicConfig:(id)config responseHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSObjectOneLine();
    LogPrintF_safe(&gLogCategory_SKStepBasicConfigServer, "[SKStepBasicConfigServer _handleRequestBasicConfig:responseHandler:]", 30, "BasicConfig: received %@", v7);
  }

  [(SKStepBasicConfigServer *)self setOutClientConfig:configCopy];
  v8 = [[SKEventBasicConfigUpdated alloc] initWithBasicConfig:configCopy];
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);
  [WeakRetained _reportEvent:v8];

  serverConfig = [(SKStepBasicConfigServer *)self serverConfig];
  v11 = serverConfig;
  if (serverConfig)
  {
    v12 = serverConfig;
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  (*(handlerCopy + 2))(handlerCopy, v12, 0, 0, &__block_literal_global_16_2468);
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if (gLogCategory_SKStepBasicConfigServer <= 90 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
    {
      v5 = CUPrintNSError();
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigServer, "[SKStepBasicConfigServer _completeWithError:]", 90, "### Failed: %@", v5);
    }
  }

  else if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_SKStepBasicConfigServer, "[SKStepBasicConfigServer _completeWithError:]", 30, "Succeeded");
  }

  v6 = MEMORY[0x26676A4C0](self->_responseHandler);
  responseHandler = self->_responseHandler;
  self->_responseHandler = 0;

  if (v6)
  {
    if (errorCopy)
    {
      v8 = 0;
    }

    else
    {
      v8 = MEMORY[0x277CBEC10];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SKStepBasicConfigServer__completeWithError___block_invoke;
    v9[3] = &unk_279BB8838;
    v9[4] = self;
    v10 = errorCopy;
    (v6)[2](v6, v8, 0, v10, v9);
  }
}

void __46__SKStepBasicConfigServer__completeWithError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 32));
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = v5;
    }

    (v3)[2](v3, v4);
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v5 = MEMORY[0x26676A4C0](self->_skCompletionHandler, a2);
    skCompletionHandler = self->_skCompletionHandler;
    self->_skCompletionHandler = 0;

    if (v5)
    {
      v4 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated");
      v5[2](v5, v4);
    }

    self->_invalidateDone = 1;
    if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigServer, "[SKStepBasicConfigServer _invalidated]", 30, "Invalidated");
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SKStepBasicConfigServer_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __37__SKStepBasicConfigServer_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigServer, "[SKStepBasicConfigServer invalidate]_block_invoke", 30, "Invalidating");
    }

    v7 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 16));
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    if (v7)
    {
      v6 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Setup Invalidated");
      (*(v7 + 2))(v7, 0, 0, v6, &__block_literal_global_2476);
    }

    [*(*(a1 + 32) + 40) deregisterRequestID:@"_bsCf" completionHandler:&__block_literal_global_10];
    [*(a1 + 32) _invalidated];
  }
}

- (void)_activate
{
  skMessaging = self->_skMessaging;
  if (skMessaging)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SKStepBasicConfigServer__activate__block_invoke;
    v7[3] = &unk_279BB8810;
    v7[4] = skMessaging;
    v7[5] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SKStepBasicConfigServer__activate__block_invoke_2;
    v6[3] = &unk_279BB8838;
    v6[4] = skMessaging;
    v6[5] = self;
    v4 = skMessaging;
    [(CUMessaging *)v4 registerRequestID:@"_bsCf" options:0 requestHandler:v7 completionHandler:v6];
  }

  else
  {
    v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No messaging");
    [(SKStepBasicConfigServer *)self _completeWithError:v5];
  }
}

void *__36__SKStepBasicConfigServer__activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[5])
  {
    return [result _handleRequestBasicConfig:a3 responseHandler:a5];
  }

  return result;
}

void *__36__SKStepBasicConfigServer__activate__block_invoke_2(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[5])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKStepBasicConfigServer_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SKStepBasicConfigServer_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_SKStepBasicConfigServer, "[SKStepBasicConfigServer activate]_block_invoke", 30, "Activate");
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

- (NSString)description
{
  v2 = [objc_opt_class() description];
  v3 = NSPrintF("%@", v2);

  return v3;
}

- (SKStepBasicConfigServer)init
{
  v6.receiver = self;
  v6.super_class = SKStepBasicConfigServer;
  v2 = [(SKStepBasicConfigServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

@end