@interface UARPPersonalizationManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)xpcConnectionHasEntitlement:(id)entitlement;
- (UARPPersonalizationManager)initWithMachServiceName:(id)name entitlement:(id)entitlement delegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)getOutstandingPersonalizationRequests:(id)requests reply:(id)reply;
- (void)personalizationResponse:(id)response updaterName:(id)name;
@end

@implementation UARPPersonalizationManager

- (UARPPersonalizationManager)initWithMachServiceName:(id)name entitlement:(id)entitlement delegate:(id)delegate queue:(id)queue
{
  nameCopy = name;
  entitlementCopy = entitlement;
  delegateCopy = delegate;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = UARPPersonalizationManager;
  v14 = [(UARPPersonalizationManager *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v15->_queue, queue);
    v16 = [nameCopy copy];
    serviceName = v15->_serviceName;
    v15->_serviceName = v16;

    v18 = [entitlementCopy copy];
    entitlement = v15->_entitlement;
    v15->_entitlement = v18;

    v20 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
    log = v15->_log;
    v15->_log = v20;

    v22 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v15->_serviceName];
    listener = v15->_listener;
    v15->_listener = v22;

    [(NSXPCListener *)v15->_listener setDelegate:v15];
    [(NSXPCListener *)v15->_listener activate];
  }

  return v15;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = UARPPersonalizationManager;
  [(UARPPersonalizationManager *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    processIdentifier = [connectionCopy processIdentifier];
    *buf = 67109120;
    v22 = processIdentifier;
    _os_log_impl(&dword_247AA7000, v8, OS_LOG_TYPE_INFO, "Connection from PID %d", buf, 8u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v15 = connectionCopy;
  v16 = &v17;
  v11 = connectionCopy;
  dispatch_sync(queue, block);
  v12 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v12 & 1;
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) xpcConnectionHasEntitlement:*(a1 + 40)])
  {
    v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2859CF7A8];
    [*(a1 + 40) setExportedInterface:v2];

    [*(a1 + 40) setExportedObject:*(a1 + 32)];
    v3 = [*(a1 + 40) processIdentifier];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2;
    v9[3] = &unk_278EC2458;
    v4 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v3;
    [v4 setInterruptionHandler:v9];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_11;
    v7[3] = &unk_278EC2458;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v3;
    [v5 setInvalidationHandler:v7];
    [*(a1 + 40) _setQueue:*(*(a1 + 32) + 16)];
    [*(a1 + 40) resume];
    v6 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = v3;
      _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "New connection from PID %d", buf, 8u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2_cold_1(a1, v2);
  }
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_11(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "Connection from PID %d invalidated", v4, 8u);
  }
}

- (BOOL)xpcConnectionHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(UARPPersonalizationManager *)log xpcConnectionHasEntitlement:entitlementCopy];
  }

  v6 = [entitlementCopy valueForEntitlement:self->_entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(UARPPersonalizationManager *)v8 xpcConnectionHasEntitlement:entitlementCopy];
    }

    v7 = 0;
  }

  return v7;
}

- (void)getOutstandingPersonalizationRequests:(id)requests reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager getOutstandingPersonalizationRequests:log reply:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained personalizationHelperQueryPendingTssRequests:requestsCopy];

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPPersonalizationManager getOutstandingPersonalizationRequests:reply:]";
    v14 = 2112;
    v15 = requestsCopy;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: Updater Name %@, pending tss requests %@", &v12, 0x20u);
  }

  replyCopy[2](replyCopy, v10);
}

- (void)personalizationResponse:(id)response updaterName:(id)name
{
  responseCopy = response;
  nameCopy = name;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager personalizationResponse:updaterName:];
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager personalizationResponse:updaterName:];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager personalizationResponse:log updaterName:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained personalizationHelperTssResponse:responseCopy updaterName:nameCopy];
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "Connection to PID %d interrupted", v3, 8u);
}

- (void)xpcConnectionHasEntitlement:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 8u);
}

- (void)xpcConnectionHasEntitlement:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 8u);
}

- (void)getOutstandingPersonalizationRequests:(uint64_t)a1 reply:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(v5, v6, v7, v8, v9);
}

- (void)personalizationResponse:updaterName:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_247AA7000, v0, v1, "%s: Updater Name %@", v2);
}

- (void)personalizationResponse:updaterName:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_247AA7000, v0, v1, "%s: TSS Response %@", v2);
}

- (void)personalizationResponse:(uint64_t)a1 updaterName:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(v5, v6, v7, v8, v9);
}

@end