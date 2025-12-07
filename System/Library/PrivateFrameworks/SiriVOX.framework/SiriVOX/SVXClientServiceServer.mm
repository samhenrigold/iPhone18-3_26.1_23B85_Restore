@interface SVXClientServiceServer
- (SVXClientServiceServer)initWithModule:(id)module;
- (void)_addConnection:(id)connection;
- (void)_removeAllConnections;
- (void)_removeConnection:(id)connection;
- (void)addConnection:(id)connection;
- (void)dealloc;
- (void)removeConnection:(id)connection;
- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies;
- (void)stopWithModuleInstanceProvider:(id)provider;
@end

@implementation SVXClientServiceServer

- (void)_removeAllConnections
{
  connectionsByUUID = self->_connectionsByUUID;
  self->_connectionsByUUID = 0;
  v3 = connectionsByUUID;

  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5522];
}

void __47__SVXClientServiceServer__removeAllConnections__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceServer _removeAllConnections]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s connection = %@", &v5, 0x16u);
  }

  [v3 invalidate];
}

- (void)_removeConnection:(id)connection
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  uuid = [connectionCopy uuid];
  v6 = [(NSMutableDictionary *)self->_connectionsByUUID objectForKey:uuid];

  if (v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[SVXClientServiceServer _removeConnection:]";
      v10 = 2112;
      v11 = connectionCopy;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@", &v8, 0x16u);
    }

    [(NSMutableDictionary *)self->_connectionsByUUID removeObjectForKey:uuid];
    [connectionCopy invalidate];
  }
}

- (void)_addConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  uuid = [connectionCopy uuid];
  v6 = [(NSMutableDictionary *)self->_connectionsByUUID objectForKey:uuid];

  if (!v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "[SVXClientServiceServer _addConnection:]";
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@", &v11, 0x16u);
    }

    connectionsByUUID = self->_connectionsByUUID;
    if (!connectionsByUUID)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_connectionsByUUID;
      self->_connectionsByUUID = v9;

      connectionsByUUID = self->_connectionsByUUID;
    }

    [(NSMutableDictionary *)connectionsByUUID setObject:connectionCopy forKey:uuid];
    [connectionCopy configureWithDeviceSetupManager:self->_deviceSetupManager sessionManager:self->_sessionManager speechSynthesizer:self->_speechSynthesizer synthesisManager:self->_synthesisManager];
  }
}

- (void)stopWithModuleInstanceProvider:(id)provider
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SVXClientServiceServer stopWithModuleInstanceProvider:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [(SVXClientServiceServer *)self _removeAllConnections];
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = 0;

  sessionManager = self->_sessionManager;
  self->_sessionManager = 0;

  deviceSetupManager = self->_deviceSetupManager;
  self->_deviceSetupManager = 0;

  synthesisManager = self->_synthesisManager;
  self->_synthesisManager = 0;
}

- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies
{
  v17 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[SVXClientServiceServer startWithModuleInstanceProvider:platformDependencies:]";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s ", &v15, 0xCu);
  }

  [(SVXClientServiceServer *)self _removeAllConnections];
  sessionManager = [providerCopy sessionManager];
  sessionManager = self->_sessionManager;
  self->_sessionManager = sessionManager;

  speechSynthesizer = [providerCopy speechSynthesizer];
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = speechSynthesizer;

  deviceSetupManager = [providerCopy deviceSetupManager];
  deviceSetupManager = self->_deviceSetupManager;
  self->_deviceSetupManager = deviceSetupManager;

  synthesisManager = [providerCopy synthesisManager];
  synthesisManager = self->_synthesisManager;
  self->_synthesisManager = synthesisManager;
}

- (SVXClientServiceServer)initWithModule:(id)module
{
  moduleCopy = module;
  v9.receiver = self;
  v9.super_class = SVXClientServiceServer;
  v6 = [(SVXClientServiceServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_module, module);
  }

  return v7;
}

- (void)removeConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServer removeConnection:]";
    v12 = 2112;
    v13 = connectionCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s connection = %@", buf, 0x16u);
  }

  performer = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SVXClientServiceServer_removeConnection___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = connectionCopy;
  v7 = connectionCopy;
  [performer performBlock:v8];
}

- (void)addConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXClientServiceServer addConnection:]";
    v12 = 2112;
    v13 = connectionCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s connection = %@", buf, 0x16u);
  }

  performer = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SVXClientServiceServer_addConnection___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = connectionCopy;
  v7 = connectionCopy;
  [performer performBlock:v8];
}

- (void)dealloc
{
  [(SVXClientServiceServer *)self _removeAllConnections];
  v3.receiver = self;
  v3.super_class = SVXClientServiceServer;
  [(SVXClientServiceServer *)&v3 dealloc];
}

@end