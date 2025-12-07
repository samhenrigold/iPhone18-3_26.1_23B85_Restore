@interface SKHelperClient
+ (id)sharedClient;
- (BOOL)_isRecachingDiskAbuse:(id)abuse;
- (SKHelperClient)init;
- (id)_parameters:(id)_parameters valueAtIndex:(unint64_t)index;
- (id)_scheduleCompletionUUID:(id)d forFunction:(const char *)function blocking:(BOOL)blocking withBlock:(id)block;
- (id)_scheduleSyncCompletionUUID:(id)d forFunction:(const char *)function withBlock:(id)block;
- (id)eraseWithEraser:(id)eraser completionBlock:(id)block;
- (id)queueWithBlocking:(BOOL)blocking;
- (id)remoteObjectProxyWithSync:(BOOL)sync errorHandler:(id)handler;
- (id)remoteObjectWithUUID:(id)d errorHandler:(id)handler;
- (id)resize:(id)resize toSize:(unint64_t)size completionBlock:(id)block;
- (id)retrieveFilesystems;
- (void)_abortAllCalls;
- (void)_scheduleCompletionUUID:(id)d progress:(id)progress forFunction:(const char *)function withBlock:(id)block;
- (void)childDisksForWholeDisk:(id)disk blocking:(BOOL)blocking withCallbackBlock:(id)block;
- (void)createXPCConnection;
- (void)disksAppeared:(id)appeared;
- (void)disksChanged:(id)changed;
- (void)disksDisappeared:(id)disappeared;
- (void)ejectDisk:(id)disk blocking:(BOOL)blocking withCompletionBlock:(id)block;
- (void)filesystemsWithCallbackBlock:(id)block;
- (void)initialPopulateComplete;
- (void)isBusyWithBlocking:(BOOL)blocking completionBlock:(id)block;
- (void)managerResumed;
- (void)managerStalled;
- (void)mountDisk:(id)disk options:(id)options blocking:(BOOL)blocking completionBlock:(id)block;
- (void)physicalStoresForAPFSVolume:(id)volume blocking:(BOOL)blocking completionBlock:(id)block;
- (void)recacheDisk:(id)disk options:(unint64_t)options blocking:(BOOL)blocking callbackBlock:(id)block;
- (void)renameDisk:(id)disk to:(id)to withCompletionBlock:(id)block;
- (void)requestWithUUID:(id)d didCompleteWithResult:(id)result;
- (void)syncAllDisks;
- (void)syncAllDisksWithCompletionBlock:(id)block;
- (void)unmountDisk:(id)disk options:(id)options blocking:(BOOL)blocking withCompletionBlock:(id)block;
- (void)updateUUID:(id)d progress:(float)progress message:(id)message;
- (void)volumesForAPFSPS:(id)s blocking:(BOOL)blocking completionBlock:(id)block;
- (void)wholeDiskForDisk:(id)disk blocking:(BOOL)blocking withCallbackBlock:(id)block;
@end

@implementation SKHelperClient

+ (id)sharedClient
{
  if (sharedClient_once != -1)
  {
    +[SKHelperClient sharedClient];
  }

  v3 = sSharedClient;

  return v3;
}

uint64_t __30__SKHelperClient_sharedClient__block_invoke()
{
  sSharedClient = objc_alloc_init(SKHelperClient);

  return MEMORY[0x2821F96F8]();
}

- (SKHelperClient)init
{
  v12.receiver = self;
  v12.super_class = SKHelperClient;
  v2 = [(SKHelperClient *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(SKHelperClient *)v2 setRecacheAbuseLimiterInfo:v5];

    [(SKHelperClient *)v2 createXPCConnection];
    xpcConnection = [(SKHelperClient *)v2 xpcConnection];
    _queue = [xpcConnection _queue];
    xpcQueue = v2->_xpcQueue;
    v2->_xpcQueue = _queue;

    v9 = dispatch_queue_create("com.apple.StorageKit.Callbacks", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;
  }

  return v2;
}

- (id)queueWithBlocking:(BOOL)blocking
{
  if (blocking)
  {
    [(SKHelperClient *)self xpcQueue];
  }

  else
  {
    [(SKHelperClient *)self callbackQueue];
  }
  v3 = ;

  return v3;
}

- (void)syncAllDisks
{
  v2 = [[SKSyncXPCCaller alloc] initWithHelperClient:self];
  syncRemoteObject = [(SKSyncXPCCaller *)v2 syncRemoteObject];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__SKHelperClient_syncAllDisks__block_invoke;
  v5[3] = &unk_279D1F5B0;
  v6 = v2;
  v4 = v2;
  [syncRemoteObject syncAllDisksWithCompletionBlock:v5];

  [(SKSyncXPCCaller *)v4 wait];
}

- (void)syncAllDisksWithCompletionBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__SKHelperClient_syncAllDisksWithCompletionBlock___block_invoke;
  v12[3] = &unk_279D1FAA0;
  v13 = blockCopy;
  v7 = blockCopy;
  [(SKHelperClient *)self _scheduleCompletionUUID:uUIDString forFunction:"[SKHelperClient syncAllDisksWithCompletionBlock:]" withBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__SKHelperClient_syncAllDisksWithCompletionBlock___block_invoke_2;
  v10[3] = &unk_279D1FAC8;
  v10[4] = self;
  v11 = uUIDString;
  v8 = uUIDString;
  v9 = [(SKHelperClient *)self remoteObjectWithUUID:v8 errorHandler:v10];
  [v9 syncAllDisksWithCompletionUUID:v8];
}

uint64_t __50__SKHelperClient_syncAllDisksWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)renameDisk:(id)disk to:(id)to withCompletionBlock:(id)block
{
  blockCopy = block;
  v9 = MEMORY[0x277CCAD78];
  toCopy = to;
  diskCopy = disk;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke;
  v24[3] = &unk_279D1FAF0;
  v24[4] = self;
  v25 = blockCopy;
  v14 = blockCopy;
  [(SKHelperClient *)self _scheduleCompletionUUID:uUIDString forFunction:"[SKHelperClient renameDisk:to:withCompletionBlock:]" withBlock:v24];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke_2;
  v21 = &unk_279D1FAC8;
  selfCopy = self;
  v23 = uUIDString;
  v15 = uUIDString;
  v16 = [(SKHelperClient *)self remoteObjectWithUUID:v15 errorHandler:&v18];
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];

  [v16 renameDisk:minimalDictionaryRepresentation to:toCopy withCompletionUUID:v15];
}

void __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) _parameters:a2 valueAtIndex:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v7, v8}];
}

- (void)recacheDisk:(id)disk options:(unint64_t)options blocking:(BOOL)blocking callbackBlock:(id)block
{
  blockingCopy = blocking;
  diskCopy = disk;
  blockCopy = block;
  if ((options & 2) != 0 || blockingCopy || ![(SKHelperClient *)self _isRecachingDiskAbuse:diskCopy])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__SKHelperClient_recacheDisk_options_blocking_callbackBlock___block_invoke_80;
    v27[3] = &unk_279D1FB18;
    v29 = blockCopy;
    v27[4] = self;
    v17 = uUIDString;
    v28 = v17;
    v14 = blockCopy;
    v18 = [(SKHelperClient *)self _scheduleCompletionUUID:v17 forFunction:"[SKHelperClient recacheDisk:options:blocking:callbackBlock:]" blocking:blockingCopy withBlock:v27];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __61__SKHelperClient_recacheDisk_options_blocking_callbackBlock___block_invoke_2;
    v24 = &unk_279D1FAC8;
    selfCopy = self;
    v13 = v17;
    v26 = v13;
    v19 = [(SKHelperClient *)self remoteObjectWithUUID:v13 errorHandler:&v21];
    minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];
    [v19 recacheDisk:minimalDictionaryRepresentation options:options withCompletionUUID:v13];

    if (v18)
    {
      dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    callbackQueue = [(SKHelperClient *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SKHelperClient_recacheDisk_options_blocking_callbackBlock___block_invoke;
    block[3] = &unk_279D1F650;
    v31 = blockCopy;
    v13 = blockCopy;
    dispatch_async(callbackQueue, block);

    v14 = v31;
  }
}

uint64_t __61__SKHelperClient_recacheDisk_options_blocking_callbackBlock___block_invoke(uint64_t a1)
{
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_ERROR, "Caller has hit recacheDisk: abuse limit. Disk data may be stale", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __61__SKHelperClient_recacheDisk_options_blocking_callbackBlock___block_invoke_80(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

- (void)wholeDiskForDisk:(id)disk blocking:(BOOL)blocking withCallbackBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  v9 = MEMORY[0x277CCAD78];
  diskCopy = disk;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke;
  v25[3] = &unk_279D1FB68;
  v25[4] = self;
  v13 = uUIDString;
  v26 = v13;
  v27 = blockCopy;
  v28 = blockingCopy;
  v14 = blockCopy;
  v15 = [(SKHelperClient *)self _scheduleCompletionUUID:v13 forFunction:"[SKHelperClient wholeDiskForDisk:blocking:withCallbackBlock:]" blocking:blockingCopy withBlock:v25];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_3;
  v22 = &unk_279D1FAC8;
  selfCopy = self;
  v16 = v13;
  v24 = v16;
  v17 = [(SKHelperClient *)self remoteObjectWithUUID:v16 errorHandler:&v19];
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];

  [v17 wholeDiskForDiskDictionary:minimalDictionaryRepresentation withCompletionUUID:v16];
  if (v15)
  {
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];

  if (*(a1 + 48))
  {
    v7 = [*(a1 + 32) _parameters:v3 valueAtIndex:0];
    v8 = +[SKManager sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_2;
    v10[3] = &unk_279D1FB40;
    v12 = *(a1 + 48);
    v11 = v6;
    v9 = [*(a1 + 32) queueWithBlocking:{*(a1 + 56), v10[0], 3221225472, __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_2, &unk_279D1FB40}];
    [v8 knownDiskForDictionary:v7 notify:v10 onQueue:v9];
  }

  else if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

NSObject *__62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[SKHelperClient wholeDiskForDisk:blocking:withCallbackBlock:]_block_invoke_3";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEB68] null];
  v9 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v6 requestWithUUID:v5 didCompleteWithResult:v8];
}

- (void)childDisksForWholeDisk:(id)disk blocking:(BOOL)blocking withCallbackBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  v9 = MEMORY[0x277CCAD78];
  diskCopy = disk;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__SKHelperClient_childDisksForWholeDisk_blocking_withCallbackBlock___block_invoke;
  v21[3] = &unk_279D1FB18;
  v23 = blockCopy;
  v21[4] = self;
  v13 = uUIDString;
  v22 = v13;
  v14 = blockCopy;
  v15 = [(SKHelperClient *)self _scheduleCompletionUUID:v13 forFunction:"[SKHelperClient childDisksForWholeDisk:blocking:withCallbackBlock:]" blocking:blockingCopy withBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__SKHelperClient_childDisksForWholeDisk_blocking_withCallbackBlock___block_invoke_2;
  v19[3] = &unk_279D1FAC8;
  v19[4] = self;
  v16 = v13;
  v20 = v16;
  v17 = [(SKHelperClient *)self remoteObjectWithUUID:v16 errorHandler:v19];
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];

  [v17 childDisksForWholeDisk:minimalDictionaryRepresentation withCompletionUUID:v16];
  if (v15)
  {
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __68__SKHelperClient_childDisksForWholeDisk_blocking_withCallbackBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v11 valueAtIndex:0];
    v4 = *(a1 + 48);
    v5 = +[SKManager sharedManager];
    v6 = [v5 knownDisksForDictionaries:v3];
    (*(v4 + 16))(v4, v6);
  }

  v7 = [*(a1 + 32) completionHandlers];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  v9 = [v8 semaphore];
  v10 = v9;
  if (v9)
  {
    dispatch_semaphore_signal(v9);
  }
}

void __68__SKHelperClient_childDisksForWholeDisk_blocking_withCallbackBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[SKHelperClient childDisksForWholeDisk:blocking:withCallbackBlock:]_block_invoke_2";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEB68] null];
  v9 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v6 requestWithUUID:v5 didCompleteWithResult:v8];
}

- (void)isBusyWithBlocking:(BOOL)blocking completionBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__SKHelperClient_isBusyWithBlocking_completionBlock___block_invoke;
  v16[3] = &unk_279D1FB18;
  v18 = blockCopy;
  v16[4] = self;
  v9 = uUIDString;
  v17 = v9;
  v10 = blockCopy;
  v11 = [(SKHelperClient *)self _scheduleCompletionUUID:v9 forFunction:"[SKHelperClient isBusyWithBlocking:completionBlock:]" blocking:blockingCopy withBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__SKHelperClient_isBusyWithBlocking_completionBlock___block_invoke_2;
  v14[3] = &unk_279D1FAC8;
  v14[4] = self;
  v12 = v9;
  v15 = v12;
  v13 = [(SKHelperClient *)self remoteObjectWithUUID:v12 errorHandler:v14];
  [v13 isBusyWithCompletionUUID:v12];

  if (v11)
  {
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __53__SKHelperClient_isBusyWithBlocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    [v3 BOOLValue];

    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

- (id)retrieveFilesystems
{
  v2 = [[SKSyncXPCCaller alloc] initWithHelperClient:self];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = MEMORY[0x277CBEBF8];
  syncRemoteObject = [(SKSyncXPCCaller *)v2 syncRemoteObject];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __37__SKHelperClient_retrieveFilesystems__block_invoke;
  v10 = &unk_279D1FBB8;
  v4 = v2;
  v11 = v4;
  v12 = &v13;
  [syncRemoteObject filesystemsWithCallbackBlock:&v7];

  [(SKSyncXPCCaller *)v4 wait:v7];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __37__SKHelperClient_retrieveFilesystems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SKHelperClient_retrieveFilesystems__block_invoke_2;
  v7[3] = &unk_279D1FB90;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 queueWithCompletionBlock:v7];
}

- (void)filesystemsWithCallbackBlock:(id)block
{
  blockCopy = block;
  retrieveFilesystems = [(SKHelperClient *)self retrieveFilesystems];
  (*(block + 2))(blockCopy, retrieveFilesystems);
}

- (void)physicalStoresForAPFSVolume:(id)volume blocking:(BOOL)blocking completionBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  v9 = MEMORY[0x277CCAD78];
  volumeCopy = volume;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke;
  v25[3] = &unk_279D1FB68;
  v25[4] = self;
  v13 = uUIDString;
  v28 = blockingCopy;
  v26 = v13;
  v27 = blockCopy;
  v14 = blockCopy;
  v15 = [(SKHelperClient *)self _scheduleCompletionUUID:v13 forFunction:"[SKHelperClient physicalStoresForAPFSVolume:blocking:completionBlock:]" blocking:blockingCopy withBlock:v25];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_6;
  v22 = &unk_279D1FAC8;
  selfCopy = self;
  v16 = v13;
  v24 = v16;
  v17 = [(SKHelperClient *)self remoteObjectWithUUID:v16 errorHandler:&v19];
  minimalDictionaryRepresentation = [volumeCopy minimalDictionaryRepresentation];

  [v17 physicalStoresForAPFSVolume:minimalDictionaryRepresentation withCompletionUUID:v16];
  if (v15)
  {
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v3 = [*(a1 + 32) completionHandlers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  v15 = [v4 semaphore];

  v5 = [*(a1 + 32) _parameters:v16 valueAtIndex:0];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__3;
  v32[4] = __Block_byref_object_dispose__3;
  v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v6 = dispatch_queue_create("com.apple.storagekitd.diskeval", 0);
  v7 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        dispatch_group_enter(v7);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_2;
        block[3] = &unk_279D1FBE0;
        block[4] = v11;
        v27 = v32;
        v26 = v7;
        dispatch_async(v6, block);
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_4;
  v18[3] = &unk_279D1FC30;
  v12 = *(a1 + 32);
  v19 = v7;
  v20 = v12;
  v24 = *(a1 + 56);
  v22 = *(a1 + 48);
  v23 = v32;
  v21 = v15;
  v13 = v15;
  v14 = v7;
  dispatch_sync(v6, v18);

  _Block_object_dispose(v32, 8);
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = +[SKManager sharedManager];
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_3;
  v7[3] = &unk_279D1F6C8;
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  v5 = dispatch_get_global_queue(0, 0);
  [v2 knownDiskForDictionary:v3 notify:v7 onQueue:v5];
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  objc_sync_enter(v3);
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  objc_sync_exit(v3);

  dispatch_group_leave(*(a1 + 32));
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_4(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1 + 40) queueWithBlocking:*(a1 + 72)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_5;
  block[3] = &unk_279D1FC08;
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

NSObject *__71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_5(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 40));
  }

  result = a1[4];
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SKHelperClient physicalStoresForAPFSVolume:blocking:completionBlock:]_block_invoke_6";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", &v5, 0x16u);
  }

  [*(a1 + 32) requestWithUUID:*(a1 + 40) didCompleteWithResult:&unk_287C9A6B8];
}

- (void)volumesForAPFSPS:(id)s blocking:(BOOL)blocking completionBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  v9 = MEMORY[0x277CCAD78];
  sCopy = s;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke;
  v25[3] = &unk_279D1FB68;
  v25[4] = self;
  v13 = uUIDString;
  v28 = blockingCopy;
  v26 = v13;
  v27 = blockCopy;
  v14 = blockCopy;
  v15 = [(SKHelperClient *)self _scheduleCompletionUUID:v13 forFunction:"[SKHelperClient volumesForAPFSPS:blocking:completionBlock:]" blocking:blockingCopy withBlock:v25];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_6;
  v22 = &unk_279D1FAC8;
  selfCopy = self;
  v16 = v13;
  v24 = v16;
  v17 = [(SKHelperClient *)self remoteObjectWithUUID:v16 errorHandler:&v19];
  minimalDictionaryRepresentation = [sCopy minimalDictionaryRepresentation];

  [v17 volumesForAPFSPS:minimalDictionaryRepresentation withCompletionUUID:v16];
  if (v15)
  {
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v3 = [*(a1 + 32) completionHandlers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  v13 = [v4 semaphore];

  v5 = [*(a1 + 32) _parameters:v14 valueAtIndex:0];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__3;
  v28[4] = __Block_byref_object_dispose__3;
  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v6 = dispatch_queue_create("com.apple.storagekitd.diskeval", 0);
  v7 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        dispatch_group_enter(v7);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_2;
        block[3] = &unk_279D1FBE0;
        block[4] = v11;
        v23 = v28;
        v22 = v7;
        dispatch_async(v6, block);
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_4;
  v16[3] = &unk_279D1FC58;
  v16[4] = *(a1 + 32);
  v20 = *(a1 + 56);
  v18 = *(a1 + 48);
  v19 = v28;
  v17 = v13;
  v12 = v13;
  dispatch_sync(v6, v16);

  _Block_object_dispose(v28, 8);
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = +[SKManager sharedManager];
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_3;
  v7[3] = &unk_279D1F6C8;
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  v5 = dispatch_get_global_queue(0, 0);
  [v2 knownDiskForDictionary:v3 notify:v7 onQueue:v5];
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) queueWithBlocking:*(a1 + 64)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_5;
  block[3] = &unk_279D1FC08;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 40);
  dispatch_async(v2, block);
}

NSObject *__60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_5(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 40));
  }

  result = a1[4];
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SKHelperClient volumesForAPFSPS:blocking:completionBlock:]_block_invoke_6";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", &v5, 0x16u);
  }

  [*(a1 + 32) requestWithUUID:*(a1 + 40) didCompleteWithResult:&unk_287C9A6D0];
}

- (void)updateUUID:(id)d progress:(float)progress message:(id)message
{
  messageCopy = message;
  dCopy = d;
  completionHandlers = [(SKHelperClient *)self completionHandlers];
  v11 = [completionHandlers objectForKeyedSubscript:dCopy];

  if (v11)
  {
    progressBlock = [v11 progressBlock];

    if (progressBlock)
    {
      progressBlock2 = [v11 progressBlock];
      callbackQueue = [(SKHelperClient *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__SKHelperClient_updateUUID_progress_message___block_invoke;
      block[3] = &unk_279D1FC80;
      v18 = progressBlock2;
      progressCopy = progress;
      v17 = messageCopy;
      v15 = progressBlock2;
      dispatch_async(callbackQueue, block);
    }
  }
}

- (void)requestWithUUID:(id)d didCompleteWithResult:(id)result
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultCopy = result;
  completionHandlers = [(SKHelperClient *)self completionHandlers];
  v9 = [completionHandlers objectForKeyedSubscript:dCopy];

  v10 = SKGetOSLog();
  completionHandlers2 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v21 = dCopy;
      v22 = 2082;
      functionName = [v9 functionName];
      _os_log_impl(&dword_26BBB8000, completionHandlers2, OS_LOG_TYPE_DEFAULT, "Reached XPC reply for %{public}@ %{public}s", buf, 0x16u);
    }

    [v9 setProgressBlock:0];
    semaphore = [v9 semaphore];

    if (semaphore)
    {
      completionBlock = [v9 completionBlock];
      (completionBlock)[2](completionBlock, resultCopy);

      v14 = SKGetOSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = dCopy;
        _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_DEFAULT, "Completion block directly executed for: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      callbackQueue = [(SKHelperClient *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__SKHelperClient_requestWithUUID_didCompleteWithResult___block_invoke;
      block[3] = &unk_279D1FCA8;
      v17 = dCopy;
      v18 = v9;
      v19 = resultCopy;
      dispatch_async(callbackQueue, block);

      v14 = v17;
    }

    completionHandlers2 = [(SKHelperClient *)self completionHandlers];
    [completionHandlers2 setObject:0 forKeyedSubscript:dCopy];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v21 = dCopy;
    _os_log_impl(&dword_26BBB8000, completionHandlers2, OS_LOG_TYPE_ERROR, "Error: no completion handler for %{public}@", buf, 0xCu);
  }
}

void __56__SKHelperClient_requestWithUUID_didCompleteWithResult___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "Completion callback for: %{public}@ - start", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) completionBlock];
  v4[2](v4, *(a1 + 48));

  v5 = SKGetOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_DEFAULT, "Completion callback for: %{public}@ - end", &v7, 0xCu);
  }
}

- (void)initialPopulateComplete
{
  v2 = +[SKManager sharedManager];
  [v2 initialPopulateComplete];
}

- (void)disksAppeared:(id)appeared
{
  appearedCopy = appeared;
  v4 = +[SKManager sharedManager];
  [v4 disksAppeared:appearedCopy];
}

- (void)disksChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[SKManager sharedManager];
  [v4 disksChanged:changedCopy];
}

- (void)disksDisappeared:(id)disappeared
{
  disappearedCopy = disappeared;
  v4 = +[SKManager sharedManager];
  [v4 disksDisappeared:disappearedCopy];
}

- (void)managerStalled
{
  v2 = +[SKManager sharedManager];
  [v2 managerStalled];
}

- (void)managerResumed
{
  v2 = +[SKManager sharedManager];
  [v2 managerResumed];
}

- (id)remoteObjectProxyWithSync:(BOOL)sync errorHandler:(id)handler
{
  syncCopy = sync;
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (![(SKHelperClient *)self connectionDone])
  {
    v7 = SKGetOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "async";
      if (syncCopy)
      {
        v8 = "sync";
      }

      v13 = 136315394;
      v14 = "[SKHelperClient remoteObjectProxyWithSync:errorHandler:]";
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_DEFAULT, "%s: Going to send first message from client, in %s mode", &v13, 0x16u);
    }

    [(SKHelperClient *)self setConnectionDone:1];
  }

  xpcConnection = [(SKHelperClient *)self xpcConnection];
  v10 = xpcConnection;
  if (syncCopy)
  {
    [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }
  v11 = ;

  return v11;
}

- (id)remoteObjectWithUUID:(id)d errorHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  xpcQueue = [(SKHelperClient *)self xpcQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SKHelperClient_remoteObjectWithUUID_errorHandler___block_invoke;
  block[3] = &unk_279D1FCD0;
  block[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(xpcQueue, block);

  v11 = [(SKHelperClient *)self remoteObjectProxyWithSync:0 errorHandler:v9];

  return v11;
}

void __52__SKHelperClient_remoteObjectWithUUID_errorHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) completionHandlers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setErrorBlock:*(a1 + 48)];
  }

  else
  {
    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = 136315394;
      v7 = "[SKHelperClient remoteObjectWithUUID:errorHandler:]_block_invoke";
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s: No completion handler set for %{public}@, cannot set error block", &v6, 0x16u);
    }
  }
}

- (void)createXPCConnection
{
  v20 = *MEMORY[0x277D85DE8];
  getpid();
  -[SKHelperClient setHasDaemonAccess:](self, "setHasDaemonAccess:", sandbox_check() == 0, [@"com.apple.storagekitd" UTF8String]);
  v3 = SKGetOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    hasDaemonAccess = [(SKHelperClient *)self hasDaemonAccess];
    v5 = @"doesn't have";
    if (hasDaemonAccess)
    {
      v5 = @"has";
    }

    *buf = 136315394;
    v17 = "[SKHelperClient createXPCConnection]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_26BBB8000, v3, OS_LOG_TYPE_DEFAULT, "%s: Client %@ access to storagekitd", buf, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.storagekitd" options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v6;

  v8 = SKHelperConnectionInterface();
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v8];

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  v9 = SKHelperClientInterface();
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v9];

  objc_initWeak(buf, self);
  v10 = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__SKHelperClient_createXPCConnection__block_invoke;
  v14[3] = &unk_279D1FCF8;
  objc_copyWeak(&v15, buf);
  [(NSXPCConnection *)v10 setInterruptionHandler:v14];
  v11 = self->_xpcConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SKHelperClient_createXPCConnection__block_invoke_108;
  v12[3] = &unk_279D1FCF8;
  objc_copyWeak(&v13, buf);
  [(NSXPCConnection *)v11 setInvalidationHandler:v12];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __37__SKHelperClient_createXPCConnection__block_invoke(uint64_t a1)
{
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _abortAllCalls];
}

void __37__SKHelperClient_createXPCConnection__block_invoke_108(uint64_t a1)
{
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _abortAllCalls];
}

- (void)_abortAllCalls
{
  v24 = *MEMORY[0x277D85DE8];
  [(SKHelperClient *)self setConnectionDone:0];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  completionHandlers = [(SKHelperClient *)self completionHandlers];
  allKeys = [completionHandlers allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = SKGetOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v22 = v10;
          _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_DEFAULT, "Calling completion handler to abort UUID: %{public}@", buf, 0xCu);
        }

        completionHandlers2 = [(SKHelperClient *)self completionHandlers];
        v13 = [completionHandlers2 objectForKeyedSubscript:v10];

        errorBlock = [v13 errorBlock];

        if (errorBlock)
        {
          errorBlock2 = [v13 errorBlock];
          (errorBlock2)[2](errorBlock2, v3);
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  completionHandlers3 = [(SKHelperClient *)self completionHandlers];
  [completionHandlers3 removeAllObjects];
}

- (void)_scheduleCompletionUUID:(id)d progress:(id)progress forFunction:(const char *)function withBlock:(id)block
{
  dCopy = d;
  progressCopy = progress;
  blockCopy = block;
  xpcQueue = [(SKHelperClient *)self xpcQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SKHelperClient__scheduleCompletionUUID_progress_forFunction_withBlock___block_invoke;
  block[3] = &unk_279D1FD20;
  v21 = progressCopy;
  functionCopy = function;
  v18 = dCopy;
  selfCopy = self;
  v20 = blockCopy;
  v14 = progressCopy;
  v15 = blockCopy;
  v16 = dCopy;
  dispatch_async(xpcQueue, block);
}

void __73__SKHelperClient__scheduleCompletionUUID_progress_forFunction_withBlock___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v7 = 136315394;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "Setting completion callback for (%s) to: %{public}@", &v7, 0x16u);
  }

  v5 = [[SKCompletionHandler alloc] initWithCompletionBlock:*(a1 + 48) progressBlock:*(a1 + 56) function:*(a1 + 64)];
  v6 = [*(a1 + 40) completionHandlers];
  [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];
}

- (id)_scheduleSyncCompletionUUID:(id)d forFunction:(const char *)function withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v10 = dispatch_semaphore_create(0);
  xpcQueue = [(SKHelperClient *)self xpcQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SKHelperClient__scheduleSyncCompletionUUID_forFunction_withBlock___block_invoke;
  block[3] = &unk_279D1FD48;
  v21 = blockCopy;
  functionCopy = function;
  v18 = dCopy;
  v12 = v10;
  v19 = v12;
  selfCopy = self;
  v13 = blockCopy;
  v14 = dCopy;
  dispatch_async(xpcQueue, block);

  v15 = v12;
  return v12;
}

void __68__SKHelperClient__scheduleSyncCompletionUUID_forFunction_withBlock___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v7 = 136315394;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "Setting sync completion callback for (%s) to: %{public}@", &v7, 0x16u);
  }

  v5 = [[SKCompletionHandler alloc] initWithCompletionBlock:*(a1 + 56) progressBlock:0 function:*(a1 + 64)];
  [(SKCompletionHandler *)v5 setSemaphore:*(a1 + 40)];
  v6 = [*(a1 + 48) completionHandlers];
  [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];
}

- (id)_scheduleCompletionUUID:(id)d forFunction:(const char *)function blocking:(BOOL)blocking withBlock:(id)block
{
  if (blocking)
  {
    v6 = [(SKHelperClient *)self _scheduleSyncCompletionUUID:d forFunction:function withBlock:block];
  }

  else
  {
    [(SKHelperClient *)self _scheduleCompletionUUID:d progress:0 forFunction:function withBlock:block];
    v6 = 0;
  }

  return v6;
}

- (id)_parameters:(id)_parameters valueAtIndex:(unint64_t)index
{
  _parametersCopy = _parameters;
  if ([_parametersCopy count] > index)
  {
    v6 = [_parametersCopy objectAtIndex:index];
    null = [MEMORY[0x277CBEB68] null];
    v8 = [v6 isEqual:null];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (BOOL)_isRecachingDiskAbuse:(id)abuse
{
  v24[2] = *MEMORY[0x277D85DE8];
  minimalDictionaryRepresentation = [abuse minimalDictionaryRepresentation];
  recacheAbuseLimiterInfo = [(SKHelperClient *)self recacheAbuseLimiterInfo];
  v6 = [recacheAbuseLimiterInfo objectForKey:minimalDictionaryRepresentation];

  if (v6)
  {
    date3 = [v6 objectForKey:@"FirstCallTime"];
    v8 = [v6 objectForKey:@"CallCount"];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:date3];
    v11 = v10;

    if (v11 >= 60.0)
    {
      v23[0] = @"FirstCallTime";
      date2 = [MEMORY[0x277CBEAA8] date];
      v23[1] = @"CallCount";
      v24[0] = date2;
      v24[1] = &unk_287C9A670;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

      v12 = 0;
      v6 = v14;
    }

    else
    {
      v12 = [v8 integerValue] > 3;
    }
  }

  else
  {
    v21[0] = @"FirstCallTime";
    date3 = [MEMORY[0x277CBEAA8] date];
    v21[1] = @"CallCount";
    v22[0] = date3;
    v22[1] = &unk_287C9A670;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v12 = 0;
  }

  v15 = [v6 objectForKey:@"CallCount"];
  integerValue = [v15 integerValue];
  v17 = [v6 mutableCopy];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
  [v17 setObject:v18 forKey:@"CallCount"];

  recacheAbuseLimiterInfo2 = [(SKHelperClient *)self recacheAbuseLimiterInfo];
  [recacheAbuseLimiterInfo2 setObject:v17 forKey:minimalDictionaryRepresentation];

  return v12;
}

- (void)unmountDisk:(id)disk options:(id)options blocking:(BOOL)blocking withCompletionBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  v11 = MEMORY[0x277CCAD78];
  optionsCopy = options;
  diskCopy = disk;
  uUID = [v11 UUID];
  uUIDString = [uUID UUIDString];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __67__SKHelperClient_unmountDisk_options_blocking_withCompletionBlock___block_invoke;
  v24[3] = &unk_279D1FB18;
  v26 = blockCopy;
  v24[4] = self;
  v16 = uUIDString;
  v25 = v16;
  v17 = blockCopy;
  v18 = [(SKHelperClient *)self _scheduleCompletionUUID:v16 forFunction:"[SKHelperClient unmountDisk:options:blocking:withCompletionBlock:]" blocking:blockingCopy withBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__SKHelperClient_unmountDisk_options_blocking_withCompletionBlock___block_invoke_2;
  v22[3] = &unk_279D1FAC8;
  v22[4] = self;
  v19 = v16;
  v23 = v19;
  v20 = [(SKHelperClient *)self remoteObjectWithUUID:v19 errorHandler:v22];
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];

  [v20 unmountDisk:minimalDictionaryRepresentation options:optionsCopy withCompletionUUID:v19];
  if (v18)
  {
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __67__SKHelperClient_unmountDisk_options_blocking_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void __67__SKHelperClient_unmountDisk_options_blocking_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v7, v8}];
}

- (void)mountDisk:(id)disk options:(id)options blocking:(BOOL)blocking completionBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  v11 = MEMORY[0x277CCAD78];
  optionsCopy = options;
  diskCopy = disk;
  uUID = [v11 UUID];
  uUIDString = [uUID UUIDString];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__SKHelperClient_mountDisk_options_blocking_completionBlock___block_invoke;
  v24[3] = &unk_279D1FB18;
  v26 = blockCopy;
  v24[4] = self;
  v16 = uUIDString;
  v25 = v16;
  v17 = blockCopy;
  v18 = [(SKHelperClient *)self _scheduleCompletionUUID:v16 forFunction:"[SKHelperClient mountDisk:options:blocking:completionBlock:]" blocking:blockingCopy withBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__SKHelperClient_mountDisk_options_blocking_completionBlock___block_invoke_2;
  v22[3] = &unk_279D1FAC8;
  v22[4] = self;
  v19 = v16;
  v23 = v19;
  v20 = [(SKHelperClient *)self remoteObjectWithUUID:v19 errorHandler:v22];
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];

  [v20 mountDisk:minimalDictionaryRepresentation options:optionsCopy withCompletionUUID:v19];
  if (v18)
  {
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __61__SKHelperClient_mountDisk_options_blocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void __61__SKHelperClient_mountDisk_options_blocking_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v7, v8}];
}

- (void)ejectDisk:(id)disk blocking:(BOOL)blocking withCompletionBlock:(id)block
{
  blockingCopy = blocking;
  blockCopy = block;
  v9 = MEMORY[0x277CCAD78];
  diskCopy = disk;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__SKHelperClient_ejectDisk_blocking_withCompletionBlock___block_invoke;
  v21[3] = &unk_279D1FB18;
  v23 = blockCopy;
  v21[4] = self;
  v13 = uUIDString;
  v22 = v13;
  v14 = blockCopy;
  v15 = [(SKHelperClient *)self _scheduleCompletionUUID:v13 forFunction:"[SKHelperClient ejectDisk:blocking:withCompletionBlock:]" blocking:blockingCopy withBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__SKHelperClient_ejectDisk_blocking_withCompletionBlock___block_invoke_2;
  v19[3] = &unk_279D1FAC8;
  v19[4] = self;
  v16 = v13;
  v20 = v16;
  v17 = [(SKHelperClient *)self remoteObjectWithUUID:v16 errorHandler:v19];
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];

  [v17 ejectDisk:minimalDictionaryRepresentation withCompletionUUID:v16];
  if (v15)
  {
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __57__SKHelperClient_ejectDisk_blocking_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void __57__SKHelperClient_ejectDisk_blocking_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v7, v8}];
}

- (id)eraseWithEraser:(id)eraser completionBlock:(id)block
{
  blockCopy = block;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke;
  v15[3] = &unk_279D1FD70;
  v15[4] = self;
  v7 = blockCopy;
  v16 = v7;
  eraserCopy = eraser;
  v9 = [(SKHelperClient *)self remoteObjectProxyWithSync:0 errorHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_3;
  v13[3] = &unk_279D1FD98;
  v13[4] = self;
  v14 = v7;
  v10 = v7;
  v11 = [v9 eraseWithEraser:eraserCopy reply:v13];

  return v11;
}

void __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_2;
  v7[3] = &unk_279D1F678;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _parameters:v4 valueAtIndex:0];
  v6 = [*(a1 + 32) _parameters:v4 valueAtIndex:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = +[SKManager sharedManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_4;
    v9[3] = &unk_279D1FB40;
    v11 = *(a1 + 40);
    v10 = v6;
    v8 = [*(a1 + 32) callbackQueue];
    [v7 knownDiskForDictionary:v5 notify:v9 onQueue:v8];
  }
}

void __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SKHelperClient eraseWithEraser:completionBlock:]_block_invoke_4";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_DEFAULT, "%s: Erase completed successfully: %@", &v5, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)resize:(id)resize toSize:(unint64_t)size completionBlock:(id)block
{
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke;
  v18[3] = &unk_279D1FD70;
  v18[4] = self;
  v9 = blockCopy;
  v19 = v9;
  resizeCopy = resize;
  v11 = [(SKHelperClient *)self remoteObjectProxyWithSync:0 errorHandler:v18];
  minimalDictionaryRepresentation = [resizeCopy minimalDictionaryRepresentation];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_3;
  v16[3] = &unk_279D1FD70;
  v16[4] = self;
  v17 = v9;
  v13 = v9;
  v14 = [v11 resizeDisk:minimalDictionaryRepresentation size:size reply:v16];

  return v14;
}

void __48__SKHelperClient_resize_toSize_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_2;
  v7[3] = &unk_279D1F678;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_4;
  v7[3] = &unk_279D1F678;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

@end