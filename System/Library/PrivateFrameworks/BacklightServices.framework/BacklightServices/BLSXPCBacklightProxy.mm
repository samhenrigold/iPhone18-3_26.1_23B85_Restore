@interface BLSXPCBacklightProxy
+ (id)defaultEndpoint;
- (BLSXPCBacklightProxy)init;
- (BOOL)deviceSupportsAlwaysOn;
- (BOOL)isAlwaysOnEnabled;
- (BOOL)isTransitioning;
- (_DWORD)initWithEndpoint:(void *)endpoint;
- (id)lock_allDidChangeAlwaysOnEnabledObservers;
- (id)lock_allDidCompleteUpdateToStateObservers;
- (id)lock_allObserversPassingTest:(id *)test;
- (id)performChangeRequest:(id)request;
- (int64_t)backlightState;
- (int64_t)flipbookState;
- (void)_reactivate;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didChangeAlwaysOnEnabled:(id)enabled;
- (void)didCompleteUpdateToState:(id)state forEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)invalidate;
- (void)lock_enumerateObserversWithBlock:(uint64_t)block;
- (void)lock_updateHostObservationMask:(uint64_t)mask;
- (void)performingEvent:(id)event;
- (void)removeObserver:(id)observer;
@end

@implementation BLSXPCBacklightProxy

- (BOOL)isAlwaysOnEnabled
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_isAlwaysOnEnabledCached)
  {
    lock_isAlwaysOnEnabled = self->_lock_isAlwaysOnEnabled;
  }

  else
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    lock_isAlwaysOnEnabled = [remoteTarget isAlwaysOnEnabled];
  }

  os_unfair_lock_unlock(&self->_lock);
  return lock_isAlwaysOnEnabled;
}

- (id)lock_allDidChangeAlwaysOnEnabledObservers
{
  if (self)
  {
    self = [(BLSXPCBacklightProxy *)self lock_allObserversPassingTest:?];
    v1 = vars8;
  }

  return self;
}

- (int64_t)backlightState
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_isBacklightStateCached)
  {
    lock_backlightState = self->_lock_backlightState;
  }

  else
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    getBacklightState = [remoteTarget getBacklightState];
    lock_backlightState = [getBacklightState integerValue];
  }

  os_unfair_lock_unlock(&self->_lock);
  return lock_backlightState;
}

+ (id)defaultEndpoint
{
  objc_opt_self();
  v1 = MEMORY[0x277CF3288];
  defaultShellMachName = [MEMORY[0x277CF3288] defaultShellMachName];
  v3 = +[BLSXPCBacklightProxySpecification identifier];
  v4 = [v1 endpointForMachName:defaultShellMachName service:v3 instance:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = MEMORY[0x277CF3288];
    v8 = +[BLSXPCBacklightProxySpecification identifier];
    v6 = [v7 nullEndpointForService:v8 instance:0];
  }

  return v6;
}

- (BLSXPCBacklightProxy)init
{
  v3 = +[BLSXPCBacklightProxy defaultEndpoint];
  v4 = [(BLSXPCBacklightProxy *)self initWithEndpoint:v3];

  return v4;
}

- (_DWORD)initWithEndpoint:(void *)endpoint
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (endpoint)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Bsserviceconne.isa);
    if (!v5)
    {
      [(BLSXPCBacklightProxy *)sel_initWithEndpoint_ initWithEndpoint:endpoint];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BLSXPCBacklightProxy *)sel_initWithEndpoint_ initWithEndpoint:endpoint];
    }

    v31.receiver = endpoint;
    v31.super_class = BLSXPCBacklightProxy;
    v6 = objc_msgSendSuper2(&v31, sel_init);
    v7 = v6;
    if (v6)
    {
      v6[8] = 0;
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v9 = *(v7 + 1);
      *(v7 + 1) = weakToStrongObjectsMapTable;

      v10 = [MEMORY[0x277CF3280] connectionWithEndpoint:v5];
      v11 = *(v7 + 3);
      *(v7 + 3) = v10;

      v12 = +[BLSXPCBacklightProxySpecification serviceQuality];
      serial = [MEMORY[0x277CF0C18] serial];
      v14 = [serial serviceClass:objc_msgSend(v12 relativePriority:{"serviceClass"), objc_msgSend(v12, "relativePriority")}];
      v15 = BSDispatchQueueCreate();
      v16 = *(v7 + 2);
      *(v7 + 2) = v15;

      objc_initWeak(&location, v7);
      v17 = *(v7 + 3);
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __41__BLSXPCBacklightProxy_initWithEndpoint___block_invoke;
      v26 = &unk_278428EE8;
      v18 = v12;
      v27 = v18;
      v19 = v7;
      v28 = v19;
      objc_copyWeak(&v29, &location);
      [v17 configureConnection:&v23];
      v20 = bls_backlight_log([*(v7 + 3) activate]);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v7 + 3);
        *buf = 134218498;
        v33 = v19;
        v34 = 2114;
        v35 = v22;
        v36 = 2114;
        v37 = v5;
        _os_log_debug_impl(&dword_21FE25000, v20, OS_LOG_TYPE_DEBUG, "%p did activate connection:%{public}@ for endpoint:%{public}@", buf, 0x20u);
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __41__BLSXPCBacklightProxy_initWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setServiceQuality:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 40) + 16)];
  v4 = +[BLSXPCBacklightProxySpecification interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__BLSXPCBacklightProxy_initWithEndpoint___block_invoke_2;
  v5[3] = &unk_278428908;
  objc_copyWeak(&v6, (a1 + 48));
  [v3 setInterruptionHandler:v5];
  [v3 setInvalidationHandler:&__block_literal_global_11];
  objc_destroyWeak(&v6);
}

void __41__BLSXPCBacklightProxy_initWithEndpoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(BLSXPCBacklightProxy *)WeakRetained _reactivate];
}

- (void)_reactivate
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_21FE25000, self, OS_LOG_TYPE_DEFAULT, "%p Reset BLSXPCBacklightProxy for reconnect because there are no observers.", &v4, 0xCu);
  }
}

- (void)invalidate
{
  [(BSServiceConnection *)self->_connection invalidate];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(self);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (int64_t)flipbookState
{
  os_unfair_lock_lock(&self->_lock);
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  getFlipbookState = [remoteTarget getFlipbookState];
  integerValue = [getFlipbookState integerValue];

  os_unfair_lock_unlock(&self->_lock);
  return integerValue;
}

- (BOOL)isTransitioning
{
  os_unfair_lock_lock(&self->_lock);
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  isTransitioning = [remoteTarget isTransitioning];

  os_unfair_lock_unlock(&self->_lock);
  return isTransitioning;
}

- (BOOL)deviceSupportsAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_deviceSupportsAlwaysOnCached)
  {
    lock_deviceSupportsAlwaysOn = self->_lock_deviceSupportsAlwaysOn;
  }

  else
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    lock_deviceSupportsAlwaysOn = [remoteTarget deviceSupportsAlwaysOn];

    if (!self->_lock_deviceSupportsAlwaysOnCached)
    {
      self->_lock_deviceSupportsAlwaysOn = lock_deviceSupportsAlwaysOn;
      self->_lock_deviceSupportsAlwaysOnCached = 1;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return lock_deviceSupportsAlwaysOn;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = [BLSXPCBacklightProxyObserverMask maskForObserver:observerCopy];
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_observers setObject:v5 forKey:observerCopy];

  [(BLSXPCBacklightProxy *)self lock_updateHostObservationMask:?];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)lock_updateHostObservationMask:(uint64_t)mask
{
  if (mask)
  {
    os_unfair_lock_assert_owner((mask + 32));
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, *(mask + 8));
    value = 0;
    key = 0;
    if (NSNextMapEnumeratorPair(&enumerator, &key, &value))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        if (key)
        {
          v10 = value;
          v4 = v4 + [value isObservingDidCompleteUpdateToState];
          v5 = v5 + [v10 isObservingEventsArray];
          v6 = v6 + [v10 isObservingDidChangeAlwaysOnEnabled];
          v7 = v7 + [v10 isObservingActivatingWithEvent];
          v8 = v8 + [v10 isObservingDeactivatingWithEvent];
          v9 = v9 + [v10 isObservingPerformingEvent];
        }
      }

      while (NSNextMapEnumeratorPair(&enumerator, &key, &value));
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }

    NSEndMapTableEnumeration(&enumerator);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__BLSXPCBacklightProxy_lock_updateHostObservationMask___block_invoke;
    v17[3] = &unk_278428F10;
    v17[4] = &v18;
    v11 = MEMORY[0x223D716E0](v17);
    v11[2](v11, mask + 36, v4);
    v11[2](v11, mask + 40, v5);
    v11[2](v11, mask + 44, v6);
    v11[2](v11, mask + 48, v7);
    v11[2](v11, mask + 52, v8);
    v11[2](v11, mask + 56, v9);
    if (v4 <= 0 && v5 <= 0)
    {
      *(mask + 72) = 0;
    }

    if (v6 <= 0)
    {
      *(mask + 74) = 0;
    }

    if ((v19[3] & 1) != 0 || a2)
    {
      remoteTarget = [*(mask + 24) remoteTarget];
      v13 = [BLSXPCBacklightProxyObserverMask maskForObservingDidCompleteUpdateToState:v4 > 0 observingEventsArray:v5 > 0 didChangeAlwaysOnEnabled:v6 > 0 activatingWithEvent:v7 > 0 deactivatingWithEvent:v8 > 0 performingEvent:v9 > 0];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__BLSXPCBacklightProxy_lock_updateHostObservationMask___block_invoke_2;
      v15[3] = &unk_278428CE8;
      v14 = v13;
      v16 = v14;
      [remoteTarget nowObservingWithMask:v14 completion:v15];
    }

    _Block_object_dispose(&v18, 8);
  }
}

uint64_t __55__BLSXPCBacklightProxy_lock_updateHostObservationMask___block_invoke(uint64_t result, int *a2, int a3)
{
  v3 = *a2;
  *a2 = a3;
  if ((a3 != 0) == (v3 == 0))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __55__BLSXPCBacklightProxy_lock_updateHostObservationMask___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = bls_assertions_log(v3);
    v6 = [v4 domain];
    if ([v6 isEqual:@"com.apple.BacklightServices"])
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v5, v7))
    {
      v8 = *(a1 + 32);
      v9 = [v4 bls_loggingString];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_21FE25000, v5, v7, "failed to observe with mask %{public}@ error:%{public}@", &v10, 0x16u);
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_observers removeObjectForKey:observerCopy];

  [(BLSXPCBacklightProxy *)self lock_updateHostObservationMask:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)performChangeRequest:(id)request
{
  connection = self->_connection;
  requestCopy = request;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v6 = [remoteTarget performChangeRequest:requestCopy];

  return v6;
}

- (void)didCompleteUpdateToState:(id)state forEvents:(id)events abortedEvents:(id)abortedEvents
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  eventsCopy = events;
  abortedEventsCopy = abortedEvents;
  os_unfair_lock_lock(&self->_lock);
  self->_lock_isBacklightStateCached = 1;
  v19 = stateCopy;
  integerValue = [stateCopy integerValue];
  self->_lock_backlightState = integerValue;
  lock_allDidCompleteUpdateToStateObservers = [(BLSXPCBacklightProxy *)&self->super.isa lock_allDidCompleteUpdateToStateObservers];
  os_unfair_lock_unlock(&self->_lock);
  v12 = eventsCopy;
  firstObject = [eventsCopy firstObject];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = lock_allDidCompleteUpdateToStateObservers;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 backlight:self didCompleteUpdateToState:integerValue forEvents:v12 abortedEvents:abortedEventsCopy];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v18 backlight:self didCompleteUpdateToState:integerValue forEvent:firstObject];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)didChangeAlwaysOnEnabled:(id)enabled
{
  v17 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  self->_lock_isAlwaysOnEnabledCached = 1;
  bOOLValue = [enabledCopy BOOLValue];
  self->_lock_isAlwaysOnEnabled = bOOLValue;
  lock_allDidChangeAlwaysOnEnabledObservers = [(BLSXPCBacklightProxy *)&self->super.isa lock_allDidChangeAlwaysOnEnabledObservers];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = lock_allDidChangeAlwaysOnEnabledObservers;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) backlight:self didChangeAlwaysOnEnabled:{bOOLValue, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)performingEvent:(id)event
{
  v52 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  IsActive = BLSBacklightStateIsActive([eventCopy previousState]);
  v6 = BLSBacklightStateIsActive([eventCopy state]);
  v7 = !IsActive && v6;
  v8 = IsActive && !v6;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMapTable *)self->_lock_observers count];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __40__BLSXPCBacklightProxy_performingEvent___block_invoke;
  v43[3] = &unk_278428F38;
  v13 = v12;
  v44 = v13;
  v47 = v7;
  v14 = v10;
  v45 = v14;
  v48 = v8;
  v15 = v11;
  v46 = v15;
  [(BLSXPCBacklightProxy *)self lock_enumerateObserversWithBlock:v43];
  os_unfair_lock_unlock(&self->_lock);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      v20 = 0;
      do
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v39 + 1) + 8 * v20++) backlight:self activatingWithEvent:eventCopy];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      v25 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v35 + 1) + 8 * v25++) backlight:self deactivatingWithEvent:eventCopy];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v23);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v13;
  v27 = [v26 countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v32;
    do
    {
      v30 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v31 + 1) + 8 * v30++) backlight:self performingEvent:{eventCopy, v31}];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v31 objects:v49 count:16];
    }

    while (v28);
  }
}

void __40__BLSXPCBacklightProxy_performingEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 isObservingPerformingEvent])
  {
    v6 = 32;
LABEL_3:
    [*(a1 + v6) addObject:v7];
    goto LABEL_10;
  }

  if (*(a1 + 56) == 1 && ([v5 isObservingActivatingWithEvent] & 1) != 0)
  {
    v6 = 40;
    goto LABEL_3;
  }

  if (*(a1 + 57) == 1 && [v5 isObservingDeactivatingWithEvent])
  {
    v6 = 48;
    goto LABEL_3;
  }

LABEL_10:
}

void __53__BLSXPCBacklightProxy_lock_allObserversPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)lock_allDidCompleteUpdateToStateObservers
{
  if (self)
  {
    self = [(BLSXPCBacklightProxy *)self lock_allObserversPassingTest:?];
    v1 = vars8;
  }

  return self;
}

- (void)lock_enumerateObserversWithBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, *(block + 8));
    value = 0;
    key = 0;
    while (NSNextMapEnumeratorPair(&enumerator, &key, &value))
    {
      if (key)
      {
        v3[2](v3, key, value);
      }
    }

    NSEndMapTableEnumeration(&enumerator);
  }
}

- (id)lock_allObserversPassingTest:(id *)test
{
  v3 = a2;
  if (test)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(test[1], "count")}];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __53__BLSXPCBacklightProxy_lock_allObserversPassingTest___block_invoke;
    v10 = &unk_278428F80;
    v11 = v4;
    v12 = v3;
    v5 = v4;
    [(BLSXPCBacklightProxy *)test lock_enumerateObserversWithBlock:?];
    test = [v5 copy];
  }

  return test;
}

- (void)initWithEndpoint:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end