@interface BBRemoteDataProviderConnectionResolver
+ (id)resolverWithDelegate:(id)delegate;
+ (id)xpcInterface;
- (BBRemoteDataProviderConnectionResolver)initWithDelegate:(id)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)dataProviderForSectionID:(id)d;
- (id)dataProvidersForUniversalSectionID:(id)d;
- (id)debugDescriptionWithChildren:(unint64_t)children;
- (void)_registerForPublicationNotification;
- (void)_registerServiceName:(id)name appBundleID:(id)d completion:(id)completion;
- (void)dataProviderStore:(id)store didAddDataProvider:(id)provider performMigration:(BOOL)migration completion:(id)completion;
- (void)dataProviderStore:(id)store didAddParentSectionFactory:(id)factory;
- (void)dataProviderStore:(id)store didRemoveDataProvider:(id)provider;
- (void)dealloc;
- (void)performBlockOnDataProviders:(id)providers;
- (void)registerServiceName:(id)name appBundleID:(id)d completion:(id)completion;
- (void)remoteDataProviderNeedsToWakeClient:(id)client;
- (void)removeDataProvider:(id)provider;
- (void)wakeService:(id)service bundleID:(id)d;
@end

@implementation BBRemoteDataProviderConnectionResolver

+ (id)resolverWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy];

  return v4;
}

- (BBRemoteDataProviderConnectionResolver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = BBRemoteDataProviderConnectionResolver;
  v6 = [(BBRemoteDataProviderConnectionResolver *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProviderConnectionsByService = v7->_dataProviderConnectionsByService;
    v7->_dataProviderConnectionsByService = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProviderConnectionsBySectionID = v7->_dataProviderConnectionsBySectionID;
    v7->_dataProviderConnectionsBySectionID = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProviderConnectionsByUniversalSectionID = v7->_dataProviderConnectionsByUniversalSectionID;
    v7->_dataProviderConnectionsByUniversalSectionID = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    xpcConnectionsByService = v7->_xpcConnectionsByService;
    v7->_xpcConnectionsByService = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProviderConnectionResolver", v16);
    queue = v7->_queue;
    v7->_queue = v17;

    v19 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProviderConnectionResolver.registerQueue", 0);
    registerQueue = v7->_registerQueue;
    v7->_registerQueue = v19;

    dispatch_set_target_queue(v7->_registerQueue, v7->_queue);
    dispatch_suspend(v7->_registerQueue);
    v21 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletinboard.dataproviderconnection"];
    listener = v7->_listener;
    v7->_listener = v21;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
    [(BBRemoteDataProviderConnectionResolver *)v7 _registerForPublicationNotification];
  }

  return v7;
}

- (void)_registerForPublicationNotification
{
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __77__BBRemoteDataProviderConnectionResolver__registerForPublicationNotification__block_invoke;
  handler[3] = &unk_278D2B138;
  handler[4] = self;
  notify_register_dispatch(BBServerListeningForConnectionsKey, &self->_listeningToken, queue, handler);
}

void __77__BBRemoteDataProviderConnectionResolver__registerForPublicationNotification__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64 == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  notify_cancel(self->_listeningToken);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_xpcConnectionsByService;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_xpcConnectionsByService objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7)];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSXPCListener *)self->_listener invalidate];
  v9.receiver = self;
  v9.super_class = BBRemoteDataProviderConnectionResolver;
  [(BBRemoteDataProviderConnectionResolver *)&v9 dealloc];
}

- (id)debugDescriptionWithChildren:(unint64_t)children
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  if (children)
  {
    childrenCopy = children;
    do
    {
      [v5 appendString:@"    "];
      --childrenCopy;
    }

    while (childrenCopy);
  }

  v7 = MEMORY[0x277CCAB68];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@<%@: %p>", v5, v9, self];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BBRemoteDataProviderConnectionResolver_debugDescriptionWithChildren___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v12 = v10;
  v17 = v12;
  childrenCopy2 = children;
  dispatch_sync(queue, block);
  v13 = v17;
  v14 = v12;

  return v12;
}

void __71__BBRemoteDataProviderConnectionResolver_debugDescriptionWithChildren___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 32) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(a1[4] + 32);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(a1[4] + 32) objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v6)];
          v8 = a1[5];
          v9 = [v7 debugDescriptionWithChildren:a1[6] + 2];
          [v8 appendFormat:@"\n%@", v9];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v28 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v25 = v11;
    v26 = 2114;
    v27 = connectionCopy;
    _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received connection request from %{public}@", buf, 0x16u);
  }

  if (self->_listener == listenerCopy)
  {
    v14 = [connectionCopy valueForEntitlement:@"com.apple.bulletinboard.dataprovider"];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      queue = self->_queue;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __77__BBRemoteDataProviderConnectionResolver_listener_shouldAcceptNewConnection___block_invoke;
      v21[3] = &unk_278D2A628;
      v22 = connectionCopy;
      selfCopy = self;
      dispatch_async(queue, v21);

      v12 = 1;
      goto LABEL_5;
    }

    v17 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = connectionCopy;
      _os_log_impl(&dword_241EFF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling incoming data provider connection because it lacks proper entitlement: %{public}@", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_5:

  return v12;
}

uint64_t __77__BBRemoteDataProviderConnectionResolver_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = BBDataProviderConnectionCheckinServerInterface(a1);
  [v2 setExportedInterface:v3];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [v4 resume];
}

- (void)registerServiceName:(id)name appBundleID:(id)d completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  if (nameCopy)
  {
    [(BBRemoteDataProviderConnectionResolver *)self _registerServiceName:nameCopy appBundleID:dCopy completion:completionCopy];
  }

  else
  {
    v11 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138543618;
      v16 = v14;
      v17 = 2114;
      v18 = dCopy;
      _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to register for app bundle identifier %{public}@", &v15, 0x16u);
    }
  }
}

- (void)_registerServiceName:(id)name appBundleID:(id)d completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  registerQueue = self->_registerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke;
  block[3] = &unk_278D2B1D8;
  block[4] = self;
  v18 = nameCopy;
  v19 = dCopy;
  v20 = currentConnection;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = currentConnection;
  v15 = dCopy;
  v16 = nameCopy;
  dispatch_async(registerQueue, block);
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = BBLogConnection;
  v4 = os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = v3;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 40);
      *buf = 138543618;
      v26 = v7;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received checkin from %{public}@ [KNOWN]", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v9 = v3;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 40);
      *buf = 138543618;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received checkin from %{public}@ [NEW]", buf, 0x16u);
    }

    v2 = [[BBRemoteDataProviderConnection alloc] initWithServiceName:*(a1 + 40) bundleID:*(a1 + 48) delegate:*(a1 + 32)];
    [*(*(a1 + 32) + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  objc_initWeak(buf, *(a1 + 32));
  objc_initWeak(&location, *(a1 + 56));
  objc_initWeak(&from, v2);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_20;
  v18[3] = &unk_278D2B188;
  v19 = *(a1 + 40);
  objc_copyWeak(&v20, buf);
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v13 = MEMORY[0x245D05D40](v18);
  [*(a1 + 56) setInvalidationHandler:v13];
  [*(a1 + 56) setInterruptionHandler:v13];
  v14 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  [v14 invalidate];
  [*(*(a1 + 32) + 56) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 40)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_2;
  v15[3] = &unk_278D2B1B0;
  v16 = *(a1 + 64);
  objc_copyWeak(&v17, &from);
  [(BBRemoteDataProviderConnection *)v2 setConnected:1 completion:v15];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_20(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "Remote data provider XPC connection for service '%{public}@' has been interrupted or invalidated", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_21;
    v7[3] = &unk_278D2B160;
    objc_copyWeak(&v9, a1 + 6);
    v7[4] = v5;
    v8 = a1[4];
    objc_copyWeak(&v10, a1 + 7);
    dispatch_async(v6, v7);
    objc_destroyWeak(&v10);

    objc_destroyWeak(&v9);
  }
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];

    WeakRetained = v5;
    if (v5 == v3)
    {
      v4 = objc_loadWeakRetained((a1 + 56));
      [v4 setConnected:0 completion:0];

      [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
      WeakRetained = v5;
    }
  }
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

+ (id)xpcInterface
{
  if (xpcInterface_onceToken != -1)
  {
    +[BBRemoteDataProviderConnectionResolver xpcInterface];
  }

  v3 = xpcInterface___interface;

  return v3;
}

uint64_t __54__BBRemoteDataProviderConnectionResolver_xpcInterface__block_invoke()
{
  xpcInterface___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28543D510];

  return MEMORY[0x2821F96F8]();
}

- (void)remoteDataProviderNeedsToWakeClient:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  sectionIdentifier = [client sectionIdentifier];
  v5 = [(NSMutableDictionary *)self->_dataProviderConnectionsBySectionID objectForKeyedSubscript:sectionIdentifier];
  serviceName = [v5 serviceName];
  v7 = serviceName;
  if (v5)
  {
    v8 = serviceName == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    serviceName2 = [v5 serviceName];
    bundleID = [v5 bundleID];
    [(BBRemoteDataProviderConnectionResolver *)self wakeService:serviceName2 bundleID:bundleID];

LABEL_13:
    goto LABEL_14;
  }

  if (v5)
  {
    v9 = serviceName == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      serviceName2 = v10;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = sectionIdentifier;
      _os_log_impl(&dword_241EFF000, serviceName2, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to wake client with no serviceName for sectionID %{public}@", &v15, 0x16u);

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)wakeService:(id)service bundleID:(id)d
{
  v53 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dCopy = d;
  if (!serviceCopy)
  {
    [BBRemoteDataProviderConnectionResolver wakeService:a2 bundleID:self];
  }

  v9 = dispatch_group_create();
  v10 = v9;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__4;
  v45 = __Block_byref_object_dispose__4;
  v46 = 0;
  if (dCopy)
  {
    dispatch_group_enter(v9);
    v11 = MEMORY[0x277D46F48];
    v12 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:dCopy];
    v13 = v42;
    obj = 0;
    v14 = [v11 handleForPredicate:v12 error:&obj];
    objc_storeStrong(v13 + 5, obj);

    if (v42[5])
    {
      v15 = BBLogConnection;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = v42[5];
        *buf = 138543874;
        v48 = v17;
        v49 = 2114;
        v50 = dCopy;
        v51 = 2114;
        v52 = v18;
        _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to get process handle for %{public}@; %{public}@", buf, 0x20u);
      }

      v19 = v42[5];
      v42[5] = 0;

      dispatch_group_leave(v10);
    }

    else
    {
      currentState = [v14 currentState];
      process = [currentState process];

      if (!process || [process pid] == -1)
      {
        v26 = MEMORY[0x277CBEAC0];
        v27 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v28 = [v26 dictionaryWithObject:v27 forKey:*MEMORY[0x277D0ABF0]];

        v29 = [MEMORY[0x277D0AD60] optionsWithDictionary:v28];
        serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke;
        v37[3] = &unk_278D2B200;
        v39 = &v41;
        v38 = v10;
        [serviceWithDefaultShellEndpoint openApplication:dCopy withOptions:v29 completion:v37];
      }

      else
      {
        v22 = BBLogConnection;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = [process pid];
          *buf = 138543874;
          v48 = v24;
          v49 = 2114;
          v50 = dCopy;
          v51 = 1024;
          LODWORD(v52) = v25;
          _os_log_impl(&dword_241EFF000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ will not launch %{public}@ because it is already running with a pid of %d", buf, 0x1Cu);
        }

        dispatch_group_leave(v10);
      }
    }
  }

  queue = self->_queue;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke_42;
  v33[3] = &unk_278D2A8D8;
  selfCopy = self;
  v36 = &v41;
  v34 = serviceCopy;
  v32 = serviceCopy;
  dispatch_group_notify(v10, queue, v33);

  _Block_object_dispose(&v41, 8);
}

void __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke_42(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*(a1[6] + 8) + 40))
  {
    v2 = BBLogConnection;
    if (!os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = a1[4];
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to wake %{public}@", buf, 0x16u);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:a1[4] options:0];
    v8 = [objc_opt_class() xpcInterface];
    [v7 setRemoteObjectInterface:v8];

    [v7 resume];
    v9 = [v7 remoteObjectProxy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke_2;
    v10[3] = &unk_278D2A600;
    v11 = v7;
    v3 = v7;
    [v9 ping:v10];
  }
}

- (id)dataProviderForSectionID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BBRemoteDataProviderConnectionResolver_dataProviderForSectionID___block_invoke;
  block[3] = &unk_278D2B228;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__BBRemoteDataProviderConnectionResolver_dataProviderForSectionID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v2 = [v5 dataProviderForSectionID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dataProvidersForUniversalSectionID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BBRemoteDataProviderConnectionResolver_dataProvidersForUniversalSectionID___block_invoke;
  block[3] = &unk_278D2AB58;
  block[4] = self;
  v13 = dCopy;
  v7 = v5;
  v14 = v7;
  v8 = dCopy;
  dispatch_sync(queue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __77__BBRemoteDataProviderConnectionResolver_dataProvidersForUniversalSectionID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) dataProvidersForUniversalSectionID:*(a1 + 40)];
        [*(a1 + 48) unionSet:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)removeDataProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BBRemoteDataProviderConnectionResolver_removeDataProvider___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

void __61__BBRemoteDataProviderConnectionResolver_removeDataProvider___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) sectionIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  [v4 removeDataProvider:*(a1 + 40)];
}

- (void)performBlockOnDataProviders:(id)providers
{
  providersCopy = providers;
  if (!providersCopy)
  {
    [(BBRemoteDataProviderConnectionResolver *)a2 performBlockOnDataProviders:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__BBRemoteDataProviderConnectionResolver_performBlockOnDataProviders___block_invoke;
  v8[3] = &unk_278D2AC38;
  v8[4] = self;
  v9 = providersCopy;
  v7 = providersCopy;
  dispatch_async(queue, v8);
}

void __70__BBRemoteDataProviderConnectionResolver_performBlockOnDataProviders___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 performBlockOnDataProviders:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)dataProviderStore:(id)store didAddDataProvider:(id)provider performMigration:(BOOL)migration completion:(id)completion
{
  storeCopy = store;
  providerCopy = provider;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__BBRemoteDataProviderConnectionResolver_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke;
  block[3] = &unk_278D2ADF0;
  block[4] = self;
  v18 = providerCopy;
  migrationCopy = migration;
  v19 = storeCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = storeCopy;
  v16 = providerCopy;
  dispatch_async(queue, block);
}

void __107__BBRemoteDataProviderConnectionResolver_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 40);
  v4 = [*(a1 + 40) sectionIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [*(a1 + 40) universalSectionIdentifier];
  v7 = v5;
  if (v5)
  {
    v6 = [*(*(a1 + 32) + 48) objectForKey:v5];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(*(a1 + 32) + 48) setObject:v6 forKey:v7];
    }

    [v6 addObject:*(a1 + 48)];
  }

  [*(*(a1 + 32) + 64) dataProviderStore:*(a1 + 32) didAddDataProvider:*(a1 + 40) performMigration:*(a1 + 64) completion:*(a1 + 56)];
}

- (void)dataProviderStore:(id)store didRemoveDataProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__BBRemoteDataProviderConnectionResolver_dataProviderStore_didRemoveDataProvider___block_invoke;
  v8[3] = &unk_278D2A628;
  v8[4] = self;
  v9 = providerCopy;
  v7 = providerCopy;
  dispatch_async(queue, v8);
}

void __82__BBRemoteDataProviderConnectionResolver_dataProviderStore_didRemoveDataProvider___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) sectionIdentifier];
  v8 = [v2 objectForKey:v3];

  v4 = *(*(a1 + 32) + 40);
  v5 = [*(a1 + 40) sectionIdentifier];
  [v4 removeObjectForKey:v5];

  v6 = [*(a1 + 40) universalSectionIdentifier];
  if (v6)
  {
    v7 = [*(*(a1 + 32) + 48) objectForKey:v6];
    [v7 removeObject:v8];
    if (![v7 count])
    {
      [*(*(a1 + 32) + 48) removeObjectForKey:v6];
    }
  }

  [*(*(a1 + 32) + 64) dataProviderStore:*(a1 + 32) didRemoveDataProvider:*(a1 + 40)];
}

- (void)dataProviderStore:(id)store didAddParentSectionFactory:(id)factory
{
  factoryCopy = factory;
  if (objc_opt_respondsToSelector())
  {
    [(BBDataProviderStoreDelegate *)self->_delegate dataProviderStore:self didAddParentSectionFactory:factoryCopy];
  }
}

- (void)wakeService:(uint64_t)a1 bundleID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBRemoteDataProviderConnectionResolver.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];
}

- (void)performBlockOnDataProviders:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBRemoteDataProviderConnectionResolver.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end