@interface UNCOneTimeCodeServiceListener
- (BOOL)_connectionIsAllowedToObserveOTC:(id)c;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UNCOneTimeCodeServiceListener)init;
- (id)_currentConnection;
- (void)_handleClientConnectionInterrupted:(id)interrupted;
- (void)_handleClientConnectionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)detectedOneTimeCodes:(id)codes;
@end

@implementation UNCOneTimeCodeServiceListener

- (UNCOneTimeCodeServiceListener)init
{
  v9.receiver = self;
  v9.super_class = UNCOneTimeCodeServiceListener;
  v2 = [(UNCOneTimeCodeServiceListener *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = objc_alloc(MEMORY[0x1E696B0D8]);
    v6 = [v5 initWithMachServiceName:*MEMORY[0x1E6983428]];
    listener = v2->_listener;
    v2->_listener = v6;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = UNCOneTimeCodeServiceListener;
  [(UNCOneTimeCodeServiceListener *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  clientInterface = [MEMORY[0x1E69832D8] clientInterface];
  [connectionCopy setRemoteObjectInterface:clientInterface];

  serverInterface = [MEMORY[0x1E69832D8] serverInterface];
  [connectionCopy setExportedInterface:serverInterface];

  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__UNCOneTimeCodeServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v15[3] = &unk_1E85D7078;
  objc_copyWeak(v16, &location);
  v16[1] = connectionCopy;
  [connectionCopy setInterruptionHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__UNCOneTimeCodeServiceListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v13[3] = &unk_1E85D7078;
  objc_copyWeak(v14, &location);
  v14[1] = connectionCopy;
  [connectionCopy setInvalidationHandler:v13];
  v10 = [(UNCOneTimeCodeServiceListener *)self _connectionIsAllowedToObserveOTC:connectionCopy];
  if (v10)
  {
    [connectionCopy activate];
    v11 = self->_connections;
    objc_sync_enter(v11);
    [(NSMutableArray *)self->_connections addObject:connectionCopy];
    objc_sync_exit(v11);
  }

  else
  {
    [connectionCopy invalidate];
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);

  return v10;
}

void __68__UNCOneTimeCodeServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInterrupted:*(a1 + 40)];
}

void __68__UNCOneTimeCodeServiceListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInvalidated:*(a1 + 40)];
}

- (void)detectedOneTimeCodes:(id)codes
{
  v16 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  v5 = self->_connections;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_connections;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        remoteObjectProxy = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [remoteObjectProxy detectedOneTimeCodes:codesCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (id)_currentConnection
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if (!currentConnection)
  {
    v3 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [(UNCOneTimeCodeServiceListener *)v3 _currentConnection];
    }
  }

  return currentConnection;
}

- (void)_handleClientConnectionInterrupted:(id)interrupted
{
  v7 = *MEMORY[0x1E69E9840];
  interruptedCopy = interrupted;
  v4 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = interruptedCopy;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v5, 0xCu);
  }
}

- (void)_handleClientConnectionInvalidated:(id)invalidated
{
  v9 = *MEMORY[0x1E69E9840];
  invalidatedCopy = invalidated;
  v5 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = invalidatedCopy;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v7, 0xCu);
  }

  v6 = self->_connections;
  objc_sync_enter(v6);
  [(NSMutableArray *)self->_connections removeObject:invalidatedCopy];
  objc_sync_exit(v6);
}

- (BOOL)_connectionIsAllowedToObserveOTC:(id)c
{
  v3 = UNCIsEntitledConnection(c, @"com.apple.private.usernotifications.observation", @"otc");
  if ((v3 & 1) == 0)
  {
    v4 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCOneTimeCodeServiceListener _connectionIsAllowedToObserveOTC:v4];
    }
  }

  return v3;
}

- (void)_connectionIsAllowedToObserveOTC:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = @"otc";
  _os_log_error_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_ERROR, "Entitlement '%{public}@' required to observe otc", &v1, 0xCu);
}

@end