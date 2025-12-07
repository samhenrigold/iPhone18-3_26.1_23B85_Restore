@interface SVXClientActivationService
- (BOOL)_requestPermissionToActivateWithContext:(id)context;
- (BOOL)_validateButtonEventForActivation:(id)activation;
- (BOOL)_validateSystemEventForActivation:(id)activation;
- (SVXClientActivationService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (SVXClientActivationServiceDelegate)delegate;
- (double)_buttonHoldToTalkThreshold;
- (void)_activateWithContext:(id)context completion:(id)completion;
- (void)_deactivateWithContext:(id)context completion:(id)completion;
- (void)_enqueueButtonEvent:(id)event;
- (void)_performManualEndpointing;
- (void)_preheatTimerArrivedWithToken:(id)token;
- (void)_preheatWithActivationSource:(int64_t)source;
- (void)_prewarmWithContext:(id)context completion:(id)completion;
- (void)_processLastButtonActivationContext;
- (void)_startPreheatTimer;
- (void)_stopPreheatTimer;
- (void)_transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp;
- (void)activateWithButtonEvent:(id)event userInfo:(id)info completion:(id)completion;
- (void)activateWithSystemEvent:(id)event userInfo:(id)info completion:(id)completion;
- (void)activateWithText:(id)text completion:(id)completion;
- (void)activateWithUserInfo:(id)info completion:(id)completion;
- (void)deactivateWithButtonEvent:(id)event userInfo:(id)info options:(id)options completion:(id)completion;
- (void)deactivateWithUserInfo:(id)info completion:(id)completion;
- (void)deactivateWithUserInfo:(id)info options:(id)options completion:(id)completion;
- (void)enqueueButtonEvent:(id)event;
- (void)handleButtonEvent:(id)event;
- (void)handleDidActivateWithContext:(id)context;
- (void)handleDidDeactivateWithContext:(id)context;
- (void)handleDidNotActivateWithContext:(id)context error:(id)error;
- (void)handleRequestPermissionToActivateWithContext:(id)context completion:(id)completion;
- (void)handleWillActivateWithContext:(id)context;
- (void)handleWillDeactivateWithContext:(id)context;
- (void)prewarmForSystemEvent:(id)event completion:(id)completion;
@end

@implementation SVXClientActivationService

- (SVXClientActivationServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_validateSystemEventForActivation:(id)activation
{
  v32 = *MEMORY[0x277D85DE8];
  activationCopy = activation;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v28 = 136315394;
    v29 = "[SVXClientActivationService _validateSystemEventForActivation:]";
    v30 = 2112;
    v31 = activationCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Validating system event %@ for activation...", &v28, 0x16u);
  }

  if (!activationCopy)
  {
    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315138;
      v29 = "[SVXClientActivationService _validateSystemEventForActivation:]";
      _os_log_error_impl(&dword_2695B9000, v13, OS_LOG_TYPE_ERROR, "%s Rejected system event for activation because it is nil.", &v28, 0xCu);
    }

    goto LABEL_14;
  }

  type = [(__CFString *)activationCopy type];
  v7 = 1;
  if (type <= 6)
  {
    if ((type - 1) < 3)
    {
      goto LABEL_25;
    }
  }

  else if (type > 11)
  {
    if (type == 12)
    {
      goto LABEL_25;
    }

    if (type == 13)
    {
      speechSynthesisRequest = [(__CFString *)activationCopy speechSynthesisRequest];

      if (!speechSynthesisRequest)
      {
        v15 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v10 = v15;
          type2 = [(__CFString *)activationCopy type];
          if (type2 > 0xD)
          {
            v17 = @"(unknown)";
          }

          else
          {
            v17 = off_279C68068[type2];
          }

          v26 = v17;
          v28 = 136315394;
          v29 = "[SVXClientActivationService _validateSystemEventForActivation:]";
          v30 = 2112;
          v31 = v26;
          v27 = "%s Rejected system event for activation because the type is %@, but speechSynthesisRequest is nil.";
          goto LABEL_40;
        }

        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (type == 7)
    {
      deviceSetupFlowScene = [(__CFString *)activationCopy deviceSetupFlowScene];

      if (!deviceSetupFlowScene)
      {
        v23 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v10 = v23;
          type3 = [(__CFString *)activationCopy type];
          if (type3 > 0xD)
          {
            v25 = @"(unknown)";
          }

          else
          {
            v25 = off_279C68068[type3];
          }

          v26 = v25;
          v28 = 136315394;
          v29 = "[SVXClientActivationService _validateSystemEventForActivation:]";
          v30 = 2112;
          v31 = v26;
          v27 = "%s Rejected system event for activation because the type is %@, but the deviceSetupFlowScene is nil.";
          goto LABEL_40;
        }

        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (type == 8)
    {
      storeDemo = [(__CFString *)activationCopy storeDemo];

      if (!storeDemo)
      {
        v9 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          type4 = [(__CFString *)activationCopy type];
          if (type4 > 0xD)
          {
            v12 = @"(unknown)";
          }

          else
          {
            v12 = off_279C68068[type4];
          }

          v26 = v12;
          v28 = 136315394;
          v29 = "[SVXClientActivationService _validateSystemEventForActivation:]";
          v30 = 2112;
          v31 = v26;
          v27 = "%s Rejected system event for activation because the type is %@, but the storeDemo is nil.";
LABEL_40:
          _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, v27, &v28, 0x16u);

          goto LABEL_14;
        }

        goto LABEL_14;
      }

LABEL_24:
      v7 = 1;
      goto LABEL_25;
    }
  }

  v20 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    v10 = v20;
    type5 = [(__CFString *)activationCopy type];
    if (type5 > 0xD)
    {
      v22 = @"(unknown)";
    }

    else
    {
      v22 = off_279C68068[type5];
    }

    v26 = v22;
    v28 = 136315394;
    v29 = "[SVXClientActivationService _validateSystemEventForActivation:]";
    v30 = 2112;
    v31 = v26;
    v27 = "%s Rejected system event for activation because the type is %@.";
    goto LABEL_40;
  }

LABEL_14:
  v7 = 0;
LABEL_25:

  return v7;
}

- (BOOL)_validateButtonEventForActivation:(id)activation
{
  v20 = *MEMORY[0x277D85DE8];
  activationCopy = activation;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[SVXClientActivationService _validateButtonEventForActivation:]";
    v18 = 2112;
    v19 = activationCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Validating button event %@ for activation...", &v16, 0x16u);
  }

  if (!activationCopy)
  {
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[SVXClientActivationService _validateButtonEventForActivation:]";
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Rejected button event for activation because it is nil.", &v16, 0xCu);
    }

    goto LABEL_13;
  }

  if ([(__CFString *)activationCopy type]!= 1)
  {
    v8 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v6 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    type = [(__CFString *)activationCopy type];
    if (type > 2)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68050[type];
    }

    v14 = v11;
    v16 = 136315394;
    v17 = "[SVXClientActivationService _validateButtonEventForActivation:]";
    v18 = 2112;
    v19 = v14;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Rejected button event for activation because the type is %@.", &v16, 0x16u);

LABEL_18:
    goto LABEL_13;
  }

  if (![(__CFString *)activationCopy timestamp])
  {
    v12 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v9 = v12;
    timestamp = [(__CFString *)activationCopy timestamp];
    v16 = 136315394;
    v17 = "[SVXClientActivationService _validateButtonEventForActivation:]";
    v18 = 2048;
    v19 = timestamp;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Rejected button event for activation because the timestamp is %llu.", &v16, 0x16u);
    goto LABEL_18;
  }

  v6 = 1;
LABEL_14:

  return v6;
}

- (double)_buttonHoldToTalkThreshold
{
  if (_buttonHoldToTalkThreshold_onceToken != -1)
  {
    dispatch_once(&_buttonHoldToTalkThreshold_onceToken, &__block_literal_global_21_6218);
  }

  return *&_buttonHoldToTalkThreshold_threshold;
}

void __56__SVXClientActivationService__buttonHoldToTalkThreshold__block_invoke()
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v0 = [v2 manualEndpointingThreshold];
  [v0 doubleValue];
  _buttonHoldToTalkThreshold_threshold = v1;
}

- (void)_preheatTimerArrivedWithToken:(id)token
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(NSUUID *)self->_preheatToken isEqual:token])
  {
    preheatToken = self->_preheatToken;
    self->_preheatToken = 0;

    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SVXClientActivationService _preheatTimerArrivedWithToken:]";
      _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Preheat timer fired!", &v6, 0xCu);
    }

    [(SVXClientActivationService *)self _preheatWithActivationSource:1];
  }
}

- (void)_stopPreheatTimer
{
  v7 = *MEMORY[0x277D85DE8];
  preheatToken = self->_preheatToken;
  if (preheatToken)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SVXClientActivationService _stopPreheatTimer]";
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Stopped preheat timer.", &v5, 0xCu);
      preheatToken = self->_preheatToken;
    }

    self->_preheatToken = 0;
  }
}

- (void)_startPreheatTimer
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_preheatToken)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
    preheatToken = self->_preheatToken;
    self->_preheatToken = v3;

    [(SVXClientActivationService *)self _buttonHoldToPreheatThreshold];
    v6 = v5;
    performer = self->_performer;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SVXClientActivationService__startPreheatTimer__block_invoke;
    v10[3] = &unk_279C68FE8;
    v10[4] = self;
    v8 = v3;
    v11 = v8;
    [(SVXPerforming *)performer performBlock:v10 afterDelay:v6];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[SVXClientActivationService _startPreheatTimer]";
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Started preheat timer for %f seconds.", buf, 0x16u);
    }
  }
}

- (void)_preheatWithActivationSource:(int64_t)source
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[SVXClientActivationService _preheatWithActivationSource:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SVXClientActivationService__preheatWithActivationSource___block_invoke;
  v7[3] = &__block_descriptor_40_e28_v16__0___SVXClientService__8l;
  v7[4] = source;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v7 errorHandler:&__block_literal_global_18_6226];
}

void __59__SVXClientActivationService__preheatWithActivationSource___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientActivationService _preheatWithActivationSource:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)_transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[SVXClientActivationService _transitToAutomaticEndpointingWithTimestamp:]";
    v11 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Endpoint trigger timestamp = %lld", buf, 0x16u);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SVXClientActivationService__transitToAutomaticEndpointingWithTimestamp___block_invoke;
  v8[3] = &__block_descriptor_40_e28_v16__0___SVXClientService__8l;
  v8[4] = timestamp;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SVXClientActivationService__transitToAutomaticEndpointingWithTimestamp___block_invoke_2;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = timestamp;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v8 errorHandler:v7];
}

void __74__SVXClientActivationService__transitToAutomaticEndpointingWithTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[SVXClientActivationService _transitToAutomaticEndpointingWithTimestamp:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    v10 = 2048;
    v11 = v5;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@, Endpoint trigger timestamp = %lld", &v6, 0x20u);
  }
}

- (void)_performManualEndpointing
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SVXClientActivationService _performManualEndpointing]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(SVXClientServiceProviding *)self->_clientServiceProvider getClientServiceUsingBlock:&__block_literal_global_6234 errorHandler:&__block_literal_global_15];
}

void __55__SVXClientActivationService__performManualEndpointing__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientActivationService _performManualEndpointing]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)_deactivateWithContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[SVXClientActivationService _deactivateWithContext:completion:]";
    v19 = 2112;
    v20 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  [(SVXClientActivationService *)self _stopPreheatTimer];
  clientServiceProvider = self->_clientServiceProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke;
  v14[3] = &unk_279C67F98;
  v15 = contextCopy;
  v16 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_13;
  v12[3] = &unk_279C680E0;
  v13 = v16;
  v10 = v16;
  v11 = contextCopy;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v14 errorHandler:v12];
}

void __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v6 = v4;
  v7 = *(a1 + 40);
  [a2 deactivateWithContext:v6 completion:v5];
}

void __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientActivationService _deactivateWithContext:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __64__SVXClientActivationService__deactivateWithContext_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SVXClientActivationService _deactivateWithContext:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s done (context = %@)", &v5, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_activateWithContext:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SVXClientActivationService _activateWithContext:completion:]";
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  [(SVXClientActivationService *)self _stopPreheatTimer];
  clientServiceProvider = self->_clientServiceProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke;
  v14[3] = &unk_279C675A0;
  v15 = contextCopy;
  selfCopy = self;
  v17 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke_12;
  v12[3] = &unk_279C680E0;
  v13 = v17;
  v10 = v17;
  v11 = contextCopy;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v14 errorHandler:v12];
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke_2;
  v6[3] = &unk_279C68360;
  v7 = v4;
  v5 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v5;
  [a2 activateWithContext:v7 completion:v6];
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientActivationService _activateWithContext:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v16 = "[SVXClientActivationService _activateWithContext:completion:]_block_invoke_2";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s done (context = %@, error = %@)", buf, 0x20u);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *(*(a1 + 40) + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SVXClientActivationService__activateWithContext_completion___block_invoke_11;
  v11[3] = &unk_279C68ED0;
  v12 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v10 = v3;
  [v7 performBlock:v11];
}

void __62__SVXClientActivationService__activateWithContext_completion___block_invoke_11(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) && [*(a1 + 40) source] == 1)
  {
    v2 = [*(a1 + 40) buttonEvent];
    v3 = [v2 type];

    if (v3 == 1)
    {
      v4 = [*(a1 + 40) copy];
      v5 = *(a1 + 48);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 48) + 40);
        v9 = 136315394;
        v10 = "[SVXClientActivationService _activateWithContext:completion:]_block_invoke";
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s _lastButtonActivationContext = %@", &v9, 0x16u);
      }

      [*(a1 + 48) _processLastButtonActivationContext];
    }
  }
}

- (void)_prewarmWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  clientServiceProvider = self->_clientServiceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke;
  v13[3] = &unk_279C67F98;
  v14 = contextCopy;
  v15 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_3;
  v11[3] = &unk_279C680E0;
  v12 = v15;
  v9 = v15;
  v10 = contextCopy;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v13 errorHandler:v11];
}

void __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C68220;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 prewarmWithContext:v3 completion:v4];
}

void __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientActivationService _prewarmWithContext:completion:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __61__SVXClientActivationService__prewarmWithContext_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_requestPermissionToActivateWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[SVXClientActivationService _requestPermissionToActivateWithContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 clientActivationService:self shouldActivateWithContext:contextCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_processLastButtonActivationContext
{
  v54 = *MEMORY[0x277D85DE8];
  lastButtonActivationContext = self->_lastButtonActivationContext;
  if (lastButtonActivationContext)
  {
    if ([(SVXActivationContext *)lastButtonActivationContext source]== 1)
    {
      buttonEvent = [(SVXActivationContext *)self->_lastButtonActivationContext buttonEvent];
      if ([(NSMutableArray *)buttonEvent type]== 1)
      {
        timestamp = [(NSMutableArray *)buttonEvent timestamp];
        if (timestamp)
        {
          v6 = timestamp;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v7 = self->_queuedButtonEvents;
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v8)
          {
            v9 = v8;
            v40 = buttonEvent;
            timestamp3 = 0;
            v11 = 0;
            v12 = *v42;
LABEL_7:
            v13 = 0;
            while (1)
            {
              if (*v42 != v12)
              {
                objc_enumerationMutation(v7);
              }

              v14 = *(*(&v41 + 1) + 8 * v13);
              timestamp2 = [v14 timestamp];
              if (timestamp2 < v6)
              {
                break;
              }

              v16 = timestamp2;
              type = [v14 type];
              if (type == 2)
              {
                v19 = v14;

                timestamp3 = [v19 timestamp];
                v20 = *MEMORY[0x277CEF098];
                if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
                  v47 = 2048;
                  v48 = *&timestamp3;
                  _os_log_debug_impl(&dword_2695B9000, v20, OS_LOG_TYPE_DEBUG, "%s queuedButtonEvent: button up, timestamp = %lld", buf, 0x16u);
                }

                v11 = v19;
              }

              else if (type == 1)
              {
                v18 = *MEMORY[0x277CEF098];
                if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
                  v47 = 2048;
                  v48 = *&v16;
                  _os_log_debug_impl(&dword_2695B9000, v18, OS_LOG_TYPE_DEBUG, "%s queuedButtonEvent: button down, timestamp = %lld", buf, 0x16u);
                }

                if (v16 == v6)
                {
                  break;
                }
              }

              if (v9 == ++v13)
              {
                v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v53 count:16];
                if (v9)
                {
                  goto LABEL_7;
                }

                break;
              }
            }

            buttonEvent = v40;
            if (v11)
            {
              v21 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
              {
                v22 = self->_lastButtonActivationContext;
                *buf = 136315906;
                v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
                v47 = 2112;
                v48 = *&v11;
                v49 = 2112;
                v50 = v40;
                v51 = 2112;
                v52 = v22;
                _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s Matched button up event %@ for button down event %@ of last button activation context %@.", buf, 0x2Au);
              }

              -[SVXClientActivationService _timeIntervalBetweenButtonUpTime:lastActivationButtonTime:](self, "_timeIntervalBetweenButtonUpTime:lastActivationButtonTime:", [v11 timestamp], v6);
              v24 = v23;
              v25 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
                v47 = 2048;
                v48 = v24;
                _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s buttonHoldDuration = %f", buf, 0x16u);
              }

              [(SVXClientActivationService *)self _buttonHoldToTalkThreshold];
              if (v24 <= v26)
              {
                [(SVXClientActivationService *)self _transitToAutomaticEndpointingWithTimestamp:timestamp3];
              }

              else
              {
                [(SVXClientActivationService *)self _performManualEndpointing];
              }

              v37 = self->_lastButtonActivationContext;
              self->_lastButtonActivationContext = 0;

              [(AFAnalytics *)self->_analytics logEventWithType:1410 machAbsoluteTime:v6 context:0];
              [(AFAnalytics *)self->_analytics logEventWithType:1411 machAbsoluteTime:timestamp3 context:0];

              goto LABEL_43;
            }
          }

          else
          {
          }

          v34 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            queuedButtonEvents = self->_queuedButtonEvents;
            v35 = self->_lastButtonActivationContext;
            *buf = 136315650;
            v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
            v47 = 2112;
            v48 = *&v35;
            v49 = 2112;
            v50 = queuedButtonEvents;
            _os_log_error_impl(&dword_2695B9000, v34, OS_LOG_TYPE_ERROR, "%s Ignored because no matching button up event can be found in the button event queue. (_lastButtonActivationContext = %@, _queuedButtonEvents = %@)", buf, 0x20u);
          }

          goto LABEL_43;
        }

        v30 = *MEMORY[0x277CEF098];
        if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
LABEL_37:
          v33 = self->_lastButtonActivationContext;
          self->_lastButtonActivationContext = 0;

LABEL_43:
          return;
        }

        v39 = self->_lastButtonActivationContext;
        *buf = 136315394;
        v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
        v47 = 2112;
        v48 = *&v39;
        v32 = "%s Ignored because the timestamp of the button event in last button activation context is 0. (_lastButtonActivationContext = %@)";
      }

      else
      {
        v30 = *MEMORY[0x277CEF098];
        if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        v31 = self->_lastButtonActivationContext;
        *buf = 136315394;
        v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
        v47 = 2112;
        v48 = *&v31;
        v32 = "%s Ignored because the type of the button event in last button activation context is not down. (_lastButtonActivationContext = %@)";
      }

      _os_log_error_impl(&dword_2695B9000, v30, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
      goto LABEL_37;
    }

    v28 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v38 = self->_lastButtonActivationContext;
      *buf = 136315394;
      v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
      v47 = 2112;
      v48 = *&v38;
      _os_log_error_impl(&dword_2695B9000, v28, OS_LOG_TYPE_ERROR, "%s Ignored because the source of the last button activation context is not button. (_lastButtonActivationContext = %@)", buf, 0x16u);
    }

    v29 = self->_lastButtonActivationContext;
    self->_lastButtonActivationContext = 0;
  }

  else
  {
    v27 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[SVXClientActivationService _processLastButtonActivationContext]";
      _os_log_impl(&dword_2695B9000, v27, OS_LOG_TYPE_INFO, "%s Ignored because the last button activation context is nil.", buf, 0xCu);
    }
  }
}

- (void)_enqueueButtonEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    type = [eventCopy type];
    if (type > 2)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C68050[type];
    }

    v9 = v8;
    *buf = 136315650;
    *&buf[4] = "[SVXClientActivationService _enqueueButtonEvent:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    timestamp = [eventCopy timestamp];
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s type = %@, timestamp = %llu", buf, 0x20u);
  }

  queuedButtonEvents = self->_queuedButtonEvents;
  if (!queuedButtonEvents)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    v12 = self->_queuedButtonEvents;
    self->_queuedButtonEvents = v11;

    queuedButtonEvents = self->_queuedButtonEvents;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  timestamp = 0x7FFFFFFFFFFFFFFFLL;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __50__SVXClientActivationService__enqueueButtonEvent___block_invoke;
  v19 = &unk_279C67578;
  v13 = eventCopy;
  v20 = v13;
  v21 = buf;
  [(NSMutableArray *)queuedButtonEvents enumerateObjectsUsingBlock:&v16];
  v14 = self->_queuedButtonEvents;
  if (*(*&buf[8] + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v14 addObject:v13, v16, v17, v18, v19];
  }

  else
  {
    [(NSMutableArray *)v14 insertObject:v13 atIndex:v16, v17, v18, v19];
  }

  if ([(NSMutableArray *)self->_queuedButtonEvents count]>= 0x11)
  {
    [(NSMutableArray *)self->_queuedButtonEvents removeLastObject];
  }

  [(SVXClientActivationService *)self _stopPreheatTimer];
  type2 = [v13 type];
  if (type2 == 2)
  {
    [(SVXClientActivationService *)self _processLastButtonActivationContext];
  }

  else if (type2 == 1)
  {
    [(SVXClientActivationService *)self _startPreheatTimer];
  }

  _Block_object_dispose(buf, 8);
}

void __50__SVXClientActivationService__enqueueButtonEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 timestamp];
  v10 = [v8 timestamp];

  if (v9 > v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)deactivateWithButtonEvent:(id)event userInfo:(id)info options:(id)options completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  infoCopy = info;
  optionsCopy = options;
  completionCopy = completion;
  v14 = mach_absolute_time();
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[SVXClientActivationService deactivateWithButtonEvent:userInfo:options:completion:]";
    v27 = 2112;
    v28 = eventCopy;
    v29 = 2112;
    v30 = infoCopy;
    v31 = 2112;
    v32 = optionsCopy;
    _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s buttonEvent = %@, userInfo = %@, options = %@", buf, 0x2Au);
  }

  v16 = [SVXDeactivationContext alloc];
  v17 = SVXClientInfoGetCurrent();
  v18 = [(SVXDeactivationContext *)v16 initWithSource:1 timestamp:v14 buttonEvent:eventCopy clientInfo:v17 userInfo:infoCopy options:optionsCopy];

  performer = self->_performer;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke;
  v22[3] = &unk_279C68EA8;
  v22[4] = self;
  v23 = v18;
  v24 = completionCopy;
  v20 = completionCopy;
  v21 = v18;
  [(SVXPerforming *)performer performBlock:v22];
}

void __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deactivateWithContext:v3 completion:v5];
}

void __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __84__SVXClientActivationService_deactivateWithButtonEvent_userInfo_options_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)deactivateWithUserInfo:(id)info options:(id)options completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  optionsCopy = options;
  completionCopy = completion;
  v11 = mach_absolute_time();
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXClientActivationService deactivateWithUserInfo:options:completion:]";
    v24 = 2112;
    v25 = infoCopy;
    v26 = 2112;
    v27 = optionsCopy;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s userInfo = %@, options = %@", buf, 0x20u);
  }

  v13 = [SVXDeactivationContext alloc];
  v14 = SVXClientInfoGetCurrent();
  v15 = [(SVXDeactivationContext *)v13 initWithSource:2 timestamp:v11 buttonEvent:0 clientInfo:v14 userInfo:infoCopy options:optionsCopy];

  performer = self->_performer;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke;
  v19[3] = &unk_279C68EA8;
  v19[4] = self;
  v20 = v15;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = v15;
  [(SVXPerforming *)performer performBlock:v19];
}

void __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deactivateWithContext:v3 completion:v5];
}

void __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __72__SVXClientActivationService_deactivateWithUserInfo_options_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)deactivateWithUserInfo:(id)info completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v24 = "[SVXClientActivationService deactivateWithUserInfo:completion:]";
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Deprecated. Please use -deactivateWithUserInfo:options:completion: or -deactiateWithButtonEvent:userInfo:options:completion:", buf, 0xCu);
  }

  v10 = mach_absolute_time();
  v11 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[SVXClientActivationService deactivateWithUserInfo:completion:]";
    v25 = 2112;
    v26 = infoCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  v12 = [infoCopy objectForKey:@"deactivationSource"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v12 integerValue] == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 2;
  }

  v14 = [SVXDeactivationContext alloc];
  v15 = SVXClientInfoGetCurrent();
  v16 = [(SVXDeactivationContext *)v14 initWithSource:v13 timestamp:v10 buttonEvent:0 clientInfo:v15 userInfo:infoCopy options:0];

  performer = self->_performer;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke;
  v20[3] = &unk_279C68EA8;
  v20[4] = self;
  v21 = v16;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = v16;
  [(SVXPerforming *)performer performBlock:v20];
}

void __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _deactivateWithContext:v3 completion:v5];
}

void __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __64__SVXClientActivationService_deactivateWithUserInfo_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)activateWithSystemEvent:(id)event userInfo:(id)info completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  infoCopy = info;
  completionCopy = completion;
  v11 = mach_absolute_time();
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[SVXClientActivationService activateWithSystemEvent:userInfo:completion:]";
    v23 = 2112;
    v24 = eventCopy;
    v25 = 2112;
    v26 = infoCopy;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s systemEvent = %@, userInfo = %@", buf, 0x20u);
  }

  if ([(SVXClientActivationService *)self _validateSystemEventForActivation:eventCopy])
  {
    v13 = [SVXActivationContext alloc];
    v14 = SVXClientInfoGetCurrent();
    v15 = [(SVXActivationContext *)v13 initWithSource:5 timestamp:v11 buttonEvent:0 systemEvent:eventCopy clientInfo:v14 requestInfo:0 userInfo:infoCopy];

    performer = self->_performer;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke;
    v18[3] = &unk_279C68EA8;
    v18[4] = self;
    v19 = v15;
    v20 = completionCopy;
    v17 = v15;
    [(SVXPerforming *)performer performBlock:v18];
  }
}

void __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__SVXClientActivationService_activateWithSystemEvent_userInfo_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)prewarmForSystemEvent:(id)event completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  v8 = mach_absolute_time();
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SVXClientActivationService prewarmForSystemEvent:completion:]";
    v20 = 2112;
    v21 = eventCopy;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s systemEvent = %@", buf, 0x16u);
  }

  if ([(SVXClientActivationService *)self _validateSystemEventForActivation:eventCopy])
  {
    v10 = [SVXActivationContext alloc];
    v11 = SVXClientInfoGetCurrent();
    v12 = [(SVXActivationContext *)v10 initWithSource:5 timestamp:v8 buttonEvent:0 systemEvent:eventCopy clientInfo:v11 requestInfo:0 userInfo:0];

    performer = self->_performer;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke;
    v15[3] = &unk_279C68EA8;
    v15[4] = self;
    v16 = v12;
    v17 = completionCopy;
    v14 = v12;
    [(SVXPerforming *)performer performBlock:v15];
  }
}

void __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke_2;
  v5[3] = &unk_279C68EF8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _prewarmWithContext:v3 completion:v5];
}

void __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __63__SVXClientActivationService_prewarmForSystemEvent_completion___block_invoke_3;
    v3[3] = &unk_279C68220;
    v4 = v1;
    [v2 performBlock:v3];
  }
}

- (void)activateWithButtonEvent:(id)event userInfo:(id)info completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  infoCopy = info;
  completionCopy = completion;
  v11 = mach_absolute_time();
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[SVXClientActivationService activateWithButtonEvent:userInfo:completion:]";
    v23 = 2112;
    v24 = eventCopy;
    v25 = 2112;
    v26 = infoCopy;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s buttonEvent = %@, userInfo = %@", buf, 0x20u);
  }

  if ([(SVXClientActivationService *)self _validateButtonEventForActivation:eventCopy])
  {
    v13 = [SVXActivationContext alloc];
    v14 = SVXClientInfoGetCurrent();
    v15 = [(SVXActivationContext *)v13 initWithSource:1 timestamp:v11 buttonEvent:eventCopy systemEvent:0 clientInfo:v14 requestInfo:0 userInfo:infoCopy];

    performer = self->_performer;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke;
    v18[3] = &unk_279C68EA8;
    v18[4] = self;
    v19 = v15;
    v20 = completionCopy;
    v17 = v15;
    [(SVXPerforming *)performer performBlock:v18];
  }
}

void __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__SVXClientActivationService_activateWithButtonEvent_userInfo_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)activateWithText:(id)text completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  textCopy = text;
  completionCopy = completion;
  v8 = mach_absolute_time();
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[SVXClientActivationService activateWithText:completion:]";
    v22 = 2112;
    v23 = textCopy;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s text = %@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CEF378]);
  [v10 setText:textCopy];
  v11 = [SVXActivationContext alloc];
  v12 = SVXClientInfoGetCurrent();
  v13 = [(SVXActivationContext *)v11 initWithSource:2 timestamp:v8 buttonEvent:0 systemEvent:0 clientInfo:v12 requestInfo:v10 userInfo:0];

  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__SVXClientActivationService_activateWithText_completion___block_invoke;
  v17[3] = &unk_279C68EA8;
  v17[4] = self;
  v18 = v13;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = v13;
  [(SVXPerforming *)performer performBlock:v17];
}

void __58__SVXClientActivationService_activateWithText_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__SVXClientActivationService_activateWithText_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __58__SVXClientActivationService_activateWithText_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__SVXClientActivationService_activateWithText_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)activateWithUserInfo:(id)info completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  v8 = mach_absolute_time();
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[SVXClientActivationService activateWithUserInfo:completion:]";
    v21 = 2112;
    v22 = infoCopy;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  v10 = [SVXActivationContext alloc];
  v11 = SVXClientInfoGetCurrent();
  v12 = [(SVXActivationContext *)v10 initWithSource:2 timestamp:v8 buttonEvent:0 systemEvent:0 clientInfo:v11 requestInfo:0 userInfo:infoCopy];

  performer = self->_performer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke;
  v16[3] = &unk_279C68EA8;
  v16[4] = self;
  v17 = v12;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v12;
  [(SVXPerforming *)performer performBlock:v16];
}

void __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke_2;
    v5[3] = &unk_279C68310;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v2 _activateWithContext:v3 completion:v5];
  }
}

void __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SVXClientActivationService_activateWithUserInfo_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)enqueueButtonEvent:(id)event
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = mach_absolute_time();
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[SVXClientActivationService enqueueButtonEvent:]";
    v31 = 2112;
    v32 = eventCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s buttonEvent = %@", buf, 0x16u);
  }

  type = [eventCopy type];
  if (type == 2)
  {
    timestamp = [eventCopy timestamp];
    if (timestamp)
    {
      v18 = timestamp;
    }

    else
    {
      v18 = v5;
    }

    v19 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[SVXClientActivationService enqueueButtonEvent:]";
      v31 = 2048;
      v32 = v18;
      _os_log_debug_impl(&dword_2695B9000, v19, OS_LOG_TYPE_DEBUG, "%s SVXButtonEventTypeUp: time = %lld", buf, 0x16u);
    }

    analytics = self->_analytics;
    timestamp2 = [eventCopy timestamp];
    if (timestamp2)
    {
      v14 = timestamp2;
    }

    else
    {
      v14 = v18;
    }

    v15 = analytics;
    v16 = 1411;
    goto LABEL_23;
  }

  if (type == 1)
  {
    timestamp3 = [eventCopy timestamp];
    if (timestamp3)
    {
      v10 = timestamp3;
    }

    else
    {
      v10 = v5;
    }

    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[SVXClientActivationService enqueueButtonEvent:]";
      v31 = 2048;
      v32 = v10;
      _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s SVXButtonEventTypeDown: time = %lld", buf, 0x16u);
    }

    v12 = self->_analytics;
    timestamp4 = [eventCopy timestamp];
    if (timestamp4)
    {
      v14 = timestamp4;
    }

    else
    {
      v14 = v10;
    }

    v15 = v12;
    v16 = 1410;
LABEL_23:
    [(AFAnalytics *)v15 logEventWithType:v16 machAbsoluteTime:v14 context:0];
    goto LABEL_26;
  }

  v22 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v25 = v22;
    type2 = [eventCopy type];
    *buf = 136315394;
    v30 = "[SVXClientActivationService enqueueButtonEvent:]";
    v31 = 2048;
    v32 = type2;
    _os_log_debug_impl(&dword_2695B9000, v25, OS_LOG_TYPE_DEBUG, "%s Unspecified or unknown button event = %ld", buf, 0x16u);
  }

LABEL_26:
  performer = self->_performer;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__SVXClientActivationService_enqueueButtonEvent___block_invoke;
  v27[3] = &unk_279C68FE8;
  v27[4] = self;
  v28 = eventCopy;
  v24 = eventCopy;
  [(SVXPerforming *)performer performBlock:v27];
}

- (void)handleButtonEvent:(id)event
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[SVXClientActivationService handleButtonEvent:]";
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s This SPI has been deprecated, please use -enqueueButtonEvent: instead.", &v4, 0xCu);
  }
}

- (void)handleDidDeactivateWithContext:(id)context
{
  contextCopy = context;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SVXClientActivationService_handleDidDeactivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

void __61__SVXClientActivationService_handleDidDeactivateWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) didDeactivateWithContext:*(a1 + 40)];
}

- (void)handleWillDeactivateWithContext:(id)context
{
  contextCopy = context;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SVXClientActivationService_handleWillDeactivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

void __62__SVXClientActivationService_handleWillDeactivateWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) willDeactivateWithContext:*(a1 + 40)];
}

- (void)handleDidNotActivateWithContext:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SVXClientActivationService_handleDidNotActivateWithContext_error___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = contextCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = contextCopy;
  [(SVXPerforming *)performer performBlock:v11];
}

void __68__SVXClientActivationService_handleDidNotActivateWithContext_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPreheatTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) didNotActivateWithContext:*(a1 + 40) error:*(a1 + 48)];
}

- (void)handleDidActivateWithContext:(id)context
{
  contextCopy = context;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SVXClientActivationService_handleDidActivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

void __59__SVXClientActivationService_handleDidActivateWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPreheatTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) didActivateWithContext:*(a1 + 40)];
}

- (void)handleWillActivateWithContext:(id)context
{
  contextCopy = context;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SVXClientActivationService_handleWillActivateWithContext___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

void __60__SVXClientActivationService_handleWillActivateWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPreheatTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained clientActivationService:*(a1 + 32) willActivateWithContext:*(a1 + 40)];
}

- (void)handleRequestPermissionToActivateWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SVXClientActivationService_handleRequestPermissionToActivateWithContext_completion___block_invoke;
  v11[3] = &unk_279C68EA8;
  v11[4] = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  [(SVXPerforming *)performer performBlock:v11];
}

uint64_t __86__SVXClientActivationService_handleRequestPermissionToActivateWithContext_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _requestPermissionToActivateWithContext:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (SVXClientActivationService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  analyticsCopy = analytics;
  performerCopy = performer;
  v15.receiver = self;
  v15.super_class = SVXClientActivationService;
  v12 = [(SVXClientActivationService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_performer, performer);
    objc_storeStrong(&v13->_clientServiceProvider, provider);
    objc_storeStrong(&v13->_analytics, analytics);
  }

  return v13;
}

@end