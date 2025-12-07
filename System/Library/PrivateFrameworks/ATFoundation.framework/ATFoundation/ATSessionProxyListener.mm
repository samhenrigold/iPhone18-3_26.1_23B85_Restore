@interface ATSessionProxyListener
- (ATSessionProxyListener)initWithSession:(id)session;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)sessionDidFinish:(id)finish;
- (void)start;
- (void)stop;
@end

@implementation ATSessionProxyListener

- (void)sessionDidFinish:(id)finish
{
  v4 = +[ATSessionServerListener sharedSessionServer];
  [v4 removeSession:self->_session];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v9 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 1024;
    v24 = processIdentifier;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Got connection from pid %i", buf, 0x12u);
  }

  v10 = [[ATSessionProxyConnection alloc] initWithSession:self->_session connection:connectionCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_2784E9608;
  block[4] = self;
  v12 = v10;
  v20 = v12;
  dispatch_sync(queue, block);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v17[3] = &unk_2784E9328;
  v17[4] = self;
  v18 = processIdentifier;
  [connectionCopy setInterruptionHandler:v17];
  objc_initWeak(buf, v12);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_3;
  v14[3] = &unk_2784E93E8;
  v14[4] = self;
  v16 = processIdentifier;
  objc_copyWeak(&v15, buf);
  [connectionCopy setInvalidationHandler:v14];
  [(ATSessionProxyConnection *)v12 start];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return 1;
}

void __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
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

void __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *buf = 138543618;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated from pid: %i", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained stop];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_4;
    v9[3] = &unk_2784E9608;
    v9[4] = v7;
    v10 = v6;
    dispatch_sync(v8, v9);
  }
}

- (void)stop
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stop", &v4, 0xCu);
  }

  [(NSXPCListener *)self->_listener invalidate];
}

- (void)start
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", &v4, 0xCu);
  }

  [(ATSession *)self->_session addObserver:self];
  [(NSXPCListener *)self->_listener resume];
}

- (ATSessionProxyListener)initWithSession:(id)session
{
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = ATSessionProxyListener;
  v6 = [(ATSessionProxyListener *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v6->_connections;
    v6->_connections = v7;

    objc_storeStrong(&v6->_session, session);
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v6->_listener;
    v6->_listener = anonymousListener;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    endpoint = [(NSXPCListener *)v6->_listener endpoint];
    [(ATSession *)v6->_session setEndpoint:endpoint];

    v12 = objc_opt_class();
    Name = class_getName(v12);
    v14 = dispatch_queue_create(Name, 0);
    queue = v6->_queue;
    v6->_queue = v14;
  }

  return v6;
}

@end