@interface SYDDaemon
+ (id)containerForStoreType:(int64_t)type containerID:(id)d testConfiguration:(id)configuration;
+ (id)defaultTestConfiguration;
+ (id)syncManagerLookupKeyForCurrentPersonaWithTestConfiguration:(id)configuration;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)syncManager:(id)manager shouldSyncStoreWithIdentifier:(id)identifier;
- (SYDDaemon)init;
- (SYDDaemon)initWithInitialStoreCreation:(BOOL)creation;
- (SYDDaemon)initWithListener:(id)listener initialStoreCreation:(BOOL)creation;
- (id)_queue_allSyncManagers;
- (id)allStoreIdentifiersWithError:(id *)error;
- (id)allSyncManagers;
- (id)applicationIdentifiersForStoreIdentifiers:(id)identifiers;
- (id)connection:(id)connection syncManagerForStoreID:(id)d error:(id *)error;
- (id)syncManagerForStoreType:(int64_t)type containerID:(id)d testConfiguration:(id)configuration createIfNecessary:(BOOL)necessary error:(id *)error;
- (void)_processAccountChanges;
- (void)connectionDidInvalidate:(id)invalidate;
- (void)initializeKnownSyncManagers;
- (void)processAccountChanges;
- (void)registerForPeriodAnalyticsXPCActivity;
- (void)removeInvalidSyncManagers;
- (void)removeUnitTestSyncManagers;
- (void)sendAnalyticsEventForCurrentState;
- (void)start;
- (void)uploadContent;
- (void)willSwitchUser;
@end

@implementation SYDDaemon

- (SYDDaemon)init
{
  serviceListener = [MEMORY[0x277CCAE98] serviceListener];
  v4 = [(SYDDaemon *)self initWithListener:serviceListener];

  return v4;
}

- (SYDDaemon)initWithInitialStoreCreation:(BOOL)creation
{
  creationCopy = creation;
  serviceListener = [MEMORY[0x277CCAE98] serviceListener];
  v6 = [(SYDDaemon *)self initWithListener:serviceListener initialStoreCreation:creationCopy];

  return v6;
}

- (SYDDaemon)initWithListener:(id)listener initialStoreCreation:(BOOL)creation
{
  creationCopy = creation;
  v28 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v23.receiver = self;
  v23.super_class = SYDDaemon;
  v8 = [(SYDDaemon *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_xpcListener, listener);
    [(NSXPCListener *)v9->_xpcListener setDelegate:v9];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncManagersByPersona = v9->_syncManagersByPersona;
    v9->_syncManagersByPersona = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientConnections = v9->_clientConnections;
    v9->_clientConnections = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.kvs.daemon.queue", v14);
    queue = v9->_queue;
    v9->_queue = v15;

    v17 = SYDGetConnectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];
      currentPersona = [MEMORY[0x277D77C08] currentPersona];
      v21 = SYDUserPersonaDescription(currentPersona);
      *buf = 138412546;
      v25 = processName;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_26C384000, v17, OS_LOG_TYPE_INFO, "Welcome to %@ running as %@", buf, 0x16u);
    }

    if (creationCopy)
    {
      [(SYDDaemon *)v9 initializeKnownSyncManagers];
    }
  }

  return v9;
}

- (void)start
{
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon start];
  }

  [(SYDDaemon *)self registerForPeriodAnalyticsXPCActivity];
  v4 = SYDGetMiscLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon start];
  }

  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  [mEMORY[0x277D77BF8] registerUserSyncStakeholder:self withMachServiceName:@"com.apple.syncdefaultsd.usermanager.sync"];

  xpcListener = [(SYDDaemon *)self xpcListener];
  [xpcListener activate];
}

- (id)allSyncManagers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  queue = [(SYDDaemon *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__SYDDaemon_allSyncManagers__block_invoke;
  v6[3] = &unk_279D2F6A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __28__SYDDaemon_allSyncManagers__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_allSyncManagers];

  return MEMORY[0x2821F96F8]();
}

- (id)_queue_allSyncManagers
{
  queue = [(SYDDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [MEMORY[0x277CBEB58] set];
  syncManagersByPersona = [(SYDDaemon *)self syncManagersByPersona];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__SYDDaemon__queue_allSyncManagers__block_invoke;
  v9[3] = &unk_279D2F6F0;
  v10 = v4;
  v6 = v4;
  [syncManagersByPersona enumerateKeysAndObjectsUsingBlock:v9];

  allObjects = [v6 allObjects];

  return allObjects;
}

void __35__SYDDaemon__queue_allSyncManagers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SYDDaemon__queue_allSyncManagers__block_invoke_2;
  v4[3] = &unk_279D2F6C8;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  queue = [(SYDDaemon *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SYDDaemon_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_279D2F678;
  v10 = connectionCopy;
  selfCopy = self;
  v7 = connectionCopy;
  dispatch_sync(queue, v9);

  return 1;
}

void __48__SYDDaemon_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_26C384000, v3, OS_LOG_TYPE_INFO, "Accepting new XPC connection %@", &v8, 0xCu);
  }

  v5 = [[SYDDaemonToClientConnection alloc] initWithXPCConnection:*(a1 + 32) delegate:*(a1 + 40)];
  v6 = SYDGetConnectionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Created client connection %@", &v8, 0xCu);
  }

  v7 = [*(a1 + 40) clientConnections];
  [v7 addObject:v5];
}

- (id)connection:(id)connection syncManagerForStoreID:(id)d error:(id *)error
{
  v41[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dCopy = d;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  if ([connectionCopy supportsTesting])
  {
    goto LABEL_2;
  }

  v11 = SYDContainerID([dCopy type], 1);
  containerID = [dCopy containerID];
  v13 = [containerID isEqual:v11];

  if ((v13 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Not entitled to access store with containerID: %@", dCopy];
    v19 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = dCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v18 = [v19 errorWithDomain:@"SyncedDefaults" code:3333 userInfo:v17];
    goto LABEL_11;
  }

  testConfiguration = [dCopy testConfiguration];

  if (testConfiguration)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Not entitled to access store with test configuration: %@", dCopy];
    v16 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39 = dCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v18 = [v16 errorWithDomain:@"SyncedDefaults" code:3333 userInfo:v17];
LABEL_11:
    *error = v18;

    error = 0;
    goto LABEL_12;
  }

LABEL_2:
  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SYDDaemon_connection_syncManagerForStoreID_error___block_invoke;
  block[3] = &unk_279D2F718;
  v22 = dCopy;
  selfCopy = self;
  v24 = &v26;
  v25 = &v32;
  dispatch_sync(queue, block);

  if (error)
  {
    *error = v33[5];
  }

  error = v27[5];
  v11 = v22;
LABEL_12:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return error;
}

void __52__SYDDaemon_connection_syncManagerForStoreID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containerID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = SYDContainerID([*(a1 + 32) type], 1);
  }

  v5 = v4;

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) type];
  v8 = [*(a1 + 32) testConfiguration];
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v6 syncManagerForStoreType:v7 containerID:v5 testConfiguration:v8 createIfNecessary:1 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)connectionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  queue = [(SYDDaemon *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SYDDaemon_connectionDidInvalidate___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = invalidateCopy;
  selfCopy = self;
  v6 = invalidateCopy;
  dispatch_sync(queue, v7);
}

void __37__SYDDaemon_connectionDidInvalidate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __37__SYDDaemon_connectionDidInvalidate___block_invoke_cold_1();
  }

  v4 = [*(a1 + 40) clientConnections];
  [v4 removeObject:*(a1 + 32)];
}

- (void)processAccountChanges
{
  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SYDDaemon_processAccountChanges__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_processAccountChanges
{
  v52 = *MEMORY[0x277D85DE8];
  queue = [(SYDDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26C384000, v3, OS_LOG_TYPE_INFO, "Processing account changes", buf, 2u);
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  _queue_allSyncManagers = [(SYDDaemon *)self _queue_allSyncManagers];
  v5 = [_queue_allSyncManagers countByEnumeratingWithState:&v26 objects:v51 count:16];
  if (v5)
  {
    v7 = *v27;
    *&v6 = 138412290;
    v19 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(_queue_allSyncManagers);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = SYDGetConnectionLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v49 = v19;
          v50 = v9;
          _os_log_debug_impl(&dword_26C384000, v10, OS_LOG_TYPE_DEBUG, "Processing account changes for sync manager %@", v49, 0xCu);
        }

        personaUniqueString = [v9 personaUniqueString];
        if (personaUniqueString)
        {
          v12 = [MEMORY[0x277D77C10] personaAttributesForPersonaUniqueString:personaUniqueString];
          if (v12)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v12 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
          personaUniqueString = [v12 userPersonaUniqueString];
          if (v12)
          {
LABEL_12:
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __35__SYDDaemon__processAccountChanges__block_invoke;
            v25[3] = &unk_279D2F740;
            v25[4] = self;
            v25[5] = v9;
            v25[6] = &v44;
            v25[7] = v30;
            v25[8] = buf;
            v25[9] = &v32;
            SYDPerformWithPersona(personaUniqueString, v25);
            goto LABEL_17;
          }
        }

        v13 = SYDGetConnectionLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *v49 = v19;
          v50 = v9;
          _os_log_debug_impl(&dword_26C384000, v13, OS_LOG_TYPE_DEBUG, "Persona doesn't exist for sync manager %@", v49, 0xCu);
        }

LABEL_17:
        ++v8;
      }

      while (v5 != v8);
      v5 = [_queue_allSyncManagers countByEnumeratingWithState:&v26 objects:v51 count:16];
    }

    while (v5);
  }

  [(SYDDaemon *)self removeInvalidSyncManagers];
  [(SYDDaemon *)self initializeKnownSyncManagers];
  if (*(v45 + 24) == 1)
  {
    v14 = SYDGetConnectionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v49 = 0;
      _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, "The account did change, will notify clients and tell the sync engine", v49, 2u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    clientConnections = [(SYDDaemon *)self clientConnections];
    v16 = [clientConnections countByEnumeratingWithState:&v21 objects:v48 count:16];
    if (v16)
    {
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(clientConnections);
          }

          [*(*(&v21 + 1) + 8 * i) notifyAccountDidChangeFromAccountID:*(v39 + 5) toAccountID:v33[5] completionHandler:{0, v19}];
        }

        v16 = [clientConnections countByEnumeratingWithState:&v21 objects:v48 count:16];
      }

      while (v16);
    }
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v44, 8);
}

void __35__SYDDaemon__processAccountChanges__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 syd_accountIdentifierForCurrentPersona];

  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__SYDDaemon__processAccountChanges__block_invoke_cold_1();
  }

  v5 = (a1 + 40);
  v6 = [*(a1 + 40) coreDataStore];
  v28 = 0;
  v7 = [v6 acAccountIdentifierWithError:&v28];
  v8 = v28;
  if (v8)
  {
    v9 = SYDGetConnectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __35__SYDDaemon__processAccountChanges__block_invoke_cold_2();
    }

LABEL_6:

    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  if (v7)
  {
    if (v3)
    {
      v21 = [v3 isEqualToString:v7];
      v9 = SYDGetConnectionLog();
      v22 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        if (v22)
        {
          __35__SYDDaemon__processAccountChanges__block_invoke_cold_4();
        }

        goto LABEL_6;
      }

      if (v22)
      {
        __35__SYDDaemon__processAccountChanges__block_invoke_cold_3();
      }

      [v6 deleteDataForAllStoresWithError:0];
      v25 = v6;
      v26 = v3;
    }

    else
    {
      v24 = SYDGetConnectionLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __35__SYDDaemon__processAccountChanges__block_invoke_cold_5();
      }

      [v6 deleteDataForAllStoresWithError:0];
      v25 = v6;
      v26 = 0;
    }

    [v25 setACAccountIdentifier:v26 error:0];
    v10 = 0;
    v11 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v9 = SYDGetConnectionLog();
  v23 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (!v3)
  {
    if (v23)
    {
      __35__SYDDaemon__processAccountChanges__block_invoke_cold_7();
    }

    goto LABEL_6;
  }

  if (v23)
  {
    __35__SYDDaemon__processAccountChanges__block_invoke_cold_6();
  }

  [v6 clearServerSystemFieldsRecordsForAllStoresWithError:0];
  [v6 setACAccountIdentifier:v3 error:0];
  v10 = 1;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v11 = 1;
LABEL_7:
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v3);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (v11)
  {
    v27 = v10;
    v12 = objc_opt_class();
    v13 = [*(a1 + 40) storeType];
    [*(a1 + 40) container];
    v14 = v6;
    v15 = v7;
    v17 = v16 = v3;
    v18 = [v17 containerID];
    v19 = [*(a1 + 40) testConfiguration];
    v20 = [v12 containerForStoreType:v13 containerID:v18 testConfiguration:v19];

    v3 = v16;
    v7 = v15;
    v6 = v14;
    v5 = (a1 + 40);
    [*(a1 + 40) resetSyncEngineWithContainer:v20];

    v10 = v27;
  }

  if (v10)
  {
    [*v5 markAllKeyValuesAsNeedingToBeUploaded];
  }
}

- (BOOL)syncManager:(id)manager shouldSyncStoreWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SYDStoreBundleMap sharedInstance];
  v6 = [v5 shouldSyncStoreWithIdentifier:identifierCopy];

  return v6;
}

- (id)applicationIdentifiersForStoreIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = +[SYDStoreBundleMap sharedInstance];
        v13 = [v12 bundleIdentifiersForStoreIdentifier:v11];

        if (v13)
        {
          [v5 addObjectsFromArray:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SYDDaemon_applicationIdentifiersForStoreIdentifiers___block_invoke;
  block[3] = &unk_279D2F768;
  block[4] = self;
  v15 = v6;
  v21 = v15;
  v16 = v5;
  v22 = v16;
  dispatch_sync(queue, block);

  if (![v16 count])
  {
    v17 = SYDGetConnectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemon applicationIdentifiersForStoreIdentifiers:];
    }
  }

  allObjects = [v16 allObjects];

  return allObjects;
}

void __55__SYDDaemon_applicationIdentifiersForStoreIdentifiers___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [*(a1 + 32) clientConnections];
  v3 = [v2 copy];

  obj = v3;
  v21 = [v3 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = [v5 registeredStoreIDs];
        v7 = [v6 copy];

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = *(a1 + 40);
              v14 = [v12 identifier];
              LODWORD(v13) = [v13 containsObject:v14];

              if (v13)
              {
                v15 = [v12 identifier];
                v16 = [v5 relatedApplicationsForStoreIdentifier:v15];

                if ([v16 count])
                {
                  [*(a1 + 48) addObjectsFromArray:v16];
                }

                else
                {
                  v17 = SYDGetConnectionLog();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                  {
                    v18 = [v12 identifier];
                    *buf = 138412546;
                    v31 = v18;
                    v32 = 2112;
                    v33 = v5;
                    _os_log_debug_impl(&dword_26C384000, v17, OS_LOG_TYPE_DEBUG, "Found registered store %@, but no application identifier from %@", buf, 0x16u);
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
          }

          while (v9);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v21);
  }
}

+ (id)syncManagerLookupKeyForCurrentPersonaWithTestConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!SYDIsDataSeparatedPersona())
  {
    userPersonaUniqueString = @"PersonalPersona";
    if (!configurationCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  currentPersona = [MEMORY[0x277D77C08] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  if (configurationCopy)
  {
LABEL_5:
    testServerName = [configurationCopy testServerName];
    testDeviceID = [configurationCopy testDeviceID];
    v8 = [(__CFString *)userPersonaUniqueString stringByAppendingFormat:@"::%@::%@", testServerName, testDeviceID];

    userPersonaUniqueString = v8;
  }

LABEL_6:

  return userPersonaUniqueString;
}

- (id)syncManagerForStoreType:(int64_t)type containerID:(id)d testConfiguration:(id)configuration createIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  v84 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  if (SYDCurrentPlatformSupportsStoreType())
  {
    v14 = [objc_opt_class() syncManagerLookupKeyForCurrentPersonaWithTestConfiguration:configurationCopy];
    v15 = SYDGetConnectionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v50 = SYDStringForStoreType(type);
      *buf = 138412802;
      v79 = v14;
      v80 = 2112;
      v81 = v50;
      v82 = 2112;
      v83 = dCopy;
      _os_log_debug_impl(&dword_26C384000, v15, OS_LOG_TYPE_DEBUG, "Getting sync manager for lookup key=%@ storeType=%@ container=%@", buf, 0x20u);
    }

    syncManagersByPersona = [(SYDDaemon *)self syncManagersByPersona];
    dictionary = [syncManagersByPersona objectForKeyedSubscript:v14];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      syncManagersByPersona2 = [(SYDDaemon *)self syncManagersByPersona];
      [syncManagersByPersona2 setObject:dictionary forKeyedSubscript:v14];
    }

    v19 = [dictionary objectForKeyedSubscript:dCopy];
    v20 = 0;
    if (v19 || !necessaryCopy)
    {
      goto LABEL_59;
    }

    v21 = SYDGetConnectionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = v14;
      _os_log_impl(&dword_26C384000, v21, OS_LOG_TYPE_INFO, "No existing sync manager, creating now for lookupKey=%@", buf, 0xCu);
    }

    v22 = [objc_opt_class() containerForStoreType:type containerID:dCopy testConfiguration:configurationCopy];
    v75 = 0;
    v23 = SYDCoreDataStoreURL(dCopy, configurationCopy, &v75);
    v20 = v75;
    v66 = v23;
    if (v20)
    {
      v24 = SYDGetConnectionLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }

      if (error)
      {
        v25 = v20;
        v19 = 0;
        *error = v20;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_58;
    }

    v65 = v22;
    v58 = [v23 checkResourceIsReachableAndReturnError:0];
    if (v58)
    {
      goto LABEL_30;
    }

    v74 = 0;
    v27 = SYDOldCoreDataStoreURL(dCopy, &v74);
    v28 = v74;
    if (v28)
    {
      v29 = SYDGetConnectionLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }

      v23 = v66;
    }

    v63 = v28;
    v20 = 0;
    if (![v27 checkResourceIsReachableAndReturnError:0])
    {
LABEL_29:

LABEL_30:
      v59 = v14;
      v76 = *MEMORY[0x277CCA1B0];
      v77 = *MEMORY[0x277CCA1A0];
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      uRLByDeletingLastPathComponent = [v23 URLByDeletingLastPathComponent];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v70 = v20;
      v61 = uRLByDeletingLastPathComponent;
      v64 = v32;
      LOBYTE(uRLByDeletingLastPathComponent) = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v32 error:&v70];
      v35 = v70;

      if ((uRLByDeletingLastPathComponent & 1) == 0)
      {
        v36 = SYDGetConnectionLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
        }
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      path = [v61 path];
      v69 = v35;
      v39 = [defaultManager2 setAttributes:v64 ofItemAtPath:path error:&v69];
      v20 = v69;

      if ((v39 & 1) == 0)
      {
        v40 = SYDGetConnectionLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
        }
      }

      v41 = SYDFileProtectionTypeForStoreType(type);
      v42 = [[SYDCoreDataStore alloc] initWithURL:v66 fileProtectionType:v41];
      v43 = v42;
      if (!configurationCopy)
      {
        [(SYDCoreDataStore *)v42 setShouldSendAnalytics:1];
      }

      v14 = v59;
      if ((v58 & 1) == 0)
      {
        v44 = SYDGetConnectionLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_26C384000, v44, OS_LOG_TYPE_INFO, "Will set initial account identifier", buf, 2u);
        }

        v45 = dispatch_time(0, 500000000);
        v46 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__SYDDaemon_syncManagerForStoreType_containerID_testConfiguration_createIfNecessary_error___block_invoke;
        block[3] = &unk_279D2F678;
        block[4] = self;
        v68 = v43;
        dispatch_after(v45, v46, block);

        v14 = v59;
      }

      if (!type && !configurationCopy && (SYDIsDataSeparatedPersona() & 1) == 0)
      {
        [SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:v43 deleteMigratedPlists:1 error:0];
      }

      v19 = [[SYDSyncManager alloc] initWithContainer:v65 coreDataStore:v43 storeType:type testConfiguration:configurationCopy];
      [(SYDSyncManager *)v19 setDelegate:self];
      [dictionary setObject:v19 forKeyedSubscript:dCopy];
      v47 = SYDGetConnectionLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = v19;
        _os_log_impl(&dword_26C384000, v47, OS_LOG_TYPE_INFO, "Created sync manager %@", buf, 0xCu);
      }

      if (!configurationCopy && ![(SYDDaemon *)self isInitializingSyncManagers])
      {
        v48 = SYDGetConnectionLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
        }
      }

LABEL_56:
      v22 = v65;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    v30 = SYDGetConnectionLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v30, OS_LOG_TYPE_DEFAULT, "Need to migrate old store", buf, 2u);
    }

    v73 = 0;
    v31 = SYDMigrateToDaemonContainerIfNecessary(&v73);
    v20 = v73;
    if (v31)
    {
LABEL_28:
      v23 = v66;
      goto LABEL_29;
    }

    v72 = 0;
    v60 = v27;
    v57 = [v27 checkResourceIsReachableAndReturnError:&v72];
    v51 = v72;
    v71 = 0;
    v56 = [v66 checkResourceIsReachableAndReturnError:&v71];
    v52 = v71;
    if (SYDIsFileNotFoundError(v51))
    {

      v62 = 0;
    }

    else
    {
      v62 = v51;
    }

    v27 = v60;
    if (SYDIsFileNotFoundError(v52))
    {

      v52 = 0;
    }

    if (v62 | v52)
    {
      v53 = SYDGetConnectionLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }
    }

    else
    {
      if ((v57 ^ 1 | v56))
      {
        if ((v57 ^ 1 | v56 ^ 1))
        {
          if ((v57 | v56))
          {
            if ((v57 | v56 ^ 1))
            {
              goto LABEL_28;
            }

            v54 = SYDGetConnectionLog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
            {
              [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
            }
          }

          else
          {
            v54 = SYDGetConnectionLog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
            {
              [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
            }
          }
        }

        else
        {
          v54 = SYDGetConnectionLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
          {
            [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
          }
        }

        v20 = 0;
        goto LABEL_28;
      }

      v53 = SYDGetConnectionLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }
    }

    if (error)
    {
      v55 = v20;
      *error = v20;
    }

    v19 = 0;
    goto LABEL_56;
  }

  v26 = SYDGetConnectionLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v79) = type;
    _os_log_impl(&dword_26C384000, v26, OS_LOG_TYPE_DEFAULT, "Not creating sync manager for store type %d because it is not supported", buf, 8u);
  }

  v19 = 0;
  if (error)
  {
    *error = 0;
  }

LABEL_60:

  return v19;
}

void __91__SYDDaemon_syncManagerForStoreType_containerID_testConfiguration_createIfNecessary_error___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 syd_accountIdentifierForCurrentPersona];

  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26C384000, v4, OS_LOG_TYPE_INFO, "Setting initial account identifier to %@", &v5, 0xCu);
  }

  [*(a1 + 40) setACAccountIdentifier:v3 error:0];
}

- (void)initializeKnownSyncManagers
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = os_transaction_create();
  v3 = SYDGetMiscLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon initializeKnownSyncManagers];
  }

  [(SYDDaemon *)self setInitializingSyncManagers:1];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  listAllPersonaWithAttributes = [mEMORY[0x277D77BF8] listAllPersonaWithAttributes];

  v6 = [listAllPersonaWithAttributes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(listAllPersonaWithAttributes);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        userPersonaType = [v10 userPersonaType];
        if (userPersonaType <= 6 && ((1 << userPersonaType) & 0x45) != 0)
        {
          userPersonaUniqueString = [v10 userPersonaUniqueString];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __40__SYDDaemon_initializeKnownSyncManagers__block_invoke;
          v15[3] = &unk_279D2F678;
          v15[4] = v10;
          v15[5] = self;
          SYDPerformWithPersona(userPersonaUniqueString, v15);
        }
      }

      v7 = [listAllPersonaWithAttributes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(SYDDaemon *)self setInitializingSyncManagers:0];
}

void __40__SYDDaemon_initializeKnownSyncManagers__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__SYDDaemon_initializeKnownSyncManagers__block_invoke_cold_1();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = SYDStoreTypesForCurrentPlatform(v3);
  v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v22;
    *&v5 = 138412290;
    v18 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 integerValue];
        v12 = SYDContainerID(v11, 1);
        if (NSClassFromString(&cfstr_Cktestserver.isa))
        {
          v13 = [objc_opt_class() defaultTestConfiguration];
        }

        else
        {
          v13 = 0;
        }

        v14 = *(a1 + 40);
        v20 = 0;
        v15 = [v14 syncManagerForStoreType:v11 containerID:v12 testConfiguration:v13 createIfNecessary:1 error:{&v20, v18}];
        v16 = v20;

        if (!v15)
        {
          v17 = SYDGetConnectionLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = v16;
            _os_log_error_impl(&dword_26C384000, v17, OS_LOG_TYPE_ERROR, "Error creating sync manager during initialization: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }
}

- (void)removeInvalidSyncManagers
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  syncManagersByPersona = [(SYDDaemon *)self syncManagersByPersona];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SYDDaemon_removeInvalidSyncManagers__block_invoke;
  v9[3] = &unk_279D2F6F0;
  v5 = v3;
  v10 = v5;
  [syncManagersByPersona enumerateKeysAndObjectsUsingBlock:v9];

  if ([v5 count])
  {
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Forgetting about sync managers for account identifiers: %@", buf, 0xCu);
    }

    syncManagersByPersona2 = [(SYDDaemon *)self syncManagersByPersona];
    allObjects = [v5 allObjects];
    [syncManagersByPersona2 removeObjectsForKeys:allObjects];
  }
}

void __38__SYDDaemon_removeInvalidSyncManagers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"PersonalPersona"] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2;
    v7[3] = &unk_279D2F790;
    v8 = *(a1 + 32);
    v9 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SYDGetConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2_cold_1();
  }

  v6 = [v4 personaUniqueString];

  if (v6)
  {
    v7 = MEMORY[0x277D77C10];
    v8 = [v4 personaUniqueString];
    v9 = [v7 personaAttributesForPersonaUniqueString:v8];

    v10 = SYDGetConnectionLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_26C384000, v10, OS_LOG_TYPE_INFO, "Persona still exists for sync manager %@", &v12, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_26C384000, v10, OS_LOG_TYPE_INFO, "Persona no longer exists for sync manager %@", &v12, 0xCu);
      }

      [*(a1 + 32) addObject:*(a1 + 40)];
    }
  }

  else
  {
    v9 = SYDGetConnectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2_cold_2();
    }
  }
}

+ (id)containerForStoreType:(int64_t)type containerID:(id)d testConfiguration:(id)configuration
{
  dCopy = d;
  configurationCopy = configuration;
  v9 = objc_alloc_init(MEMORY[0x277CBC230]);
  v10 = v9;
  if (!type)
  {
    [v9 setUseClearAssetEncryption:1];
  }

  currentPersona = [MEMORY[0x277D77C08] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  [v10 setPersonaIdentifier:userPersonaUniqueString];

  if (!configurationCopy)
  {
    goto LABEL_11;
  }

  if (!CloudKitTestingLibraryCore())
  {
    if (containerForStoreType_containerID_testConfiguration__onceToken != -1)
    {
      +[SYDDaemon containerForStoreType:containerID:testConfiguration:];
    }

    goto LABEL_11;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v13 = getCKTestServerManagerClass_softClass;
  v25 = getCKTestServerManagerClass_softClass;
  if (!getCKTestServerManagerClass_softClass)
  {
    CloudKitTestingLibraryCore();
    v23[3] = objc_getClass("CKTestServerManager");
    getCKTestServerManagerClass_softClass = v23[3];
    v13 = v23[3];
  }

  v14 = v13;
  _Block_object_dispose(&v22, 8);
  sharedManager = [v13 sharedManager];
  testServerName = [configurationCopy testServerName];
  v17 = [sharedManager persistedServerWithName:testServerName];

  testDeviceID = [configurationCopy testDeviceID];
  v19 = [v17 deviceWithDeviceID:testDeviceID error:0 deviceConfigurationBlock:0];

  v20 = [v19 containerWithContainerID:dCopy options:v10];

  if (!v20)
  {
LABEL_11:
    v20 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:dCopy options:v10];
  }

  return v20;
}

void __65__SYDDaemon_containerForStoreType_containerID_testConfiguration___block_invoke(uint64_t a1)
{
  v1 = SYDGetMiscLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __65__SYDDaemon_containerForStoreType_containerID_testConfiguration___block_invoke_cold_1();
  }
}

+ (id)defaultTestConfiguration
{
  v2 = [objc_alloc(MEMORY[0x277D6B890]) initWithTestServerName:@"CloudKeyValues" testDeviceID:@"DefaultDevice"];

  return v2;
}

- (id)allStoreIdentifiersWithError:(id *)error
{
  errorCopy = error;
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SYDDaemon_allStoreIdentifiersWithError___block_invoke;
  block[3] = &unk_279D2F6A0;
  block[4] = self;
  block[5] = &v30;
  dispatch_sync(queue, block);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v31[5];
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v7)
  {
    v23 = *v26;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v8);
        coreDataStore = [v10 coreDataStore];
        v24 = v9;
        v12 = [coreDataStore allStoreIdentifiersWithError:&v24];
        v6 = v24;

        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "storeType")}];
        v14 = [v4 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [v12 arrayByAddingObjectsFromArray:v14];

          v12 = v15;
        }

        v16 = [v12 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "storeType")}];
        [v4 setObject:v16 forKeyedSubscript:v17];

        ++v8;
        v9 = v6;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v7);
  }

  if (errorCopy)
  {
    v18 = v6;
    *errorCopy = v6;
  }

  v19 = [v4 copy];

  _Block_object_dispose(&v30, 8);

  return v19;
}

uint64_t __42__SYDDaemon_allStoreIdentifiersWithError___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_allSyncManagers];

  return MEMORY[0x2821F96F8]();
}

- (void)removeUnitTestSyncManagers
{
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26C384000, v3, OS_LOG_TYPE_INFO, "Removing unit test sync managers in daemon", buf, 2u);
  }

  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = SYDAllStoreTypes();
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = SYDContainerID([*(*(&v13 + 1) + 8 * v7) integerValue], 1);
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) syncManagersByPersona];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_2;
  v11[3] = &unk_279D2F6F0;
  v12 = v2;
  v10 = v2;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_3;
  v10 = &unk_279D2F790;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v7];
  [v4 removeObjectsForKeys:{v6, v7, v8, v9, v10}];
}

void __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)registerForPeriodAnalyticsXPCActivity
{
  v3 = SYDGetAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon registerForPeriodAnalyticsXPCActivity];
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke;
  handler[3] = &unk_279D2F7B8;
  handler[4] = self;
  xpc_activity_register("com.apple.kvs.periodic-analytics", v4, handler);
}

void __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    [*(a1 + 32) sendAnalyticsEventForCurrentState];
  }

  else if (!state)
  {
    v5 = SYDGetAnalyticsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke_cold_1();
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v7 = xpc_activity_copy_criteria(v3);
    v8 = v7;
    if (!v7 || !xpc_equal(v7, v6))
    {
      v9 = SYDGetAnalyticsLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke_cold_2();
      }

      xpc_activity_set_criteria(v3, v6);
    }
  }
}

- (void)sendAnalyticsEventForCurrentState
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = SYDGetAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon sendAnalyticsEventForCurrentState];
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__1;
  v61 = __Block_byref_object_dispose__1;
  v62 = 0;
  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SYDDaemon_sendAnalyticsEventForCurrentState__block_invoke;
  block[3] = &unk_279D2F6A0;
  block[4] = self;
  block[5] = &v57;
  dispatch_sync(queue, block);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v58[5];
  v40 = [obj countByEnumeratingWithState:&v52 objects:v72 count:16];
  if (v40)
  {
    v39 = *v53;
    *&v5 = 138412290;
    v37 = v5;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v52 + 1) + 8 * i);
        testConfiguration = [v46 testConfiguration];

        if (!testConfiguration)
        {
          coreDataStore = [v46 coreDataStore];
          v8 = [coreDataStore allStoreIdentifiersWithError:0];

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v42 = v8;
          v9 = [v42 countByEnumeratingWithState:&v48 objects:v71 count:16];
          if (v9)
          {
            v45 = 0;
            v43 = *v49;
            do
            {
              v10 = 0;
              v44 = v9;
              do
              {
                if (*v49 != v43)
                {
                  objc_enumerationMutation(v42);
                }

                v11 = *(*(&v48 + 1) + 8 * v10);
                coreDataStore2 = [v46 coreDataStore];
                v13 = [coreDataStore2 numberOfKeyValuesInStoreWithIdentifier:v11 error:0];

                v14 = v11;
                v47 = v14;
                if (([(__CFString *)v14 hasPrefix:@"com.apple."]& 1) == 0)
                {
                  v47 = v14;
                  if (arc4random_uniform(0x3E8u) != 13)
                  {

                    v47 = @"ThirdPartyStore";
                  }
                }

                v69[0] = @"containerIdentifier";
                container = [v46 container];
                containerIdentifier = [container containerIdentifier];
                v70[0] = containerIdentifier;
                v69[1] = @"containerEnvironment";
                v17 = MEMORY[0x277CCABB0];
                container2 = [v46 container];
                containerID = [container2 containerID];
                v20 = [v17 numberWithInteger:{objc_msgSend(containerID, "environment")}];
                v70[1] = v20;
                v70[2] = v47;
                v69[2] = @"storeIdentifier";
                v69[3] = @"keyValueCount";
                v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
                v70[3] = v21;
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:4];

                v23 = SYDGetAnalyticsLog();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v66 = v14;
                  v67 = 2112;
                  v68 = v22;
                  _os_log_impl(&dword_26C384000, v23, OS_LOG_TYPE_INFO, "Store state for %@: %@", buf, 0x16u);
                }

                AnalyticsSendEvent();
                v45 += v13;
                ++v10;
              }

              while (v44 != v10);
              v9 = [v42 countByEnumeratingWithState:&v48 objects:v71 count:16];
            }

            while (v9);
          }

          else
          {
            v45 = 0;
          }

          v63[0] = @"containerIdentifier";
          container3 = [v46 container];
          containerIdentifier2 = [container3 containerIdentifier];
          v64[0] = containerIdentifier2;
          v63[1] = @"containerEnvironment";
          v26 = MEMORY[0x277CCABB0];
          container4 = [v46 container];
          containerID2 = [container4 containerID];
          v29 = [v26 numberWithInteger:{objc_msgSend(containerID2, "environment")}];
          v64[1] = v29;
          v63[2] = @"storeCount";
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "count")}];
          v64[2] = v30;
          v63[3] = @"keyValueCount";
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
          v64[3] = v31;
          v63[4] = @"databaseSizeBytes";
          v32 = MEMORY[0x277CCABB0];
          coreDataStore3 = [v46 coreDataStore];
          v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(coreDataStore3, "fileSizeBytes")}];
          v64[4] = v34;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:5];

          v36 = SYDGetAnalyticsLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = v37;
            v66 = v35;
            _os_log_impl(&dword_26C384000, v36, OS_LOG_TYPE_INFO, "Container state: %@", buf, 0xCu);
          }

          AnalyticsSendEvent();
        }
      }

      v40 = [obj countByEnumeratingWithState:&v52 objects:v72 count:16];
    }

    while (v40);
  }

  _Block_object_dispose(&v57, 8);
}

uint64_t __46__SYDDaemon_sendAnalyticsEventForCurrentState__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_allSyncManagers];

  return MEMORY[0x2821F96F8]();
}

- (void)willSwitchUser
{
  v3 = SYDGetMiscLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon willSwitchUser];
  }

  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SYDDaemon_willSwitchUser__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __27__SYDDaemon_willSwitchUser__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_allSyncManagers];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  v3 = v1;
  if (v2)
  {
    v4 = v2;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasPendingChangesToUpload])
        {

          v7 = SYDGetMiscLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            __27__SYDDaemon_willSwitchUser__block_invoke_cold_1();
          }

          v3 = [MEMORY[0x277D77C28] taskWithName:@"KVSPendingChanges" reason:@"Saving pending records"];
          [v3 begin];
          goto LABEL_13;
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v3 = v1;
  }

LABEL_13:
}

- (void)uploadContent
{
  queue = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SYDDaemon_uploadContent__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __26__SYDDaemon_uploadContent__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __26__SYDDaemon_uploadContent__block_invoke_cold_1();
  }

  v13 = [MEMORY[0x277D77C28] taskWithName:@"KVSUpload" reason:@"Saving pending records"];
  [v13 begin];
  v3 = dispatch_group_create();
  v14 = a1;
  v4 = [*(a1 + 32) _queue_allSyncManagers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = SYDGetMiscLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_debug_impl(&dword_26C384000, v10, OS_LOG_TYPE_DEBUG, "About to upload pending changes in sync bubble for %@", buf, 0xCu);
        }

        dispatch_group_enter(v3);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __26__SYDDaemon_uploadContent__block_invoke_98;
        v17[3] = &unk_279D2F7E0;
        v17[4] = v9;
        v18 = v3;
        [v9 savePendingChangesToCloudForAllStoresWithCompletionHandler:v17];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v11 = [*(v14 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SYDDaemon_uploadContent__block_invoke_100;
  block[3] = &unk_279D2F628;
  v16 = v13;
  v12 = v13;
  dispatch_group_notify(v3, v11, block);
}

void __26__SYDDaemon_uploadContent__block_invoke_98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetMiscLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __26__SYDDaemon_uploadContent__block_invoke_98_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __26__SYDDaemon_uploadContent__block_invoke_98_cold_2();
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __26__SYDDaemon_uploadContent__block_invoke_100(uint64_t a1)
{
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __26__SYDDaemon_uploadContent__block_invoke_100_cold_1();
  }

  return [*(a1 + 32) end];
}

void __37__SYDDaemon_connectionDidInvalidate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __35__SYDDaemon__processAccountChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __35__SYDDaemon__processAccountChanges__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __35__SYDDaemon__processAccountChanges__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)applicationIdentifiersForStoreIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26C384000, v0, OS_LOG_TYPE_ERROR, "Couldn't get store URL to initialize sync manager: %@", v1, 0xCu);
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26C384000, v0, OS_LOG_TYPE_ERROR, "Error getting old store URL, not migrating: %@", v1, 0xCu);
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void __40__SYDDaemon_initializeKnownSyncManagers__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __26__SYDDaemon_uploadContent__block_invoke_98_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __26__SYDDaemon_uploadContent__block_invoke_98_cold_2()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end