@interface SVXClientServiceServerConnection
- (NSString)description;
- (SVXClientServiceServerConnection)initWithXPCConnection:(id)connection performer:(id)performer delegate:(id)delegate;
- (void)_cleanUpXPCConnection;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)_performBlockAfterConfigure:(id)configure;
- (void)activateWithContext:(id)context completion:(id)completion;
- (void)audioPowerDidEndUpdateForType:(int64_t)type;
- (void)audioPowerWillBeginUpdateForType:(int64_t)type wrapper:(id)wrapper;
- (void)audioSessionDidBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext;
- (void)audioSessionWillBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext;
- (void)cancelPendingSpeechSynthesisRequest:(id)request;
- (void)configureWithDeviceSetupManager:(id)manager sessionManager:(id)sessionManager speechSynthesizer:(id)synthesizer synthesisManager:(id)synthesisManager;
- (void)deactivateWithContext:(id)context completion:(id)completion;
- (void)enqueueSpeechSynthesisRequest:(id)request completion:(id)completion;
- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion;
- (void)fetchAudioPowerWithType:(int64_t)type completion:(id)completion;
- (void)fetchSessionActivityStateWithCompletion:(id)completion;
- (void)fetchSessionStateWithCompletion:(id)completion;
- (void)invalidate;
- (void)performManualEndpointing;
- (void)pingWithReply:(id)reply;
- (void)preheatWithActivationSource:(int64_t)source;
- (void)prepareForDeviceSetupWithContext:(id)context completion:(id)completion;
- (void)prewarmRequest:(id)request;
- (void)prewarmWithContext:(id)context completion:(id)completion;
- (void)sessionDidBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)sessionDidChangeFromState:(int64_t)state toState:(int64_t)toState;
- (void)sessionDidResignActiveWithDeactivationContext:(id)context;
- (void)sessionDidStartSoundWithID:(int64_t)d;
- (void)sessionDidStopSoundWithID:(int64_t)d error:(id)error;
- (void)sessionManager:(id)manager didActivateWithContext:(id)context;
- (void)sessionManager:(id)manager didDeactivateWithContext:(id)context;
- (void)sessionManager:(id)manager didNotActivateWithContext:(id)context error:(id)error;
- (void)sessionManager:(id)manager willActivateWithContext:(id)context;
- (void)sessionManager:(id)manager willDeactivateWithContext:(id)context;
- (void)sessionWillBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)sessionWillChangeFromState:(int64_t)state toState:(int64_t)toState;
- (void)sessionWillPresentFeedbackWithDialogIdentifier:(id)identifier;
- (void)sessionWillResignActiveWithOptions:(unint64_t)options duration:(double)duration;
- (void)sessionWillStartSoundWithID:(int64_t)d;
- (void)setDeviceSetupContext:(id)context;
- (void)stopSpeechSynthesisRequest:(id)request;
- (void)synthesizeRequest:(id)request handlerUUID:(id)d completion:(id)completion;
- (void)transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp;
@end

@implementation SVXClientServiceServerConnection

- (void)_cleanUpXPCConnection
{
  v11 = *MEMORY[0x277D85DE8];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[SVXClientServiceServerConnection _cleanUpXPCConnection]";
      v9 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s %@", &v7, 0x16u);
      xpcConnection = self->_xpcConnection;
    }

    [(NSXPCConnection *)xpcConnection setExportedObject:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientServiceServerConnectionDidInvalidate:self];
  }
}

- (void)_connectionInvalidated
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v7 = "[SVXClientServiceServerConnection _connectionInvalidated]";
    v8 = 2112;
    selfCopy = self;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  performer = self->_performer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SVXClientServiceServerConnection__connectionInvalidated__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXPerforming *)performer performBlock:v5];
}

- (void)_connectionInterrupted
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v7 = "[SVXClientServiceServerConnection _connectionInterrupted]";
    v8 = 2112;
    selfCopy = self;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  performer = self->_performer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SVXClientServiceServerConnection__connectionInterrupted__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXPerforming *)performer performBlock:v5];
}

- (void)_performBlockAfterConfigure:(id)configure
{
  configureCopy = configure;
  v5 = configureCopy;
  if (configureCopy)
  {
    if (self->_isConfigured)
    {
      v6 = configureCopy[2];
LABEL_7:
      v6();
      goto LABEL_8;
    }

    pendingBlocksAfterConfigure = self->_pendingBlocksAfterConfigure;
    if (!pendingBlocksAfterConfigure)
    {
      v6 = configureCopy[2];
      goto LABEL_7;
    }

    v8 = objc_alloc(MEMORY[0x277CEF380]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__SVXClientServiceServerConnection__performBlockAfterConfigure___block_invoke;
    v10[3] = &unk_279C68BA0;
    v11 = v5;
    v9 = [v8 initWithBlock:v10];
    [(NSMutableArray *)pendingBlocksAfterConfigure addObject:v9];
  }

LABEL_8:
}

- (void)audioSessionDidBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext
{
  activeCopy = active;
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  deactivationContextCopy = deactivationContext;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v19 = "[SVXClientServiceServerConnection audioSessionDidBecomeActive:activationContext:deactivationContext:]";
    v20 = 1024;
    v21 = activeCopy;
    v22 = 2112;
    v23 = contextCopy;
    v24 = 2112;
    v25 = deactivationContextCopy;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s flag = %d, activationContext = %@, deactivationContext = %@", buf, 0x26u);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__SVXClientServiceServerConnection_audioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke;
  v14[3] = &unk_279C69100;
  v17 = activeCopy;
  v14[4] = self;
  v15 = contextCopy;
  v16 = deactivationContextCopy;
  v12 = deactivationContextCopy;
  v13 = contextCopy;
  [(SVXPerforming *)performer performBlock:v14];
}

void __102__SVXClientServiceServerConnection_audioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_73];
  [v2 notifyAudioSessionDidBecomeActive:*(a1 + 56) activationContext:*(a1 + 40) deactivationContext:*(a1 + 48)];
}

void __102__SVXClientServiceServerConnection_audioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection audioSessionDidBecomeActive:activationContext:deactivationContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
  }
}

- (void)audioSessionWillBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext
{
  activeCopy = active;
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  deactivationContextCopy = deactivationContext;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v19 = "[SVXClientServiceServerConnection audioSessionWillBecomeActive:activationContext:deactivationContext:]";
    v20 = 1024;
    v21 = activeCopy;
    v22 = 2112;
    v23 = contextCopy;
    v24 = 2112;
    v25 = deactivationContextCopy;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s flag = %d, activationContext = %@, deactivationContext = %@", buf, 0x26u);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__SVXClientServiceServerConnection_audioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke;
  v14[3] = &unk_279C69100;
  v17 = activeCopy;
  v14[4] = self;
  v15 = contextCopy;
  v16 = deactivationContextCopy;
  v12 = deactivationContextCopy;
  v13 = contextCopy;
  [(SVXPerforming *)performer performBlock:v14];
}

void __103__SVXClientServiceServerConnection_audioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_71];
  [v2 notifyAudioSessionWillBecomeActive:*(a1 + 56) activationContext:*(a1 + 40) deactivationContext:*(a1 + 48)];
}

void __103__SVXClientServiceServerConnection_audioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection audioSessionWillBecomeActive:activationContext:deactivationContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionDidResignActiveWithDeactivationContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServerConnection sessionDidResignActiveWithDeactivationContext:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s deactivationContext = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__SVXClientServiceServerConnection_sessionDidResignActiveWithDeactivationContext___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __82__SVXClientServiceServerConnection_sessionDidResignActiveWithDeactivationContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_69];
  [v2 notifySessionDidResignActiveWithDeactivationContext:*(a1 + 40)];
}

void __82__SVXClientServiceServerConnection_sessionDidResignActiveWithDeactivationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionDidResignActiveWithDeactivationContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionWillResignActiveWithOptions:(unint64_t)options duration:(double)duration
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
    v10 = SVXSessionResignActiveOptionsGetNames(options);
    *buf = 136315650;
    v13 = "[SVXClientServiceServerConnection sessionWillResignActiveWithOptions:duration:]";
    v14 = 2112;
    v15 = v10;
    v16 = 2048;
    durationCopy = duration;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s options = %@, duration = %f", buf, 0x20u);
  }

  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SVXClientServiceServerConnection_sessionWillResignActiveWithOptions_duration___block_invoke;
  v11[3] = &unk_279C68E80;
  v11[4] = self;
  v11[5] = options;
  *&v11[6] = duration;
  [(SVXPerforming *)performer performBlock:v11];
}

void __80__SVXClientServiceServerConnection_sessionWillResignActiveWithOptions_duration___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_67];
  [v2 notifySessionWillResignActiveWithOptions:*(a1 + 40) duration:*(a1 + 48)];
}

void __80__SVXClientServiceServerConnection_sessionWillResignActiveWithOptions_duration___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionWillResignActiveWithOptions:duration:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionDidBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[SVXClientServiceServerConnection sessionDidBecomeActiveWithActivationContext:turnID:]";
    v17 = 2112;
    v18 = contextCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s activationContext = %@, turnID = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__SVXClientServiceServerConnection_sessionDidBecomeActiveWithActivationContext_turnID___block_invoke;
  v12[3] = &unk_279C68ED0;
  v12[4] = self;
  v13 = contextCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __87__SVXClientServiceServerConnection_sessionDidBecomeActiveWithActivationContext_turnID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) remoteServiceDelegateWithConnection:*(a1[4] + 8) errorHandler:&__block_literal_global_65];
  [v2 notifySessionDidBecomeActiveWithActivationContext:a1[5] turnID:a1[6]];
}

void __87__SVXClientServiceServerConnection_sessionDidBecomeActiveWithActivationContext_turnID___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionDidBecomeActiveWithActivationContext:turnID:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionWillBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[SVXClientServiceServerConnection sessionWillBecomeActiveWithActivationContext:turnID:]";
    v17 = 2112;
    v18 = contextCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s activationContext = %@, turnID = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SVXClientServiceServerConnection_sessionWillBecomeActiveWithActivationContext_turnID___block_invoke;
  v12[3] = &unk_279C68ED0;
  v12[4] = self;
  v13 = contextCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __88__SVXClientServiceServerConnection_sessionWillBecomeActiveWithActivationContext_turnID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) remoteServiceDelegateWithConnection:*(a1[4] + 8) errorHandler:&__block_literal_global_63];
  [v2 notifySessionWillBecomeActiveWithActivationContext:a1[5] turnID:a1[6]];
}

void __88__SVXClientServiceServerConnection_sessionWillBecomeActiveWithActivationContext_turnID___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionWillBecomeActiveWithActivationContext:turnID:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionDidStopSoundWithID:(int64_t)d error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v10 = v7;
    if (d > 6)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C677F8[d];
    }

    v12 = v11;
    *buf = 136315650;
    v17 = "[SVXClientServiceServerConnection sessionDidStopSoundWithID:error:]";
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s soundID = %@, error = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SVXClientServiceServerConnection_sessionDidStopSoundWithID_error___block_invoke;
  v13[3] = &unk_279C68E58;
  v14 = errorCopy;
  dCopy = d;
  v13[4] = self;
  v9 = errorCopy;
  [(SVXPerforming *)performer performBlock:v13];
}

void __68__SVXClientServiceServerConnection_sessionDidStopSoundWithID_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) remoteServiceDelegateWithConnection:*(a1[4] + 8) errorHandler:&__block_literal_global_61];
  [v2 notifySessionDidStopSoundWithID:a1[6] error:a1[5]];
}

void __68__SVXClientServiceServerConnection_sessionDidStopSoundWithID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionDidStopSoundWithID:error:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionDidStartSoundWithID:(int64_t)d
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    if (d > 6)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C677F8[d];
    }

    v9 = v8;
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection sessionDidStartSoundWithID:]";
    v13 = 2112;
    v14 = v9;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s soundID = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SVXClientServiceServerConnection_sessionDidStartSoundWithID___block_invoke;
  v10[3] = &unk_279C68C68;
  v10[4] = self;
  v10[5] = d;
  [(SVXPerforming *)performer performBlock:v10];
}

void __63__SVXClientServiceServerConnection_sessionDidStartSoundWithID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_59];
  [v2 notifySessionDidStartSoundWithID:*(a1 + 40)];
}

void __63__SVXClientServiceServerConnection_sessionDidStartSoundWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionDidStartSoundWithID:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionWillStartSoundWithID:(int64_t)d
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    if (d > 6)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C677F8[d];
    }

    v9 = v8;
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection sessionWillStartSoundWithID:]";
    v13 = 2112;
    v14 = v9;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s soundID = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SVXClientServiceServerConnection_sessionWillStartSoundWithID___block_invoke;
  v10[3] = &unk_279C68C68;
  v10[4] = self;
  v10[5] = d;
  [(SVXPerforming *)performer performBlock:v10];
}

void __64__SVXClientServiceServerConnection_sessionWillStartSoundWithID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_57];
  [v2 notifySessionWillStartSoundWithID:*(a1 + 40)];
}

void __64__SVXClientServiceServerConnection_sessionWillStartSoundWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionWillStartSoundWithID:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionWillPresentFeedbackWithDialogIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServerConnection sessionWillPresentFeedbackWithDialogIdentifier:]";
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s dialogIdentifier = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__SVXClientServiceServerConnection_sessionWillPresentFeedbackWithDialogIdentifier___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __83__SVXClientServiceServerConnection_sessionWillPresentFeedbackWithDialogIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_55];
  [v2 notifySessionWillPresentFeedbackWithDialogIdentifier:*(a1 + 40)];
}

void __83__SVXClientServiceServerConnection_sessionWillPresentFeedbackWithDialogIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionWillPresentFeedbackWithDialogIdentifier:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionDidChangeFromState:(int64_t)state toState:(int64_t)toState
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
    if (state > 4)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_279C68A18[state];
    }

    v11 = v10;
    if (toState > 4)
    {
      v12 = @"(unknown)";
    }

    else
    {
      v12 = off_279C68A18[toState];
    }

    v13 = v12;
    *buf = 136315650;
    v16 = "[SVXClientServiceServerConnection sessionDidChangeFromState:toState:]";
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v13;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s fromState = %@, toState = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__SVXClientServiceServerConnection_sessionDidChangeFromState_toState___block_invoke;
  v14[3] = &unk_279C68E80;
  v14[4] = self;
  v14[5] = state;
  v14[6] = toState;
  [(SVXPerforming *)performer performBlock:v14];
}

void __70__SVXClientServiceServerConnection_sessionDidChangeFromState_toState___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) remoteServiceDelegateWithConnection:*(a1[4] + 8) errorHandler:&__block_literal_global_53];
  [v2 notifyDidChangeSessionStateFrom:a1[5] to:a1[6]];
}

void __70__SVXClientServiceServerConnection_sessionDidChangeFromState_toState___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionDidChangeFromState:toState:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionWillChangeFromState:(int64_t)state toState:(int64_t)toState
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
    if (state > 4)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_279C68A18[state];
    }

    v11 = v10;
    if (toState > 4)
    {
      v12 = @"(unknown)";
    }

    else
    {
      v12 = off_279C68A18[toState];
    }

    v13 = v12;
    *buf = 136315650;
    v16 = "[SVXClientServiceServerConnection sessionWillChangeFromState:toState:]";
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v13;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s fromState = %@, toState = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SVXClientServiceServerConnection_sessionWillChangeFromState_toState___block_invoke;
  v14[3] = &unk_279C68E80;
  v14[4] = self;
  v14[5] = state;
  v14[6] = toState;
  [(SVXPerforming *)performer performBlock:v14];
}

void __71__SVXClientServiceServerConnection_sessionWillChangeFromState_toState___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) remoteServiceDelegateWithConnection:*(a1[4] + 8) errorHandler:&__block_literal_global_51_13208];
  [v2 notifyWillChangeSessionStateFrom:a1[5] to:a1[6]];
}

void __71__SVXClientServiceServerConnection_sessionWillChangeFromState_toState___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionWillChangeFromState:toState:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)audioPowerDidEndUpdateForType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    if (type > 2)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C67430[type];
    }

    v9 = v8;
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection audioPowerDidEndUpdateForType:]";
    v13 = 2112;
    v14 = v9;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s type = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__SVXClientServiceServerConnection_audioPowerDidEndUpdateForType___block_invoke;
  v10[3] = &unk_279C68C68;
  v10[4] = self;
  v10[5] = type;
  [(SVXPerforming *)performer performBlock:v10];
}

void __66__SVXClientServiceServerConnection_audioPowerDidEndUpdateForType___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_49];
  [v2 notifyDidEndUpdateAudioPowerWithType:*(a1 + 40)];
}

void __66__SVXClientServiceServerConnection_audioPowerDidEndUpdateForType___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection audioPowerDidEndUpdateForType:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)audioPowerWillBeginUpdateForType:(int64_t)type wrapper:(id)wrapper
{
  v22 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v10 = v7;
    if (type > 2)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C67430[type];
    }

    v12 = v11;
    *buf = 136315650;
    v17 = "[SVXClientServiceServerConnection audioPowerWillBeginUpdateForType:wrapper:]";
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = wrapperCopy;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s type = %@, wrapper = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SVXClientServiceServerConnection_audioPowerWillBeginUpdateForType_wrapper___block_invoke;
  v13[3] = &unk_279C68E58;
  v14 = wrapperCopy;
  typeCopy = type;
  v13[4] = self;
  v9 = wrapperCopy;
  [(SVXPerforming *)performer performBlock:v13];
}

void __77__SVXClientServiceServerConnection_audioPowerWillBeginUpdateForType_wrapper___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) remoteServiceDelegateWithConnection:*(a1[4] + 8) errorHandler:&__block_literal_global_47];
  [v2 notifyWillBeginUpdateAudioPowerWithType:a1[6] wrapper:a1[5]];
}

void __77__SVXClientServiceServerConnection_audioPowerWillBeginUpdateForType_wrapper___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection audioPowerWillBeginUpdateForType:wrapper:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionManager:(id)manager didDeactivateWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection sessionManager:didDeactivateWithContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SVXClientServiceServerConnection_sessionManager_didDeactivateWithContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];
}

void __76__SVXClientServiceServerConnection_sessionManager_didDeactivateWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_45];
  [v2 notifyDidDeactivateWithContext:*(a1 + 40)];
}

void __76__SVXClientServiceServerConnection_sessionManager_didDeactivateWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionManager:didDeactivateWithContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionManager:(id)manager willDeactivateWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection sessionManager:willDeactivateWithContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SVXClientServiceServerConnection_sessionManager_willDeactivateWithContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];
}

void __77__SVXClientServiceServerConnection_sessionManager_willDeactivateWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_43];
  [v2 notifyWillDeactivateWithContext:*(a1 + 40)];
}

void __77__SVXClientServiceServerConnection_sessionManager_willDeactivateWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionManager:willDeactivateWithContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionManager:(id)manager didNotActivateWithContext:(id)context error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  errorCopy = error;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v17 = "[SVXClientServiceServerConnection sessionManager:didNotActivateWithContext:error:]";
    v18 = 2112;
    v19 = contextCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s context = %@, error = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SVXClientServiceServerConnection_sessionManager_didNotActivateWithContext_error___block_invoke;
  v13[3] = &unk_279C68ED0;
  v13[4] = self;
  v14 = contextCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = contextCopy;
  [(SVXPerforming *)performer performBlock:v13];
}

void __83__SVXClientServiceServerConnection_sessionManager_didNotActivateWithContext_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) remoteServiceDelegateWithConnection:*(a1[4] + 8) errorHandler:&__block_literal_global_41];
  [v2 notifyDidNotActivateWithContext:a1[5] error:a1[6]];
}

void __83__SVXClientServiceServerConnection_sessionManager_didNotActivateWithContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionManager:didNotActivateWithContext:error:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionManager:(id)manager didActivateWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection sessionManager:didActivateWithContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SVXClientServiceServerConnection_sessionManager_didActivateWithContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];
}

void __74__SVXClientServiceServerConnection_sessionManager_didActivateWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_39];
  [v2 notifyDidActivateWithContext:*(a1 + 40)];
}

void __74__SVXClientServiceServerConnection_sessionManager_didActivateWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionManager:didActivateWithContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)sessionManager:(id)manager willActivateWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection sessionManager:willActivateWithContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SVXClientServiceServerConnection_sessionManager_willActivateWithContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];
}

void __75__SVXClientServiceServerConnection_sessionManager_willActivateWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) remoteServiceDelegateWithConnection:*(*(a1 + 32) + 8) errorHandler:&__block_literal_global_37];
  [v2 notifyWillActivateWithContext:*(a1 + 40)];
}

void __75__SVXClientServiceServerConnection_sessionManager_willActivateWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection sessionManager:willActivateWithContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v4, 0x16u);
  }
}

- (void)prepareForDeviceSetupWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceServerConnection prepareForDeviceSetupWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__SVXClientServiceServerConnection_prepareForDeviceSetupWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v12[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __80__SVXClientServiceServerConnection_prepareForDeviceSetupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__SVXClientServiceServerConnection_prepareForDeviceSetupWithContext_completion___block_invoke_2;
  v3[3] = &unk_279C68C90;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performBlockAfterConfigure:v3];
}

void __80__SVXClientServiceServerConnection_prepareForDeviceSetupWithContext_completion___block_invoke_2(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 72);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__SVXClientServiceServerConnection_prepareForDeviceSetupWithContext_completion___block_invoke_3;
    v9[3] = &unk_279C68E10;
    v10 = *(a1 + 48);
    [v4 prepareForSetupWithContext:v3 completion:v9];
    v5 = v10;
LABEL_7:

    return;
  }

  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection prepareForDeviceSetupWithContext:completion:]_block_invoke";
    v13 = 2112;
    v14 = v8;
    _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v5);
    goto LABEL_7;
  }
}

void __80__SVXClientServiceServerConnection_prepareForDeviceSetupWithContext_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[SVXClientServiceServerConnection prepareForDeviceSetupWithContext:completion:]_block_invoke_3";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s flow = %@, error = %@", &v9, 0x20u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)setDeviceSetupContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServerConnection setDeviceSetupContext:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SVXClientServiceServerConnection_setDeviceSetupContext___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __58__SVXClientServiceServerConnection_setDeviceSetupContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__SVXClientServiceServerConnection_setDeviceSetupContext___block_invoke_2;
  v2[3] = &unk_279C68D98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performBlockAfterConfigure:v2];
}

void __58__SVXClientServiceServerConnection_setDeviceSetupContext___block_invoke_2(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v3[9];
    v8 = [v3 uuid];
    [v5 setContext:v4 forUUID:?];
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 136315394;
      v10 = "[SVXClientServiceServerConnection setDeviceSetupContext:]_block_invoke_2";
      v11 = 2112;
      v12 = v7;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
    }
  }
}

- (void)stopSpeechSynthesisRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServerConnection stopSpeechSynthesisRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s request = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SVXClientServiceServerConnection_stopSpeechSynthesisRequest___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __63__SVXClientServiceServerConnection_stopSpeechSynthesisRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__SVXClientServiceServerConnection_stopSpeechSynthesisRequest___block_invoke_2;
  v2[3] = &unk_279C68D98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performBlockAfterConfigure:v2];
}

void __63__SVXClientServiceServerConnection_stopSpeechSynthesisRequest___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 88);

    [v4 stopRequest:v3 withInterruptionBehavior:1];
  }

  else
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[SVXClientServiceServerConnection stopSpeechSynthesisRequest:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v7, 0x16u);
    }
  }
}

- (void)cancelPendingSpeechSynthesisRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServerConnection cancelPendingSpeechSynthesisRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s request = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__SVXClientServiceServerConnection_cancelPendingSpeechSynthesisRequest___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __72__SVXClientServiceServerConnection_cancelPendingSpeechSynthesisRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __72__SVXClientServiceServerConnection_cancelPendingSpeechSynthesisRequest___block_invoke_2;
  v2[3] = &unk_279C68D98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performBlockAfterConfigure:v2];
}

void __72__SVXClientServiceServerConnection_cancelPendingSpeechSynthesisRequest___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 88);

    [v4 cancelRequest:v3];
  }

  else
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[SVXClientServiceServerConnection cancelPendingSpeechSynthesisRequest:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v7, 0x16u);
    }
  }
}

- (void)enqueueSpeechSynthesisRequest:(id)request completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceServerConnection enqueueSpeechSynthesisRequest:completion:]";
    v17 = 2112;
    v18 = requestCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s request = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__SVXClientServiceServerConnection_enqueueSpeechSynthesisRequest_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v12[4] = self;
  v13 = requestCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = requestCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __77__SVXClientServiceServerConnection_enqueueSpeechSynthesisRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__SVXClientServiceServerConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_2;
  v3[3] = &unk_279C68C90;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performBlockAfterConfigure:v3];
}

void __77__SVXClientServiceServerConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_2(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 88);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__SVXClientServiceServerConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_3;
    v11[3] = &unk_279C68DE8;
    v12 = *(a1 + 48);
    [v4 enqueueRequest:v3 languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 finalization:v11 taskTracker:0 analyticsContext:0];
    v5 = v12;
LABEL_7:

    return;
  }

  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[SVXClientServiceServerConnection enqueueSpeechSynthesisRequest:completion:]_block_invoke";
    v15 = 2112;
    v16 = v10;
    _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [SVXSpeechSynthesisResult alloc];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    v9 = [(SVXSpeechSynthesisResult *)v8 initWithType:4 utteranceInfo:0 error:v5];
    (*(v7 + 16))(v7, v9);

    goto LABEL_7;
  }
}

void __77__SVXClientServiceServerConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceServerConnection enqueueSpeechSynthesisRequest:completion:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s result = %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)synthesizeRequest:(id)request handlerUUID:(id)d completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "[SVXClientServiceServerConnection synthesizeRequest:handlerUUID:completion:]";
    v22 = 2112;
    v23 = requestCopy;
    v24 = 2112;
    v25 = dCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s request = %@, handlerUUID = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SVXClientServiceServerConnection_synthesizeRequest_handlerUUID_completion___block_invoke;
  v16[3] = &unk_279C69038;
  v16[4] = self;
  v17 = requestCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = dCopy;
  v15 = requestCopy;
  [(SVXPerforming *)performer performBlock:v16];
}

void __77__SVXClientServiceServerConnection_synthesizeRequest_handlerUUID_completion___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SVXClientServiceServerConnection_synthesizeRequest_handlerUUID_completion___block_invoke_2;
  v7[3] = &unk_279C68DC0;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _performBlockAfterConfigure:v7];
}

void __77__SVXClientServiceServerConnection_synthesizeRequest_handlerUUID_completion___block_invoke_2(void *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(v4 + 96);
    v6 = *(v4 + 8);
    v7 = a1[6];
    v8 = a1[7];

    [v5 synthesizeRequest:v3 xpcConnection:v6 handlerUUID:v7 completion:v8];
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      v15 = 136315394;
      v16 = "[SVXClientServiceServerConnection synthesizeRequest:handlerUUID:completion:]_block_invoke_2";
      v17 = 2112;
      v18 = v14;
      _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v15, 0x16u);
    }

    v10 = a1[7];
    if (v10)
    {
      v11 = [SVXSpeechSynthesisResult alloc];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
      v13 = [(SVXSpeechSynthesisResult *)v11 initWithType:4 utteranceInfo:0 error:v12];
      (*(v10 + 16))(v10, v13);
    }
  }
}

- (void)prewarmRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServerConnection prewarmRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s request = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SVXClientServiceServerConnection_prewarmRequest___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __51__SVXClientServiceServerConnection_prewarmRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__SVXClientServiceServerConnection_prewarmRequest___block_invoke_2;
  v2[3] = &unk_279C68D98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performBlockAfterConfigure:v2];
}

void __51__SVXClientServiceServerConnection_prewarmRequest___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 88);

    [v4 prewarmRequest:v3];
  }

  else
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[SVXClientServiceServerConnection prewarmRequest:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v7, 0x16u);
    }
  }
}

- (void)fetchAudioPowerWithType:(int64_t)type completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
    if (type > 2)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_279C67430[type];
    }

    v11 = v10;
    *buf = 136315394;
    v16 = "[SVXClientServiceServerConnection fetchAudioPowerWithType:completion:]";
    v17 = 2112;
    v18 = v11;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s type = %@", buf, 0x16u);

    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else if (completionCopy)
  {
LABEL_3:
    performer = self->_performer;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__SVXClientServiceServerConnection_fetchAudioPowerWithType_completion___block_invoke;
    v12[3] = &unk_279C68D70;
    v12[4] = self;
    typeCopy = type;
    v13 = completionCopy;
    [(SVXPerforming *)performer performBlock:v12];
  }
}

void __71__SVXClientServiceServerConnection_fetchAudioPowerWithType_completion___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__SVXClientServiceServerConnection_fetchAudioPowerWithType_completion___block_invoke_2;
  v3[3] = &unk_279C68D48;
  v1 = a1[6];
  v2 = a1[5];
  v4 = a1[4];
  v6 = v1;
  v5 = v2;
  [v4 _performBlockAfterConfigure:v3];
}

void __71__SVXClientServiceServerConnection_fetchAudioPowerWithType_completion___block_invoke_2(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__SVXClientServiceServerConnection_fetchAudioPowerWithType_completion___block_invoke_3;
    v9[3] = &unk_279C68D20;
    v4 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v3 fetchCurrentAudioPowerWithType:v4 completion:v9];
    v5 = v10;
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315394;
      v12 = "[SVXClientServiceServerConnection fetchAudioPowerWithType:completion:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
    }

    v7 = *(a1 + 40);
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v5);
  }
}

void __71__SVXClientServiceServerConnection_fetchAudioPowerWithType_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceServerConnection fetchAudioPowerWithType:completion:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s wrapper = %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[SVXClientServiceServerConnection transitToAutomaticEndpointingWithTimestamp:]";
    v10 = 2048;
    timestampCopy = timestamp;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s timestamp = %lld", buf, 0x16u);
  }

  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SVXClientServiceServerConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke;
  v7[3] = &unk_279C68C68;
  v7[4] = self;
  v7[5] = timestamp;
  [(SVXPerforming *)performer performBlock:v7];
}

uint64_t __79__SVXClientServiceServerConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__SVXClientServiceServerConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_2;
  v3[3] = &unk_279C68C40;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 _performBlockAfterConfigure:v3];
}

void __79__SVXClientServiceServerConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__SVXClientServiceServerConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_3;
    v6[3] = &__block_descriptor_40_e20_v16__0__SVXSession_8l;
    v6[4] = *(a1 + 40);
    [v3 getCurrentSessionUsingBlock:v6];
  }

  else
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 136315394;
      v8 = "[SVXClientServiceServerConnection transitToAutomaticEndpointingWithTimestamp:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
    }
  }
}

void __79__SVXClientServiceServerConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceServerConnection transitToAutomaticEndpointingWithTimestamp:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s session = %@", &v5, 0x16u);
  }

  [v3 transitSpeechToAutomaticEndpointingWithTimestamp:*(a1 + 32)];
}

- (void)performManualEndpointing
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[SVXClientServiceServerConnection performManualEndpointing]";
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SVXClientServiceServerConnection_performManualEndpointing__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXPerforming *)performer performBlock:v5];
}

uint64_t __60__SVXClientServiceServerConnection_performManualEndpointing__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__SVXClientServiceServerConnection_performManualEndpointing__block_invoke_2;
  v3[3] = &unk_279C68CD8;
  v3[4] = v1;
  return [v1 _performBlockAfterConfigure:v3];
}

void __60__SVXClientServiceServerConnection_performManualEndpointing__block_invoke_2(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);

    [v3 getCurrentSessionUsingBlock:&__block_literal_global_13252];
  }

  else
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315394;
      v7 = "[SVXClientServiceServerConnection performManualEndpointing]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v6, 0x16u);
    }
  }
}

void __60__SVXClientServiceServerConnection_performManualEndpointing__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceServerConnection performManualEndpointing]_block_invoke_3";
    v6 = 2112;
    v7 = v2;
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s session = %@", &v4, 0x16u);
  }

  [v2 stopSpeech];
}

- (void)deactivateWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceServerConnection deactivateWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SVXClientServiceServerConnection_deactivateWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v12[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __69__SVXClientServiceServerConnection_deactivateWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__SVXClientServiceServerConnection_deactivateWithContext_completion___block_invoke_2;
  v3[3] = &unk_279C68C90;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performBlockAfterConfigure:v3];
}

uint64_t (**__69__SVXClientServiceServerConnection_deactivateWithContext_completion___block_invoke_2(void *a1, int a2))(void)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 80);
    v5 = a1[6];

    return [v4 deactivateWithContext:v3 completion:v5];
  }

  else
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = 136315394;
      v10 = "[SVXClientServiceServerConnection deactivateWithContext:completion:]_block_invoke_2";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v9, 0x16u);
    }

    result = a1[6];
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

- (void)activateWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  [(SVXAudioServicesUtils *)self->_audioServicesUtils audioServicesActivateWithTimeout];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceServerConnection activateWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SVXClientServiceServerConnection_activateWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v12[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __67__SVXClientServiceServerConnection_activateWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SVXClientServiceServerConnection_activateWithContext_completion___block_invoke_2;
  v3[3] = &unk_279C68C90;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performBlockAfterConfigure:v3];
}

void __67__SVXClientServiceServerConnection_activateWithContext_completion___block_invoke_2(void *a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 80);
    v5 = a1[6];

    [v4 activateWithContext:v3 completion:v5];
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = 136315394;
      v11 = "[SVXClientServiceServerConnection activateWithContext:completion:]_block_invoke_2";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v10, 0x16u);
    }

    v7 = a1[6];
    if (v7)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
      (*(v7 + 16))(v7, v8);
    }
  }
}

- (void)prewarmWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if ([(SVXAudioServicesUtils *)self->_audioServicesUtils shouldPrewarmAudioServicesActivate])
  {
    [(SVXAudioServicesUtils *)self->_audioServicesUtils audioServicesActivateWithTimeout];
  }

  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceServerConnection prewarmWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__SVXClientServiceServerConnection_prewarmWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v12[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v12];
}

void __66__SVXClientServiceServerConnection_prewarmWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__SVXClientServiceServerConnection_prewarmWithContext_completion___block_invoke_2;
  v3[3] = &unk_279C68C90;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performBlockAfterConfigure:v3];
}

uint64_t (**__66__SVXClientServiceServerConnection_prewarmWithContext_completion___block_invoke_2(void *a1, int a2))(void)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 80);
    v5 = a1[6];

    return [v4 prewarmWithContext:v3 completion:v5];
  }

  else
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = 136315394;
      v10 = "[SVXClientServiceServerConnection prewarmWithContext:completion:]_block_invoke_2";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v9, 0x16u);
    }

    result = a1[6];
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

- (void)preheatWithActivationSource:(int64_t)source
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(SVXAudioServicesUtils *)self->_audioServicesUtils shouldPrewarmAudioServicesActivate])
  {
    [(SVXAudioServicesUtils *)self->_audioServicesUtils audioServicesActivateWithTimeout];
  }

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    if (source > 9)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C67C58[source];
    }

    v9 = v8;
    *buf = 136315394;
    v12 = "[SVXClientServiceServerConnection preheatWithActivationSource:]";
    v13 = 2112;
    v14 = v9;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s activationSource = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SVXClientServiceServerConnection_preheatWithActivationSource___block_invoke;
  v10[3] = &unk_279C68C68;
  v10[4] = self;
  v10[5] = source;
  [(SVXPerforming *)performer performBlock:v10];
}

uint64_t __64__SVXClientServiceServerConnection_preheatWithActivationSource___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__SVXClientServiceServerConnection_preheatWithActivationSource___block_invoke_2;
  v3[3] = &unk_279C68C40;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 _performBlockAfterConfigure:v3];
}

void __64__SVXClientServiceServerConnection_preheatWithActivationSource___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 80);

    [v4 preheatWithActivationSource:v3];
  }

  else
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[SVXClientServiceServerConnection preheatWithActivationSource:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v7, 0x16u);
    }
  }
}

- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[SVXClientServiceServerConnection fetchAlarmAndTimerFiringContextWithCompletion:]";
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __82__SVXClientServiceServerConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = completionCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }

LABEL_4:
}

void __82__SVXClientServiceServerConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __82__SVXClientServiceServerConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2;
  v2[3] = &unk_279C68BC8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performBlockAfterConfigure:v2];
}

void __82__SVXClientServiceServerConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__SVXClientServiceServerConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_3;
    v8[3] = &unk_279C68C18;
    v9 = *(a1 + 40);
    [v3 fetchCurrentAlarmAndTimerFiringContextWithCompletion:v8];
    v4 = v9;
  }

  else
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 136315394;
      v11 = "[SVXClientServiceServerConnection fetchAlarmAndTimerFiringContextWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
    }

    v6 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (*(v6 + 16))(v6, 0, v4);
  }
}

void __82__SVXClientServiceServerConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceServerConnection fetchAlarmAndTimerFiringContextWithCompletion:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s alarmAndTimerFiringContext = %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSessionActivityStateWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[SVXClientServiceServerConnection fetchSessionActivityStateWithCompletion:]";
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__SVXClientServiceServerConnection_fetchSessionActivityStateWithCompletion___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = completionCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }

LABEL_4:
}

void __76__SVXClientServiceServerConnection_fetchSessionActivityStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __76__SVXClientServiceServerConnection_fetchSessionActivityStateWithCompletion___block_invoke_2;
  v2[3] = &unk_279C68BC8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performBlockAfterConfigure:v2];
}

void __76__SVXClientServiceServerConnection_fetchSessionActivityStateWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__SVXClientServiceServerConnection_fetchSessionActivityStateWithCompletion___block_invoke_3;
    v8[3] = &unk_279C68BF0;
    v9 = *(a1 + 40);
    [v3 fetchCurrentActivityStateWithCompletion:v8];
    v4 = v9;
  }

  else
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 136315394;
      v11 = "[SVXClientServiceServerConnection fetchSessionActivityStateWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
    }

    v6 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (*(v6 + 16))(v6, 0, v4);
  }
}

uint64_t __76__SVXClientServiceServerConnection_fetchSessionActivityStateWithCompletion___block_invoke_3(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceServerConnection fetchSessionActivityStateWithCompletion:]_block_invoke_3";
    v8 = 1024;
    v9 = a2;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s isActive = %d", &v6, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)fetchSessionStateWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[SVXClientServiceServerConnection fetchSessionStateWithCompletion:]";
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__SVXClientServiceServerConnection_fetchSessionStateWithCompletion___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = completionCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }

LABEL_4:
}

void __68__SVXClientServiceServerConnection_fetchSessionStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __68__SVXClientServiceServerConnection_fetchSessionStateWithCompletion___block_invoke_2;
  v2[3] = &unk_279C68BC8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _performBlockAfterConfigure:v2];
}

void __68__SVXClientServiceServerConnection_fetchSessionStateWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 80);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__SVXClientServiceServerConnection_fetchSessionStateWithCompletion___block_invoke_3;
    v8[3] = &unk_279C68BA0;
    v9 = *(a1 + 40);
    [v3 fetchCurrentStateWithCompletion:v8];
    v4 = v9;
  }

  else
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 136315394;
      v11 = "[SVXClientServiceServerConnection fetchSessionStateWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", buf, 0x16u);
    }

    v6 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (*(v6 + 16))(v6, 0, v4);
  }
}

uint64_t __68__SVXClientServiceServerConnection_fetchSessionStateWithCompletion___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v6 = v4;
    if (a2 > 4)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C68A18[a2];
    }

    v8 = v7;
    v9 = 136315394;
    v10 = "[SVXClientServiceServerConnection fetchSessionStateWithCompletion:]_block_invoke_3";
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s currentState = %@", &v9, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)pingWithReply:(id)reply
{
  v11 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[SVXClientServiceServerConnection pingWithReply:]";
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!replyCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (replyCopy)
  {
LABEL_3:
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SVXClientServiceServerConnection_pingWithReply___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = replyCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }

LABEL_4:
}

void __50__SVXClientServiceServerConnection_pingWithReply___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SVXClientServiceServerConnection_pingWithReply___block_invoke_2;
  v4[3] = &unk_279C68BC8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _performBlockAfterConfigure:v4];
}

void __50__SVXClientServiceServerConnection_pingWithReply___block_invoke_2(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[SVXClientServiceServerConnection pingWithReply:]_block_invoke_2";
      _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s reply", &v8, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SVXClientServiceServerConnection pingWithReply:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@ is not configured or already invalidated.", &v8, 0x16u);
    }

    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)invalidate
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__SVXClientServiceServerConnection_invalidate__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

void __46__SVXClientServiceServerConnection_invalidate__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 56) = 0;
  v2 = *(a1 + 32);
  v3 = v2[9];
  v4 = [v2 uuid];
  [v3 setContext:0 forUUID:v4];

  [*(*(a1 + 32) + 80) removeActivationListener:?];
  [*(*(a1 + 32) + 80) removeAudioPowerUpdateListener:?];
  [*(*(a1 + 32) + 80) removeActivityListener:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 96);
  *(v11 + 96) = 0;

  [*(a1 + 32) _cleanUpXPCConnection];
  v13 = *(*(a1 + 32) + 64);
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 32);
    v16 = *(v15 + 64);
    *(v15 + 64) = 0;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v22 + 1) + 8 * v21++) invokeWithSignal:{-3, v22}];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v19);
    }
  }
}

- (void)configureWithDeviceSetupManager:(id)manager sessionManager:(id)sessionManager speechSynthesizer:(id)synthesizer synthesisManager:(id)synthesisManager
{
  managerCopy = manager;
  sessionManagerCopy = sessionManager;
  synthesizerCopy = synthesizer;
  synthesisManagerCopy = synthesisManager;
  performer = self->_performer;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __118__SVXClientServiceServerConnection_configureWithDeviceSetupManager_sessionManager_speechSynthesizer_synthesisManager___block_invoke;
  v19[3] = &unk_279C68B70;
  v19[4] = self;
  v20 = managerCopy;
  v21 = sessionManagerCopy;
  v22 = synthesizerCopy;
  v23 = synthesisManagerCopy;
  v15 = synthesisManagerCopy;
  v16 = synthesizerCopy;
  v17 = sessionManagerCopy;
  v18 = managerCopy;
  [(SVXPerforming *)performer performBlock:v19];
}

void __118__SVXClientServiceServerConnection_configureWithDeviceSetupManager_sessionManager_speechSynthesizer_synthesisManager___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 56) = 1;
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 56));
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 64));
  [*(*(a1 + 32) + 80) addActivationListener:?];
  [*(*(a1 + 32) + 80) addAudioPowerUpdateListener:?];
  [*(*(a1 + 32) + 80) addActivityListener:?];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = 0;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) invokeWithSignal:{0, v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10.receiver = self;
  v10.super_class = SVXClientServiceServerConnection;
  v4 = [(SVXClientServiceServerConnection *)&v10 description];
  uuid = self->_uuid;
  xpcConnection = self->_xpcConnection;
  cacheInstanceInfo = [(SVXInstanceInfoSupplier *)self->_instanceInfoSupplier cacheInstanceInfo];
  v8 = [v3 initWithFormat:@"%@ {uuid = %@, xpcConnection = %@, instanceInfo = %@}", v4, uuid, xpcConnection, cacheInstanceInfo];

  return v8;
}

- (SVXClientServiceServerConnection)initWithXPCConnection:(id)connection performer:(id)performer delegate:(id)delegate
{
  connectionCopy = connection;
  performerCopy = performer;
  delegateCopy = delegate;
  if (connectionCopy)
  {
    if (performerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXClientServiceServerConnection.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"performer != nil"}];

    if (delegateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SVXClientServiceServerConnection.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"xpcConnection != nil"}];

  if (!performerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (delegateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SVXClientServiceServerConnection.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

LABEL_4:
  v39.receiver = self;
  v39.super_class = SVXClientServiceServerConnection;
  v13 = [(SVXClientServiceServerConnection *)&v39 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uuid = v13->_uuid;
    v13->_uuid = v14;

    objc_storeStrong(&v13->_xpcConnection, connection);
    xpcConnection = v13->_xpcConnection;
    v17 = SVXClientServiceDelegateCreateXPCInterface();
    [(NSXPCConnection *)xpcConnection setRemoteObjectInterface:v17];

    [(NSXPCConnection *)v13->_xpcConnection setExportedObject:v13];
    v18 = v13->_xpcConnection;
    v19 = SVXClientServiceCreateXPCInterface();
    [(NSXPCConnection *)v18 setExportedInterface:v19];

    objc_initWeak(&location, v13);
    v20 = v13->_xpcConnection;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __77__SVXClientServiceServerConnection_initWithXPCConnection_performer_delegate___block_invoke;
    v36[3] = &unk_279C69088;
    objc_copyWeak(&v37, &location);
    [(NSXPCConnection *)v20 setInterruptionHandler:v36];
    v21 = v13->_xpcConnection;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __77__SVXClientServiceServerConnection_initWithXPCConnection_performer_delegate___block_invoke_2;
    v34[3] = &unk_279C69088;
    objc_copyWeak(&v35, &location);
    [(NSXPCConnection *)v21 setInvalidationHandler:v34];
    objc_storeStrong(&v13->_performer, performer);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v22 = objc_alloc_init(SVXClientServiceRemoteDelegateSupplier);
    remoteDelegateSupplier = v13->_remoteDelegateSupplier;
    v13->_remoteDelegateSupplier = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingBlocksAfterConfigure = v13->_pendingBlocksAfterConfigure;
    v13->_pendingBlocksAfterConfigure = v24;

    v26 = objc_alloc_init(SVXAudioServicesUtils);
    audioServicesUtils = v13->_audioServicesUtils;
    v13->_audioServicesUtils = v26;

    v28 = [[SVXInstanceInfoSupplier alloc] initWithRemoteDelegateSupplier:v13->_remoteDelegateSupplier performer:v13->_performer];
    instanceInfoSupplier = v13->_instanceInfoSupplier;
    v13->_instanceInfoSupplier = v28;

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __77__SVXClientServiceServerConnection_initWithXPCConnection_performer_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __77__SVXClientServiceServerConnection_initWithXPCConnection_performer_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

@end