@interface SiriAnalyticsXPCServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SiriAnalyticsXPCServiceListener)initWithMachServiceName:(id)name entitlementsKey:(id)key queue:(id)queue delegate:(id)delegate;
@end

@implementation SiriAnalyticsXPCServiceListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v25 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v7 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[SiriAnalyticsXPCServiceListener listener:shouldAcceptNewConnection:]";
    v21 = 2112;
    v22 = connectionCopy;
    v23 = 1024;
    v24 = processIdentifier;
    _os_log_impl(&dword_1D9863000, v7, OS_LOG_TYPE_INFO, "%s %@ Siri Analytics Connection Connected (pid=%d])", buf, 0x1Cu);
  }

  v8 = [SiriAnalyticsXPCConnectionHandler alloc];
  entitlementsKey = self->_entitlementsKey;
  queue = self->_queue;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [(SiriAnalyticsXPCConnectionHandler *)v8 initWithConnection:connectionCopy entitlementsKey:entitlementsKey queue:queue delegate:WeakRetained];

  v13 = SiriAnalyticsXPCServiceInterface();
  [connectionCopy setExportedInterface:v13];

  [connectionCopy setExportedObject:v12];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v17[3] = &__block_descriptor_36_e5_v8__0l;
  v18 = processIdentifier;
  [connectionCopy setInvalidationHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v15[3] = &__block_descriptor_36_e5_v8__0l;
  v16 = processIdentifier;
  [connectionCopy setInterruptionHandler:v15];
  [connectionCopy _setQueue:self->_queue];
  [connectionCopy resume];

  return 1;
}

void __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[SiriAnalyticsXPCServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&dword_1D9863000, v2, OS_LOG_TYPE_INFO, "%s Siri Analytics Connection Invalidated (pid=%d)", &v4, 0x12u);
  }
}

void __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[SiriAnalyticsXPCServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&dword_1D9863000, v2, OS_LOG_TYPE_INFO, "%s Siri Analytics Connection Interrupted (pid=%d)", &v4, 0x12u);
  }
}

- (SiriAnalyticsXPCServiceListener)initWithMachServiceName:(id)name entitlementsKey:(id)key queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  keyCopy = key;
  queueCopy = queue;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = SiriAnalyticsXPCServiceListener;
  v14 = [(SiriAnalyticsXPCServiceListener *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v15->_entitlementsKey, key);
    v16 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:nameCopy];
    listener = v15->_listener;
    v15->_listener = v16;

    [(NSXPCListener *)v15->_listener setDelegate:v15];
    [(NSXPCListener *)v15->_listener _setQueue:queueCopy];
    [(NSXPCListener *)v15->_listener resume];
  }

  return v15;
}

@end