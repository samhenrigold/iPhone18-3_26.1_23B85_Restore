@interface PDSDaemon
- (PDSCDCache)underlyingStorage;
- (PDSDaemon)initWithConfiguration:(id)configuration;
- (PDSEntryStore)entryStore;
- (id)_entryStore;
- (id)_underlyingStorage;
- (id)remoteInternalListener;
- (id)remoteListenerForAllClientIDs;
- (id)remoteListenerForClientIDs:(id)ds;
- (void)_setupSysdiagnoseDump;
- (void)_underlyingStorage;
- (void)start;
@end

@implementation PDSDaemon

- (PDSDaemon)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [PDSDaemon initWithConfiguration:];
  }

  queue = [configurationCopy queue];

  if (!queue)
  {
    [PDSDaemon initWithConfiguration:];
  }

  workloop = [configurationCopy workloop];

  if (!workloop)
  {
    [PDSDaemon initWithConfiguration:];
  }

  daemonRootDirectory = [configurationCopy daemonRootDirectory];

  if (!daemonRootDirectory)
  {
    [PDSDaemon initWithConfiguration:];
  }

  pushHandlerPort = [configurationCopy pushHandlerPort];

  if (!pushHandlerPort)
  {
    [PDSDaemon initWithConfiguration:];
  }

  v13.receiver = self;
  v13.super_class = PDSDaemon;
  v9 = [(PDSDaemon *)&v13 init];
  if (v9)
  {
    v10 = [configurationCopy copy];
    configuration = v9->_configuration;
    v9->_configuration = v10;
  }

  return v9;
}

- (void)start
{
  configuration = [(PDSDaemon *)self configuration];
  queue = [configuration queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__PDSDaemon_start__block_invoke;
  block[3] = &unk_2799F82F0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __18__PDSDaemon_start__block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D37AD8] setDisableXPC:1];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 workloop];
  v5 = dispatch_queue_create_with_target_V2("com.apple.pds.idsd.queue", v2, v4);

  v49 = [[PDSDaemonRemoteVendor alloc] initWithQueue:v5 daemonListenerVendor:*(a1 + 32)];
  [MEMORY[0x277D37AC8] registerGlobalVendor:?];
  v6 = [*(a1 + 32) configuration];
  v7 = [v6 workloop];
  v8 = createPDSServerBag(v7);
  [*(a1 + 32) setBag:v8];

  v9 = [*(a1 + 32) bag];
  [v9 startBagLoad];

  v10 = pds_defaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    v13 = PDSCurrentServerEnvironment(v11, v12);
    v14 = PDSStringForServerEnvironment(v13);
    v15 = [*(a1 + 32) configuration];
    *buf = 138412546;
    v63 = v14;
    v64 = 2112;
    v65 = v15;
    _os_log_impl(&dword_25DED8000, v10, OS_LOG_TYPE_DEFAULT, "Starting PDSAgent [Environment %@] [Configuration %@]", buf, 0x16u);
  }

  v16 = [PDSCDCacheContainer alloc];
  v17 = [*(a1 + 32) configuration];
  v18 = [v17 daemonRootDirectory];
  v19 = [(PDSCDCacheContainer *)v16 initWithContainingPath:v18];
  [*(a1 + 32) setCacheContainer:v19];

  v20 = objc_alloc_init(PDSUserTracker);
  [*(a1 + 32) setUserTracker:v20];

  v21 = [*(a1 + 32) configuration];
  v22 = [v21 queue];

  objc_initWeak(buf, *(a1 + 32));
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __18__PDSDaemon_start__block_invoke_61;
  v60[3] = &unk_2799F83C8;
  v51 = v22;
  v61 = v51;
  v53 = MEMORY[0x25F8A7090](v60);
  v23 = objc_alloc(MEMORY[0x277D07DD0]);
  v24 = [*(a1 + 32) bag];
  v52 = [v23 initWithIDSServerBag:v24];

  v25 = [PDSRequestQueue alloc];
  v26 = [*(a1 + 32) userTracker];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __18__PDSDaemon_start__block_invoke_2;
  v58[3] = &unk_2799F83F0;
  objc_copyWeak(&v59, buf);
  v27 = [(PDSRequestQueue *)v25 initWithMessageDelivery:v52 userTracker:v26 queue:v51 pushTokenBlock:v53 entryStoreBlock:v58];
  [*(a1 + 32) setRequestQueue:v27];

  v28 = MEMORY[0x277D18A00];
  v29 = [*(a1 + 32) configuration];
  v30 = [v29 pushHandlerPort];
  v50 = [v28 sharedInstanceWithPortName:v30];

  v31 = [PDSCoordinator alloc];
  v32 = [*(a1 + 32) configuration];
  v33 = [v32 queue];
  v34 = [*(a1 + 32) bag];
  v35 = [*(a1 + 32) requestQueue];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __18__PDSDaemon_start__block_invoke_3;
  v56[3] = &unk_2799F8418;
  objc_copyWeak(&v57, buf);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __18__PDSDaemon_start__block_invoke_4;
  v54[3] = &unk_2799F83F0;
  objc_copyWeak(&v55, buf);
  v36 = [MEMORY[0x277D192A8] sharedInstance];
  v37 = [(PDSCoordinator *)v31 initWithQueue:v33 serverBag:v34 requestQueue:v35 kvStoreBlock:v56 entryStoreBlock:v54 pushTokenBlock:v53 systemMonitor:v36 pushHandler:v50];
  [*(a1 + 32) setCoordinator:v37];

  v38 = [*(a1 + 32) coordinator];
  [v38 registerIfNeeded];

  v39 = [PDSXPCServer alloc];
  v40 = [MEMORY[0x277D37AD8] defaultListenerVendor];
  v41 = [MEMORY[0x277D37AD8] defaultInterfaceVendor];
  v42 = *(a1 + 32);
  v43 = [v42 configuration];
  v44 = [v43 queue];
  v45 = [*(a1 + 32) configuration];
  v46 = [v45 workloop];
  v47 = [(PDSXPCServer *)v39 initWithServiceName:*MEMORY[0x277D37B00] listenerVendor:v40 interfaceVendor:v41 daemonListenerVendor:v42 queue:v44 workloop:v46];
  [*(a1 + 32) setXPCServer:v47];

  v48 = [*(a1 + 32) XPCServer];
  [v48 resume];

  [*(a1 + 32) _setupSysdiagnoseDump];
  objc_destroyWeak(&v55);
  objc_destroyWeak(&v57);

  objc_destroyWeak(&v59);
  objc_destroyWeak(buf);
}

id __18__PDSDaemon_start__block_invoke_61(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEEA10];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 initWithEnvironmentName:v4 namedDelegatePort:*MEMORY[0x277CEE9D8] queue:*(a1 + 32)];

  v7 = [v6 publicToken];

  return v7;
}

id __18__PDSDaemon_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _entryStore];

  return v2;
}

id __18__PDSDaemon_start__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _underlyingStorage];

  return v2;
}

id __18__PDSDaemon_start__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _entryStore];

  return v2;
}

- (id)remoteListenerForClientIDs:(id)ds
{
  dsCopy = ds;
  _entryStore = [(PDSDaemon *)self _entryStore];
  if (_entryStore)
  {
    v6 = [PDSDaemonListener alloc];
    userTracker = [(PDSDaemon *)self userTracker];
    v8 = [(PDSDaemonListener *)v6 initWithClientIDs:dsCopy entryStore:_entryStore userTracker:userTracker];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)remoteListenerForAllClientIDs
{
  _entryStore = [(PDSDaemon *)self _entryStore];
  if (_entryStore)
  {
    v4 = [PDSDaemonListener alloc];
    userTracker = [(PDSDaemon *)self userTracker];
    v6 = [(PDSDaemonListener *)v4 initWithEntryStore:_entryStore userTracker:userTracker];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)remoteInternalListener
{
  v3 = [PDSInternalDaemonListener alloc];
  _underlyingStorage = [(PDSDaemon *)self _underlyingStorage];
  v5 = [(PDSInternalDaemonListener *)v3 initWithKVStore:_underlyingStorage];

  return v5;
}

- (id)_underlyingStorage
{
  underlyingStorage = [(PDSDaemon *)self underlyingStorage];
  if (!underlyingStorage)
  {
    cacheContainer = [(PDSDaemon *)self cacheContainer];
    v8 = 0;
    underlyingStorage = [cacheContainer loadWithError:&v8];
    v5 = v8;

    if (!underlyingStorage)
    {
      v6 = pds_defaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(PDSDaemon *)v5 _underlyingStorage];
      }
    }
  }

  return underlyingStorage;
}

- (id)_entryStore
{
  entryStore = [(PDSDaemon *)self entryStore];
  if (!entryStore)
  {
    _underlyingStorage = [(PDSDaemon *)self _underlyingStorage];
    if (_underlyingStorage)
    {
      v5 = _underlyingStorage;
      entryStore = [[PDSEntryStore alloc] initWithCache:_underlyingStorage];
      [(PDSDaemon *)self setEntryStore:entryStore];
      coordinator = [(PDSDaemon *)self coordinator];
      [(PDSEntryStore *)entryStore setDelegate:coordinator];
    }

    else
    {
      entryStore = 0;
    }
  }

  return entryStore;
}

- (void)_setupSysdiagnoseDump
{
  configuration = [(PDSDaemon *)self configuration];
  queue = [configuration queue];
  IMLogRegisterStateToSysdiagnoseBlock();
}

id __34__PDSDaemon__setupSysdiagnoseDump__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _entryStore];
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v2 appendString:@"Users:\n"];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = [v1 users];
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 appendFormat:@"%@\n", *(*(&v18 + 1) + 8 * i)];
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    [v2 appendString:@"Entries:\n"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v1 entries];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v2 appendFormat:@"\t%@\n", *(*(&v14 + 1) + 8 * j)];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (PDSEntryStore)entryStore
{
  WeakRetained = objc_loadWeakRetained(&self->_entryStore);

  return WeakRetained;
}

- (PDSCDCache)underlyingStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingStorage);

  return WeakRetained;
}

- (void)initWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.workloop" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.daemonRootDirectory" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.pushHandlerPort" object:? file:? lineNumber:? description:?];
}

- (void)_underlyingStorage
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25DED8000, a2, OS_LOG_TYPE_ERROR, "Failed loading cache {error: %@}", &v2, 0xCu);
}

@end