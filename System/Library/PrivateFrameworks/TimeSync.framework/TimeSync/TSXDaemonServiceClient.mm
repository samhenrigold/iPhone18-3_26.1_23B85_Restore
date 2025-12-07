@interface TSXDaemonServiceClient
+ (id)sharedDaemonServiceClient;
- (BOOL)callMethodForDaemonClient:(unsigned int)client clientMethodSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)self0 error:(id *)self1;
- (BOOL)closeDaemonClient:(unsigned int)client error:(id *)error;
- (BOOL)isMSGServiceAvailable;
- (BOOL)removeMSGClock:(unsigned int)clock error:(id *)error;
- (TSXDaemonServiceClient)init;
- (id)exportedObject;
- (id)propertiesForRegistryEntryID:(unint64_t)d;
- (id)propertyForRegistryEntryID:(unint64_t)d key:(id)key;
- (unint64_t)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration error:(id *)error;
- (unint64_t)addMSGClockRef:(unsigned int)ref error:(id *)error;
- (unint64_t)getMSGClock:(unsigned int)clock error:(id *)error;
- (unint64_t)restoreMSGClockSession:(unsigned int)session withNominalSyncDuration:(id)duration refCnt:(unint64_t)cnt error:(id *)error;
- (unsigned)openDaemonClientWithRegistryEntryID:(unint64_t)d clientType:(unsigned int)type error:(id *)error;
- (unsigned)startMSGExternalSync:(id *)sync;
- (unsigned)stopMSGExternalSync:(unsigned int)sync;
- (void)dealloc;
- (void)interruptedConnection;
- (void)invalidatedConnection;
@end

@implementation TSXDaemonServiceClient

+ (id)sharedDaemonServiceClient
{
  if (sharedDaemonServiceClient_onceToken != -1)
  {
    +[TSXDaemonServiceClient sharedDaemonServiceClient];
  }

  os_unfair_lock_lock(&_sharedInstanceLock);
  v2 = _sharedInstance;
  if (!_sharedInstance)
  {
    v3 = objc_alloc_init(TSXDaemonServiceClient);
    v4 = _sharedInstance;
    _sharedInstance = v3;

    v2 = _sharedInstance;
  }

  v5 = v2;
  os_unfair_lock_unlock(&_sharedInstanceLock);

  return v5;
}

uint64_t __51__TSXDaemonServiceClient_sharedDaemonServiceClient__block_invoke()
{
  _sharedInstanceLock = 0;
  _gIORegSignpostLog = os_log_create("TimeSync", "iokit_get_property_proxy_client");

  return MEMORY[0x2821F96F8]();
}

- (TSXDaemonServiceClient)init
{
  v25.receiver = self;
  v25.super_class = TSXDaemonServiceClient;
  v2 = [(TSXDaemonServiceClient *)&v25 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:v5];

    v7 = dispatch_queue_create([v6 UTF8String], 0);
    v8 = _dispatchQueue_0;
    _dispatchQueue_0 = v7;

    v9 = objc_alloc(MEMORY[0x277CCAE80]);
    serviceName = [objc_opt_class() serviceName];
    v11 = [v9 initWithMachServiceName:? options:?];
    serverConnection = v2->_serverConnection;
    v2->_serverConnection = v11;

    v13 = MEMORY[0x277CCAE90];
    serverProtocol = [objc_opt_class() serverProtocol];
    v15 = [v13 interfaceWithProtocol:?];
    [(NSXPCConnection *)v2->_serverConnection setRemoteObjectInterface:?];

    v16 = MEMORY[0x277CCAE90];
    clientProtocol = [objc_opt_class() clientProtocol];
    v18 = [v16 interfaceWithProtocol:?];
    [(NSXPCConnection *)v2->_serverConnection setExportedInterface:?];

    exportedObject = [(TSXDaemonServiceClient *)v2 exportedObject];
    [(NSXPCConnection *)v2->_serverConnection setExportedObject:?];

    objc_initWeak(&location, v2);
    v22[1] = MEMORY[0x277D85DD0];
    v22[2] = 3221225472;
    v22[3] = __30__TSXDaemonServiceClient_init__block_invoke;
    v22[4] = &unk_279DBD6F0;
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v2->_serverConnection setInterruptionHandler:?];
    objc_copyWeak(v22, &location);
    [(NSXPCConnection *)v2->_serverConnection setInvalidationHandler:?];
    [(NSXPCConnection *)v2->_serverConnection resume];
    remoteObjectProxy = [(NSXPCConnection *)v2->_serverConnection remoteObjectProxy];
    [remoteObjectProxy openXPCConnection];

    objc_destroyWeak(v22);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__TSXDaemonServiceClient_init__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClient(%{public}@): Interruption Handler", &v6, 0xCu);
  }

  if (WeakRetained)
  {
    [WeakRetained interruptedConnection];
  }

  objc_autoreleasePoolPop(v2);
}

void __30__TSXDaemonServiceClient_init__block_invoke_92(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClient(%{public}@): Invalidation Handler", &v6, 0xCu);
  }

  if (WeakRetained)
  {
    WeakRetained[9] = 1;
    [WeakRetained invalidatedConnection];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)interruptedConnection
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TSXDaemonServiceClient_interruptedConnection__block_invoke;
  block[3] = &unk_279DBD538;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__TSXDaemonServiceClient_interruptedConnection__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) serverConnection];
  v4 = [v3 remoteObjectProxy];
  [v4 openXPCConnection];

  objc_autoreleasePoolPop(v2);
}

- (void)invalidatedConnection
{
  os_unfair_lock_lock(&_sharedInstanceLock);
  v3 = _sharedInstance;
  if (_sharedInstance == self)
  {
    _sharedInstance = 0;
  }

  os_unfair_lock_unlock(&_sharedInstanceLock);
}

- (id)exportedObject
{
  v2 = objc_alloc_init(TSXDaemonServiceClientExported);
  [(TSXDaemonServiceClientExported *)v2 setObject:?];

  return v2;
}

- (unsigned)openDaemonClientWithRegistryEntryID:(unint64_t)d clientType:(unsigned int)type error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v8 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  [v8 openDaemonClientWithRegistryEntryID:? clientType:? reply:?];
  if (error)
  {
    v9 = v16[5];
    if (v9)
    {
      v10 = MEMORY[0x277CCA9B8];
      domain = [v9 domain];
      [v16[5] code];
      userInfo = [v16[5] userInfo];
      *error = [v10 errorWithDomain:? code:? userInfo:?];
    }
  }

  v13 = *(v22 + 6);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v13;
}

void __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke_cold_1(v4);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v5);
}

void __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke_95(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  objc_autoreleasePoolPop(v6);
}

- (BOOL)closeDaemonClient:(unsigned int)client error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v7 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  [v7 closeDaemonClient:? reply:?];
  if (error)
  {
    v8 = v15[5];
    if (v8)
    {
      v9 = MEMORY[0x277CCA9B8];
      domain = [v8 domain];
      [v15[5] code];
      userInfo = [v15[5] userInfo];
      *error = [v9 errorWithDomain:? code:? userInfo:?];
    }
  }

  v12 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v12;
}

void __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke_cold_1(v4);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v5);
}

void __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke_98(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  objc_autoreleasePoolPop(v6);
}

- (BOOL)callMethodForDaemonClient:(unsigned int)client clientMethodSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)self0 error:(id *)self1
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  __memmove_chk();
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v16 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v17 = 0;
  if (input && size)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
  }

  [v16 callMethodForDaemonClient:? clientMethodSelector:? scalarInputs:? structInput:? scalarOutputCount:? reply:?];
  if (error)
  {
    v18 = v25[5];
    if (v18)
    {
      v19 = MEMORY[0x277CCA9B8];
      domain = [v18 domain];
      [v25[5] code];
      userInfo = [v25[5] userInfo];
      *error = [v19 errorWithDomain:? code:? userInfo:?];
    }
  }

  v22 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  return v22;
}

void __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke_cold_1(v4);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v5);
}

void __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke_101(void *a1, char a2, unsigned int *a3, void *a4)
{
  v13 = a4;
  v8 = objc_autoreleasePoolPush();
  *(*(a1[4] + 8) + 24) = a2;
  if (v13)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
  }

  else if (a3)
  {
    v9 = a1[6];
    if (v9)
    {
      v10 = a1[7];
      if (v10)
      {
        v11 = *v10;
        v12 = a3[32];
        if (v11 >= v12)
        {
          memmove(v9, a3, 8 * v12);
          *a1[7] = a3[32];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (id)propertiesForRegistryEntryID:(unint64_t)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v5 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  [v5 propertiesForRegistryEntryID:? signpostID:? reply:?];
  v6 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v6;
}

void __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke_105(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v4);
}

- (id)propertyForRegistryEntryID:(unint64_t)d key:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v8 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  [v8 propertyForRegistryEntryID:? signpostID:? key:? reply:?];
  v9 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v9;
}

void __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke_109(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v4);
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClient(%{public}@): dealloc", buf, 0xCu);
  }

  self->_invalidated = 1;
  [(NSXPCConnection *)self->_serverConnection invalidate];
  v5.receiver = self;
  v5.super_class = TSXDaemonServiceClient;
  [(TSXDaemonServiceClient *)&v5 dealloc];
}

- (BOOL)isMSGServiceAvailable
{
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v4 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  [v4 isMSGServiceAvailable:?];
  LOBYTE(serverConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return serverConnection;
}

void __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke_114(uint64_t a1, char a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;

  objc_autoreleasePoolPop(v4);
}

- (unsigned)startMSGExternalSync:(id *)sync
{
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v5 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -536870212;
  [v5 startMSGExternalSync:? reply:?];
  v6 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return v6;
}

void __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke_118(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;

  objc_autoreleasePoolPop(v4);
}

- (unsigned)stopMSGExternalSync:(unsigned int)sync
{
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v5 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -536870212;
  [v5 stopMSGExternalSync:? reply:?];
  v6 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return v6;
}

void __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke_122(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;

  objc_autoreleasePoolPop(v4);
}

- (unint64_t)getMSGClock:(unsigned int)clock error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke;
  v17 = &unk_279DBE080;
  v18 = &v19;
  v7 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  [v7 getMSGClock:? reply:?];
  if (error)
  {
    *error = v20[5];
  }

  v8 = v11[3];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v19, 8);
  return v8;
}

void __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke_123(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

- (unint64_t)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke;
  v18 = &unk_279DBE080;
  v19 = &v20;
  v8 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  [v8 addMSGClock:? withNominalSyncDuration:? reply:?];
  if (error)
  {
    *error = v21[5];
  }

  v9 = v12[3];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v20, 8);
  return v9;
}

void __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke_125(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

- (unint64_t)addMSGClockRef:(unsigned int)ref error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke;
  v17 = &unk_279DBE080;
  v18 = &v19;
  v7 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  [v7 addMSGClockRef:? reply:?];
  if (error)
  {
    *error = v20[5];
  }

  v8 = v11[3];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v19, 8);
  return v8;
}

void __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke_126(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

- (BOOL)removeMSGClock:(unsigned int)clock error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke;
  v17 = &unk_279DBE080;
  v18 = &v19;
  v7 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  [v7 removeMSGClock:? reply:?];
  if (error)
  {
    *error = v20[5];
  }

  v8 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v19, 8);
  return v8;
}

void __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke_127(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

- (unint64_t)restoreMSGClockSession:(unsigned int)session withNominalSyncDuration:(id)duration refCnt:(unint64_t)cnt error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke;
  v19 = &unk_279DBE080;
  v20 = &v21;
  v9 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:?];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  [v9 restoreMSGClockSession:? nominalSyncDuration:? refCnt:? reply:?];
  if (error)
  {
    *error = v22[5];
  }

  v10 = v13[3];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v21, 8);
  return v10;
}

void __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

void __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

void __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  v7 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, v7);
}

@end