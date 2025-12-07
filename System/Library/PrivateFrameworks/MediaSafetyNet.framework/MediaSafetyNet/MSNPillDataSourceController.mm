@interface MSNPillDataSourceController
- (MSNPillDataSourceController)initWithQueue:(id)queue;
- (MSNPillDataSourceProtocol)dataSource;
- (void)dealloc;
- (void)registerPillDataSource:(id)source forIdentifiers:(id)identifiers;
@end

@implementation MSNPillDataSourceController

- (void)dealloc
{
  notify_cancel(self->_token);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = MSNPillDataSourceController;
  [(MSNPillDataSourceController *)&v3 dealloc];
}

- (MSNPillDataSourceController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = MSNPillDataSourceController;
  v6 = [(MSNPillDataSourceController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    objc_initWeak(&location, v7);
    queue = v7->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__MSNPillDataSourceController_initWithQueue___block_invoke;
    v10[3] = &unk_2798A3E48;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.MediaSafetyNet.connectionrequest", &v7->_token, queue, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __45__MSNPillDataSourceController_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__MSNPillDataSourceController_initWithQueue___block_invoke_2;
    block[3] = &unk_2798A3D68;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __45__MSNPillDataSourceController_initWithQueue___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MSNLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "com.apple.MediaSafetyNet.connectionrequest";
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Handling %s by setting up XPC connection", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [v3 dataSource];
  v5 = [*(a1 + 32) identifiers];
  [v3 registerPillDataSource:v4 forIdentifiers:v5];
}

- (void)registerPillDataSource:(id)source forIdentifiers:(id)identifiers
{
  v31 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  identifiersCopy = identifiers;
  queue = [(MSNPillDataSourceController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mediasafetynet.pill" options:0];
  [(MSNPillDataSourceController *)self setXpcConnection:v9];

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B57C8];
  xpcConnection = [(MSNPillDataSourceController *)self xpcConnection];
  [xpcConnection setRemoteObjectInterface:v10];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B6450];
  xpcConnection2 = [(MSNPillDataSourceController *)self xpcConnection];
  [xpcConnection2 setExportedInterface:v12];

  xpcConnection3 = [(MSNPillDataSourceController *)self xpcConnection];
  [xpcConnection3 setExportedObject:sourceCopy];

  xpcConnection4 = [(MSNPillDataSourceController *)self xpcConnection];
  queue2 = [(MSNPillDataSourceController *)self queue];
  [xpcConnection4 _setQueue:queue2];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__MSNPillDataSourceController_registerPillDataSource_forIdentifiers___block_invoke;
  v25[3] = &unk_2798A3D68;
  v26 = @"com.apple.mediasafetynet.pill";
  xpcConnection5 = [(MSNPillDataSourceController *)self xpcConnection];
  [xpcConnection5 setInterruptionHandler:v25];

  v24 = @"com.apple.mediasafetynet.pill";
  v18 = [(MSNPillDataSourceController *)self xpcConnection:MEMORY[0x277D85DD0]];
  [v18 setInvalidationHandler:&v23];

  xpcConnection6 = [(MSNPillDataSourceController *)self xpcConnection];
  [xpcConnection6 resume];

  [(MSNPillDataSourceController *)self setDataSource:sourceCopy];
  v20 = MSNLog([(MSNPillDataSourceController *)self setIdentifiers:identifiersCopy]);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v28 = sourceCopy;
    v29 = 2112;
    v30 = identifiersCopy;
    _os_log_impl(&dword_258731000, v20, OS_LOG_TYPE_INFO, "Registering dataSource: (%@) with identifiers: %@", buf, 0x16u);
  }

  xpcConnection7 = [(MSNPillDataSourceController *)self xpcConnection];
  remoteObjectProxy = [xpcConnection7 remoteObjectProxy];
  [remoteObjectProxy registerPillDataSourceForIdentifiers:identifiersCopy];
}

void __69__MSNPillDataSourceController_registerPillDataSource_forIdentifiers___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = MSNLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Interrupted (%@): If this happens at connection-time or when setting an exception, a required entitlement is likely missing.", &v4, 0xCu);
  }
}

void __69__MSNPillDataSourceController_registerPillDataSource_forIdentifiers___block_invoke_13(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = MSNLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Invalidated (%@).", &v4, 0xCu);
  }
}

- (MSNPillDataSourceProtocol)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end