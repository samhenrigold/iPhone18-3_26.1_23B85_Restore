@interface CHXPCClientHelper
- (CHXPCClientHelper)initWithServiceName:(id)name whitelistedServerInterface:(id)interface clientExportedObject:(id)object interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_locked_establishConnection;
- (void)dealloc;
@end

@implementation CHXPCClientHelper

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_connLock);
  [(CHXPCClientHelper *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_connLock);
  [(CHXPCClientHelper *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn remoteObjectProxyWithErrorHandler:handlerCopy];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (void)_locked_establishConnection
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_conn)
  {
    v3 = ch_xpc_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      v16 = serviceName;
      _os_log_impl(&dword_243B92000, v3, OS_LOG_TYPE_DEFAULT, "Establishing new connection to %@ .", buf, 0xCu);
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
    v13[2] = __48__CHXPCClientHelper__locked_establishConnection__block_invoke;
    v13[3] = &unk_278DE4ED8;
    objc_copyWeak(&v14, buf);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v13];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __48__CHXPCClientHelper__locked_establishConnection__block_invoke_7;
    v11 = &unk_278DE4ED8;
    objc_copyWeak(&v12, buf);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:&v8];
    [(NSXPCConnection *)self->_conn resume:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __48__CHXPCClientHelper__locked_establishConnection__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ch_xpc_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = WeakRetained[10];
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_243B92000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v4, 0xCu);
    }

    (*(WeakRetained[13] + 16))();
  }
}

void __48__CHXPCClientHelper__locked_establishConnection__block_invoke_7(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ch_xpc_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(WeakRetained + 10);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_243B92000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ invalidated.", &v5, 0xCu);
    }

    (*(*(WeakRetained + 14) + 16))();
    pthread_mutex_lock((WeakRetained + 8));
    v3 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    pthread_mutex_unlock((WeakRetained + 8));
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_connLock);
  v3.receiver = self;
  v3.super_class = CHXPCClientHelper;
  [(CHXPCClientHelper *)&v3 dealloc];
}

- (CHXPCClientHelper)initWithServiceName:(id)name whitelistedServerInterface:(id)interface clientExportedObject:(id)object interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  nameCopy = name;
  interfaceCopy = interface;
  objectCopy = object;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  v25.receiver = self;
  v25.super_class = CHXPCClientHelper;
  v18 = [(CHXPCClientHelper *)&v25 init];
  v19 = v18;
  if (v18)
  {
    pthread_mutex_init(&v18->_connLock, 0);
    objc_storeStrong(&v19->_serviceName, name);
    objc_storeStrong(&v19->_whitelistedServerInterface, interface);
    objc_storeWeak(&v19->_clientExportedObject, objectCopy);
    v20 = MEMORY[0x245D4AFF0](handlerCopy);
    interruptionHandler = v19->_interruptionHandler;
    v19->_interruptionHandler = v20;

    v22 = MEMORY[0x245D4AFF0](invalidationHandlerCopy);
    invalidationHandler = v19->_invalidationHandler;
    v19->_invalidationHandler = v22;
  }

  return v19;
}

@end