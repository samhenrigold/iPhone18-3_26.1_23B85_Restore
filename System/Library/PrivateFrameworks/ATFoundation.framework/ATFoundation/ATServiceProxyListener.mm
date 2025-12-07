@interface ATServiceProxyListener
- (ATService)service;
- (ATServiceProxyListener)initWithService:(id)service;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation ATServiceProxyListener

- (ATService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v27 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v25 = 1024;
    v26 = processIdentifier;
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ got connection from pid %i", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_service);
  v9 = [[ATServiceProxyConnection alloc] initWithService:WeakRetained connection:connectionCopy];
  [connectionCopy setExportedObject:v9];
  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283702C50];
  [connectionCopy setRemoteObjectInterface:v10];
  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FDFF0];
  [connectionCopy setExportedInterface:v11];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke;
  v21[3] = &__block_descriptor_36_e5_v8__0l;
  v22 = processIdentifier;
  [connectionCopy setInterruptionHandler:v21];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke_54;
  v17 = &unk_2784E90E0;
  v20 = processIdentifier;
  selfCopy2 = self;
  v19 = v9;
  v12 = v9;
  [connectionCopy setInvalidationHandler:&v14];
  [WeakRetained addObserver:{v12, v14, v15, v16, v17, selfCopy2}];
  [connectionCopy resume];

  return 1;
}

void __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted from pid: %i", v4, 8u);
  }
}

void __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke_54(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated from pid: %i", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained removeObserver:*(a1 + 40)];
}

- (void)stop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping", &v6, 0xCu);
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    [(NSXPCListener *)self->_listener setDelegate:0];
    v5 = self->_listener;
    self->_listener = 0;
  }
}

- (void)start
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", &v7, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CCAE98]);
  v5 = [v4 initWithMachServiceName:*MEMORY[0x277CEA3F8]];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
}

- (ATServiceProxyListener)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = ATServiceProxyListener;
  v5 = [(ATServiceProxyListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
  }

  return v6;
}

@end