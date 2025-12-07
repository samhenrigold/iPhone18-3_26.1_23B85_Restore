@interface UASharedPasteboardManager
+ (BOOL)dontConnectToServer;
+ (id)sharedManager;
+ (void)initialize;
- (BOOL)addData:(id)data toItemAtIndex:(unint64_t)index generation:(unint64_t)generation;
- (BOOL)isRemotePasteboardAvailable;
- (BOOL)requestPasteboardFetchReturnEarly;
- (BOOL)typeIsDisallowedForReceiving:(id)receiving;
- (BOOL)typeIsDisallowedForSending:(id)sending;
- (UASharedPasteboardManager)init;
- (id)fetchRemoteName;
- (id)serializeFileType:(id)type intoInfo:(id)info withFile:(id)file intoDir:(id)dir;
- (id)serializeItem:(id)item intoInfo:(id)info withFile:(id)file intoDir:(id)dir;
- (id)serializeType:(id)type intoInfo:(id)info withFile:(id)file;
- (void)clearLocalPasteboardInformation;
- (void)dealloc;
- (void)doClearLocalPasteboardInfo;
- (void)fetchPasteboardDataForProcess:(int)process withCompletion:(id)completion;
- (void)fetchPasteboardStatus:(id)status;
- (void)fetchPasteboardTypesForProcess:(int)process withCompletion:(id)completion;
- (void)pickupLocalChanges:(id)changes iterNumber:(int64_t)number cloneDir:(id)dir completionHandler:(id)handler;
- (void)requestRemotePasteboardDataForProcess:(int)process withCompletion:(id)completion;
- (void)requestRemotePasteboardTypesForProcess:(int)process withCompletion:(id)completion;
- (void)sendUpdateToServer:(id)server;
- (void)startPreventingPasteboardSharing;
- (void)stopPreventingPasteboardSharing;
- (void)tellClientDebuggingEnabled:(BOOL)enabled logFileHandle:(id)handle;
- (void)writeLocalPasteboardToFile:(id)file itemDir:(id)dir extension:(id)extension withCompletion:(id)completion;
- (void)writeLocalPasteboardToFile:(id)file itemDir:(id)dir withCompletion:(id)completion;
@end

@implementation UASharedPasteboardManager

+ (void)initialize
{
  v2 = +[UASharedPasteboardIRManager sharedIRManager];
  [v2 initializeConverters];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[UASharedPasteboardManager sharedManager];
  }

  v3 = sharedManager_result;

  return v3;
}

void __42__UASharedPasteboardManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(UASharedPasteboardManager);
  v1 = sharedManager_result;
  sharedManager_result = v0;
}

+ (BOOL)dontConnectToServer
{
  v2 = getenv("__UAUSERACTIVITYDONTCONNECTTOUSERACTIVITYD");
  if (v2)
  {
    LOBYTE(v2) = atoi(v2) != 0;
  }

  return v2;
}

- (UASharedPasteboardManager)init
{
  v32[2] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = UASharedPasteboardManager;
  v2 = [(UASharedPasteboardManager *)&v30 init];
  if (v2)
  {
    v3 = dispatch_queue_create("UAPasteboardServerQ", 0);
    [(UASharedPasteboardManager *)v2 setServerQ:v3];

    v4 = dispatch_queue_create("UAPasteboardReadingQ", 0);
    [(UASharedPasteboardManager *)v2 setPasteboardReadQ:v4];

    v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_283A63738];
    [(UASharedPasteboardManager *)v2 setDisallowedTypesForSending:v5];

    v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_283A63750];
    [(UASharedPasteboardManager *)v2 setDisallowedTypesForReceiving:v6];

    v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_283A63768];
    [(UASharedPasteboardManager *)v2 setBomCheckTypes:v7];

    v31[0] = @"public.utf16-plain-text";
    v31[1] = @"public.utf16-external-plain-text";
    v32[0] = &unk_283A63780;
    v32[1] = &unk_283A63798;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [(UASharedPasteboardManager *)v2 setTypeBOMs:v8];

    [(UASharedPasteboardManager *)v2 setTypeAliases:&unk_283A63858];
    if (([objc_opt_class() dontConnectToServer] & 1) == 0)
    {
      v9 = objc_alloc(MEMORY[0x277CCAE80]);
      v10 = UASharedPasteboardManagerServiceName();
      v11 = [v9 initWithMachServiceName:v10 options:0];
      [(UASharedPasteboardManager *)v2 setConnection:v11];

      v13 = _UAGetSharedPasteboardManagerProtocolInterface(v12);
      connection = [(UASharedPasteboardManager *)v2 connection];
      [connection setRemoteObjectInterface:v13];

      connection2 = [(UASharedPasteboardManager *)v2 connection];
      [connection2 setExportedObject:v2];

      v17 = _UAGetSharedPasteboardManagerResponseProtocolInterface(v16);
      connection3 = [(UASharedPasteboardManager *)v2 connection];
      [connection3 setExportedInterface:v17];

      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x3032000000;
      v28[3] = __Block_byref_object_copy__1;
      v28[4] = __Block_byref_object_dispose__1;
      v19 = v2;
      v29 = v19;
      connection4 = [(UASharedPasteboardManager *)v19 connection];
      [connection4 setInterruptionHandler:&__block_literal_global_87];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __33__UASharedPasteboardManager_init__block_invoke_91;
      v27[3] = &unk_2785C3FF8;
      v27[4] = v28;
      connection5 = [(UASharedPasteboardManager *)v19 connection];
      [connection5 setInvalidationHandler:v27];

      connection6 = [(UASharedPasteboardManager *)v19 connection];
      [connection6 resume];

      _Block_object_dispose(v28, 8);
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    [(UASharedPasteboardManager *)v2 setControllSyncObject:uUID];

    [(UASharedPasteboardManager *)v2 setUpdateScheduled:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__UASharedPasteboardManager_init__block_invoke_93;
    block[3] = &unk_2785C3D18;
    v26 = v2;
    if (init_sRegisterForReconnectionMessageOnce != -1)
    {
      dispatch_once(&init_sRegisterForReconnectionMessageOnce, block);
    }
  }

  return v2;
}

void __33__UASharedPasteboardManager_init__block_invoke()
{
  v0 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_226A4E000, v0, OS_LOG_TYPE_DEFAULT, "PBOARD CONNECTION INTURRUPTED", v1, 2u);
  }
}

void __33__UASharedPasteboardManager_init__block_invoke_91(uint64_t a1)
{
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_DEFAULT, "PBOARD CONNECTION INVALIDATED: to useractivityd; all future attempts to use it will fail.", v7, 2u);
  }

  v3 = [*(*(*(a1 + 32) + 8) + 40) completionBlock];

  if (v3)
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) completionBlock];
    v4[2]();

    [*(*(*(a1 + 32) + 8) + 40) setCompletionBlock:0];
  }

  [*(*(*(a1 + 32) + 8) + 40) setConnection:0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __33__UASharedPasteboardManager_init__block_invoke_93(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__UASharedPasteboardManager_init__block_invoke_2;
  handler[3] = &unk_2785C4048;
  v4 = *(a1 + 32);
  notify_register_dispatch("com.apple.coreservices.useractivity.reconnection", &init_sRegisterForReconnectionNotificationToken, v2, handler);
}

void __33__UASharedPasteboardManager_init__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) controllSyncObject];
  objc_sync_enter(v3);
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_INFO, "Received reconnect notification", buf, 2u);
  }

  if ([*(a1 + 32) disableCount] < 1)
  {
    v17 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_INFO, "No need to reconnect", buf, 2u);
    }
  }

  else
  {
    v5 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "Client has disable count > 0, reconnecting", buf, 2u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v6 = objc_alloc(MEMORY[0x277CCAE80]);
    v7 = UASharedPasteboardControllServiceName();
    v8 = [v6 initWithMachServiceName:v7 options:0];
    [*(a1 + 32) setControllConnection:v8];

    v10 = _UAGetSharedPasteboardControllProtocolInterface(v9);
    v11 = [*(a1 + 32) controllConnection];
    [v11 setRemoteObjectInterface:v10];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __33__UASharedPasteboardManager_init__block_invoke_95;
    v19[3] = &unk_2785C4020;
    objc_copyWeak(&v20, buf);
    v12 = [*(a1 + 32) controllConnection];
    [v12 setInvalidationHandler:v19];

    v13 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "Resuming connection", v18, 2u);
    }

    v14 = [*(a1 + 32) controllConnection];
    [v14 resume];

    v15 = [*(a1 + 32) controllConnection];
    v16 = [v15 remoteObjectProxy];
    [v16 startConnection:getpid()];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v3);

  objc_autoreleasePoolPop(v2);
}

void __33__UASharedPasteboardManager_init__block_invoke_95(uint64_t a1)
{
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "Controll connection invalidated, should reconnect when UA launches again", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setControllConnection:0];
}

- (void)dealloc
{
  connection = [(UASharedPasteboardManager *)self connection];
  [connection invalidate];

  controllConnection = [(UASharedPasteboardManager *)self controllConnection];
  [controllConnection invalidate];

  v5.receiver = self;
  v5.super_class = UASharedPasteboardManager;
  [(UASharedPasteboardManager *)&v5 dealloc];
}

- (void)startPreventingPasteboardSharing
{
  v22 = *MEMORY[0x277D85DE8];
  controllSyncObject = [(UASharedPasteboardManager *)self controllSyncObject];
  objc_sync_enter(controllSyncObject);
  [(UASharedPasteboardManager *)self setDisableCount:[(UASharedPasteboardManager *)self disableCount]+ 1];
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [(UASharedPasteboardManager *)self disableCount];
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "Calling in to disable UC, count: %d", &buf, 8u);
  }

  controllConnection = [(UASharedPasteboardManager *)self controllConnection];
  v6 = controllConnection == 0;

  if (v6)
  {
    objc_initWeak(&buf, self);
    v7 = objc_alloc(MEMORY[0x277CCAE80]);
    v8 = UASharedPasteboardControllServiceName();
    v9 = [v7 initWithMachServiceName:v8 options:0];
    [(UASharedPasteboardManager *)self setControllConnection:v9];

    v11 = _UAGetSharedPasteboardControllProtocolInterface(v10);
    controllConnection2 = [(UASharedPasteboardManager *)self controllConnection];
    [controllConnection2 setRemoteObjectInterface:v11];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__UASharedPasteboardManager_startPreventingPasteboardSharing__block_invoke;
    v19[3] = &unk_2785C4020;
    objc_copyWeak(&v20, &buf);
    controllConnection3 = [(UASharedPasteboardManager *)self controllConnection];
    [controllConnection3 setInvalidationHandler:v19];

    v14 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_INFO, "Resuming connection", v18, 2u);
    }

    controllConnection4 = [(UASharedPasteboardManager *)self controllConnection];
    [controllConnection4 resume];

    controllConnection5 = [(UASharedPasteboardManager *)self controllConnection];
    remoteObjectProxy = [controllConnection5 remoteObjectProxy];
    [remoteObjectProxy startConnection:getpid()];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&buf);
  }

  objc_sync_exit(controllSyncObject);
}

void __61__UASharedPasteboardManager_startPreventingPasteboardSharing__block_invoke(uint64_t a1)
{
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "Controll connection invalidated, should reconnect when UA launches again", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setControllConnection:0];
}

- (void)stopPreventingPasteboardSharing
{
  v8 = *MEMORY[0x277D85DE8];
  controllSyncObject = [(UASharedPasteboardManager *)self controllSyncObject];
  objc_sync_enter(controllSyncObject);
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [(UASharedPasteboardManager *)self disableCount];
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "Calling in to cancel disable, count: %d", v7, 8u);
  }

  if ([(UASharedPasteboardManager *)self disableCount]>= 1)
  {
    [(UASharedPasteboardManager *)self setDisableCount:[(UASharedPasteboardManager *)self disableCount]- 1];
    if (![(UASharedPasteboardManager *)self disableCount])
    {
      v5 = _uaGetLogForCategory(@"pasteboard-client");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating connection, count is 0", v7, 2u);
      }

      controllConnection = [(UASharedPasteboardManager *)self controllConnection];
      [controllConnection invalidate];

      [(UASharedPasteboardManager *)self setControllConnection:0];
    }
  }

  objc_sync_exit(controllSyncObject);
}

- (BOOL)typeIsDisallowedForSending:(id)sending
{
  v22 = *MEMORY[0x277D85DE8];
  sendingCopy = sending;
  if (sendingCopy)
  {
    disallowedTypesForSending = [(UASharedPasteboardManager *)self disallowedTypesForSending];
    v6 = [disallowedTypesForSending containsObject:sendingCopy];

    if (v6)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      disallowedTypesForSending2 = [(UASharedPasteboardManager *)self disallowedTypesForSending];
      v7 = [disallowedTypesForSending2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(disallowedTypesForSending2);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:sendingCopy];
            v13 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v11];
            v14 = v13;
            if (v12)
            {
              v15 = v13 == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15 && [v12 conformsToType:v13])
            {

              LOBYTE(v7) = 1;
              goto LABEL_19;
            }
          }

          v7 = [disallowedTypesForSending2 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)typeIsDisallowedForReceiving:(id)receiving
{
  v22 = *MEMORY[0x277D85DE8];
  receivingCopy = receiving;
  if (receivingCopy)
  {
    disallowedTypesForReceiving = [(UASharedPasteboardManager *)self disallowedTypesForReceiving];
    v6 = [disallowedTypesForReceiving containsObject:receivingCopy];

    if (v6)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      disallowedTypesForReceiving2 = [(UASharedPasteboardManager *)self disallowedTypesForReceiving];
      v7 = [disallowedTypesForReceiving2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(disallowedTypesForReceiving2);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:receivingCopy];
            v13 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v11];
            v14 = v13;
            if (v12)
            {
              v15 = v13 == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15 && [v12 conformsToType:v13])
            {

              LOBYTE(v7) = 1;
              goto LABEL_19;
            }
          }

          v7 = [disallowedTypesForReceiving2 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)addData:(id)data toItemAtIndex:(unint64_t)index generation:(unint64_t)generation
{
  v42 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    type = [dataCopy type];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:generation];
    *buf = 138412802;
    v37 = type;
    v38 = 2112;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_DEBUG, "Adding type: %@ to item: %@ in generation: %@", buf, 0x20u);
  }

  currentGeneration = [(UASharedPasteboardManager *)self currentGeneration];
  objc_sync_enter(currentGeneration);
  type2 = [dataCopy type];
  v15 = [(UASharedPasteboardManager *)self typeIsDisallowedForSending:type2];

  if (v15)
  {
    currentGeneration5 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(currentGeneration5, OS_LOG_TYPE_DEFAULT))
    {
      type3 = [dataCopy type];
      *buf = 138543362;
      v37 = type3;
      _os_log_impl(&dword_226A4E000, currentGeneration5, OS_LOG_TYPE_DEFAULT, "Ignoring disallowed type: %{public}@", buf, 0xCu);
    }

LABEL_9:
    v24 = 0;
    goto LABEL_13;
  }

  currentGeneration2 = [(UASharedPasteboardManager *)self currentGeneration];
  v19 = [currentGeneration2 generation] > generation;

  if (v19)
  {
    currentGeneration5 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(currentGeneration5, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:generation];
      v21 = MEMORY[0x277CCABB0];
      currentGeneration3 = [(UASharedPasteboardManager *)self currentGeneration];
      v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(currentGeneration3, "generation")}];
      *buf = 138543618;
      v37 = v20;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&dword_226A4E000, currentGeneration5, OS_LOG_TYPE_ERROR, "Ignoring item, new generation (%{public}@) is older than current generation (%{public}@)", buf, 0x16u);
    }

    goto LABEL_9;
  }

  currentGeneration4 = [(UASharedPasteboardManager *)self currentGeneration];
  v26 = [currentGeneration4 generation] == generation;

  if (!v26)
  {
    v27 = [[UAPasteboardGeneration alloc] initWithGeneration:generation];
    [(UASharedPasteboardManager *)self setCurrentGeneration:v27];
  }

  currentGeneration5 = [(UASharedPasteboardManager *)self currentGeneration];
  v24 = [currentGeneration5 addType:dataCopy toItemAtIndex:index];
LABEL_13:

  [(UASharedPasteboardManager *)self setCurrentGenerationHasUpdates:([(UASharedPasteboardManager *)self currentGenerationHasUpdates]| v24) & 1];
  objc_sync_exit(currentGeneration);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(UASharedPasteboardManager *)selfCopy updateScheduled]&& (v24 & 1) != 0)
  {
    currentGeneration6 = [(UASharedPasteboardManager *)selfCopy currentGeneration];
    [(UASharedPasteboardManager *)selfCopy sendUpdateToServer:currentGeneration6];
    [(UASharedPasteboardManager *)selfCopy setUpdateScheduled:1];
    v30 = dispatch_time(0, 50000000);
    v31 = dispatch_get_global_queue(25, 0);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __62__UASharedPasteboardManager_addData_toItemAtIndex_generation___block_invoke;
    v34[3] = &unk_2785C4070;
    v34[4] = selfCopy;
    v35 = currentGeneration6;
    v32 = currentGeneration6;
    dispatch_after(v30, v31, v34);
  }

  objc_sync_exit(selfCopy);

  return v24;
}

void __62__UASharedPasteboardManager_addData_toItemAtIndex_generation___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendUpdateToServer:*(a1 + 40)];
  [*(a1 + 32) setUpdateScheduled:0];

  objc_autoreleasePoolPop(v2);
}

- (void)sendUpdateToServer:(id)server
{
  v73 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  items = [serverCopy items];
  v4 = [items copy];

  generation = [serverCopy generation];
  getTypePaths = [serverCopy getTypePaths];
  v5 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    allTypes = [serverCopy allTypes];
    *buf = 138412290;
    v68 = allTypes;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEFAULT, "Sending pasteboard update to server: %@", buf, 0xCu);
  }

  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v63 = 0u;
  obj = v4;
  v48 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v48)
  {
    v46 = *v64;
    do
    {
      v7 = 0;
      do
      {
        if (*v64 != v46)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v49 = v7;
        v9 = *(*(&v63 + 1) + 8 * v7);
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v11 = v9;
        objc_sync_enter(v11);
        v53 = v11;
        types = [v11 types];
        v52 = [types count];

        objc_sync_exit(v53);
        if (v52)
        {
          for (i = 0; i != v52; ++i)
          {
            types2 = [v53 types];
            v55 = [types2 objectAtIndexedSubscript:i];

            v14 = objc_alloc_init(UASharedPasteboardTypeInfo);
            if ([v55 conformsToProtocol:&unk_283A69178])
            {
              uuid4 = v55;
              uuid = [uuid4 uuid];
              [(UASharedPasteboardTypeInfo *)v14 setUuid:uuid];

              if ([uuid4 preferFileRep])
              {
                [(UASharedPasteboardTypeInfo *)v14 setType:@"public.file-url"];
              }

              else
              {
                type = [uuid4 type];
                [(UASharedPasteboardTypeInfo *)v14 setType:type];
              }

              uuid2 = [uuid4 uuid];
              v23 = [getTypePaths objectForKeyedSubscript:uuid2];
              [(UASharedPasteboardTypeInfo *)v14 setTypeHint:v23];

              typeHint = [(UASharedPasteboardTypeInfo *)v14 typeHint];
              if (typeHint)
              {
                goto LABEL_17;
              }

              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_18;
              }

              v38 = _uaGetLogForCategory(@"pasteboard-client");
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_226A4E000, v38, OS_LOG_TYPE_DEFAULT, "TypeHint nil, trying to get filename", buf, 2u);
              }

              getFileName = [uuid4 getFileName];
            }

            else
            {
              type2 = [v55 type];
              [(UASharedPasteboardTypeInfo *)v14 setType:type2];

              uuid3 = [v55 uuid];
              [(UASharedPasteboardTypeInfo *)v14 setUuid:uuid3];

              uuid4 = [v55 uuid];
              getFileName = [getTypePaths objectForKeyedSubscript:uuid4];
            }

            typeHint = getFileName;
            [(UASharedPasteboardTypeInfo *)v14 setTypeHint:getFileName];
LABEL_17:

LABEL_18:
            v24 = [v10 count];
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
            [(UASharedPasteboardTypeInfo *)v14 setIndex:v25];

            type3 = [(UASharedPasteboardTypeInfo *)v14 type];
            [v10 setObject:v14 forKey:type3];

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            typeAliases = [(UASharedPasteboardManager *)self typeAliases];
            type4 = [v55 type];
            v29 = [typeAliases objectForKeyedSubscript:type4];

            v30 = [v29 countByEnumeratingWithState:&v59 objects:v71 count:16];
            if (v30)
            {
              v31 = *v60;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v60 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = *(*(&v59 + 1) + 8 * j);
                  v34 = _uaGetLogForCategory(@"pasteboard-client");
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    type5 = [v55 type];
                    *buf = 138412546;
                    v68 = v33;
                    v69 = 2112;
                    v70 = type5;
                    _os_log_impl(&dword_226A4E000, v34, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Adding alias: %@ for type: %@", buf, 0x16u);
                  }

                  v36 = [(UASharedPasteboardTypeInfo *)v14 copy];
                  [v36 setType:v33];
                  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v24];
                  [v36 setIndex:v37];

                  [v10 setObject:v36 forKey:v33];
                }

                v30 = [v29 countByEnumeratingWithState:&v59 objects:v71 count:16];
              }

              while (v30);
            }
          }
        }

        v39 = objc_alloc_init(UASharedPasteboardItemInfo);
        [(UASharedPasteboardItemInfo *)v39 setTypes:v10];
        [v47 addObject:v39];

        v7 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v48);
  }

  v40 = objc_alloc_init(UASharedPasteboardInfo);
  [(UASharedPasteboardInfo *)v40 setItems:v47];
  serverQ = [(UASharedPasteboardManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__UASharedPasteboardManager_sendUpdateToServer___block_invoke;
  block[3] = &unk_2785C4098;
  block[4] = self;
  v57 = v40;
  v58 = generation;
  v42 = v40;
  dispatch_async(serverQ, block);
}

void __48__UASharedPasteboardManager_sendUpdateToServer___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_175_0];
  [v3 localPasteboardTypesDidChange:*(a1 + 40) forGeneration:*(a1 + 48)];

  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) currentGeneration];
    v6 = 134217984;
    v7 = [v5 generation];
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_INFO, "Did send update to server for generation: %lu", &v6, 0xCu);
  }
}

void __48__UASharedPasteboardManager_sendUpdateToServer___block_invoke_2()
{
  v0 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_226A4E000, v0, OS_LOG_TYPE_ERROR, "Error getting server connection", v1, 2u);
  }
}

- (void)clearLocalPasteboardInformation
{
  v3 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Clearing local pasteboard information", v4, 2u);
  }

  [(UASharedPasteboardManager *)self setCurrentGeneration:0];
  [(UASharedPasteboardManager *)self doClearLocalPasteboardInfo];
}

- (void)writeLocalPasteboardToFile:(id)file itemDir:(id)dir extension:(id)extension withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  dirCopy = dir;
  completionCopy = completion;
  if (extension)
  {
    extensionCopy = extension;
    v14 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = dirCopy;
      _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_INFO, "Consuming extension to gain access to %{public}@", buf, 0xCu);
    }

    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    bytes = [extensionCopy bytes];
    v17 = [extensionCopy length];

    v18 = [v15 initWithBytes:bytes length:v17 encoding:4];
    [v18 cStringUsingEncoding:4];
    extension = sandbox_extension_consume();
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__UASharedPasteboardManager_writeLocalPasteboardToFile_itemDir_extension_withCompletion___block_invoke;
  v20[3] = &unk_2785C40C0;
  v21 = completionCopy;
  extensionCopy2 = extension;
  v19 = completionCopy;
  [(UASharedPasteboardManager *)self writeLocalPasteboardToFile:fileCopy itemDir:dirCopy withCompletion:v20];
}

void __89__UASharedPasteboardManager_writeLocalPasteboardToFile_itemDir_extension_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
    if (*(a1 + 40))
    {
      sandbox_extension_release();
    }
  }
}

- (void)writeLocalPasteboardToFile:(id)file itemDir:(id)dir withCompletion:(id)completion
{
  fileCopy = file;
  dirCopy = dir;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__UASharedPasteboardManager_writeLocalPasteboardToFile_itemDir_withCompletion___block_invoke;
  v15[3] = &unk_2785C40E8;
  v15[4] = self;
  v16 = fileCopy;
  v17 = dirCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dirCopy;
  v14 = fileCopy;
  dispatch_async(v11, v15);
}

void __79__UASharedPasteboardManager_writeLocalPasteboardToFile_itemDir_withCompletion___block_invoke(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = +[UASharedPasteboardIRManager sharedIRManager];
    v6 = [v5 registeredConverters];
    *buf = 138543362;
    v32 = v6;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_INFO, "PBIR Converters: %{public}@", buf, 0xCu);
  }

  v7 = [a1[4] currentGeneration];
  objc_sync_enter(v7);
  v8 = [a1[4] currentGeneration];
  v9 = [v8 items];
  v10 = [v9 copy];

  [a1[4] setCurrentGenerationHasUpdates:0];
  objc_sync_exit(v7);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v27;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v11);
      }

      if (v13)
      {
        break;
      }

      v16 = *(*(&v26 + 1) + 8 * v15);
      v17 = objc_alloc_init(UASharedPasteboardItemInfo);
      v13 = [a1[4] serializeItem:v16 intoInfo:v17 withFile:a1[5] intoDir:a1[6]];
      [v3 addObject:v17];

      if (v12 == ++v15)
      {
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        if (!v13)
        {
          goto LABEL_16;
        }

LABEL_14:
        (*(a1[7] + 2))();
        goto LABEL_22;
      }
    }

    goto LABEL_14;
  }

LABEL_16:
  v18 = objc_alloc_init(UASharedPasteboardInfo);
  [(UASharedPasteboardInfo *)v18 setDataFile:a1[5]];
  if ([a1[5] offsetInFile] >> 31)
  {
    v19 = 0;
  }

  else
  {
    v19 = [a1[5] offsetInFile];
  }

  [(UASharedPasteboardInfo *)v18 setDataSize:v19];
  [(UASharedPasteboardInfo *)v18 setItems:v3];
  v20 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v20, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Queueing block to check for pasteboard changes", buf, 2u);
  }

  v21 = dispatch_get_global_queue(25, 0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__UASharedPasteboardManager_writeLocalPasteboardToFile_itemDir_withCompletion___block_invoke_178;
  v22[3] = &unk_2785C40E8;
  v22[4] = a1[4];
  v23 = v18;
  v24 = a1[6];
  v25 = a1[7];
  v13 = v18;
  dispatch_async(v21, v22);

LABEL_22:
  objc_autoreleasePoolPop(v2);
}

void __79__UASharedPasteboardManager_writeLocalPasteboardToFile_itemDir_withCompletion___block_invoke_178(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) pickupLocalChanges:*(a1 + 40) iterNumber:1 cloneDir:*(a1 + 48) completionHandler:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

- (void)pickupLocalChanges:(id)changes iterNumber:(int64_t)number cloneDir:(id)dir completionHandler:(id)handler
{
  numberCopy = number;
  v88 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  dirCopy = dir;
  handlerCopy = handler;
  v8 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v83 = numberCopy;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "[Local Pasteboard] Checking for pasteboard updates count: %ld", buf, 0xCu);
  }

  currentGeneration = [(UASharedPasteboardManager *)self currentGeneration];
  objc_sync_enter(currentGeneration);
  if ([(UASharedPasteboardManager *)self currentGenerationHasUpdates])
  {
    [(UASharedPasteboardManager *)self setCurrentGenerationHasUpdates:0];
    currentGeneration2 = [(UASharedPasteboardManager *)self currentGeneration];
    items = [currentGeneration2 items];
    v55 = [items copy];

    objc_sync_exit(currentGeneration);
    v12 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Pasteboard has changes, picking them up", buf, 2u);
    }

    [(UASharedPasteboardManager *)self setCurrentGenerationHasUpdates:0];
    if ([v55 count])
    {
      v59 = 0;
      v13 = 0;
      while (!v13)
      {
        v57 = [v55 objectAtIndexedSubscript:v59];
        items2 = [changesCopy items];
        v15 = [items2 count] > v59;

        if (v15)
        {
          items3 = [changesCopy items];
          v67 = [items3 objectAtIndexedSubscript:v59];

          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          obj = [v57 types];
          v63 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v63)
          {
            v61 = *v79;
LABEL_12:
            v17 = 0;
            while (1)
            {
              if (*v79 != v61)
              {
                v18 = v17;
                objc_enumerationMutation(obj);
                v17 = v18;
              }

              v66 = v17;
              v68 = *(*(&v78 + 1) + 8 * v17);
              types = [(UASharedPasteboardItemInfo *)v67 types];
              allKeys = [types allKeys];
              type = [v68 type];
              v22 = [allKeys containsObject:type];

              if ((v22 & 1) == 0)
              {
                v23 = objc_alloc_init(UASharedPasteboardTypeInfo);
                if ([v68 conformsToProtocol:&unk_283A69178] && objc_msgSend(v68, "preferFileRep"))
                {
                  dataFile = [changesCopy dataFile];
                  v62 = [(UASharedPasteboardManager *)self serializeFileType:v68 intoInfo:v23 withFile:dataFile intoDir:dirCopy];
                }

                else
                {
                  dataFile = [changesCopy dataFile];
                  v62 = [(UASharedPasteboardManager *)self serializeType:v68 intoInfo:v23 withFile:dataFile];
                }

                dataFile2 = [changesCopy dataFile];
                [dataFile2 synchronizeFile];

                types2 = [(UASharedPasteboardItemInfo *)v67 types];
                v27 = [types2 mutableCopy];

                v28 = [v27 count];
                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
                [(UASharedPasteboardTypeInfo *)v23 setIndex:v29];

                type2 = [v68 type];
                [v27 setObject:v23 forKey:type2];

                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                typeAliases = [(UASharedPasteboardManager *)self typeAliases];
                type3 = [(UASharedPasteboardTypeInfo *)v23 type];
                v33 = [typeAliases objectForKeyedSubscript:type3];

                v34 = [v33 countByEnumeratingWithState:&v74 objects:v86 count:16];
                if (v34)
                {
                  v35 = *v75;
                  do
                  {
                    for (i = 0; i != v34; ++i)
                    {
                      if (*v75 != v35)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v37 = *(*(&v74 + 1) + 8 * i);
                      v38 = _uaGetLogForCategory(@"pasteboard-client");
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                      {
                        type4 = [v68 type];
                        *buf = 138412546;
                        v83 = v37;
                        v84 = 2112;
                        v85 = type4;
                        _os_log_impl(&dword_226A4E000, v38, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Adding alias: %@ for type: %@", buf, 0x16u);
                      }

                      v40 = [(UASharedPasteboardTypeInfo *)v23 copy];
                      [v40 setType:v37];
                      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v28];
                      [v40 setIndex:v41];

                      [v27 setObject:v40 forKey:v37];
                    }

                    v34 = [v33 countByEnumeratingWithState:&v74 objects:v86 count:16];
                  }

                  while (v34);
                }

                [(UASharedPasteboardItemInfo *)v67 setTypes:v27];
                if (v62)
                {
                  break;
                }
              }

              v17 = v66 + 1;
              if (v66 + 1 == v63)
              {
                v63 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
                if (v63)
                {
                  goto LABEL_12;
                }

                goto LABEL_32;
              }
            }
          }

          else
          {
LABEL_32:
            v62 = 0;
          }
        }

        else
        {
          v67 = objc_alloc_init(UASharedPasteboardItemInfo);
          dataFile3 = [changesCopy dataFile];
          v62 = [(UASharedPasteboardManager *)self serializeItem:v57 intoInfo:v67 withFile:dataFile3 intoDir:dirCopy];

          obj = [changesCopy items];
          v43 = [obj arrayByAddingObject:v67];
          [changesCopy setItems:v43];
        }

        v44 = [v55 count];
        ++v59;
        v13 = v62;
        if (v44 <= v59)
        {
          if (!v62)
          {
            goto LABEL_41;
          }

          break;
        }
      }

      v45 = v13;
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
LABEL_41:
      dataFile4 = [changesCopy dataFile];
      if ([dataFile4 offsetInFile] >> 31)
      {
        [changesCopy setDataSize:0];
      }

      else
      {
        dataFile5 = [changesCopy dataFile];
        [changesCopy setDataSize:{objc_msgSend(dataFile5, "offsetInFile")}];
      }

      v50 = _uaGetLogForCategory(@"pasteboard-client");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v50, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Queueing block to check for pasteboard changes", buf, 2u);
      }

      v51 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__UASharedPasteboardManager_pickupLocalChanges_iterNumber_cloneDir_completionHandler___block_invoke;
      block[3] = &unk_2785C4110;
      block[4] = self;
      v70 = changesCopy;
      v73 = v53;
      v71 = dirCopy;
      v72 = handlerCopy;
      dispatch_async(v51, block);
    }
  }

  else
  {
    objc_sync_exit(currentGeneration);

    v46 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v83 = changesCopy;
      _os_log_impl(&dword_226A4E000, v46, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] No updates, sending pasteboard info to server: %@", buf, 0xCu);
    }

    (handlerCopy[2])(handlerCopy, changesCopy, 0);
    localPasteboardWasFetched = [(UASharedPasteboardManager *)self localPasteboardWasFetched];

    if (localPasteboardWasFetched)
    {
      localPasteboardWasFetched2 = [(UASharedPasteboardManager *)self localPasteboardWasFetched];
      localPasteboardWasFetched2[2]();
    }
  }
}

void __86__UASharedPasteboardManager_pickupLocalChanges_iterNumber_cloneDir_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) pickupLocalChanges:*(a1 + 40) iterNumber:*(a1 + 64) + 1 cloneDir:*(a1 + 48) completionHandler:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

- (id)serializeItem:(id)item intoInfo:(id)info withFile:(id)file intoDir:(id)dir
{
  v52 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  infoCopy = info;
  fileCopy = file;
  dirCopy = dir;
  v9 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    types = [itemCopy types];
    *buf = 138412546;
    v49 = itemCopy;
    v50 = 2112;
    v51 = types;
    _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_INFO, "[Local Pasteboard] Serializing item: %@ with types: %@", buf, 0x16u);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  types2 = [itemCopy types];
  v13 = [types2 count] == 0;

  if (v13)
  {
    v32 = 0;
  }

  else
  {
    v41 = 0;
    do
    {
      types3 = [itemCopy types];
      v42 = [types3 objectAtIndexedSubscript:v41];

      v15 = objc_alloc_init(UASharedPasteboardTypeInfo);
      if ([v42 conformsToProtocol:&unk_283A69178] && objc_msgSend(v42, "preferFileRep"))
      {
        v38 = [(UASharedPasteboardManager *)self serializeFileType:v42 intoInfo:v15 withFile:fileCopy intoDir:dirCopy];
      }

      else
      {
        v38 = [(UASharedPasteboardManager *)self serializeType:v42 intoInfo:v15 withFile:fileCopy];
      }

      v16 = [v11 count];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      [(UASharedPasteboardTypeInfo *)v15 setIndex:v17];

      type = [(UASharedPasteboardTypeInfo *)v15 type];
      [v11 setObject:v15 forKey:type];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      typeAliases = [(UASharedPasteboardManager *)self typeAliases];
      type2 = [(UASharedPasteboardTypeInfo *)v15 type];
      v21 = [typeAliases objectForKeyedSubscript:type2];

      v22 = [v21 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v22)
      {
        v23 = *v44;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v43 + 1) + 8 * i);
            v26 = _uaGetLogForCategory(@"pasteboard-client");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              type3 = [v42 type];
              *buf = 138412546;
              v49 = v25;
              v50 = 2112;
              v51 = type3;
              _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Adding alias: %@ for type: %@", buf, 0x16u);
            }

            v28 = [(UASharedPasteboardTypeInfo *)v15 copy];
            [v28 setType:v25];
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v16];
            [v28 setIndex:v29];

            [v11 setObject:v28 forKey:v25];
          }

          v22 = [v21 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v22);
      }

      types4 = [itemCopy types];
      v31 = [types4 count] > ++v41;

      v32 = v38;
      if (v38)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31;
      }
    }

    while (v33);
  }

  [fileCopy synchronizeFile];
  [infoCopy setTypes:v11];

  return v32;
}

- (id)serializeFileType:(id)type intoInfo:(id)info withFile:(id)file intoDir:(id)dir
{
  v47 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  infoCopy = info;
  fileCopy = file;
  dirCopy = dir;
  v13 = dispatch_group_create();
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = 0;
  [infoCopy setType:@"public.file-url"];
  uuid = [typeCopy uuid];
  [infoCopy setUuid:uuid];

  [infoCopy setPreferFileRep:1];
  if (objc_opt_respondsToSelector())
  {
    getFileName = [typeCopy getFileName];
    [infoCopy setTypeHint:getFileName];
  }

  v16 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    uuid2 = [typeCopy uuid];
    type = [typeCopy type];
    *buf = 138412546;
    v44 = uuid2;
    v45 = 2112;
    v46 = type;
    _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_INFO, "[Local Pasteboard] Serializing type as file: %@-%@", buf, 0x16u);
  }

  v19 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = dirCopy;
    _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_INFO, "[Local Pasteboard] Clone Dir: %@", buf, 0xCu);
  }

  v20 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v20, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Enter Type Group", buf, 2u);
  }

  dispatch_group_enter(v13);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __73__UASharedPasteboardManager_serializeFileType_intoInfo_withFile_intoDir___block_invoke;
  v30[3] = &unk_2785C4138;
  v21 = typeCopy;
  v31 = v21;
  v36 = &v37;
  v22 = dirCopy;
  v32 = v22;
  v23 = infoCopy;
  v33 = v23;
  v24 = fileCopy;
  v34 = v24;
  v25 = v13;
  v35 = v25;
  [v21 getDataFileWithCompletionBlock:v30];
  v26 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Waiting on Type Group", buf, 2u);
  }

  v27 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v25, v27);
  v28 = v38[5];

  _Block_object_dispose(&v37, 8);

  return v28;
}

void __73__UASharedPasteboardManager_serializeFileType_intoInfo_withFile_intoDir___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _uaGetLogForCategory(@"pasteboard-client");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:0];
      v13 = *(*(a1 + 72) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
      goto LABEL_31;
    }

    v8 = [*(a1 + 32) type];
    *buf = 138412546;
    v53 = v8;
    v54 = 2112;
    v55 = v6;
    v9 = "[Local Pasteboard] ERROR: error getting type data for type[%@]: %@";
    v10 = v7;
    v11 = 22;
LABEL_4:
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);

    goto LABEL_5;
  }

  if (!v5)
  {
    v7 = _uaGetLogForCategory(@"pasteboard-client");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v8 = [*(a1 + 32) type];
    *buf = 138412290;
    v53 = v8;
    v9 = "[Local Pasteboard] ERROR: url is nil for type[%@]";
    v10 = v7;
    v11 = 12;
    goto LABEL_4;
  }

  v14 = [v5 lastPathComponent];
  v15 = [*(a1 + 40) URLByAppendingPathComponent:v14];
  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [v5 path];
  v18 = [v16 isReadableFileAtPath:v17];

  if (v18)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v15 path];
    v21 = [v19 fileExistsAtPath:v20];

    if (v21)
    {
      v22 = [MEMORY[0x277CCAA00] defaultManager];
      v51 = 0;
      v23 = [v22 removeItemAtURL:v15 error:&v51];
      v24 = v51;

      if ((v23 & 1) == 0)
      {
        v25 = _uaGetLogForCategory(@"pasteboard-client");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = v24;
          _os_log_impl(&dword_226A4E000, v25, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: error removing existing item from clone dir: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = [MEMORY[0x277CCAA00] defaultManager];
    v50 = v24;
    v27 = [v26 copyItemAtURL:v5 toURL:v15 error:&v50];
    v28 = v50;

    if (v28)
    {
      v29 = _uaGetLogForCategory(@"pasteboard-client");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [*(a1 + 32) type];
        *buf = 138412546;
        v53 = v30;
        v54 = 2112;
        v55 = v28;
        v31 = "[Local pasteboard] ERROR: error copying file for type[%@]: %@";
        v32 = v29;
        v33 = 22;
LABEL_27:
        _os_log_impl(&dword_226A4E000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
      }
    }

    else
    {
      if (v27)
      {
        v34 = [v15 absoluteString];
        v35 = [v34 dataUsingEncoding:4];

        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 56), "offsetInFile")}];
        [*(a1 + 48) setOffset:v36];

        [*(a1 + 48) setSize:{objc_msgSend(v35, "length")}];
        v37 = *(a1 + 56);
        v49 = 0;
        v38 = [v37 writeData:v35 error:&v49];
        v39 = v49;
        if ((v38 & 1) == 0)
        {
          v40 = _uaGetLogForCategory(@"pasteboard-client");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = [*(a1 + 32) type];
            *buf = 138543618;
            v53 = v41;
            v54 = 2114;
            v55 = v39;
            _os_log_impl(&dword_226A4E000, v40, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: Failed to write type (%{public}@) into file: %{public}@", buf, 0x16u);
          }

          v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-128 userInfo:0];
          v43 = *(*(a1 + 72) + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = v42;
        }

        goto LABEL_29;
      }

      v29 = _uaGetLogForCategory(@"pasteboard-client");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [*(a1 + 32) type];
        *buf = 138412290;
        v53 = v30;
        v31 = "[Local Pasteboard] ERROR: Failed to copy file for type[%@] but no error object";
        v32 = v29;
        v33 = 12;
        goto LABEL_27;
      }
    }

    v45 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:0];
    v46 = *(*(a1 + 72) + 8);
    v35 = *(v46 + 40);
    *(v46 + 40) = v45;
LABEL_29:
  }

LABEL_31:
  v47 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v47, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Leave Type Group", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 64));
  v48 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v48, OS_LOG_TYPE_INFO, "[Local Pasteboard] Done writing pasteboard type", buf, 2u);
  }
}

- (id)serializeType:(id)type intoInfo:(id)info withFile:(id)file
{
  v42 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  infoCopy = info;
  fileCopy = file;
  v11 = dispatch_group_create();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  type = [typeCopy type];
  [infoCopy setType:type];

  uuid = [typeCopy uuid];
  [infoCopy setUuid:uuid];

  v14 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    uuid2 = [typeCopy uuid];
    type2 = [typeCopy type];
    *buf = 138412546;
    v39 = uuid2;
    v40 = 2112;
    v41 = type2;
    _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_INFO, "[Local Pasteboard] Serializing type: %@-%@", buf, 0x16u);
  }

  v17 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Enter Type Group", buf, 2u);
  }

  dispatch_group_enter(v11);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__UASharedPasteboardManager_serializeType_intoInfo_withFile___block_invoke;
  v26[3] = &unk_2785C4188;
  v26[4] = self;
  v18 = typeCopy;
  v27 = v18;
  v31 = &v32;
  v19 = infoCopy;
  v28 = v19;
  v20 = fileCopy;
  v29 = v20;
  v21 = v11;
  v30 = v21;
  [v18 getDataWithCompletionBlock:v26];
  v22 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v22, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Waiting on Type Group", buf, 2u);
  }

  v23 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v21, v23);
  v24 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v24;
}

void __61__UASharedPasteboardManager_serializeType_intoInfo_withFile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) pasteboardReadQ];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__UASharedPasteboardManager_serializeType_intoInfo_withFile___block_invoke_2;
  v14[3] = &unk_2785C4160;
  v15 = v5;
  v16 = v6;
  v8 = *(a1 + 40);
  v20 = *(a1 + 72);
  v9 = *(a1 + 48);
  *&v10 = *(a1 + 56);
  *(&v10 + 1) = *(a1 + 32);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v17 = v11;
  v18 = v10;
  v19 = *(a1 + 64);
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, v14);
}

void __61__UASharedPasteboardManager_serializeType_intoInfo_withFile___block_invoke_2(uint64_t a1)
{
  v109 = *MEMORY[0x277D85DE8];
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 hasBytesAvailable];
    v5 = *(a1 + 40);
    *buf = 138412802;
    v106 = v3;
    v107 = 1024;
    *v108 = v4;
    *&v108[4] = 2112;
    *&v108[6] = v5;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "[Local Pasteboard] Got data stream: %@(%d) with error: %@", buf, 0x1Cu);
  }

  if (*(a1 + 40))
  {
    v6 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 48) type];
      v8 = *(a1 + 40);
      *buf = 138412546;
      v106 = v7;
      v107 = 2112;
      *v108 = v8;
      _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: error getting type data for type[%@]: %@", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:0];
    v10 = *(*(a1 + 88) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    [*(a1 + 32) open];
    v89 = &v89;
    v91 = &v88;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 64), "offsetInFile")}];
    [*(a1 + 56) setOffset:v12];

    v13 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 48) type];
      v15 = [*(a1 + 56) offset];
      *buf = 138412546;
      v106 = v14;
      v107 = 2112;
      *v108 = v15;
      _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "[Local Pasteboard] Adding type (%@) data to file at offset: %@", buf, 0x16u);
    }

    v16 = +[UASharedPasteboardIRManager sharedIRManager];
    v17 = [*(a1 + 48) type];
    v18 = [v16 converterForType:v17];

    v19 = _uaGetLogForCategory(@"pasteboard-client");
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v20)
      {
        v21 = [*(a1 + 48) type];
        v22 = objc_opt_class();
        *buf = 138543618;
        v106 = v21;
        v107 = 2112;
        *v108 = v22;
        v23 = v22;
        _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_INFO, "[Local Pasteboard] Found converter for type: %{public}@ -> %@", buf, 0x16u);
      }

      v95 = objc_alloc_init(MEMORY[0x277CBEB28]);
    }

    else
    {
      if (v20)
      {
        v24 = [*(a1 + 48) type];
        *buf = 138543362;
        v106 = v24;
        _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_INFO, "[Local Pasteboard] No converter for type: %{public}@", buf, 0xCu);
      }

      v95 = 0;
    }

    v25 = [*(a1 + 72) bomCheckTypes];
    v26 = [*(a1 + 48) type];
    v27 = [v25 containsObject:v26];

    v94 = @"UAContinuityErrorDomain";
    *&v28 = 138543618;
    v93 = v28;
    v29 = v91;
    while (1)
    {
      v30 = [*(a1 + 32) read:v29 maxLength:1024];
      v31 = v30;
      if (v30 < 1)
      {
        break;
      }

      if (v27)
      {
        v92 = v30;
        v32 = [*(a1 + 72) typeBOMs];
        v33 = [*(a1 + 48) type];
        v34 = [v32 objectForKeyedSubscript:v33];

        if ([v34 count])
        {
          v35 = 0;
          while (1)
          {
            v36 = v29[v35];
            v37 = [v34 objectAtIndexedSubscript:v35];
            v38 = v34;
            v39 = [v37 shortValue];

            if (v36 != v39)
            {
              break;
            }

            ++v35;
            v34 = v38;
            if ([v38 count] <= v35)
            {
              goto LABEL_45;
            }
          }

          v40 = [v38 count];
          v34 = v38;
          if (v40 >= 1)
          {
            v41 = (v40 & 0x7FFFFFFF) - 1;
            v42 = v29;
            while (1)
            {
              v43 = *v42++;
              v44 = [v34 objectAtIndexedSubscript:v41];
              v45 = v34;
              v46 = [v44 shortValue];

              v47 = v43 == v46;
              v34 = v45;
              if (!v47)
              {
                break;
              }

              if (--v41 == -1)
              {
                goto LABEL_45;
              }
            }
          }

          v103 = 0;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v90 = v34;
          v48 = v34;
          v49 = [v48 countByEnumeratingWithState:&v99 objects:v104 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v100;
            do
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v100 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v103 = [*(*(&v99 + 1) + 8 * i) shortValue];
                if (v18)
                {
                  [v95 appendBytes:&v103 length:1];
                }

                else
                {
                  v53 = *(a1 + 64);
                  v54 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v103 length:1 freeWhenDone:0];
                  v98 = 0;
                  v55 = [v53 writeData:v54 error:&v98];
                  v56 = v98;

                  if ((v55 & 1) == 0)
                  {
                    v57 = _uaGetLogForCategory(@"pasteboard-client");
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                    {
                      v58 = [*(a1 + 48) type];
                      *buf = v93;
                      v106 = v58;
                      v107 = 2114;
                      *v108 = v56;
                      _os_log_impl(&dword_226A4E000, v57, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: Failed to write type (%{public}@) into file: %{public}@", buf, 0x16u);
                    }

                    v59 = [MEMORY[0x277CCA9B8] errorWithDomain:v94 code:-128 userInfo:0];
                    v60 = *(*(a1 + 88) + 8);
                    v61 = *(v60 + 40);
                    *(v60 + 40) = v59;
                  }
                }

                [*(a1 + 56) setSize:{objc_msgSend(*(a1 + 56), "size") + 1}];
              }

              v50 = [v48 countByEnumeratingWithState:&v99 objects:v104 count:16];
            }

            while (v50);
          }

          v34 = v90;
          v29 = v91;
        }

LABEL_45:

        v31 = v92;
      }

      [*(a1 + 56) setSize:{objc_msgSend(*(a1 + 56), "size") + v31}];
      if (v18)
      {
        [v95 appendBytes:v29 length:v31];
      }

      else
      {
        v62 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v29 length:v31 freeWhenDone:0];
        v63 = *(a1 + 64);
        v97 = 0;
        v64 = [v63 writeData:v62 error:&v97];
        v65 = v97;
        if ((v64 & 1) == 0)
        {
          v66 = _uaGetLogForCategory(@"pasteboard-client");
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = [*(a1 + 48) type];
            *buf = v93;
            v106 = v67;
            v107 = 2114;
            *v108 = v65;
            _os_log_impl(&dword_226A4E000, v66, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: Failed to write type (%{public}@) into file: %{public}@", buf, 0x16u);
          }

          v68 = [MEMORY[0x277CCA9B8] errorWithDomain:v94 code:-128 userInfo:0];
          v69 = *(*(a1 + 88) + 8);
          v70 = *(v69 + 40);
          *(v69 + 40) = v68;
        }
      }

      v27 = 0;
      if (*(*(*(a1 + 88) + 8) + 40))
      {
        goto LABEL_59;
      }
    }

    if (v30 < 0)
    {
      v71 = _uaGetLogForCategory(@"pasteboard-client");
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = [*(a1 + 32) streamError];
        *buf = 138543362;
        v106 = v72;
        _os_log_impl(&dword_226A4E000, v71, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Stream Error: %{public}@", buf, 0xCu);
      }
    }

LABEL_59:
    if (v18)
    {
      v73 = _uaGetLogForCategory(@"pasteboard-client");
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v73, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Converting data from platform to IR for type", buf, 2u);
      }

      v74 = [v18 convertPlatformDataToIR:v95];
      [*(a1 + 56) setSize:{objc_msgSend(v74, "length")}];
      v75 = *(a1 + 64);
      v96 = 0;
      v76 = [v75 writeData:v74 error:&v96];
      v77 = v96;
      if ((v76 & 1) == 0)
      {
        v78 = _uaGetLogForCategory(@"pasteboard-client");
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = [*(a1 + 48) type];
          *buf = v93;
          v106 = v79;
          v107 = 2114;
          *v108 = v77;
          _os_log_impl(&dword_226A4E000, v78, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: Failed to write type (%{public}@) into file: %{public}@", buf, 0x16u);
        }

        v80 = [MEMORY[0x277CCA9B8] errorWithDomain:v94 code:-128 userInfo:0];
        v81 = *(*(a1 + 88) + 8);
        v82 = *(v81 + 40);
        *(v81 + 40) = v80;
      }
    }

    v83 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      v84 = [*(a1 + 56) type];
      v85 = [*(a1 + 56) size];
      *buf = 138412546;
      v106 = v84;
      v107 = 2048;
      *v108 = v85;
      _os_log_impl(&dword_226A4E000, v83, OS_LOG_TYPE_INFO, "[Local Pasteboard] Data length written for type %@: %ld", buf, 0x16u);
    }
  }

  v86 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v86, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Leave Type Group", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 80));
  v87 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v87, OS_LOG_TYPE_INFO, "[Local Pasteboard] Done writing pasteboard type", buf, 2u);
  }
}

- (BOOL)isRemotePasteboardAvailable
{
  v3 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Requesting remote status from server", buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__UASharedPasteboardManager_isRemotePasteboardAvailable__block_invoke;
  v9[3] = &unk_2785C41B0;
  v11 = &v13;
  v5 = v3;
  v10 = v5;
  [(UASharedPasteboardManager *)self fetchPasteboardStatus:v9];
  v6 = dispatch_time(0, 100000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

intptr_t __56__UASharedPasteboardManager_isRemotePasteboardAvailable__block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Got remote status: %@", &v7, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)requestRemotePasteboardTypesForProcess:(int)process withCompletion:(id)completion
{
  completionCopy = completion;
  serverQ = [(UASharedPasteboardManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__UASharedPasteboardManager_requestRemotePasteboardTypesForProcess_withCompletion___block_invoke;
  block[3] = &unk_2785C4228;
  block[4] = self;
  v10 = completionCopy;
  processCopy = process;
  v8 = completionCopy;
  dispatch_async(serverQ, block);
}

void __83__UASharedPasteboardManager_requestRemotePasteboardTypesForProcess_withCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__UASharedPasteboardManager_requestRemotePasteboardTypesForProcess_withCompletion___block_invoke_2;
  v8[3] = &unk_2785C41D8;
  v9 = *(a1 + 40);
  [*(a1 + 32) setCompletionBlock:v8];
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Requesting remote pasteboard types for process: %d", buf, 8u);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__UASharedPasteboardManager_requestRemotePasteboardTypesForProcess_withCompletion___block_invoke_192;
  v6[3] = &unk_2785C4200;
  v6[4] = v4;
  v7 = *(a1 + 40);
  [v4 fetchPasteboardTypesForProcess:v5 withCompletion:v6];
}

void __83__UASharedPasteboardManager_requestRemotePasteboardTypesForProcess_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Connection to useractivityd inturrupted with outstanding type request", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-126 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __83__UASharedPasteboardManager_requestRemotePasteboardTypesForProcess_withCompletion___block_invoke_192(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27 = a3;
  if (v27)
  {
    v4 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = v27;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Type Fetch Error: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) setCompletionBlock:0];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v26;
      _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "[Local Pasteboard] Received remote pasteboard info: %@", buf, 0xCu);
    }

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [(UAPasteboardFileChunkItemProvider *)v26 items];
    v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v31)
    {
      v29 = *v39;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v38 + 1) + 8 * i);
          v7 = objc_alloc_init(UAPasteboardItem);
          v8 = [v6 types];
          v9 = [v8 allValues];
          v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_197];

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v12)
          {
            v13 = *v35;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v35 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v34 + 1) + 8 * j);
                v16 = [v15 type];
                if (([*(a1 + 32) typeIsDisallowedForReceiving:v16] & 1) == 0)
                {
                  if ([v16 isEqualToString:@"public.file-url"])
                  {
                    v17 = [v15 typeHint];

                    v18 = MEMORY[0x277CBEBC0];
                    if (v17)
                    {
                      v19 = [v15 typeHint];
                      v20 = [v18 fileURLWithPath:v19];
                    }

                    else
                    {
                      v19 = [v15 uuid];
                      v21 = [v19 UUIDString];
                      v20 = [v18 fileURLWithPath:v21];
                    }

                    v22 = _uaGetLogForCategory(@"pasteboard-client");
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138477827;
                      v45 = v20;
                      _os_log_impl(&dword_226A4E000, v22, OS_LOG_TYPE_INFO, "[Local Pasteboard] Using hintURL for file-url type: %{private}@", buf, 0xCu);
                    }

                    v23 = [[UAPasteboardFileItemProvider alloc] initWithURL:v20 sandboxExtension:0];
                    [(UAPasteboardItem *)v7 addType:v23];
                  }

                  else
                  {
                    v20 = -[UAPasteboardFileChunkItemProvider initWithType:fileHandle:offsetInFile:size:]([UAPasteboardFileChunkItemProvider alloc], "initWithType:fileHandle:offsetInFile:size:", v16, 0, 0, [v15 size]);
                    [(UAPasteboardItem *)v7 addType:v20];
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v12);
          }

          v24 = [[UAPasteboardFileChunkItemProvider alloc] initWithType:@"com.apple.is-remote-clipboard" fileHandle:0 offsetInFile:0 size:0];
          [(UAPasteboardItem *)v7 addType:v24];
          [(UAPasteboardFileChunkItemProvider *)v30 addObject:v7];
        }

        v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v31);
    }

    v25 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v30;
      _os_log_impl(&dword_226A4E000, v25, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Received remote types: %@", buf, 0xCu);
    }

    [*(a1 + 32) setCompletionBlock:0];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __83__UASharedPasteboardManager_requestRemotePasteboardTypesForProcess_withCompletion___block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 offset];
  v7 = [v5 offset];
  v8 = [v4 index];
  if (v8)
  {
    v9 = v8;
    v10 = [v5 index];

    if (v10)
    {
      v11 = [v4 index];

      v12 = [v5 index];

      v6 = v11;
      v7 = v12;
    }
  }

  v13 = [v6 compare:v7];

  return v13;
}

- (void)requestRemotePasteboardDataForProcess:(int)process withCompletion:(id)completion
{
  completionCopy = completion;
  serverQ = [(UASharedPasteboardManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__UASharedPasteboardManager_requestRemotePasteboardDataForProcess_withCompletion___block_invoke;
  block[3] = &unk_2785C4228;
  block[4] = self;
  v10 = completionCopy;
  processCopy = process;
  v8 = completionCopy;
  dispatch_async(serverQ, block);
}

void __82__UASharedPasteboardManager_requestRemotePasteboardDataForProcess_withCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__UASharedPasteboardManager_requestRemotePasteboardDataForProcess_withCompletion___block_invoke_2;
  v8[3] = &unk_2785C41D8;
  v9 = *(a1 + 40);
  [*(a1 + 32) setCompletionBlock:v8];
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Requesting remote pasteboard data for process: %d", buf, 8u);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__UASharedPasteboardManager_requestRemotePasteboardDataForProcess_withCompletion___block_invoke_204;
  v6[3] = &unk_2785C4200;
  v6[4] = v4;
  v7 = *(a1 + 40);
  [v4 fetchPasteboardDataForProcess:v5 withCompletion:v6];
}

void __82__UASharedPasteboardManager_requestRemotePasteboardDataForProcess_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Connection to useractivityd inturrupted with outstanding data request", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-126 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __82__UASharedPasteboardManager_requestRemotePasteboardDataForProcess_withCompletion___block_invoke_204(uint64_t a1, void *a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v69 = a2;
  v61 = a3;
  if (v61)
  {
    v4 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v80 = v61;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Error fetching remote pasteboard data: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) setCompletionBlock:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_49;
  }

  v5 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v69;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Received remote pasteboard info: %@", buf, 0xCu);
  }

  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v69 sandboxExtensions];
    *buf = 138412290;
    v80 = v7;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "[Local Pasteboard] Received extensions: %@", buf, 0xCu);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [v69 items];
  v65 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (v65)
  {
    v63 = *v76;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v76 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v75 + 1) + 8 * i);
        v68 = objc_alloc_init(UAPasteboardItem);
        v9 = [v8 types];
        v10 = [v9 allValues];
        v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_207];

        v12 = [v8 types];
        v13 = [v12 allKeys];
        LODWORD(v10) = [v13 containsObject:@"public.file-url"];

        if (v10)
        {
          v14 = [v8 types];
          v15 = [v14 objectForKeyedSubscript:@"public.file-url"];

          v16 = [v15 dataFile];
          v17 = [v15 offset];
          [v16 seekToFileOffset:{objc_msgSend(v17, "unsignedLongLongValue")}];

          v18 = [v15 dataFile];
          v19 = [v18 readDataOfLength:{objc_msgSend(v15, "size")}];

          v20 = [v15 dataFile];
          [v20 seekToFileOffset:0];

          v21 = [MEMORY[0x277CBEBC0] URLWithDataRepresentation:v19 relativeToURL:0];
          v22 = _uaGetLogForCategory(@"pasteboard-client");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v80 = v21;
            _os_log_impl(&dword_226A4E000, v22, OS_LOG_TYPE_INFO, "[Local Pasteboard] URL decoded from file: %{private}@", buf, 0xCu);
          }

          v23 = [v21 lastPathComponent];
          v24 = MEMORY[0x277CCACA8];
          v25 = [v15 uuid];
          v26 = [v25 UUIDString];
          v66 = [v24 stringWithFormat:@"items/%@/", v26];

          v27 = [v69 sharedDataPath];
          v28 = [v27 stringByAppendingPathComponent:v66];

          v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:v28];
          v70 = [v29 URLByAppendingPathComponent:v23];

          v30 = _uaGetLogForCategory(@"pasteboard-client");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v80 = v70;
            _os_log_impl(&dword_226A4E000, v30, OS_LOG_TYPE_INFO, "[Local Pasteboard] new URL for item: %@", buf, 0xCu);
          }

          v31 = [v8 types];
          v32 = [v31 allKeys];
          v33 = [v32 containsObject:@"com.apple.security.sandbox-extension-dict"];

          if ((v33 & 1) == 0)
          {
            v34 = _uaGetLogForCategory(@"pasteboard-client");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_226A4E000, v34, OS_LOG_TYPE_INFO, "[Local Pasteboard] Adding sandbox extension type because we need it on macOS", buf, 2u);
            }

            v35 = objc_alloc_init(UASharedPasteboardTypeInfo);
            [(UASharedPasteboardTypeInfo *)v35 setType:@"com.apple.security.sandbox-extension-dict"];
            v36 = [MEMORY[0x277CCAD78] UUID];
            [(UASharedPasteboardTypeInfo *)v35 setUuid:v36];

            v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
            [(UASharedPasteboardTypeInfo *)v35 setIndex:v37];

            v38 = [v11 arrayByAddingObject:v35];

            v11 = v38;
          }
        }

        else
        {
          v70 = 0;
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v39 = v11;
        v40 = [v39 countByEnumeratingWithState:&v71 objects:v83 count:16];
        if (v40)
        {
          v41 = *v72;
          do
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v72 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v71 + 1) + 8 * j);
              v44 = [v43 type];
              if ([v44 isEqualToString:@"public.file-url"])
              {
                v45 = _uaGetLogForCategory(@"pasteboard-client");
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  v46 = [v43 type];
                  *buf = 138412546;
                  v80 = v46;
                  v81 = 2112;
                  v82 = v70;
                  _os_log_impl(&dword_226A4E000, v45, OS_LOG_TYPE_INFO, "[Local Pasteboard] Creating data provider for %@ with %@", buf, 0x16u);
                }

                v47 = [v69 sandboxExtensions];
                v48 = [v43 uuid];
                v49 = [v47 objectForKeyedSubscript:v48];

                v50 = [[UAPasteboardFileItemProvider alloc] initWithURL:v70 sandboxExtension:v49];
              }

              else
              {
                if ([v44 isEqualToString:@"com.apple.security.sandbox-extension-dict"])
                {
                  v50 = 0;
                  goto LABEL_42;
                }

                v51 = [v43 dataFile];
                if (v51)
                {
                  v52 = v43;
                }

                else
                {
                  v52 = v69;
                }

                v49 = [v52 dataFile];

                v53 = [UAPasteboardFileChunkItemProvider alloc];
                v54 = [v43 type];
                v55 = [v43 offset];
                v50 = -[UAPasteboardFileChunkItemProvider initWithType:fileHandle:offsetInFile:size:](v53, "initWithType:fileHandle:offsetInFile:size:", v54, v49, v55, [v43 size]);
              }

              if (v50)
              {
                [(UAPasteboardItem *)v68 addType:v50];
              }

LABEL_42:
            }

            v40 = [v39 countByEnumeratingWithState:&v71 objects:v83 count:16];
          }

          while (v40);
        }

        v56 = [UAPasteboardDataProvider alloc];
        v57 = [MEMORY[0x277CBEA90] data];
        v58 = [(UAPasteboardDataProvider *)v56 initWithData:v57 type:@"com.apple.is-remote-clipboard"];

        [(UAPasteboardItem *)v68 addType:v58];
        [v64 addObject:v68];
      }

      v65 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v65);
  }

  v59 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v64;
    _os_log_impl(&dword_226A4E000, v59, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Returning items: %@", buf, 0xCu);
  }

  [*(a1 + 32) setCompletionBlock:0];
  (*(*(a1 + 40) + 16))();

LABEL_49:
}

uint64_t __82__UASharedPasteboardManager_requestRemotePasteboardDataForProcess_withCompletion___block_invoke_205(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 offset];
  v7 = [v5 offset];
  v8 = [v4 index];
  if (v8)
  {
    v9 = v8;
    v10 = [v5 index];

    if (v10)
    {
      v11 = [v4 index];

      v12 = [v5 index];

      v6 = v11;
      v7 = v12;
    }
  }

  v13 = [v6 compare:v7];

  return v13;
}

- (BOOL)requestPasteboardFetchReturnEarly
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = _uaGetLogForCategory(@"pasteboard-clien");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "Setting remote generation to return early", buf, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  v4 = UASharedPasteboardAUXServiceName();
  v5 = [v3 initWithMachServiceName:v4 options:0];

  v7 = _UAGetSharedPasteboardAUXProtocolInterface(v6);
  [v5 setRemoteObjectInterface:v7];

  [v5 resume];
  v8 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_216];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__UASharedPasteboardManager_requestPasteboardFetchReturnEarly__block_invoke_217;
  v10[3] = &unk_2785C4250;
  v10[4] = &v12;
  [v8 setReturnPasteboardDataEarlyWithCompletion:v10];

  [v5 invalidate];
  LOBYTE(v8) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v8;
}

void __62__UASharedPasteboardManager_requestPasteboardFetchReturnEarly__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_ERROR, "ERROR getting remote proxy: %@", &v4, 0xCu);
  }
}

void __62__UASharedPasteboardManager_requestPasteboardFetchReturnEarly__block_invoke_217(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_INFO, "Pasteboard already fetched: %{BOOL}d", v5, 8u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (void)fetchPasteboardTypesForProcess:(int)process withCompletion:(id)completion
{
  v4 = *&process;
  completionCopy = completion;
  connection = [(UASharedPasteboardManager *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__UASharedPasteboardManager_fetchPasteboardTypesForProcess_withCompletion___block_invoke;
  v10[3] = &unk_2785C3E70;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [connection remoteObjectProxyWithErrorHandler:v10];
  [v9 fetchRemotePasteboardTypesForProcess:v4 withCompletion:v8];
}

- (void)doClearLocalPasteboardInfo
{
  connection = [(UASharedPasteboardManager *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy clearLocalPasteboardInformation];
}

- (void)fetchPasteboardDataForProcess:(int)process withCompletion:(id)completion
{
  v4 = *&process;
  completionCopy = completion;
  connection = [(UASharedPasteboardManager *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__UASharedPasteboardManager_fetchPasteboardDataForProcess_withCompletion___block_invoke;
  v10[3] = &unk_2785C3E70;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [connection remoteObjectProxyWithErrorHandler:v10];
  [v9 fetchRemotePasteboardForProcess:v4 withCompletion:v8];
}

- (void)fetchPasteboardStatus:(id)status
{
  statusCopy = status;
  connection = [(UASharedPasteboardManager *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy fetchRemotePasteboardStatus:statusCopy];
}

- (id)fetchRemoteName
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v3 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Requesting remote device name from server", buf, 2u);
  }

  connection = [(UASharedPasteboardManager *)self connection];
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_219];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__UASharedPasteboardManager_fetchRemoteName__block_invoke_220;
  v8[3] = &unk_2785C3E00;
  v8[4] = &v10;
  [v5 fetchRemoteDeviceName:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __44__UASharedPasteboardManager_fetchRemoteName__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Error getting proxy: %@", &v4, 0xCu);
  }
}

void __44__UASharedPasteboardManager_fetchRemoteName__block_invoke_220(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "[Local Pasteboard] Got remote device name: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)tellClientDebuggingEnabled:(BOOL)enabled logFileHandle:(id)handle
{
  v8 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = handleCopy;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "Received debug update from server: %@", &v6, 0xCu);
  }
}

@end