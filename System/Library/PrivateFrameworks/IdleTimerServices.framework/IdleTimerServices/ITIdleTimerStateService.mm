@interface ITIdleTimerStateService
- (BOOL)addIdleTimerConfiguration:(id)configuration fromProcess:(id)process forReason:(id)reason;
- (BOOL)addIdleTimerOnBehalfOfSceneWithPID:(int)d fromProcess:(id)process withConfiguration:(id)configuration forReason:(id)reason;
- (BOOL)clientConfiguration:(id)configuration handleIdleEvent:(unint64_t)event;
- (BOOL)isIdleTimerServiceAvailable;
- (ITIdleTimerStateService)initWithDispatchQueue:(id)queue delegate:(id)delegate;
- (ITIdleTimerStateServiceDelegate)delegate;
- (id)_identifierForClientProcess:(id)process;
- (void)_addStateCaptureHandler;
- (void)clientDidDisconnect:(id)disconnect;
- (void)dealloc;
- (void)removeIdleTimerConfigurationFromProcess:(id)process forReason:(id)reason;
@end

@implementation ITIdleTimerStateService

- (ITIdleTimerStateService)initWithDispatchQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = ITIdleTimerStateService;
  v9 = [(ITIdleTimerStateService *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calloutDispatchQueue, queue);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionsByReason = v10->_assertionsByReason;
    v10->_assertionsByReason = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionReasonsByClientID = v10->_assertionReasonsByClientID;
    v10->_assertionReasonsByClientID = v13;

    v15 = [[ITIdleTimerStateServer alloc] initWithCalloutQueue:v10->_calloutDispatchQueue delegate:v10];
    server = v10->_server;
    v10->_server = v15;

    [(ITIdleTimerStateService *)v10 _addStateCaptureHandler];
  }

  return v10;
}

- (void)dealloc
{
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = ITIdleTimerStateService;
  [(ITIdleTimerStateService *)&v5 dealloc];
}

- (BOOL)addIdleTimerOnBehalfOfSceneWithPID:(int)d fromProcess:(id)process withConfiguration:(id)configuration forReason:(id)reason
{
  v8 = *&d;
  v30 = *MEMORY[0x277D85DE8];
  processCopy = process;
  configurationCopy = configuration;
  reasonCopy = reason;
  BSDispatchQueueAssert();
  v13 = [(ITIdleTimerStateService *)self _identifierForClientProcess:processCopy];
  v14 = [(NSMutableDictionary *)self->_assertionReasonsByClientID objectForKeyedSubscript:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)self->_assertionReasonsByClientID setObject:v14 forKeyedSubscript:v13];
  }

  v15 = [(NSMutableDictionary *)self->_assertionsByReason objectForKeyedSubscript:reasonCopy];

  if (v15)
  {
    v17 = ITLogIdleTimer(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = 138543874;
      v25 = v23;
      v26 = 2114;
      v27 = processCopy;
      v28 = 2114;
      v29 = reasonCopy;
      _os_log_error_impl(&dword_254ABE000, v17, OS_LOG_TYPE_ERROR, "%{public}@ - received duplicate assertion request from client: %{public}@ for reason: %{public}@", &v24, 0x20u);
    }

    v18 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained acquireIdleTimerAssertionOnBehalfOfSceneWithPID:v8 fromProcess:processCopy withConfiguration:configurationCopy forReason:reasonCopy];
    }

    else
    {
      [WeakRetained acquireIdleTimerAssertionWithConfiguration:configurationCopy fromClient:processCopy forReason:reasonCopy];
    }
    v20 = ;
    v18 = v20 != 0;
    if (v20)
    {
      [(NSMutableDictionary *)self->_assertionsByReason setObject:v20 forKeyedSubscript:reasonCopy];
      [v14 addObject:reasonCopy];
    }
  }

  return v18;
}

- (BOOL)addIdleTimerConfiguration:(id)configuration fromProcess:(id)process forReason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  processCopy = process;
  reasonCopy = reason;
  BSDispatchQueueAssert();
  v11 = [(ITIdleTimerStateService *)self _identifierForClientProcess:processCopy];
  v12 = [(NSMutableDictionary *)self->_assertionReasonsByClientID objectForKeyedSubscript:v11];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)self->_assertionReasonsByClientID setObject:v12 forKeyedSubscript:v11];
  }

  v13 = [(NSMutableDictionary *)self->_assertionsByReason objectForKeyedSubscript:reasonCopy];

  if (v13)
  {
    v15 = ITLogIdleTimer(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = 138543874;
      v23 = v21;
      v24 = 2114;
      v25 = processCopy;
      v26 = 2114;
      v27 = reasonCopy;
      _os_log_error_impl(&dword_254ABE000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - received duplicate assertion request from client: %{public}@ for reason: %{public}@", &v22, 0x20u);
    }

    v16 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained acquireIdleTimerAssertionWithConfiguration:configurationCopy fromClient:processCopy forReason:reasonCopy];

    v16 = v18 != 0;
    if (v18)
    {
      [(NSMutableDictionary *)self->_assertionsByReason setObject:v18 forKeyedSubscript:reasonCopy];
      [v12 addObject:reasonCopy];
    }
  }

  return v16;
}

- (void)removeIdleTimerConfigurationFromProcess:(id)process forReason:(id)reason
{
  reasonCopy = reason;
  processCopy = process;
  BSDispatchQueueAssert();
  v7 = [(ITIdleTimerStateService *)self _identifierForClientProcess:processCopy];

  v8 = [(NSMutableDictionary *)self->_assertionReasonsByClientID objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_assertionsByReason objectForKeyedSubscript:reasonCopy];
    [(NSMutableDictionary *)self->_assertionsByReason removeObjectForKey:reasonCopy];
    [v9 invalidate];
    [v8 removeObject:reasonCopy];
  }
}

- (void)clientDidDisconnect:(id)disconnect
{
  v18 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  BSDispatchQueueAssert();
  v5 = [(ITIdleTimerStateService *)self _identifierForClientProcess:disconnectCopy];
  v6 = [(NSMutableDictionary *)self->_assertionReasonsByClientID objectForKeyedSubscript:v5];
  v7 = [v6 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        [(ITIdleTimerStateService *)self removeIdleTimerConfigurationFromProcess:disconnectCopy forReason:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_assertionReasonsByClientID removeObjectForKey:v5];
}

- (BOOL)isIdleTimerServiceAvailable
{
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = WeakRetained != 0;

  return self;
}

- (BOOL)clientConfiguration:(id)configuration handleIdleEvent:(unint64_t)event
{
  configurationCopy = configuration;
  BSDispatchQueueAssert();
  LOBYTE(event) = [(ITIdleTimerStateServer *)self->_server clientConfiguration:configurationCopy handleIdleEvent:event];

  return event;
}

- (id)_identifierForClientProcess:(id)process
{
  v3 = MEMORY[0x277CCACA8];
  processCopy = process;
  bundleIdentifier = [processCopy bundleIdentifier];
  v6 = [processCopy pid];

  v7 = [v3 stringWithFormat:@"%@:%ld", bundleIdentifier, v6];

  return v7;
}

- (void)_addStateCaptureHandler
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureAssertion = self->_stateCaptureAssertion;
  self->_stateCaptureAssertion = v3;

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

__CFString *__50__ITIdleTimerStateService__addStateCaptureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[4] description];
  }

  else
  {
    v3 = &stru_2866F3550;
  }

  return v3;
}

- (ITIdleTimerStateServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end