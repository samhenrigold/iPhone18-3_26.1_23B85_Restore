@interface _TSF_IODConnection
+ (void)daemonClientRefresh;
+ (void)dispatchNotificationForClientID:(unsigned int)d ioResult:(int)result args:(const unint64_t *)args numArgs:(unsigned int)numArgs;
- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)error;
- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)self0;
- (BOOL)callMethodWithSelector:(unsigned int)selector structInput:(const void *)input structInputSize:(unint64_t)size error:(id *)error;
- (BOOL)deregisterAsyncNotificationsWithSelector:(unsigned int)selector;
- (BOOL)registerAsyncNotificationsWithSelector:(unsigned int)selector callBack:(void *)back refcon:(unint64_t)refcon callbackQueue:(id)queue;
- (_TSF_IODConnection)init;
- (_TSF_IODConnection)initWithService:(id)service andType:(unsigned int)type;
- (void)dealloc;
@end

@implementation _TSF_IODConnection

- (_TSF_IODConnection)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

- (_TSF_IODConnection)initWithService:(id)service andType:(unsigned int)type
{
  v19 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v16.receiver = self;
  v16.super_class = _TSF_IODConnection;
  v6 = [(_TSF_IODConnection *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_clientID = 0;
    asyncCallbackPort = v6->_asyncCallbackPort;
    v6->_asyncCallbackPort = 0;

    asyncCallbackQueue = v7->_asyncCallbackQueue;
    v7->_asyncCallbackQueue = 0;

    v10 = MEMORY[0x277D85DD0];
    v7->_asyncCallback = 0;
    v7->_refcon = 0;
    block[0] = v10;
    block[1] = 3221225472;
    block[2] = __46___TSF_IODConnection_initWithService_andType___block_invoke;
    block[3] = &unk_279DBD538;
    v15 = v7;
    if (initWithService_andType__onceToken != -1)
    {
      dispatch_once(&initWithService_andType__onceToken, block);
    }

    entryID = [serviceCopy entryID];
    v12 = [gDaemonServiceClient openDaemonClientWithRegistryEntryID:? clientType:? error:?];
    v7->_clientID = v12;
    if (!v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = entryID;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IODConnectionFramework failed to open registryEntryID %llu\n", buf, 0xCu);
    }
  }

  return v7;
}

- (void)dealloc
{
  clientID = self->_clientID;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29___TSF_IODConnection_dealloc__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v6 = clientID;
  dispatch_async(_dispatchQueue, block);
  v4.receiver = self;
  v4.super_class = _TSF_IODConnection;
  [(_TSF_IODConnection *)&v4 dealloc];
}

+ (void)daemonClientRefresh
{
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClientExported:daemonClientRefresh\n", buf, 2u);
  }

  os_unfair_lock_lock(&gClientsLock);
  allValues = [gClients allValues];
  os_unfair_lock_unlock(&gClientsLock);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = allValues;
  v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v10 = v8[4];
        v9 = v8[5];
        v11 = v8[2];
        *buf = 0;
        v16 = buf;
        v17 = 0xA010000000;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0;
        v18 = &unk_26F0ED113;
        v19 = 1000;
        if (v11)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && v9 != 0)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41___TSF_IODConnection_daemonClientRefresh__block_invoke;
          block[3] = &unk_279DBD988;
          block[5] = v10;
          block[6] = v9;
          block[4] = buf;
          dispatch_async(v11, block);
        }

        _Block_object_dispose(buf, 8);
        v7 = (v7 + 1);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }
}

+ (void)dispatchNotificationForClientID:(unsigned int)d ioResult:(int)result args:(const unint64_t *)args numArgs:(unsigned int)numArgs
{
  v35 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gClientsLock);
  v10 = gClients;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v12 = [v10 objectForKey:?];

  if (v12)
  {
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);
    v15 = *(v12 + 16);
    v16 = v14 != 0;
  }

  else
  {
    v15 = 0;
    v13 = 0;
    v16 = 0;
  }

  os_unfair_lock_unlock(&gClientsLock);
  if (numArgs <= 0x10 && v15 && v13 && v16)
  {
    *buf = 0;
    *&v25 = buf;
    *(&v25 + 1) = 0xA010000000;
    v26 = &unk_26F0ED113;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    __memmove_chk();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76___TSF_IODConnection_dispatchNotificationForClientID_ioResult_args_numArgs___block_invoke;
    v18[3] = &unk_279DBD9B0;
    v21 = v13;
    v19 = v12;
    v20 = buf;
    resultCopy = result;
    numArgsCopy = numArgs;
    dispatch_async(v15, v18);

    _Block_object_dispose(buf, 8);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    if (args && numArgs)
    {
      v17 = *args;
    }

    *buf = 67109376;
    *&buf[4] = d;
    LOWORD(v25) = 2048;
    *(&v25 + 2) = v17;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IODConnection NO CONNECTION callback clientID %u arg0 %llu\n", buf, 0x12u);
  }
}

- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)self0
{
  if (self->_clientID)
  {
    return [gDaemonServiceClient callMethodForDaemonClient:outputs clientMethodSelector:outputCount scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)error
{
  if (self->_clientID)
  {
    return [gDaemonServiceClient callMethodForDaemonClient:outputs clientMethodSelector:outputCount scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)callMethodWithSelector:(unsigned int)selector structInput:(const void *)input structInputSize:(unint64_t)size error:(id *)error
{
  if (self->_clientID)
  {
    return [gDaemonServiceClient callMethodForDaemonClient:0 clientMethodSelector:0 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)registerAsyncNotificationsWithSelector:(unsigned int)selector callBack:(void *)back refcon:(unint64_t)refcon callbackQueue:(id)queue
{
  queueCopy = queue;
  objc_storeStrong(&self->_asyncCallbackQueue, queue);
  if (self->_asyncCallbackQueue && self->_clientID && [gDaemonServiceClient callMethodForDaemonClient:0 clientMethodSelector:0 scalarInputs:0 scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?])
  {
    os_unfair_lock_lock(&gClientsLock);
    self->_asyncCallback = back;
    self->_refcon = refcon;
    v11 = gClients;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v11 setObject:? forKey:?];

    os_unfair_lock_unlock(&gClientsLock);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)deregisterAsyncNotificationsWithSelector:(unsigned int)selector
{
  if (self->_clientID)
  {
    os_unfair_lock_lock(&gClientsLock);
    v4 = gClients;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v4 removeObjectForKey:?];

    self->_asyncCallback = 0;
    self->_refcon = 0;
    os_unfair_lock_unlock(&gClientsLock);
    v6 = [gDaemonServiceClient callMethodForDaemonClient:0 clientMethodSelector:0 scalarInputs:0 scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
  }

  else
  {
    v6 = 0;
  }

  asyncCallbackPort = self->_asyncCallbackPort;
  self->_asyncCallbackPort = 0;

  asyncCallbackQueue = self->_asyncCallbackQueue;
  self->_asyncCallbackQueue = 0;

  return v6;
}

@end