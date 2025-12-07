@interface BKSProximitySensorService
+ (id)sharedInstance;
- (id)_init;
- (id)addObserver:(id)observer forReason:(id)reason;
- (void)_connectToRemoteServiceIfNeeded;
- (void)proximityDetectionMaskDidChange:(id)change;
@end

@implementation BKSProximitySensorService

- (id)addObserver:(id)observer forReason:(id)reason
{
  reasonCopy = reason;
  observerCopy = observer;
  [(BKSProximitySensorService *)self _connectToRemoteServiceIfNeeded];
  v8 = [BSCompoundAssertion acquireForReason:"acquireForReason:withContext:" withContext:?];

  return v8;
}

- (void)proximityDetectionMaskDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_calloutQueue);
  orderedContext = [(BSCompoundAssertion *)self->_observers orderedContext];
  v6 = [orderedContext countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(orderedContext);
        }

        [*(8 * i) proximitySensorDetectionMaskDidChange:?];
      }

      v7 = [orderedContext countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }
}

- (void)_connectToRemoteServiceIfNeeded
{
  v34 = *MEMORY[0x1E69E9840];
  p_connection = &self->_connection;
  if (!self->_connection)
  {
    v5 = +[BKSHIDServiceConnectionFactory sharedInstance];
    v6 = [v5 clientConnectionForServiceWithName:?];

    if (v6)
    {
      objc_storeStrong(p_connection, v6);
      connection = self->_connection;
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke;
      v20 = &unk_1E6F47978;
      selfCopy = self;
      [(BSServiceInitiatingConnection *)connection configure:?];
      v8 = BKLogUISensor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_186345000, v8, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
      }

      [v6 activate];
      v9 = BKLogUISensor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        remoteTarget = [v6 remoteTarget];
        *buf = 138543362;
        v23 = remoteTarget;
        _os_log_debug_impl(&dword_186345000, v9, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
      }

      remoteTarget2 = [v6 remoteTarget];

      if (!remoteTarget2)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = NSStringFromSelector(a2);
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138544642;
          v23 = v12;
          v24 = 2114;
          v25 = v14;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 2114;
          v29 = @"BKSProximitySensorService.m";
          v30 = 1024;
          v31 = 101;
          v32 = 2114;
          v33 = v11;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v11 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186373EE0);
      }
    }

    else
    {
      v15 = BKLogUISensor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v15, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
      }
    }
  }
}

void __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogUISensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_186345000, v3, OS_LOG_TYPE_DEBUG, "configured client service", v7, 2u);
  }

  v4 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v5 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v6 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v6 setServer:?];
  [v6 setClient:?];
  [v2 setInterface:?];
  [v2 setInterfaceTarget:?];
  [v2 setQueue:?];
  [v2 setInterruptionHandler:?];
  [v2 setInvalidationHandler:?];
}

void __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke_62()
{
  v0 = BKLogUISensor();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "backboardd must be going down, sounds like fun", v1, 2u);
  }
}

void __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogUISensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "service interruption -- attempting to reactivate", v4, 2u);
  }

  [v2 activate];
}

- (id)_init
{
  v17.receiver = self;
  v17.super_class = BKSProximitySensorService;
  v2 = [(BKSProximitySensorService *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E698F4D0] queueWithName:?];
    bsServiceDispatchQueue = v2->_bsServiceDispatchQueue;
    v2->_bsServiceDispatchQueue = v3;

    queue = [(BSServiceDispatchQueue *)v2->_bsServiceDispatchQueue queue];
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = queue;

    v7 = MEMORY[0x1E698E658];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __34__BKSProximitySensorService__init__block_invoke;
    v15 = &unk_1E6F46D70;
    v8 = v2;
    v16 = v8;
    v9 = [v7 assertionWithIdentifier:? stateDidChangeHandler:?];
    observers = v8->_observers;
    v8->_observers = v9;
  }

  return v2;
}

void __34__BKSProximitySensorService__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 remoteTarget];
  v6 = MEMORY[0x1E696AD98];
  [v4 isActive];

  v7 = [v6 numberWithBool:?];
  v8 = [v5 setObservesProximitySensorDetectionMaskChanges:?];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = v9[3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__BKSProximitySensorService__init__block_invoke_2;
    v11[3] = &unk_1E6F47C78;
    v12 = v9;
    v13 = v8;
    dispatch_async(v10, v11);
  }
}

+ (id)sharedInstance
{
  _init = [[BKSProximitySensorService alloc] _init];

  return _init;
}

@end