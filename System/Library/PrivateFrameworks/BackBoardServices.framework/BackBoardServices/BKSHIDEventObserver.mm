@interface BKSHIDEventObserver
+ (BKSHIDEventObserver)sharedInstance;
- (BKSHIDEventObserver)init;
- (BOOL)hasReceivedLatestDeferringObservationsFromServer;
- (NSSet)deferringObservations;
- (id)_initWithConnectionFactory:(id)factory;
- (id)addDeferringObserver:(id)observer;
- (id)addObservingClient:(id)client forChainObserver:(id)observer;
- (void)_lock_disableObservation;
- (void)_lock_enableObservation;
- (void)_lock_flushInitialStateToServer;
- (void)_lock_resetChainObserverPredicates;
- (void)didUpdateDeferringChains:(id)chains;
- (void)didUpdateDeferringObservations:(id)observations;
@end

@implementation BKSHIDEventObserver

- (NSSet)deferringObservations
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMapTable *)self->_lock_deferringAssertionsToObservers count])
  {
    v3 = [(NSSet *)self->_lock_deferringObservations copy];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)hasReceivedLatestDeferringObservationsFromServer
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lock_hasReceivedLatestDeferringObservationsFromServer = self->_lock_hasReceivedLatestDeferringObservationsFromServer;
  os_unfair_lock_unlock(&self->_lock);
  return lock_hasReceivedLatestDeferringObservationsFromServer;
}

+ (BKSHIDEventObserver)sharedInstance
{
  if (sharedInstance_onceToken_4511 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4511, &__block_literal_global_4512);
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __37__BKSHIDEventObserver_sharedInstance__block_invoke()
{
  v0 = [BKSHIDEventObserver alloc];
  v3 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v1 = [(BKSHIDEventObserver *)v0 _initWithConnectionFactory:?];
  v2 = sharedInstance___instance;
  sharedInstance___instance = v1;
}

- (void)_lock_enableObservation
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_waitingOnServerHandshake)
  {
    remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    v6 = [remoteTarget setObservesDeferringResolutions:?];

    self->_lock_hasReceivedLatestDeferringObservationsFromServer = 1;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = [MEMORY[0x1E695DFD8] set];
    }

    lock_deferringObservations = self->_lock_deferringObservations;
    self->_lock_deferringObservations = v4;
  }
}

- (void)didUpdateDeferringChains:(id)chains
{
  v40 = *MEMORY[0x1E69E9840];
  chainsCopy = chains;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(NSMutableDictionary *)self->_lock_identityToChainMatches mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = chainsCopy;
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        identity = [v12 identity];
        [v5 setObject:? forKey:?];

        identity2 = [v12 identity];
        [v6 removeObjectForKey:?];
      }

      v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  v31 = v7;

  v15 = [v5 copy];
  lock_identityToChainMatches = self->_lock_identityToChainMatches;
  self->_lock_identityToChainMatches = v15;

  v17 = [(NSMutableSet *)self->_lock_chainObserverContainers copy];
  os_unfair_lock_unlock(&self->_lock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (j = 0; j != v20; j = (j + 1))
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        requestedChainIdentity = [v23 requestedChainIdentity];
        v25 = [v6 objectForKey:?];

        if (v25)
        {
          observingClient = [v23 observingClient];
          observerInterface = [v23 observerInterface];
          [observingClient observer:? deliveryChainDidUpdate:?];
        }

        v28 = [v5 objectForKey:?];
        if (v28)
        {
          observingClient2 = [v23 observingClient];
          observerInterface2 = [v23 observerInterface];
          [observingClient2 observer:? deliveryChainDidUpdate:?];
        }
      }

      v20 = [v18 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v20);
  }
}

- (void)didUpdateDeferringObservations:(id)observations
{
  observationsCopy = observations;
  if (!observationsCopy)
  {
    observationsCopy = [MEMORY[0x1E695DFD8] set];
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (BSEqualObjects())
  {
    v5 = 0;
  }

  else
  {
    v6 = [observationsCopy copy];
    lock_deferringObservations = self->_lock_deferringObservations;
    self->_lock_deferringObservations = v6;

    v8 = MEMORY[0x1E695DFA8];
    [(NSMapTable *)self->_lock_deferringAssertionsToObservers count];
    v5 = [v8 setWithCapacity:?];
    objectEnumerator = [(NSMapTable *)self->_lock_deferringAssertionsToObservers objectEnumerator];
    v10 = [objectEnumerator countByEnumeratingWithState:? objects:? count:?];
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0];
      do
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [v5 addObject:?];
        }

        v11 = [objectEnumerator countByEnumeratingWithState:? objects:? count:?];
      }

      while (v11);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:0 objects:? count:?];
  if (v15)
  {
    v16 = v15;
    v17 = MEMORY[0];
    do
    {
      for (j = 0; j != v16; j = (j + 1))
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(8 * j) deferringResolutionsChanged];
      }

      v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v16);
  }
}

- (void)_lock_disableObservation
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_waitingOnServerHandshake)
  {
    remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    v4 = [remoteTarget setObservesDeferringResolutions:?];

    lock_deferringObservations = self->_lock_deferringObservations;
    self->_lock_deferringObservations = 0;
  }
}

- (void)_lock_resetChainObserverPredicates
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSMutableSet *)self->_lock_allChainObserverPredicates removeAllObjects];
  if (!self->_lock_allChainObserverPredicates)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_allChainObserverPredicates = self->_lock_allChainObserverPredicates;
    self->_lock_allChainObserverPredicates = v3;
  }

  v5 = self->_lock_chainObserverContainers;
  v6 = [NSMutableSet countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
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
          objc_enumerationMutation(v5);
        }

        v10 = self->_lock_allChainObserverPredicates;
        requestedChainIdentity = [*(8 * i) requestedChainIdentity];
        [(NSMutableSet *)v10 addObject:?];
      }

      v7 = [NSMutableSet countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v7);
  }

  if (!self->_lock_waitingOnServerHandshake)
  {
    remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    allObjects = [(NSMutableSet *)self->_lock_allChainObserverPredicates allObjects];
    [remoteTarget setObservesDeferringChainIdentities:?];
  }
}

- (void)_lock_flushInitialStateToServer
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(NSMapTable *)self->_lock_deferringAssertionsToObservers count])
  {
    [(BKSHIDEventObserver *)self _lock_enableObservation];
  }

  if ([(NSMutableSet *)self->_lock_allChainObserverPredicates count])
  {
    remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    allObjects = [(NSMutableSet *)self->_lock_allChainObserverPredicates allObjects];
    [remoteTarget setObservesDeferringChainIdentities:?];
  }
}

- (id)addObservingClient:(id)client forChainObserver:(id)observer
{
  v48 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  observerCopy = observer;
  if (!observerCopy)
  {
    v19 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"observer", v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v37 = v23;
      v38 = 2114;
      v39 = v25;
      v40 = 2048;
      selfCopy2 = self;
      v42 = 2114;
      v43 = @"BKSHIDEventObserver.m";
      v44 = 1024;
      v45 = 237;
      v46 = 2114;
      v47 = v22;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186376270);
  }

  v9 = observerCopy;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v28 = NSStringFromClass(classForCoder);
    objc_opt_class();
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v26 stringWithFormat:@"observer", v28, v30];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138544642;
      v37 = v32;
      v38 = 2114;
      v39 = v34;
      v40 = 2048;
      selfCopy2 = self;
      v42 = 2114;
      v43 = @"BKSHIDEventObserver.m";
      v44 = 1024;
      v45 = 237;
      v46 = 2114;
      v47 = v31;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863763B0);
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = objc_alloc_init(_BKChainObserverContainer);
  [(_BKChainObserverContainer *)v10 setObservingClient:?];
  chainIdentity = [v9 chainIdentity];
  [(_BKChainObserverContainer *)v10 setRequestedChainIdentity:?];

  [(_BKChainObserverContainer *)v10 setObserverInterface:?];
  lock_chainObserverContainers = self->_lock_chainObserverContainers;
  if (!lock_chainObserverContainers)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = self->_lock_chainObserverContainers;
    self->_lock_chainObserverContainers = v13;

    lock_chainObserverContainers = self->_lock_chainObserverContainers;
  }

  [(NSMutableSet *)lock_chainObserverContainers addObject:?];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v9];
  v35 = v10;
  v16 = v10;
  v17 = [BKSSimplerAssertion assertionWithDescription:"assertionWithDescription:invalidationBlock:" invalidationBlock:?];

  [(BKSHIDEventObserver *)self _lock_resetChainObserverPredicates];
  os_unfair_lock_unlock(&self->_lock);

  return v17;
}

void __59__BKSHIDEventObserver_addObservingClient_forChainObserver___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  [*(*(a1 + 32) + 40) removeObject:?];
  [*(a1 + 32) _lock_resetChainObserverPredicates];
  v2 = (*(a1 + 32) + 12);

  os_unfair_lock_unlock(v2);
}

- (id)addDeferringObserver:(id)observer
{
  v27 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"BKSHIDEventObserver.m";
      v23 = 1024;
      v24 = 196;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186376664);
  }

  v6 = observerCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_alloc(MEMORY[0x1E698E778]);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), v6];
  v9 = [v7 initWithIdentifier:? forReason:? invalidationBlock:?];

  if (![(NSMapTable *)self->_lock_deferringAssertionsToObservers count])
  {
    [(BKSHIDEventObserver *)self _lock_enableObservation];
  }

  [NSMapTable setObject:"setObject:forKey:" forKey:?];
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

void __44__BKSHIDEventObserver_addDeferringObserver___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 12));
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v3 = [*(*(a1 + 32) + 24) objectForKey:?];

  if (v3)
  {
    [*(*(a1 + 32) + 24) removeObjectForKey:?];
    if (![*(*(a1 + 32) + 24) count])
    {
      [*(a1 + 32) _lock_disableObservation];
      v4 = [MEMORY[0x1E695DFD8] set];
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

- (id)_initWithConnectionFactory:(id)factory
{
  factoryCopy = factory;
  if (!factoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"connectionFactory" object:? file:? lineNumber:? description:?];
  }

  v23.receiver = self;
  v23.super_class = BKSHIDEventObserver;
  v5 = [(BKSHIDEventObserver *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    lock_deferringAssertionsToObservers = v6->_lock_deferringAssertionsToObservers;
    v6->_lock_deferringAssertionsToObservers = weakToWeakObjectsMapTable;

    v9 = [MEMORY[0x1E695DFD8] set];
    lock_deferringObservations = v6->_lock_deferringObservations;
    v6->_lock_deferringObservations = v9;

    objc_initWeak(&location, v6);
    v6->_isNonLaunchingServer = 0;
    v11 = [factoryCopy clientConnectionForServiceWithName:? isNonLaunching:?];
    connection = v6->_connection;
    v6->_connection = v11;

    v13 = v6->_connection;
    if (!v13)
    {
      v14 = BKLogEventDelivery();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "Unable to get a connection to the hid event observer server! No observation will be allowed!!!", buf, 2u);
      }

      v13 = v6->_connection;
    }

    v15 = v6;
    objc_copyWeak(&v20, &location);
    [(BSServiceInitiatingConnection *)v13 configure:?];
    v16 = v6->_connection;
    if (v16)
    {
      isNonLaunchingServer = v6->_isNonLaunchingServer;
    }

    else
    {
      isNonLaunchingServer = 1;
    }

    v15->_lock_waitingOnServerHandshake = isNonLaunchingServer;
    [(BSServiceInitiatingConnection *)v16 activate];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  return v6;
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v5 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v6 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v6 setServer:?];
  [v6 setClient:?];
  [v3 setInterface:?];
  [v3 setInterfaceTarget:?];
  v7 = [MEMORY[0x1E698F4D0] queueWithName:?];
  [v3 setQueue:?];
  v9[1] = MEMORY[0x1E69E9820];
  v9[2] = 3221225472;
  v9[3] = __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_2;
  v9[4] = &unk_1E6F46AF0;
  objc_copyWeak(&v10, (a1 + 40));
  [v3 setActivationHandler:?];
  v8 = MEMORY[0x1E69E9820];
  objc_copyWeak(v9, (a1 + 40));
  [v3 setInterruptionHandler:{v8, 3221225472, __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_106, &unk_1E6F46AF0}];
  [v3 setInvalidationHandler:?];
  objc_destroyWeak(v9);
  objc_destroyWeak(&v10);
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_assert_not_owner(WeakRetained + 3);
    os_unfair_lock_lock(v2 + 3);
    v3 = BKLogEventDelivery();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "BKSHIDEventObserver - connection activation", v4, 2u);
    }

    if (LOBYTE(v2[4]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v2[4]._os_unfair_lock_opaque) = 0;
      [(os_unfair_lock *)v2 _lock_flushInitialStateToServer];
    }

    os_unfair_lock_unlock(v2 + 3);
  }
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_assert_not_owner(WeakRetained + 3);
    os_unfair_lock_lock(v5 + 3);
    v6 = BKLogEventDelivery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "BKSHIDEventObserver - connection interruption", v7, 2u);
    }

    LOBYTE(v5[4]._os_unfair_lock_opaque) = v5[2]._os_unfair_lock_opaque;
    [v3 activate];
    if ((v5[4]._os_unfair_lock_opaque & 1) == 0)
    {
      [(os_unfair_lock *)v5 _lock_flushInitialStateToServer];
    }

    os_unfair_lock_unlock(v5 + 3);
  }
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_107(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogEventDelivery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "BKSHIDEventObserver invalidated - backboardd must have unloaded, exiting…", v4, 2u);
  }

  exit(0);
}

- (BKSHIDEventObserver)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventObserver.m";
    v17 = 1024;
    v18 = 85;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end