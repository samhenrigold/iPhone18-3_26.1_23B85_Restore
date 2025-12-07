@interface SVXClientServiceConnection
- (SVXClientServiceConnection)initWithComponents:(unint64_t)components delegate:(id)delegate;
- (SVXClientServiceConnection)initWithComponents:(unint64_t)components instanceContext:(id)context delegate:(id)delegate;
- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 connectionFactory:(id)self3 delegate:(id)self4;
- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 delegate:(id)self3;
- (id)_clientServiceWithErrorHandler:(id)handler;
- (id)_connection;
- (void)_cleanUpComponents;
- (void)_cleanUpConnection;
- (void)_clientServiceDidChange:(BOOL)change;
- (void)_invalidate;
- (void)activateWithContext:(id)context completion:(id)completion;
- (void)cancelPendingSpeechSynthesisRequest:(id)request;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)deactivateWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)enqueueSpeechSynthesisRequest:(id)request completion:(id)completion;
- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion;
- (void)fetchAudioPowerWithType:(int64_t)type completion:(id)completion;
- (void)fetchSessionActivityStateWithCompletion:(id)completion;
- (void)fetchSessionStateWithCompletion:(id)completion;
- (void)getClientServiceUsingBlock:(id)block errorHandler:(id)handler;
- (void)getInstanceInfoWithCompletion:(id)completion;
- (void)handleSpeechSynthesisSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index reply:(id)reply;
- (void)invalidate;
- (void)notifyAudioSessionDidBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext;
- (void)notifyAudioSessionWillBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext;
- (void)notifyDidActivateWithContext:(id)context;
- (void)notifyDidChangeSessionStateFrom:(int64_t)from to:(int64_t)to;
- (void)notifyDidDeactivateWithContext:(id)context;
- (void)notifyDidEndUpdateAudioPowerWithType:(int64_t)type;
- (void)notifyDidNotActivateWithContext:(id)context error:(id)error;
- (void)notifySessionDidBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)notifySessionDidResignActiveWithDeactivationContext:(id)context;
- (void)notifySessionDidStartSoundWithID:(int64_t)d;
- (void)notifySessionDidStopSoundWithID:(int64_t)d error:(id)error;
- (void)notifySessionWillBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)notifySessionWillPresentFeedbackWithDialogIdentifier:(id)identifier;
- (void)notifySessionWillResignActiveWithOptions:(unint64_t)options duration:(double)duration;
- (void)notifySessionWillStartSoundWithID:(int64_t)d;
- (void)notifyWillActivateWithContext:(id)context;
- (void)notifyWillBeginUpdateAudioPowerWithType:(int64_t)type wrapper:(id)wrapper;
- (void)notifyWillChangeSessionStateFrom:(int64_t)from to:(int64_t)to;
- (void)notifyWillDeactivateWithContext:(id)context;
- (void)performManualEndpointing;
- (void)pingWithReply:(id)reply;
- (void)preheatWithActivationSource:(int64_t)source;
- (void)prepareForDeviceSetupWithContext:(id)context completion:(id)completion;
- (void)prewarmRequest:(id)request;
- (void)prewarmWithContext:(id)context completion:(id)completion;
- (void)requestPermissionToActivateWithContext:(id)context completion:(id)completion;
- (void)setDeviceSetupContext:(id)context;
- (void)stopSpeechSynthesisRequest:(id)request;
- (void)synthesizeRequest:(id)request handlerUUID:(id)d completion:(id)completion;
- (void)transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp;
@end

@implementation SVXClientServiceConnection

- (void)_cleanUpComponents
{
  activationService = self->_activationService;
  self->_activationService = 0;

  audioSystemService = self->_audioSystemService;
  self->_audioSystemService = 0;

  deviceService = self->_deviceService;
  self->_deviceService = 0;

  inputAudioPowerService = self->_inputAudioPowerService;
  self->_inputAudioPowerService = 0;

  outputAudioPowerService = self->_outputAudioPowerService;
  self->_outputAudioPowerService = 0;

  sessionService = self->_sessionService;
  self->_sessionService = 0;

  speechSynthesisService = self->_speechSynthesisService;
  self->_speechSynthesisService = 0;

  keepAliveService = self->_keepAliveService;
  self->_keepAliveService = 0;
}

- (void)_cleanUpConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setExportedObject:0];
    [(NSXPCConnection *)self->_connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (void)connectionInvalidated
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v7 = "[SVXClientServiceConnection connectionInvalidated]";
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SVXClientServiceConnection_connectionInvalidated__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v5];
}

uint64_t __51__SVXClientServiceConnection_connectionInvalidated__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) != 0 || !*(v2 + 88))
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke";
      _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEFAULT, "%s Invalidate", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    return [v2 _invalidate];
  }

  else
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke";
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEFAULT, "%s KeepAlive", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    [v2 _cleanUpConnection];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_28;
    v8[3] = &unk_279C68108;
    v8[4] = v4;
    return [v5 connectWithCompletion:v8];
  }
}

void __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_2;
  v7[3] = &unk_279C68FE8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 performBlock:v7];
}

uint64_t __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke_2";
      v8 = 2112;
      v9 = v2;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s Failed KeepAlive (error = %@)", &v6, 0x16u);
    }

    return [*(a1 + 40) _invalidate];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke";
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEFAULT, "%s Done KeepAlive", &v6, 0xCu);
    }

    return [*(a1 + 40) _clientServiceDidChange:1];
  }
}

- (void)connectionInterrupted
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v7 = "[SVXClientServiceConnection connectionInterrupted]";
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SVXClientServiceConnection_connectionInterrupted__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v5];
}

uint64_t __51__SVXClientServiceConnection_connectionInterrupted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpConnection];
  v2 = *(a1 + 32);

  return [v2 _clientServiceDidChange:0];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [(SVXXPCConnectionFactory *)self->_connectionFactory createWithMachServiceName:@"com.apple.SiriVOXService.client" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    queue = [(SVXQueuePerformer *)self->_queuePerformer queue];
    [(NSXPCConnection *)v6 _setQueue:queue];

    v8 = self->_connection;
    v9 = SVXClientServiceCreateXPCInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v10 = self->_connection;
    v11 = SVXClientServiceDelegateCreateXPCInterface();
    [(NSXPCConnection *)v10 setExportedInterface:v11];

    objc_initWeak(&location, self);
    v12 = self->_connection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __41__SVXClientServiceConnection__connection__block_invoke;
    v17[3] = &unk_279C69088;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v17];
    v13 = self->_connection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__SVXClientServiceConnection__connection__block_invoke_2;
    v15[3] = &unk_279C69088;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v15];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __41__SVXClientServiceConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInterrupted];
}

void __41__SVXClientServiceConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (void)_clientServiceDidChange:(BOOL)change
{
  changeCopy = change;
  [(SVXClientActivationService *)self->_activationService clientServiceDidChange:?];
  [(SVXClientAudioSystemService *)self->_audioSystemService clientServiceDidChange:changeCopy];
  [(SVXClientDeviceService *)self->_deviceService clientServiceDidChange:changeCopy];
  [(SVXClientAudioPowerService *)self->_inputAudioPowerService clientServiceDidChange:changeCopy];
  [(SVXClientAudioPowerService *)self->_outputAudioPowerService clientServiceDidChange:changeCopy];
  [(SVXClientSessionService *)self->_sessionService clientServiceDidChange:changeCopy];
  [(SVXClientSpeechSynthesisService *)self->_speechSynthesisService clientServiceDidChange:changeCopy];
  keepAliveService = self->_keepAliveService;

  [(SVXClientKeepAliveService *)keepAliveService clientServiceDidChange:changeCopy];
}

- (id)_clientServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (!self->_isInvalid)
  {
    _connection = [(SVXClientServiceConnection *)self _connection];
    v7 = [_connection remoteObjectProxyWithErrorHandler:v5];
    goto LABEL_5;
  }

  if (handlerCopy)
  {
    _connection = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (v5)[2](v5, _connection);
    v7 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)_invalidate
{
  if (!self->_isInvalid)
  {
    self->_isInvalid = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientServiceConnectionDidInvalidate:self];
  }

  [(SVXClientServiceConnection *)self _cleanUpComponents];

  [(SVXClientServiceConnection *)self _cleanUpConnection];
}

- (void)getClientServiceUsingBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  queuePerformer = self->_queuePerformer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SVXClientServiceConnection_getClientServiceUsingBlock_errorHandler___block_invoke;
  v11[3] = &unk_279C666B8;
  v11[4] = self;
  v12 = handlerCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = handlerCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v11];
}

void __70__SVXClientServiceConnection_getClientServiceUsingBlock_errorHandler___block_invoke(void *a1)
{
  if (*(a1[4] + 24) == 1)
  {
    v1 = a1[5];
    if (v1)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
      (*(v1 + 16))(v1, v4);
    }
  }

  else
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }
}

- (void)handleSpeechSynthesisSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  replyCopy = reply;
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = 136315906;
    v15 = "[SVXClientServiceConnection handleSpeechSynthesisSynthesizedBufferForHandlerUUID:audioChunkData:audioChunkIndex:reply:]";
    v16 = 2112;
    v17 = dCopy;
    v18 = 2048;
    indexCopy = index;
    v20 = 2112;
    v21 = dataCopy;
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s handlerUUID = %@, audioChunkIndex = %tu, audioChunkData = %@", &v14, 0x2Au);
  }

  [(SVXClientSpeechSynthesisService *)self->_speechSynthesisService handleSynthesizedBufferForHandlerUUID:dCopy audioChunkData:dataCopy audioChunkIndex:index reply:replyCopy];
}

- (void)notifyAudioSessionDidBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext
{
  activeCopy = active;
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  deactivationContextCopy = deactivationContext;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315906;
    v12 = "[SVXClientServiceConnection notifyAudioSessionDidBecomeActive:activationContext:deactivationContext:]";
    v13 = 1024;
    v14 = activeCopy;
    v15 = 2112;
    v16 = contextCopy;
    v17 = 2112;
    v18 = deactivationContextCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s flag = %d, activationContext = %@, deactivationContext = %@", &v11, 0x26u);
  }

  [(SVXClientAudioSystemService *)self->_audioSystemService handleAudioSessionDidBecomeActive:activeCopy activationContext:contextCopy deactivationContext:deactivationContextCopy];
}

- (void)notifyAudioSessionWillBecomeActive:(BOOL)active activationContext:(id)context deactivationContext:(id)deactivationContext
{
  activeCopy = active;
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  deactivationContextCopy = deactivationContext;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315906;
    v12 = "[SVXClientServiceConnection notifyAudioSessionWillBecomeActive:activationContext:deactivationContext:]";
    v13 = 1024;
    v14 = activeCopy;
    v15 = 2112;
    v16 = contextCopy;
    v17 = 2112;
    v18 = deactivationContextCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s flag = %d, activationContext = %@, deactivationContext = %@", &v11, 0x26u);
  }

  [(SVXClientAudioSystemService *)self->_audioSystemService handleAudioSessionWillBecomeActive:activeCopy activationContext:contextCopy deactivationContext:deactivationContextCopy];
}

- (void)notifyDidEndUpdateAudioPowerWithType:(int64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (type > 2)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C67430[type];
    }

    v8 = v7;
    v10 = 136315394;
    v11 = "[SVXClientServiceConnection notifyDidEndUpdateAudioPowerWithType:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s type = %@", &v10, 0x16u);
  }

  if (type == 1)
  {
    v9 = 48;
  }

  else
  {
    if (type != 2)
    {
      return;
    }

    v9 = 56;
  }

  [*(&self->super.isa + v9) handleDidEndUpdateAudioPower];
}

- (void)notifyWillBeginUpdateAudioPowerWithType:(int64_t)type wrapper:(id)wrapper
{
  v19 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (type > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C67430[type];
    }

    v10 = v9;
    v13 = 136315650;
    v14 = "[SVXClientServiceConnection notifyWillBeginUpdateAudioPowerWithType:wrapper:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = wrapperCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s type = %@, wrapper = %@", &v13, 0x20u);
  }

  if (type == 1)
  {
    v11 = 48;
    goto LABEL_10;
  }

  if (type == 2)
  {
    v11 = 56;
LABEL_10:
    v12 = [objc_alloc(MEMORY[0x277CEF198]) initWithXPCWrapper:wrapperCopy];
    [*(&self->super.isa + v11) handleWillBeginUpdateAudioPowerWithProvider:v12];
  }
}

- (void)notifySessionDidResignActiveWithDeactivationContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection notifySessionDidResignActiveWithDeactivationContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s deactivationContext = %@", &v6, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidResignActiveWithDeactivationContext:contextCopy];
}

- (void)notifySessionWillResignActiveWithOptions:(unint64_t)options duration:(double)duration
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = SVXSessionResignActiveOptionsGetNames(options);
    v10 = 136315650;
    v11 = "[SVXClientServiceConnection notifySessionWillResignActiveWithOptions:duration:]";
    v12 = 2112;
    v13 = v9;
    v14 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s options = %@, duration = %f", &v10, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillResignActiveWithOptions:options duration:duration];
}

- (void)notifySessionDidBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[SVXClientServiceConnection notifySessionDidBecomeActiveWithActivationContext:turnID:]";
    v11 = 2112;
    v12 = contextCopy;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s activationContext = %@, turnID = %@", &v9, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidBecomeActiveWithActivationContext:contextCopy turnID:dCopy];
}

- (void)notifySessionWillBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[SVXClientServiceConnection notifySessionWillBecomeActiveWithActivationContext:turnID:]";
    v11 = 2112;
    v12 = contextCopy;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s activationContext = %@, turnID = %@", &v9, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillBecomeActiveWithActivationContext:contextCopy turnID:dCopy];
}

- (void)notifySessionDidStopSoundWithID:(int64_t)d error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (d > 6)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C677F8[d];
    }

    v10 = v9;
    v11 = 136315650;
    v12 = "[SVXClientServiceConnection notifySessionDidStopSoundWithID:error:]";
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s soundID = %@, error = %@", &v11, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidStopSoundWithID:d error:errorCopy];
}

- (void)notifySessionDidStartSoundWithID:(int64_t)d
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (d > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C677F8[d];
    }

    v8 = v7;
    v9 = 136315394;
    v10 = "[SVXClientServiceConnection notifySessionDidStartSoundWithID:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s soundID = %@", &v9, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidStartSoundWithID:d];
}

- (void)notifySessionWillStartSoundWithID:(int64_t)d
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (d > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C677F8[d];
    }

    v8 = v7;
    v9 = 136315394;
    v10 = "[SVXClientServiceConnection notifySessionWillStartSoundWithID:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s soundID = %@", &v9, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillStartSoundWithID:d];
}

- (void)notifySessionWillPresentFeedbackWithDialogIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection notifySessionWillPresentFeedbackWithDialogIdentifier:]";
    v8 = 2112;
    v9 = identifierCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s dialogIdentifier = %@", &v6, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillPresentFeedbackWithDialogIdentifier:identifierCopy];
}

- (void)notifyDidChangeSessionStateFrom:(int64_t)from to:(int64_t)to
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (from > 4)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C68A18[from];
    }

    v10 = v9;
    if (to > 4)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68A18[to];
    }

    v12 = v11;
    v13 = 136315650;
    v14 = "[SVXClientServiceConnection notifyDidChangeSessionStateFrom:to:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", &v13, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidChangeStateFrom:from to:to];
}

- (void)notifyWillChangeSessionStateFrom:(int64_t)from to:(int64_t)to
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (from > 4)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C68A18[from];
    }

    v10 = v9;
    if (to > 4)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68A18[to];
    }

    v12 = v11;
    v13 = 136315650;
    v14 = "[SVXClientServiceConnection notifyWillChangeSessionStateFrom:to:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", &v13, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillChangeStateFrom:from to:to];
}

- (void)notifyDidDeactivateWithContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection notifyDidDeactivateWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v6, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleDidDeactivateWithContext:contextCopy];
}

- (void)notifyWillDeactivateWithContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection notifyWillDeactivateWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v6, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleWillDeactivateWithContext:contextCopy];
}

- (void)notifyDidNotActivateWithContext:(id)context error:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  errorCopy = error;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[SVXClientServiceConnection notifyDidNotActivateWithContext:error:]";
    v11 = 2112;
    v12 = contextCopy;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@, error = %@", &v9, 0x20u);
  }

  [(SVXClientActivationService *)self->_activationService handleDidNotActivateWithContext:contextCopy error:errorCopy];
}

- (void)notifyDidActivateWithContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection notifyDidActivateWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v6, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleDidActivateWithContext:contextCopy];
}

- (void)notifyWillActivateWithContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection notifyWillActivateWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v6, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleWillActivateWithContext:contextCopy];
}

- (void)requestPermissionToActivateWithContext:(id)context completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[SVXClientServiceConnection requestPermissionToActivateWithContext:completion:]";
    v11 = 2112;
    v12 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", &v9, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleRequestPermissionToActivateWithContext:contextCopy completion:completionCopy];
}

- (void)getInstanceInfoWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SVXClientServiceConnection getInstanceInfoWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  if (completionCopy)
  {
    info = [(AFInstanceContext *)self->_instanceContext info];
    completionCopy[2](completionCopy, info, 0);
  }
}

- (void)prepareForDeviceSetupWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceConnection prepareForDeviceSetupWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v13 = contextCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v12];
}

void __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 prepareForDeviceSetupWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection prepareForDeviceSetupWithContext:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)setDeviceSetupContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceConnection setDeviceSetupContext:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SVXClientServiceConnection_setDeviceSetupContext___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
}

void __52__SVXClientServiceConnection_setDeviceSetupContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_25];
  [v2 setDeviceSetupContext:*(a1 + 40)];
}

void __52__SVXClientServiceConnection_setDeviceSetupContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceConnection setDeviceSetupContext:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
  }
}

- (void)stopSpeechSynthesisRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceConnection stopSpeechSynthesisRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SVXClientServiceConnection_stopSpeechSynthesisRequest___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
}

void __57__SVXClientServiceConnection_stopSpeechSynthesisRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_23];
  [v2 stopSpeechSynthesisRequest:*(a1 + 40)];
}

void __57__SVXClientServiceConnection_stopSpeechSynthesisRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceConnection stopSpeechSynthesisRequest:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
  }
}

- (void)cancelPendingSpeechSynthesisRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceConnection cancelPendingSpeechSynthesisRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SVXClientServiceConnection_cancelPendingSpeechSynthesisRequest___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
}

void __66__SVXClientServiceConnection_cancelPendingSpeechSynthesisRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_21];
  [v2 cancelPendingSpeechSynthesisRequest:*(a1 + 40)];
}

void __66__SVXClientServiceConnection_cancelPendingSpeechSynthesisRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceConnection cancelPendingSpeechSynthesisRequest:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
  }
}

- (void)enqueueSpeechSynthesisRequest:(id)request completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceConnection enqueueSpeechSynthesisRequest:completion:]";
    v17 = 2112;
    v18 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v13 = requestCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = requestCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v12];
}

void __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 enqueueSpeechSynthesisRequest:*(a1 + 40) completion:*(a1 + 48)];
}

void __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection enqueueSpeechSynthesisRequest:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [[SVXSpeechSynthesisResult alloc] initWithType:4 utteranceInfo:0 error:v3];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)synthesizeRequest:(id)request handlerUUID:(id)d completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[SVXClientServiceConnection synthesizeRequest:handlerUUID:completion:]";
    v22 = 2112;
    v23 = requestCopy;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s request = %@, handlerUUID = %@", buf, 0x20u);
  }

  queuePerformer = self->_queuePerformer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke;
  v16[3] = &unk_279C69038;
  v16[4] = self;
  v17 = requestCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v13 = dCopy;
  v14 = requestCopy;
  v15 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v16];
}

void __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 56);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 synthesizeRequest:*(a1 + 40) handlerUUID:*(a1 + 48) completion:*(a1 + 56)];
}

void __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection synthesizeRequest:handlerUUID:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [[SVXSpeechSynthesisResult alloc] initWithType:4 utteranceInfo:0 error:v3];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)prewarmRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceConnection prewarmRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SVXClientServiceConnection_prewarmRequest___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
}

void __45__SVXClientServiceConnection_prewarmRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_18];
  [v2 prewarmRequest:*(a1 + 40)];
}

void __45__SVXClientServiceConnection_prewarmRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceConnection prewarmRequest:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
  }
}

- (void)fetchAudioPowerWithType:(int64_t)type completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (type > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C67430[type];
    }

    v10 = v9;
    *buf = 136315394;
    v17 = "[SVXClientServiceConnection fetchAudioPowerWithType:completion:]";
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s type = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke;
  v13[3] = &unk_279C68D70;
  v13[4] = self;
  v14 = completionCopy;
  typeCopy = type;
  v12 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v13];
}

void __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchAudioPowerWithType:*(a1 + 48) completion:*(a1 + 40)];
}

void __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection fetchAudioPowerWithType:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)prewarmWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceConnection prewarmWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v13 = contextCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v12];
}

void __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 prewarmWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection prewarmWithContext:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)preheatWithActivationSource:(int64_t)source
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (source > 9)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C67C58[source];
    }

    v8 = v7;
    *buf = 136315394;
    v12 = "[SVXClientServiceConnection preheatWithActivationSource:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s activationSource = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SVXClientServiceConnection_preheatWithActivationSource___block_invoke;
  v10[3] = &unk_279C68C68;
  v10[4] = self;
  v10[5] = source;
  [(SVXQueuePerformer *)queuePerformer performBlock:v10];
}

void __58__SVXClientServiceConnection_preheatWithActivationSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_16];
  [v2 preheatWithActivationSource:*(a1 + 40)];
}

void __58__SVXClientServiceConnection_preheatWithActivationSource___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceConnection preheatWithActivationSource:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
  }
}

- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion
{
  completionCopy = completion;
  queuePerformer = self->_queuePerformer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke;
  v7[3] = &unk_279C68EF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v7];
}

void __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchAlarmAndTimerFiringContextWithCompletion:*(a1 + 40)];
}

void __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection fetchAlarmAndTimerFiringContextWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)fetchSessionActivityStateWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SVXClientServiceConnection fetchSessionActivityStateWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke;
  v8[3] = &unk_279C68EF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
}

void __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchSessionActivityStateWithCompletion:*(a1 + 40)];
}

void __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection fetchSessionActivityStateWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)fetchSessionStateWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SVXClientServiceConnection fetchSessionStateWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke;
  v8[3] = &unk_279C68EF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
}

void __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchSessionStateWithCompletion:*(a1 + 40)];
}

void __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection fetchSessionStateWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[SVXClientServiceConnection transitToAutomaticEndpointingWithTimestamp:]";
    v10 = 2048;
    timestampCopy = timestamp;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s timestamp = %lld", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke;
  v7[3] = &unk_279C68C68;
  v7[4] = self;
  v7[5] = timestamp;
  [(SVXQueuePerformer *)queuePerformer performBlock:v7];
}

void __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_2;
  v4[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v4[4] = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 transitToAutomaticEndpointingWithTimestamp:*(a1 + 40)];
}

void __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[SVXClientServiceConnection transitToAutomaticEndpointingWithTimestamp:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    v10 = 2048;
    v11 = v5;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@, timestamp = %lld", &v6, 0x20u);
  }
}

- (void)performManualEndpointing
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[SVXClientServiceConnection performManualEndpointing]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SVXClientServiceConnection_performManualEndpointing__block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v5];
}

void __54__SVXClientServiceConnection_performManualEndpointing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_621];
  [v1 performManualEndpointing];
}

void __54__SVXClientServiceConnection_performManualEndpointing__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[SVXClientServiceConnection performManualEndpointing]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
  }
}

- (void)deactivateWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceConnection deactivateWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v13 = contextCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v12];
}

void __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 deactivateWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection deactivateWithContext:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)activateWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXClientServiceConnection activateWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v13 = contextCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v12];
}

void __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 activateWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection activateWithContext:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)pingWithReply:(id)reply
{
  v12 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SVXClientServiceConnection pingWithReply:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SVXClientServiceConnection_pingWithReply___block_invoke;
  v8[3] = &unk_279C68EF8;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
}

void __44__SVXClientServiceConnection_pingWithReply___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SVXClientServiceConnection_pingWithReply___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 pingWithReply:*(a1 + 40)];
}

void __44__SVXClientServiceConnection_pingWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientServiceConnection pingWithReply:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)invalidate
{
  queuePerformer = self->_queuePerformer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__SVXClientServiceConnection_invalidate__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v3];
}

- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 connectionFactory:(id)self3 delegate:(id)self4
{
  v47 = *MEMORY[0x277D85DE8];
  performerCopy = performer;
  serviceCopy = service;
  serviceCopy2 = service;
  systemServiceCopy = systemService;
  systemServiceCopy2 = systemService;
  deviceServiceCopy = deviceService;
  powerServiceCopy = powerService;
  audioPowerServiceCopy = audioPowerService;
  sessionServiceCopy = sessionService;
  synthesisServiceCopy = synthesisService;
  aliveServiceCopy = aliveService;
  contextCopy = context;
  factoryCopy = factory;
  delegateCopy = delegate;
  v44.receiver = self;
  v44.super_class = SVXClientServiceConnection;
  v22 = [(SVXClientServiceConnection *)&v44 init];
  if (v22)
  {
    v32 = factoryCopy;
    v23 = delegateCopy;
    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[SVXClientServiceConnection initWithQueuePerformer:activationService:audioSystemService:deviceService:inputAudioPowerService:outputAudioPowerService:sessionService:speechSynthesisService:keepAliveService:instanceContext:connectionFactory:delegate:]";
      _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    objc_storeStrong(&v22->_queuePerformer, performer);
    objc_storeStrong(&v22->_activationService, serviceCopy);
    objc_storeStrong(&v22->_audioSystemService, systemServiceCopy);
    objc_storeStrong(&v22->_deviceService, deviceService);
    objc_storeStrong(&v22->_inputAudioPowerService, powerService);
    objc_storeStrong(&v22->_outputAudioPowerService, audioPowerService);
    objc_storeStrong(&v22->_sessionService, sessionService);
    objc_storeStrong(&v22->_speechSynthesisService, synthesisService);
    objc_storeStrong(&v22->_keepAliveService, aliveService);
    if (contextCopy)
    {
      defaultContext = contextCopy;
    }

    else
    {
      defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
    }

    instanceContext = v22->_instanceContext;
    v22->_instanceContext = defaultContext;
    delegateCopy = v23;

    objc_storeStrong(&v22->_connectionFactory, factory);
    objc_storeWeak(&v22->_delegate, v23);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __249__SVXClientServiceConnection_initWithQueuePerformer_activationService_audioSystemService_deviceService_inputAudioPowerService_outputAudioPowerService_sessionService_speechSynthesisService_keepAliveService_instanceContext_connectionFactory_delegate___block_invoke;
    v42[3] = &unk_279C68108;
    v43 = v22;
    [(SVXClientServiceConnection *)v43 pingWithReply:v42];

    factoryCopy = v32;
  }

  return v22;
}

void __249__SVXClientServiceConnection_initWithQueuePerformer_activationService_audioSystemService_deviceService_inputAudioPowerService_outputAudioPowerService_sessionService_speechSynthesisService_keepAliveService_instanceContext_connectionFactory_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __249__SVXClientServiceConnection_initWithQueuePerformer_activationService_audioSystemService_deviceService_inputAudioPowerService_outputAudioPowerService_sessionService_speechSynthesisService_keepAliveService_instanceContext_connectionFactory_delegate___block_invoke_2;
  v7[3] = &unk_279C68FE8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 performBlock:v7];
}

- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 delegate:(id)self3
{
  delegateCopy = delegate;
  contextCopy = context;
  aliveServiceCopy = aliveService;
  synthesisServiceCopy = synthesisService;
  sessionServiceCopy = sessionService;
  audioPowerServiceCopy = audioPowerService;
  powerServiceCopy = powerService;
  deviceServiceCopy = deviceService;
  systemServiceCopy = systemService;
  serviceCopy = service;
  performerCopy = performer;
  v31 = objc_alloc_init(SVXXPCConnectionFactory);
  v33 = [(SVXClientServiceConnection *)self initWithQueuePerformer:performerCopy activationService:serviceCopy audioSystemService:systemServiceCopy deviceService:deviceServiceCopy inputAudioPowerService:powerServiceCopy outputAudioPowerService:audioPowerServiceCopy sessionService:sessionServiceCopy speechSynthesisService:synthesisServiceCopy keepAliveService:aliveServiceCopy instanceContext:contextCopy connectionFactory:v31 delegate:delegateCopy];

  return v33;
}

- (SVXClientServiceConnection)initWithComponents:(unint64_t)components instanceContext:(id)context delegate:(id)delegate
{
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v52 = "[SVXClientServiceConnection initWithComponents:instanceContext:delegate:]";
    v53 = 2048;
    componentsCopy = components;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s components = %lu", buf, 0x16u);
  }

  v11 = [[SVXQueuePerformer alloc] initWithIdentifier:@"Client Service Connection" qosClass:33 relativePriority:0 options:2];
  v50 = [objc_alloc(MEMORY[0x277CEF158]) initWithInstanceContext:contextCopy];
  if ((components & 2) != 0)
  {
    v14 = [SVXClientActivationService alloc];
    v15 = [delegateCopy clientServiceConnection:self performerForComponent:1];
    if (v15)
    {
      v49 = [(SVXClientActivationService *)v14 initWithClientServiceProvider:self analytics:v50 performer:v15];
    }

    else
    {
      v19 = +[SVXQueuePerformer sharedMainQueuePerformer];
      v49 = [(SVXClientActivationService *)v14 initWithClientServiceProvider:self analytics:v50 performer:v19];
    }

    if ((components & 4) != 0)
    {
LABEL_5:
      v12 = [SVXClientAudioSystemService alloc];
      v13 = [delegateCopy clientServiceConnection:self performerForComponent:2];
      if (v13)
      {
        v48 = [(SVXClientAudioSystemService *)v12 initWithClientServiceProvider:self analytics:v50 performer:v13];
      }

      else
      {
        v16 = +[SVXQueuePerformer sharedMainQueuePerformer];
        v48 = [(SVXClientAudioSystemService *)v12 initWithClientServiceProvider:self analytics:v50 performer:v16];
      }

      if ((components & 8) != 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      v47 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v49 = 0;
    if ((components & 4) != 0)
    {
      goto LABEL_5;
    }
  }

  v48 = 0;
  if ((components & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v17 = [SVXClientDeviceService alloc];
  v18 = [delegateCopy clientServiceConnection:self performerForComponent:3];
  if (v18)
  {
    v47 = [(SVXClientDeviceService *)v17 initWithClientServiceProvider:self analytics:v50 performer:v18];
  }

  else
  {
    v20 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v47 = [(SVXClientDeviceService *)v17 initWithClientServiceProvider:self analytics:v50 performer:v20];
  }

LABEL_19:
  if ((components & 0x10) == 0)
  {
    v46 = 0;
    if ((components & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v45 = 0;
    if ((components & 0x40) != 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v28 = 0;
    if ((components & 0x80) == 0)
    {
      goto LABEL_37;
    }

LABEL_33:
    v30 = [SVXClientSpeechSynthesisService alloc];
    v31 = [delegateCopy clientServiceConnection:self performerForComponent:7];
    if (v31)
    {
      v32 = [(SVXClientSpeechSynthesisService *)v30 initWithClientServiceProvider:self analytics:v50 performer:v31];
    }

    else
    {
      +[SVXQueuePerformer sharedMainQueuePerformer];
      v42 = v11;
      v38 = v37 = contextCopy;
      v32 = [(SVXClientSpeechSynthesisService *)v30 initWithClientServiceProvider:self analytics:v50 performer:v38];

      contextCopy = v37;
      v11 = v42;
    }

    if ((components & 0x100) != 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    v36 = 0;
    goto LABEL_45;
  }

  v23 = [SVXClientAudioPowerService alloc];
  v24 = [delegateCopy clientServiceConnection:self performerForComponent:4];
  if (v24)
  {
    v46 = [(SVXClientAudioPowerService *)v23 initWithType:1 clientServiceProvider:self analytics:v50 performer:v24];
  }

  else
  {
    v29 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v46 = [(SVXClientAudioPowerService *)v23 initWithType:1 clientServiceProvider:self analytics:v50 performer:v29];
  }

  if ((components & 0x20) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v21 = [SVXClientAudioPowerService alloc];
  v22 = [delegateCopy clientServiceConnection:self performerForComponent:5];
  if (v22)
  {
    v45 = [(SVXClientAudioPowerService *)v21 initWithType:2 clientServiceProvider:self analytics:v50 performer:v22];
  }

  else
  {
    v25 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v45 = [(SVXClientAudioPowerService *)v21 initWithType:2 clientServiceProvider:self analytics:v50 performer:v25];
  }

  if ((components & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v26 = [SVXClientSessionService alloc];
  v27 = [delegateCopy clientServiceConnection:self performerForComponent:6];
  if (v27)
  {
    v28 = [(SVXClientSessionService *)v26 initWithClientServiceProvider:self analytics:v50 performer:v27];
  }

  else
  {
    v33 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v28 = [(SVXClientSessionService *)v26 initWithClientServiceProvider:self analytics:v50 performer:v33];
  }

  if ((components & 0x80) != 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  v32 = 0;
  if ((components & 0x100) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v34 = [SVXClientKeepAliveService alloc];
  v35 = [delegateCopy clientServiceConnection:self performerForComponent:8];
  if (v35)
  {
    v36 = [(SVXClientKeepAliveService *)v34 initWithClientServiceProvider:self analytics:v50 performer:v35];
  }

  else
  {
    +[SVXQueuePerformer sharedMainQueuePerformer];
    v43 = v11;
    v40 = v39 = contextCopy;
    v36 = [(SVXClientKeepAliveService *)v34 initWithClientServiceProvider:self analytics:v50 performer:v40];

    contextCopy = v39;
    v11 = v43;
  }

LABEL_45:
  v44 = [(SVXClientServiceConnection *)self initWithQueuePerformer:v11 activationService:v49 audioSystemService:v48 deviceService:v47 inputAudioPowerService:v46 outputAudioPowerService:v45 sessionService:v28 speechSynthesisService:v32 keepAliveService:v36 instanceContext:contextCopy delegate:delegateCopy];

  return v44;
}

- (SVXClientServiceConnection)initWithComponents:(unint64_t)components delegate:(id)delegate
{
  v6 = MEMORY[0x277CEF2C8];
  delegateCopy = delegate;
  currentContext = [v6 currentContext];
  v9 = [(SVXClientServiceConnection *)self initWithComponents:components instanceContext:currentContext delegate:delegateCopy];

  return v9;
}

- (void)dealloc
{
  [(SVXClientServiceConnection *)self _invalidate];
  v3.receiver = self;
  v3.super_class = SVXClientServiceConnection;
  [(SVXClientServiceConnection *)&v3 dealloc];
}

@end