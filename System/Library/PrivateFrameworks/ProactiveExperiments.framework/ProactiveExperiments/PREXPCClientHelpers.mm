@interface PREXPCClientHelpers
- (PREXPCClientHelpers)initWithServiceName:(id)name whitelistedServerInterface:(id)interface clientExportedObject:(id)object interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_locked_establishConnection;
- (void)dealloc;
@end

@implementation PREXPCClientHelpers

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_connLock);
  [(PREXPCClientHelpers *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (id)remoteObjectProxy
{
  pthread_mutex_lock(&self->_connLock);
  [(PREXPCClientHelpers *)self _locked_establishConnection];
  remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  pthread_mutex_unlock(&self->_connLock);

  return remoteObjectProxy;
}

- (void)_locked_establishConnection
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_conn)
  {
    v3 = pre_xpc_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      v16 = serviceName;
      _os_log_impl(&dword_260CE3000, v3, OS_LOG_TYPE_DEFAULT, "Establishing new connection to %@ .", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:self->_serviceName options:0];
    conn = self->_conn;
    self->_conn = v5;

    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:self->_whitelistedServerInterface];
    WeakRetained = objc_loadWeakRetained(&self->_clientExportedObject);
    [(NSXPCConnection *)self->_conn setExportedObject:WeakRetained];

    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PREXPCClientHelpers__locked_establishConnection__block_invoke;
    v13[3] = &unk_279ABAEF8;
    objc_copyWeak(&v14, buf);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v13];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __50__PREXPCClientHelpers__locked_establishConnection__block_invoke_7;
    v11 = &unk_279ABAEF8;
    objc_copyWeak(&v12, buf);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:&v8];
    [(NSXPCConnection *)self->_conn resume:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __50__PREXPCClientHelpers__locked_establishConnection__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pre_xpc_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = WeakRetained[10];
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_260CE3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v4, 0xCu);
    }

    (*(WeakRetained[13] + 16))();
  }
}

void __50__PREXPCClientHelpers__locked_establishConnection__block_invoke_7(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pre_xpc_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(WeakRetained + 10);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_260CE3000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %@ invalidated.", &v5, 0xCu);
    }

    (*(*(WeakRetained + 14) + 16))();
    pthread_mutex_lock((WeakRetained + 8));
    v4 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    pthread_mutex_unlock((WeakRetained + 8));
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_connLock);
  v3.receiver = self;
  v3.super_class = PREXPCClientHelpers;
  [(PREXPCClientHelpers *)&v3 dealloc];
}

- (PREXPCClientHelpers)initWithServiceName:(id)name whitelistedServerInterface:(id)interface clientExportedObject:(id)object interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  nameCopy = name;
  interfaceCopy = interface;
  objectCopy = object;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  v25.receiver = self;
  v25.super_class = PREXPCClientHelpers;
  v18 = [(PREXPCClientHelpers *)&v25 init];
  v19 = v18;
  if (v18)
  {
    pthread_mutex_init(&v18->_connLock, 0);
    objc_storeStrong(&v19->_serviceName, name);
    objc_storeStrong(&v19->_whitelistedServerInterface, interface);
    objc_storeWeak(&v19->_clientExportedObject, objectCopy);
    v20 = MEMORY[0x2666ECBF0](handlerCopy);
    interruptionHandler = v19->_interruptionHandler;
    v19->_interruptionHandler = v20;

    v22 = MEMORY[0x2666ECBF0](invalidationHandlerCopy);
    invalidationHandler = v19->_invalidationHandler;
    v19->_invalidationHandler = v22;
  }

  return v19;
}

@end