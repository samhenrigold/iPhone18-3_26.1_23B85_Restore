@interface _PASXPCClientHelper
- (_PASXPCClientHelper)initWithServiceName:(id)name connectionOptions:(unint64_t)options allowlistedServerInterface:(id)interface allowlistedClientInterface:(id)clientInterface serverInitiatedRequestHandler:(id)handler allowSystemToUserConnection:(BOOL)connection interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0 logHandle:(id)self1;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_locked_establishConnection;
- (void)dealloc;
@end

@implementation _PASXPCClientHelper

- (void)_locked_establishConnection
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  if (!self->_conn)
  {
    logHandle = self->_logHandle;
    if (logHandle && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      *v14 = serviceName;
      _os_log_impl(&dword_1A7F47000, logHandle, OS_LOG_TYPE_DEFAULT, "Establishing new connection to %@ .", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_serviceName options:self->_connectionOptions];
    conn = self->_conn;
    self->_conn = v5;

    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:self->_allowlistedServerInterface];
    [(NSXPCConnection *)self->_conn setExportedObject:self->_serverInitiatedRequestHandler];
    [(NSXPCConnection *)self->_conn setExportedInterface:self->_allowlistedClientInterface];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50___PASXPCClientHelper__locked_establishConnection__block_invoke;
    v10[3] = &unk_1E77F22C0;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50___PASXPCClientHelper__locked_establishConnection__block_invoke_7;
    v8[3] = &unk_1E77F22C0;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:v8];
    if (self->_allowSystemToUserConnection)
    {
      if (xpc_user_sessions_enabled())
      {
        xpc_user_sessions_get_foreground_uid();
        _xpcConnection = [(NSXPCConnection *)self->_conn _xpcConnection];
        xpc_connection_set_target_user_session_uid();
      }
    }

    [(NSXPCConnection *)self->_conn resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_connLock);
  [(NSXPCConnection *)self->_conn invalidate];
  v3.receiver = self;
  v3.super_class = _PASXPCClientHelper;
  [(_PASXPCClientHelper *)&v3 dealloc];
}

- (id)remoteObjectProxy
{
  pthread_mutex_lock(&self->_connLock);
  [(_PASXPCClientHelper *)self _locked_establishConnection];
  remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  pthread_mutex_unlock(&self->_connLock);

  return remoteObjectProxy;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_connLock);
  [(_PASXPCClientHelper *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_connLock);
  [(_PASXPCClientHelper *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn remoteObjectProxyWithErrorHandler:handlerCopy];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (_PASXPCClientHelper)initWithServiceName:(id)name connectionOptions:(unint64_t)options allowlistedServerInterface:(id)interface allowlistedClientInterface:(id)clientInterface serverInitiatedRequestHandler:(id)handler allowSystemToUserConnection:(BOOL)connection interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0 logHandle:(id)self1
{
  nameCopy = name;
  interfaceCopy = interface;
  clientInterfaceCopy = clientInterface;
  handlerCopy = handler;
  interruptionHandlerCopy = interruptionHandler;
  invalidationHandlerCopy = invalidationHandler;
  handleCopy = handle;
  v32.receiver = self;
  v32.super_class = _PASXPCClientHelper;
  v20 = [(_PASXPCClientHelper *)&v32 init];
  v21 = v20;
  if (v20)
  {
    pthread_mutex_init(&v20->_connLock, 0);
    objc_storeStrong(&v21->_serviceName, name);
    v21->_connectionOptions = options;
    objc_storeStrong(&v21->_allowlistedServerInterface, interface);
    objc_storeStrong(&v21->_allowlistedClientInterface, clientInterface);
    objc_storeStrong(&v21->_serverInitiatedRequestHandler, handler);
    v22 = MEMORY[0x1AC566DD0](interruptionHandlerCopy);
    interruptionHandler = v21->_interruptionHandler;
    v21->_interruptionHandler = v22;

    v24 = MEMORY[0x1AC566DD0](invalidationHandlerCopy);
    invalidationHandler = v21->_invalidationHandler;
    v21->_invalidationHandler = v24;

    objc_storeStrong(&v21->_logHandle, handle);
    v21->_allowSystemToUserConnection = connection;
  }

  return v21;
}

@end