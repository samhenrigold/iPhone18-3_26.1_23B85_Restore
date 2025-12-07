@interface SVXClientDeviceService
- (SVXClientDeviceService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (void)_beginSetupWithContext:(id)context;
- (void)_endSetup;
- (void)_prepareForSetupWithContext:(id)context completion:(id)completion;
- (void)_updateSetupContext;
- (void)beginSetupWithContext:(id)context;
- (void)clientServiceDidChange:(BOOL)change;
- (void)endSetup;
- (void)prepareForSetupWithContext:(id)context completion:(id)completion;
@end

@implementation SVXClientDeviceService

- (void)_updateSetupContext
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    currentSetupContext = self->_currentSetupContext;
    *buf = 136315394;
    v11 = "[SVXClientDeviceService _updateSetupContext]";
    v12 = 2112;
    v13 = currentSetupContext;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s _currentSetupContext = %@", buf, 0x16u);
  }

  v5 = self->_currentSetupContext;
  clientServiceProvider = self->_clientServiceProvider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SVXClientDeviceService__updateSetupContext__block_invoke;
  v8[3] = &unk_279C67900;
  v9 = v5;
  v7 = v5;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v8 errorHandler:&__block_literal_global_5776];
}

void __45__SVXClientDeviceService__updateSetupContext__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientDeviceService _updateSetupContext]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)_endSetup
{
  currentSetupContext = self->_currentSetupContext;
  self->_currentSetupContext = 0;

  [(SVXClientDeviceService *)self _updateSetupContext];
}

- (void)_beginSetupWithContext:(id)context
{
  v4 = [context copy];
  currentSetupContext = self->_currentSetupContext;
  self->_currentSetupContext = v4;

  [(SVXClientDeviceService *)self _updateSetupContext];
}

- (void)_prepareForSetupWithContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]";
    v19 = 2112;
    v20 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke;
  v14[3] = &unk_279C67F98;
  v15 = contextCopy;
  v16 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_4;
  v12[3] = &unk_279C680E0;
  v13 = v16;
  v10 = v16;
  v11 = contextCopy;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v14 errorHandler:v12];
}

void __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C68E10;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 prepareForDeviceSetupWithContext:v3 completion:v4];
}

void __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]_block_invoke_2";
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s error = %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s flow = %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)endSetup
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[SVXClientDeviceService endSetup]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SVXClientDeviceService_endSetup__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXPerforming *)performer performBlock:v5];
}

- (void)beginSetupWithContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientDeviceService beginSetupWithContext:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SVXClientDeviceService_beginSetupWithContext___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

- (void)prepareForSetupWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXClientDeviceService prepareForSetupWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v12[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke_2;
  v5[3] = &unk_279C67530;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _prepareForSetupWithContext:v3 completion:v5];
}

void __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke_3;
    v9[3] = &unk_279C68EA8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    [v8 performBlock:v9];
  }
}

- (void)clientServiceDidChange:(BOOL)change
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SVXClientDeviceService_clientServiceDidChange___block_invoke;
  v4[3] = &unk_279C681F8;
  changeCopy = change;
  v4[4] = self;
  [(SVXPerforming *)performer performBlock:v4];
}

id *__49__SVXClientDeviceService_clientServiceDidChange___block_invoke(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] _updateSetupContext];
  }

  return result;
}

- (SVXClientDeviceService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  performerCopy = performer;
  v13.receiver = self;
  v13.super_class = SVXClientDeviceService;
  v10 = [(SVXClientDeviceService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, performer);
    objc_storeStrong(&v11->_clientServiceProvider, provider);
  }

  return v11;
}

@end