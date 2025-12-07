@interface MTXPCConnectionListenerProvider
+ (MTXPCConnectionListenerProvider)providerWithConnectionInfo:(id)info errorHandler:(id)handler;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MTXPCConnectionListenerProvider)initWithConnectionInfo:(id)info errorHandler:(id)handler;
- (NSArray)connectedClients;
- (NSString)description;
- (id)_connectedClients;
- (id)_currentClientForConnection:(id)connection;
- (id)currentClient;
- (void)_didInterruptConnection;
- (void)_didInvalidateConnection:(id)connection;
- (void)_performBlockOnClientInfos:(id)infos excludingClient:(id)client;
- (void)addClientConnection:(id)connection clientLink:(id)link;
- (void)dealloc;
- (void)performBlockOnAllClients:(id)clients excludingClient:(id)client;
- (void)performBlockOnAllClients:(id)clients excludingCurrent:(BOOL)current;
- (void)performBlockOnClientInfos:(id)infos excludeCurrent:(BOOL)current;
- (void)performBlockOnCurrentClient:(id)client;
- (void)removeClientConnection:(id)connection;
- (void)startListening;
@end

@implementation MTXPCConnectionListenerProvider

+ (MTXPCConnectionListenerProvider)providerWithConnectionInfo:(id)info errorHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  v7 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:infoCopy errorHandler:handlerCopy];

  return v7;
}

- (MTXPCConnectionListenerProvider)initWithConnectionInfo:(id)info errorHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    [MTXPCConnectionListenerProvider initWithConnectionInfo:a2 errorHandler:self];
  }

  v23.receiver = self;
  v23.super_class = MTXPCConnectionListenerProvider;
  v10 = [(MTXPCConnectionListenerProvider *)&v23 init];
  if (v10)
  {
    v11 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTXPCConnectionListenerProvider.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v10->_serializer;
    v10->_serializer = v11;

    objc_storeStrong(&v10->_info, info);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    clients = v10->_clients;
    v10->_clients = v13;

    v15 = [handlerCopy copy];
    errorHandler = v10->_errorHandler;
    v10->_errorHandler = v15;

    v17 = objc_alloc(MEMORY[0x1E696B0D8]);
    info = [(MTXPCConnectionListenerProvider *)v10 info];
    machServiceName = [info machServiceName];
    v20 = [v17 initWithMachServiceName:machServiceName];
    connectionListener = v10->_connectionListener;
    v10->_connectionListener = v20;

    [(NSXPCListener *)v10->_connectionListener setDelegate:v10];
  }

  return v10;
}

- (void)startListening
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming connection", &v10, 0xCu);
  }

  [(NSXPCListener *)self->_connectionListener resume];
  lifecycleNotification = [(MTXPCConnectionInfo *)self->_info lifecycleNotification];

  if (lifecycleNotification)
  {
    v5 = MTLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      lifecycleNotification2 = [(MTXPCConnectionInfo *)self->_info lifecycleNotification];
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 2114;
      v13 = lifecycleNotification2;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Listener %{public}@ posting lifecycle darwin notification %{public}@", &v10, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    info = [(MTXPCConnectionListenerProvider *)self info];
    lifecycleNotification3 = [info lifecycleNotification];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, lifecycleNotification3, 0, 0, 1u);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  info = [(MTXPCConnectionListenerProvider *)self info];
  requiredEntitlement = [info requiredEntitlement];
  if (!requiredEntitlement)
  {

    goto LABEL_7;
  }

  v10 = requiredEntitlement;
  info2 = [(MTXPCConnectionListenerProvider *)self info];
  requiredEntitlement2 = [info2 requiredEntitlement];
  v13 = [connectionCopy valueForEntitlement:requiredEntitlement2];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
LABEL_7:
    info3 = [(MTXPCConnectionListenerProvider *)self info];
    exportedObjectInterface = [info3 exportedObjectInterface];
    [connectionCopy setExportedInterface:exportedObjectInterface];

    info4 = [(MTXPCConnectionListenerProvider *)self info];
    exportedObject = [info4 exportedObject];
    [connectionCopy setExportedObject:exportedObject];

    info5 = [(MTXPCConnectionListenerProvider *)self info];
    remoteObjectInterface = [info5 remoteObjectInterface];
    [connectionCopy setRemoteObjectInterface:remoteObjectInterface];

    objc_initWeak(&location, self);
    objc_initWeak(&from, connectionCopy);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke;
    v30[3] = &unk_1E7B0F878;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, &from);
    v23 = [connectionCopy remoteObjectProxyWithErrorHandler:v30];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_2;
    v27[3] = &unk_1E7B0F8A0;
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, &from);
    [connectionCopy setInvalidationHandler:v27];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_17;
    v25[3] = &unk_1E7B0CF70;
    objc_copyWeak(&v26, &location);
    [connectionCopy setInterruptionHandler:v25];
    [(MTXPCConnectionListenerProvider *)self addClientConnection:connectionCopy clientLink:v23];
    [connectionCopy resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    v16 = 1;
    goto LABEL_8;
  }

  v15 = MTLogForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MTXPCConnectionListenerProvider listener:connectionCopy shouldAcceptNewConnection:v15];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

void __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didInvalidateConnection:v2];
}

void __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 _xpcConnection];
  if (v4)
  {
    v5 = [v3 _xpcConnection];
    v6 = xpc_connection_copy_invalidation_reason();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = "unknown";
  if (v6)
  {
    v8 = v6;
  }

  v9 = [v7 initWithFormat:@"%s", v8];
  free(v6);
  v10 = MTLogForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v12 = WeakRetained;
    v13 = 2114;
    v14 = v3;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidation handler called for connection %{public}@ with error: %{public}@", buf, 0x20u);
  }

  [WeakRetained _didInvalidateConnection:v3];
}

void __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInterruptConnection];
}

- (void)_didInterruptConnection
{
  info = [self info];
  machServiceName = [info machServiceName];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_didInvalidateConnection:(id)connection
{
  connectionCopy = connection;
  v5 = MTLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MTXPCConnectionListenerProvider _didInvalidateConnection:?];
  }

  [(MTXPCConnectionListenerProvider *)self removeClientConnection:connectionCopy];
  errorHandler = [(MTXPCConnectionListenerProvider *)self errorHandler];

  if (errorHandler)
  {
    errorHandler2 = [(MTXPCConnectionListenerProvider *)self errorHandler];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    (errorHandler2)[2](errorHandler2, v8);
  }
}

- (void)addClientConnection:(id)connection clientLink:(id)link
{
  connectionCopy = connection;
  linkCopy = link;
  serializer = [(MTXPCConnectionListenerProvider *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MTXPCConnectionListenerProvider_addClientConnection_clientLink___block_invoke;
  v11[3] = &unk_1E7B0C9A0;
  v12 = linkCopy;
  v13 = connectionCopy;
  selfCopy = self;
  v9 = connectionCopy;
  v10 = linkCopy;
  [serializer performBlock:v11];
}

void __66__MTXPCConnectionListenerProvider_addClientConnection_clientLink___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) processIdentifier];
    if (v3 != [v2 processIdentifier])
    {
      v4 = [MTXPCClientInfo clientInfoForConnection:*(a1 + 40) clientLink:*(a1 + 32)];
      v5 = [*(a1 + 48) clients];
      v6 = [v5 containsObject:v4];

      v7 = MTLogForCategory(2);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = [*(a1 + 48) info];
          v10 = [v9 machServiceName];
          v17 = 138543618;
          v18 = v10;
          v19 = 2114;
          v20 = v4;
          _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Already has XPC client: %{public}@", &v17, 0x16u);
        }
      }

      else
      {
        if (v8)
        {
          v11 = [*(a1 + 48) info];
          v12 = [v11 machServiceName];
          v17 = 138543618;
          v18 = v12;
          v19 = 2114;
          v20 = v4;
          _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding XPC client: %{public}@", &v17, 0x16u);
        }

        v7 = [*(a1 + 48) clients];
        [v7 addObject:v4];
      }

      v13 = MTLogForCategory(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 48) info];
        v15 = [v14 machServiceName];
        v16 = *(*(a1 + 48) + 40);
        v17 = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v16;
        _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Current XPC clients: %{public}@", &v17, 0x16u);
      }
    }
  }
}

- (void)removeClientConnection:(id)connection
{
  connectionCopy = connection;
  serializer = [(MTXPCConnectionListenerProvider *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MTXPCConnectionListenerProvider_removeClientConnection___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  [serializer performBlock:v7];
}

void __58__MTXPCConnectionListenerProvider_removeClientConnection___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) _connectedClients];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 connection];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          v10 = MTLogForCategory(2);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [*(a1 + 32) info];
            v12 = [v11 machServiceName];
            *buf = 138543618;
            v23 = v12;
            v24 = 2114;
            v25 = v7;
            _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing XPC client: %{public}@", buf, 0x16u);
          }

          v13 = [*(a1 + 32) clients];
          [v13 removeObject:v7];

          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = MTLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) info];
    v16 = [v15 machServiceName];
    v17 = *(*(a1 + 32) + 40);
    *buf = 138543618;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Current XPC clients: %{public}@", buf, 0x16u);
  }
}

- (NSArray)connectedClients
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  serializer = [(MTXPCConnectionListenerProvider *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MTXPCConnectionListenerProvider_connectedClients__block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [serializer performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __51__MTXPCConnectionListenerProvider_connectedClients__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectedClients];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

- (id)_connectedClients
{
  clients = [(MTXPCConnectionListenerProvider *)self clients];
  allObjects = [clients allObjects];

  return allObjects;
}

- (id)currentClient
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__14;
  v18 = __Block_byref_object_dispose__14;
  v19 = 0;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v4 = dispatch_semaphore_create(0);
  serializer = [(MTXPCConnectionListenerProvider *)self serializer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MTXPCConnectionListenerProvider_currentClient__block_invoke;
  v10[3] = &unk_1E7B0F8C8;
  v13 = &v14;
  v10[4] = self;
  v6 = currentConnection;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  [serializer performBlock:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

intptr_t __48__MTXPCConnectionListenerProvider_currentClient__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentClientForConnection:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 48);

  return dispatch_semaphore_signal(v5);
}

- (id)_currentClientForConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (connectionCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _connectedClients = [(MTXPCConnectionListenerProvider *)self _connectedClients];
    v6 = [_connectedClients countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(_connectedClients);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          connection = [v9 connection];

          if (connection == connectionCopy)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [_connectedClients countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performBlockOnCurrentClient:(id)client
{
  clientCopy = client;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  serializer = [(MTXPCConnectionListenerProvider *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__MTXPCConnectionListenerProvider_performBlockOnCurrentClient___block_invoke;
  v9[3] = &unk_1E7B0C5D8;
  v9[4] = self;
  v10 = currentConnection;
  v11 = clientCopy;
  v7 = clientCopy;
  v8 = currentConnection;
  [serializer performBlock:v9];
}

void __63__MTXPCConnectionListenerProvider_performBlockOnCurrentClient___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _currentClientForConnection:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [v4 clientLink];
  (*(v2 + 16))(v2, v3);
}

- (void)performBlockOnAllClients:(id)clients excludingCurrent:(BOOL)current
{
  currentCopy = current;
  clientsCopy = clients;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingCurrent___block_invoke;
  v8[3] = &unk_1E7B0F8F0;
  v9 = clientsCopy;
  v7 = clientsCopy;
  [(MTXPCConnectionListenerProvider *)self performBlockOnClientInfos:v8 excludeCurrent:currentCopy];
}

void __77__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingCurrent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientLink];
  (*(v2 + 16))(v2, v3);
}

- (void)performBlockOnClientInfos:(id)infos excludeCurrent:(BOOL)current
{
  infosCopy = infos;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  serializer = [(MTXPCConnectionListenerProvider *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MTXPCConnectionListenerProvider_performBlockOnClientInfos_excludeCurrent___block_invoke;
  v11[3] = &unk_1E7B0F918;
  currentCopy = current;
  v11[4] = self;
  v12 = currentConnection;
  v13 = infosCopy;
  v9 = infosCopy;
  v10 = currentConnection;
  [serializer performBlock:v11];
}

void __76__MTXPCConnectionListenerProvider_performBlockOnClientInfos_excludeCurrent___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) _currentClientForConnection:*(a1 + 40)];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 32) _performBlockOnClientInfos:*(a1 + 48) excludingClient:v2];
}

- (void)performBlockOnAllClients:(id)clients excludingClient:(id)client
{
  clientsCopy = clients;
  clientCopy = client;
  serializer = [(MTXPCConnectionListenerProvider *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke;
  v11[3] = &unk_1E7B0D8B8;
  v12 = clientCopy;
  v13 = clientsCopy;
  v11[4] = self;
  v9 = clientCopy;
  v10 = clientsCopy;
  [serializer performBlock:v11];
}

void __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke_2;
  v3[3] = &unk_1E7B0F8F0;
  v4 = *(a1 + 48);
  [v2 _performBlockOnClientInfos:v3 excludingClient:*(a1 + 40)];
}

void __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientLink];
  (*(v2 + 16))(v2, v3);
}

- (void)_performBlockOnClientInfos:(id)infos excludingClient:(id)client
{
  v19 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  clientCopy = client;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _connectedClients = [(MTXPCConnectionListenerProvider *)self _connectedClients];
  v9 = [_connectedClients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(_connectedClients);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (!clientCopy || ([*(*(&v14 + 1) + 8 * v12) isEqual:clientCopy] & 1) == 0)
        {
          infosCopy[2](infosCopy, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [_connectedClients countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  info = [(MTXPCConnectionListenerProvider *)self info];
  machServiceName = [info machServiceName];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, machServiceName];

  return v7;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_connectionListener setDelegate:0];
  [(NSXPCListener *)self->_connectionListener invalidate];
  connectionListener = self->_connectionListener;
  self->_connectionListener = 0;

  v4.receiver = self;
  v4.super_class = MTXPCConnectionListenerProvider;
  [(MTXPCConnectionListenerProvider *)&v4 dealloc];
}

- (void)initWithConnectionInfo:(uint64_t)a1 errorHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTXPCConnectionListenerProvider.m" lineNumber:35 description:@"Connection info must be non-nil"];

  v5 = MTLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Connection %{public}@ not entitled", &v2, 0xCu);
}

- (void)_didInvalidateConnection:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 info];
  v7 = [v1 machServiceName];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end