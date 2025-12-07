@interface PTGlobalStateChangeMonitor
- (PTGlobalStateChangeMonitor)initWithQueue:(id)queue stateChangeBlock:(id)block;
- (void)dealloc;
@end

@implementation PTGlobalStateChangeMonitor

- (PTGlobalStateChangeMonitor)initWithQueue:(id)queue stateChangeBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = PTGlobalStateChangeMonitor;
  v9 = [(PTGlobalStateChangeMonitor *)&v25 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v9->_targetQueue, queue);
  v11 = MEMORY[0x25F8B17E0](blockCopy);
  stateChangeBlock = v10->_stateChangeBlock;
  v10->_stateChangeBlock = v11;

  objc_initWeak(&location, v10);
  out_token = 0;
  targetQueue = [(PTGlobalStateChangeMonitor *)v10 targetQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __61__PTGlobalStateChangeMonitor_initWithQueue_stateChangeBlock___block_invoke;
  handler[3] = &unk_279A18CF8;
  objc_copyWeak(&v22, &location);
  v14 = notify_register_dispatch("com.apple.performancetrace.global_state_did_change", &out_token, targetQueue, handler);

  if (!v14)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    notify_token = v10->_notify_token;
    v10->_notify_token = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
LABEL_7:
    v17 = v10;
    goto LABEL_8;
  }

  v16 = _stateChangeMonitorHandle(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PTGlobalStateChangeMonitor initWithQueue:stateChangeBlock:];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  v17 = 0;
LABEL_8:

  return v17;
}

void __61__PTGlobalStateChangeMonitor_initWithQueue_stateChangeBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stateChangeBlock];
  v2[2]();

  v4 = _stateChangeMonitorHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E3D3000, v4, OS_LOG_TYPE_DEFAULT, "Fired notification handler block", v5, 2u);
  }
}

- (void)dealloc
{
  notify_token = [(PTGlobalStateChangeMonitor *)self notify_token];

  if (notify_token)
  {
    notify_token2 = [(PTGlobalStateChangeMonitor *)self notify_token];
    v5 = notify_cancel([notify_token2 intValue]);

    if (v5)
    {
      v7 = _stateChangeMonitorHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PTGlobalStateChangeMonitor dealloc];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = PTGlobalStateChangeMonitor;
  [(PTGlobalStateChangeMonitor *)&v8 dealloc];
}

@end