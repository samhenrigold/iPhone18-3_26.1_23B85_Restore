@interface BKSSystemShellControlService
+ (id)sharedInstance;
- (BKSSystemShellControlService)initWithCalloutQueue:(id)queue;
- (void)_activateServerConnection;
- (void)terminateSystemShellWithJobLabel:(id)label;
@end

@implementation BKSSystemShellControlService

- (void)_activateServerConnection
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698F498] endpointForMachName:? service:? instance:?];
  if (v4)
  {
    v5 = [MEMORY[0x1E698F490] connectionWithEndpoint:?];
    if (v5)
    {
      v6 = v5;
      objc_storeStrong(&self->_connection, v5);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __57__BKSSystemShellControlService__activateServerConnection__block_invoke;
      v19 = &unk_1E6F47220;
      selfCopy = self;
      [v6 configureConnection:?];
      v7 = BKLogSystemShell();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_186345000, v7, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
      }

      [v6 activate];
      v8 = BKLogSystemShell();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        remoteTarget = [v6 remoteTarget];
        *buf = 138543362;
        v22 = remoteTarget;
        _os_log_debug_impl(&dword_186345000, v8, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
      }

      remoteTarget2 = [v6 remoteTarget];

      if (!remoteTarget2)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = NSStringFromSelector(a2);
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = 138544642;
          v22 = v11;
          v23 = 2114;
          v24 = v13;
          v25 = 2048;
          selfCopy2 = self;
          v27 = 2114;
          v28 = @"BKSSystemShellControlService.m";
          v29 = 1024;
          v30 = 111;
          v31 = 2114;
          v32 = v10;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v10 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18635CB10);
      }
    }

    else
    {
      v14 = BKLogSystemShell();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "BKSSystemShellControlService: cannot get connection for service", buf, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = BKLogSystemShell();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, "BKSSystemShellControlService: cannot get endpoint for mach service", buf, 2u);
    }
  }
}

void __57__BKSSystemShellControlService__activateServerConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogSystemShell();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_186345000, v3, OS_LOG_TYPE_DEBUG, "configured client service", v8, 2u);
  }

  v4 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v5 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v6 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v6 setServer:?];
  [v6 setClient:?];
  [v2 setInterface:?];
  [v2 setInterfaceTarget:?];
  [v2 setTargetQueue:?];
  v7 = [MEMORY[0x1E698F500] userInitiated];
  [v2 setServiceQuality:?];

  [v2 setInterruptionHandler:?];
  [v2 setInvalidationHandler:?];
}

void __57__BKSSystemShellControlService__activateServerConnection__block_invoke_55(uint64_t a1)
{
  v1 = BKLogSystemShell();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_186345000, v1, OS_LOG_TYPE_ERROR, "service invalidation", v2, 2u);
  }
}

void __57__BKSSystemShellControlService__activateServerConnection__block_invoke_51(uint64_t a1)
{
  v1 = BKLogSystemShell();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_186345000, v1, OS_LOG_TYPE_ERROR, "service interruption", v2, 2u);
  }
}

- (void)terminateSystemShellWithJobLabel:(id)label
{
  v11 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = BKLogSystemShell();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = labelCopy;
    v9 = 2114;
    v10 = remoteTarget;
    _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "BKSSystemShellControlService: terminate %{public}@ with server:%{public}@", &v7, 0x16u);
  }

  [remoteTarget terminateShellWithJobLabel:?];
}

- (BKSSystemShellControlService)initWithCalloutQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = BKSSystemShellControlService;
  v6 = [(BKSSystemShellControlService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calloutQueue, queue);
    [(BKSSystemShellControlService *)v7 _activateServerConnection];
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_956 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_956, &__block_literal_global_957);
  }

  v3 = sharedInstance_service_958;

  return v3;
}

void __46__BKSSystemShellControlService_sharedInstance__block_invoke()
{
  v0 = [BKSSystemShellControlService alloc];
  v3 = dispatch_get_global_queue(21, 0);
  v1 = [(BKSSystemShellControlService *)v0 initWithCalloutQueue:?];
  v2 = sharedInstance_service_958;
  sharedInstance_service_958 = v1;
}

@end