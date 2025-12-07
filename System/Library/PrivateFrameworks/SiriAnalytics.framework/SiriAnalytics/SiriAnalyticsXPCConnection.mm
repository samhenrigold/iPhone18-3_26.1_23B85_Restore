@interface SiriAnalyticsXPCConnection
- (SiriAnalyticsXPCConnection)initWithMachServiceName:(id)name;
- (id)_currentConnection;
- (void)_cleanupConnection;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)_createTag:(id)tag completion:(id)completion;
- (void)_fetchKillSwitchEnabledWithCompletion:(id)completion;
- (void)_fetchLogicalClocksWithCompletion:(id)completion;
- (void)_fetchStateForPluginWithCompletion:(id)completion;
- (void)_fetchTags:(id)tags;
- (void)_idleTimerFired;
- (void)_publishLargeMessage:(id)message completion:(id)completion;
- (void)_publishLargeMessageToRemote:(id)remote attempts:(unint64_t)attempts completion:(id)completion;
- (void)_publishMessages:(id)messages completion:(id)completion;
- (void)_publishMessagesToRemote:(id)remote attempts:(unint64_t)attempts completion:(id)completion;
- (void)_publishUnorderedMessages:(id)messages topic:(id)topic attempts:(unint64_t)attempts completion:(id)completion;
- (void)_purgeStagedMessagesWithCompletion:(id)completion;
- (void)_resetLogicalClockWithCompletion:(id)completion;
- (void)_resolveMessages:(id)messages completion:(id)completion;
- (void)_resolveMessagesAtRemote:(id)remote attempts:(unint64_t)attempts completion:(id)completion;
- (void)_runPipelineWithCompletion:(id)completion;
- (void)_saveState:(id)state forPluginWithCompletion:(id)completion;
- (void)_sensitiveCondition:(int)condition endedAt:(unint64_t)at completion:(id)completion;
- (void)_sensitiveCondition:(int)condition startedAt:(unint64_t)at completion:(id)completion;
- (void)_setKillSwitchEnabled:(BOOL)enabled completion:(id)completion;
- (void)_startIdleTimer;
- (void)_stopIdleTimer;
- (void)_vendResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion;
- (void)_vendSandboxExtensionWithResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion;
- (void)barrierWithCompletion:(id)completion;
- (void)createTag:(id)tag completion:(id)completion;
- (void)dealloc;
- (void)fetchKillSwitchEnabledWithCompletion:(id)completion;
- (void)fetchLogicalClocksWithCompletion:(id)completion;
- (void)fetchStateForPluginWithCompletion:(id)completion;
- (void)fetchTags:(id)tags;
- (void)publishLargeMessage:(id)message completion:(id)completion;
- (void)publishMessages:(id)messages completion:(id)completion;
- (void)publishUnorderedMessages:(id)messages topic:(id)topic completion:(id)completion;
- (void)purgeStagedMessagesWithCompletion:(id)completion;
- (void)resetLogicalClockWithCompletion:(id)completion;
- (void)resolveMessages:(id)messages completion:(id)completion;
- (void)runPipelineWithCompletion:(id)completion;
- (void)saveState:(id)state forPluginWithCompletion:(id)completion;
- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at completion:(id)completion;
- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at completion:(id)completion;
- (void)setKillSwitchEnabled:(BOOL)enabled completion:(id)completion;
- (void)vendResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion;
- (void)vendSandboxExtensionWithResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion;
@end

@implementation SiriAnalyticsXPCConnection

void __45__SiriAnalyticsXPCConnection__startIdleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _idleTimerFired];
}

- (void)_idleTimerFired
{
  v6 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[SiriAnalyticsXPCConnection _idleTimerFired]";
    _os_log_debug_impl(&dword_1D9863000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v4, 0xCu);
  }

  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  [(SiriAnalyticsXPCConnection *)self _cleanupConnection];
}

- (void)_stopIdleTimer
{
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    dispatch_source_cancel(idleTimer);
    v4 = self->_idleTimer;
    self->_idleTimer = 0;
  }
}

- (void)_cleanupConnection
{
  v8 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[SiriAnalyticsXPCConnection _cleanupConnection]";
    _os_log_debug_impl(&dword_1D9863000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setExportedObject:0];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection invalidate];
    v5 = self->_connection;
    self->_connection = 0;
  }
}

- (id)_currentConnection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_machServiceName options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection _setQueue:self->_queue];
    v6 = self->_connection;
    v7 = SiriAnalyticsXPCServiceInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v8 = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__SiriAnalyticsXPCConnection__currentConnection__block_invoke;
    v13[3] = &unk_1E8587940;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__SiriAnalyticsXPCConnection__currentConnection__block_invoke_2;
    v11[3] = &unk_1E8587940;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (void)_startIdleTimer
{
  if (!self->_idleTimer)
  {
    location[5] = v2;
    location[6] = v3;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    idleTimer = self->_idleTimer;
    self->_idleTimer = v5;

    v7 = self->_idleTimer;
    v8 = dispatch_time(0, 4000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(location, self);
    v9 = self->_idleTimer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__SiriAnalyticsXPCConnection__startIdleTimer__block_invoke;
    v10[3] = &unk_1E8587940;
    objc_copyWeak(&v11, location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_idleTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

- (void)dealloc
{
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  [(SiriAnalyticsXPCConnection *)self _cleanupConnection];
  v3.receiver = self;
  v3.super_class = SiriAnalyticsXPCConnection;
  [(SiriAnalyticsXPCConnection *)&v3 dealloc];
}

- (void)_connectionInvalidated
{
  v8 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[SiriAnalyticsXPCConnection _connectionInvalidated]";
    _os_log_debug_impl(&dword_1D9863000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SiriAnalyticsXPCConnection__connectionInvalidated__block_invoke;
  block[3] = &unk_1E8587918;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_connectionInterrupted
{
  v8 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[SiriAnalyticsXPCConnection _connectionInterrupted]";
    _os_log_debug_impl(&dword_1D9863000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SiriAnalyticsXPCConnection__connectionInterrupted__block_invoke;
  block[3] = &unk_1E8587918;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__SiriAnalyticsXPCConnection__currentConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __48__SiriAnalyticsXPCConnection__currentConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)_purgeStagedMessagesWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587670;
  aBlock[4] = self;
  objc_copyWeak(&v20, &location);
  v5 = completionCopy;
  v19 = v5;
  v6 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "[SiriAnalyticsXPCConnection _purgeStagedMessagesWithCompletion:]";
    v24 = 2112;
    v25 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s Purging staged messages connection: %@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke_47;
  v16[3] = &unk_1E8587898;
  v9 = v6;
  v17 = v9;
  v10 = [_currentConnection remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke_48;
  v13[3] = &unk_1E8587328;
  v11 = _currentConnection;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 purgeStagedMessagesWithCompletion:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke_2;
  v9[3] = &unk_1E8587648;
  objc_copyWeak(&v12, (a1 + 48));
  v7 = *(a1 + 40);
  v13 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v12);
}

void __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke_47(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _purgeStagedMessagesWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to purge staged messages due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextXPC;
  if (a2)
  {
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SiriAnalyticsXPCConnection _purgeStagedMessagesWithCompletion:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_1D9863000, v6, OS_LOG_TYPE_DEBUG, "%s Staged messages purged for connection:%@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[SiriAnalyticsXPCConnection _purgeStagedMessagesWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&dword_1D9863000, v6, OS_LOG_TYPE_ERROR, "%s Failed to purge staged messages due to %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __65__SiriAnalyticsXPCConnection__purgeStagedMessagesWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 56), *(a1 + 32));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)purgeStagedMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SiriAnalyticsXPCConnection_purgeStagedMessagesWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_runPipelineWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587670;
  aBlock[4] = self;
  objc_copyWeak(&v20, &location);
  v5 = completionCopy;
  v19 = v5;
  v6 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "[SiriAnalyticsXPCConnection _runPipelineWithCompletion:]";
    v24 = 2112;
    v25 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s Running pipeline for connection: %@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke_45;
  v16[3] = &unk_1E8587898;
  v9 = v6;
  v17 = v9;
  v10 = [_currentConnection remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke_46;
  v13[3] = &unk_1E8587328;
  v11 = _currentConnection;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 runPipelineWithCompletion:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke_2;
  v9[3] = &unk_1E8587648;
  objc_copyWeak(&v12, (a1 + 48));
  v7 = *(a1 + 40);
  v13 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v12);
}

void __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke_45(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _runPipelineWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to run pipeline due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke_46(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextXPC;
  if (a2)
  {
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SiriAnalyticsXPCConnection _runPipelineWithCompletion:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_1D9863000, v6, OS_LOG_TYPE_DEBUG, "%s Pipeline ran for connection:%@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[SiriAnalyticsXPCConnection _runPipelineWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&dword_1D9863000, v6, OS_LOG_TYPE_ERROR, "%s Failed to run pipeline due to %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __57__SiriAnalyticsXPCConnection__runPipelineWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 56), *(a1 + 32));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)runPipelineWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SiriAnalyticsXPCConnection_runPipelineWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_setKillSwitchEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SiriAnalyticsXPCConnection__setKillSwitchEnabled_completion___block_invoke;
  aBlock[3] = &unk_1E8587328;
  aBlock[4] = self;
  v7 = completionCopy;
  v16 = v7;
  v8 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v10 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[SiriAnalyticsXPCConnection _setKillSwitchEnabled:completion:]";
    v19 = 2112;
    v20 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v10, OS_LOG_TYPE_DEBUG, "%s Starting for connection:%@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__SiriAnalyticsXPCConnection__setKillSwitchEnabled_completion___block_invoke_44;
  v13[3] = &unk_1E8587898;
  v14 = v8;
  v11 = v8;
  v12 = [_currentConnection remoteObjectProxyWithErrorHandler:v13];
  [v12 setKillSwitchEnabled:enabledCopy completion:v11];
}

void __63__SiriAnalyticsXPCConnection__setKillSwitchEnabled_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__SiriAnalyticsXPCConnection__setKillSwitchEnabled_completion___block_invoke_2;
  v10[3] = &unk_1E8587378;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

void __63__SiriAnalyticsXPCConnection__setKillSwitchEnabled_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _setKillSwitchEnabled:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __63__SiriAnalyticsXPCConnection__setKillSwitchEnabled_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setKillSwitchEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SiriAnalyticsXPCConnection_setKillSwitchEnabled_completion___block_invoke;
  block[3] = &unk_1E8587D08;
  enabledCopy = enabled;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_fetchKillSwitchEnabledWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__SiriAnalyticsXPCConnection__fetchKillSwitchEnabledWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587328;
  aBlock[4] = self;
  v5 = completionCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[SiriAnalyticsXPCConnection _fetchKillSwitchEnabledWithCompletion:]";
    v17 = 2112;
    v18 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s Starting for connection:%@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SiriAnalyticsXPCConnection__fetchKillSwitchEnabledWithCompletion___block_invoke_43;
  v11[3] = &unk_1E8587898;
  v12 = v6;
  v9 = v6;
  v10 = [_currentConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 fetchKillSwitchEnabledWithCompletion:v9];
}

void __68__SiriAnalyticsXPCConnection__fetchKillSwitchEnabledWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__SiriAnalyticsXPCConnection__fetchKillSwitchEnabledWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8587378;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

void __68__SiriAnalyticsXPCConnection__fetchKillSwitchEnabledWithCompletion___block_invoke_43(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _fetchKillSwitchEnabledWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __68__SiriAnalyticsXPCConnection__fetchKillSwitchEnabledWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)fetchKillSwitchEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SiriAnalyticsXPCConnection_fetchKillSwitchEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_createTag:(id)tag completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SiriAnalyticsXPCConnection__createTag_completion___block_invoke;
  aBlock[3] = &unk_1E8587328;
  aBlock[4] = self;
  v8 = completionCopy;
  v22 = v8;
  v9 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v11 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "[SiriAnalyticsXPCConnection _createTag:completion:]";
    v25 = 2112;
    v26 = tagCopy;
    v27 = 2112;
    v28 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v11, OS_LOG_TYPE_DEBUG, "%s Starting tagSensitiveCondition %@ for connection:%@", buf, 0x20u);
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __52__SiriAnalyticsXPCConnection__createTag_completion___block_invoke_42;
  v18 = &unk_1E8587620;
  v19 = tagCopy;
  v20 = v9;
  v12 = v9;
  v13 = tagCopy;
  v14 = [_currentConnection remoteObjectProxyWithErrorHandler:&v15];
  [v14 createTag:v13 completion:{v12, v15, v16, v17, v18}];
}

void __52__SiriAnalyticsXPCConnection__createTag_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SiriAnalyticsXPCConnection__createTag_completion___block_invoke_2;
  v9[3] = &unk_1E8587378;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v9);
  dispatch_async(*(*(a1 + 32) + 16), v8);
}

void __52__SiriAnalyticsXPCConnection__createTag_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[SiriAnalyticsXPCConnection _createTag:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to tag sensitive condition %@ due to %@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __52__SiriAnalyticsXPCConnection__createTag_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)createTag:(id)tag completion:(id)completion
{
  tagCopy = tag;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SiriAnalyticsXPCConnection_createTag_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v12 = tagCopy;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = tagCopy;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  dispatch_async(self->_queue, v10);
}

- (void)_saveState:(id)state forPluginWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SiriAnalyticsXPCConnection__saveState_forPluginWithCompletion___block_invoke;
  aBlock[3] = &unk_1E85875F8;
  aBlock[4] = self;
  objc_copyWeak(&v21, &location);
  v8 = completionCopy;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v11 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "[SiriAnalyticsXPCConnection _saveState:forPluginWithCompletion:]";
    v25 = 2112;
    v26 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v11, OS_LOG_TYPE_DEBUG, "%s Saving state for plugin for connection: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__SiriAnalyticsXPCConnection__saveState_forPluginWithCompletion___block_invoke_40;
  v17[3] = &unk_1E8587898;
  v12 = v9;
  v18 = v12;
  v13 = [_currentConnection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SiriAnalyticsXPCConnection__saveState_forPluginWithCompletion___block_invoke_41;
  v15[3] = &unk_1E8587C18;
  v14 = v12;
  v16 = v14;
  [v13 saveState:stateCopy forPluginWithCompletion:v15];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __65__SiriAnalyticsXPCConnection__saveState_forPluginWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__SiriAnalyticsXPCConnection__saveState_forPluginWithCompletion___block_invoke_2;
  v3[3] = &unk_1E85875D0;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __65__SiriAnalyticsXPCConnection__saveState_forPluginWithCompletion___block_invoke_40(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _saveState:forPluginWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to save state due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __65__SiriAnalyticsXPCConnection__saveState_forPluginWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v6[5]);
    v3 = v6;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)saveState:(id)state forPluginWithCompletion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SiriAnalyticsXPCConnection_saveState_forPluginWithCompletion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v12 = stateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = stateCopy;
  dispatch_async(queue, block);
}

- (void)_fetchStateForPluginWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SiriAnalyticsXPCConnection__fetchStateForPluginWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587580;
  aBlock[4] = self;
  objc_copyWeak(&v18, &location);
  v5 = completionCopy;
  v17 = v5;
  v6 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[SiriAnalyticsXPCConnection _fetchStateForPluginWithCompletion:]";
    v22 = 2112;
    v23 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s Fetching state for plugin for connection: %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SiriAnalyticsXPCConnection__fetchStateForPluginWithCompletion___block_invoke_38;
  v14[3] = &unk_1E8587898;
  v9 = v6;
  v15 = v9;
  v10 = [_currentConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__SiriAnalyticsXPCConnection__fetchStateForPluginWithCompletion___block_invoke_39;
  v12[3] = &unk_1E85875A8;
  v11 = v9;
  v13 = v11;
  [v10 fetchStateForPluginWithCompletion:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __65__SiriAnalyticsXPCConnection__fetchStateForPluginWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SiriAnalyticsXPCConnection__fetchStateForPluginWithCompletion___block_invoke_2;
  block[3] = &unk_1E85875F8;
  objc_copyWeak(&v10, (a1 + 48));
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
}

void __65__SiriAnalyticsXPCConnection__fetchStateForPluginWithCompletion___block_invoke_38(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _fetchStateForPluginWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to fetch state due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __65__SiriAnalyticsXPCConnection__fetchStateForPluginWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchStateForPluginWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SiriAnalyticsXPCConnection_fetchStateForPluginWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchTags:(id)tags
{
  v21 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__SiriAnalyticsXPCConnection__fetchTags___block_invoke;
  aBlock[3] = &unk_1E8587558;
  aBlock[4] = self;
  objc_copyWeak(&v15, &location);
  v5 = tagsCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[SiriAnalyticsXPCConnection _fetchTags:]";
    v19 = 2112;
    v20 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s Fetching tags for connection: %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__SiriAnalyticsXPCConnection__fetchTags___block_invoke_36;
  v11[3] = &unk_1E8587898;
  v9 = v6;
  v12 = v9;
  v10 = [_currentConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 fetchTags:v9];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __41__SiriAnalyticsXPCConnection__fetchTags___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SiriAnalyticsXPCConnection__fetchTags___block_invoke_2;
  block[3] = &unk_1E85873C8;
  objc_copyWeak(&v17, (a1 + 48));
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v18 = a2;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);

  objc_destroyWeak(&v17);
}

void __41__SiriAnalyticsXPCConnection__fetchTags___block_invoke_36(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _fetchTags:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to fetch tags due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __41__SiriAnalyticsXPCConnection__fetchTags___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 64), *(a1 + 32), *(a1 + 40));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchTags:(id)tags
{
  tagsCopy = tags;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SiriAnalyticsXPCConnection_fetchTags___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = tagsCopy;
  v6 = tagsCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchLogicalClocksWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SiriAnalyticsXPCConnection__fetchLogicalClocksWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587530;
  aBlock[4] = self;
  objc_copyWeak(&v15, &location);
  v5 = completionCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[SiriAnalyticsXPCConnection _fetchLogicalClocksWithCompletion:]";
    v19 = 2112;
    v20 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s Fetching logical clocks for connection: %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__SiriAnalyticsXPCConnection__fetchLogicalClocksWithCompletion___block_invoke_34;
  v11[3] = &unk_1E8587898;
  v9 = v6;
  v12 = v9;
  v10 = [_currentConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 fetchLogicalClocksWithCompletion:v9];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __64__SiriAnalyticsXPCConnection__fetchLogicalClocksWithCompletion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SiriAnalyticsXPCConnection__fetchLogicalClocksWithCompletion___block_invoke_2;
  block[3] = &unk_1E85873C8;
  objc_copyWeak(&v17, (a1 + 48));
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v18 = a2;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);

  objc_destroyWeak(&v17);
}

void __64__SiriAnalyticsXPCConnection__fetchLogicalClocksWithCompletion___block_invoke_34(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _fetchLogicalClocksWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to fetch logical clocks due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __64__SiriAnalyticsXPCConnection__fetchLogicalClocksWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 64), *(a1 + 32), *(a1 + 40));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchLogicalClocksWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SiriAnalyticsXPCConnection_fetchLogicalClocksWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_vendResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion
{
  readonlyCopy = readonly;
  v30 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke;
  aBlock[3] = &unk_1E85874E0;
  aBlock[4] = self;
  objc_copyWeak(&v24, &location);
  v9 = completionCopy;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v12 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[SiriAnalyticsXPCConnection _vendResource:readonly:completion:]";
    v28 = 2112;
    v29 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v12, OS_LOG_TYPE_DEBUG, "%s Vending sandbox extension for connection: %@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke_31;
  v20[3] = &unk_1E8587898;
  v13 = v10;
  v21 = v13;
  v14 = [_currentConnection remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke_32;
  v17[3] = &unk_1E8587508;
  v15 = _currentConnection;
  v18 = v15;
  v16 = v13;
  v19 = v16;
  [v14 vendResource:resource readonly:readonlyCopy completion:v17];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke_2;
  block[3] = &unk_1E85874B8;
  objc_copyWeak(&v20, (a1 + 48));
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, block);

  objc_destroyWeak(&v20);
}

void __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _vendResource:readonly:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to vend sandbox extension due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke_32(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v10 = SiriAnalyticsLogContextXPC;
  if (v7)
  {
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[SiriAnalyticsXPCConnection _vendResource:readonly:completion:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&dword_1D9863000, v10, OS_LOG_TYPE_DEBUG, "%s Sandbox extension vended successfully (token: %@) for %@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[SiriAnalyticsXPCConnection _vendResource:readonly:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    _os_log_error_impl(&dword_1D9863000, v10, OS_LOG_TYPE_ERROR, "%s Failed to vend sandbox extension due to %@", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __64__SiriAnalyticsXPCConnection__vendResource_readonly_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)vendResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SiriAnalyticsXPCConnection_vendResource_readonly_completion___block_invoke;
  v11[3] = &unk_1E8587CB8;
  v12 = completionCopy;
  resourceCopy = resource;
  readonlyCopy = readonly;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)_vendSandboxExtensionWithResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion
{
  readonlyCopy = readonly;
  v30 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke;
  aBlock[3] = &unk_1E8587468;
  aBlock[4] = self;
  objc_copyWeak(&v24, &location);
  v9 = completionCopy;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v12 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[SiriAnalyticsXPCConnection _vendSandboxExtensionWithResource:readonly:completion:]";
    v28 = 2112;
    v29 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v12, OS_LOG_TYPE_DEBUG, "%s Vending sandbox extension for connection: %@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke_28;
  v20[3] = &unk_1E8587898;
  v13 = v10;
  v21 = v13;
  v14 = [_currentConnection remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke_29;
  v17[3] = &unk_1E8587490;
  v15 = _currentConnection;
  v18 = v15;
  v16 = v13;
  v19 = v16;
  [v14 vendSandboxExtensionWithResource:resource readonly:readonlyCopy completion:v17];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke_2;
  v11[3] = &unk_1E8587440;
  objc_copyWeak(&v15, (a1 + 48));
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);

  objc_destroyWeak(&v15);
}

void __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _vendSandboxExtensionWithResource:readonly:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to vend sandbox extension due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v7 = SiriAnalyticsLogContextXPC;
  if (v5)
  {
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[SiriAnalyticsXPCConnection _vendSandboxExtensionWithResource:readonly:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v8;
      _os_log_debug_impl(&dword_1D9863000, v7, OS_LOG_TYPE_DEBUG, "%s Sandbox extension vended successfully (token: %@) for %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[SiriAnalyticsXPCConnection _vendSandboxExtensionWithResource:readonly:completion:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_error_impl(&dword_1D9863000, v7, OS_LOG_TYPE_ERROR, "%s Failed to vend sandbox extension due to %@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __84__SiriAnalyticsXPCConnection__vendSandboxExtensionWithResource_readonly_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), *(a1 + 40));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)vendSandboxExtensionWithResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__SiriAnalyticsXPCConnection_vendSandboxExtensionWithResource_readonly_completion___block_invoke;
  v11[3] = &unk_1E8587CB8;
  v12 = completionCopy;
  resourceCopy = resource;
  readonlyCopy = readonly;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)_resetLogicalClockWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke;
  aBlock[3] = &unk_1E85873F0;
  aBlock[4] = self;
  objc_copyWeak(&v20, &location);
  v5 = completionCopy;
  v19 = v5;
  v6 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "[SiriAnalyticsXPCConnection _resetLogicalClockWithCompletion:]";
    v24 = 2112;
    v25 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s Resetting logical clock for connection: %@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke_25;
  v16[3] = &unk_1E8587898;
  v9 = v6;
  v17 = v9;
  v10 = [_currentConnection remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke_26;
  v13[3] = &unk_1E8587418;
  v11 = _currentConnection;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 resetLogicalClockWithCompletion:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke_2;
  block[3] = &unk_1E85873C8;
  objc_copyWeak(&v17, (a1 + 48));
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v18 = a2;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);

  objc_destroyWeak(&v17);
}

void __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke_25(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCConnection _resetLogicalClockWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to reset logical clock due to %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke_26(uint64_t a1, int a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v9 = SiriAnalyticsLogContextXPC;
  if (a2)
  {
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = 136315650;
      v12 = "[SiriAnalyticsXPCConnection _resetLogicalClockWithCompletion:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&dword_1D9863000, v9, OS_LOG_TYPE_DEBUG, "%s Logical clock: %@ reset for connection:%@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[SiriAnalyticsXPCConnection _resetLogicalClockWithCompletion:]_block_invoke";
    v13 = 2112;
    v14 = v8;
    _os_log_error_impl(&dword_1D9863000, v9, OS_LOG_TYPE_ERROR, "%s Failed to reset logical clock due to %@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __63__SiriAnalyticsXPCConnection__resetLogicalClockWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_group_t *)WeakRetained _startIdleTimer];
    dispatch_group_leave(v5[5]);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 64), *(a1 + 32), *(a1 + 40));
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)resetLogicalClockWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SiriAnalyticsXPCConnection_resetLogicalClockWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_sensitiveCondition:(int)condition endedAt:(unint64_t)at completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__SiriAnalyticsXPCConnection__sensitiveCondition_endedAt_completion___block_invoke;
  aBlock[3] = &unk_1E8587328;
  aBlock[4] = self;
  v9 = completionCopy;
  v27 = v9;
  v10 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v12 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v29 = "[SiriAnalyticsXPCConnection _sensitiveCondition:endedAt:completion:]";
    v30 = 2048;
    conditionCopy = condition;
    v32 = 2112;
    v33 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v12, OS_LOG_TYPE_DEBUG, "%s Ending sensitiveCondition %lu for connection:%@", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__SiriAnalyticsXPCConnection__sensitiveCondition_endedAt_completion___block_invoke_22;
  v23[3] = &unk_1E85873A0;
  conditionCopy2 = condition;
  v13 = v10;
  v24 = v13;
  v14 = [_currentConnection remoteObjectProxyWithErrorHandler:v23];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__SiriAnalyticsXPCConnection__sensitiveCondition_endedAt_completion___block_invoke_23;
  v18[3] = &unk_1E8587C68;
  conditionCopy3 = condition;
  v20 = v13;
  atCopy = at;
  v19 = v14;
  v16 = v13;
  v17 = v14;
  dispatch_async(queue, v18);
}

void __69__SiriAnalyticsXPCConnection__sensitiveCondition_endedAt_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__SiriAnalyticsXPCConnection__sensitiveCondition_endedAt_completion___block_invoke_2;
  v10[3] = &unk_1E8587378;
  v10[4] = v7;
  v13 = a2;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

void __69__SiriAnalyticsXPCConnection__sensitiveCondition_endedAt_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[SiriAnalyticsXPCConnection _sensitiveCondition:endedAt:completion:]_block_invoke";
    v8 = 2048;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to end sensitive condition %lu due to %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __69__SiriAnalyticsXPCConnection__sensitiveCondition_endedAt_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SiriAnalyticsXPCConnection_sensitiveCondition_endedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  conditionCopy = condition;
  v12 = completionCopy;
  atCopy = at;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)_sensitiveCondition:(int)condition startedAt:(unint64_t)at completion:(id)completion
{
  v6 = *&condition;
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SiriAnalyticsXPCConnection__sensitiveCondition_startedAt_completion___block_invoke;
  aBlock[3] = &unk_1E8587328;
  aBlock[4] = self;
  v9 = completionCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v12 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "[SiriAnalyticsXPCConnection _sensitiveCondition:startedAt:completion:]";
    v25 = 2048;
    v26 = v6;
    v27 = 2112;
    v28 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v12, OS_LOG_TYPE_DEBUG, "%s Starting sensitiveCondition %lu for connection:%@", buf, 0x20u);
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __71__SiriAnalyticsXPCConnection__sensitiveCondition_startedAt_completion___block_invoke_21;
  v18 = &unk_1E85873A0;
  v20 = v6;
  v19 = v10;
  v13 = v10;
  v14 = [_currentConnection remoteObjectProxyWithErrorHandler:&v15];
  [v14 sensitiveCondition:v6 startedAt:at completion:{v13, v15, v16, v17, v18}];
}

void __71__SiriAnalyticsXPCConnection__sensitiveCondition_startedAt_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__SiriAnalyticsXPCConnection__sensitiveCondition_startedAt_completion___block_invoke_2;
  v9[3] = &unk_1E8587378;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v9);
  dispatch_async(*(*(a1 + 32) + 16), v8);
}

void __71__SiriAnalyticsXPCConnection__sensitiveCondition_startedAt_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[SiriAnalyticsXPCConnection _sensitiveCondition:startedAt:completion:]_block_invoke";
    v8 = 2048;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to start sensitive condition %lu due to %@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __71__SiriAnalyticsXPCConnection__sensitiveCondition_startedAt_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__SiriAnalyticsXPCConnection_sensitiveCondition_startedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  conditionCopy = condition;
  v12 = completionCopy;
  atCopy = at;
  v11[4] = self;
  v9 = completionCopy;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v11);
  dispatch_async(self->_queue, v10);
}

- (void)barrierWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v5 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[SiriAnalyticsXPCConnection barrierWithCompletion:]";
    _os_log_debug_impl(&dword_1D9863000, v5, OS_LOG_TYPE_DEBUG, "%s entering barrier", buf, 0xCu);
  }

  xpcPublishingGroup = self->_xpcPublishingGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SiriAnalyticsXPCConnection_barrierWithCompletion___block_invoke;
  block[3] = &unk_1E8587C18;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_group_notify(xpcPublishingGroup, queue, block);
}

uint64_t __52__SiriAnalyticsXPCConnection_barrierWithCompletion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[SiriAnalyticsXPCConnection barrierWithCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_1D9863000, v2, OS_LOG_TYPE_DEBUG, "%s exiting barrier", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_publishLargeMessageToRemote:(id)remote attempts:(unint64_t)attempts completion:(id)completion
{
  remoteCopy = remote;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke;
  aBlock[3] = &unk_1E8587328;
  aBlock[4] = self;
  v10 = completionCopy;
  v26 = v10;
  v11 = _Block_copy(aBlock);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke_3;
  v20[3] = &unk_1E85872B0;
  v20[4] = self;
  v21 = remoteCopy;
  attemptsCopy = attempts;
  v22 = v10;
  v13 = v11;
  v23 = v13;
  v14 = v10;
  v15 = remoteCopy;
  v16 = [_currentConnection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke_20;
  v18[3] = &unk_1E8587350;
  v19 = v13;
  v17 = v13;
  [v16 publishLargeMessage:v15 completion:v18];
}

void __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke_2;
  block[3] = &unk_1E8587D08;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 64);
    *buf = 136315650;
    v19 = "[SiriAnalyticsXPCConnection _publishLargeMessageToRemote:attempts:completion:]_block_invoke_3";
    v20 = 2112;
    v21 = v3;
    v22 = 2048;
    v23 = v12;
    _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Failed to send large message due to %@. (attempts = %tu)", buf, 0x20u);
  }

  if (*(a1 + 64) > 2uLL)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v11 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 136315394;
      v19 = "[SiriAnalyticsXPCConnection _publishLargeMessageToRemote:attempts:completion:]_block_invoke_2";
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&dword_1D9863000, v11, OS_LOG_TYPE_ERROR, "%s Dropping %@ because the maximum number of retries was reached.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = dispatch_time(0, 1000000000);
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 16);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke_18;
    v14[3] = &unk_1E8587288;
    v14[4] = v7;
    v9 = v6;
    v10 = *(a1 + 64);
    v15 = v9;
    v17 = v10;
    v16 = *(a1 + 48);
    dispatch_after(v5, v8, v14);
  }
}

uint64_t __79__SiriAnalyticsXPCConnection__publishLargeMessageToRemote_attempts_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)_publishLargeMessage:(id)message completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__SiriAnalyticsXPCConnection__publishLargeMessage_completion___block_invoke;
  v9[3] = &unk_1E8587328;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(SiriAnalyticsXPCConnection *)self _publishLargeMessageToRemote:messageCopy attempts:0 completion:v9];
}

void __62__SiriAnalyticsXPCConnection__publishLargeMessage_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _startIdleTimer];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)publishLargeMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = completionCopy;
  if (messageCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SiriAnalyticsXPCConnection_publishLargeMessage_completion___block_invoke;
    block[3] = &unk_1E8587CE0;
    block[4] = self;
    v12 = messageCopy;
    v13 = v8;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    v10 = [[SiriAnalyticsError alloc] initWithErrorType:0 message:@"XPC envelope is nil"];
    (v8)[2](v8, 0, v10);
  }
}

- (void)_resolveMessagesAtRemote:(id)remote attempts:(unint64_t)attempts completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  remoteCopy = remote;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke;
  aBlock[3] = &unk_1E8587C90;
  aBlock[4] = self;
  v10 = completionCopy;
  v34 = v10;
  v11 = _Block_copy(aBlock);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v13 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    v21 = v13;
    v22 = [remoteCopy count];
    *buf = 136315650;
    v36 = "[SiriAnalyticsXPCConnection _resolveMessagesAtRemote:attempts:completion:]";
    v37 = 2048;
    v38 = v22;
    v39 = 2112;
    v40 = _currentConnection;
    _os_log_debug_impl(&dword_1D9863000, v21, OS_LOG_TYPE_DEBUG, "%s Sending %lu unresolved messages to connection %@", buf, 0x20u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke_9;
  v27[3] = &unk_1E85872B0;
  v14 = remoteCopy;
  v28 = v14;
  selfCopy = self;
  attemptsCopy = attempts;
  v30 = v10;
  v15 = v11;
  v31 = v15;
  v16 = v10;
  v17 = [_currentConnection remoteObjectProxyWithErrorHandler:v27];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke_12;
  v23[3] = &unk_1E8587CE0;
  v24 = v14;
  v25 = _currentConnection;
  v26 = v15;
  v18 = v15;
  v19 = _currentConnection;
  v20 = v14;
  [v17 resolveMessages:v20 completion:v23];
}

void __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke_2;
  block[3] = &unk_1E8587C18;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke_9(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = v4;
    v14 = [v12 count];
    v15 = *(a1 + 64);
    *buf = 136315906;
    v22 = "[SiriAnalyticsXPCConnection _resolveMessagesAtRemote:attempts:completion:]_block_invoke";
    v23 = 2048;
    v24 = v14;
    v25 = 2112;
    v26 = v3;
    v27 = 2048;
    v28 = v15;
    _os_log_error_impl(&dword_1D9863000, v13, OS_LOG_TYPE_ERROR, "%s Failed to send %tu unresolved messages due to %@. (attempts = %tu)", buf, 0x2Au);
  }

  if (*(a1 + 64) > 2uLL)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v11 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 136315394;
      v22 = "[SiriAnalyticsXPCConnection _resolveMessagesAtRemote:attempts:completion:]_block_invoke_2";
      v23 = 2112;
      v24 = v16;
      _os_log_error_impl(&dword_1D9863000, v11, OS_LOG_TYPE_ERROR, "%s Dropping %@ because the maximum number of retries was reached.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = dispatch_time(0, 1000000000);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke_10;
    v17[3] = &unk_1E8587288;
    v17[4] = v7;
    v9 = v6;
    v10 = *(a1 + 64);
    v18 = v9;
    v20 = v10;
    v19 = *(a1 + 48);
    dispatch_after(v5, v8, v17);
  }
}

uint64_t __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke_12(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[4];
    v5 = v2;
    v6 = [v4 count];
    v7 = a1[5];
    v8 = 136315650;
    v9 = "[SiriAnalyticsXPCConnection _resolveMessagesAtRemote:attempts:completion:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_1D9863000, v5, OS_LOG_TYPE_DEBUG, "%s Resolved %lu messages to connection %@", &v8, 0x20u);
  }

  return (*(a1[6] + 16))();
}

uint64_t __75__SiriAnalyticsXPCConnection__resolveMessagesAtRemote_attempts_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_resolveMessages:(id)messages completion:(id)completion
{
  completionCopy = completion;
  messagesCopy = messages;
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SiriAnalyticsXPCConnection__resolveMessages_completion___block_invoke;
  v9[3] = &unk_1E8587C90;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(SiriAnalyticsXPCConnection *)self _resolveMessagesAtRemote:messagesCopy attempts:0 completion:v9];
}

uint64_t __58__SiriAnalyticsXPCConnection__resolveMessages_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)resolveMessages:(id)messages completion:(id)completion
{
  messagesCopy = messages;
  completionCopy = completion;
  if ([messagesCopy count])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SiriAnalyticsXPCConnection_resolveMessages_completion___block_invoke;
    block[3] = &unk_1E8587CE0;
    block[4] = self;
    v10 = messagesCopy;
    v11 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_publishUnorderedMessages:(id)messages topic:(id)topic attempts:(unint64_t)attempts completion:(id)completion
{
  messagesCopy = messages;
  topicCopy = topic;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke;
  aBlock[3] = &unk_1E8587C90;
  aBlock[4] = self;
  v13 = completionCopy;
  v32 = v13;
  v14 = _Block_copy(aBlock);
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke_3;
  v24[3] = &unk_1E8587300;
  attemptsCopy = attempts;
  v25 = messagesCopy;
  selfCopy = self;
  v27 = topicCopy;
  v28 = v13;
  v16 = v14;
  v29 = v16;
  v17 = v13;
  v18 = topicCopy;
  v19 = messagesCopy;
  v20 = [_currentConnection remoteObjectProxyWithErrorHandler:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke_8;
  v22[3] = &unk_1E8587C18;
  v23 = v16;
  v21 = v16;
  [v20 publishUnorderedMessages:v19 topic:v18 completion:v22];
}

void __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke_2;
  v4[3] = &unk_1E8587C90;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = v4;
    v14 = [v12 count];
    v15 = *(a1 + 72);
    *buf = 136315906;
    v23 = "[SiriAnalyticsXPCConnection _publishUnorderedMessages:topic:attempts:completion:]_block_invoke_3";
    v24 = 2048;
    v25 = v14;
    v26 = 2112;
    v27 = v3;
    v28 = 2048;
    v29 = v15;
    _os_log_error_impl(&dword_1D9863000, v13, OS_LOG_TYPE_ERROR, "%s Failed to send %tu messages due to %@. (attempts = %tu)", buf, 0x2Au);
  }

  if (*(a1 + 72) > 2uLL)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v11 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 136315394;
      v23 = "[SiriAnalyticsXPCConnection _publishUnorderedMessages:topic:attempts:completion:]_block_invoke_2";
      v24 = 2112;
      v25 = v16;
      _os_log_error_impl(&dword_1D9863000, v11, OS_LOG_TYPE_ERROR, "%s Dropping %@ because the maximum number of retries was reached.", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v17 = *(a1 + 32);
    v6 = *(v17.i64[1] + 16);
    block[2] = __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke_6;
    block[3] = &unk_1E85872D8;
    v7 = v17.i64[0];
    v8 = *(a1 + 48);
    v21 = *(a1 + 72);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v19 = vextq_s8(v17, v17, 8uLL);
    v20 = v10;
    dispatch_after(v5, v6, block);
  }
}

uint64_t __82__SiriAnalyticsXPCConnection__publishUnorderedMessages_topic_attempts_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)publishUnorderedMessages:(id)messages topic:(id)topic completion:(id)completion
{
  messagesCopy = messages;
  topicCopy = topic;
  completionCopy = completion;
  if ([messagesCopy count])
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__SiriAnalyticsXPCConnection_publishUnorderedMessages_topic_completion___block_invoke;
    v12[3] = &unk_1E8587C40;
    v12[4] = self;
    v13 = messagesCopy;
    v14 = topicCopy;
    v15 = completionCopy;
    dispatch_async(queue, v12);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_publishMessagesToRemote:(id)remote attempts:(unint64_t)attempts completion:(id)completion
{
  remoteCopy = remote;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke;
  aBlock[3] = &unk_1E8587C90;
  aBlock[4] = self;
  v10 = completionCopy;
  v27 = v10;
  v11 = _Block_copy(aBlock);
  _currentConnection = [(SiriAnalyticsXPCConnection *)self _currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke_3;
  v20[3] = &unk_1E85872B0;
  v21 = remoteCopy;
  selfCopy = self;
  attemptsCopy = attempts;
  v23 = v10;
  v13 = v11;
  v24 = v13;
  v14 = v10;
  v15 = remoteCopy;
  v16 = [_currentConnection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke_5;
  v18[3] = &unk_1E8587C18;
  v19 = v13;
  v17 = v13;
  [v16 publishMessages:v15 completion:v18];
}

void __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke_2;
  block[3] = &unk_1E8587C18;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = v4;
    v14 = [v12 count];
    v15 = *(a1 + 64);
    *buf = 136315906;
    v22 = "[SiriAnalyticsXPCConnection _publishMessagesToRemote:attempts:completion:]_block_invoke_3";
    v23 = 2048;
    v24 = v14;
    v25 = 2112;
    v26 = v3;
    v27 = 2048;
    v28 = v15;
    _os_log_error_impl(&dword_1D9863000, v13, OS_LOG_TYPE_ERROR, "%s Failed to send %tu messages due to %@. (attempts = %tu)", buf, 0x2Au);
  }

  if (*(a1 + 64) > 2uLL)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v11 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 136315394;
      v22 = "[SiriAnalyticsXPCConnection _publishMessagesToRemote:attempts:completion:]_block_invoke_2";
      v23 = 2112;
      v24 = v16;
      _os_log_error_impl(&dword_1D9863000, v11, OS_LOG_TYPE_ERROR, "%s Dropping %@ because the maximum number of retries was reached.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = dispatch_time(0, 1000000000);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke_2;
    v17[3] = &unk_1E8587288;
    v17[4] = v7;
    v9 = v6;
    v10 = *(a1 + 64);
    v18 = v9;
    v20 = v10;
    v19 = *(a1 + 48);
    dispatch_after(v5, v8, v17);
  }
}

uint64_t __75__SiriAnalyticsXPCConnection__publishMessagesToRemote_attempts_completion___block_invoke_2(uint64_t a1)
{
  return [*(a1 + 32) _publishMessagesToRemote:*(a1 + 40) attempts:*(a1 + 56) + 1 completion:*(a1 + 48)];
}

- (void)_publishMessages:(id)messages completion:(id)completion
{
  completionCopy = completion;
  messagesCopy = messages;
  [(SiriAnalyticsXPCConnection *)self _stopIdleTimer];
  dispatch_group_enter(self->_xpcPublishingGroup);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SiriAnalyticsXPCConnection__publishMessages_completion___block_invoke;
  v9[3] = &unk_1E8587C90;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(SiriAnalyticsXPCConnection *)self _publishMessagesToRemote:messagesCopy attempts:0 completion:v9];
}

uint64_t __58__SiriAnalyticsXPCConnection__publishMessages_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startIdleTimer];
  dispatch_group_leave(*(*(a1 + 32) + 40));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)publishMessages:(id)messages completion:(id)completion
{
  messagesCopy = messages;
  completionCopy = completion;
  if ([messagesCopy count])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SiriAnalyticsXPCConnection_publishMessages_completion___block_invoke;
    block[3] = &unk_1E8587CE0;
    block[4] = self;
    v10 = messagesCopy;
    v11 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (SiriAnalyticsXPCConnection)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = SiriAnalyticsXPCConnection;
  v5 = [(SiriAnalyticsXPCConnection *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.analytics.xpc.connection", nameCopy];
    v8 = dispatch_queue_create([nameCopy UTF8String], v6);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = dispatch_group_create();
    xpcPublishingGroup = v5->_xpcPublishingGroup;
    v5->_xpcPublishingGroup = v10;

    v12 = [nameCopy copy];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v12;
  }

  return v5;
}

@end