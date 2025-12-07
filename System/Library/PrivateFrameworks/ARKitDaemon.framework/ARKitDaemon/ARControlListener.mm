@interface ARControlListener
- (ARControlListener)initWithDelegate:(id)delegate controlClass:(Class)class isInProcess:(BOOL)process;
- (ARControlListenerDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
@end

@implementation ARControlListener

- (ARControlListener)initWithDelegate:(id)delegate controlClass:(Class)class isInProcess:(BOOL)process
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = ARControlListener;
  v9 = [(ARControlListener *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_controlClass = class;
    v11 = ARCreateNonFixedPriorityConcurrentDispatchQueue();
    concurrentConnectionTargetQueue = v10->_concurrentConnectionTargetQueue;
    v10->_concurrentConnectionTargetQueue = v11;

    v13 = [(objc_class *)v10->_controlClass performSelector:sel_serviceName];
    if (process)
    {
      anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      anonymousListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v13];
    }

    listener = v10->_listener;
    v10->_listener = anonymousListener;

    v16 = ARCreateNonFixedPriorityDispatchQueue();
    listenerQueue = v10->_listenerQueue;
    v10->_listenerQueue = v16;

    [(NSXPCListener *)v10->_listener _setQueue:v10->_listenerQueue];
    [(NSXPCListener *)v10->_listener setDelegate:v10];
    [(NSXPCListener *)v10->_listener resume];
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ARControlListener;
  [(ARControlListener *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = _ARLogDaemon_1(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v32 = v8;
    v33 = 2048;
    selfCopy4 = self;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Listener received request for control", buf, 0x16u);
  }

  v9 = MEMORY[0x277CCACA8];
  serviceName = [connectionCopy serviceName];
  v11 = [v9 stringWithFormat:@"com.apple.arkit.daemonControlConnectionQueue.%@", serviceName];

  uTF8String = [v11 UTF8String];
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create_with_target_V2(uTF8String, v13, self->_concurrentConnectionTargetQueue);

  [connectionCopy _setQueue:v14];
  v15 = [objc_alloc(self->_controlClass) initWithConnection:connectionCopy];
  v16 = v15;
  if (!v15)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARControlListener listener:shouldAcceptNewConnection:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion;
    v22 = _ARLogDaemon_1(v15);
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543618;
        v32 = v25;
        v33 = 2048;
        selfCopy4 = self;
        v26 = "%{public}@ <%p>: Failed to create control.";
        v27 = v23;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_23D391000, v27, v28, v26, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v25 = NSStringFromClass(v29);
      *buf = 138543618;
      v32 = v25;
      v33 = 2048;
      selfCopy4 = self;
      v26 = "Error: %{public}@ <%p>: Failed to create control.";
      v27 = v23;
      v28 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v17 = _ARLogDaemon_1(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138543618;
    v32 = v19;
    v33 = 2048;
    selfCopy4 = self;
    _os_log_impl(&dword_23D391000, v17, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Accepted connection for control.", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didDiscoverControl:v16];

  [connectionCopy resume];
LABEL_16:

  return v16 != 0;
}

- (ARControlListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end