@interface BKSAlternateSystemApp
- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)d didExitWithContext:(id)context;
- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)d failedToOpenWithResult:(id)result;
- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidOpen:(id)open;
- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidTerminate:(id)terminate;
- (BKSAlternateSystemApp)initWithBundleId:(id)id;
- (BKSAlternateSystemAppDelegate)delegate;
- (void)_handleInterruptedConnection;
- (void)_queue_changeState:(int64_t)state;
- (void)_queue_ensureConnection;
- (void)_queue_invalidate;
- (void)_waitForState:(int64_t)state;
- (void)activate;
- (void)dealloc;
- (void)didBlockSystemAppForAlternateSystemApp;
- (void)didUnblockSystemAppForAlternateSystemApp;
- (void)terminate;
@end

@implementation BKSAlternateSystemApp

- (BKSAlternateSystemAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidTerminate:(id)terminate
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidTerminate:]";
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidTerminate___block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  return result;
}

void __68__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidTerminate___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v1 unblockSystemAppForAlternateSystemApp];

  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidTerminate:]_block_invoke";
    _os_log_debug_impl(&dword_186345000, v2, OS_LOG_TYPE_DEBUG, "%s: requested unblock of system app", &v3, 0xCu);
  }
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleIDDidOpen:(id)open
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidOpen:]";
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidOpen___block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  return result;
}

void __63__BKSAlternateSystemApp_alternateSystemAppWithBundleIDDidOpen___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained alternateSystemAppDidLaunch:?];
    v2 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidOpen:]_block_invoke";
      v3 = "%s: called out to delegate alternateSystemAppDidLaunch:";
      v4 = v2;
      v5 = 12;
LABEL_8:
      _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, v3, &v6, v5);
    }
  }

  else
  {
    v2 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "[BKSAlternateSystemApp alternateSystemAppWithBundleIDDidOpen:]_block_invoke";
      v8 = 2114;
      v9 = WeakRetained;
      v3 = "%s: did not call out to alternateSystemAppDidLaunch: for delegate %{public}@";
      v4 = v2;
      v5 = 22;
      goto LABEL_8;
    }
  }
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)d didExitWithContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]";
    _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__BKSAlternateSystemApp_alternateSystemAppWithBundleID_didExitWithContext___block_invoke;
  v10[3] = &unk_1E6F47C78;
  v10[4] = self;
  v11 = contextCopy;
  v8 = contextCopy;
  dispatch_async(queue, v10);

  return result;
}

void __75__BKSAlternateSystemApp_alternateSystemAppWithBundleID_didExitWithContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _queue_changeState:?];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [*(a1 + 40) status];
  if ([v3 isSignal])
  {
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained alternateSystemApp:? didTerminateWithSignal:?];
      v4 = BKLogAlternateSystemApp();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315138;
        v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
        v5 = "%s called out to delegate alternateSystemApp:didTerminateWithSignal:";
LABEL_10:
        v6 = v4;
        v7 = 12;
LABEL_17:
        _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, v5, &v8, v7);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v4 = BKLogAlternateSystemApp();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v8 = 136315394;
    v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
    v10 = 2114;
    v11 = WeakRetained;
    v5 = "%s did not call out to alternateSystemApp:didTerminateWithSignal: for delegate %{public}@";
LABEL_16:
    v6 = v4;
    v7 = 22;
    goto LABEL_17;
  }

  [*(a1 + 40) type];
  if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = BKLogAlternateSystemApp();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v8 = 136315394;
    v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
    v10 = 2114;
    v11 = WeakRetained;
    v5 = "%s did not call out to alternateSystemApp:didExitWithStatus: for delegate %{public}@";
    goto LABEL_16;
  }

  [WeakRetained alternateSystemApp:? didExitWithStatus:?];
  v4 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:didExitWithContext:]_block_invoke";
    v5 = "%s called out to delegate alternateSystemApp:didExitWithStatus:";
    goto LABEL_10;
  }

LABEL_14:
}

- (BKSAlternateSystemApp)alternateSystemAppWithBundleID:(id)d failedToOpenWithResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v6 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:failedToOpenWithResult:]";
    _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__BKSAlternateSystemApp_alternateSystemAppWithBundleID_failedToOpenWithResult___block_invoke;
  v10[3] = &unk_1E6F47C78;
  v10[4] = self;
  v11 = resultCopy;
  v8 = resultCopy;
  dispatch_async(queue, v10);

  return result;
}

void __79__BKSAlternateSystemApp_alternateSystemAppWithBundleID_failedToOpenWithResult___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _queue_changeState:?];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained alternateSystemApp:? didFailToLaunchWithError:?];
    v3 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:failedToOpenWithResult:]_block_invoke";
      v4 = "%s called out to delegate alternateSystemApp:didFailToLaunchWithError:";
      v5 = v3;
      v6 = 12;
LABEL_8:
      _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, v4, &v7, v6);
    }
  }

  else
  {
    v3 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[BKSAlternateSystemApp alternateSystemAppWithBundleID:failedToOpenWithResult:]_block_invoke";
      v9 = 2114;
      v10 = WeakRetained;
      v4 = "%s did not call out to alternateSystemApp:didFailToLaunchWithError: for delegate %{public}@";
      v5 = v3;
      v6 = 22;
      goto LABEL_8;
    }
  }
}

- (void)didUnblockSystemAppForAlternateSystemApp
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[BKSAlternateSystemApp didUnblockSystemAppForAlternateSystemApp]";
    _os_log_debug_impl(&dword_186345000, v3, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__BKSAlternateSystemApp_didUnblockSystemAppForAlternateSystemApp__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didBlockSystemAppForAlternateSystemApp
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[BKSAlternateSystemApp didBlockSystemAppForAlternateSystemApp]";
    _os_log_debug_impl(&dword_186345000, v3, OS_LOG_TYPE_DEBUG, "%s: message from server", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BKSAlternateSystemApp_didBlockSystemAppForAlternateSystemApp__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__BKSAlternateSystemApp_didBlockSystemAppForAlternateSystemApp__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 48) != 2)
  {
    v3 = [*(v1 + 32) remoteObjectProxy];
    [v3 openAlternateSystemAppWithBundleID:?];

    v4 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(a1 + 32) + 24);
      v6 = 136315394;
      v7 = "[BKSAlternateSystemApp didBlockSystemAppForAlternateSystemApp]_block_invoke";
      v8 = 2114;
      v9 = v5;
      _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "%s: requested open of alternate system app %{public}@", &v6, 0x16u);
    }
  }
}

- (void)_handleInterruptedConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__BKSAlternateSystemApp__handleInterruptedConnection__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__BKSAlternateSystemApp__handleInterruptedConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  switch(v3)
  {
    case 3:

      [v2 _queue_changeState:?];
      break;
    case 2:
      v4 = [*(v2 + 32) remoteObjectProxy];
      [v4 blockSystemAppForAlternateSystemApp];

      break;
    case 1:

      [v2 activate];
      break;
  }
}

- (void)_queue_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:?];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:?];
  [(NSXPCConnection *)self->_connection setExportedObject:?];

  [(BKSAlternateSystemApp *)self setConnection:?];
}

- (void)_waitForState:(int64_t)state
{
  dispatch_assert_queue_not_V2(self->_queue);
  v5 = MEMORY[0x1E69E9820];
  while (1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    queue = self->_queue;
    block[0] = v5;
    block[1] = 3221225472;
    block[2] = __39__BKSAlternateSystemApp__waitForState___block_invoke;
    block[3] = &unk_1E6F46FB8;
    block[5] = &v8;
    block[6] = state;
    block[4] = self;
    dispatch_sync(queue, block);
    if (v9[3])
    {
      break;
    }

    dispatch_semaphore_wait(self->_stateChangeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(&v8, 8);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_queue_changeState:(int64_t)state
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (state > 3)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E6F46FD8[state];
    }

    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "Setting state to %{public}@", &v7, 0xCu);
  }

  self->_state = state;
  dispatch_semaphore_signal(self->_stateChangeSemaphore);
}

- (void)_queue_ensureConnection
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connection)
  {
    if (self->_state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = currentHandler;
      state = self->_state;
      if (state > 3)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E6F46FD8[state];
      }

      [currentHandler handleFailureInMethod:self object:v14 file:? lineNumber:? description:?];
    }

    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:? options:?];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:?];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:?];

    v7 = self->_connection;
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:?];
    [(NSXPCConnection *)v7 setExportedInterface:?];

    [(NSXPCConnection *)self->_connection setExportedObject:?];
    objc_initWeak(&location, self);
    v9 = self->_connection;
    v15[1] = MEMORY[0x1E69E9820];
    v15[2] = 3221225472;
    v15[3] = __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke;
    v15[4] = &unk_1E6F46F90;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInterruptionHandler:?];
    v10 = self->_connection;
    objc_copyWeak(v15, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:?];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(v15);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke_2;
  block[3] = &unk_1E6F477B8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BKSAlternateSystemApp__queue_ensureConnection__block_invoke_4;
  block[3] = &unk_1E6F477B8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

- (void)terminate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__BKSAlternateSystemApp_terminate__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
  [(BKSAlternateSystemApp *)self _waitForState:?];
  v4 = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__BKSAlternateSystemApp_terminate__block_invoke_7;
  v5[3] = &unk_1E6F477B8;
  v5[4] = self;
  dispatch_sync(v4, v5);
}

void __34__BKSAlternateSystemApp_terminate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "Terminating", v5, 2u);
  }

  [*(a1 + 32) _queue_changeState:?];
  v4 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v4 terminateAlternateSystemAppWithBundleID:?];
}

- (void)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BKSAlternateSystemApp_activate__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__BKSAlternateSystemApp_activate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "Activating", v5, 2u);
  }

  [*(a1 + 32) _queue_ensureConnection];
  [*(a1 + 32) _queue_changeState:?];
  v4 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v4 blockSystemAppForAlternateSystemApp];
}

- (void)dealloc
{
  if (self->_connection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:self object:? file:? lineNumber:? description:?];
  }

  v4.receiver = self;
  v4.super_class = BKSAlternateSystemApp;
  [(BKSAlternateSystemApp *)&v4 dealloc];
}

- (BKSAlternateSystemApp)initWithBundleId:(id)id
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = BKSAlternateSystemApp;
  v5 = [(BKSAlternateSystemApp *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    [(BKSAlternateSystemApp *)v5 setBundleId:?];
    v6->_stateChangeWaiter = 0;
    v7 = dispatch_semaphore_create(0);
    stateChangeSemaphore = v6->_stateChangeSemaphore;
    v6->_stateChangeSemaphore = v7;

    Serial = BSDispatchQueueCreateSerial();
    queue = v6->_queue;
    v6->_queue = Serial;

    connection = v6->_connection;
    v6->_connection = 0;
  }

  return v6;
}

@end