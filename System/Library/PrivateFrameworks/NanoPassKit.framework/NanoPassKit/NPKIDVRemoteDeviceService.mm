@interface NPKIDVRemoteDeviceService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NPKIDVRemoteDeviceService)initWithServiceName:(id)name delegate:(id)delegate callbackQueue:(id)queue;
- (NPKIDVRemoteDeviceServiceDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_addServer:(id)server;
- (void)_removeServer:(id)server;
- (void)dealloc;
- (void)identityRemoteDeviceServiceServer:(id)server didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context;
- (void)setDelegate:(id)delegate;
@end

@implementation NPKIDVRemoteDeviceService

- (NPKIDVRemoteDeviceService)initWithServiceName:(id)name delegate:(id)delegate callbackQueue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = NPKIDVRemoteDeviceService;
  v11 = [(NPKIDVRemoteDeviceService *)&v24 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_delegateCallBackQueue, queue);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    serviceServers = v11->_serviceServers;
    v11->_serviceServers = v14;

    v16 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:nameCopy];
    [(NSXPCListener *)v16 setDelegate:v11];
    xpcListener = v11->_xpcListener;
    v11->_xpcListener = v16;
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
        v26 = v11;
        v27 = 2112;
        v28 = nameCopy;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: New Remote Device service Listener created:%@ with serviceName:%@", buf, 0x16u);
      }
    }
  }

  return v11;
}

- (NPKIDVRemoteDeviceServiceDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  delegateCallBackQueue = self->_delegateCallBackQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__NPKIDVRemoteDeviceService_delegate__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(delegateCallBackQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__NPKIDVRemoteDeviceService_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateCallBackQueue = self->_delegateCallBackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NPKIDVRemoteDeviceService_setDelegate___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateCallBackQueue, v7);
}

- (void)dealloc
{
  [(NSMutableSet *)self->_serviceServers enumerateObjectsUsingBlock:&__block_literal_global_2];
  serviceServers = self->_serviceServers;
  self->_serviceServers = 0;

  v4.receiver = self;
  v4.super_class = NPKIDVRemoteDeviceService;
  [(NPKIDVRemoteDeviceService *)&v4 dealloc];
}

void __36__NPKIDVRemoteDeviceService_dealloc__block_invoke(uint64_t a1, void *a2)
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

    v12 = [(NSXPCListener *)connectionCopy valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.client"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v16 = [v12 BOOLValue], (v16 & 1) != 0))
    {
      [(NPKIDVRemoteDeviceService *)self _addConnection:connectionCopy];
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

- (void)_addConnection:(id)connection
{
  v30 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [[NPKIDVRemoteDeviceServiceServer alloc] initWithConnection:connectionCopy delegate:self];
  v6 = NPKIDVRemoteDeviceServiceServerProtocolInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:v5];
  objc_initWeak(&location, connectionCopy);
  objc_initWeak(&from, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__NPKIDVRemoteDeviceService__addConnection___block_invoke;
  v20[3] = &unk_279945930;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v7 = v5;
  v21 = v7;
  [connectionCopy setInvalidationHandler:v20];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __44__NPKIDVRemoteDeviceService__addConnection___block_invoke_20;
  v16 = &unk_279945930;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v8 = v7;
  v17 = v8;
  [connectionCopy setInterruptionHandler:&v13];
  [(NPKIDVRemoteDeviceService *)self _addServer:v8, v13, v14, v15, v16];
  v9 = pk_Payment_log([connectionCopy resume]);
  LODWORD(v6) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 138412546;
      v27 = connectionCopy;
      v28 = 1024;
      v29 = processIdentifier;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Added new connection:{%@, PID:%d}", buf, 0x12u);
    }
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __44__NPKIDVRemoteDeviceService__addConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = pk_Payment_log([v3 _removeServer:*(a1 + 32)]);
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
}

void __44__NPKIDVRemoteDeviceService__addConnection___block_invoke_20(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = pk_Payment_log([v3 _removeServer:*(a1 + 32)]);
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
}

- (void)_addServer:(id)server
{
  if (server)
  {
    [(NSMutableSet *)self->_serviceServers addObject:?];
  }
}

- (void)_removeServer:(id)server
{
  serverCopy = server;
  connection = [serverCopy connection];
  [connection invalidate];

  [serverCopy clearConnectionReference];
  [(NSMutableSet *)self->_serviceServers removeObject:serverCopy];
}

- (void)identityRemoteDeviceServiceServer:(id)server didReceiveEvent:(unint64_t)event fromRemoteDeviceWithID:(id)d eventContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  delegateCallBackQueue = self->_delegateCallBackQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115__NPKIDVRemoteDeviceService_identityRemoteDeviceServiceServer_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke;
  v14[3] = &unk_279945958;
  v14[4] = self;
  v15 = dCopy;
  v16 = contextCopy;
  eventCopy = event;
  v12 = contextCopy;
  v13 = dCopy;
  dispatch_async(delegateCallBackQueue, v14);
}

void __115__NPKIDVRemoteDeviceService_identityRemoteDeviceServiceServer_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 32));
    [v4 identityRemoteDeviceService:a1[4] didReceiveEvent:a1[7] fromRemoteDeviceWithID:a1[5] eventContext:a1[6]];

    v6 = pk_Payment_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_loadWeakRetained((a1[4] + 32));
        v11 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a1[7]);
        v12 = a1[5];
        v24 = 138412802;
        v25 = v10;
        v26 = 2112;
        v27 = v11;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did notify delegate:%@ received event: %@ from remote Device with ID:%@ with context", &v24, 0x20u);
      }
    }
  }

  v13 = objc_loadWeakRetained((a1[4] + 32));
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained((a1[4] + 32));
    [v15 identityRemoteDeviceService:a1[4] didReceiveEvent:a1[7] fromRemoteDeviceWithID:a1[5]];

    v17 = pk_Payment_log(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_Payment_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_loadWeakRetained((a1[4] + 32));
        v22 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a1[7]);
        v23 = a1[5];
        v24 = 138412802;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did notify delegate:%@ received event: %@ from remote Device with ID:%@", &v24, 0x20u);
      }
    }
  }
}

@end