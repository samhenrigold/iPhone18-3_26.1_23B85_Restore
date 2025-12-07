@interface REUpNextSiriServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (REUpNextSiriServer)init;
- (void)_accessObservers:(id)observers;
- (void)_accessRemoteClients:(id)clients;
- (void)_removeConnection:(id)connection;
- (void)addObserver:(id)observer;
- (void)completedRequestWithDomain:(id)domain;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation REUpNextSiriServer

- (REUpNextSiriServer)init
{
  v12.receiver = self;
  v12.super_class = REUpNextSiriServer;
  v2 = [(REUpNextSiriServer *)&v12 init];
  if (v2)
  {
    v3 = RECreateSharedQueueWithQOS(@"upnext.siriserver", QOS_CLASS_UTILITY);
    queue = v2->_queue;
    v2->_queue = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v7 = [MEMORY[0x277CBEB58] set];
    connections = v2->_connections;
    v2->_connections = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.NanoTimeKit.Siri"];
    listener = v2->_listener;
    v2->_listener = v9;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  listener = self->_listener;
  self->_listener = 0;

  v4.receiver = self;
  v4.super_class = REUpNextSiriServer;
  [(REUpNextSiriServer *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__REUpNextSiriServer_addObserver___block_invoke;
  v6[3] = &unk_2785F9AE0;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__REUpNextSiriServer_removeObserver___block_invoke;
  v6[3] = &unk_2785F9AE0;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

- (void)completedRequestWithDomain:(id)domain
{
  domainCopy = domain;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__REUpNextSiriServer_completedRequestWithDomain___block_invoke;
  v6[3] = &unk_2785FA758;
  v6[4] = self;
  v7 = domainCopy;
  v5 = domainCopy;
  [(REUpNextSiriServer *)self _accessObservers:v6];
}

- (void)_accessObservers:(id)observers
{
  observersCopy = observers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__REUpNextSiriServer__accessObservers___block_invoke;
  v6[3] = &unk_2785F9A40;
  v6[4] = self;
  v7 = observersCopy;
  v5 = observersCopy;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

void __39__REUpNextSiriServer__accessObservers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = REUpNextSiriClientInterface(connectionCopy);
  [connectionCopy setRemoteObjectInterface:v8];

  v10 = REUpNextSiriServerInterface(v9);
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, connectionCopy);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__REUpNextSiriServer_listener_shouldAcceptNewConnection___block_invoke;
  v15[3] = &unk_2785FA2E0;
  v15[4] = self;
  objc_copyWeak(&v16, &location);
  [connectionCopy setInvalidationHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__REUpNextSiriServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v13[3] = &unk_2785F9AE0;
  v13[4] = self;
  v11 = connectionCopy;
  v14 = v11;
  [(REUpNextSiriServer *)self _onqueue_async:v13];
  [v11 resume];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return 1;
}

void __57__REUpNextSiriServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _removeConnection:WeakRetained];
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  if (connectionCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__REUpNextSiriServer__removeConnection___block_invoke;
    v6[3] = &unk_2785F9AE0;
    v6[4] = self;
    v7 = connectionCopy;
    [(REUpNextSiriServer *)self _onqueue_async:v6];
  }
}

- (void)_accessRemoteClients:(id)clients
{
  clientsCopy = clients;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__REUpNextSiriServer__accessRemoteClients___block_invoke;
  v6[3] = &unk_2785F9A40;
  v6[4] = self;
  v7 = clientsCopy;
  v5 = clientsCopy;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

void __43__REUpNextSiriServer__accessRemoteClients___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) remoteObjectProxyWithErrorHandler:{&__block_literal_global_11, v9}];
        (*(v7 + 16))(v7, v8);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __43__REUpNextSiriServer__accessRemoteClients___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = RELogForDomain(9);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__REUpNextSiriServer__accessRemoteClients___block_invoke_2_cold_1(v2, v3);
  }
}

void __43__REUpNextSiriServer__accessRemoteClients___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "XPC Siri Server connection error: %@", &v2, 0xCu);
}

@end