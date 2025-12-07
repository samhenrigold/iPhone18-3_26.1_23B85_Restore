@interface NPKIDVRemoteDeviceSessionService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NPKIDVRemoteDeviceSessionService)initWithRemoteDeviceEventsCoordinator:(id)coordinator connectionCoordinator:(id)connectionCoordinator preflightManager:(id)manager;
- (NPKIDVRemoteDeviceSessionServiceDataSource)dataSource;
- (void)_addConnection:(id)connection;
- (void)_addServer:(id)server;
- (void)_removeServer:(id)server;
- (void)dealloc;
- (void)remoteDevicesSessionServer:(id)server provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion;
- (void)remoteDevicesSessionServer:(id)server remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion;
- (void)teardownCurrentRemoteDeviceSessions;
@end

@implementation NPKIDVRemoteDeviceSessionService

- (NPKIDVRemoteDeviceSessionService)initWithRemoteDeviceEventsCoordinator:(id)coordinator connectionCoordinator:(id)connectionCoordinator preflightManager:(id)manager
{
  v29 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  connectionCoordinatorCopy = connectionCoordinator;
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = NPKIDVRemoteDeviceSessionService;
  v12 = [(NPKIDVRemoteDeviceSessionService *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_remoteDeviceEventCoordinator, coordinator);
    objc_storeStrong(&v13->_remoteDeviceConnectionCoordinator, connectionCoordinator);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sessionServers = v13->_sessionServers;
    v13->_sessionServers = v14;

    objc_storeStrong(&v13->_preflightManager, manager);
    v16 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.NanoPassbook.IDVRemoteDeviceService.session.server"];
    [(NSXPCListener *)v16 setDelegate:v13];
    xpcListener = v13->_xpcListener;
    v13->_xpcListener = v16;
    v18 = v16;

    [(NSXPCListener *)v18 resume];
    v20 = pk_Payment_log(v19);
    LODWORD(xpcListener) = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (xpcListener)
    {
      v22 = pk_Payment_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v13;
        v27 = 2112;
        v28 = @"com.apple.NanoPassbook.IDVRemoteDeviceService.session.server";
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: New Remote Device service Listener created:%@ with serviceName:%@", buf, 0x16u);
      }
    }
  }

  return v13;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_sessionServers enumerateObjectsUsingBlock:&__block_literal_global_33];
  sessionServers = self->_sessionServers;
  self->_sessionServers = 0;

  v4.receiver = self;
  v4.super_class = NPKIDVRemoteDeviceSessionService;
  [(NPKIDVRemoteDeviceSessionService *)&v4 dealloc];
}

void __43__NPKIDVRemoteDeviceSessionService_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 connection];
  [v2 invalidate];

  [v3 clearConnectionReference];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  xpcListener = self->_xpcListener;
  v9 = pk_Payment_log(connectionCopy);
  v10 = v9;
  if (xpcListener == listenerCopy)
  {
    v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_Payment_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = connectionCopy;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested new connection:%@", &v22, 0xCu);
      }
    }

    v12 = [(NSXPCListener *)connectionCopy valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.session.client"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v16 = [v12 BOOLValue], (v16 & 1) != 0))
    {
      [(NPKIDVRemoteDeviceSessionService *)self _addConnection:connectionCopy];
      LOBYTE(self) = 1;
      goto LABEL_14;
    }

    v18 = pk_Payment_log(v16);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v21 = pk_Payment_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: client doesn't have required entitlement to establish the connection", &v22, 2u);
      }
    }

LABEL_5:
    LOBYTE(self) = 0;
LABEL_14:

    goto LABEL_15;
  }

  LODWORD(self) = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (self)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = listenerCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unknown requested connection from listener:%@", &v22, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_15:

  return self;
}

- (void)remoteDevicesSessionServer:(id)server provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(NPKIDVRemoteDeviceSessionService *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(NPKIDVRemoteDeviceSessionService *)self dataSource];
    [dataSource2 remoteDevicesSessionService:self provisionedCredentialCountsForType:type completion:completionCopy];
  }

  else
  {
    v11 = pk_Payment_log(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch provisioned credential count! No data source found.", v18, 2u);
      }
    }

    if (completionCopy)
    {
      v15 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"No data source found";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = [v15 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v16];

      completionCopy[2](completionCopy, 0, v17);
    }
  }
}

- (void)remoteDevicesSessionServer:(id)server remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(NPKIDVRemoteDeviceSessionService *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(NPKIDVRemoteDeviceSessionService *)self dataSource];
    [dataSource2 remoteDevicesSessionService:self remoteBiometricAuthenticationStatusForCredentialType:type completion:completionCopy];
  }

  else
  {
    v11 = pk_Payment_log(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch remote biometric authentication status! No data source found.", v18, 2u);
      }
    }

    if (completionCopy)
    {
      v15 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"No data source found";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = [v15 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v16];

      completionCopy[2](completionCopy, 0, v17);
    }
  }
}

- (void)teardownCurrentRemoteDeviceSessions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@, requested teardown all current remote device sessions", buf, 0xCu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(NSMutableSet *)self->_sessionServers copy];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NPKIDVRemoteDeviceSessionService *)self _removeServer:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[NPKIDVRemoteDeviceSessionServer alloc] initWithConnection:connectionCopy eventsCoordinator:self->_remoteDeviceEventCoordinator connectionCoordinator:self->_remoteDeviceConnectionCoordinator preflightManager:self->_preflightManager];
  [(NPKIDVRemoteDeviceSessionServer *)v5 setDataSource:self];
  v6 = NPKIDVRemoteDeviceServiceSessionServerProtocolInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:v5];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke;
  v16[3] = &unk_279945930;
  objc_copyWeak(&v18, &from);
  objc_copyWeak(&v19, &location);
  v7 = v5;
  v17 = v7;
  [connectionCopy setInvalidationHandler:v16];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke_25;
  v12 = &unk_279945930;
  objc_copyWeak(&v14, &from);
  objc_copyWeak(&v15, &location);
  v8 = v7;
  v13 = v8;
  [connectionCopy setInterruptionHandler:&v9];
  [(NPKIDVRemoteDeviceSessionService *)self _addServer:v8, v9, v10, v11, v12];
  [connectionCopy resume];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@ Connection invalidated:{%@, PID:%d}", &v8, 0x1Cu);
    }
  }

  [v3 _removeServer:*(a1 + 32)];
}

void __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke_25(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@ Connection interrupted:{%@, PID:%d}", &v8, 0x1Cu);
    }
  }

  [v3 _removeServer:*(a1 + 32)];
}

- (void)_addServer:(id)server
{
  v15 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v5 = pk_Payment_log([(NSMutableSet *)self->_sessionServers addObject:serverCopy]);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      connection = [serverCopy connection];
      connection2 = [serverCopy connection];
      v11 = 138412546;
      v12 = connection;
      v13 = 1024;
      processIdentifier = [connection2 processIdentifier];
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Added new connection:{%@, PID:%d}", &v11, 0x12u);
    }
  }
}

- (void)_removeServer:(id)server
{
  v15 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connection = [serverCopy connection];
  [connection invalidate];

  [serverCopy clearConnectionReference];
  v6 = pk_Payment_log([(NSMutableSet *)self->_sessionServers removeObject:serverCopy]);
  LODWORD(connection) = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (connection)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      connection2 = [serverCopy connection];
      connection3 = [serverCopy connection];
      v11 = 138412546;
      v12 = connection2;
      v13 = 1024;
      processIdentifier = [connection3 processIdentifier];
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Removed new connection:{%@, PID:%d}", &v11, 0x12u);
    }
  }
}

- (NPKIDVRemoteDeviceSessionServiceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end