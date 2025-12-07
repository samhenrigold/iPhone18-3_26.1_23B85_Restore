@interface ITIdleTimerStateServer
- (BOOL)_hasIdleTimerServicesEntitlementForProcess:(id)process missingEntitlementError:(id *)error;
- (BOOL)clientConfiguration:(id)configuration handleIdleEvent:(unint64_t)event;
- (ITIdleTimerStateServer)initWithCalloutQueue:(id)queue delegate:(id)delegate;
- (ITIdleTimerStateServerDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)addIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)addIdleTimerServiceOnBehalfOfSceneWithPID:(id)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)removeIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
@end

@implementation ITIdleTimerStateServer

- (ITIdleTimerStateServer)initWithCalloutQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = ITIdleTimerStateServer;
  v9 = [(ITIdleTimerStateServer *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_calloutQueue, queue);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientTargetsByConfigIdentifier = v10->_clientTargetsByConfigIdentifier;
    v10->_clientTargetsByConfigIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v10->_connections;
    v10->_connections = v13;

    v15 = MEMORY[0x277CF32A0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__ITIdleTimerStateServer_initWithCalloutQueue_delegate___block_invoke;
    v20[3] = &unk_2797A5340;
    v16 = v10;
    v21 = v16;
    v17 = [v15 listenerWithConfigurator:v20];
    v18 = v16[3];
    v16[3] = v17;

    [v16[3] activate];
  }

  return v10;
}

void __56__ITIdleTimerStateServer_initWithCalloutQueue_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.frontboard"];
  [v3 setService:@"com.apple.idletimer-service"];
  [v3 setDelegate:*(a1 + 32)];
}

- (BOOL)clientConfiguration:(id)configuration handleIdleEvent:(unint64_t)event
{
  configurationCopy = configuration;
  BSDispatchQueueAssert();
  _identifier = [configurationCopy _identifier];

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(NSMutableDictionary *)self->_clientTargetsByConfigIdentifier objectForKey:_identifier];
  os_unfair_lock_unlock(&self->_accessLock);
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
    v10 = [v8 handleIdleEvent:v9 usingConfigurationWithIdentifier:_identifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addIdleTimerServiceOnBehalfOfSceneWithPID:(id)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  reasonCopy = reason;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  v15 = [(ITIdleTimerStateServer *)self _hasIdleTimerServicesEntitlementForProcess:remoteProcess missingEntitlementError:error];
  if ((v15 & 1) == 0)
  {
    _identifier = ITLogIdleTimer(v15);
    if (os_log_type_enabled(_identifier, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = remoteProcess;
      v33 = 2114;
      v34 = configurationCopy;
      _os_log_error_impl(&dword_254ABE000, _identifier, OS_LOG_TYPE_ERROR, "%{public}@ - Missing entitlement. Rejecting unauthorized access from %{public}@ to add a configuration: %{public}@.", buf, 0x20u);
    }

    goto LABEL_7;
  }

  delegate = [(ITIdleTimerStateServer *)self delegate];
  v17 = [delegate addIdleTimerOnBehalfOfSceneWithPID:objc_msgSend(dCopy fromProcess:"intValue") withConfiguration:remoteProcess forReason:{configurationCopy, reasonCopy}];

  if (v17)
  {
    if ([configurationCopy _idleEventMask])
    {
      _identifier = [configurationCopy _identifier];
      clientTargetsByConfigIdentifier = self->_clientTargetsByConfigIdentifier;
      currentContext2 = [MEMORY[0x277CF3280] currentContext];
      remoteTarget = [currentContext2 remoteTarget];
      [(NSMutableDictionary *)clientTargetsByConfigIdentifier setObject:remoteTarget forKey:_identifier];

LABEL_7:
    }
  }

  else if (error)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = [configurationCopy description];
    v27[1] = @"ITIdleTimerServicesErrorReasonKey";
    v28[0] = v23;
    v28[1] = reasonCopy;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    *error = [v22 errorWithDomain:@"ITIdleTimerConfigurationErrorDomain" code:3 userInfo:v24];
  }
}

- (void)addIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  reasonCopy = reason;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  v12 = [(ITIdleTimerStateServer *)self _hasIdleTimerServicesEntitlementForProcess:remoteProcess missingEntitlementError:error];
  if ((v12 & 1) == 0)
  {
    _identifier = ITLogIdleTimer(v12);
    if (os_log_type_enabled(_identifier, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543874;
      v27 = v23;
      v28 = 2114;
      v29 = remoteProcess;
      v30 = 2114;
      v31 = configurationCopy;
      _os_log_error_impl(&dword_254ABE000, _identifier, OS_LOG_TYPE_ERROR, "%{public}@ - Missing entitlement. Rejecting unauthorized access from %{public}@ to add a configuration: %{public}@.", buf, 0x20u);
    }

    goto LABEL_7;
  }

  delegate = [(ITIdleTimerStateServer *)self delegate];
  v14 = [delegate addIdleTimerConfiguration:configurationCopy fromProcess:remoteProcess forReason:reasonCopy];

  if (v14)
  {
    if ([configurationCopy _idleEventMask])
    {
      _identifier = [configurationCopy _identifier];
      clientTargetsByConfigIdentifier = self->_clientTargetsByConfigIdentifier;
      currentContext2 = [MEMORY[0x277CF3280] currentContext];
      remoteTarget = [currentContext2 remoteTarget];
      [(NSMutableDictionary *)clientTargetsByConfigIdentifier setObject:remoteTarget forKey:_identifier];

LABEL_7:
    }
  }

  else if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = [configurationCopy description];
    v24[1] = @"ITIdleTimerServicesErrorReasonKey";
    v25[0] = v20;
    v25[1] = reasonCopy;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    *error = [v19 errorWithDomain:@"ITIdleTimerConfigurationErrorDomain" code:3 userInfo:v21];
  }
}

- (void)removeIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  reasonCopy = reason;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  v12 = [(ITIdleTimerStateServer *)self _hasIdleTimerServicesEntitlementForProcess:remoteProcess missingEntitlementError:error];
  if (v12)
  {
    delegate = [(ITIdleTimerStateServer *)self delegate];
    [delegate removeIdleTimerConfigurationFromProcess:remoteProcess forReason:reasonCopy];

    _identifier = [configurationCopy _identifier];
    [(NSMutableDictionary *)self->_clientTargetsByConfigIdentifier removeObjectForKey:_identifier];
  }

  else
  {
    _identifier = ITLogIdleTimer(v12);
    if (os_log_type_enabled(_identifier, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138543874;
      v18 = v16;
      v19 = 2114;
      v20 = remoteProcess;
      v21 = 2114;
      v22 = configurationCopy;
      _os_log_error_impl(&dword_254ABE000, _identifier, OS_LOG_TYPE_ERROR, "%{public}@ - Missing entitlement. Rejecting unauthorized access from %{public}@ to remove a configuration: %{public}@.", &v17, 0x20u);
    }
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v8 = [remoteProcess pid];
  v9 = v8;
  v10 = ITLogIdleTimer(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ITIdleTimerStateServer listener:connectionCopy didReceiveConnection:v9 withContext:v10];
  }

  if (v9 <= 0)
  {
    v12 = ITLogIdleTimer(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ITIdleTimerStateServer listener:connectionCopy didReceiveConnection:v9 withContext:v12];
    }

    [connectionCopy invalidate];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke;
    v13[3] = &unk_2797A5390;
    v16 = v9;
    v14 = remoteProcess;
    selfCopy = self;
    [connectionCopy configureConnection:v13];
    [(ITIdleTimerStateServer *)self _addConnection:connectionCopy];
    [connectionCopy activate];
  }
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ITLogIdleTimer(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v6 = *(a1 + 48);
    *buf = 138543618;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(&dword_254ABE000, v4, OS_LOG_TYPE_DEFAULT, "configuring connection from client bundleID: %{public}@, pid:%d", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2866F6820];
  v8 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2866F6C08];
  v9 = [MEMORY[0x277CF32C0] interfaceWithServer:v7 client:v8];
  v10 = [MEMORY[0x277CF32C8] utility];
  [v3 setServiceQuality:v10];

  [v3 setInterface:v9];
  [v3 setInterfaceTarget:*(a1 + 40)];
  [v3 setTargetQueue:*(*(a1 + 40) + 16)];
  objc_initWeak(buf, *(a1 + 40));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65;
  v15[3] = &unk_2797A5368;
  v16 = *(a1 + 32);
  v18 = *(a1 + 48);
  objc_copyWeak(&v17, buf);
  [v3 setInterruptionHandler:v15];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67;
  v11[3] = &unk_2797A5368;
  v12 = *(a1 + 32);
  v14 = *(a1 + 48);
  objc_copyWeak(&v13, buf);
  [v3 setInvalidationHandler:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65(uint64_t a1)
{
  v2 = ITLogIdleTimer(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    [v5 clientDidDisconnect:*(a1 + 32)];
  }
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ITLogIdleTimer(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained delegate];
    [v7 clientDidDisconnect:*(a1 + 32)];

    [v6 _removeConnection:v3];
  }
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections addObject:connectionCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections removeObject:connectionCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (BOOL)_hasIdleTimerServicesEntitlementForProcess:(id)process missingEntitlementError:(id *)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = [process hasEntitlement:@"com.apple.idle-timer-services"];
  v6 = v5;
  if (error && (v5 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing <%@> Entitlement", @"com.apple.idle-timer-services"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA470];
    v12[0] = *MEMORY[0x277CCA450];
    v12[1] = v9;
    v13[0] = v7;
    v13[1] = @"Missing Entitlement";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    *error = [v8 errorWithDomain:@"ITIdleTimerConfigurationErrorDomain" code:2 userInfo:v10];
  }

  return v6;
}

- (ITIdleTimerStateServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(int)a2 withContext:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_254ABE000, log, OS_LOG_TYPE_DEBUG, "got a connection! -- %{public}@ pid:%d", &v3, 0x12u);
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(int)a2 withContext:(os_log_t)log .cold.2(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_254ABE000, log, OS_LOG_TYPE_ERROR, "dropping connection with junk pid (%d) -- %{public}@, ", v3, 0x12u);
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254ABE000, v2, v3, "interrupted connection from client bundleID: %{public}@, pid:%d", v4, v5, v6, v7);
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254ABE000, v2, v3, "invalidated connection from client bundleID: %{public}@, pid:%d", v4, v5, v6, v7);
}

@end