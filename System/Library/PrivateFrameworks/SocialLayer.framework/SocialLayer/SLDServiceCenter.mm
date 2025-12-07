@interface SLDServiceCenter
+ (id)sharedCenter;
- (NSXPCConnection)conn;
- (SLDServiceCenter)init;
- (id)_synchronousRemoteObjectProxy;
- (id)connectionForServiceClass:(Class)class;
- (void)_ensureMainConnectionSynchronously;
- (void)init;
- (void)setConn:(id)conn;
@end

@implementation SLDServiceCenter

- (id)_synchronousRemoteObjectProxy
{
  [(SLDServiceCenter *)self _ensureMainConnectionSynchronously];
  conn = [(SLDServiceCenter *)self conn];
  v4 = conn;
  if (!conn)
  {
    v6 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceProxy synchronousRemoteServiceWithErrorHandler:];
    }

    goto LABEL_9;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke;
  v10[3] = &unk_278925CC8;
  v10[4] = self;
  v5 = [conn synchronousRemoteObjectProxyWithErrorHandler:v10];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 conformsToProtocol:&unk_2846BD5A0];
    if ((v7 & 1) == 0)
    {
      v8 = SLDaemonLogHandle(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SLDServiceCenter _synchronousRemoteObjectProxy];
      }

LABEL_9:
      v6 = 0;
    }
  }

  return v6;
}

- (void)_ensureMainConnectionSynchronously
{
  mainConnectionSetupQueue = [(SLDServiceCenter *)self mainConnectionSetupQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_sync(mainConnectionSetupQueue, block);
}

- (NSXPCConnection)conn
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  propertyConcurrentQueue = [(SLDServiceCenter *)self propertyConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__SLDServiceCenter_conn__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(propertyConcurrentQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)sharedCenter
{
  if (sharedCenter_onceToken != -1)
  {
    +[SLDServiceCenter sharedCenter];
  }

  v3 = sharedCenter_sClient;

  return v3;
}

uint64_t __32__SLDServiceCenter_sharedCenter__block_invoke()
{
  v0 = objc_alloc_init(SLDServiceCenter);
  v1 = sharedCenter_sClient;
  sharedCenter_sClient = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SLDServiceCenter)init
{
  v15.receiver = self;
  v15.super_class = SLDServiceCenter;
  v2 = [(SLDServiceCenter *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SocialLayer.SLDServiceCenter.Properties", v3);
    propertyConcurrentQueue = v2->_propertyConcurrentQueue;
    v2->_propertyConcurrentQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.SocialLayer.SLDServiceCenter.MainConnectionSetup", v6);
    mainConnectionSetupQueue = v2->_mainConnectionSetupQueue;
    v2->_mainConnectionSetupQueue = v7;

    v9 = SLDClientGlobalWorkloop();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SLDServiceCenter_init__block_invoke;
    block[3] = &unk_278925D90;
    v14 = v2;
    dispatch_async(v9, block);

    v11 = SLDaemonLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SLDServiceCenter init];
    }
  }

  return v2;
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conn];

  if (!v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846BD5A0];
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.sociallayerd" options:0];
    [v4 setRemoteObjectInterface:v3];
    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v4);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_2;
    v11 = &unk_2789270F8;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(&v13, &from);
    [v4 setInvalidationHandler:&v8];
    [v4 resume];
    v5 = SLDaemonLogHandle([*(a1 + 32) setConn:v4]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = [v6 conn];
      __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_cold_1(v6, v7, buf, v5);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (id)connectionForServiceClass:(Class)class
{
  v5 = SLGeneralTelemetryLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = SLGeneralTelemetryLogHandle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SLDServiceCenterConnectionForServiceClass", "", buf, 2u);
  }

  inited = objc_initWeak(&location, self);
  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__11;
  v26 = __Block_byref_object_dispose__11;
  v27 = 0;
  v10 = inited;
  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    v12 = NSStringFromClass(class);
    _synchronousRemoteObjectProxy = [(SLDServiceCenter *)self _synchronousRemoteObjectProxy];
    v14 = _synchronousRemoteObjectProxy;
    if (_synchronousRemoteObjectProxy)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __46__SLDServiceCenter_connectionForServiceClass___block_invoke;
      v21[3] = &unk_2789270D0;
      v21[4] = buf;
      v21[5] = class;
      [_synchronousRemoteObjectProxy endpointForServiceNamed:v12 reply:v21];
    }

    else
    {
      v15 = SLDaemonLogHandle(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SLDServiceCenter connectionForServiceClass:];
      }
    }
  }

  else
  {
    v12 = SLDaemonLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceCenter connectionForServiceClass:];
    }
  }

  v16 = SLGeneralTelemetryLogHandle();
  v17 = v16;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v17, OS_SIGNPOST_INTERVAL_END, v6, "SLDServiceCenterConnectionForServiceClass", "", v20, 2u);
  }

  v18 = *(v23 + 5);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);

  return v18;
}

void __46__SLDServiceCenter_connectionForServiceClass___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCAE80];
    v4 = a2;
    v5 = [[v3 alloc] initWithListenerEndpoint:v4];

    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = MEMORY[0x277CCAE90];
    v9 = [*(a1 + 40) remoteObjectProtocol];
    v10 = [v8 interfaceWithProtocol:v9];

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) setupInterface:v10];
    }

    [*(*(*(a1 + 32) + 8) + 40) setRemoteObjectInterface:v10];
  }
}

- (void)setConn:(id)conn
{
  connCopy = conn;
  propertyConcurrentQueue = [(SLDServiceCenter *)self propertyConcurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SLDServiceCenter_setConn___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = connCopy;
  v6 = connCopy;
  dispatch_barrier_async(propertyConcurrentQueue, v7);
}

void __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SLDaemonLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke_cold_1(a1, v3, v4);
  }
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained mainConnectionSetupQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3;
  v6[3] = &unk_278925CF0;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3(uint64_t a1)
{
  v2 = SLDaemonLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3_cold_1(a1, v2);
  }

  v3 = [*(a1 + 32) conn];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) setConn:0];
  }
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_231772000, v0, OS_LOG_TYPE_DEBUG, "[%@] Initialized SLDServiceCenter.", v1, 0xCu);
}

void __49__SLDServiceCenter__synchronousRemoteObjectProxy__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "[%@] Error retrieving a synchronous remote proxy to the main daemon service multiplexer. Error: [%@]", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_231772000, log, OS_LOG_TYPE_DEBUG, "[%@] New primary connection to sociallayerd: %@", buf, 0x16u);
}

void __54__SLDServiceCenter__ensureMainConnectionSynchronously__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Primary connection to sociallayerd was invalidated", &v3, 0xCu);
}

@end