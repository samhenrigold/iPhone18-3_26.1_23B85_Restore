@interface FSClient
+ (FSClient)sharedInstance;
+ (id)new;
- (id)doneFSCKWithTask:(id)task;
- (id)initClient;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)startFSCKWithDevice:(id)device volumes:(id)volumes error:(id *)error;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)activateVolume:(id)volume shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)activateVolume:(id)volume shortName:(id)name options:(id)options replyHandler:(id)handler;
- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options replyHandler:(id)handler;
- (void)cancelTask:(id)task replyHandler:(id)handler;
- (void)checkResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler;
- (void)checkResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection replyHandler:(id)handler;
- (void)currentContainers:(id)containers;
- (void)currentContainersSync:(id)sync;
- (void)currentResourceIDs:(id)ds;
- (void)currentResourceIDsSync:(id)sync;
- (void)currentTasks:(id)tasks;
- (void)currentTasksSync:(id)sync;
- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume shortName:(id)name options:(id)options replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options replyHandler:(id)handler;
- (void)dealloc;
- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler;
- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection replyHandler:(id)handler;
- (void)handleInvalidated;
- (void)installedExtensionWithBundleID:(id)d synchronous:(BOOL)synchronous replyHandler:(id)handler;
- (void)installedExtensionWithShortName:(id)name synchronous:(BOOL)synchronous replyHandler:(id)handler;
- (void)installedExtensions:(id)extensions;
- (void)installedExtensionsForUser:(id *)user replyHandler:(id)handler;
- (void)installedExtensionsSync:(id)sync;
- (void)loadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)loadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler;
- (void)loadResource:(id)resource shortName:(id)name options:(id)options synchronousReplyHandler:(id)handler;
- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler;
- (void)probeResource:(id)resource usingBundle:(id)bundle auditToken:(id *)token replyHandler:(id)handler;
- (void)probeResource:(id)resource usingBundle:(id)bundle replyHandler:(id)handler;
- (void)probeResourceSync:(id)sync usingBundle:(id)bundle replyHandler:(id)handler;
- (void)setEnabledStateForIdentifier:(id)identifier newState:(BOOL)state replyHandler:(id)handler;
- (void)setTaskUpdateHandler:(id)handler replyHandler:(id)replyHandler;
- (void)setupConnection;
- (void)setupHandlers;
- (void)unloadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)unloadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler;
- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler;
- (void)validateVolumeName:(id)name usingBundle:(id)bundle volumeID:(id)d replyHandler:(id)handler;
@end

@implementation FSClient

- (void)setupConnection
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  conn = selfCopy->_conn;
  if (conn || ([(FSClient *)selfCopy setupConnection], (conn = selfCopy->_conn) != 0))
  {
    v7 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = fs_errorForPOSIXError(61);
    handlerCopy[2](handlerCopy, v9);

    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  conn = selfCopy->_conn;
  if (conn || ([(FSClient *)selfCopy setupConnection], (conn = selfCopy->_conn) != 0))
  {
    v7 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = fs_errorForPOSIXError(61);
    handlerCopy[2](handlerCopy, v9);

    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setupHandlers
{
  objc_initWeak(&location, self);
  conn = self->_conn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__FSClient_setupHandlers__block_invoke;
  v7[3] = &unk_278FECDB8;
  objc_copyWeak(&v8, &location);
  [(NSXPCConnection *)conn setInterruptionHandler:v7];
  v4 = self->_conn;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__FSClient_setupHandlers__block_invoke_3;
  v5[3] = &unk_278FECDB8;
  objc_copyWeak(&v6, &location);
  [(NSXPCConnection *)v4 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __25__FSClient_setupHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__FSClient_setupHandlers__block_invoke_2;
    block[3] = &unk_278FED278;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

void __25__FSClient_setupHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__FSClient_setupHandlers__block_invoke_4;
    block[3] = &unk_278FED278;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

- (void)handleInvalidated
{
  v3 = fskit_std_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_24A929000, v3, OS_LOG_TYPE_INFO, "FSClient connection to fskitd was invalidated", v9, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  fsClientTaskUpdateHandler = selfCopy->_fsClientTaskUpdateHandler;
  if (fsClientTaskUpdateHandler)
  {
    taskHandler = [(FSClientTaskUpdateHandler *)fsClientTaskUpdateHandler taskHandler];
    [(FSClientTaskUpdateHandler *)selfCopy->_fsClientTaskUpdateHandler setTaskHandler:0];
  }

  else
  {
    taskHandler = 0;
  }

  conn = selfCopy->_conn;
  selfCopy->_conn = 0;

  objc_sync_exit(selfCopy);
  if (taskHandler)
  {
    v8 = fs_errorForPOSIXError(4);
    (taskHandler)[2](taskHandler, 0, v8);
  }
}

- (id)initClient
{
  v3.receiver = self;
  v3.super_class = FSClient;
  return [(FSClient *)&v3 init];
}

- (void)dealloc
{
  conn = self->_conn;
  if (conn)
  {
    [(NSXPCConnection *)conn invalidate];
    v4 = self->_conn;
    self->_conn = 0;
  }

  v5.receiver = self;
  v5.super_class = FSClient;
  [(FSClient *)&v5 dealloc];
}

+ (FSClient)sharedInstance
{
  v8 = *MEMORY[0x277D85DE8];
  if (MKBGetDeviceLockState() == 3 || (v2 = MKBDeviceUnlockedSinceBoot(), v2))
  {
    if (sharedInstance_onceToken != -1)
    {
      +[FSClient sharedInstance];
    }

    v3 = sharedInstance_sharedInstance;
  }

  else
  {
    v5 = fskit_std_log(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "+[FSClient sharedInstance]";
      _os_log_impl(&dword_24A929000, v5, OS_LOG_TYPE_INFO, "%s: Device was never unlocked", &v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t __26__FSClient_sharedInstance__block_invoke()
{
  v0 = [[FSClient alloc] initClient];
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)installedExtensions:(id)extensions
{
  extensionsCopy = extensions;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__FSClient_Private__installedExtensions___block_invoke;
  v10[3] = &unk_278FECE20;
  v5 = extensionsCopy;
  v11 = v5;
  v6 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__FSClient_Private__installedExtensions___block_invoke_2;
  v8[3] = &unk_278FED020;
  v9 = v5;
  v7 = v5;
  [v6 installedExtensions:v8];
}

- (void)installedExtensionsSync:(id)sync
{
  syncCopy = sync;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__FSClient_Private__installedExtensionsSync___block_invoke;
  v10[3] = &unk_278FECE20;
  v5 = syncCopy;
  v11 = v5;
  v6 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__FSClient_Private__installedExtensionsSync___block_invoke_2;
  v8[3] = &unk_278FED020;
  v9 = v5;
  v7 = v5;
  [v6 installedExtensions:v8];
}

- (void)installedExtensionsForUser:(id *)user replyHandler:(id)handler
{
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__FSClient_Private__installedExtensionsForUser_replyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v7 = handlerCopy;
  v15 = v7;
  v8 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__FSClient_Private__installedExtensionsForUser_replyHandler___block_invoke_2;
  v12[3] = &unk_278FED020;
  v13 = v7;
  v9 = *&user->var0[4];
  v11[0] = *user->var0;
  v11[1] = v9;
  v10 = v7;
  [v8 installedExtensionsForAuditToken:v11 replyHandler:v12];
}

- (void)installedExtensionWithShortName:(id)name synchronous:(BOOL)synchronous replyHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (synchronousCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__FSClient_Private__installedExtensionWithShortName_synchronous_replyHandler___block_invoke;
    v20[3] = &unk_278FECE20;
    v10 = &v21;
    v21 = handlerCopy;
    nameCopy = name;
    v12 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v20];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__FSClient_Private__installedExtensionWithShortName_synchronous_replyHandler___block_invoke_2;
    v18[3] = &unk_278FECE20;
    v10 = &v19;
    v19 = handlerCopy;
    nameCopy2 = name;
    v12 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v18];
  }

  v14 = v12;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__FSClient_Private__installedExtensionWithShortName_synchronous_replyHandler___block_invoke_3;
  v16[3] = &unk_278FED4D8;
  v17 = v9;
  v15 = v9;
  [v14 installedExtensionWithShortName:name replyHandler:v16];
}

- (void)installedExtensionWithBundleID:(id)d synchronous:(BOOL)synchronous replyHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (synchronousCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__FSClient_Private__installedExtensionWithBundleID_synchronous_replyHandler___block_invoke;
    v20[3] = &unk_278FECE20;
    v10 = &v21;
    v21 = handlerCopy;
    dCopy = d;
    v12 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v20];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__FSClient_Private__installedExtensionWithBundleID_synchronous_replyHandler___block_invoke_2;
    v18[3] = &unk_278FECE20;
    v10 = &v19;
    v19 = handlerCopy;
    dCopy2 = d;
    v12 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v18];
  }

  v14 = v12;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__FSClient_Private__installedExtensionWithBundleID_synchronous_replyHandler___block_invoke_3;
  v16[3] = &unk_278FED4D8;
  v17 = v9;
  v15 = v9;
  [v14 installedExtensionWithBundleID:d replyHandler:v16];
}

- (void)currentTasks:(id)tasks
{
  tasksCopy = tasks;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__FSClient_Private__currentTasks___block_invoke;
  v7[3] = &unk_278FECE20;
  v8 = tasksCopy;
  v5 = tasksCopy;
  v6 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 currentTasks:v5];
}

- (void)currentTasksSync:(id)sync
{
  syncCopy = sync;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__FSClient_Private__currentTasksSync___block_invoke;
  v7[3] = &unk_278FECE20;
  v8 = syncCopy;
  v5 = syncCopy;
  v6 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 currentTasks:v5];
}

- (void)currentResourceIDs:(id)ds
{
  dsCopy = ds;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__FSClient_Private__currentResourceIDs___block_invoke;
  v10[3] = &unk_278FECE20;
  v5 = dsCopy;
  v11 = v5;
  v6 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__FSClient_Private__currentResourceIDs___block_invoke_2;
  v8[3] = &unk_278FED020;
  v9 = v5;
  v7 = v5;
  [v6 currentResourceIDs:v8];
}

- (void)currentResourceIDsSync:(id)sync
{
  syncCopy = sync;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__FSClient_Private__currentResourceIDsSync___block_invoke;
  v10[3] = &unk_278FECE20;
  v5 = syncCopy;
  v11 = v5;
  v6 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__FSClient_Private__currentResourceIDsSync___block_invoke_2;
  v8[3] = &unk_278FED020;
  v9 = v5;
  v7 = v5;
  [v6 currentResourceIDs:v8];
}

- (void)currentContainers:(id)containers
{
  containersCopy = containers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__FSClient_Private__currentContainers___block_invoke;
  v7[3] = &unk_278FECE20;
  v8 = containersCopy;
  v5 = containersCopy;
  v6 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 currentContainers:v5];
}

- (void)currentContainersSync:(id)sync
{
  syncCopy = sync;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__FSClient_Private__currentContainersSync___block_invoke;
  v7[3] = &unk_278FECE20;
  v8 = syncCopy;
  v5 = syncCopy;
  v6 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 currentContainers:v5];
}

- (void)probeResource:(id)resource usingBundle:(id)bundle replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__FSClient_Private__probeResource_usingBundle_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v9 = handlerCopy;
  v17 = v9;
  bundleCopy = bundle;
  resourceCopy = resource;
  v12 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__FSClient_Private__probeResource_usingBundle_replyHandler___block_invoke_2;
  v14[3] = &unk_278FED500;
  v15 = v9;
  v13 = v9;
  [v12 probeResource:resourceCopy usingBundle:bundleCopy replyHandler:v14];
}

- (void)probeResource:(id)resource usingBundle:(id)bundle auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__FSClient_Private__probeResource_usingBundle_auditToken_replyHandler___block_invoke;
  v17[3] = &unk_278FECE20;
  v18 = handlerCopy;
  v11 = handlerCopy;
  bundleCopy = bundle;
  resourceCopy = resource;
  v14 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v15;
  [v14 probeResource:resourceCopy usingBundle:bundleCopy auditToken:v16 replyHandler:v11];
}

- (void)probeResourceSync:(id)sync usingBundle:(id)bundle replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__FSClient_Private__probeResourceSync_usingBundle_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v9 = handlerCopy;
  v17 = v9;
  bundleCopy = bundle;
  syncCopy = sync;
  v12 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__FSClient_Private__probeResourceSync_usingBundle_replyHandler___block_invoke_2;
  v14[3] = &unk_278FED500;
  v15 = v9;
  v13 = v9;
  [v12 probeResource:syncCopy usingBundle:bundleCopy replyHandler:v14];
}

- (void)checkResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection replyHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__FSClient_Private__checkResource_usingBundle_options_connection_replyHandler___block_invoke;
  v24[3] = &unk_278FECE20;
  v14 = handlerCopy;
  v25 = v14;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v18 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__FSClient_Private__checkResource_usingBundle_options_connection_replyHandler___block_invoke_2;
  v21[3] = &unk_278FED528;
  v22 = connectionCopy;
  v23 = v14;
  v19 = connectionCopy;
  v20 = v14;
  [v18 checkResource:resourceCopy usingBundle:bundleCopy options:optionsCopy connection:v19 replyHandler:v21];
}

uint64_t __79__FSClient_Private__checkResource_usingBundle_options_connection_replyHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 didStart];
}

- (void)checkResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__FSClient_Private__checkResource_usingBundle_options_auditToken_connection_replyHandler___block_invoke;
  v28[3] = &unk_278FECE20;
  v16 = handlerCopy;
  v29 = v16;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v20 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v28];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __90__FSClient_Private__checkResource_usingBundle_options_auditToken_connection_replyHandler___block_invoke_2;
  v25[3] = &unk_278FED528;
  v26 = connectionCopy;
  v27 = v16;
  v21 = *&token->var0[4];
  v24[0] = *token->var0;
  v24[1] = v21;
  v22 = connectionCopy;
  v23 = v16;
  [v20 checkResource:resourceCopy usingBundle:bundleCopy options:optionsCopy auditToken:v24 connection:v22 replyHandler:v25];
}

uint64_t __90__FSClient_Private__checkResource_usingBundle_options_auditToken_connection_replyHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 didStart];
}

- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection replyHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__FSClient_Private__formatResource_usingBundle_options_connection_replyHandler___block_invoke;
  v24[3] = &unk_278FECE20;
  v14 = handlerCopy;
  v25 = v14;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v18 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__FSClient_Private__formatResource_usingBundle_options_connection_replyHandler___block_invoke_2;
  v21[3] = &unk_278FED528;
  v22 = connectionCopy;
  v23 = v14;
  v19 = connectionCopy;
  v20 = v14;
  [v18 formatResource:resourceCopy usingBundle:bundleCopy options:optionsCopy connection:v19 replyHandler:v21];
}

uint64_t __80__FSClient_Private__formatResource_usingBundle_options_connection_replyHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 didStart];
}

- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__FSClient_Private__formatResource_usingBundle_options_auditToken_connection_replyHandler___block_invoke;
  v28[3] = &unk_278FECE20;
  v16 = handlerCopy;
  v29 = v16;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v20 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v28];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__FSClient_Private__formatResource_usingBundle_options_auditToken_connection_replyHandler___block_invoke_2;
  v25[3] = &unk_278FED528;
  v26 = connectionCopy;
  v27 = v16;
  v21 = *&token->var0[4];
  v24[0] = *token->var0;
  v24[1] = v21;
  v22 = connectionCopy;
  v23 = v16;
  [v20 formatResource:resourceCopy usingBundle:bundleCopy options:optionsCopy auditToken:v24 connection:v22 replyHandler:v25];
}

uint64_t __91__FSClient_Private__formatResource_usingBundle_options_auditToken_connection_replyHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 didStart];
}

- (void)setTaskUpdateHandler:(id)handler replyHandler:(id)replyHandler
{
  handlerCopy = handler;
  replyHandlerCopy = replyHandler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__FSClient_Private__setTaskUpdateHandler_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v8 = replyHandlerCopy;
  v17 = v8;
  v9 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__FSClient_Private__setTaskUpdateHandler_replyHandler___block_invoke_2;
  v13[3] = &unk_278FED550;
  v10 = handlerCopy != 0;
  v13[4] = self;
  v14 = handlerCopy;
  v15 = v8;
  v11 = v8;
  v12 = handlerCopy;
  [v9 setTaskUpdateInterest:v10 replyHandler:v13];
}

uint64_t __55__FSClient_Private__setTaskUpdateHandler_replyHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __55__FSClient_Private__setTaskUpdateHandler_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    [*(*(a1 + 32) + 16) setTaskHandler:*(a1 + 40)];
    objc_sync_exit(v4);

    v3 = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)cancelTask:(id)task replyHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__FSClient_Private__cancelTask_replyHandler___block_invoke;
  v10[3] = &unk_278FECE20;
  v11 = handlerCopy;
  v7 = handlerCopy;
  taskCopy = task;
  v9 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v10];
  [v9 cancelTask:taskCopy replyHandler:v7];
}

- (void)validateVolumeName:(id)name usingBundle:(id)bundle volumeID:(id)d replyHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
  dCopy = d;
  handlerCopy = handler;
  uTF8String = [nameCopy UTF8String];
  v15 = fskit_std_log(uTF8String);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[FSClient(Private) validateVolumeName:usingBundle:volumeID:replyHandler:]";
    *&buf[12] = 2080;
    *&buf[14] = uTF8String;
    *&buf[22] = 2112;
    v39 = bundleCopy;
    v40 = 2112;
    v41 = dCopy;
    _os_log_debug_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEBUG, "%s:start:%s:%@:%@", buf, 0x2Au);
  }

  if ([bundleCopy isEqualToString:@"com.apple.fskit.exfat"])
  {
    precomposedStringWithCanonicalMapping = [nameCopy precomposedStringWithCanonicalMapping];
    if ([precomposedStringWithCanonicalMapping lengthOfBytesUsingEncoding:10] >= 0x17)
    {
LABEL_5:
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = _FSKitLocalizedStringWithFormat(@"VolNameTooLongFAT", @"FSClientLocalizable", v17);

      goto LABEL_31;
    }

    v18 = 0;
    v21 = "*/:<>?\\|";
    goto LABEL_17;
  }

  if ([bundleCopy isEqualToString:@"com.apple.fskit.msdos"])
  {
    precomposedStringWithCanonicalMapping = [nameCopy precomposedStringWithCanonicalMapping];
    if ([precomposedStringWithCanonicalMapping lengthOfBytesUsingEncoding:10] >= 0x17)
    {
      goto LABEL_5;
    }

    v18 = 0;
    v21 = "*+,./:;<=>?[\\]|";
    goto LABEL_17;
  }

  if (![bundleCopy isEqualToString:@"com.apple.fskit.apfs"])
  {
    if (![bundleCopy isEqualToString:@"com.apple.fskit.hfs"])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v39) = 0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__FSClient_Private__validateVolumeName_usingBundle_volumeID_replyHandler___block_invoke;
      v35[3] = &unk_278FED578;
      v35[4] = buf;
      v32 = [(FSClient *)self installedExtensionWithBundleID:bundleCopy synchronous:1 replyHandler:v35];
      if (*(*&buf[8] + 24))
      {
        v18 = 0;
      }

      else
      {
        v33 = fskit_std_log(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [FSClient(Private) validateVolumeName:usingBundle:volumeID:replyHandler:];
        }

        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = _FSKitLocalizedStringWithFormat(@"UnknownBundle", @"FSClientLocalizable", v34);
      }

      _Block_object_dispose(buf, 8);
      if (v18)
      {
        goto LABEL_32;
      }

LABEL_43:
      v31 = 0;
      goto LABEL_44;
    }

    if ([nameCopy length] < 0x100)
    {
      v18 = 0;
      v21 = "/:";
LABEL_18:
      v19 = [nameCopy length];
      if (v19)
      {
        v22 = 0;
        while (1)
        {
          v23 = *(uTF8String + v22);
          if (v23 == 32 && v22 == 0)
          {
            break;
          }

          if (v23 < 0x20 || strchr(v21, v23))
          {
            v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v26 = _FSKitLocalizedStringWithFormat(@"VolNameContainsInvalidChars", @"FSClientLocalizable", v25);

            goto LABEL_30;
          }

          v19 = [nameCopy length];
          if (v19 <= ++v22)
          {
            goto LABEL_31;
          }
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = _FSKitLocalizedStringWithFormat(@"VolNameStartsWithSpace", @"FSClientLocalizable", v27);

LABEL_30:
        v18 = v26;
      }

      goto LABEL_31;
    }

    precomposedStringWithCanonicalMapping = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = _FSKitLocalizedStringWithFormat(@"VolNameTooLongHFS", @"FSClientLocalizable", precomposedStringWithCanonicalMapping);
    v21 = "/:";
LABEL_17:

    goto LABEL_18;
  }

  if ([nameCopy length] < 0x101)
  {
    v18 = 0;
    goto LABEL_43;
  }

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = _FSKitLocalizedStringWithFormat(@"VolNameTooLongAPFS", @"FSClientLocalizable", v20);

LABEL_31:
  if (!v18)
  {
    goto LABEL_43;
  }

LABEL_32:
  v28 = fskit_std_log(v19);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [FSClient(Private) validateVolumeName:usingBundle:volumeID:replyHandler:];
  }

  v29 = MEMORY[0x277CCA9B8];
  v36 = *MEMORY[0x277CCA470];
  v37 = v18;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v31 = [v29 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v30];

LABEL_44:
  handlerCopy[2](handlerCopy, v31);
}

void __74__FSClient_Private__validateVolumeName_usingBundle_volumeID_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = fskit_std_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__FSClient_Private__validateVolumeName_usingBundle_volumeID_replyHandler___block_invoke_cold_1();
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = v5 != 0;
  }
}

- (void)activateVolume:(id)volume shortName:(id)name options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__FSClient_Private__activateVolume_shortName_options_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  v11 = handlerCopy;
  optionsCopy = options;
  nameCopy = name;
  volumeCopy = volume;
  v15 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  [v15 activateVolume:volumeCopy shortName:nameCopy options:optionsCopy replyHandler:v11];
}

- (void)activateVolume:(id)volume shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__FSClient_Private__activateVolume_shortName_options_auditToken_replyHandler___block_invoke;
  v20[3] = &unk_278FECE20;
  v21 = handlerCopy;
  v13 = handlerCopy;
  optionsCopy = options;
  nameCopy = name;
  volumeCopy = volume;
  v17 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v18;
  [v17 activateVolume:volumeCopy shortName:nameCopy options:optionsCopy auditToken:v19 replyHandler:v13];
}

- (void)deactivateVolume:(id)volume shortName:(id)name options:(id)options replyHandler:(id)handler
{
  volumeCopy = volume;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v14 = [FSTaskOption optionWithoutValue:@"-f"];
  if (optionsCopy)
  {
    options = [optionsCopy options];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __69__FSClient_Private__deactivateVolume_shortName_options_replyHandler___block_invoke;
    v19 = &unk_278FED5A0;
    v20 = v14;
    v21 = &v22;
    [options enumerateObjectsUsingBlock:&v16];
  }

  [(FSClient *)self deactivateVolume:volumeCopy shortName:nameCopy numericOptions:v23[3] replyHandler:handlerCopy, v16, v17, v18, v19];

  _Block_object_dispose(&v22, 8);
}

void *__69__FSClient_Private__deactivateVolume_shortName_options_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 1uLL;
  }

  return result;
}

- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__FSClient_Private__deactivateVolume_shortName_numericOptions_auditToken_replyHandler___block_invoke;
  v19[3] = &unk_278FECE20;
  v20 = handlerCopy;
  v13 = handlerCopy;
  nameCopy = name;
  volumeCopy = volume;
  v16 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v19];
  v17 = *&token->var0[4];
  v18[0] = *token->var0;
  v18[1] = v17;
  [v16 deactivateVolume:volumeCopy shortName:nameCopy numericOptions:options auditToken:v18 replyHandler:v13];
}

- (void)loadResource:(id)resource shortName:(id)name options:(id)options synchronousReplyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__FSClient_Private__loadResource_shortName_options_synchronousReplyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  v11 = handlerCopy;
  optionsCopy = options;
  nameCopy = name;
  resourceCopy = resource;
  v15 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  [v15 loadResource:resourceCopy shortName:nameCopy options:optionsCopy replyHandler:v11];
}

- (void)loadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__FSClient_Private__loadResource_shortName_options_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  v11 = handlerCopy;
  optionsCopy = options;
  nameCopy = name;
  resourceCopy = resource;
  v15 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  [v15 loadResource:resourceCopy shortName:nameCopy options:optionsCopy replyHandler:v11];
}

- (void)loadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__FSClient_Private__loadResource_shortName_options_auditToken_replyHandler___block_invoke;
  v20[3] = &unk_278FECE20;
  v21 = handlerCopy;
  v13 = handlerCopy;
  optionsCopy = options;
  nameCopy = name;
  resourceCopy = resource;
  v17 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v18;
  [v17 loadResource:resourceCopy shortName:nameCopy options:optionsCopy auditToken:v19 replyHandler:v13];
}

- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__FSClient_Private__loadResource_usingBundle_options_auditToken_replyHandler___block_invoke;
  v20[3] = &unk_278FECE20;
  v21 = handlerCopy;
  v13 = handlerCopy;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v17 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v18;
  [v17 loadResource:resourceCopy usingBundle:bundleCopy options:optionsCopy auditToken:v19 replyHandler:v13];
}

- (void)unloadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__FSClient_Private__unloadResource_shortName_options_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  v11 = handlerCopy;
  optionsCopy = options;
  nameCopy = name;
  resourceCopy = resource;
  v15 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  [v15 unloadResource:resourceCopy shortName:nameCopy options:optionsCopy replyHandler:v11];
}

- (void)unloadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__FSClient_Private__unloadResource_shortName_options_auditToken_replyHandler___block_invoke;
  v20[3] = &unk_278FECE20;
  v21 = handlerCopy;
  v13 = handlerCopy;
  optionsCopy = options;
  nameCopy = name;
  resourceCopy = resource;
  v17 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v18;
  [v17 unloadResource:resourceCopy shortName:nameCopy options:optionsCopy auditToken:v19 replyHandler:v13];
}

- (void)setEnabledStateForIdentifier:(id)identifier newState:(BOOL)state replyHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__FSClient_Private__setEnabledStateForIdentifier_newState_replyHandler___block_invoke;
  v12[3] = &unk_278FECE20;
  v13 = handlerCopy;
  v9 = handlerCopy;
  identifierCopy = identifier;
  v11 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v12];
  [v11 setEnabledStateForIdentifier:identifierCopy newState:stateCopy replyHandler:v9];
}

- (id)startFSCKWithDevice:(id)device volumes:(id)volumes error:(id *)error
{
  deviceCopy = device;
  volumesCopy = volumes;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__FSClient_Private__startFSCKWithDevice_volumes_error___block_invoke;
  v16[3] = &unk_278FECF30;
  v16[4] = &v17;
  v10 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__FSClient_Private__startFSCKWithDevice_volumes_error___block_invoke_2;
  v15[3] = &unk_278FED5C8;
  v15[4] = &v23;
  v15[5] = &v17;
  v11 = [v10 startFSCKWithDevice:deviceCopy volumes:volumesCopy replyHandler:v15];
  if (error)
  {
    v11 = v18[5];
    *error = v11;
  }

  v12 = fskit_std_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FSClient(Private) startFSCKWithDevice:volumes:error:];
  }

  v13 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __55__FSClient_Private__startFSCKWithDevice_volumes_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)doneFSCKWithTask:(id)task
{
  taskCopy = task;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__FSClient_Private__doneFSCKWithTask___block_invoke;
  v10[3] = &unk_278FECF30;
  v10[4] = &v11;
  v5 = [(FSClient *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__FSClient_Private__doneFSCKWithTask___block_invoke_2;
  v9[3] = &unk_278FECF30;
  v9[4] = &v11;
  v6 = fskit_std_log([v5 doneFSCKWithTask:taskCopy replyHandler:v9]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FSClient(Private) doneFSCKWithTask:];
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

+ (id)new
{
  v9 = *MEMORY[0x277D85DE8];
  if (MKBGetDeviceLockState() == 3 || (v3 = MKBDeviceUnlockedSinceBoot(), v3))
  {
    v4 = [self alloc];

    return [v4 initClient];
  }

  else
  {
    v6 = fskit_std_log(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "+[FSClient(Private) new]";
      _os_log_impl(&dword_24A929000, v6, OS_LOG_TYPE_INFO, "%s: Device was never unlocked", &v7, 0xCu);
    }

    return 0;
  }
}

- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__FSClient_Project__activateVolume_usingBundle_options_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  v11 = handlerCopy;
  optionsCopy = options;
  bundleCopy = bundle;
  volumeCopy = volume;
  v15 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  [v15 activateVolume:volumeCopy usingBundle:bundleCopy options:optionsCopy replyHandler:v11];
}

- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__FSClient_Project__activateVolume_usingBundle_options_auditToken_replyHandler___block_invoke;
  v20[3] = &unk_278FECE20;
  v21 = handlerCopy;
  v13 = handlerCopy;
  optionsCopy = options;
  bundleCopy = bundle;
  volumeCopy = volume;
  v17 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v18;
  [v17 activateVolume:volumeCopy usingBundle:bundleCopy options:optionsCopy auditToken:v19 replyHandler:v13];
}

- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__FSClient_Project__deactivateVolume_shortName_numericOptions_replyHandler___block_invoke;
  v15[3] = &unk_278FECE20;
  v16 = handlerCopy;
  v11 = handlerCopy;
  nameCopy = name;
  volumeCopy = volume;
  v14 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v15];
  [v14 deactivateVolume:volumeCopy shortName:nameCopy numericOptions:options replyHandler:v11];
}

- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__FSClient_Project__deactivateVolume_usingBundle_numericOptions_auditToken_replyHandler___block_invoke;
  v19[3] = &unk_278FECE20;
  v20 = handlerCopy;
  v13 = handlerCopy;
  bundleCopy = bundle;
  volumeCopy = volume;
  v16 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v19];
  v17 = *&token->var0[4];
  v18[0] = *token->var0;
  v18[1] = v17;
  [v16 deactivateVolume:volumeCopy usingBundle:bundleCopy numericOptions:options auditToken:v18 replyHandler:v13];
}

- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__FSClient_Project__deactivateVolume_usingBundle_numericOptions_replyHandler___block_invoke;
  v15[3] = &unk_278FECE20;
  v16 = handlerCopy;
  v11 = handlerCopy;
  bundleCopy = bundle;
  volumeCopy = volume;
  v14 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v15];
  [v14 deactivateVolume:volumeCopy usingBundle:bundleCopy numericOptions:options replyHandler:v11];
}

- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__FSClient_Project__loadResource_usingBundle_options_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  v11 = handlerCopy;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v15 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  [v15 loadResource:resourceCopy usingBundle:bundleCopy options:optionsCopy replyHandler:v11];
}

- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__FSClient_Project__unloadResource_usingBundle_options_replyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  v11 = handlerCopy;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v15 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v16];
  [v15 unloadResource:resourceCopy usingBundle:bundleCopy options:optionsCopy replyHandler:v11];
}

- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__FSClient_Project__unloadResource_usingBundle_options_auditToken_replyHandler___block_invoke;
  v20[3] = &unk_278FECE20;
  v21 = handlerCopy;
  v13 = handlerCopy;
  optionsCopy = options;
  bundleCopy = bundle;
  resourceCopy = resource;
  v17 = [(FSClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v18;
  [v17 unloadResource:resourceCopy usingBundle:bundleCopy options:optionsCopy auditToken:v19 replyHandler:v13];
}

void __74__FSClient_Private__validateVolumeName_usingBundle_volumeID_replyHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end