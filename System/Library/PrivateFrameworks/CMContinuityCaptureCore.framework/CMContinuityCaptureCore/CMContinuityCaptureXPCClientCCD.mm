@interface CMContinuityCaptureXPCClientCCD
+ (id)sharedInstance;
- (CMContinuityCaptureXPCClientCCD)init;
- (id)_service;
- (void)connectToContinuityCaptureServerWithDelegate:(id)delegate;
- (void)disconnectSession;
- (void)pauseSessionForEvent:(int64_t)event;
- (void)prepareForPullConversation:(id)conversation;
- (void)presentError:(int64_t)error userInfo:(id)info;
- (void)refreshPrivacyAcknowledgement;
- (void)requestContinuityCaptureUIConfiguration:(id)configuration;
- (void)resumeStreamingForEvent:(int64_t)event;
- (void)serverXPCConnectionInterrupted;
- (void)sessionDidUpdateWithConfiguration:(id)configuration;
- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier;
- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier;
- (void)skipPlacementStep;
- (void)tearDownShield;
@end

@implementation CMContinuityCaptureXPCClientCCD

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[CMContinuityCaptureXPCClientCCD sharedInstance];
  }

  v3 = _sharedClient;

  return v3;
}

uint64_t __49__CMContinuityCaptureXPCClientCCD_sharedInstance__block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  _sharedClient = objc_alloc_init(CMContinuityCaptureXPCClientCCD);

  return MEMORY[0x2821F96F8]();
}

- (CMContinuityCaptureXPCClientCCD)init
{
  v18.receiver = self;
  v18.super_class = CMContinuityCaptureXPCClientCCD;
  v2 = [(CMContinuityCaptureXPCClientCCD *)&v18 init];
  if (v2)
  {
    if (dword_27ECB4DA0)
    {
      v17 = 0;
      v16 = 0;
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14 = v4;
      v15 = v4;
      v12 = v4;
      v13 = v4;
      v10 = v4;
      v11 = v4;
      v8 = v4;
      v9 = v4;
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = dispatch_queue_create("com.apple.continuitycapture.remoteuiclient.connection", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v5;
  }

  return v2;
}

- (void)sessionDidUpdateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (dword_27ECB4DA0)
  {
    v18 = 0;
    v17 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v6;
    v16 = v6;
    v13 = v6;
    v14 = v6;
    v11 = v6;
    v12 = v6;
    v9 = v6;
    v10 = v6;
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sessionDidUpdateWithConfiguration:?];
  }
}

- (void)tearDownShield
{
  if (dword_27ECB4DA0)
  {
    v16 = 0;
    v15 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v4;
    v14 = v4;
    v11 = v4;
    v12 = v4;
    v9 = v4;
    v10 = v4;
    v7 = v4;
    v8 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained tearDownShield];
  }
}

- (void)serverXPCConnectionInterrupted
{
  if (dword_27ECB4DA0)
  {
    v16 = 0;
    v15 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v4;
    v14 = v4;
    v11 = v4;
    v12 = v4;
    v9 = v4;
    v10 = v4;
    v7 = v4;
    v8 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained serverXPCConnectionInterrupted];
  }
}

- (void)presentError:(int64_t)error userInfo:(id)info
{
  infoCopy = info;
  if (dword_27ECB4DA0)
  {
    v19 = 0;
    v18 = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v7;
    v17 = v7;
    v14 = v7;
    v15 = v7;
    v12 = v7;
    v13 = v7;
    v10 = v7;
    v11 = v7;
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained presentError:? userInfo:?];
  }
}

- (void)requestContinuityCaptureUIConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service requestContinuityCaptureUIConfiguration:?];
}

- (void)resumeStreamingForEvent:(int64_t)event
{
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service resumeStreamingForEvent:?];
}

- (void)pauseSessionForEvent:(int64_t)event
{
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service pauseSessionForEvent:?];
}

- (void)disconnectSession
{
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service disconnectSession];
}

- (void)skipPlacementStep
{
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service skipPlacementStep];
}

- (void)prepareForPullConversation:(id)conversation
{
  conversationCopy = conversation;
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service prepareForPullConversation:?];
}

- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lCopy = l;
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service setupSingSessionFromURL:? remoteDisplayIdentifier:?];
}

- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier
{
  displayIdentifierCopy = displayIdentifier;
  identifierCopy = identifier;
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service setupSingSessionWithMediaRouteIdentifier:? remoteDisplayIdentifier:?];
}

- (void)refreshPrivacyAcknowledgement
{
  _service = [(CMContinuityCaptureXPCClientCCD *)self _service];
  [_service refreshPrivacyAcknowledgement];
}

- (void)connectToContinuityCaptureServerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_initWeak(&location, self);
  v5 = dispatch_semaphore_create(0);
  objc_storeWeak(&self->_delegate, delegateCopy);
  dispatch_assert_queue_not_V2(self->_connectionQueue);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke;
  v9[3] = &unk_278D5C120;
  objc_copyWeak(&v11, &location);
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(connectionQueue, v9);
  v8 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v7, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:? options:?];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:?];
    [v3 setRemoteObjectInterface:?];

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:?];
    [v3 setExportedInterface:?];

    [v3 setExportedObject:?];
    objc_initWeak(&location, v3);
    [v3 setInvalidationHandler:?];
    v24[1] = MEMORY[0x277D85DD0];
    v24[2] = 3221225472;
    v24[3] = __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke_3;
    v24[4] = &unk_278D5C080;
    objc_copyWeak(&v25, (a1 + 48));
    [v3 setInterruptionHandler:?];
    [WeakRetained[1] invalidate];
    objc_storeStrong(WeakRetained + 1, v3);
    [WeakRetained[1] resume];
    v6 = [WeakRetained _service];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke_5;
    v22 = &unk_278D5DAA8;
    objc_copyWeak(v24, (a1 + 48));
    v23 = *(a1 + 40);
    [v6 requestContinuityCaptureUIConfiguration:?];

    if (dword_27ECB4DA0)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v15 = v8;
      v16 = v8;
      v13 = v8;
      v14 = v8;
      v11 = v8;
      v12 = v8;
      v9 = v8;
      v10 = v8;
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    objc_destroyWeak(v24);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained serverXPCConnectionInterrupted];
    v4 = dispatch_time(0, 3000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke_4;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_after(v4, v5, block);

    objc_destroyWeak(&v7);
  }
}

void __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 3);
    [v3 connectToContinuityCaptureServerWithDelegate:?];

    WeakRetained = v3;
  }
}

void __80__CMContinuityCaptureXPCClientCCD_connectToContinuityCaptureServerWithDelegate___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (dword_27ECB4DA0)
    {
      v16 = 0;
      v15 = 0;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v13 = v6;
      v14 = v6;
      v11 = v6;
      v12 = v6;
      v9 = v6;
      v10 = v6;
      v7 = v6;
      v8 = v6;
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [WeakRetained sessionDidUpdateWithConfiguration:?];
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)_service
{
  connection = self->_connection;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __43__CMContinuityCaptureXPCClientCCD__service__block_invoke;
  v8 = &unk_278D5D990;
  selfCopy = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:?];

  return v3;
}

void __43__CMContinuityCaptureXPCClientCCD__service__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (dword_27ECB4DA0)
  {
    v14 = 0;
    v13 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11 = v4;
    v12 = v4;
    v9 = v4;
    v10 = v4;
    v7 = v4;
    v8 = v4;
    v5 = v4;
    v6 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

@end