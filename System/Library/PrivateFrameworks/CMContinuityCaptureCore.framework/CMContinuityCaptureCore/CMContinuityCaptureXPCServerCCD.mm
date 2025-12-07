@interface CMContinuityCaptureXPCServerCCD
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CMContinuityCaptureXPCServerCCD)init;
- (void)_enumerateConnectionsWithBlock:(id)block;
- (void)disconnectSession;
- (void)pauseSessionForEvent:(int64_t)event;
- (void)prepareForPullConversation:(id)conversation;
- (void)presentShieldError:(int64_t)error userInfo:(id)info;
- (void)refreshPrivacyAcknowledgement;
- (void)requestContinuityCaptureUIConfiguration:(id)configuration;
- (void)resumeStreamingForEvent:(int64_t)event;
- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier;
- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier;
- (void)skipPlacementStep;
- (void)startListeningWithDelegate:(id)delegate;
- (void)tearDownShieldUI;
- (void)updateClientsWithConfiguration:(id)configuration;
@end

@implementation CMContinuityCaptureXPCServerCCD

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[CMContinuityCaptureXPCServerCCD sharedInstance];
  }

  v3 = _sharedListener;

  return v3;
}

uint64_t __49__CMContinuityCaptureXPCServerCCD_sharedInstance__block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  _sharedListener = objc_alloc_init(CMContinuityCaptureXPCServerCCD);

  return MEMORY[0x2821F96F8]();
}

- (CMContinuityCaptureXPCServerCCD)init
{
  v18.receiver = self;
  v18.super_class = CMContinuityCaptureXPCServerCCD;
  v2 = [(CMContinuityCaptureXPCServerCCD *)&v18 init];
  if (v2)
  {
    if (dword_27ECB4D60)
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

    [@"com.apple.continuitycapture.listener.xpcconnection" UTF8String];
    v5 = FigDispatchQueueCreateWithPriority();
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v5;
  }

  return v2;
}

- (void)startListeningWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (dword_27ECB4D60)
  {
    v21 = 0;
    v20 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v6;
    v19 = v6;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  if (!self->_connections)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = self->_connections;
    self->_connections = v7;

    self->_connectionsLock._os_unfair_lock_opaque = 0;
  }

  serviceListener = self->_serviceListener;
  if (!serviceListener)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:?];
    v11 = self->_serviceListener;
    self->_serviceListener = v10;

    [(NSXPCListener *)self->_serviceListener setDelegate:?];
    serviceListener = self->_serviceListener;
  }

  [(NSXPCListener *)serviceListener resume];
}

- (void)tearDownShieldUI
{
  if (dword_27ECB4D60)
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

  [(CMContinuityCaptureXPCServerCCD *)self _enumerateConnectionsWithBlock:?];
}

void __51__CMContinuityCaptureXPCServerCCD_tearDownShieldUI__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteObjectProxy];
  [v2 tearDownShield];
}

- (void)presentShieldError:(int64_t)error userInfo:(id)info
{
  infoCopy = info;
  if (dword_27ECB4D60)
  {
    v18 = 0;
    v17 = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v7;
    v16 = v7;
    v13 = v7;
    v14 = v7;
    v11 = v7;
    v12 = v7;
    v9 = v7;
    v10 = v7;
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = infoCopy;
  [(CMContinuityCaptureXPCServerCCD *)self _enumerateConnectionsWithBlock:?];
}

void __63__CMContinuityCaptureXPCServerCCD_presentShieldError_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteObjectProxy];
  [v2 presentError:? userInfo:?];
}

- (void)requestContinuityCaptureUIConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (dword_27ECB4D60)
  {
    v17 = 0;
    v16 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    v10 = v6;
    v11 = v6;
    v8 = v6;
    v9 = v6;
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestContinuityCaptureUIConfiguration:?];
}

- (void)resumeStreamingForEvent:(int64_t)event
{
  if (dword_27ECB4D60)
  {
    v16 = 0;
    v15 = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v5;
    v14 = v5;
    v11 = v5;
    v12 = v5;
    v9 = v5;
    v10 = v5;
    v7 = v5;
    v8 = v5;
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained resumeStreamingForEvent:?];
}

- (void)pauseSessionForEvent:(int64_t)event
{
  if (dword_27ECB4D60)
  {
    v16 = 0;
    v15 = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v5;
    v14 = v5;
    v11 = v5;
    v12 = v5;
    v9 = v5;
    v10 = v5;
    v7 = v5;
    v8 = v5;
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pauseSessionForEvent:?];
}

- (void)updateClientsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (dword_27ECB4D60)
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

  v8 = configurationCopy;
  v7 = configurationCopy;
  [(CMContinuityCaptureXPCServerCCD *)self _enumerateConnectionsWithBlock:?];
}

void __66__CMContinuityCaptureXPCServerCCD_updateClientsWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteObjectProxy];
  [v2 sessionDidUpdateWithConfiguration:?];
}

- (void)disconnectSession
{
  if (dword_27ECB4D60)
  {
    v15 = 0;
    v14 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v4;
    v13 = v4;
    v10 = v4;
    v11 = v4;
    v8 = v4;
    v9 = v4;
    v6 = v4;
    v7 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained disconnectSession];
}

- (void)skipPlacementStep
{
  if (dword_27ECB4D60)
  {
    v15 = 0;
    v14 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v4;
    v13 = v4;
    v10 = v4;
    v11 = v4;
    v8 = v4;
    v9 = v4;
    v6 = v4;
    v7 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained skipPlacementStep];
}

- (void)prepareForPullConversation:(id)conversation
{
  conversationCopy = conversation;
  if (dword_27ECB4D60)
  {
    v17 = 0;
    v16 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    v10 = v6;
    v11 = v6;
    v8 = v6;
    v9 = v6;
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained prepareForPullConversation:?];
}

- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (dword_27ECB4D60)
  {
    v20 = 0;
    v19 = 0;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v9;
    v18 = v9;
    v15 = v9;
    v16 = v9;
    v13 = v9;
    v14 = v9;
    v11 = v9;
    v12 = v9;
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setupSingSessionFromURL:? remoteDisplayIdentifier:?];
}

- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier
{
  displayIdentifierCopy = displayIdentifier;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setupSingSessionWithMediaRouteIdentifier:? remoteDisplayIdentifier:?];
}

- (void)refreshPrivacyAcknowledgement
{
  if (dword_27ECB4D60)
  {
    v15 = 0;
    v14 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v4;
    v13 = v4;
    v10 = v4;
    v11 = v4;
    v8 = v4;
    v9 = v4;
    v6 = v4;
    v7 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained refreshPrivacyAcknowledgement];
}

- (void)_enumerateConnectionsWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_connectionsLock);
  v5 = [(NSMutableArray *)self->_connections copy];
  os_unfair_lock_unlock(&self->_connectionsLock);
  if (dword_27ECB4D60)
  {
    v22 = 0;
    v21 = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v7;
    v20 = v7;
    v17 = v7;
    v18 = v7;
    v15 = v7;
    v16 = v7;
    v13 = v7;
    v14 = v7;
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        blockCopy[2](blockCopy, *(8 * i));
      }

      v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceListener = self->_serviceListener;
  if (serviceListener == listenerCopy)
  {
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:?];
    [connectionCopy setExportedInterface:?];

    [connectionCopy setExportedObject:?];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:?];
    [connectionCopy setRemoteObjectInterface:?];

    objc_initWeak(&location, self);
    objc_initWeak(&from, connectionCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke;
    v25[3] = &unk_278D5D488;
    objc_copyWeak(&v26, &location);
    objc_copyWeak(&v27, &from);
    v11 = MEMORY[0x245D12020](v25);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_2;
    v23 = &unk_278D5D4B0;
    v12 = v11;
    v24 = v12;
    [connectionCopy setInvalidationHandler:?];
    v18[1] = MEMORY[0x277D85DD0];
    v18[2] = 3221225472;
    v18[3] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_3;
    v18[4] = &unk_278D5D4B0;
    v13 = v12;
    v19 = v13;
    [connectionCopy setInterruptionHandler:?];
    xpcConnectionQueue = self->_xpcConnectionQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_4;
    v16[3] = &unk_278D5C0A8;
    objc_copyWeak(v18, &location);
    v17 = connectionCopy;
    dispatch_async(xpcConnectionQueue, v16);

    objc_destroyWeak(v18);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return serviceListener == listenerCopy;
}

void __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeObject:?];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

void __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [*&v3[2]._os_unfair_lock_opaque addObject:?];
    os_unfair_lock_unlock(v3 + 4);
    [*(a1 + 32) _setQueue:?];
    [*(a1 + 32) resume];
    if (dword_27ECB4D60)
    {
      v25 = 0;
      v24 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v5;
      v23 = v5;
      v20 = v5;
      v21 = v5;
      v18 = v5;
      v19 = v5;
      v16 = v5;
      v17 = v5;
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMContinuityCaptureXPCConnectionHasEntitlement(*(a1 + 32), @"com.apple.continuitycapture.shieldUI"))
    {
      if (dword_27ECB4D60)
      {
        v25 = 0;
        v24 = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v22 = v7;
        v23 = v7;
        v20 = v7;
        v21 = v7;
        v18 = v7;
        v19 = v7;
        v16 = v7;
        v17 = v7;
        LODWORD(v8) = v25;
        v9 = v24;
        if (os_log_type_enabled(v6, v24))
        {
          v8 = v8;
        }

        else
        {
          v8 = v8 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v10 = [*(a1 + 32) debugDescription];
          v12 = 136315394;
          v13 = "[CMContinuityCaptureXPCServerCCD listener:shouldAcceptNewConnection:]_block_invoke";
          v14 = 2112;
          v15 = v10;
          _os_log_send_and_compose_impl(v8, 0, &v16, 128, &dword_242545000, v6, v9, "<<<< CMContinuityCaptureXPCServer >>>> %s: Connection %@ is hosting shieldUI", &v12, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = objc_loadWeakRetained(&v3[10]);
      if (*(a1 + 32))
      {
        [&v16 auditToken];
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      [v11 shieldDidConnect:?];
    }

    [(os_unfair_lock_s *)v3 requestContinuityCaptureUIConfiguration:?];
  }
}

@end