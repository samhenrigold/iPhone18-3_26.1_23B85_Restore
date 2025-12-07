@interface MCCCategoryRulesController
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)notifyWebRuleWithSender:(id)sender category:(id)category lastModified:(double)modified;
- (MCCCategoryRulesController)init;
- (MCCCategoryRulesDelegate)delegate;
- (void)_checkConnection;
- (void)agentIsAlive;
- (void)dealloc;
- (void)newOldCategoryTimestampsChanged:(id)changed;
- (void)overrideRulesChanged:(id)changed;
- (void)registerForWebRuleNotifications;
- (void)registerForWebRuleNotifications:(unint64_t)notifications;
- (void)setupReconnectTimer;
- (void)syncAllCategoryOverrides:(id)overrides;
@end

@implementation MCCCategoryRulesController

- (MCCCategoryRulesController)init
{
  v22.receiver = self;
  v22.super_class = MCCCategoryRulesController;
  v2 = [(MCCCategoryRulesController *)&v22 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    callbackListener = v2->_callbackListener;
    v2->_callbackListener = anonymousListener;

    [(NSXPCListener *)v2->_callbackListener setDelegate:v2];
    v5 = [[MCCSecretAgentController alloc] initWithCallbackListener:v2->_callbackListener];
    agentController = v2->_agentController;
    v2->_agentController = v5;

    objc_initWeak(&location, v2);
    v7 = [MCCBgTimer alloc];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __34__MCCCategoryRulesController_init__block_invoke;
    v19 = &unk_1E8458168;
    objc_copyWeak(&v20, &location);
    v8 = [(MCCBgTimer *)v7 initWithTimeIntervalSinceNow:&v16 block:630.0];
    bgTimer = v2->_bgTimer;
    v2->_bgTimer = v8;

    [(MCCBgTimer *)v2->_bgTimer start:v16];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.icloudmcckit.reconnect.timer.queue", v10);
    reconnectTimerQueue = v2->reconnectTimerQueue;
    v2->reconnectTimerQueue = v11;

    v14 = _MCCLogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [MCCCategoryRulesController init];
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__MCCCategoryRulesController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkConnection];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_callbackListener invalidate];
  v3 = objc_storeWeak(&self->_delegate, 0);
  v4 = _MCCLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MCCCategoryRulesController dealloc];
  }

  v5.receiver = self;
  v5.super_class = MCCCategoryRulesController;
  [(MCCCategoryRulesController *)&v5 dealloc];
}

- (void)registerForWebRuleNotifications
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier caseInsensitiveCompare:@"com.apple.mobilemail"];

  v7 = _MCCLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "registerForWebRuleNotifications from maild", v10, 2u);
    }

    v9 = 5;
  }

  else if (v8)
  {
    *buf = 0;
    v9 = 2;
    _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "registerForWebRuleNotifications from Mail.app", buf, 2u);
  }

  else
  {
    v9 = 2;
  }

  [(MCCCategoryRulesController *)self registerForWebRuleNotifications:v9];
}

- (void)registerForWebRuleNotifications:(unint64_t)notifications
{
  date = [MEMORY[0x1E695DF00] date];
  lastCheckin = self->_lastCheckin;
  self->_lastCheckin = date;

  agentController = self->_agentController;

  [(MCCSecretAgentController *)agentController registerCategoryRulesCallbackWithNotificationTypes:notifications];
}

- (BOOL)notifyWebRuleWithSender:(id)sender category:(id)category lastModified:(double)modified
{
  categoryCopy = category;
  senderCopy = sender;
  v10 = [[RCAddress alloc] initWithAddress:senderCopy displayName:&stru_1F4F3D0E0];

  v11 = [[RCOverrideRule alloc] initWithEmailAddress:v10 overrideIdentifier:0 category:categoryCopy categoryUpdateTime:modified];
  [(MCCSecretAgentController *)self->_agentController notifyWebRule:v11];

  return 1;
}

- (void)_checkConnection
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(self + 24);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1D3703000, log, OS_LOG_TYPE_DEBUG, "[rules] Checking last:%@ vs now:%@", &v4, 0x16u);
}

- (void)agentIsAlive
{
  date = [MEMORY[0x1E695DF00] date];
  lastCheckin = self->_lastCheckin;
  self->_lastCheckin = date;

  v6 = _MCCLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [MCCCategoryRulesController agentIsAlive];
  }
}

- (void)overrideRulesChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 categoryRulesController:self didReceiveOverrideRules:changedCopy];
    }
  }
}

- (void)newOldCategoryTimestampsChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 categoryRulesController:self didReceiveNewOldTimestamps:changedCopy];
    }
  }
}

- (void)syncAllCategoryOverrides:(id)overrides
{
  overridesCopy = overrides;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 categoryRulesController:self didReceiveSyncAllOverrideRules:overridesCopy];
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  callbackListener = self->_callbackListener;
  if (callbackListener == listenerCopy)
  {
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4F40AC0];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    [v10 setClasses:v16 forSelector:sel_overrideRulesChanged_ argumentIndex:0 ofReply:0];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    [v10 setClasses:v20 forSelector:sel_newOldCategoryTimestampsChanged_ argumentIndex:0 ofReply:0];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v21 setWithObjects:{v22, v23, v24, v25, objc_opt_class(), 0}];
    [v10 setClasses:v26 forSelector:sel_syncAllCategoryOverrides_ argumentIndex:0 ofReply:0];

    [v8 setExportedInterface:v10];
    [v8 setExportedObject:self];
    objc_initWeak(&location, self);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke;
    v30[3] = &unk_1E8458168;
    objc_copyWeak(&v31, &location);
    [v8 setInterruptionHandler:v30];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_95;
    v28[3] = &unk_1E8458168;
    objc_copyWeak(&v29, &location);
    [v8 setInvalidationHandler:v28];
    [v8 resume];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = _MCCLogSystem(connectionCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MCCCategoryRulesController *)listenerCopy listener:v10 shouldAcceptNewConnection:?];
    }
  }

  return callbackListener == listenerCopy;
}

void __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _MCCLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 delegate];

    if (v5)
    {
      v6 = [v4 delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [v4 delegate];
        [v8 categoryRulesController:v4 didAlterConnectionWithReason:1];
      }
    }
  }
}

void __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_95(uint64_t a1)
{
  v2 = _MCCLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_95_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 setupReconnectTimer];
  }
}

- (void)setupReconnectTimer
{
  reconnectTimerQueue = self->reconnectTimerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke;
  block[3] = &unk_1E8458190;
  block[4] = self;
  dispatch_async(reconnectTimerQueue, block);
}

void __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke(uint64_t a1)
{
  inited = objc_initWeak(&location, *(a1 + 32));
  if (*(*(a1 + 32) + 40))
  {
    v3 = _MCCLogSystem(inited);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3703000, v3, OS_LOG_TYPE_DEFAULT, "[rules] Cancelling previous timer", buf, 2u);
    }

    [*(*(a1 + 32) + 40) cancel];
  }

  v4 = [MCCBgTimer alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke_96;
  v10[3] = &unk_1E8458168;
  objc_copyWeak(&v11, &location);
  v5 = [(MCCBgTimer *)v4 initWithTimeIntervalSinceNow:v10 block:60.0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v9 = _MCCLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3703000, v9, OS_LOG_TYPE_DEFAULT, "[rules] Starting reconnect timer", buf, 2u);
  }

  [*(*(a1 + 32) + 40) start];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke_96(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _MCCLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1D3703000, v2, OS_LOG_TYPE_DEFAULT, "[rules] Attempting reconnect to launchagent", &v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _MCCLogSystem(v4);
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1D3703000, v6, OS_LOG_TYPE_DEFAULT, "[rules] Self does exist, firing timer", &v14, 2u);
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 registerForWebRuleNotifications];

    v7 = [v6 delegate];

    if (v7)
    {
      v8 = [v6 delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v11 = _MCCLogSystem(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v6 delegate];
          v14 = 138412546;
          v15 = v12;
          v16 = 1024;
          v17 = 4;
          _os_log_impl(&dword_1D3703000, v11, OS_LOG_TYPE_DEFAULT, "[rules] Sending to client %@:%d", &v14, 0x12u);
        }

        v13 = [v6 delegate];
        [v13 categoryRulesController:v6 didAlterConnectionWithReason:4];
      }
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke_96_cold_1();
  }
}

- (MCCCategoryRulesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1D3703000, log, OS_LOG_TYPE_ERROR, "[rules] MCCCategoryRulesController NOT accepting new connection: %@ vs %@\n", &v4, 0x16u);
}

@end