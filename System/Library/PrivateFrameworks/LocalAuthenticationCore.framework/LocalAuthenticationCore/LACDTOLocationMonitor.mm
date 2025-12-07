@interface LACDTOLocationMonitor
- (LACDTOLocationMonitor)initWithLocationProvider:(id)provider workQueue:(id)queue;
- (LACDTOLocationMonitorDelegate)delegate;
- (void)startMonitoringWithReason:(id)reason;
- (void)stopMonitoringWithReason:(id)reason;
@end

@implementation LACDTOLocationMonitor

- (LACDTOLocationMonitor)initWithLocationProvider:(id)provider workQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = LACDTOLocationMonitor;
  v9 = [(LACDTOLocationMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationProvider, provider);
    objc_storeStrong(&v10->_workQueue, queue);
  }

  return v10;
}

- (void)startMonitoringWithReason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_workQueue);
  isRunning = [(LACTimer *)self->_timer isRunning];
  if (isRunning)
  {
    v6 = LACLogDTOTimers(isRunning);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(LACDTOLocationMonitor *)self startMonitoringWithReason:v6];
    }
  }

  else
  {
    v7 = objc_alloc_init(LACTimer);
    timer = self->_timer;
    self->_timer = v7;

    v10 = LACLogDTOTimers(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v18 = 2048;
      v19 = 0x4024000000000000;
      v20 = 2114;
      v21 = reasonCopy;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ starting monitor with an interval of %.2f secs with reason: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    p_workQueue = &self->_workQueue;
    workQueue = self->_workQueue;
    v12 = p_workQueue[1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke;
    v14[3] = &unk_1E7A95380;
    objc_copyWeak(&v15, buf);
    [(OS_dispatch_queue *)v12 dispatchAfter:workQueue inQueue:1 repeat:v14 block:10.0];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = LACLogDTOTimers(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ performing scheduled query", buf, 0xCu);
    }

    v5 = v3[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke_1;
    v6[3] = &unk_1E7A97C50;
    objc_copyWeak(&v7, (a1 + 32));
    [v5 checkIsInFamiliarLocationWithCompletion:v6];
    objc_destroyWeak(&v7);
  }
}

void __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke_1(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 4);
    [v5 locationMonitor:v4 didReceiveLocationState:v6];
  }
}

- (void)stopMonitoringWithReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_workQueue);
  v6 = LACLogDTOTimers(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = reasonCopy;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping monitor with reason: %{public}@", &v8, 0x16u);
  }

  [(LACTimer *)self->_timer cancel];
  timer = self->_timer;
  self->_timer = 0;
}

- (LACDTOLocationMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startMonitoringWithReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ ignoring redundant request to start", &v2, 0xCu);
}

@end