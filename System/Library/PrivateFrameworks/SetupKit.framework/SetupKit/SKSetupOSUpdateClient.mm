@interface SKSetupOSUpdateClient
- (SKSetupOSUpdateClient)init;
- (void)_activate;
- (void)_prepareSteps;
- (void)_run;
@end

@implementation SKSetupOSUpdateClient

- (void)_run
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->super._invalidateCalled)
  {
    while (1)
    {
      runState = self->super._runState;
      if (runState <= 11)
      {
        break;
      }

      switch(runState)
      {
        case 0xC:
          state = [(SKConnection *)self->super._skCnx state];
          v4 = self->super._runState;
          if (state != 1)
          {
            break;
          }

LABEL_15:
          ++v4;
          goto LABEL_16;
        case 0xD:
          _runSteps = [(SKSetupBase *)self _runSteps];
          v4 = self->super._runState;
          if (_runSteps)
          {
            goto LABEL_15;
          }

          break;
        case 0xE:
          [(SKSetupBase *)self _completeWithError:0];
          v4 = self->super._runState;
          break;
        default:
          return;
      }

LABEL_17:
      if (v4 == runState)
      {
        return;
      }

      if (sCUOSLogCreateOnce_logger_2331 != -1)
      {
        dispatch_once(&sCUOSLogCreateOnce_logger_2331, &__block_literal_global_11);
      }

      v7 = sCUOSLogHandle_logger_2332;
      if (os_log_type_enabled(sCUOSLogHandle_logger_2332, OS_LOG_TYPE_DEFAULT))
      {
        if ((0x78FFu >> runState))
        {
          v8 = off_279BB8768[runState];
        }

        else if (runState <= 9)
        {
          v8 = "?";
        }

        else
        {
          v8 = "User";
        }

        v9 = self->super._runState;
        if (v9 < 0xF && ((0x78FFu >> v9) & 1) != 0)
        {
          v10 = off_279BB8768[v9];
        }

        else if (v9 <= 9)
        {
          v10 = "?";
        }

        else
        {
          v10 = "User";
        }

        *buf = 136315394;
        v12 = v8;
        v13 = 2080;
        v14 = v10;
        _os_log_impl(&dword_265B01000, v7, OS_LOG_TYPE_DEFAULT, "State: %s -> %s", buf, 0x16u);
      }
    }

    if (runState)
    {
      if (runState != 11)
      {
        return;
      }

      [(SKSetupBase *)self _connectionStartWithSKConnection:0 clientMode:1 completeOnFailure:1 completion:&__block_literal_global_2330];
      v4 = self->super._runState;
      goto LABEL_15;
    }

    v4 = 11;
LABEL_16:
    self->super._runState = v4;
    goto LABEL_17;
  }
}

- (void)_prepareSteps
{
  v3 = objc_alloc_init(SKStepWiFiSetupClientLegacy);
  [(SKStepWiFiSetupClientLegacy *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepWiFiSetupClientLegacy *)v3 setSkMessaging:self];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SKSetupOSUpdateClient__prepareSteps__block_invoke;
  v4[3] = &unk_279BB8838;
  v4[4] = self;
  v4[5] = v3;
  [(SKStepWiFiSetupClientLegacy *)v3 setSkCompletionHandler:v4];
  [(SKSetupBase *)self _addStep:v3];
}

- (void)_activate
{
  [(SKSetupOSUpdateClient *)self _prepareSteps];
  v3.receiver = self;
  v3.super_class = SKSetupOSUpdateClient;
  [(SKSetupBase *)&v3 _activate];
}

- (SKSetupOSUpdateClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupOSUpdateClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupOSUpdateClient];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end