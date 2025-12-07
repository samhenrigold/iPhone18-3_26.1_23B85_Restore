@interface AUObserverXPC
+ (id)xpcConnectionToDaemon;
- (AUObserverXPC)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)remoteObject;
- (void)addAccessoryID:(id)d assetID:(id)iD;
- (void)clearDropboxForModelNumber:(id)number withFusing:(id)fusing;
- (void)dealloc;
- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)registerClient:(id)client;
- (void)removeAccessoryID:(id)d;
- (void)removeObserver;
- (void)settingsChangedForSerialNumber:(id)number;
- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status;
- (void)stopMonitoring;
- (void)unregisterClient;
@end

@implementation AUObserverXPC

- (AUObserverXPC)init
{
  v16.receiver = self;
  v16.super_class = AUObserverXPC;
  v2 = [(AUObserverXPC *)&v16 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = dispatch_queue_create([bundleIdentifier UTF8String], 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = anonymousListener;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
    remoteObject = [(AUObserverXPC *)v2 remoteObject];
    v12 = v2->_uuid;
    endpoint = [(NSXPCListener *)v2->_xpcListener endpoint];
    [remoteObject addObserver:v12 withEndpoint:endpoint];

    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(AUObserverXPC *)self removeObserver];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3.receiver = self;
  v3.super_class = AUObserverXPC;
  [(AUObserverXPC *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AUObserverXPC_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_278BD0B68;
  v10 = connectionCopy;
  selfCopy = self;
  v12 = &v13;
  v7 = connectionCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return internalQueue;
}

void __52__AUObserverXPC_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284F787E0];
  [*(a1 + 32) setExportedInterface:v2];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  LODWORD(v2) = [*(a1 + 32) processIdentifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__AUObserverXPC_listener_shouldAcceptNewConnection___block_invoke_2;
  v6[3] = &__block_descriptor_36_e5_v8__0l;
  v7 = v2;
  [*(a1 + 32) setInterruptionHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__AUObserverXPC_listener_shouldAcceptNewConnection___block_invoke_60;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = v2;
  [*(a1 + 32) setInvalidationHandler:v4];
  [*(a1 + 32) _setQueue:*(*(a1 + 40) + 24)];
  [*(a1 + 32) resume];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) processIdentifier];
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "New connection from PID %d", buf, 8u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __52__AUObserverXPC_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__AUObserverXPC_listener_shouldAcceptNewConnection___block_invoke_2_cold_1();
  }
}

void __52__AUObserverXPC_listener_shouldAcceptNewConnection___block_invoke_60(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3[0] = 67109120;
    v3[1] = v2;
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Connection from PID %d invalidated", v3, 8u);
  }
}

- (id)remoteObject
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[AUObserverXPC xpcConnectionToDaemon];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  v5 = self->_xpcConnection;
  if (v5)
  {
    v6 = [(NSXPCConnection *)v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[AUObserverXPC remoteObject]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: remoteObject: %@", &v8, 0x16u);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __29__AUObserverXPC_remoteObject__block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __29__AUObserverXPC_remoteObject__block_invoke_cold_1();
  }
}

+ (id)xpcConnectionToDaemon
{
  v2 = objc_alloc(MEMORY[0x277CCAE80]);
  v3 = [v2 initWithMachServiceName:*MEMORY[0x277CE5488] options:4096];
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v4)
    {
      +[AUObserverXPC xpcConnectionToDaemon];
    }

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284F8CCE8];
    [v3 setRemoteObjectInterface:v5];
    [v3 resume];
    v6 = v3;
  }

  else if (v4)
  {
    +[AUObserverXPC xpcConnectionToDaemon];
  }

  return v3;
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__AUObserverXPC_registerClient___block_invoke;
  v7[3] = &unk_278BD0BB0;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(internalQueue, v7);
}

- (void)unregisterClient
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AUObserverXPC_unregisterClient__block_invoke;
  block[3] = &unk_278BD0BD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __33__AUObserverXPC_unregisterClient__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)stopMonitoring
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AUObserverXPC_stopMonitoring__block_invoke;
  block[3] = &unk_278BD0BD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)removeObserver
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AUObserverXPC removeObserver]";
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  remoteObject = [(AUObserverXPC *)self remoteObject];
  [remoteObject removeObserver:self->_uuid];

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)clearDropboxForModelNumber:(id)number withFusing:(id)fusing
{
  v9 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AUObserverXPC clearDropboxForModelNumber:withFusing:]";
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  remoteObject = [(AUObserverXPC *)self remoteObject];
  [remoteObject clearDropboxForModelNumber:numberCopy withFusing:0];
}

- (void)settingsChangedForSerialNumber:(id)number
{
  v8 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AUObserverXPC settingsChangedForSerialNumber:]";
    _os_log_impl(&dword_23D433000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  remoteObject = [(AUObserverXPC *)self remoteObject];
  [remoteObject settingsChangedForSerialNumber:numberCopy];
}

- (void)addAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__AUObserverXPC_addAccessoryID_assetID___block_invoke;
  block[3] = &unk_278BD0C00;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(internalQueue, block);
}

void *__40__AUObserverXPC_addAccessoryID_assetID___block_invoke(void *result)
{
  if (*(result[4] + 40))
  {
    return [*(result[4] + 40) addAccessoryID:result[5] assetID:result[6]];
  }

  return result;
}

- (void)removeAccessoryID:(id)d
{
  dCopy = d;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__AUObserverXPC_removeAccessoryID___block_invoke;
  v7[3] = &unk_278BD0BB0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void *__35__AUObserverXPC_removeAccessoryID___block_invoke(void *result)
{
  if (*(result[4] + 40))
  {
    return [*(result[4] + 40) removeAccessoryID:result[5]];
  }

  return result;
}

- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  dCopy = d;
  iDCopy = iD;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__AUObserverXPC_firmwareUpdateProgressForAccessoryID_assetID_bytesSent_bytesTotal___block_invoke;
  block[3] = &unk_278BD0C28;
  block[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  sentCopy = sent;
  totalCopy = total;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(internalQueue, block);
}

void *__83__AUObserverXPC_firmwareUpdateProgressForAccessoryID_assetID_bytesSent_bytesTotal___block_invoke(void *result)
{
  if (*(result[4] + 40))
  {
    return [*(result[4] + 40) firmwareUpdateProgressForAccessoryID:result[5] assetID:result[6] bytesSent:result[7] bytesTotal:result[8]];
  }

  return result;
}

- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status
{
  dCopy = d;
  iDCopy = iD;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__AUObserverXPC_stagingCompleteForAccessoryID_assetID_status___block_invoke;
  v13[3] = &unk_278BD0C50;
  v13[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  statusCopy = status;
  v11 = iDCopy;
  v12 = dCopy;
  dispatch_async(internalQueue, v13);
}

void *__62__AUObserverXPC_stagingCompleteForAccessoryID_assetID_status___block_invoke(void *result)
{
  if (*(result[4] + 40))
  {
    return [*(result[4] + 40) stagingCompleteForAccessoryID:result[5] assetID:result[6] status:result[7]];
  }

  return result;
}

@end