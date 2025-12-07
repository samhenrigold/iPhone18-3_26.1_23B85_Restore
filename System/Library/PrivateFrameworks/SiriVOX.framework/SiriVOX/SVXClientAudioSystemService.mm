@interface SVXClientAudioSystemService
- (SVXClientAudioSystemService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (SVXClientAudioSystemServiceDelegate)delegate;
- (void)handleAudioSessionDidBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext;
- (void)handleAudioSessionIDDidChange:(unsigned int)change;
- (void)handleAudioSessionWillBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext;
@end

@implementation SVXClientAudioSystemService

- (SVXClientAudioSystemServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SVXClientAudioSystemService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  performerCopy = performer;
  v13.receiver = self;
  v13.super_class = SVXClientAudioSystemService;
  v10 = [(SVXClientAudioSystemService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, performer);
    objc_storeStrong(&v11->_clientServiceProvider, provider);
  }

  return v11;
}

- (void)handleAudioSessionIDDidChange:(unsigned int)change
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SVXClientAudioSystemService_handleAudioSessionIDDidChange___block_invoke;
  v4[3] = &unk_279C69128;
  v4[4] = self;
  changeCopy = change;
  [(SVXPerforming *)performer performBlock:v4];
}

void __61__SVXClientAudioSystemService_handleAudioSessionIDDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 audioSystemService:*(a1 + 32) audioSessionIDDidChange:*(a1 + 40)];
  }
}

- (void)handleAudioSessionDidBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext
{
  contextCopy = context;
  deactivationContextCopy = deactivationContext;
  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__SVXClientAudioSystemService_handleAudioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke;
  v13[3] = &unk_279C69100;
  activeCopy = active;
  v14 = contextCopy;
  v15 = deactivationContextCopy;
  selfCopy = self;
  v11 = deactivationContextCopy;
  v12 = contextCopy;
  [(SVXPerforming *)performer performBlock:v13];
}

void __103__SVXClientAudioSystemService_handleAudioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v19 = 136315906;
    v20 = "[SVXClientAudioSystemService handleAudioSessionDidBecomeActive:activationContext:deactivationContext:]_block_invoke";
    v21 = 1024;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s flag = %d, activationContext = %@, deactivationContext = %@", &v19, 0x26u);
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 24);
  v9 = *(a1 + 56);
  if (v8 == v9)
  {
    v10 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[SVXClientAudioSystemService handleAudioSessionDidBecomeActive:activationContext:deactivationContext:]_block_invoke";
      v21 = 1024;
      v22 = v8;
      _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, "%s _isAudioSessionActive = %d, no need to deliver the delegate callbacka again.", &v19, 0x12u);
    }
  }

  else
  {
    *(v7 + 24) = v9;
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v13 audioSystemService:*(a1 + 48) audioSessionDidBecomeActive:*(a1 + 56)];
    }

    v14 = *(a1 + 56);
    v15 = objc_loadWeakRetained((*(a1 + 48) + 32));
    if (v14 == 1)
    {
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        return;
      }

      v17 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v17 audioSystemService:*(a1 + 48) audioSessionDidBecomeActiveWithActivationContext:*(a1 + 32)];
    }

    else
    {
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        return;
      }

      v17 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v17 audioSystemService:*(a1 + 48) audioSessionDidBecomeInactiveWithDeactivationContext:*(a1 + 40)];
    }
  }
}

- (void)handleAudioSessionWillBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext
{
  contextCopy = context;
  deactivationContextCopy = deactivationContext;
  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__SVXClientAudioSystemService_handleAudioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke;
  v13[3] = &unk_279C69100;
  activeCopy = active;
  v14 = contextCopy;
  v15 = deactivationContextCopy;
  selfCopy = self;
  v11 = deactivationContextCopy;
  v12 = contextCopy;
  [(SVXPerforming *)performer performBlock:v13];
}

void __104__SVXClientAudioSystemService_handleAudioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14 = 136315906;
    v15 = "[SVXClientAudioSystemService handleAudioSessionWillBecomeActive:activationContext:deactivationContext:]_block_invoke";
    v16 = 1024;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s flag = %d, activationContext = %@, deactivationContext = %@", &v14, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained((*(a1 + 48) + 32));
    [v8 audioSystemService:*(a1 + 48) audioSessionWillBecomeActive:*(a1 + 56)];
  }

  v9 = *(a1 + 56);
  v10 = objc_loadWeakRetained((*(a1 + 48) + 32));
  if (v9 == 1)
  {
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v12 = objc_loadWeakRetained((*(a1 + 48) + 32));
    [v12 audioSystemService:*(a1 + 48) audioSessionWillBecomeActiveWithActivationContext:*(a1 + 32)];
  }

  else
  {
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      return;
    }

    v12 = objc_loadWeakRetained((*(a1 + 48) + 32));
    [v12 audioSystemService:*(a1 + 48) audioSessionWillBecomeInactiveWithDeactivationContext:*(a1 + 40)];
  }
}

@end