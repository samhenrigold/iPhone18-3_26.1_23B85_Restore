@interface CRSUIClusterThemeService
- (CRSUIClusterThemeDataProviding)themeDataProvider;
- (CRSUIClusterThemeService)init;
- (void)_connectionQueue_addConnection:(id)connection;
- (void)_connectionQueue_removeConnection:(id)connection;
- (void)getClusterThemeLayoutData:(id)data;
- (void)getURLForAssetWithIdentifier:(id)identifier displayID:(id)d reply:(id)reply;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)registerThemeObserver:(id)observer;
- (void)setThemeData:(id)data reply:(id)reply;
- (void)updateExtraAssetsURL:(id)l;
@end

@implementation CRSUIClusterThemeService

- (CRSUIClusterThemeService)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = CRSUIClusterThemeService;
  v2 = [(CRSUIClusterThemeService *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    serial = [MEMORY[0x277CF0C18] serial];
    v5 = BSDispatchQueueCreate();
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v5;

    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    connections = v3->_connections;
    v3->_connections = v7;

    v9 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285608FB0];
    themeObservers = v3->_themeObservers;
    v3->_themeObservers = v9;

    v11 = MEMORY[0x277CF32A0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __32__CRSUIClusterThemeService_init__block_invoke;
    v18[3] = &unk_278DA0B08;
    v12 = v3;
    v19 = v12;
    v13 = [v11 listenerWithConfigurator:v18];
    v14 = v12[3];
    v12[3] = v13;

    v15 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v12[3];
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_243218000, v15, OS_LOG_TYPE_DEFAULT, "Activating listener! %@", buf, 0xCu);
    }

    [v12[3] activate];
  }

  return v3;
}

void __32__CRSUIClusterThemeService_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay.ClusterTheme"];
  v3 = +[CRSUIClusterThemeSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    listener = [(CRSUIClusterThemeService *)self listener];
    v6 = 138412290;
    v7 = listener;
    _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating listener! %@", &v6, 0xCu);
  }

  listener2 = [(CRSUIClusterThemeService *)self listener];
  [listener2 invalidate];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  v11 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = connectionCopy;
    _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Received connection! %@", buf, 0xCu);
  }

  remoteProcess = [connectionCopy remoteProcess];
  if (remoteProcess && ([connectionCopy remoteProcess], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasEntitlement:", @"com.apple.private.CarPlayUIServices.cluster-theme"), v13, remoteProcess, (v14 & 1) != 0))
  {
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke;
    v22[3] = &unk_278DA0B58;
    v22[4] = self;
    objc_copyWeak(&v23, &location);
    [connectionCopy configureConnection:v22];
    v15 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = connectionCopy;
      _os_log_impl(&dword_243218000, v15, OS_LOG_TYPE_DEFAULT, "Activating connection... %@", buf, 0xCu);
    }

    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_79;
    block[3] = &unk_278DA0B80;
    objc_copyWeak(&v21, &location);
    v17 = connectionCopy;
    v20 = v17;
    dispatch_async(connectionQueue, block);
    [v17 activate];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CRSUIClusterThemeService listener:connectionCopy didReceiveConnection:v18 withContext:?];
    }

    [connectionCopy invalidate];
  }
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIClusterThemeSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIClusterThemeSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278DA0B30;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInvalidationHandler:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained connectionQueue];
  [v3 setTargetQueue:v7];

  objc_destroyWeak(&v9);
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionQueue_removeConnection:v3];
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _connectionQueue_addConnection:*(a1 + 32)];
}

- (void)getClusterThemeLayoutData:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentContext = [MEMORY[0x277CF3280] currentContext];
    *buf = 138412290;
    v24 = currentContext;
    _os_log_impl(&dword_243218000, v5, OS_LOG_TYPE_DEFAULT, "Received request for cluster layouts (connection: %@)", buf, 0xCu);
  }

  themeDataProvider = [(CRSUIClusterThemeService *)self themeDataProvider];

  if (themeDataProvider)
  {
    themeDataProvider2 = [(CRSUIClusterThemeService *)self themeDataProvider];
    themeData = [themeDataProvider2 themeData];

    themeDataProvider3 = [(CRSUIClusterThemeService *)self themeDataProvider];
    clusterThemeDisplays = [themeDataProvider3 clusterThemeDisplays];

    themeDataProvider4 = [(CRSUIClusterThemeService *)self themeDataProvider];
    assetBaseURL = [themeDataProvider4 assetBaseURL];

    themeDataProvider5 = [(CRSUIClusterThemeService *)self themeDataProvider];
    extraAssetsURL = [themeDataProvider5 extraAssetsURL];

    v16 = objc_alloc_init(_CRSUIClusterThemeLayoutData);
    [(_CRSUIClusterThemeLayoutData *)v16 setThemeData:themeData];
    [(_CRSUIClusterThemeLayoutData *)v16 setDisplays:clusterThemeDisplays];
    [(_CRSUIClusterThemeLayoutData *)v16 setAssetBaseURL:assetBaseURL];
    [(_CRSUIClusterThemeLayoutData *)v16 setExtraAssetsURL:extraAssetsURL];
    themeDataProvider6 = [(CRSUIClusterThemeService *)self themeDataProvider];
    -[_CRSUIClusterThemeLayoutData setAssetVersion:](v16, "setAssetVersion:", [themeDataProvider6 assetVersion]);

    v18 = 0;
  }

  else
  {
    v19 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CRSUIClusterThemeService getClusterThemeLayoutData:v19];
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22 = @"Unable to retrieve cluster theme data";
    themeData = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v18 = [v20 errorWithDomain:@"com.apple.CarPlayUIServices.cluster-theme-service" code:1 userInfo:themeData];
    v16 = 0;
  }

  dataCopy[2](dataCopy, v16, v18);
}

- (void)getURLForAssetWithIdentifier:(id)identifier displayID:(id)d reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  replyCopy = reply;
  v11 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    currentContext = [MEMORY[0x277CF3280] currentContext];
    *buf = 138412802;
    v22 = currentContext;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Received request for asset url (connection: %@): %@:%@", buf, 0x20u);
  }

  themeDataProvider = [(CRSUIClusterThemeService *)self themeDataProvider];

  if (themeDataProvider)
  {
    themeDataProvider2 = [(CRSUIClusterThemeService *)self themeDataProvider];
    v15 = [themeDataProvider2 getURLForAssetWithIdentifier:identifierCopy displayID:dCopy];
    v16 = 0;
  }

  else
  {
    v17 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CRSUIClusterThemeService getURLForAssetWithIdentifier:v17 displayID:? reply:?];
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Unable to retrieve asset url";
    themeDataProvider2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = [v18 errorWithDomain:@"com.apple.CarPlayUIServices.cluster-theme-service" code:1 userInfo:themeDataProvider2];
    v15 = 0;
  }

  replyCopy[2](replyCopy, v15, v16);
}

- (void)setThemeData:(id)data reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  replyCopy = reply;
  v8 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    currentContext = [MEMORY[0x277CF3280] currentContext];
    themeData = [dataCopy themeData];
    *buf = 138412546;
    *&buf[4] = currentContext;
    *&buf[12] = 2112;
    *&buf[14] = themeData;
    _os_log_impl(&dword_243218000, v8, OS_LOG_TYPE_DEFAULT, "Received request to set theme data (connection: %@): %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  themeObservers = [(CRSUIClusterThemeService *)self themeObservers];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__CRSUIClusterThemeService_setThemeData_reply___block_invoke;
  v13[3] = &unk_278DA0BA8;
  v15 = buf;
  v13[4] = self;
  v12 = dataCopy;
  v14 = v12;
  [themeObservers enumerateObserversWithBlock:v13];

  replyCopy[2](replyCopy, *(*&buf[8] + 40));
  _Block_object_dispose(buf, 8);
}

void __47__CRSUIClusterThemeService_setThemeData_reply___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) themeData];
    v7 = [v10 clusterThemeService:v5 didSetThemeData:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (void)registerThemeObserver:(id)observer
{
  observerCopy = observer;
  themeObservers = [(CRSUIClusterThemeService *)self themeObservers];
  [themeObservers registerObserver:observerCopy];
}

- (void)updateExtraAssetsURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = CRSUILogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = lCopy;
    _os_log_impl(&dword_243218000, v5, OS_LOG_TYPE_DEFAULT, "service extraAssetsURL=%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CRSUIClusterThemeService_updateExtraAssetsURL___block_invoke;
  v8[3] = &unk_278DA0B80;
  objc_copyWeak(&v10, buf);
  v9 = lCopy;
  v7 = lCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __49__CRSUIClusterThemeService_updateExtraAssetsURL___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [WeakRetained connections];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) remoteTarget];
        [v8 updateExtraAssetsURL:*(a1 + 32)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_connectionQueue_addConnection:(id)connection
{
  connectionCopy = connection;
  BSDispatchQueueAssert();
  connections = [(CRSUIClusterThemeService *)self connections];
  [connections addObject:connectionCopy];
}

- (void)_connectionQueue_removeConnection:(id)connection
{
  connectionCopy = connection;
  BSDispatchQueueAssert();
  connections = [(CRSUIClusterThemeService *)self connections];
  [connections removeObject:connectionCopy];
}

- (CRSUIClusterThemeDataProviding)themeDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_themeDataProvider);

  return WeakRetained;
}

- (void)listener:(void *)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 remoteProcess];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Process does not have the required entitlement: %@", &v4, 0xCu);
}

void __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Connection invalidated! %@", &v2, 0xCu);
}

@end