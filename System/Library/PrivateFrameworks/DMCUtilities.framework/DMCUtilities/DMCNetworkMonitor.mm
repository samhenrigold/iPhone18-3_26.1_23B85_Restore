@interface DMCNetworkMonitor
- (BOOL)deviceMightHaveNetworkStrict:(BOOL)strict;
- (DMCNetworkMonitor)init;
- (id)_interfaceType;
- (void)_evaluateNetwork;
- (void)_notifyRegularClients;
- (void)_notifyStrictClients;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)waitForNetworkWithTimeout:(double)timeout strict:(BOOL)strict completionHandler:(id)handler;
@end

@implementation DMCNetworkMonitor

- (DMCNetworkMonitor)init
{
  v12.receiver = self;
  v12.super_class = DMCNetworkMonitor;
  v2 = [(DMCNetworkMonitor *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pathEvaluator = v2->_pathEvaluator;
    v2->_pathEvaluator = v3;

    v5 = objc_opt_new();
    cachedCompletionHandlers = v2->_cachedCompletionHandlers;
    v2->_cachedCompletionHandlers = v5;

    v7 = objc_opt_new();
    cachedStrictCompletionHandlers = v2->_cachedStrictCompletionHandlers;
    v2->_cachedStrictCompletionHandlers = v7;

    v9 = dispatch_queue_create("com.apple.DMCNetworkMonitor.worker-queue", 0);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v9;
  }

  return v2;
}

- (void)dealloc
{
  [(DMCNetworkMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = DMCNetworkMonitor;
  [(DMCNetworkMonitor *)&v3 dealloc];
}

- (void)waitForNetworkWithTimeout:(double)timeout strict:(BOOL)strict completionHandler:(id)handler
{
  handlerCopy = handler;
  workerQueue = [(DMCNetworkMonitor *)self workerQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke;
  v11[3] = &unk_1E7ADCD98;
  strictCopy = strict;
  v11[4] = self;
  v12 = handlerCopy;
  timeoutCopy = timeout;
  v10 = handlerCopy;
  dispatch_async(workerQueue, v11);
}

void __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) deviceMightHaveNetworkStrict:*(a1 + 56)])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_2;
    v19[3] = &unk_1E7ADCD48;
    v21 = v23;
    v22 = *(a1 + 48);
    v20 = *(a1 + 40);
    v3 = MEMORY[0x1B2731A20](v19);
    v5 = v3;
    v6 = *(a1 + 48);
    if (v6 > 0.0)
    {
      v7 = dispatch_time(0, (v6 * 1000000000.0));
      v8 = [*(a1 + 32) workerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_5;
      block[3] = &unk_1E7ADCD70;
      v18 = v5;
      dispatch_after(v7, v8, block);
    }

    v9 = *DMCLogObjects(v3, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_INFO, "DMCNetworkMonitor: Waiting for network...", buf, 2u);
    }

    v10 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v11 = [v10 cachedStrictCompletionHandlers];
      v12 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_2_8;
      v14[3] = &unk_1E7ADCD70;
      v14[4] = v5;
      v13 = MEMORY[0x1B2731A20](v14);
      [v11 addObject:v13];
    }

    else
    {
      v11 = [v10 cachedCompletionHandlers];
      v12 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_7;
      v15[3] = &unk_1E7ADCD70;
      v15[4] = v5;
      v13 = MEMORY[0x1B2731A20](v15);
      [v11 addObject:v13];
    }

    if (([*(a1 + 32) isMonitoring] & 1) == 0)
    {
      [*(a1 + 32) _startMonitoring];
    }

    _Block_object_dispose(v23, 8);
  }
}

uint64_t __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_2(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(result + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    if (a2)
    {
      v4 = *DMCLogObjects(result, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v3 + 48);
        v6 = 134217984;
        v7 = v5;
        _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "DMCNetworkMonitor: Timedout waiting for network after %.1f seconds", &v6, 0xCu);
      }
    }

    return (*(*(v3 + 32) + 16))();
  }

  return result;
}

- (void)_notifyRegularClients
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  cachedCompletionHandlers = [(DMCNetworkMonitor *)self cachedCompletionHandlers];
  v4 = [cachedCompletionHandlers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(cachedCompletionHandlers);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [cachedCompletionHandlers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  cachedCompletionHandlers2 = [(DMCNetworkMonitor *)self cachedCompletionHandlers];
  [cachedCompletionHandlers2 removeAllObjects];
}

- (void)_notifyStrictClients
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  cachedStrictCompletionHandlers = [(DMCNetworkMonitor *)self cachedStrictCompletionHandlers];
  v4 = [cachedStrictCompletionHandlers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(cachedStrictCompletionHandlers);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [cachedStrictCompletionHandlers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  cachedStrictCompletionHandlers2 = [(DMCNetworkMonitor *)self cachedStrictCompletionHandlers];
  [cachedStrictCompletionHandlers2 removeAllObjects];
}

- (void)_startMonitoring
{
  [(DMCNetworkMonitor *)self setIsMonitoring:1];
  v3 = nw_path_monitor_create();
  [(DMCNetworkMonitor *)self setPathMonitor:v3];

  pathMonitor = [(DMCNetworkMonitor *)self pathMonitor];
  workerQueue = [(DMCNetworkMonitor *)self workerQueue];
  nw_path_monitor_set_queue(pathMonitor, workerQueue);

  pathMonitor2 = [(DMCNetworkMonitor *)self pathMonitor];
  update_handler[0] = MEMORY[0x1E69E9820];
  update_handler[1] = 3221225472;
  update_handler[2] = __37__DMCNetworkMonitor__startMonitoring__block_invoke;
  update_handler[3] = &unk_1E7ADCDC0;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(pathMonitor2, update_handler);

  pathMonitor3 = [(DMCNetworkMonitor *)self pathMonitor];
  nw_path_monitor_start(pathMonitor3);
}

- (void)_stopMonitoring
{
  pathMonitor = [(DMCNetworkMonitor *)self pathMonitor];
  nw_path_monitor_cancel(pathMonitor);

  [(DMCNetworkMonitor *)self setPathMonitor:0];

  [(DMCNetworkMonitor *)self setIsMonitoring:0];
}

- (BOOL)deviceMightHaveNetworkStrict:(BOOL)strict
{
  v22 = *MEMORY[0x1E69E9840];
  pathEvaluator = [(DMCNetworkMonitor *)self pathEvaluator];
  path = [pathEvaluator path];
  status = [path status];

  if (status == 3)
  {
    v14 = *DMCLogObjects(v8, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      _interfaceType = [(DMCNetworkMonitor *)self _interfaceType];
      v18 = 134218242;
      v19 = 3;
      v20 = 2114;
      v21 = _interfaceType;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_DEFAULT, "DMCNetworkMonitor: Device might have network now. path status: %ld, interface type: %{public}@", &v18, 0x16u);
    }

    return !strict;
  }

  else if (status == 1)
  {
    v10 = *DMCLogObjects(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      _interfaceType2 = [(DMCNetworkMonitor *)self _interfaceType];
      v18 = 134218242;
      v13 = 1;
      v19 = 1;
      v20 = 2114;
      v21 = _interfaceType2;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEFAULT, "DMCNetworkMonitor: Device should have network now. path status: %ld, interface type: %{public}@", &v18, 0x16u);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v13;
}

- (id)_interfaceType
{
  pathEvaluator = [(DMCNetworkMonitor *)self pathEvaluator];
  path = [pathEvaluator path];
  interface = [path interface];
  type = [interface type];

  if (type > 4)
  {
    return @"Cellular";
  }

  else
  {
    return off_1E7ADCDE0[type];
  }
}

- (void)_evaluateNetwork
{
  workerQueue = [(DMCNetworkMonitor *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__DMCNetworkMonitor__evaluateNetwork__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

void __37__DMCNetworkMonitor__evaluateNetwork__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceMightHaveNetworkStrict:1];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _notifyRegularClients];
    [*(a1 + 32) _notifyStrictClients];
  }

  else
  {
    if (![v3 deviceMightHaveNetworkStrict:0])
    {
      return;
    }

    [*(a1 + 32) _notifyRegularClients];
    v5 = [*(a1 + 32) cachedStrictCompletionHandlers];
    v6 = [v5 count];

    if (v6)
    {
      return;
    }
  }

  v4 = *(a1 + 32);

  [v4 _stopMonitoring];
}

@end