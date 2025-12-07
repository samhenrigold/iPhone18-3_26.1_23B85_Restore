@interface AXUIClientConnection
+ (id)sharedClientConnection;
- (AXUIClientConnection)init;
- (BSServiceConnectionClient)serviceConnection;
- (id)_clientWithIdentifier:(id)identifier;
- (void)_broadcastConnectedStateChange;
- (void)_initializeServiceConnection;
- (void)_processXPCReply:(id)reply context:(id)context;
- (void)cleanUp;
- (void)dealloc;
- (void)performLaunchAngelQueuedTasks;
- (void)performLaunchAngelTask:(id)task;
- (void)registerClient:(id)client withIdentifier:(id)identifier;
- (void)registerConnectionStateObserver:(id)observer;
- (void)sendBoardServiceMessage:(id)message callback:(id)callback;
- (void)setServiceConnection:(id)connection;
- (void)tearDownConnection;
- (void)unregisterClient:(id)client withIdentifier:(id)identifier;
- (void)unregisterConnectionStateObserver:(id)observer;
@end

@implementation AXUIClientConnection

+ (id)sharedClientConnection
{
  if (sharedClientConnection__AXUIClientSharedConnectionOnceToken != -1)
  {
    +[AXUIClientConnection sharedClientConnection];
  }

  v3 = sharedClientConnection__AXUIClientSharedConnection;

  return v3;
}

uint64_t __46__AXUIClientConnection_sharedClientConnection__block_invoke()
{
  sharedClientConnection__AXUIClientSharedConnection = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXUIClientConnection)init
{
  v14.receiver = self;
  v14.super_class = AXUIClientConnection;
  v2 = [(AXUIClientConnection *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:v3 description:@"ConnectionAccessQueue" appendUUIDToLabel:0];
    v5 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:v3 description:@"RegisteredClientsAccessQueue" appendUUIDToLabel:0];
    v2->_serverConnectionLock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("accessibilityUIServer.handler", v6);
    serviceConnectionQueue = v2->_serviceConnectionQueue;
    v2->_serviceConnectionQueue = v7;

    v9 = objc_opt_new();
    serviceRequests = v2->_serviceRequests;
    v2->_serviceRequests = v9;

    if (v4 && v5)
    {
      [(AXUIClientConnection *)v2 setConnectionAccessQueue:v4];
      [(AXUIClientConnection *)v2 setRegisteredClientsAccessQueue:v5];
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [(AXUIClientConnection *)v2 setStateObservers:weakObjectsHashTable];

      p_super = dispatch_queue_create("com.apple.AXUIClientConnection.stateObservers", 0);
      [(AXUIClientConnection *)v2 setStateObserverQueue:p_super];
    }

    else
    {
      p_super = &v2->super;
      v2 = 0;
    }
  }

  return v2;
}

- (BSServiceConnectionClient)serviceConnection
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __41__AXUIClientConnection_serviceConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    [v2 _initializeServiceConnection];
    v3 = *(*(a1 + 32) + 64);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_initializeServiceConnection
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = AXUIServiceManagerLaunchAngelInterface();
  v4 = MEMORY[0x277CF3288];
  identifier = [v3 identifier];
  v6 = [v4 endpointForMachName:@"com.apple.AccessibilityUIServer" service:identifier instance:0];

  v7 = AXLogIPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_23DBC7000, v7, OS_LOG_TYPE_DEFAULT, "Init Service connection: %@", buf, 0xCu);
  }

  if (v6)
  {
    objc_initWeak(buf, self);
    v8 = [MEMORY[0x277CF3280] connectionWithEndpoint:v6];
    serviceConnection = self->_serviceConnection;
    self->_serviceConnection = v8;

    v10 = self->_serviceConnection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke;
    v12[3] = &unk_278BF23A0;
    v12[4] = self;
    v13 = v3;
    objc_copyWeak(&v14, buf);
    [(BSServiceConnectionClient *)v10 configureConnection:v12];
    [(AXUIClientConnection *)self setConnectionState:0];
    [(BSServiceConnectionClient *)self->_serviceConnection activate];
    objc_destroyWeak(&v14);

    objc_destroyWeak(buf);
  }

  else
  {
    v11 = AXLogIPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXUIClientConnection _initializeServiceConnection];
    }
  }
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogIPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_cold_1(a1, v4);
  }

  v5 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v5];

  [v3 setInterface:*(a1 + 40)];
  [v3 setTargetQueue:*(*(a1 + 32) + 72)];
  [v3 setInterfaceTarget:*(a1 + 32)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_298;
  v10[3] = &unk_278BF2378;
  objc_copyWeak(&v11, (a1 + 48));
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_301;
  v8[3] = &unk_278BF2378;
  objc_copyWeak(&v9, (a1 + 48));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303;
  v6[3] = &unk_278BF2378;
  objc_copyWeak(&v7, (a1 + 48));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
}

- (void)setServiceConnection:(id)connection
{
  connectionCopy = connection;
  v3 = connectionCopy;
  AX_PERFORM_WITH_LOCK();
}

void __45__AXUIClientConnection_setServiceConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 != *(v2 + 64))
  {
    v4 = AXLogIPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 40) + 64);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_INFO, "Invalidating old connection: %@", &v6, 0xCu);
    }

    [*(*(a1 + 40) + 64) invalidate];
    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  objc_storeStrong((v2 + 64), v1);
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 connectionAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2;
  v7[3] = &unk_278BF2350;
  v7[4] = v4;
  v6 = v3;
  v8 = v6;
  v9 = &v10;
  [v5 performSynchronousWritingBlock:v7];

  if (*(v11 + 24) == 1)
  {
    [v4 performLaunchAngelQueuedTasks];
  }

  _Block_object_dispose(&v10, 8);
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) isEqual:*(v2 + 64)];
    v4 = AXLogIPC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 40);
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "Connection activated to %@", &v10, 0xCu);
      }

      [*(a1 + 32) setConnectionState:2];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (v5)
      {
        v7 = *(a1 + 40);
        v8 = *(*(a1 + 32) + 64);
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "Got activation for connection we were not tracking, ignoring. Connection: %@, actively tracked connection: %@", &v10, 0x16u);
      }
    }
  }

  v9 = AXLogIPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_cold_1();
  }
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained connectionAccessQueue];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302;
  v10 = &unk_278BF2290;
  v11 = WeakRetained;
  v12 = v3;
  v6 = v3;
  [v5 performSynchronousWritingBlock:&v7];

  [v6 activate];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302(char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 4);
  if (v2)
  {
    if ([*(a1 + 5) isEqual:*(v2 + 64)])
    {
      [*v3 setConnectionState:0];
      v4 = AXLogIPC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 5);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "Connection interrupted to %@", &v10, 0xCu);
      }

      [*v3 _broadcastConnectedStateChange];
    }

    else
    {
      v6 = AXLogIPC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 5);
        v8 = *(*(a1 + 4) + 64);
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_23DBC7000, v6, OS_LOG_TYPE_DEFAULT, "Got interruption for connection we were not tracking, ignoring. Connection: %@, actively tracked connection: %@", &v10, 0x16u);
      }
    }
  }

  v9 = AXLogIPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302_cold_1();
  }
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = AXLogIPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303_cold_1(v3, WeakRetained, v5);
  }

  else
  {

    if (!WeakRetained)
    {
      goto LABEL_10;
    }
  }

  v6 = [v3 isEqual:WeakRetained[8]];
  v7 = AXLogIPC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_23DBC7000, v7, OS_LOG_TYPE_DEFAULT, "Connection Invalidated to %@", &v10, 0xCu);
    }

    [WeakRetained tearDownConnection];
    [WeakRetained performLaunchAngelQueuedTasks];
  }

  else
  {
    if (v8)
    {
      v9 = WeakRetained[8];
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_23DBC7000, v7, OS_LOG_TYPE_DEFAULT, "Got invalidation for connection we were not tracking, ignoring. Connection: %@, actively tracked connection: %@", &v10, 0x16u);
    }
  }

LABEL_10:
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = AXUIClientConnection;
  [(AXUIClientConnection *)&v3 dealloc];
}

- (void)performLaunchAngelTask:(id)task
{
  taskCopy = task;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connectionAccessQueue = [(AXUIClientConnection *)self connectionAccessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__AXUIClientConnection_performLaunchAngelTask___block_invoke;
  v8[3] = &unk_278BF23C8;
  v8[4] = self;
  v10 = &v11;
  v6 = taskCopy;
  v9 = v6;
  [connectionAccessQueue performSynchronousWritingBlock:v8];

  if (v12[5])
  {
    v6[2](v6);
    v7 = AXLogIPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AXUIClientConnection performLaunchAngelTask:];
    }
  }

  _Block_object_dispose(&v11, 8);
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_1(a1);
  }

  v3 = (a1 + 32);
  v4 = [*(a1 + 32) connectionState];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 connectionState];
    v7 = *v3;
    if (v6 == 2)
    {
      v8 = [v7 serviceConnection];
      v9 = [v8 remoteTarget];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = AXLogIPC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_3();
      }
    }

    else
    {
      v19 = [v7 serviceRequests];
      v21 = *(a1 + 40);
      v20 = (a1 + 40);
      v22 = MEMORY[0x23EEF82A0](v21);
      [v19 axSafelyAddObject:v22];

      v12 = AXLogIPC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_2(v20, v3, v12);
      }
    }
  }

  else
  {
    v13 = [v5 serviceConnection];
    v14 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v23[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v16 = [v13 remoteTargetWithLaunchingAssertionAttributes:v15];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(a1 + 32) setConnectionState:1];
    v12 = AXLogIPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_4();
    }
  }
}

- (void)performLaunchAngelQueuedTasks
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_23DBC7000, a2, OS_LOG_TYPE_DEBUG, "performLaunchAngelQueuedTasks: %@", &v3, 0xCu);
}

void __53__AXUIClientConnection_performLaunchAngelQueuedTasks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceRequests];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) serviceRequests];
  [v6 removeAllObjects];
}

- (void)sendBoardServiceMessage:(id)message callback:(id)callback
{
  callbackCopy = callback;
  messageCopy = message;
  v11 = objc_opt_new();
  [v11 setXpc_handler:callbackCopy];

  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  [v11 setProcessHandle:remoteProcess];

  currentContext2 = [MEMORY[0x277CF3280] currentContext];
  [v11 setServiceConnection:currentContext2];

  [(AXUIClientConnection *)self _processXPCReply:messageCopy context:v11];
}

- (void)tearDownConnection
{
  v3 = AXLogAssertions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23DBC7000, v3, OS_LOG_TYPE_DEFAULT, "ClientConnection teared down xpc connection", buf, 2u);
  }

  connectionAccessQueue = [(AXUIClientConnection *)self connectionAccessQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__AXUIClientConnection_tearDownConnection__block_invoke;
  v5[3] = &unk_278BF22E0;
  v5[4] = self;
  [connectionAccessQueue performSynchronousWritingBlock:v5];
}

uint64_t __42__AXUIClientConnection_tearDownConnection__block_invoke(uint64_t a1)
{
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__AXUIClientConnection_tearDownConnection__block_invoke_cold_1(a1);
  }

  [*(a1 + 32) setServiceConnection:0];
  [*(a1 + 32) setConnectionState:0];
  return [*(a1 + 32) _broadcastConnectedStateChange];
}

- (void)_processXPCReply:(id)reply context:(id)context
{
  v58 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  contextCopy = context;
  v8 = MEMORY[0x23EEF8420](replyCopy);
  if (v8 != MEMORY[0x277D86468])
  {
    if (v8 == MEMORY[0x277D86480])
    {
      v20 = MEMORY[0x277D863F8];
      if (replyCopy == MEMORY[0x277D863F8])
      {
        v23 = AXLogUI();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(AXUIClientConnection *)v23 _processXPCReply:v25 context:v26, v27, v28, v29, v30, v31];
        }
      }

      else
      {
        v21 = replyCopy == MEMORY[0x277D863F0];
        v22 = AXLogUI();
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v34 = *MEMORY[0x277CE77B0];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v34;
            _os_log_impl(&dword_23DBC7000, v23, OS_LOG_TYPE_INFO, "Connection to %{public}@ was interrupted.", &buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [AXUIClientConnection _processXPCReply:replyCopy context:v23];
        }
      }

      v35 = AXLogIPC();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [(AXUIClientConnection *)replyCopy == v20 _processXPCReply:replyCopy context:v35];
      }

      objc_initWeak(&buf, self);
      connectionAccessQueue = [(AXUIClientConnection *)self connectionAccessQueue];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke_344;
      v45[3] = &unk_278BF2468;
      objc_copyWeak(&v46, &buf);
      [connectionAccessQueue performSynchronousWritingBlock:v45];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&buf);
    }

    else
    {
      if (replyCopy)
      {
        v9 = MEMORY[0x23EEF83B0](replyCopy);
      }

      else
      {
        v9 = 0;
      }

      v24 = AXLogUI();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [AXUIClientConnection _processXPCReply:context:];
      }

      if (v9)
      {
        free(v9);
      }
    }

    goto LABEL_60;
  }

  v10 = replyCopy;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke;
  v50[3] = &unk_278BF23F0;
  v51 = contextCopy;
  v11 = v10;
  v52 = v11;
  v12 = MEMORY[0x23EEF82A0](v50);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy_;
  v56 = __Block_byref_object_dispose_;
  v57 = 0;
  string = xpc_dictionary_get_string(v11, *MEMORY[0x277CE77B8]);
  if (!string || (v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string]) == 0)
  {
    if (v11)
    {
      v14 = MEMORY[0x23EEF83B0](v11);
    }

    else
    {
      v14 = 0;
    }

    v32 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:{@"Couldn't find client identifier in incoming message: %s.", v14}];
    v33 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v32;

    if (v14)
    {
      free(v14);
      v14 = 0;
    }

    goto LABEL_57;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [(AXUIClientConnection *)self _clientWithIdentifier:v14];
  objc_autoreleasePoolPop(v15);
  if (v16)
  {
    uint64 = xpc_dictionary_get_uint64(v11, *MEMORY[0x277CE77C8]);
    if (uint64)
    {
      delegate = [v16 delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([delegate userInterfaceClient:v16 messageFromServerForWithIdentifierShouldBeProcessedAsynchronously:uint64])
      {
        v19 = 1;
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v38 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:{@"Delegate of client %@ cannot process any messages: %@", v16, delegate}];
          v39 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v38;
LABEL_55:

          goto LABEL_56;
        }

        v19 = 0;
      }

      if (xpc_dictionary_get_BOOL(v11, *MEMORY[0x277CE77D0]))
      {
        v44 = 0;
      }

      else
      {
        v40 = *(&buf + 1);
        v49 = *(*(&buf + 1) + 40);
        v44 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:v11 error:&v49];
        objc_storeStrong((v40 + 40), v49);
      }

      if (!*(*(&buf + 1) + 40))
      {
        if (v19)
        {
          v41 = v48;
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke_2;
          v48[3] = &unk_278BF2418;
          v48[4] = delegate;
          v48[5] = v16;
          v48[6] = v44;
          v48[8] = uint64;
        }

        else
        {
          v41 = v47;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke_3;
          v47[3] = &unk_278BF2440;
          v47[4] = delegate;
          v47[5] = v16;
          v47[6] = v44;
          v47[8] = &buf;
          v47[9] = uint64;
        }

        v41[7] = v12;
        v43 = MEMORY[0x23EEF82A0](v41);

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate userInterfaceClient:v16 accessQueueForProcessingMessageWithIdentifier:uint64], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate userInterfaceClient:v16 messageWithIdentifierRequiresWritingBlock:uint64])
          {
            [v42 performAsynchronousReadingBlock:v43];
          }

          else
          {
            [v42 performAsynchronousWritingBlock:v43];
          }
        }

        else
        {
          v43[2]();
          v42 = 0;
        }
      }

      v39 = v44;
      goto LABEL_55;
    }

    v37 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:@"AXUIClientConnection: Got invalid value for message identifier in client connection event handler: 0."];
  }

  else
  {
    v37 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:{@"Couldn't find client for identifier: %@.", v14}];
  }

  delegate = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v37;
LABEL_56:

LABEL_57:
  if (*(*(&buf + 1) + 40))
  {
    v12[2](v12, 0);
  }

  _Block_object_dispose(&buf, 8);
LABEL_60:
}

void __49__AXUIClientConnection__processXPCReply_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) connection];

  if (v6)
  {
    [MEMORY[0x277CE7790] sendReply:v11 withError:v5 andOriginalXPCMessage:*(a1 + 40) usingConnection:*(a1 + 32) customDataAddingBlock:0];
  }

  else
  {
    if (v11)
    {
      v7 = _CFXPCCreateXPCMessageWithCFObject();
    }

    else
    {
      v8 = [MEMORY[0x277CBEAC0] dictionary];
      v7 = _CFXPCCreateXPCMessageWithCFObject();
    }

    v9 = [*(a1 + 32) xpc_handler];

    if (v9)
    {
      v10 = [*(a1 + 32) xpc_handler];
      (v10)[2](v10, v7, v5);
    }
  }
}

void __49__AXUIClientConnection__processXPCReply_context___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 userInterfaceClient:v3 processMessageFromServer:v4 withIdentifier:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  (*(a1[7] + 16))();
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void __49__AXUIClientConnection__processXPCReply_context___block_invoke_344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionState:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _broadcastConnectedStateChange];
}

- (void)registerClient:(id)client withIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  v8 = AXLogAssertions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_23DBC7000, v8, OS_LOG_TYPE_DEFAULT, "ClientConnection registered client %@", buf, 0xCu);
  }

  registeredClientsAccessQueue = [(AXUIClientConnection *)self registeredClientsAccessQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__AXUIClientConnection_registerClient_withIdentifier___block_invoke;
  v12[3] = &unk_278BF2490;
  v12[4] = self;
  v13 = clientCopy;
  v14 = identifierCopy;
  v10 = identifierCopy;
  v11 = clientCopy;
  [registeredClientsAccessQueue performSynchronousWritingBlock:v12];
}

void __54__AXUIClientConnection_registerClient_withIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) registeredClients];
  if (!v3)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setRegisteredClients:?];
  }

  v2 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 40)];
  [v3 setObject:v2 forKey:*(a1 + 48)];
}

- (void)unregisterClient:(id)client withIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = AXLogAssertions();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = identifierCopy;
    _os_log_impl(&dword_23DBC7000, v6, OS_LOG_TYPE_DEFAULT, "ClientConnection unregistered client %@", buf, 0xCu);
  }

  registeredClientsAccessQueue = [(AXUIClientConnection *)self registeredClientsAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__AXUIClientConnection_unregisterClient_withIdentifier___block_invoke;
  v9[3] = &unk_278BF2290;
  v9[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  [registeredClientsAccessQueue performSynchronousWritingBlock:v9];
}

void __56__AXUIClientConnection_unregisterClient_withIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredClients];
  [v2 removeObjectForKey:*(a1 + 40)];
  if (![v2 count])
  {
    [*(a1 + 32) setRegisteredClients:0];
  }
}

- (id)_clientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  registeredClientsAccessQueue = [(AXUIClientConnection *)self registeredClientsAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__AXUIClientConnection__clientWithIdentifier___block_invoke;
  v9[3] = &unk_278BF24B8;
  v9[4] = self;
  v11 = &v12;
  v6 = identifierCopy;
  v10 = v6;
  [registeredClientsAccessQueue performSynchronousWritingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__AXUIClientConnection__clientWithIdentifier___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) registeredClients];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = [v2 nonretainedObjectValue];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_broadcastConnectedStateChange
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AXUIClientConnection__broadcastConnectedStateChange__block_invoke;
  block[3] = &unk_278BF22B8;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(stateObserverQueue, block);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v14[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) clientConnection:self didChangeConnectedState:{-[AXUIClientConnection isConnected](self, "isConnected", v8)}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v13, 8);
}

void __54__AXUIClientConnection__broadcastConnectedStateChange__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) stateObservers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)registerConnectionStateObserver:(id)observer
{
  observerCopy = observer;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__AXUIClientConnection_registerConnectionStateObserver___block_invoke;
  v7[3] = &unk_278BF2290;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(stateObserverQueue, v7);
}

void __56__AXUIClientConnection_registerConnectionStateObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateObservers];
  [v2 addObject:*(a1 + 40)];
}

- (void)unregisterConnectionStateObserver:(id)observer
{
  observerCopy = observer;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__AXUIClientConnection_unregisterConnectionStateObserver___block_invoke;
  v7[3] = &unk_278BF2290;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(stateObserverQueue, v7);
}

void __58__AXUIClientConnection_unregisterConnectionStateObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateObservers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)cleanUp
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__AXUIClientConnection_cleanUp__block_invoke;
  v6[3] = &unk_278BF2328;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateObserverQueue, v6);

  v4 = AXLogAssertions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v8 + 24);
    *buf = 67109120;
    v12 = v5;
    _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "ClientConnection cleanup, no clients: %d", buf, 8u);
  }

  if (*(v8 + 24) == 1)
  {
    [(AXUIClientConnection *)self tearDownConnection];
  }

  _Block_object_dispose(&v7, 8);
}

void __31__AXUIClientConnection_cleanUp__block_invoke(uint64_t a1)
{
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__AXUIClientConnection_cleanUp__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) stateObservers];
  *(*(*(a1 + 40) + 8) + 24) = [v3 count] == 0;
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 64);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_23DBC7000, a2, OS_LOG_TYPE_DEBUG, "Configure connection %@", &v3, 0xCu);
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  v0 = MEMORY[0x277CCABB0];
  [*v1 connectionState];
  [OUTLINED_FUNCTION_8() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302_cold_1()
{
  OUTLINED_FUNCTION_1();
  v0 = MEMORY[0x277CCABB0];
  [*v1 connectionState];
  [OUTLINED_FUNCTION_8() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_23DBC7000, v5, OS_LOG_TYPE_DEBUG, "Connection Invalidated\nconnection: %@\nself.connection: %@", v6, 0x16u);
}

- (void)performLaunchAngelTask:.cold.1()
{
  v0 = MEMORY[0x23EEF82A0]();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "connectionState")}];
  v3 = [*(a1 + 32) serviceConnection];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_2(void *a1, id *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x23EEF82A0](*a1);
  v6 = [*a2 serviceRequests];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*a2, "connectionState")}];
  v8 = [*a2 serviceConnection];
  v9 = 138413058;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  _os_log_debug_impl(&dword_23DBC7000, a3, OS_LOG_TYPE_DEBUG, "Added block: %@ to queue: %@, connectionState: %@ connection: %@", &v9, 0x2Au);
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  [*v1 connectionState];
  v2 = [OUTLINED_FUNCTION_8() numberWithInteger:?];
  [*v0 serviceConnection];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1();
  [*v1 connectionState];
  v2 = [OUTLINED_FUNCTION_8() numberWithInteger:?];
  [*v0 serviceConnection];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __42__AXUIClientConnection_tearDownConnection__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "connectionState")}];
  v3 = [*(a1 + 32) serviceConnection];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_processXPCReply:(void *)a1 context:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE77B0];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v5 = 138543618;
  v6 = v3;
  v7 = 2082;
  v8 = string;
  _os_log_error_impl(&dword_23DBC7000, a2, OS_LOG_TYPE_ERROR, "Unexpected error connecting to %{public}@: %{public}s", &v5, 0x16u);
}

- (void)_processXPCReply:(uint64_t)a3 context:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *MEMORY[0x277CE77B0];
  OUTLINED_FUNCTION_6(&dword_23DBC7000, a1, a3, "Connection to %{public}@ went invalid.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_processXPCReply:(os_log_t)log context:.cold.4(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 == MEMORY[0x277D863F0];
  _os_log_debug_impl(&dword_23DBC7000, log, OS_LOG_TYPE_DEBUG, "XPC Error Invalid: %d Interrupted: %d", v3, 0xEu);
}

void __31__AXUIClientConnection_cleanUp__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) stateObservers];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end