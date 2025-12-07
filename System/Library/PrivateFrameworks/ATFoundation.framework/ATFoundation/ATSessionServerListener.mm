@interface ATSessionServerListener
+ (id)sharedSessionServer;
- (ATSessionServerListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_dumpDebugInformation;
- (void)addSession:(id)session;
- (void)cancelSessionWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchActiveSessionCountForSessionTypeIdentifier:(id)identifier completion:(id)completion;
- (void)fetchSessionsWithTypeIdentifier:(id)identifier completion:(id)completion;
- (void)removeSession:(id)session;
- (void)start;
- (void)stop;
@end

@implementation ATSessionServerListener

- (void)_dumpDebugInformation
{
  v23 = *MEMORY[0x277D85DE8];
  obj = self->_sessionProxiesBySessionID;
  objc_sync_enter(obj);
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableDictionary *)self->_sessionProxiesBySessionID count];
    *buf = 138543618;
    selfCopy = self;
    v21 = 2048;
    v22 = v4;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ dumping info for %lu session proxies", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sessionProxiesBySessionID objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = _ATLogCategoryFramework_Oversize();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          session = [v9 session];
          v12 = [session debugDescription];
          *buf = 138543362;
          selfCopy = v12;
          _os_log_impl(&dword_22392A000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
}

- (void)fetchActiveSessionCountForSessionTypeIdentifier:(id)identifier completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  completionCopy = completion;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sessionProxiesBySessionID objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (identifierCopy)
        {
          session = [*(*(&v23 + 1) + 8 * i) session];
          sessionTypeIdentifier = [session sessionTypeIdentifier];
          v16 = [sessionTypeIdentifier isEqualToString:identifierCopy];

          if (!v16)
          {
            continue;
          }
        }

        session2 = [v13 session];
        if ([session2 isCancelled])
        {
        }

        else
        {
          session3 = [v13 session];
          v19 = ~[session3 isFinished];

          v10 += v19 & 1;
        }
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v20 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v28 = selfCopy;
    v29 = 2048;
    v30 = v10;
    v31 = 2114;
    v32 = identifierCopy;
    _os_log_impl(&dword_22392A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ found %lu active sessions for %{public}@", buf, 0x20u);
  }

  completionCopy[2](completionCopy, v10, 0);
}

- (void)cancelSessionWithIdentifier:(id)identifier completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = identifierCopy;
    _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling session. id=%{public}@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sessionProxiesBySessionID objectEnumerator];
  v10 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        session = [v14 session];
        sessionIdentifier = [session sessionIdentifier];
        v17 = [sessionIdentifier isEqualToString:identifierCopy];

        if (v17)
        {
          session2 = [v14 session];
          [session2 cancel];
        }
      }

      v11 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)fetchSessionsWithTypeIdentifier:(id)identifier completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v20 = objc_opt_new();
  allSessions = [MEMORY[0x277CEA468] allSessions];
  v8 = [allSessions copy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        sessionTypeIdentifier = [v14 sessionTypeIdentifier];
        if ([sessionTypeIdentifier isEqualToString:identifierCopy])
        {
          sessionProxiesBySessionID = self->_sessionProxiesBySessionID;
          sessionIdentifier = [v14 sessionIdentifier];
          v18 = [(NSMutableDictionary *)sessionProxiesBySessionID objectForKey:sessionIdentifier];

          if (v18)
          {
            [v20 addObject:v14];
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  completionCopy[2](completionCopy, v20, 0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v16 = 1024;
    v17 = processIdentifier;
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Got connection from pid %i", buf, 0x12u);
  }

  [connectionCopy setExportedObject:self];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FC920];
  [connectionCopy setExportedInterface:v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke;
  v12[3] = &unk_2784E9328;
  v12[4] = self;
  v13 = processIdentifier;
  [connectionCopy setInterruptionHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke_56;
  v10[3] = &unk_2784E9328;
  v10[4] = self;
  v11 = processIdentifier;
  [connectionCopy setInvalidationHandler:v10];
  [connectionCopy resume];

  return 1;
}

void __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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

void __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke_56(uint64_t a1)
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
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated from pid: %i", &v5, 0x12u);
  }
}

- (void)removeSession:(id)session
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  sessionProxiesBySessionID = self->_sessionProxiesBySessionID;
  sessionIdentifier = [sessionCopy sessionIdentifier];
  v7 = [(NSMutableDictionary *)sessionProxiesBySessionID objectForKey:sessionIdentifier];

  if (v7)
  {
    [v7 stop];
    v8 = self->_sessionProxiesBySessionID;
    objc_sync_enter(v8);
    v9 = self->_sessionProxiesBySessionID;
    sessionIdentifier2 = [sessionCopy sessionIdentifier];
    [(NSMutableDictionary *)v9 removeObjectForKey:sessionIdentifier2];

    objc_sync_exit(v8);
  }

  v11 = _ATLogCategoryFramework();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  v13 = *MEMORY[0x277CEA420];
  if (v12)
  {
    v15 = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = sessionCopy;
    _os_log_impl(&dword_22392A000, v11, OS_LOG_TYPE_DEFAULT, "posting %{public}@ notification for removing session %{public}@", &v15, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v13, 0, 0, 1u);
}

- (void)addSession:(id)session
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [[ATSessionProxyListener alloc] initWithSession:sessionCopy];
  v6 = self->_sessionProxiesBySessionID;
  objc_sync_enter(v6);
  sessionProxiesBySessionID = self->_sessionProxiesBySessionID;
  sessionIdentifier = [sessionCopy sessionIdentifier];
  [(NSMutableDictionary *)sessionProxiesBySessionID setObject:v5 forKey:sessionIdentifier];

  objc_sync_exit(v6);
  [(ATSessionProxyListener *)v5 start];
  v9 = _ATLogCategoryFramework();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  v11 = *MEMORY[0x277CEA420];
  if (v10)
  {
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = sessionCopy;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "posting %{public}@ notification for adding session %{public}@", &v13, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v11, 0, 0, 1u);
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
  v5 = [v4 initWithMachServiceName:*MEMORY[0x277CEA400]];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
}

- (ATSessionServerListener)init
{
  v7.receiver = self;
  v7.super_class = ATSessionServerListener;
  v2 = [(ATSessionServerListener *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessionProxiesBySessionID = v2->_sessionProxiesBySessionID;
    v2->_sessionProxiesBySessionID = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__dumpDebugInformation name:*MEMORY[0x277CEA3D8] object:0];
  }

  return v2;
}

+ (id)sharedSessionServer
{
  if (sharedSessionServer_onceToken != -1)
  {
    dispatch_once(&sharedSessionServer_onceToken, &__block_literal_global_330);
  }

  v3 = sharedSessionServer_server;

  return v3;
}

uint64_t __46__ATSessionServerListener_sharedSessionServer__block_invoke()
{
  sharedSessionServer_server = objc_alloc_init(ATSessionServerListener);

  return MEMORY[0x2821F96F8]();
}

@end