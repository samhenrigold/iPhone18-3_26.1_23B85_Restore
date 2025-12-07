@interface NPSManager
+ (BOOL)supportsWatch;
- (NPSManager)init;
- (id)connection;
- (void)dealloc;
- (void)invalidate;
- (void)synchronizeNanoDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled;
- (void)synchronizeUserDefaultsDomain:(id)domain keys:(id)keys container:(id)container appGroupContainer:(id)groupContainer cloudEnabled:(BOOL)enabled;
- (void)unsafe_invalidate;
@end

@implementation NPSManager

- (NPSManager)init
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NPSManager;
  v2 = [(NPSManager *)&v9 init];
  if (v2)
  {
    v3 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v2;
      _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.nanoprefsync.NPSManager.%p", v2];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create([v4 UTF8String], v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;
  }

  return v2;
}

- (id)connection
{
  location[3] = *MEMORY[0x1E69E9840];
  if (NPSShouldRun() && [objc_opt_class() supportsWatch])
  {
    if (!self->_xpcConnection)
    {
      if (connection_onceToken != -1)
      {
        [NPSManager connection];
      }

      v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.nanoprefsync" options:4096];
      xpcConnection = self->_xpcConnection;
      self->_xpcConnection = v3;

      [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:connection_remoteObjectInterface];
      objc_initWeak(location, self);
      [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_70];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __24__NPSManager_connection__block_invoke_71;
      v8[3] = &unk_1E8129680;
      objc_copyWeak(&v9, location);
      [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v8];
      [(NSXPCConnection *)self->_xpcConnection resume];
      objc_destroyWeak(&v9);
      objc_destroyWeak(location);
    }
  }

  else if (self->_xpcConnection)
  {
    [(NPSManager *)self unsafe_invalidate];
  }

  v5 = self->_xpcConnection;
  if (!v5)
  {
    v6 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NPSManager connection]";
      _os_log_impl(&dword_1C0D93000, v6, OS_LOG_TYPE_DEFAULT, "%s: Can't get xpcConnection- either there's a daemon failure or the daemon can't be launched because no watches are paired", location, 0xCu);
    }

    v5 = self->_xpcConnection;
  }

  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  [(NPSManager *)self unsafe_invalidate];
  v4.receiver = self;
  v4.super_class = NPSManager;
  [(NPSManager *)&v4 dealloc];
}

- (void)unsafe_invalidate
{
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

void __24__NPSManager_connection__block_invoke()
{
  v0 = MEMORY[0x1E696B0D0];
  v3 = &unk_1F403DC38;
  v1 = [v0 interfaceWithProtocol:v3];
  v2 = connection_remoteObjectInterface;
  connection_remoteObjectInterface = v1;
}

void __24__NPSManager_connection__block_invoke_2()
{
  v0 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C0D93000, v0, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v1, 2u);
  }
}

void __24__NPSManager_connection__block_invoke_71(uint64_t a1)
{
  v2 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0D93000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__NPSManager_connection__block_invoke_72;
    block[3] = &unk_1E8129518;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__NPSManager_invalidate__block_invoke;
  block[3] = &unk_1E8129518;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)synchronizeUserDefaultsDomain:(id)domain keys:(id)keys container:(id)container appGroupContainer:(id)groupContainer cloudEnabled:(BOOL)enabled
{
  v36 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  keysCopy = keys;
  containerCopy = container;
  groupContainerCopy = groupContainer;
  v16 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v29 = domainCopy;
    v30 = 2112;
    v31 = keysCopy;
    v32 = 2112;
    v33 = containerCopy;
    v34 = 2112;
    v35 = groupContainerCopy;
    _os_log_impl(&dword_1C0D93000, v16, OS_LOG_TYPE_DEFAULT, "synchronizeUserDefaultsDomain: (%@); keys: (%@); container: (%@); appGroupContainer: (%@)", buf, 0x2Au);
  }

  internalQueue = self->_internalQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke;
  v22[3] = &unk_1E81296D0;
  v22[4] = self;
  v23 = domainCopy;
  v24 = keysCopy;
  v25 = containerCopy;
  v26 = groupContainerCopy;
  enabledCopy = enabled;
  v18 = groupContainerCopy;
  v19 = containerCopy;
  v20 = keysCopy;
  v21 = domainCopy;
  dispatch_sync(internalQueue, v22);
}

void __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke_2;
  v13 = &unk_1E81296A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v14 = v8;
  v15 = v7;
  v9 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 synchronizeUserDefaultsDomain:*(a1 + 40) keys:*(a1 + 48) container:*(a1 + 56) appGroupContainer:*(a1 + 64) cloudEnabled:{*(a1 + 72), v10, v11, v12, v13}];
}

void __90__NPSManager_synchronizeUserDefaultsDomain_keys_container_appGroupContainer_cloudEnabled___block_invoke_2(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v9 = 138413314;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1C0D93000, v4, OS_LOG_TYPE_DEFAULT, "domain: (%@); keys: (%@); container: (%@); appGroupContainer: (%@) failed with error %@", &v9, 0x34u);
  }
}

- (void)synchronizeNanoDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled
{
  v24 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  keysCopy = keys;
  v10 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[NPSManager synchronizeNanoDomain:keys:cloudEnabled:]";
    v20 = 2114;
    v21 = domainCopy;
    v22 = 2112;
    v23 = keysCopy;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "%s: (%{public}@); keys: (%@)", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke;
  v14[3] = &unk_1E8129720;
  v14[4] = self;
  v15 = domainCopy;
  v16 = keysCopy;
  enabledCopy = enabled;
  v12 = keysCopy;
  v13 = domainCopy;
  dispatch_sync(internalQueue, v14);
}

void __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke_2;
  v7 = &unk_1E81296F8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v4];
  [v3 synchronizeNanoDomain:*(a1 + 40) keys:*(a1 + 48) cloudEnabled:{*(a1 + 56), v4, v5, v6, v7}];
}

void __54__NPSManager_synchronizeNanoDomain_keys_cloudEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1C0D93000, v4, OS_LOG_TYPE_DEFAULT, "synchronizeNanoDomain: (%@); keys: (%@) failed with error %@", &v7, 0x20u);
  }
}

+ (BOOL)supportsWatch
{
  if (supportsWatch_onceToken != -1)
  {
    +[NPSManager supportsWatch];
  }

  return supportsWatch_supportsWatch;
}

void __27__NPSManager_supportsWatch__block_invoke()
{
  if (MGGetBoolAnswer())
  {
    v1 = MGGetStringAnswer();
    if ([v1 isEqualToString:@"Watch"])
    {
      v0 = 1;
    }

    else
    {
      v0 = MGGetBoolAnswer();
    }

    supportsWatch_supportsWatch = v0;
  }
}

@end