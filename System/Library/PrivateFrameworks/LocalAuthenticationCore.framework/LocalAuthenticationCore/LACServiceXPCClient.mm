@interface LACServiceXPCClient
- (LACServiceXPCClient)initWithEndpointProvider:(id)provider remoteObjectInterface:(id)interface serviceIdentifier:(id)identifier;
- (id)_connectionWithErrorHandler:(id)handler;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_handleConnectionClose;
- (void)connectionDidActivate:(id)activate;
@end

@implementation LACServiceXPCClient

- (LACServiceXPCClient)initWithEndpointProvider:(id)provider remoteObjectInterface:(id)interface serviceIdentifier:(id)identifier
{
  providerCopy = provider;
  interfaceCopy = interface;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = LACServiceXPCClient;
  v12 = [(LACServiceXPCClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpointProvider, provider);
    objc_storeStrong(&v13->_remoteObjectInterface, interface);
    objc_storeStrong(&v13->_serviceIdentifier, identifier);
    v13->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(LACServiceXPCClient *)self _connectionWithErrorHandler:handlerCopy];
  v6 = [v5 remoteObjectWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(LACServiceXPCClient *)self _connectionWithErrorHandler:handlerCopy];
  v6 = [v5 synchronousRemoteObjectWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_connectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_connection)
  {
    v5 = 0;
  }

  else
  {
    endpointProvider = self->_endpointProvider;
    serviceIdentifier = self->_serviceIdentifier;
    v20 = 0;
    v8 = [(LACServiceXPCEndpointProvider *)endpointProvider endpointForServiceWithIdentifier:serviceIdentifier error:&v20];
    v5 = v20;
    if (v8)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__LACServiceXPCClient__connectionWithErrorHandler___block_invoke;
      v17[3] = &unk_1E7A96BB0;
      v18 = v8;
      selfCopy = self;
      v9 = __51__LACServiceXPCClient__connectionWithErrorHandler___block_invoke(v17);
      connection = self->_connection;
      self->_connection = v9;

      [(LACXPCConnection *)self->_connection setDelegate:self];
      [(LACXPCConnection *)self->_connection activate];
    }

    if (!(self->_connection | v5))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC connection to service endpoint with identifier '%@' could not be created", self->_serviceIdentifier];
      v5 = [LACError errorWithCode:-1000 debugDescription:v12];
    }

    if (v5)
    {
      v13 = LACLogService(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(LACServiceXPCClient *)v5 _connectionWithErrorHandler:v13];
      }

      handlerCopy[2](handlerCopy, v5);
    }
  }

  os_unfair_lock_unlock(&self->_connectionLock);
  v14 = self->_connection;
  v15 = v14;

  return v14;
}

LACXPCConnectionDefaultAdapter *__51__LACServiceXPCClient__connectionWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [[LACXPCConnectionDefaultAdapter alloc] initWithListenerEndpoint:*(a1 + 32)];
  v3 = [[LACXPCConnectionConfigurationDefaultAdapter alloc] initWithRemoteObjectInterface:*(*(a1 + 40) + 16) exportedInterface:0 exportedObject:0 replyQueue:0];
  [(LACXPCConnectionDefaultAdapter *)v2 configureWithConfiguration:v3];

  return v2;
}

- (void)_handleConnectionClose
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    v3 = LACLogService(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceIdentifier = self->_serviceIdentifier;
      v7 = 138412290;
      v8 = serviceIdentifier;
      _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to service endpoint with identifier '%@' was closed", &v7, 0xCu);
    }

    v5 = self->_connection;
    [(LACXPCConnection *)v5 setDelegate:0];
    connection = self->_connection;
    self->_connection = 0;

    [(LACXPCConnection *)v5 invalidate];
  }
}

- (void)connectionDidActivate:(id)activate
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = LACLogService(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serviceIdentifier = self->_serviceIdentifier;
    v6 = 138412290;
    v7 = serviceIdentifier;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "XPC connection to service endpoint with identifier '%@' was activated", &v6, 0xCu);
  }
}

- (void)_connectionWithErrorHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

@end