@interface DUXPCClientHelpers
- (DUXPCClientHelpers)initWithServiceName:(id)name whitelistedServerInterface:(id)interface clientExportedObject:(id)object interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_locked_establishConnection;
- (void)dealloc;
@end

@implementation DUXPCClientHelpers

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_connectionLock);
  [(DUXPCClientHelpers *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  pthread_mutex_unlock(&self->_connectionLock);

  return v5;
}

- (id)remoteObjectProxy
{
  pthread_mutex_lock(&self->_connectionLock);
  [(DUXPCClientHelpers *)self _locked_establishConnection];
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  pthread_mutex_unlock(&self->_connectionLock);

  return remoteObjectProxy;
}

- (void)_locked_establishConnection
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_connection)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      v15 = serviceName;
      _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Establishing new connection to %@ .", buf, 0xCu);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:self->_serviceName options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_allowListedServerInterface];
    WeakRetained = objc_loadWeakRetained(&self->_clientExportedObject);
    [(NSXPCConnection *)self->_connection setExportedObject:WeakRetained];

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_249D21AC4;
    v12[3] = &unk_278FB5750;
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v12];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = sub_249D21B8C;
    v10 = &unk_278FB5750;
    objc_copyWeak(&v11, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&v7];
    [(NSXPCConnection *)self->_connection resume:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_connectionLock);
  v3.receiver = self;
  v3.super_class = DUXPCClientHelpers;
  [(DUXPCClientHelpers *)&v3 dealloc];
}

- (DUXPCClientHelpers)initWithServiceName:(id)name whitelistedServerInterface:(id)interface clientExportedObject:(id)object interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  nameCopy = name;
  interfaceCopy = interface;
  objectCopy = object;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  v25.receiver = self;
  v25.super_class = DUXPCClientHelpers;
  v18 = [(DUXPCClientHelpers *)&v25 init];
  v19 = v18;
  if (v18)
  {
    pthread_mutex_init(&v18->_connectionLock, 0);
    objc_storeStrong(&v19->_serviceName, name);
    objc_storeStrong(&v19->_allowListedServerInterface, interface);
    objc_storeWeak(&v19->_clientExportedObject, objectCopy);
    v20 = _Block_copy(handlerCopy);
    interruptionHandler = v19->_interruptionHandler;
    v19->_interruptionHandler = v20;

    v22 = _Block_copy(invalidationHandlerCopy);
    invalidationHandler = v19->_invalidationHandler;
    v19->_invalidationHandler = v22;
  }

  return v19;
}

@end