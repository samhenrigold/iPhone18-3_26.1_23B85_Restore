@interface SKSetupClient
- (SKSetupClient)init;
- (void)_activateBLEWithCompletion:(id)completion;
- (void)_activateNANContinueWithError:(id)error;
- (void)_activateNANWithCompletion:(id)completion;
- (void)_activateOOBWithCompletion:(id)completion;
- (void)_activateWithCompletion:(id)completion;
- (void)_completeWithError:(id)error;
- (void)_invalidate;
- (void)_invalidateSteps;
- (void)_invalidated;
- (void)_prepareSteps;
- (void)_prepareStepsOSRecovery;
- (void)_run;
- (void)_setupConnectionCommon:(id)common;
- (void)activateWithCompletion:(id)completion;
- (void)tryPassword:(id)password;
@end

@implementation SKSetupClient

- (void)_run
{
  if (!self->super._invalidateCalled)
  {
    while (1)
    {
      runState = self->super._runState;
      if (runState <= 11)
      {
        break;
      }

      if (runState != 12)
      {
        if (runState != 13)
        {
          return;
        }

        [(SKSetupClient *)self _completeWithError:0];
        v5 = self->super._runState;
        goto LABEL_14;
      }

      _runSteps = [(SKSetupBase *)self _runSteps];
      v5 = self->super._runState;
      if (_runSteps)
      {
        goto LABEL_12;
      }

LABEL_14:
      if (v5 == runState)
      {
        return;
      }

      ucat = self->super._ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
          goto LABEL_17;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->super._ucat;
          v5 = self->super._runState;
LABEL_17:
          if ((0x38FFu >> runState))
          {
            v8 = off_279BB8488[runState];
          }

          else if (runState <= 9)
          {
            v8 = "?";
          }

          else
          {
            v8 = "User";
          }

          if (v5 < 0xE && ((0x38FFu >> v5) & 1) != 0)
          {
            v9 = off_279BB8488[v5];
          }

          else if (v5 <= 9)
          {
            v9 = "?";
          }

          else
          {
            v9 = "User";
          }

          LogPrintF(ucat, "[SKSetupClient _run]", 30, "State: %s -> %s", v8, v9);
        }
      }
    }

    if (runState)
    {
      if (runState != 11)
      {
        return;
      }

      state = [(SKConnection *)self->super._skCnx state];
      v5 = self->super._runState;
      if (state != 1)
      {
        goto LABEL_14;
      }

LABEL_12:
      ++v5;
    }

    else
    {
      v5 = 11;
    }

    self->super._runState = v5;
    goto LABEL_14;
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SKSetupClient_tryPassword___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __29__SKSetupClient_tryPassword___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = *(*(a1 + 32) + 144);
  v4 = *v3;
  v7 = v2;
  if (v2)
  {
    if (v4 <= 30)
    {
      if (v4 == -1)
      {
        v5 = _LogCategory_Initialize();
        v2 = v7;
        if (!v5)
        {
          goto LABEL_6;
        }

        v3 = *(*(a1 + 32) + 144);
      }

      LogPrintF(v3, "[SKSetupClient tryPassword:]_block_invoke", 30, "Try password");
      v2 = v7;
    }

LABEL_6:
    v3 = [v2 tryPassword:*(a1 + 40)];
LABEL_7:
    v2 = v7;
    goto LABEL_8;
  }

  if (v4 <= 90)
  {
    if (v4 != -1)
    {
LABEL_13:
      v3 = LogPrintF(v3, "[SKSetupClient tryPassword:]_block_invoke", 90, "### Try password without connection");
      goto LABEL_7;
    }

    v3 = _LogCategory_Initialize();
    v2 = 0;
    if (v3)
    {
      v3 = *(*(a1 + 32) + 144);
      goto LABEL_13;
    }
  }

LABEL_8:

  return MEMORY[0x2821F96F8](v3, v2);
}

- (void)_prepareStepsOSRecovery
{
  v3 = objc_alloc_init(SKStepBasicConfigClient);
  clientConfig = [(SKSetupClient *)self clientConfig];
  [(SKStepBasicConfigClient *)v3 setClientConfig:clientConfig];

  [(SKStepBasicConfigClient *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepBasicConfigClient *)v3 setSkMessaging:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SKSetupClient__prepareStepsOSRecovery__block_invoke;
  v7[3] = &unk_279BB8838;
  v7[4] = self;
  v7[5] = v3;
  [(SKStepBasicConfigClient *)v3 setSkCompletionHandler:v7];
  [(SKSetupBase *)self _addStep:v3];

  if (!self->_skipWifi)
  {
    v5 = objc_alloc_init(SKStepWiFiSetupClientLegacy);
    [(SKStepWiFiSetupClientLegacy *)v5 setDispatchQueue:self->super._dispatchQueue];
    [(SKStepWiFiSetupClientLegacy *)v5 setSkMessaging:self];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SKSetupClient__prepareStepsOSRecovery__block_invoke_2;
    v6[3] = &unk_279BB8838;
    v6[4] = self;
    v6[5] = v5;
    [(SKStepWiFiSetupClientLegacy *)v5 setSkCompletionHandler:v6];
    [(SKSetupBase *)self _addStep:v5];
  }
}

void __40__SKSetupClient__prepareStepsOSRecovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  if (v3)
  {
    v5 = v4[18];
    if (*v5 > 60)
    {
      goto LABEL_7;
    }

    if (*v5 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 144);
LABEL_4:
      LogPrintF(v5, "[SKSetupClient _prepareStepsOSRecovery]_block_invoke", 60, "%s: BasicConfig got error %@, ignoring", "[SKSetupClient _prepareStepsOSRecovery]_block_invoke", v9);
    }
  }

  else
  {
    v6 = [SKEventBasicConfigUpdated alloc];
    v7 = [*(a1 + 40) outServerConfig];
    v8 = [(SKEventBasicConfigUpdated *)v6 initWithBasicConfig:v7];
    [v4 _reportEvent:v8];
  }

LABEL_7:
  [*(a1 + 32) _completedStep:*(a1 + 40) error:0];
}

- (void)_prepareSteps
{
  if (self->super._setupType == 1)
  {
    [(SKSetupClient *)self _prepareStepsOSRecovery];
  }
}

- (void)_invalidateSteps
{
  [(SKStepable *)self->super._stepCurrent setSkCompletionHandler:0];
  [(SKStepable *)self->super._stepCurrent invalidate];
  stepCurrent = self->super._stepCurrent;
  self->super._stepCurrent = 0;

  v4.receiver = self;
  v4.super_class = SKSetupClient;
  [(SKSetupBase *)&v4 _invalidateSteps];
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  ucat = self->super._ucat;
  var0 = ucat->var0;
  v14 = errorCopy;
  if (errorCopy)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->super._ucat;
      }

      v7 = CUPrintNSError();
      LogPrintF(ucat, "[SKSetupClient _completeWithError:]", 60, "### Setup failed: %@", v7);
    }

LABEL_9:
    v8 = 3;
    goto LABEL_12;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->super._ucat;
    }

    LogPrintF(ucat, "[SKSetupClient _completeWithError:]", 30, "Setup succeeded");
  }

LABEL_11:
  v8 = 4;
LABEL_12:
  self->super._runState = v8;
  v9 = MEMORY[0x26676A4C0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v9)
  {
    (v9)[2](v9, v14);
  }

  v11 = [[SKEvent alloc] initWithEventType:20 error:v14];
  [(SKSetupBase *)self _reportEvent:v11];

  v12 = MEMORY[0x26676A4C0](self->_overallCompletionHandler);
  overallCompletionHandler = self->_overallCompletionHandler;
  self->_overallCompletionHandler = 0;

  if (v12)
  {
    (v12)[2](v12, v14);
  }
}

- (void)_invalidated
{
  if (self->super._invalidateCalled)
  {
    v13 = v2;
    v14 = v3;
    authCompletionHandler = self->_authCompletionHandler;
    self->_authCompletionHandler = 0;

    authPromptHandler = self->_authPromptHandler;
    self->_authPromptHandler = 0;

    v7 = MEMORY[0x26676A4C0](self->_overallCompletionHandler);
    overallCompletionHandler = self->_overallCompletionHandler;
    self->_overallCompletionHandler = 0;

    if (v7)
    {
      v9 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated");
      (v7)[2](v7, v9);
    }

    v10 = MEMORY[0x26676A4C0](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v10)
    {
      v10[2](v10);
    }

    v12.receiver = self;
    v12.super_class = SKSetupClient;
    [(SKSetupBase *)&v12 _invalidated];
  }
}

- (void)_invalidate
{
  [(CUNANSubscriber *)self->_nanSubscriber invalidate];
  nanSubscriber = self->_nanSubscriber;
  self->_nanSubscriber = 0;

  v4 = MEMORY[0x26676A4C0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    v6 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated");
    (v4)[2](v4, v6);
  }

  v7.receiver = self;
  v7.super_class = SKSetupClient;
  [(SKSetupBase *)&v7 _invalidate];
}

- (void)_setupConnectionCommon:(id)common
{
  commonCopy = common;
  [commonCopy setClientMode:1];
  [commonCopy setConditionalPersistent:{-[SKSetupBase conditionalPersistent](self, "conditionalPersistent")}];
  [commonCopy setDispatchQueue:self->super._dispatchQueue];
  [commonCopy setPassword:self->super._password];
  [commonCopy setPersistentPairing:{-[SKSetupBase persistentPairing](self, "persistentPairing")}];
  [commonCopy setReversePairing:{-[SKSetupBase reversePairing](self, "reversePairing")}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke;
  v25[3] = &unk_279BB8370;
  v25[4] = self;
  [commonCopy setAuthCompletionHandler:v25];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_2;
  v24[3] = &unk_279BB83C0;
  v24[4] = self;
  [commonCopy setAuthPromptHandler:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_3;
  v23[3] = &unk_279BB83E8;
  v23[4] = self;
  [commonCopy setAuthShowPasswordHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_4;
  v20[3] = &unk_279BB8838;
  v5 = commonCopy;
  v21 = v5;
  selfCopy = self;
  [v5 setErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_5;
  v17[3] = &unk_279BB8648;
  v6 = v5;
  v18 = v6;
  selfCopy2 = self;
  [v6 setInvalidationHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_6;
  v16[3] = &unk_279BB8410;
  v16[4] = self;
  [v6 setPairSetupConfigHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_7;
  v13[3] = &unk_279BB8438;
  v7 = v6;
  v14 = v7;
  selfCopy3 = self;
  [v7 setReceivedEventHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_8;
  v10[3] = &unk_279BB8810;
  v11 = v7;
  selfCopy4 = self;
  v8 = v7;
  [v8 setReceivedRequestHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_9;
  v9[3] = &unk_279BB87E8;
  v9[4] = self;
  [v8 setStateChangedHandler:v9];
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[SKEvent alloc] initWithEventType:140 error:v6];
  [*(a1 + 32) _reportEvent:v3];
  v4 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 240));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [[SKAuthenticationRequestEvent alloc] initWithPasswordType:a2 pairingFlags:a3 throttleSeconds:a4];
  [*(a1 + 32) _reportEvent:?];
  v8 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 248));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, a2, a3, a4);
  }
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[SKAuthenticationPresentEvent alloc] initWithPasswordType:a2 password:v5];

  [*(a1 + 32) _reportEvent:v6];
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_4(uint64_t a1, void *a2)
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
      LogPrintF(v5, "[SKSetupClient _setupConnectionCommon:]_block_invoke_4", 90, "### Connection error: %@", v6);
    }

LABEL_6:
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 40);
    v8 = *(v7 + 120);
    *(v7 + 120) = 0;

    v3 = v9;
  }
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != *(v3 + 120))
  {
    return;
  }

  v5 = *(v3 + 144);
  if (*v5 <= 30)
  {
    if (*v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = *(a1 + 40);
      if (!v6)
      {
        goto LABEL_6;
      }

      v5 = *(v3 + 144);
      v2 = *(a1 + 32);
    }

    LogPrintF(v5, "[SKSetupClient _setupConnectionCommon:]_block_invoke_5", 30, "Connection ended: %@", v2);
    v3 = *(a1 + 40);
  }

LABEL_6:
  v7 = *(v3 + 120);
  *(v3 + 120) = 0;
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_6(uint64_t a1, void *a2)
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
      LogPrintF(v5, "[SKSetupClient _setupConnectionCommon:]_block_invoke_6", 30, "PairSetup config: %@", v6);

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

void *__40__SKSetupClient__setupConnectionCommon___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[15])
  {
    return [result _receivedEventID:a2 event:a3 options:a4];
  }

  return result;
}

void *__40__SKSetupClient__setupConnectionCommon___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[15])
  {
    return [result _receivedRequestID:a2 request:a3 options:a4 responseHandler:a5];
  }

  return result;
}

- (void)_activateOOBWithCompletion:(id)completion
{
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__1505;
  v15[4] = __Block_byref_object_dispose__1506;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SKSetupClient__activateOOBWithCompletion___block_invoke;
  v12[3] = &unk_279BB8500;
  v14 = v15;
  v12[4] = self;
  v5 = completionCopy;
  v13 = v5;
  v6 = MEMORY[0x26676A4C0](v12);
  v7 = objc_alloc_init(SKConnection);
  objc_storeStrong(&self->super._skCnx, v7);
  [(SKConnection *)v7 setSendDataHandler:self->super._sendDataHandler];
  [(SKSetupClient *)self _setupConnectionCommon:v7];
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

    LogPrintF(ucat, "[SKSetupClient _activateOOBWithCompletion:]", 30, "Connection activate: %@", v7);
  }

LABEL_5:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SKSetupClient__activateOOBWithCompletion___block_invoke_2;
  v10[3] = &unk_279BB82F8;
  v10[4] = v7;
  v10[5] = self;
  v9 = v5;
  v11 = v9;
  [(SKConnection *)v7 activateWithCompletion:v10];

  v6[2](v6);
  _Block_object_dispose(v15, 8);
}

uint64_t __44__SKSetupClient__activateOOBWithCompletion___block_invoke(void *a1)
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
    LogPrintF(v3, "[SKSetupClient _activateOOBWithCompletion:]_block_invoke", 90, "### Activate failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

void __44__SKSetupClient__activateOOBWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v13 = v3;
  if (*(a1 + 32) != *(v4 + 120))
  {
    v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated before activate completed");
    v6 = *(*(a1 + 40) + 144);
    if (*v6 <= 90)
    {
      if (*v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v6 = *(*(a1 + 40) + 144);
      }

      v7 = CUPrintNSError();
      LogPrintF(v6, "[SKSetupClient _activateOOBWithCompletion:]_block_invoke_2", 90, "### Connection activate failed: %@", v7);
    }

LABEL_13:
    (*(*(a1 + 48) + 16))();

    goto LABEL_18;
  }

  v8 = *(v4 + 144);
  v9 = *v8;
  if (v3)
  {
    if (v9 <= 90)
    {
      if (v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v8 = *(*(a1 + 40) + 144);
      }

      v10 = CUPrintNSError();
      LogPrintF(v8, "[SKSetupClient _activateOOBWithCompletion:]_block_invoke_2", 90, "### Connection activate failed: %@", v10);
    }

LABEL_15:
    [*(a1 + 32) invalidate];
    v11 = *(a1 + 40);
    v12 = *(v11 + 120);
    *(v11 + 120) = 0;

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  if (v9 <= 30)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v8 = *(*(a1 + 40) + 144);
    }

    LogPrintF(v8, "[SKSetupClient _activateOOBWithCompletion:]_block_invoke_2", 30, "Connection activated");
  }

LABEL_17:
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _run];
LABEL_18:
}

- (void)_activateNANContinueWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v5 = self->super._skCnx;
    if (!v5)
    {
      goto LABEL_10;
    }

    [(SKSetupClient *)self _setupConnectionCommon:v5];
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupClient _activateNANContinueWithError:]", 30, "Connection activate: %@", v5);
    }

LABEL_9:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__SKSetupClient__activateNANContinueWithError___block_invoke;
    v8[3] = &unk_279BB8838;
    v8[4] = v5;
    v8[5] = self;
    [(SKConnection *)v5 activateWithCompletion:v8];
    goto LABEL_10;
  }

  v5 = MEMORY[0x26676A4C0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v5)
  {
    (v5->_authThrottleDeadlineTicks)(v5, errorCopy);
  }

LABEL_10:
}

void __47__SKSetupClient__activateNANContinueWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v23 = v3;
  if (*(a1 + 32) != v4[15])
  {
    v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated before activate completed");
    v6 = *(a1 + 40);
    v7 = *(v6 + 144);
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

        v7 = *(v6 + 144);
      }

      v8 = CUPrintNSError();
      LogPrintF(v7, "[SKSetupClient _activateNANContinueWithError:]_block_invoke", 90, "### Connection activate failed: %@", v8);

      v6 = *(a1 + 40);
    }

LABEL_13:
    v13 = MEMORY[0x26676A4C0](*(v6 + 208));
    v14 = *(a1 + 40);
    v15 = *(v14 + 208);
    *(v14 + 208) = 0;

    if (v13)
    {
      v13[2](v13, v5);
    }

    goto LABEL_16;
  }

  v9 = v4[18];
  v10 = *v9;
  if (v3)
  {
    if (v10 > 90)
    {
      goto LABEL_20;
    }

    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_20:
        [*(a1 + 32) invalidate];
        v16 = *(a1 + 40);
        v17 = *(v16 + 120);
        *(v16 + 120) = 0;

        v5 = MEMORY[0x26676A4C0](*(*(a1 + 40) + 208));
        v18 = *(a1 + 40);
        v19 = *(v18 + 208);
        *(v18 + 208) = 0;

        if (v5)
        {
          (v5)[2](v5, v23);
        }

        goto LABEL_16;
      }

      v9 = *(*(a1 + 40) + 144);
    }

    v11 = CUPrintNSError();
    LogPrintF(v9, "[SKSetupClient _activateNANContinueWithError:]_block_invoke", 90, "### Connection activate failed: %@", v11);

    goto LABEL_20;
  }

  if (v10 <= 30)
  {
    if (v10 == -1)
    {
      v20 = _LogCategory_Initialize();
      v4 = *(a1 + 40);
      if (!v20)
      {
        goto LABEL_23;
      }

      v9 = v4[18];
    }

    LogPrintF(v9, "[SKSetupClient _activateNANContinueWithError:]_block_invoke", 30, "Connection activated");
    v4 = *(a1 + 40);
  }

LABEL_23:
  v5 = MEMORY[0x26676A4C0](v4[26]);
  v21 = *(a1 + 40);
  v22 = *(v21 + 208);
  *(v21 + 208) = 0;

  if (v5)
  {
    v5[2](v5, 0);
  }

  [*(a1 + 40) _run];
LABEL_16:
}

- (void)_activateNANWithCompletion:(id)completion
{
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1505;
  v24 = __Block_byref_object_dispose__1506;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke;
  v17[3] = &unk_279BB8500;
  v19 = &v20;
  v17[4] = self;
  v5 = completionCopy;
  v18 = v5;
  v6 = MEMORY[0x26676A4C0](v17);
  v7 = objc_alloc_init(SKConnection);
  objc_storeStrong(&self->super._skCnx, v7);
  [(SKConnection *)v7 setClientMode:1];
  [(SKConnection *)v7 setPassword:self->super._password];
  identifier = [(SKDevice *)self->super._peerDevice identifier];
  if (identifier)
  {
    v9 = objc_alloc_init(MEMORY[0x277D028A8]);
    objc_storeStrong(&self->_nanSubscriber, v9);
    [v9 setControlFlags:1];
    [v9 setDispatchQueue:self->super._dispatchQueue];
    [v9 setServiceType:@"com.apple.setup"];
    v10 = MEMORY[0x26676A4C0](v5);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v10;

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_2;
    v16[3] = &unk_279BB8320;
    v16[4] = identifier;
    v16[5] = self;
    [v9 setEndpointFoundHandler:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_3;
    v15[3] = &unk_279BB8348;
    v15[4] = v9;
    v15[5] = self;
    v15[6] = identifier;
    v15[7] = v7;
    [v9 setReceiveHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_4;
    v14[3] = &unk_279BB8398;
    v14[4] = v9;
    v14[5] = self;
    [(SKConnection *)v7 setSendDataHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_6;
    v13[3] = &unk_279BB8838;
    v13[4] = v9;
    v13[5] = self;
    [v9 activateWithCompletion:v13];
  }

  else
  {
    v12 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No peer device ID");
    v9 = v21[5];
    v21[5] = v12;
  }

  v6[2](v6);
  _Block_object_dispose(&v20, 8);
}

uint64_t __44__SKSetupClient__activateNANWithCompletion___block_invoke(void *a1)
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
    LogPrintF(v3, "[SKSetupClient _activateNANWithCompletion:]_block_invoke", 90, "### Activate failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v4 = [v14 identifier];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_6;
  }

  if ((v6 != 0) != (v7 == 0))
  {
    v9 = [v6 isEqual:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_6:
    objc_storeStrong((*(a1 + 40) + 216), a2);
    v10 = *(a1 + 40);
    v11 = v10[18];
    if (*v11 <= 30)
    {
      if (*v11 == -1)
      {
        v13 = _LogCategory_Initialize();
        v10 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_14;
        }

        v11 = v10[18];
      }

      LogPrintF(v11, "[SKSetupClient _activateNANWithCompletion:]_block_invoke_2", 30, "Found NAN endpoint: %@", v6);
      v10 = *(a1 + 40);
    }

LABEL_14:
    [v10 _activateNANContinueWithError:0];
    goto LABEL_15;
  }

LABEL_10:
  v12 = *(*(a1 + 40) + 144);
  if (*v12 > 30)
  {
    goto LABEL_15;
  }

  if (*v12 != -1)
  {
    goto LABEL_12;
  }

  if (_LogCategory_Initialize())
  {
    v12 = *(*(a1 + 40) + 144);
LABEL_12:
    LogPrintF(v12, "[SKSetupClient _activateNANWithCompletion:]_block_invoke_2", 30, "Ignoring NAN endpoint: %@ vs %@", v6, *(a1 + 32));
  }

LABEL_15:
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32) != *(*(a1 + 40) + 224))
  {
    goto LABEL_13;
  }

  v7 = [v5 identifier];
  v8 = *(a1 + 48);
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if ((v9 != 0) != (v10 == 0))
  {
    v12 = [v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    [*(a1 + 56) receivedData:v15];
    goto LABEL_13;
  }

LABEL_9:
  v13 = *(*(a1 + 40) + 144);
  if (*v13 > 30)
  {
    goto LABEL_13;
  }

  if (*v13 != -1)
  {
    goto LABEL_11;
  }

  if (_LogCategory_Initialize())
  {
    v13 = *(*(a1 + 40) + 144);
LABEL_11:
    v14 = [v6 identifier];
    LogPrintF(v13, "[SKSetupClient _activateNANWithCompletion:]_block_invoke_3", 30, "Ignoring NAN data: %@ vs %@", v14, *(a1 + 48));
  }

LABEL_13:
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == *(v4 + 224))
  {
    v6 = *(v4 + 216);
    if (v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_5;
      v8[3] = &unk_279BB8370;
      v8[4] = v4;
      v7 = v6;
      [v5 sendMessageData:v3 endpoint:v7 completionHandler:v8];
    }
  }
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (*(a1 + 32) == *(v4 + 224))
    {
      v9 = v3;
      v5 = *(v4 + 144);
      if (*v5 <= 90)
      {
        if (*v5 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_7;
          }

          v5 = *(*(a1 + 40) + 144);
        }

        v6 = CUPrintNSError();
        LogPrintF(v5, "[SKSetupClient _activateNANWithCompletion:]_block_invoke_6", 90, "### NAN publisher activate failed: %@", v6);
      }

LABEL_7:
      [*(a1 + 32) invalidate];
      v7 = *(a1 + 40);
      v8 = *(v7 + 224);
      *(v7 + 224) = 0;

      [*(a1 + 40) _activateNANContinueWithError:v9];
      v3 = v9;
    }
  }
}

uint64_t __44__SKSetupClient__activateNANWithCompletion___block_invoke_5(uint64_t a1, void *a2)
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
        LogPrintF(v5, "[SKSetupClient _activateNANWithCompletion:]_block_invoke_5", 90, "### Send NAN data failed: %@", v6);

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

- (void)_activateBLEWithCompletion:(id)completion
{
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1505;
  v21 = __Block_byref_object_dispose__1506;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__SKSetupClient__activateBLEWithCompletion___block_invoke;
  v14[3] = &unk_279BB8500;
  v16 = &v17;
  v14[4] = self;
  v5 = completionCopy;
  v15 = v5;
  v6 = MEMORY[0x26676A4C0](v14);
  v7 = objc_alloc_init(SKConnection);
  objc_storeStrong(&self->super._skCnx, v7);
  v8 = self->super._peerDevice;
  if (!v8)
  {
    v10 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No peer device");
    v11 = v18[5];
    v18[5] = v10;

    goto LABEL_7;
  }

  [(SKConnection *)v7 setBlePeerDevice:v8];
  [(SKSetupClient *)self _setupConnectionCommon:v7];
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

    LogPrintF(ucat, "[SKSetupClient _activateBLEWithCompletion:]", 30, "Connection activate: %@", v7);
  }

LABEL_6:
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SKSetupClient__activateBLEWithCompletion___block_invoke_2;
  v12[3] = &unk_279BB82F8;
  v12[4] = v7;
  v12[5] = self;
  v13 = v5;
  [(SKConnection *)v7 activateWithCompletion:v12];

LABEL_7:
  v6[2](v6);

  _Block_object_dispose(&v17, 8);
}

uint64_t __44__SKSetupClient__activateBLEWithCompletion___block_invoke(void *a1)
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
    LogPrintF(v3, "[SKSetupClient _activateBLEWithCompletion:]_block_invoke", 90, "### Activate failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

void __44__SKSetupClient__activateBLEWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v13 = v3;
  if (*(a1 + 32) != *(v4 + 120))
  {
    v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated before activate completed");
    v6 = *(*(a1 + 40) + 144);
    if (*v6 <= 90)
    {
      if (*v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v6 = *(*(a1 + 40) + 144);
      }

      v7 = CUPrintNSError();
      LogPrintF(v6, "[SKSetupClient _activateBLEWithCompletion:]_block_invoke_2", 90, "### Connection activate failed: %@", v7);
    }

LABEL_13:
    (*(*(a1 + 48) + 16))();

    goto LABEL_18;
  }

  v8 = *(v4 + 144);
  v9 = *v8;
  if (v3)
  {
    if (v9 <= 90)
    {
      if (v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v8 = *(*(a1 + 40) + 144);
      }

      v10 = CUPrintNSError();
      LogPrintF(v8, "[SKSetupClient _activateBLEWithCompletion:]_block_invoke_2", 90, "### Connection activate failed: %@", v10);
    }

LABEL_15:
    [*(a1 + 32) invalidate];
    v11 = *(a1 + 40);
    v12 = *(v11 + 120);
    *(v11 + 120) = 0;

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  if (v9 <= 30)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v8 = *(*(a1 + 40) + 144);
    }

    LogPrintF(v8, "[SKSetupClient _activateBLEWithCompletion:]_block_invoke_2", 30, "Connection activated");
  }

LABEL_17:
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _run];
LABEL_18:
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1505;
  v28 = __Block_byref_object_dispose__1506;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__SKSetupClient__activateWithCompletion___block_invoke;
  v21[3] = &unk_279BB8500;
  v23 = &v24;
  v21[4] = self;
  v5 = completionCopy;
  v22 = v5;
  v6 = MEMORY[0x26676A4C0](v21);
  if (self->super._activateCalled)
  {
    v19 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960575, "activate already called");
LABEL_24:
    v14 = v25[5];
    v25[5] = v19;
    goto LABEL_25;
  }

  if (self->super._invalidateCalled)
  {
    v19 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "activate after invalidate");
    goto LABEL_24;
  }

  ucat = self->super._ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_13;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    ucat = self->super._ucat;
  }

  setupType = self->super._setupType;
  if (setupType > 5)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_279BB8458[setupType];
  }

  v10 = CUPrintFlags32();
  peerDevice = self->super._peerDevice;
  reversePairing = [(SKSetupBase *)self reversePairing];
  v13 = "no";
  if (reversePairing)
  {
    v13 = "yes";
  }

  LogPrintF(ucat, "[SKSetupClient _activateWithCompletion:]", 30, "Activate: type %s, CF %@, Peer %@, reverse %s", v9, v10, peerDevice, v13);

LABEL_13:
  self->super._activateCalled = 1;
  if (self->super._setupType == 1)
  {
    v14 = objc_alloc_init(SKStepWiFiPreflight);
    [(SKStepWiFiPreflight *)v14 setPreventAppleWiFi:0];
    v15 = (v25 + 5);
    obj = v25[5];
    v16 = [(SKStepWiFiPreflight *)v14 checkWiFiAndReturnError:&obj];
    objc_storeStrong(v15, obj);
    if (!v16)
    {
      (*(v5 + 2))(v5, 0);
      [(SKSetupClient *)self _completeWithError:v25[5]];
      v18 = v25[5];
      v25[5] = 0;

LABEL_25:
      goto LABEL_26;
    }
  }

  [(SKSetupClient *)self _prepareSteps];
  if (!self->super._sendDataHandler)
  {
    controlFlags = self->super._controlFlags;
    if ((controlFlags & 2) != 0)
    {
      [(SKSetupClient *)self _activateNANWithCompletion:v5];
      goto LABEL_26;
    }

    if ((controlFlags & 1) == 0)
    {
      [(SKSetupClient *)self _activateBLEWithCompletion:v5];
      goto LABEL_26;
    }

    v19 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No transport specified");
    goto LABEL_24;
  }

  [(SKSetupClient *)self _activateOOBWithCompletion:v5];
LABEL_26:
  v6[2](v6);

  _Block_object_dispose(&v24, 8);
}

uint64_t __41__SKSetupClient__activateWithCompletion___block_invoke(void *a1)
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
    LogPrintF(v3, "[SKSetupClient _activateWithCompletion:]_block_invoke", 90, "### Activate failed: %@", v4);
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
  v7[2] = __40__SKSetupClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_279BB82D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (SKSetupClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupClient];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end