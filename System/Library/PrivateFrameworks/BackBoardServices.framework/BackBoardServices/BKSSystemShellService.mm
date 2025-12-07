@interface BKSSystemShellService
- (BKSSystemShellService)initWithConfigurator:(id)configurator;
- (BOOL)collectiveWatchdogPing;
- (id)_server;
- (id)collectiveWatchdogPingBlock;
- (void)_checkInWithServerForReason:(int)reason waitForDataMigration:;
- (void)_setCheckInStatus:(uint64_t)status;
- (void)_tellServerWeFinishedLaunching;
- (void)didFinishLaunching;
- (void)restartWithOptions:(unint64_t)options;
- (void)setCalloutQueue:(id)queue;
- (void)setCollectiveWatchdogPingBlock:(id)block;
- (void)setIdleSleepInterval:(double)interval;
- (void)setIndependentWatchdogEnabled:(BOOL)enabled;
- (void)setWaitForDataMigration:(BOOL)migration;
- (void)start;
@end

@implementation BKSSystemShellService

- (BOOL)collectiveWatchdogPing
{
  v3 = BKLogSystemShell();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "collectiveWatchdogPing", buf, 2u);
  }

  v4 = atomic_load(&self->_checkInStatus);
  if (v4 < 2)
  {
    return 1;
  }

  watchdogPingBlock = self->_watchdogPingBlock;
  if (watchdogPingBlock)
  {
    return watchdogPingBlock[2]();
  }

  v7 = BKLogSystemShell();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "collectiveWatchdogPing -- did someone forgot to set a ping block?", v8, 2u);
  }

  return 0;
}

- (void)setIndependentWatchdogEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  v5 = BKLogSystemShell();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = enabledCopy;
    _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "setIndependentWatchdogEnabled: %{BOOL}u", v8, 8u);
  }

  _server = [(BKSSystemShellService *)&self->super.isa _server];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [_server setWatchdogMonitoringEnabled:?];
}

- (id)_server
{
  if (self)
  {
    self = [self[1] remoteTarget];
    v1 = vars8;
  }

  return self;
}

- (void)restartWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v11 = *MEMORY[0x1E69E9840];
  v5 = BKLogSystemShell();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = BKSRestartActionOptionsDescription(optionsCopy);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "restartWithOptions: %{public}@", &v9, 0xCu);
  }

  _server = [(BKSSystemShellService *)&self->super.isa _server];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [_server restartWithOptions:?];
}

- (void)didFinishLaunching
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&self->_checkInStatus);
  if (v4 <= 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v15 = 138544642;
      v16 = v8;
      v17 = 2114;
      v18 = v10;
      v19 = 2048;
      selfCopy2 = self;
      v21 = 2114;
      v22 = @"BKSSystemShellService.m";
      v23 = 1024;
      v24 = 141;
      v25 = 2114;
      v26 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v15, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186397B58);
  }

  v5 = atomic_load(&self->_checkInStatus);
  if (v5 >= 3)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138544642;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      v19 = 2048;
      selfCopy2 = self;
      v21 = 2114;
      v22 = @"BKSSystemShellService.m";
      v23 = 1024;
      v24 = 142;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v15, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186397C44);
  }

  [(BKSSystemShellService *)self _setCheckInStatus:?];
  v6 = BKLogSystemShell();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "didFinishLaunching", &v15, 2u);
  }

  [(BKSSystemShellService *)self _tellServerWeFinishedLaunching];
}

- (void)_setCheckInStatus:(uint64_t)status
{
  v24 = *MEMORY[0x1E69E9840];
  if (status)
  {
    v4 = atomic_load((status + 48));
    if (v4 > a2)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel__setCheckInStatus_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138544642;
        v13 = v9;
        v14 = 2114;
        v15 = v11;
        v16 = 2048;
        statusCopy = status;
        v18 = 2114;
        v19 = @"BKSSystemShellService.m";
        v20 = 1024;
        v21 = 227;
        v22 = 2114;
        v23 = v8;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186397E20);
    }

    v5 = atomic_load((status + 48));
    if (v5 != a2)
    {
      atomic_store(a2, (status + 48));
      v6 = BKLogSystemShell();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = NSStringFromBKSSystemShellCheckInStatus(a2);
        v12 = 138543362;
        v13 = v7;
        _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "checkin %{public}@", &v12, 0xCu);
      }
    }
  }
}

- (void)_tellServerWeFinishedLaunching
{
  if (self)
  {
    remoteTarget = [*(self + 8) remoteTarget];
    [remoteTarget finishedLaunching];
  }
}

- (void)start
{
  v22 = *MEMORY[0x1E69E9840];
  if (atomic_load(&self->_checkInStatus))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKSSystemShellService.m";
      v18 = 1024;
      v19 = 133;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398060);
  }

  [(BKSSystemShellService *)self _setCheckInStatus:?];
  waitForDataMigration = self->_waitForDataMigration;

  [(BKSSystemShellService *)self _checkInWithServerForReason:waitForDataMigration waitForDataMigration:?];
}

- (void)_checkInWithServerForReason:(int)reason waitForDataMigration:
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = BKLogSystemShell();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = v5;
      v34 = 1024;
      LODWORD(v35) = reason;
      _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "checkIn(%{public}@): (waits for migration:%{BOOL}u)", buf, 0x12u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __74__BKSSystemShellService__checkInWithServerForReason_waitForDataMigration___block_invoke;
    v24[3] = &unk_1E6F471E8;
    v25 = v5;
    selfCopy = self;
    v7 = MEMORY[0x186605BB0](v24);
    v8 = v7;
    if (reason)
    {
      v9 = v7;
      v10 = [MEMORY[0x1E698F498] endpointForMachName:? service:? instance:?];
      if (v10)
      {
        v11 = [MEMORY[0x1E698F490] connectionWithEndpoint:?];
        if (v11)
        {
          v12 = v11;
          v27 = MEMORY[0x1E69E9820];
          v28 = 3221225472;
          v29 = __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke;
          v30 = &unk_1E6F47220;
          selfCopy2 = self;
          [v11 configureConnection:?];
          v13 = BKLogSystemShell();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_186345000, v13, OS_LOG_TYPE_DEBUG, "_checkInWaitingForDataMigration: activating connection to server", buf, 2u);
          }

          [v12 activate];
          v14 = BKLogSystemShell();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            remoteTarget = [v12 remoteTarget];
            *buf = 138543362;
            v33 = remoteTarget;
            _os_log_debug_impl(&dword_186345000, v14, OS_LOG_TYPE_DEBUG, "_checkInWaitingForDataMigration: server remote target %{public}@", buf, 0xCu);
          }

          remoteTarget2 = [v12 remoteTarget];

          if (!remoteTarget2)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v21 = NSStringFromSelector(sel__checkInWaitingForDataMigration_);
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              *buf = 138544642;
              v33 = v21;
              v34 = 2114;
              v35 = v23;
              v36 = 2048;
              selfCopy3 = self;
              v38 = 2114;
              v39 = @"BKSSystemShellService.m";
              v40 = 1024;
              v41 = 286;
              v42 = 2114;
              v43 = v20;
              _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v20 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x1863984F0);
          }

          remoteTarget3 = [v12 remoteTarget];
          [remoteTarget3 checkInAfterDataMigrationUsingCompletionBlock:?];

          [v12 invalidate];
        }

        else
        {
          v18 = BKLogSystemShell();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_186345000, v18, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: cannot get connection for data migration checkin service", buf, 2u);
          }

          v12 = 0;
        }
      }

      else
      {
        v12 = BKLogSystemShell();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: cannot get endpoint for data migration checkin service", buf, 2u);
        }
      }
    }

    else
    {
      remoteTarget4 = [*(self + 8) remoteTarget];
      [remoteTarget4 checkInBypassingDataMigrationUsingCompletionBlock:?];
    }
  }
}

void __74__BKSSystemShellService__checkInWithServerForReason_waitForDataMigration___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BKLogSystemShell();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "checkIn(%{public}@): exiting due to XPC error: %{public}@", &v9, 0x16u);
    }

    if (*(a1 + 40))
    {
      exit(0);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "checkIn(%{public}@): complete", &v9, 0xCu);
    }

    v7 = atomic_load((*(a1 + 40) + 48));
    if (v7 <= 1)
    {
      [(BKSSystemShellService *)*(a1 + 40) _setCheckInStatus:?];
    }
  }
}

void __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogSystemShell();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_186345000, v3, OS_LOG_TYPE_DEBUG, "_checkInWaitingForDataMigration: configured client service", v8, 2u);
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

void __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke_98()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: data migration checkin service invalidated", v1, 2u);
  }
}

void __57__BKSSystemShellService__checkInWaitingForDataMigration___block_invoke_94()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "_checkInWaitingForDataMigration: data migration checkin service interrupted", v1, 2u);
  }
}

- (void)setCollectiveWatchdogPingBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (self->_configurationFinished)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSSystemShellService.m";
      v21 = 1024;
      v22 = 125;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863989FCLL);
  }

  v12 = blockCopy;
  v6 = [blockCopy copy];
  watchdogPingBlock = self->_watchdogPingBlock;
  self->_watchdogPingBlock = v6;
}

- (id)collectiveWatchdogPingBlock
{
  v2 = MEMORY[0x186605BB0](self->_watchdogPingBlock, a2);

  return v2;
}

- (void)setWaitForDataMigration:(BOOL)migration
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_configurationFinished)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138544642;
      v10 = v6;
      v11 = 2114;
      v12 = v8;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKSSystemShellService.m";
      v17 = 1024;
      v18 = 116;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398B84);
  }

  self->_waitForDataMigration = migration;
}

- (void)setIdleSleepInterval:(double)interval
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_configurationFinished)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138544642;
      v10 = v6;
      v11 = 2114;
      v12 = v8;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKSSystemShellService.m";
      v17 = 1024;
      v18 = 107;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398CE8);
  }

  self->_idleSleepInterval = interval;
}

- (void)setCalloutQueue:(id)queue
{
  v23 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_configurationFinished)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BKSSystemShellService.m";
      v19 = 1024;
      v20 = 98;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186398E64);
  }

  calloutQueue = self->_calloutQueue;
  self->_calloutQueue = queueCopy;

  MEMORY[0x1EEE66BB8](queueCopy, calloutQueue);
}

- (BKSSystemShellService)initWithConfigurator:(id)configurator
{
  v64 = *MEMORY[0x1E69E9840];
  configuratorCopy = configurator;
  v36.receiver = self;
  v36.super_class = BKSSystemShellService;
  v5 = [(BKSSystemShellService *)&v36 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_calloutQueue, MEMORY[0x1E69E96A0]);
    v6->_waitForDataMigration = 1;
    v7 = [&__block_literal_global_9682 copy];
    watchdogPingBlock = v6->_watchdogPingBlock;
    v6->_watchdogPingBlock = v7;

    v6->_idleSleepInterval = 3.0;
    (configuratorCopy)[2](configuratorCopy, v6);
    v6->_configurationFinished = 1;
    idleSleepInterval = v6->_idleSleepInterval;
    v10 = BKLogSystemShell();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = idleSleepInterval;
      _os_log_impl(&dword_186345000, v10, OS_LOG_TYPE_DEFAULT, "activate (idle interval %g)", &buf, 0xCu);
    }

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundlePath = [mainBundle bundlePath];
    bundleIdentifier = [mainBundle bundleIdentifier];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    bs_jobLabel = [processInfo bs_jobLabel];

    v16 = [MEMORY[0x1E698F498] endpointForMachName:? service:? instance:?];
    if (v16)
    {
      v17 = MEMORY[0x1E698F490];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v57 = __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke;
      v58 = &unk_1E6F47278;
      v59 = bundleIdentifier;
      v60 = bundlePath;
      v18 = bs_jobLabel;
      v63 = idleSleepInterval;
      v61 = v18;
      v62 = v6;
      v19 = [v17 connectionWithEndpoint:? clientContextBuilder:?];
      if (v19)
      {
        objc_storeStrong(&v6->_connection, v19);
        objc_initWeak(&location, v6);
        v37 = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_110;
        v40 = &unk_1E6F472A0;
        v41 = v6;
        objc_copyWeak(&v42, &location);
        [v19 configureConnection:?];
        v20 = BKLogSystemShell();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *v44 = 0;
          _os_log_debug_impl(&dword_186345000, v20, OS_LOG_TYPE_DEBUG, "activating connection to server", v44, 2u);
        }

        [v19 activate];
        v21 = BKLogSystemShell();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          remoteTarget = [v19 remoteTarget];
          *v44 = 138543362;
          v45 = remoteTarget;
          v35 = remoteTarget;
          _os_log_debug_impl(&dword_186345000, v21, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", v44, 0xCu);
        }

        remoteTarget2 = [v19 remoteTarget];
        v23 = remoteTarget2 == 0;

        if (v23)
        {
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
          v29 = MEMORY[0x1E69E9C10];
          v30 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v31 = NSStringFromSelector(sel__activateServerConnectionWithIdleSleepInterval_);
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            *v44 = 138544642;
            v45 = v31;
            v46 = 2114;
            v47 = v33;
            v48 = 2048;
            v49 = v6;
            v50 = 2114;
            v51 = @"BKSSystemShellService.m";
            v52 = 1024;
            v53 = 361;
            v54 = 2114;
            v55 = v28;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v44, 0x3Au);
          }

          v34 = v28;
          [v28 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863993F8);
        }

        BKSDisplayServicesStart();
        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);
      }

      else
      {
        v25 = BKLogSystemShell();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v44 = 0;
          _os_log_error_impl(&dword_186345000, v25, OS_LOG_TYPE_ERROR, "cannot get connection for service", v44, 2u);
        }
      }

      v24 = v59;
    }

    else
    {
      v24 = BKLogSystemShell();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_186345000, v24, OS_LOG_TYPE_ERROR, "BKSSystemShellService: cannot get endpoint for mach service", &buf, 2u);
      }
    }
  }

  return v6;
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 encodeObject:? forKey:?];
  [v2 encodeObject:? forKey:?];
  [v2 encodeObject:? forKey:?];
  [v2 encodeDouble:? forKey:?];
  [v2 encodeInt64:? forKey:?];
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogSystemShell();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", buf, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v7 setServer:?];
  [v7 setClient:?];
  [v3 setInterface:?];
  [v3 setInterfaceTarget:?];
  [v3 setTargetQueue:?];
  v8 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:?];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_120;
  v12 = &unk_1E6F47930;
  objc_copyWeak(&v13, (a1 + 40));
  [v3 setInterruptionHandler:?];
  [v3 setInvalidationHandler:?];
  objc_destroyWeak(&v13);
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_120(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BKLogSystemShell();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "shell service interruption -- attempting to reconnect", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = atomic_load(WeakRetained + 6);
    [v3 activate];
    v8 = MEMORY[0x1E696AEC0];
    v9 = NSStringFromBKSSystemShellCheckInStatus(v7);
    v10 = [v8 stringWithFormat:v9];

    v11 = BKLogSystemShell();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_186345000, v11, OS_LOG_TYPE_DEFAULT, "_%{public}@", buf, 0xCu);
    }

    switch(v7)
    {
      case 3uLL:
        [(BKSSystemShellService *)v6 _checkInWithServerForReason:v10 waitForDataMigration:0];
        [(BKSSystemShellService *)v6 _tellServerWeFinishedLaunching];
        goto LABEL_13;
      case 2uLL:
        v13 = v6;
        v14 = v10;
        v12 = 0;
        break;
      case 1uLL:
        v12 = v6[32];
        v13 = v6;
        v14 = v10;
        break;
      default:
LABEL_13:

        goto LABEL_14;
    }

    [(BKSSystemShellService *)v13 _checkInWithServerForReason:v14 waitForDataMigration:v12];
    goto LABEL_13;
  }

LABEL_14:
}

void __72__BKSSystemShellService__activateServerConnectionWithIdleSleepInterval___block_invoke_121(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogSystemShell();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "shell service invalidation -- I'm out", v4, 2u);
  }

  exit(0);
}

uint64_t __46__BKSSystemShellService_initWithConfigurator___block_invoke()
{
  v0 = BKLogSystemShell();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_186345000, v0, OS_LOG_TYPE_DEFAULT, "watchdog ping received", v2, 2u);
  }

  return 1;
}

@end