@interface MTRPluginClientManager
+ (id)sharedInstance;
- (BOOL)isPluginClientLowestHash:(id)hash;
- (BOOL)removeClientForXPCConnection:(id)connection;
- (MTRPluginClientManager)init;
- (id)_findClientForXPCConnection:(id)connection remove:(BOOL)remove;
- (id)addClientForXPCConnection:(id)connection sessionID:(id)d queue:(id)queue;
- (id)clientForXPCConnection:(id)connection;
- (void)_scheduleNextStateLog;
- (void)_startStateLoggingIfNeeded;
- (void)logState;
@end

@implementation MTRPluginClientManager

+ (id)sharedInstance
{
  if (sharedInstance_creation_2 != -1)
  {
    +[MTRPluginClientManager sharedInstance];
  }

  v3 = sharedInstance_sInstance_2;

  return v3;
}

uint64_t __40__MTRPluginClientManager_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_2 = objc_alloc_init(MTRPluginClientManager);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginClientManager)init
{
  v6.receiver = self;
  v6.super_class = MTRPluginClientManager;
  v2 = [(MTRPluginClientManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(MTRPluginClientManager *)v2 setClients:array];

    v4 = v2;
  }

  return v2;
}

- (void)_scheduleNextStateLog
{
  [(MTRPluginClientManager *)self repeatStateLoggingInterval];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MTRPluginClientManager__scheduleNextStateLog__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

- (void)_startStateLoggingIfNeeded
{
  [(MTRPluginClientManager *)self repeatStateLoggingInterval];
  if (v3 == 0.0)
  {
    [(MTRPluginClientManager *)self setRepeatStateLoggingInterval:300.0];

    [(MTRPluginClientManager *)self _scheduleNextStateLog];
  }
}

- (id)_findClientForXPCConnection:(id)connection remove:(BOOL)remove
{
  removeCopy = remove;
  v31 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  clients = [(MTRPluginClientManager *)self clients];
  v7 = [clients countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(clients);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        xpcConnection = [v12 xpcConnection];
        v14 = [xpcConnection isEqual:connectionCopy];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [clients countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (removeCopy)
  {
    v16 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ => Removing tracked client %@", buf, 0x16u);
    }

    clients2 = [(MTRPluginClientManager *)self clients];
    [clients2 removeObject:v9];
  }

  clients3 = [(MTRPluginClientManager *)self clients];
  v19 = [clients3 count];

  if (v19)
  {
    [(MTRPluginClientManager *)self _startStateLoggingIfNeeded];
  }

  else
  {
    [(MTRPluginClientManager *)self _stopStateLogging];
  }

  return v9;
}

- (id)addClientForXPCConnection:(id)connection sessionID:(id)d queue:(id)queue
{
  v26 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dCopy = d;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(MTRPluginClientManager *)selfCopy _findClientForXPCConnection:connectionCopy remove:0];

  if (v12)
  {
    v13 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = selfCopy;
      v20 = 2112;
      v21 = connectionCopy;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ Cannot add client for same xpc connection %@", &v18, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = [[MTRPluginClient alloc] initWithXPCConnection:connectionCopy sessionID:dCopy queue:queueCopy];
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413058;
      v19 = selfCopy;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = connectionCopy;
      v24 = 2112;
      v25 = queueCopy;
      _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Adding Client %@ for xpc connection %@ queue: %@", &v18, 0x2Au);
    }

    clients = [(MTRPluginClientManager *)selfCopy clients];
    [clients addObject:v14];

    [(MTRPluginClientManager *)selfCopy _startStateLoggingIfNeeded];
  }

  objc_sync_exit(selfCopy);

  return v14;
}

- (BOOL)removeClientForXPCConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MTRPluginClientManager *)selfCopy _findClientForXPCConnection:connectionCopy remove:1];
  v7 = matterPluginLog_default;
  v8 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v10 = 138412802;
      v11 = selfCopy;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = connectionCopy;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Removing client %@  for xpc connection: %@", &v10, 0x20u);
    }

    [v6 invalidate];
  }

  else if (v8)
  {
    v10 = 138412546;
    v11 = selfCopy;
    v12 = 2112;
    v13 = connectionCopy;
    _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Cannot find and remove client for xpc connection %@", &v10, 0x16u);
  }

  objc_sync_exit(selfCopy);
  return v6 != 0;
}

- (id)clientForXPCConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MTRPluginClientManager *)selfCopy _findClientForXPCConnection:connectionCopy remove:0];
  if (!v6)
  {
    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = selfCopy;
      v11 = 2112;
      v12 = connectionCopy;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Cannot find client for xpc connection %@", &v9, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)isPluginClientLowestHash:(id)hash
{
  v18 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [hashCopy hash];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  clients = [(MTRPluginClientManager *)selfCopy clients];
  v8 = [clients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(clients);
        }

        if ([*(*(&v13 + 1) + 8 * i) hash] < v6)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [clients countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  objc_sync_exit(selfCopy);
  return v11;
}

- (void)logState
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clients = [(MTRPluginClientManager *)selfCopy clients];
    v5 = [clients count];
    clients2 = [(MTRPluginClientManager *)selfCopy clients];
    v8 = 138412802;
    v9 = selfCopy;
    v10 = 2048;
    v11 = v5;
    v12 = 2112;
    v13 = clients2;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ MTRPlugin active clients: %lu (%@)", &v8, 0x20u);
  }

  [(MTRPluginClientManager *)selfCopy repeatStateLoggingInterval];
  if (v7 > 0.0)
  {
    [(MTRPluginClientManager *)selfCopy _scheduleNextStateLog];
  }

  objc_sync_exit(selfCopy);
}

@end