@interface ATStatusObserverListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation ATStatusObserverListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 1024;
    v22 = processIdentifier;
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Got connection from pid %i", buf, 0x12u);
  }

  v8 = [[ATStatusObserverConnection alloc] initWithConnection:connectionCopy];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283702CB0];
  [connectionCopy setRemoteObjectInterface:v9];

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FCF18];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:v8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__ATStatusObserverListener_listener_shouldAcceptNewConnection___block_invoke;
  v17[3] = &unk_2784E9328;
  v17[4] = self;
  v18 = processIdentifier;
  [connectionCopy setInterruptionHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ATStatusObserverListener_listener_shouldAcceptNewConnection___block_invoke_52;
  v14[3] = &unk_2784E90E0;
  v16 = processIdentifier;
  v14[4] = self;
  v15 = v8;
  v11 = v8;
  [connectionCopy setInvalidationHandler:v14];
  v12 = +[ATStatusMonitor sharedMonitor];
  [v12 addObserver:v11];

  [connectionCopy resume];
  return 1;
}

void __63__ATStatusObserverListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection interrupted from pid: %i", &v5, 0x12u);
  }
}

void __63__ATStatusObserverListener_listener_shouldAcceptNewConnection___block_invoke_52(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v6 = 138543618;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated from pid: %i", &v6, 0x12u);
  }

  v5 = +[ATStatusMonitor sharedMonitor];
  [v5 removeObserver:*(a1 + 40)];
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
  v5 = [v4 initWithMachServiceName:*MEMORY[0x277CEA3F0]];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
}

@end