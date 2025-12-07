@interface EDServer
+ (OS_os_log)log;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (EDServer)initWithDaemonInterfaceFactory:(id)factory;
- (EDServer)initWithDaemonInterfaceFactory:(id)factory listener:(id)listener;
- (NSArray)remoteClients;
- (id)messageReconciliationQueries;
- (id)threadReconciliationQueries;
- (void)addRemoteClient:(id)client;
- (void)removeRemoteClient:(id)client;
- (void)start;
- (void)test_tearDown;
@end

@implementation EDServer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__EDServer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_96 != -1)
  {
    dispatch_once(&log_onceToken_96, block);
  }

  v2 = log_log_96;

  return v2;
}

void __15__EDServer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_96;
  log_log_96 = v1;
}

- (EDServer)initWithDaemonInterfaceFactory:(id)factory
{
  factoryCopy = factory;
  v5 = objc_alloc(MEMORY[0x1E696B0D8]);
  v6 = [v5 initWithMachServiceName:*MEMORY[0x1E699A720]];
  v7 = [(EDServer *)self initWithDaemonInterfaceFactory:factoryCopy listener:v6];

  return v7;
}

- (EDServer)initWithDaemonInterfaceFactory:(id)factory listener:(id)listener
{
  factoryCopy = factory;
  listenerCopy = listener;
  v15.receiver = self;
  v15.super_class = EDServer;
  v9 = [(EDServer *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E699B7F0]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [v10 initWithObject:v11];
    connectedClients = v9->_connectedClients;
    v9->_connectedClients = v12;

    objc_storeStrong(&v9->_daemonInterfaceFactory, factory);
    objc_storeStrong(&v9->_listener, listener);
    [(NSXPCListener *)v9->_listener setDelegate:v9];
  }

  return v9;
}

- (void)test_tearDown
{
  v17 = *MEMORY[0x1E69E9840];
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDServer.m" lineNumber:51 description:{@"%s can only be called from unit tests", "-[EDServer test_tearDown]"}];
  }

  connectedClients = [(EDServer *)self connectedClients];
  getObject = [connectedClients getObject];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = getObject;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v9++) test_tearDown];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  daemonInterfaceFactory = [(EDServer *)self daemonInterfaceFactory];
  [daemonInterfaceFactory test_tearDown];

  [(NSXPCListener *)self->_listener invalidate];
}

- (void)start
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[EDServer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    listener = self->_listener;
    v5 = 138412290;
    v6 = listener;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "starting listener %@", &v5, 0xCu);
  }

  [(NSXPCListener *)self->_listener resume];
  notify_post([*MEMORY[0x1E699A718] UTF8String]);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = +[EDServer log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = connectionCopy;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "received a new connection request %@", buf, 0xCu);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.email"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v7 = 0;
  }

  v8 = [connectionCopy valueForEntitlement:@"com.apple.mobilemail.mailservices"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v8 = 0;
  }

  if ([v7 BOOLValue] & 1) != 0 || (objc_msgSend(v8, "BOOLValue"))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [EDRemoteClient alloc];
    daemonInterfaceFactory = [(EDServer *)self daemonInterfaceFactory];
    v12 = [(EDRemoteClient *)v10 initWithConnection:connectionCopy daemonInterfaceFactory:daemonInterfaceFactory serverRemoteClientsProvider:self];

    v13 = +[EDRemoteClient exportedInterface];
    [connectionCopy setExportedInterface:v13];

    [connectionCopy setExportedObject:v12];
    objc_initWeak(buf, v12);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__EDServer_listener_shouldAcceptNewConnection___block_invoke;
    v23[3] = &unk_1E8250098;
    objc_copyWeak(&v24, buf);
    v23[4] = self;
    [connectionCopy setInterruptionHandler:v23];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __47__EDServer_listener_shouldAcceptNewConnection___block_invoke_19;
    v20 = &unk_1E8250098;
    objc_copyWeak(&v22, buf);
    selfCopy = self;
    [connectionCopy setInvalidationHandler:&v17];
    [(EDServer *)self addRemoteClient:v12, v17, v18, v19, v20];
    [connectionCopy resume];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);

    objc_autoreleasePoolPop(v9);
    v14 = 1;
  }

  else
  {
    v15 = +[EDServer log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EDServer listener:v15 shouldAcceptNewConnection:?];
    }

    v14 = 0;
  }

  return v14;
}

void __47__EDServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[EDServer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Remote Client Interrupted %@", &v4, 0xCu);
  }

  [*(a1 + 32) removeRemoteClient:WeakRetained];
}

void __47__EDServer_listener_shouldAcceptNewConnection___block_invoke_19(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[EDServer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Remote Client Invalidated %@", &v4, 0xCu);
  }

  [*(a1 + 32) removeRemoteClient:WeakRetained];
}

- (void)addRemoteClient:(id)client
{
  clientCopy = client;
  connectedClients = [(EDServer *)self connectedClients];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__EDServer_addRemoteClient___block_invoke;
  v7[3] = &unk_1E82536A0;
  v6 = clientCopy;
  v8 = v6;
  [connectedClients performWhileLocked:v7];
}

- (void)removeRemoteClient:(id)client
{
  clientCopy = client;
  connectedClients = [(EDServer *)self connectedClients];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__EDServer_removeRemoteClient___block_invoke;
  v7[3] = &unk_1E82536A0;
  v6 = clientCopy;
  v8 = v6;
  [connectedClients performWhileLocked:v7];
}

- (id)messageReconciliationQueries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  connectedClients = [(EDServer *)self connectedClients];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__EDServer_messageReconciliationQueries__block_invoke;
  v5[3] = &unk_1E82564D0;
  v5[4] = &v6;
  [connectedClients performWhileLocked:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__EDServer_messageReconciliationQueries__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 ef_compactMap:&__block_literal_global_86];
  v4 = [v3 ef_flatten];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)threadReconciliationQueries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  connectedClients = [(EDServer *)self connectedClients];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EDServer_threadReconciliationQueries__block_invoke;
  v5[3] = &unk_1E82564D0;
  v5[4] = &v6;
  [connectedClients performWhileLocked:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__EDServer_threadReconciliationQueries__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 ef_compactMap:&__block_literal_global_115];
  v4 = [v3 ef_flatten];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (NSArray)remoteClients
{
  connectedClients = [(EDServer *)self connectedClients];
  getObject = [connectedClients getObject];

  return getObject;
}

@end