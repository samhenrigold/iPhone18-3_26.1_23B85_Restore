@interface HDDaemonConnectionManager
- (HDDaemonConnectionManager)initWithMachServiceName:(id)name daemon:(id)daemon;
- (NSArray)clientProcesses;
- (id)clientForListener:(id)listener connection:(id)connection error:(id *)error;
- (id)createAnonymousListenerWithLabel:(id)label;
- (id)createListenerWithMachServiceName:(id)name;
- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error;
- (void)_configureListener:(uint64_t)listener;
- (void)endpointInvalidated:(id)invalidated;
- (void)invalidate;
- (void)invalidateAllServersForProfile:(id)profile;
@end

@implementation HDDaemonConnectionManager

- (HDDaemonConnectionManager)initWithMachServiceName:(id)name daemon:(id)daemon
{
  nameCopy = name;
  daemonCopy = daemon;
  v20.receiver = self;
  v20.super_class = HDDaemonConnectionManager;
  v8 = [(HDDaemonConnectionManager *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_daemon, daemonCopy);
    v10 = HKCreateSerialDispatchQueue();
    listenerQueue = v9->_listenerQueue;
    v9->_listenerQueue = v10;

    v9->_lock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    endpoints = v9->_endpoints;
    v9->_endpoints = v12;

    if (nameCopy)
    {
      v14 = [(HDDaemonConnectionManager *)v9 createListenerWithMachServiceName:nameCopy];
      serviceListener = v9->_serviceListener;
      v9->_serviceListener = v14;
    }

    else
    {
      v16 = objc_opt_class();
      serviceListener = NSStringFromClass(v16);
      v17 = [(HDDaemonConnectionManager *)v9 createAnonymousListenerWithLabel:serviceListener];
      v18 = v9->_serviceListener;
      v9->_serviceListener = v17;
    }

    [(HDXPCListener *)v9->_serviceListener setDelegate:v9];
  }

  return v9;
}

- (NSArray)clientProcesses
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableSet count](self->_endpoints, "count")}];
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_endpoints;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        client = [*(*(&v13 + 1) + 8 * i) client];
        process = [client process];
        [v3 addObject:process];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_msgSend_copy(v3);

  return v11;
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  [(HDXPCListener *)self->_serviceListener invalidate];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_endpoints;
  endpoints = self->_endpoints;
  self->_endpoints = 0;

  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)createListenerWithMachServiceName:(id)name
{
  v4 = MEMORY[0x277D10BF0];
  nameCopy = name;
  v6 = [[v4 alloc] initWithMachServiceName:nameCopy];

  [(HDDaemonConnectionManager *)self _configureListener:v6];

  return v6;
}

- (void)_configureListener:(uint64_t)listener
{
  if (listener)
  {
    v3 = a2;
    [v3 setClientProvider:listener];
    [v3 setQueue:*(listener + 16)];
  }
}

- (id)createAnonymousListenerWithLabel:(id)label
{
  v4 = MEMORY[0x277D10BF0];
  labelCopy = label;
  v6 = [[v4 alloc] initWithLabel:labelCopy];

  [(HDDaemonConnectionManager *)self _configureListener:v6];

  return v6;
}

- (void)invalidateAllServersForProfile:(id)profile
{
  v20 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_msgSend_copy(self->_endpoints);
  os_unfair_lock_unlock(&self->_lock);
  profileIdentifier = [profileCopy profileIdentifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        profileIdentifier2 = [v12 profileIdentifier];
        v14 = [profileIdentifier2 isEqual:profileIdentifier];

        if (v14)
        {
          [v12 invalidate];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)endpointInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_endpoints removeObject:invalidatedCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)clientForListener:(id)listener connection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v8 = connectionCopy;
  if (self)
  {
    v9 = objc_alloc(MEMORY[0x277CCDE78]);
    if (v8)
    {
      objc_msgSend_auditToken(v8);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v10 = [v9 initWithAuditToken:&v17];
    os_unfair_lock_lock(&self->_lock);
    processesByAuditToken = self->_processesByAuditToken;
    if (!processesByAuditToken)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v13 = self->_processesByAuditToken;
      self->_processesByAuditToken = strongToWeakObjectsMapTable;

      processesByAuditToken = self->_processesByAuditToken;
    }

    v14 = [(NSMapTable *)processesByAuditToken objectForKey:v10, v17, v18];
    if (!v14)
    {
      processCreationHandler = self->_processCreationHandler;
      if (processCreationHandler)
      {
        processCreationHandler[2](processCreationHandler, v8, error);
      }

      else
      {
        [MEMORY[0x277D10C00] processWithConnection:v8 error:error];
      }
      v14 = ;
      if (v14)
      {
        [(NSMapTable *)self->_processesByAuditToken setObject:v14 forKey:v10];
      }
    }

    os_unfair_lock_unlock(&self->_lock);

    if (v14)
    {
      self = [objc_alloc(MEMORY[0x277D10BD8]) initWithConnection:v8 process:v14];
    }

    else
    {
      self = 0;
    }
  }

  else
  {

    v14 = 0;
  }

  return self;
}

- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_daemon);
    v10 = [HDHealthStoreEndpoint endpointWithClient:clientCopy healthDaemon:v9];

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_endpoints addObject:v10];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Daemon became nil"];
    v10 = 0;
  }

  return v10;
}

@end