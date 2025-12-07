@interface BYDeviceMigrationManager
- (BOOL)_hasAssertions;
- (BOOL)takeAssertions;
- (BYDeviceMigrationManager)initWithFileTranferSession:(id)session;
- (__MKBAssertion)acquireDeviceLockAssertion;
- (void)_reacquireDeviceLockAssertion;
- (void)addDelegate:(id)delegate;
- (void)cancelWithCause:(int64_t)cause;
- (void)dealloc;
- (void)releaseAssertions;
- (void)removeDelegate:(id)delegate;
- (void)restartDeviceTransferTask:(id)task;
- (void)start;
- (void)takeAssertions;
@end

@implementation BYDeviceMigrationManager

- (BYDeviceMigrationManager)initWithFileTranferSession:(id)session
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = BYDeviceMigrationManager;
  v6 = [(BYDeviceMigrationManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileTransferSession, session);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = weakObjectsHashTable;

    v10 = dispatch_queue_create("Device Migration Queue", 0);
    migrationQueue = v7->_migrationQueue;
    v7->_migrationQueue = v10;

    *&v7->_bytesTransferred = 0u;
    *&v7->_durationOfTransfer = 0u;
  }

  return v7;
}

- (void)dealloc
{
  if ([(BYDeviceMigrationManager *)self deviceLockAssertion])
  {
    CFRelease([(BYDeviceMigrationManager *)self deviceLockAssertion]);
  }

  v3.receiver = self;
  v3.super_class = BYDeviceMigrationManager;
  [(BYDeviceMigrationManager *)&v3 dealloc];
}

- (void)start
{
  migrationQueue = [(BYDeviceMigrationManager *)self migrationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BYDeviceMigrationManager_start__block_invoke;
  block[3] = &unk_1E7D027A8;
  block[4] = self;
  dispatch_sync(migrationQueue, block);
}

void __33__BYDeviceMigrationManager_start__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _BYLoggingFacility(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Preparing for device to device migration...", buf, 2u);
  }

  [*(a1 + 32) takeAssertions];
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) fileTransferSession];
  v6 = [v4 createDeviceTransferTask:v5];
  [*(a1 + 32) setDeviceTransferTask:v6];

  v7 = [*(a1 + 32) migrationQueue];
  v8 = [*(a1 + 32) deviceTransferTask];
  [v8 setQueue:v7];

  objc_initWeak(buf, *(a1 + 32));
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __33__BYDeviceMigrationManager_start__block_invoke_4;
  v19[3] = &unk_1E7D035D8;
  objc_copyWeak(&v20, buf);
  v9 = [*(a1 + 32) deviceTransferTask];
  [v9 setConnectionInfoHandler:v19];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__BYDeviceMigrationManager_start__block_invoke_6;
  v17[3] = &unk_1E7D03600;
  objc_copyWeak(&v18, buf);
  v10 = [*(a1 + 32) deviceTransferTask];
  [v10 setProgressHandler:v17];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__BYDeviceMigrationManager_start__block_invoke_2;
  v15[3] = &unk_1E7D03628;
  objc_copyWeak(&v16, buf);
  v11 = [*(a1 + 32) deviceTransferTask];
  [v11 setCompletionHandler:v15];

  v13 = _BYLoggingFacility(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, "Starting device to device migration...", v14, 2u);
  }

  [*(a1 + 32) setMigrating:1];
  [*(a1 + 32) setComplete:0];
  [*(a1 + 32) startDeviceTransferTask];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __33__BYDeviceMigrationManager_start__block_invoke_4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _BYLoggingFacility(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = [v3 connectionState];
    v19 = 2048;
    v20 = [v3 connectionType];
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Migration connection information updated (state: %ld, type: %ld)", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [WeakRetained delegates];
  v7 = [v6 allObjects];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) deviceMigrationManager:WeakRetained didChangeConnectionInformation:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [WeakRetained setConnectionInfo:v3];
}

void __33__BYDeviceMigrationManager_start__block_invoke_6(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [WeakRetained delegates];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v10++) deviceMigrationManager:WeakRetained didUpdateProgress:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  [WeakRetained setProgressInfo:v3];
  [v3 progress];
  if (v11 > 0.0)
  {
    [WeakRetained setBytesTransferred:{objc_msgSend(v3, "bytesTransferred")}];
    [WeakRetained setFilesTransferred:{objc_msgSend(v3, "filesTransferred")}];
    v12 = [v3 fileTransferStartDate];
    if (v12)
    {
      v13 = v12;
      v14 = [v3 restoreStartDate];

      if (v14)
      {
        v15 = [v3 restoreStartDate];
        v16 = [v3 fileTransferStartDate];
        [v15 timeIntervalSinceDate:v16];
        [WeakRetained setDurationOfTransfer:?];

        v17 = [v3 restoreStartDate];
        [v17 timeIntervalSinceNow];
        [WeakRetained setDurationOfRestore:-v18];
      }
    }
  }
}

void __33__BYDeviceMigrationManager_start__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _BYLoggingFacility([WeakRetained setError:v3]);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __33__BYDeviceMigrationManager_start__block_invoke_2_cold_1(v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Migration completed successfully!", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [WeakRetained delegates];
  v8 = [v7 allObjects];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) deviceMigrationManager:WeakRetained didCompleteWithError:v3];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }

  [WeakRetained didCompleteWithError:v3];
  [WeakRetained releaseAssertions];
  [WeakRetained setMigrating:0];
  [WeakRetained setComplete:1];
}

- (void)cancelWithCause:(int64_t)cause
{
  migrationQueue = [(BYDeviceMigrationManager *)self migrationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__BYDeviceMigrationManager_cancelWithCause___block_invoke;
  v6[3] = &unk_1E7D03650;
  v6[4] = self;
  v6[5] = cause;
  dispatch_sync(migrationQueue, v6);
}

void *__44__BYDeviceMigrationManager_cancelWithCause___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setWillMigrate:0];
  result = [*(a1 + 32) isMigrating];
  if (result)
  {
    v3 = _BYLoggingFacility(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling device to device migration with cancellation cause: %ld...", &v5, 0xCu);
    }

    [*(a1 + 32) releaseAssertions];
    [*(a1 + 32) cancelDeviceTransferTask];
    [*(a1 + 32) setMigrating:0];
    [*(a1 + 32) setCancellationCause:*(a1 + 40)];
    [*(a1 + 32) setError:0];
    return [*(a1 + 32) didCancel];
  }

  return result;
}

- (void)restartDeviceTransferTask:(id)task
{
  taskCopy = task;
  migrationQueue = [(BYDeviceMigrationManager *)self migrationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_sync(migrationQueue, v7);
}

void __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _BYLoggingFacility(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Restarting transfer task...", buf, 2u);
  }

  [*(a1 + 32) setFileTransferSession:*(a1 + 40)];
  objc_initWeak(buf, *(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10;
  v5[3] = &unk_1E7D03628;
  objc_copyWeak(&v6, buf);
  v4 = [*(a1 + 32) deviceTransferTask];
  [v4 setCompletionHandler:v5];

  [*(a1 + 32) cancelDeviceTransferTask];
  [*(a1 + 32) startDeviceTransferTask];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"MBErrorDomain"])
    {
      v6 = [v3 code];

      if (v6 == 202)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = _BYLoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10_cold_1(v3, v8);
    }
  }

LABEL_9:
  [WeakRetained setDeviceTransferTask:0];
  [WeakRetained start];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  migrationQueue = [(BYDeviceMigrationManager *)self migrationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__BYDeviceMigrationManager_addDelegate___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(migrationQueue, v7);
}

void __40__BYDeviceMigrationManager_addDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) connectionInfo];

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v5 connectionInfo];
    [v4 deviceMigrationManager:v5 didChangeConnectionInformation:v6];
  }

  v7 = [*(a1 + 32) progressInfo];

  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = [v9 progressInfo];
    [v8 deviceMigrationManager:v9 didUpdateProgress:v10];
  }

  if ([*(a1 + 32) isComplete])
  {
    v13 = a1 + 32;
    v11 = *(a1 + 32);
    v12 = *(v13 + 8);
    v14 = [v11 error];
    [v12 deviceMigrationManager:v11 didCompleteWithError:v14];
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  migrationQueue = [(BYDeviceMigrationManager *)self migrationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__BYDeviceMigrationManager_removeDelegate___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(migrationQueue, v7);
}

void __43__BYDeviceMigrationManager_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];
}

- (BOOL)_hasAssertions
{
  processAssertion = [(BYDeviceMigrationManager *)self processAssertion];
  if (processAssertion)
  {
    v4 = [(BYDeviceMigrationManager *)self deviceLockAssertion]!= 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)takeAssertions
{
  v32[1] = *MEMORY[0x1E69E9840];
  migrationQueue = [(BYDeviceMigrationManager *)self migrationQueue];
  dispatch_assert_queue_V2(migrationQueue);

  v4 = voucher_copy();
  [(BYDeviceMigrationManager *)self setClientVoucher:v4];

  if (![(BYDeviceMigrationManager *)self requiresProcessAssertion])
  {
LABEL_6:
    [(BYDeviceMigrationManager *)self setDeviceLockAssertion:[(BYDeviceMigrationManager *)self acquireDeviceLockAssertion]];
    v17 = [*MEMORY[0x1E69ADFA0] cStringUsingEncoding:4];
    migrationQueue2 = [(BYDeviceMigrationManager *)self migrationQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__BYDeviceMigrationManager_takeAssertions__block_invoke;
    handler[3] = &unk_1E7D03678;
    handler[4] = self;
    v19 = notify_register_dispatch(v17, &self->_passcodeChangeNotificationToken, migrationQueue2, handler);

    if (v19)
    {
      v21 = _BYLoggingFacility(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(BYDeviceMigrationManager *)v19 takeAssertions];
      }

      [(BYDeviceMigrationManager *)self setPasscodeChangeNotificationToken:0xFFFFFFFFLL];
    }

    return 1;
  }

  processAssertion = [(BYDeviceMigrationManager *)self processAssertion];
  [processAssertion invalidate];

  v6 = objc_alloc(MEMORY[0x1E69C7548]);
  v7 = [MEMORY[0x1E69C7640] targetWithPid:getpid()];
  v8 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.purplebuddy" name:@"Update"];
  v32[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v10 = [v6 initWithExplanation:@"Device-to-Device Migration" target:v7 attributes:v9];
  [(BYDeviceMigrationManager *)self setProcessAssertion:v10];

  processAssertion2 = [(BYDeviceMigrationManager *)self processAssertion];
  v29 = 0;
  domain = [processAssertion2 acquireWithError:&v29];
  v13 = v29;

  v15 = _BYLoggingFacility(v14);
  v16 = v15;
  if (domain)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, "Process lock assertion successfully taken during migration", buf, 2u);
    }

    goto LABEL_6;
  }

  v23 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v23)
  {
    if (_BYIsInternalInstall(v23, v24))
    {
      v25 = 0;
      v26 = v13;
    }

    else if (v13)
    {
      v27 = MEMORY[0x1E696AEC0];
      domain = [v13 domain];
      v26 = [v27 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v13, "code")];
      v25 = 1;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *buf = 138543362;
    v31 = v26;
    _os_log_error_impl(&dword_1B862F000, v16, OS_LOG_TYPE_ERROR, "Failed to take process assertion during migration: %{public}@", buf, 0xCu);
    if (v25)
    {
    }
  }

  [(BYDeviceMigrationManager *)self releaseAssertions];
  return 0;
}

- (__MKBAssertion)acquireDeviceLockAssertion
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"MKBAssertionKey";
  v12[0] = @"RestoreFromBackup";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v3 = MKBDeviceLockAssertion();
  v4 = _BYLoggingFacility(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Device lock assertion successfully taken during migration", buf, 2u);
    }
  }

  else
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      _BYIsInternalInstall(v6, v7);
      *buf = 138543362;
      v10 = 0;
      _os_log_error_impl(&dword_1B862F000, v5, OS_LOG_TYPE_ERROR, "Failed to take device lock assertion during migration - %{public}@", buf, 0xCu);
    }

    CFRelease(0);
  }

  return v3;
}

- (void)releaseAssertions
{
  migrationQueue = [(BYDeviceMigrationManager *)self migrationQueue];
  dispatch_assert_queue_V2(migrationQueue);

  processAssertion = [(BYDeviceMigrationManager *)self processAssertion];

  if (processAssertion)
  {
    v6 = _BYLoggingFacility(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Releasing process assertion", buf, 2u);
    }

    processAssertion2 = [(BYDeviceMigrationManager *)self processAssertion];
    [processAssertion2 invalidate];

    [(BYDeviceMigrationManager *)self setProcessAssertion:0];
  }

  deviceLockAssertion = [(BYDeviceMigrationManager *)self deviceLockAssertion];
  if (deviceLockAssertion)
  {
    v9 = _BYLoggingFacility(deviceLockAssertion);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Releasing device lock assertion taken during restore", v10, 2u);
    }

    CFRelease([(BYDeviceMigrationManager *)self deviceLockAssertion]);
    [(BYDeviceMigrationManager *)self setDeviceLockAssertion:0];
  }

  if ([(BYDeviceMigrationManager *)self passcodeChangeNotificationToken]!= -1)
  {
    notify_cancel([(BYDeviceMigrationManager *)self passcodeChangeNotificationToken]);
    [(BYDeviceMigrationManager *)self setPasscodeChangeNotificationToken:0xFFFFFFFFLL];
  }

  [(BYDeviceMigrationManager *)self setClientVoucher:0];
}

- (void)_reacquireDeviceLockAssertion
{
  _hasAssertions = [(BYDeviceMigrationManager *)self _hasAssertions];
  if (_hasAssertions)
  {
    v4 = _BYLoggingFacility(_hasAssertions);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Requiring device lock assertion as passcode changed...", v5, 2u);
    }

    if ([(BYDeviceMigrationManager *)self deviceLockAssertion])
    {
      CFRelease([(BYDeviceMigrationManager *)self deviceLockAssertion]);
    }

    [(BYDeviceMigrationManager *)self setDeviceLockAssertion:[(BYDeviceMigrationManager *)self acquireDeviceLockAssertion]];
  }
}

void __33__BYDeviceMigrationManager_start__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Migration completed with error: %@", &v2, 0xCu);
}

void __54__BYDeviceMigrationManager_restartDeviceTransferTask___block_invoke_10_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Migration completed with non-cancel error during restart: %@", &v2, 0xCu);
}

- (void)takeAssertions
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to register for passcode change notification to refresh device lock assertion: %d", v2, 8u);
}

@end