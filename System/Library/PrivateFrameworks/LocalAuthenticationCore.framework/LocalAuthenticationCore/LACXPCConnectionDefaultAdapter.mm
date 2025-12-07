@interface LACXPCConnectionDefaultAdapter
- (BOOL)hasEntitlement:(id)entitlement;
- (LACXPCConnectionDefaultAdapter)initWithConnection:(id)connection;
- (LACXPCConnectionDefaultAdapter)initWithListenerEndpoint:(id)endpoint;
- (LACXPCConnectionDefaultAdapter)initWithMachServiceName:(id)name options:(unint64_t)options;
- (LACXPCConnectionDelegate)delegate;
- (void)activate;
- (void)configureWithConfiguration:(id)configuration;
@end

@implementation LACXPCConnectionDefaultAdapter

- (LACXPCConnectionDefaultAdapter)initWithMachServiceName:(id)name options:(unint64_t)options
{
  v6 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v8 = [[v6 alloc] initWithMachServiceName:nameCopy options:options];

  v9 = [(LACXPCConnectionDefaultAdapter *)self initWithConnection:v8];
  return v9;
}

- (LACXPCConnectionDefaultAdapter)initWithListenerEndpoint:(id)endpoint
{
  v4 = MEMORY[0x1E696B0B8];
  endpointCopy = endpoint;
  v6 = [[v4 alloc] initWithListenerEndpoint:endpointCopy];

  v7 = [(LACXPCConnectionDefaultAdapter *)self initWithConnection:v6];
  return v7;
}

- (LACXPCConnectionDefaultAdapter)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = LACXPCConnectionDefaultAdapter;
  v6 = [(LACXPCConnectionDefaultAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)activate
{
  [(NSXPCConnection *)self->_connection activate];
  delegate = [(LACXPCConnectionDefaultAdapter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(LACXPCConnectionDefaultAdapter *)self delegate];
    [delegate2 connectionDidActivate:self];
  }
}

- (void)configureWithConfiguration:(id)configuration
{
  v30 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = configurationCopy;
    remoteObjectInterface = [v6 remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:remoteObjectInterface];

    exportedInterface = [v6 exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:exportedInterface];

    exportedObject = [v6 exportedObject];
    [(NSXPCConnection *)self->_connection setExportedObject:exportedObject];

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke;
    v23[3] = &unk_1E7A95380;
    objc_copyWeak(&v24, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke_2;
    v21[3] = &unk_1E7A95380;
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v21];
    connectionUID = [v6 connectionUID];
    LOBYTE(exportedObject) = connectionUID == 0;

    if ((exportedObject & 1) == 0)
    {
      connectionUID2 = [v6 connectionUID];
      intValue = [connectionUID2 intValue];

      v14 = LACLogXPC(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        connection = self->_connection;
        *buf = 138412546;
        v27 = connection;
        v28 = 1024;
        v29 = intValue;
        _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "%@ XPC target UID: %u (UI)", buf, 0x12u);
      }

      _xpcConnection = [(NSXPCConnection *)self->_connection _xpcConnection];
      xpc_connection_set_target_uid();
    }

    replyQueue = [v6 replyQueue];
    v18 = replyQueue == 0;

    if (!v18)
    {
      v19 = self->_connection;
      replyQueue2 = [v6 replyQueue];
      [(NSXPCConnection *)v19 _setQueue:replyQueue2];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = LACLogXPC(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LACXPCConnectionDefaultAdapter *)self configureWithConfiguration:configurationCopy, v6];
    }
  }
}

void __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    v4 = [v7 delegate];
    v5 = v4;
    if (v3)
    {
      [v4 connectionDidInterrupt:v7];
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      WeakRetained = v7;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }

      v5 = [v7 delegate];
      [v5 connectionDidInvalidate:v7];
    }

    WeakRetained = v7;
  }

LABEL_7:
}

void __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      [v4 connectionDidInvalidate:v5];

      WeakRetained = v5;
    }
  }
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:entitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (LACXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)configureWithConfiguration:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%@ configured with unsupported configuration object %@", &v3, 0x16u);
}

@end