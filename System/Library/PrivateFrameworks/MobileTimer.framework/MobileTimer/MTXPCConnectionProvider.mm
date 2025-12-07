@interface MTXPCConnectionProvider
+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)info errorHandler:(id)handler;
+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)info reconnectHandler:(id)handler;
- (MTXPCConnectionProvider)initWithConnectionInfo:(id)info errorHandler:(id)handler reconnectHandler:(id)reconnectHandler;
- (id)_asyncRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)_connectionRebuildingIfNecessary;
- (id)_remoteObjectProxyWithXPCConnectionProvider:(id)provider remoteObjectProxyProvider:(id)proxyProvider errorHandler:(id)handler;
- (id)_retryConnection;
- (id)_syncRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)connection;
- (id)description;
- (void)_didInterruptConnection;
- (void)_didInvalidateConnection;
- (void)_retryConnectionWithRecover:(BOOL)recover;
- (void)dealloc;
- (void)didReceiveLifecycleNotification;
- (void)invalidate;
- (void)performRemoteBlock:(id)block withErrorHandler:(id)handler isSynchronous:(BOOL)synchronous;
@end

@implementation MTXPCConnectionProvider

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  info = [(MTXPCConnectionProvider *)self info];
  machServiceName = [info machServiceName];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, machServiceName];

  return v7;
}

- (id)_connectionRebuildingIfNecessary
{
  v24 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    v4 = MTLogForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ rebuilding connection", buf, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    info = [(MTXPCConnectionProvider *)self info];
    machServiceName = [info machServiceName];
    info2 = [(MTXPCConnectionProvider *)self info];
    v9 = [v5 initWithMachServiceName:machServiceName options:{objc_msgSend(info2, "options")}];
    v10 = self->_connection;
    self->_connection = v9;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__MTXPCConnectionProvider__connectionRebuildingIfNecessary__block_invoke;
    v21[3] = &unk_1E7B0C9D8;
    v21[4] = self;
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__MTXPCConnectionProvider__connectionRebuildingIfNecessary__block_invoke_2;
    v20[3] = &unk_1E7B0C9D8;
    v20[4] = self;
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v20];
    info3 = [(MTXPCConnectionProvider *)self info];
    remoteObjectInterface = [info3 remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:remoteObjectInterface];

    info4 = [(MTXPCConnectionProvider *)self info];
    exportedObject = [info4 exportedObject];

    if (exportedObject)
    {
      info5 = [(MTXPCConnectionProvider *)self info];
      exportedObjectInterface = [info5 exportedObjectInterface];
      [(NSXPCConnection *)self->_connection setExportedInterface:exportedObjectInterface];

      info6 = [(MTXPCConnectionProvider *)self info];
      exportedObject2 = [info6 exportedObject];
      [(NSXPCConnection *)self->_connection setExportedObject:exportedObject2];
    }

    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

- (id)connection
{
  os_unfair_lock_lock(&self->_connectionLock);
  _connectionRebuildingIfNecessary = [(MTXPCConnectionProvider *)self _connectionRebuildingIfNecessary];
  os_unfair_lock_unlock(&self->_connectionLock);

  return _connectionRebuildingIfNecessary;
}

+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)info errorHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  v7 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:infoCopy errorHandler:handlerCopy reconnectHandler:0];

  return v7;
}

+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)info reconnectHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  v7 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:infoCopy errorHandler:0 reconnectHandler:handlerCopy];

  return v7;
}

- (MTXPCConnectionProvider)initWithConnectionInfo:(id)info errorHandler:(id)handler reconnectHandler:(id)reconnectHandler
{
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  reconnectHandlerCopy = reconnectHandler;
  if (!infoCopy)
  {
    [MTXPCConnectionProvider initWithConnectionInfo:a2 errorHandler:self reconnectHandler:?];
  }

  v25.receiver = self;
  v25.super_class = MTXPCConnectionProvider;
  v13 = [(MTXPCConnectionProvider *)&v25 init];
  if (v13)
  {
    v14 = MTLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v27 = v13;
      v28 = 2114;
      v29 = infoCopy;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "Initializing %{public}@ with info %{public}@", buf, 0x16u);
    }

    v13->_connectionLock._os_unfair_lock_opaque = 0;
    mtMainThreadScheduler = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
    callbackScheduler = v13->_callbackScheduler;
    v13->_callbackScheduler = mtMainThreadScheduler;

    objc_storeStrong(&v13->_info, info);
    v17 = [handlerCopy copy];
    errorHandler = v13->_errorHandler;
    v13->_errorHandler = v17;

    v19 = [reconnectHandlerCopy copy];
    reconnectHandler = v13->_reconnectHandler;
    v13->_reconnectHandler = v19;

    v13->_alive = 1;
    lifecycleNotification = [infoCopy lifecycleNotification];

    if (lifecycleNotification)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      lifecycleNotification2 = [infoCopy lifecycleNotification];
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v13, _handleLifeCycleNotification, lifecycleNotification2, v13, 1025);
    }
  }

  return v13;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_connectionLock);
  self->_alive = 0;
  os_unfair_lock_unlock(&self->_connectionLock);
  [(MTXPCConnectionProvider *)self invalidate];
  v4.receiver = self;
  v4.super_class = MTXPCConnectionProvider;
  [(MTXPCConnectionProvider *)&v4 dealloc];
}

- (void)_didInterruptConnection
{
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [MTXPCConnectionProvider _didInterruptConnection];
  }

  errorHandler = [(MTXPCConnectionProvider *)self errorHandler];

  if (errorHandler)
  {
    callbackScheduler = self->_callbackScheduler;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__MTXPCConnectionProvider__didInterruptConnection__block_invoke;
    v6[3] = &unk_1E7B0C9D8;
    v6[4] = self;
    [(NAScheduler *)callbackScheduler performBlock:v6];
  }
}

void __50__MTXPCConnectionProvider__didInterruptConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorHandler];
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v2[2](v2, v1);
}

- (void)_didInvalidateConnection
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [MTXPCConnectionProvider _didInvalidateConnection];
  }

  [MTAnalytics sendCriticalEvent:@"Provider XPC connection invalidated"];
  errorHandler = [(MTXPCConnectionProvider *)self errorHandler];

  if (errorHandler)
  {
    callbackScheduler = self->_callbackScheduler;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__MTXPCConnectionProvider__didInvalidateConnection__block_invoke;
    v13[3] = &unk_1E7B0C9D8;
    v13[4] = self;
    [(NAScheduler *)callbackScheduler performBlock:v13];
  }

  os_unfair_lock_lock(&self->_connectionLock);
  connection = self->_connection;
  self->_connection = 0;

  date = [MEMORY[0x1E695DF00] date];
  v8 = date;
  if (self->_lastLifecycleNotification && ([date timeIntervalSinceDate:?], v9 < 0.2))
  {
    v10 = MTLogForCategory(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MTXPCConnectionProvider _didInvalidateConnection];
    }

    os_unfair_lock_unlock(&self->_connectionLock);
    v11 = MTLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ connection invalidated.  Retrying", buf, 0xCu);
    }

    [(MTXPCConnectionProvider *)self _retryConnectionWithRecover:0];
  }

  else
  {
    os_unfair_lock_unlock(&self->_connectionLock);
    v12 = MTLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MTXPCConnectionProvider _didInvalidateConnection];
    }
  }
}

void __51__MTXPCConnectionProvider__didInvalidateConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorHandler];
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
  v2[2](v2, v1);
}

- (void)didReceiveLifecycleNotification
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_connectionLock);
  alive = self->_alive;
  os_unfair_lock_unlock(&self->_connectionLock);
  if (alive)
  {
    os_unfair_lock_lock(&self->_connectionLock);
    date = [MEMORY[0x1E695DF00] date];
    lastLifecycleNotification = self->_lastLifecycleNotification;
    self->_lastLifecycleNotification = date;

    connection = self->_connection;
    os_unfair_lock_unlock(&self->_connectionLock);
    if (connection)
    {
      reconnectHandler = [(MTXPCConnectionProvider *)self reconnectHandler];

      v8 = MTLogForCategory(2);
      v9 = v8;
      if (reconnectHandler)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy2 = self;
          _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received lifecycle darwin notification.  Reconnecting.", buf, 0xCu);
        }

        callbackScheduler = self->_callbackScheduler;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __58__MTXPCConnectionProvider_didReceiveLifecycleNotification__block_invoke;
        v12[3] = &unk_1E7B0C9D8;
        v12[4] = self;
        [(NAScheduler *)callbackScheduler performBlock:v12];
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [MTXPCConnectionProvider didReceiveLifecycleNotification];
        }
      }
    }

    else
    {
      v11 = MTLogForCategory(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ received lifecycle darwin notification. Reestablishing connection.", buf, 0xCu);
      }

      [(MTXPCConnectionProvider *)self _retryConnectionWithRecover:1];
    }
  }
}

void __58__MTXPCConnectionProvider_didReceiveLifecycleNotification__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) reconnectHandler];
  v1[2]();
}

- (id)_retryConnection
{
  v3 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MTXPCConnectionProvider__retryConnection__block_invoke;
  v10[3] = &unk_1E7B0D120;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MTXPCConnectionProvider__retryConnection__block_invoke_2;
  v8[3] = &unk_1E7B0D148;
  v8[4] = self;
  v4 = v11;
  v9 = v4;
  [(MTXPCConnectionProvider *)self performRemoteBlock:v10 withErrorHandler:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __43__MTXPCConnectionProvider__retryConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__MTXPCConnectionProvider__retryConnection__block_invoke_2_cold_1();
  }

  [*(a1 + 40) finishWithError:v3];
}

- (void)_retryConnectionWithRecover:(BOOL)recover
{
  recoverCopy = recover;
  _retryConnection = [(MTXPCConnectionProvider *)self _retryConnection];
  v6 = _retryConnection;
  if (recoverCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke;
    v10[3] = &unk_1E7B0D170;
    v10[4] = self;
    v7 = [_retryConnection recover:v10];

    v6 = v7;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19;
  v9[3] = &unk_1E7B0D198;
  v9[4] = self;
  v8 = [v6 addCompletionBlock:v9];
}

id __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _retryConnection];

  return v3;
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 BOOLValue])
  {
    v12 = MTLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19_cold_1();
    }
  }

  else
  {
    v7 = MTLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to reconnect.", buf, 0xCu);
    }

    v9 = [*(a1 + 32) reconnectHandler];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_20;
      v13[3] = &unk_1E7B0C9D8;
      v13[4] = v10;
      [v11 performBlock:v13];
    }
  }
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_20(uint64_t a1)
{
  v1 = [*(a1 + 32) reconnectHandler];
  v1[2]();
}

- (void)performRemoteBlock:(id)block withErrorHandler:(id)handler isSynchronous:(BOOL)synchronous
{
  blockCopy = block;
  if (synchronous)
  {
    [(MTXPCConnectionProvider *)self _syncRemoteObjectProxyWithErrorHandler:handler];
  }

  else
  {
    [(MTXPCConnectionProvider *)self _asyncRemoteObjectProxyWithErrorHandler:handler];
  }
  v9 = ;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MTXPCConnectionProvider_performRemoteBlock_withErrorHandler_isSynchronous___block_invoke;
  v12[3] = &unk_1E7B0D1C0;
  v13 = blockCopy;
  v10 = blockCopy;
  v11 = [v9 addSuccessBlock:v12];
}

void __77__MTXPCConnectionProvider_performRemoteBlock_withErrorHandler_isSynchronous___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = NAEmptyResult();
  v4 = [v5 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_asyncRemoteObjectProxyWithErrorHandler:(id)handler
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__MTXPCConnectionProvider__asyncRemoteObjectProxyWithErrorHandler___block_invoke;
  v5[3] = &unk_1E7B0D1E8;
  v5[4] = self;
  v3 = [(MTXPCConnectionProvider *)self _remoteObjectProxyWithXPCConnectionProvider:v5 remoteObjectProxyProvider:&__block_literal_global_11 errorHandler:handler];

  return v3;
}

id __67__MTXPCConnectionProvider__asyncRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3780];
  v2 = [*(a1 + 32) connection];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)_syncRemoteObjectProxyWithErrorHandler:(id)handler
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__MTXPCConnectionProvider__syncRemoteObjectProxyWithErrorHandler___block_invoke;
  v5[3] = &unk_1E7B0D1E8;
  v5[4] = self;
  v3 = [(MTXPCConnectionProvider *)self _remoteObjectProxyWithXPCConnectionProvider:v5 remoteObjectProxyProvider:&__block_literal_global_25 errorHandler:handler];

  return v3;
}

id __66__MTXPCConnectionProvider__syncRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3780];
  v2 = [*(a1 + 32) connection];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)_remoteObjectProxyWithXPCConnectionProvider:(id)provider remoteObjectProxyProvider:(id)proxyProvider errorHandler:(id)handler
{
  proxyProviderCopy = proxyProvider;
  handlerCopy = handler;
  v10 = (*(provider + 2))(provider);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke;
  v15[3] = &unk_1E7B0D258;
  v15[4] = self;
  v16 = handlerCopy;
  v17 = proxyProviderCopy;
  v11 = proxyProviderCopy;
  v12 = handlerCopy;
  v13 = [v10 flatMap:v15];

  return v13;
}

void *__110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MTLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_cold_1();
    }

    goto LABEL_11;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2;
  v17 = &unk_1E7B0D230;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = (a1 + 32);
  v18 = v5;
  v19 = v4;
  v7 = _Block_copy(&v14);
  v10 = (*(v6[2] + 16))(v6[2], v3, v7, v8, v9);
  if (v10)
  {
    v6 = [MEMORY[0x1E69B3780] futureWithResult:{v10, v14, v15, v16, v17, v18}];
  }

  else
  {
    v12 = MTLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_cold_2();
    }
  }

  if (!v10)
  {
LABEL_11:
    v6 = [MEMORY[0x1E69B3780] futureWithNoResult];
  }

  return v6;
}

void __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidating", &v8, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  info = [(MTXPCConnectionProvider *)self info];
  lifecycleNotification = [info lifecycleNotification];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, lifecycleNotification, self);

  os_unfair_lock_lock(&self->_connectionLock);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)initWithConnectionInfo:(uint64_t)a1 errorHandler:(uint64_t)a2 reconnectHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTXPCConnectionProvider.m" lineNumber:43 description:@"Connection info must be non-nil"];

  v5 = MTLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_ERROR, "Connection info must be non-nil", v6, 2u);
  }
}

void __43__MTXPCConnectionProvider__retryConnection__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "Failed to reconnect for provider %{public}@ with error %{public}@.");
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "%{public}@ retrying failed reconnect", v2, v3, v4, v5);
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "%{public}@ failed to reconnect too many times", v2, v3, v4, v5);
}

void __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "%{public}@ expected non-nil connection", v2, v3, v4, v5);
}

void __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ received a remote proxy error: %{public}@");
}

@end