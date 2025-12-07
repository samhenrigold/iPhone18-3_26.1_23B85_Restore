@interface SKStepBasicConfigClient
- (BOOL)_runBasicConfigStart;
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepBasicConfigClient)init;
- (void)_completeWithError:(id)error;
- (void)_invalidated;
- (void)_run;
- (void)activate;
- (void)invalidate;
@end

@implementation SKStepBasicConfigClient

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (BOOL)_runBasicConfigStart
{
  v14[1] = *MEMORY[0x277D85DE8];
  clientConfig = [(SKStepBasicConfigClient *)self clientConfig];
  if (!clientConfig)
  {
    clientConfig = objc_alloc_init(MEMORY[0x277CBEB38]);
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    if (firstObject)
    {
      [clientConfig setObject:firstObject forKeyedSubscript:@"_lang"];
    }

    else if (gLogCategory_SKStepBasicConfigClient <= 90 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _runBasicConfigStart]", 90, "### No language code");
    }

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    if (localeIdentifier)
    {
      [clientConfig setObject:localeIdentifier forKeyedSubscript:@"_locale"];
    }

    else if (gLogCategory_SKStepBasicConfigClient <= 90 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _runBasicConfigStart]", 90, "### No locale identifier");
    }
  }

  v8 = self->_skMessaging;
  if (v8)
  {
    if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      v9 = CUPrintNSObjectOneLine();
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _runBasicConfigStart]", 30, "BasicConfig send: %@", v9);
    }

    v13 = @"timeoutSeconds";
    v14[0] = &unk_28776E210;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__SKStepBasicConfigClient__runBasicConfigStart__block_invoke;
    v12[3] = &unk_279BB86A0;
    v12[4] = self;
    [(CUMessaging *)v8 sendRequestID:@"_bsCf" requestMessage:clientConfig options:v10 responseHandler:v12];
  }

  else
  {
    v10 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "No messaging");
    [(SKStepBasicConfigClient *)self _completeWithError:v10];
  }

  return v8 != 0;
}

void __47__SKStepBasicConfigClient__runBasicConfigStart__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if ((v10[8] & 1) == 0)
  {
    v11 = v15;
    if (!v15 || v8)
    {
      if (v8)
      {
        [*(a1 + 32) _completeWithError:v8];
      }

      else
      {
        v13 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No response, no error");
        [v10 _completeWithError:v13];
      }
    }

    else
    {
      if (gLogCategory_SKStepBasicConfigClient <= 30)
      {
        if (gLogCategory_SKStepBasicConfigClient != -1 || (v14 = _LogCategory_Initialize(), v11 = v15, v14))
        {
          v12 = CUPrintNSObjectOneLine();
          LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _runBasicConfigStart]_block_invoke", 30, "BasicConfig response: %@", v12);

          v11 = v15;
        }
      }

      *(*(a1 + 32) + 10) = 1;
      [*(a1 + 32) setOutServerConfig:v11];
      [*(a1 + 32) _run];
    }
  }
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      runState = self->_runState;
      if (runState > 11)
      {
        if (runState != 12)
        {
          if (runState != 13)
          {
            return;
          }

          [(SKStepBasicConfigClient *)self _completeWithError:0];
          v5 = self->_runState;
          goto LABEL_14;
        }

        if (!self->_responseReceived)
        {
          v5 = 12;
          goto LABEL_14;
        }

        v5 = 13;
      }

      else if (runState)
      {
        if (runState != 11)
        {
          return;
        }

        _runBasicConfigStart = [(SKStepBasicConfigClient *)self _runBasicConfigStart];
        v5 = self->_runState;
        if (!_runBasicConfigStart)
        {
          goto LABEL_14;
        }

        ++v5;
      }

      else
      {
        v5 = 11;
      }

      self->_runState = v5;
LABEL_14:
      if (v5 == runState)
      {
        return;
      }

      if (gLogCategory_SKStepBasicConfigClient <= 30)
      {
        if (gLogCategory_SKStepBasicConfigClient != -1)
        {
          goto LABEL_17;
        }

        if (_LogCategory_Initialize())
        {
          v5 = self->_runState;
LABEL_17:
          if ((0x78FFu >> runState))
          {
            v6 = off_279BB81A0[runState];
          }

          else if (runState <= 9)
          {
            v6 = "?";
          }

          else
          {
            v6 = "User";
          }

          if (v5 < 0xF && ((0x78FFu >> v5) & 1) != 0)
          {
            v7 = off_279BB81A0[v5];
          }

          else if (v5 <= 9)
          {
            v7 = "?";
          }

          else
          {
            v7 = "User";
          }

          LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _run]", 30, "State: %s -> %s", v6, v7);
        }
      }
    }
  }
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  self->_runState = v5;
  v9 = errorCopy;
  if (errorCopy)
  {
    if (gLogCategory_SKStepBasicConfigClient <= 60 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      v6 = CUPrintNSError();
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _completeWithError:]", 60, "### BasicConfig failed: %@", v6);
    }
  }

  else if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _completeWithError:]", 30, "BasicConfig Succeeded");
  }

  v7 = MEMORY[0x26676A4C0](self->_skCompletionHandler);
  skCompletionHandler = self->_skCompletionHandler;
  self->_skCompletionHandler = 0;

  if (v7)
  {
    (v7)[2](v7, v9);
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
    if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient _invalidated]", 30, "Invalidated");
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SKStepBasicConfigClient_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__37__SKStepBasicConfigClient_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if ((*(v5 + 8) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 8) = 1;
    if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient invalidate]_block_invoke", 30, "Invalidating", v2, v8, v3);
    }

    v7 = v6[4];

    return [v7 _invalidated];
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKStepBasicConfigClient_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SKStepBasicConfigClient_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_SKStepBasicConfigClient, "[SKStepBasicConfigClient activate]_block_invoke", 30, "Activate");
  }

  v2 = *(a1 + 32);

  return [v2 _run];
}

- (NSString)description
{
  v2 = [objc_opt_class() description];
  v3 = NSPrintF("%@", v2);

  return v3;
}

- (SKStepBasicConfigClient)init
{
  v6.receiver = self;
  v6.super_class = SKStepBasicConfigClient;
  v2 = [(SKStepBasicConfigClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

@end