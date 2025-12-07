@interface RBProcessMonitorObserver
- (NSString)description;
- (NSString)stateCaptureTitle;
- (RBProcessMonitorObserver)initWithMonitor:(id)monitor forProcess:(id)process connection:(id)connection;
- (void)_checkForBadActorWithPendingStates:(id)states;
- (void)_lock_addAllConfiguredStatesToPending;
- (void)_lock_addConfigurationStatesToPending:(id)pending;
- (void)_lock_clearPendingNonterminalStates;
- (void)_lock_rebuildConfiguration;
- (void)_lock_sendPendingStateUpdates;
- (void)addConfiguration:(id)configuration;
- (void)dealloc;
- (void)didObserveProcessExit:(id)exit;
- (void)didResolvePreventLaunchPredicates:(id)predicates;
- (void)invalidate;
- (void)processMonitor:(id)monitor didChangeProcessStates:(id)states;
- (void)removeConfigurationWithIdentifier:(unint64_t)identifier;
@end

@implementation RBProcessMonitorObserver

- (void)_lock_sendPendingStateUpdates
{
  [*self count];
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_19();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __57__RBProcessMonitorObserver__lock_sendPendingStateUpdates__block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  os_unfair_lock_lock((*(a1 + 40) + 40));
  v2 = *(a1 + 40);
  if (v2[98] == 1)
  {
    [v2 _lock_addAllConfiguredStatesToPending];
    *(*(a1 + 40) + 98) = 0;
    v2 = *(a1 + 40);
  }

  v2[96] = 0;
  [*(a1 + 40) _lock_sendPendingStateUpdates];
  os_unfair_lock_unlock((*(a1 + 40) + 40));
}

- (void)_lock_clearPendingNonterminalStates
{
  os_unfair_lock_assert_owner(&self->_lock);
  pendingProcessState = self->_pendingProcessState;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__RBProcessMonitorObserver__lock_clearPendingNonterminalStates__block_invoke;
  v4[3] = &unk_279B33E38;
  v4[4] = self;
  [(RBProcessMap *)pendingProcessState enumerateWithBlock:v4];
}

- (void)_lock_rebuildConfiguration
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  self->_qos = 9;
  objc_storeWeak(&self->_lastMatchedHandle, 0);
  stateDescriptor = self->_stateDescriptor;
  self->_stateDescriptor = 0;

  v4 = [MEMORY[0x277CBEB58] set];
  allValues = [(NSMutableDictionary *)self->_configurations allValues];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        qos = self->_qos;
        serviceClass = [v11 serviceClass];
        if (qos <= serviceClass)
        {
          v14 = serviceClass;
        }

        else
        {
          v14 = qos;
        }

        self->_qos = v14;
        stateDescriptor = [v11 stateDescriptor];
        v16 = stateDescriptor;
        if (stateDescriptor)
        {
          endowmentNamespaces = [stateDescriptor endowmentNamespaces];
          [v4 addObjectsFromArray:endowmentNamespaces];

          v8 |= [v16 values];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v18 = objc_alloc_init(MEMORY[0x277D46FB0]);
  v19 = self->_stateDescriptor;
  self->_stateDescriptor = v18;

  v20 = self->_stateDescriptor;
  allObjects = [v4 allObjects];
  [(RBSProcessStateDescriptor *)v20 setEndowmentNamespaces:allObjects];

  [(RBSProcessStateDescriptor *)self->_stateDescriptor setValues:v8];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_configurations count])
  {
    [(RBProcessMonitoring *)self->_monitor removeObserver:self];
  }

  [(NSMutableDictionary *)self->_configurations removeAllObjects];
  [(RBProcessMap *)self->_pendingProcessState removeAllObjects];
  objc_storeWeak(&self->_lastMatchedHandle, 0);
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[RBProcessMonitorObserver dealloc]"];
  [currentHandler handleFailureInFunction:v0 file:@"RBProcessMonitorObserver.m" lineNumber:115 description:@"must be invalidated before releasing"];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  stateDescriptor = self->_stateDescriptor;
  qos = self->_qos;
  v7 = [(NSMutableDictionary *)self->_configurations entriesToStringWithIndent:2 debug:1];
  v8 = [v3 initWithFormat:@"<%@| qos:%u qos:%@ configs:{\n%@\t}>", v4, qos, stateDescriptor, v7];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)_lock_addAllConfiguredStatesToPending
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  allValues = [(NSMutableDictionary *)self->_configurations allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [(RBProcessMonitorObserver *)self _lock_addConfigurationStatesToPending:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __63__RBProcessMonitorObserver__lock_clearPendingNonterminalStates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isRunning])
  {
    [*(*(a1 + 32) + 48) removeIdentity:v5];
  }
}

- (RBProcessMonitorObserver)initWithMonitor:(id)monitor forProcess:(id)process connection:(id)connection
{
  monitorCopy = monitor;
  processCopy = process;
  connectionCopy = connection;
  if (monitorCopy)
  {
    if (processCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [RBProcessMonitorObserver initWithMonitor:forProcess:connection:];
    if (connectionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [RBProcessMonitorObserver initWithMonitor:forProcess:connection:];
  if (!processCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (connectionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [RBProcessMonitorObserver initWithMonitor:forProcess:connection:];
LABEL_4:
  v26.receiver = self;
  v26.super_class = RBProcessMonitorObserver;
  v12 = [(RBProcessMonitorObserver *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_monitor, monitor);
    objc_storeStrong(&v13->_process, process);
    objc_storeStrong(&v13->_connection, connection);
    v13->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    configurations = v13->_configurations;
    v13->_configurations = dictionary;

    v16 = objc_alloc_init(RBProcessMap);
    pendingProcessState = v13->_pendingProcessState;
    v13->_pendingProcessState = v16;

    array = [MEMORY[0x277CBEB18] array];
    pendingExitEvents = v13->_pendingExitEvents;
    v13->_pendingExitEvents = array;

    v20 = MEMORY[0x277D47028];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBProcessMonitorObserver:%@", v13->_process];
    v22 = [v20 createBackgroundQueue:v21];
    calloutQueue = v13->_calloutQueue;
    v13->_calloutQueue = v22;

    RBSMachAbsoluteTime();
    v13->_lastSend = v24;
  }

  return v13;
}

- (void)_lock_addConfigurationStatesToPending:(id)pending
{
  v37 = *MEMORY[0x277D85DE8];
  pendingCopy = pending;
  os_unfair_lock_assert_owner(&self->_lock);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__6;
  v28 = __Block_byref_object_dispose__6;
  v29 = 0;
  monitorSerializationQueue = [(RBProcessMonitoring *)self->_monitor monitorSerializationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RBProcessMonitorObserver__lock_addConfigurationStatesToPending___block_invoke;
  block[3] = &unk_279B33DE8;
  v22 = &v30;
  block[4] = self;
  v6 = pendingCopy;
  v21 = v6;
  v23 = &v24;
  dispatch_sync(monitorSerializationQueue, block);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v31[5];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v36 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        pendingProcessState = self->_pendingProcessState;
        process = [v11 process];
        identity = [process identity];
        v15 = [(RBProcessMap *)pendingProcessState setValue:v11 forIdentity:identity];
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v36 count:16];
    }

    while (v8);
  }

  if (([v6 events] & 2) != 0)
  {
    objc_storeStrong(&self->_pendingPreventLaunchPredicates, v25[5]);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

uint64_t __66__RBProcessMonitorObserver__lock_addConfigurationStatesToPending___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) statesMatchingConfiguration:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[7] + 8) + 40) = [*(a1[4] + 8) preventLaunchPredicates];

  return MEMORY[0x2821F96F8]();
}

- (void)addConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableDictionary *)self->_configurations count])
  {
    [(RBProcessMonitoring *)self->_monitor addObserver:self];
  }

  configurations = self->_configurations;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(configurationCopy, "identifier")}];
  v7 = [(NSMutableDictionary *)configurations objectForKey:v6];

  v8 = rbs_monitor_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v13 = 138543362;
      v14 = configurationCopy;
      v10 = "monitor changed to %{public}@";
LABEL_8:
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, v10, &v13, 0xCu);
    }
  }

  else if (v9)
  {
    v13 = 138543362;
    v14 = configurationCopy;
    v10 = "monitor established %{public}@";
    goto LABEL_8;
  }

  [(RBProcessMonitorObserver *)self _lock_addConfigurationStatesToPending:configurationCopy];
  v11 = self->_configurations;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(configurationCopy, "identifier")}];
  [(NSMutableDictionary *)v11 setObject:configurationCopy forKey:v12];

  [(RBProcessMonitorObserver *)self _lock_rebuildConfiguration];
  [(RBProcessMonitorObserver *)self _lock_sendPendingStateUpdates];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeConfigurationWithIdentifier:(unint64_t)identifier
{
  os_unfair_lock_lock(&self->_lock);
  configurations = self->_configurations;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v7 = [(NSMutableDictionary *)configurations objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_configurations;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    [(RBProcessMonitorObserver *)self _lock_rebuildConfiguration];
    if (![(NSMutableDictionary *)self->_configurations count])
    {
      [(RBProcessMonitoring *)self->_monitor removeObserver:self];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)processMonitor:(id)monitor didChangeProcessStates:(id)states
{
  statesCopy = states;
  v4 = statesCopy;
  RBSDispatchAsyncWithQoS();
}

void __66__RBProcessMonitorObserver_processMonitor_didChangeProcessStates___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  if ([*(*(a1 + 32) + 72) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(a1 + 40);
    v2 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v2)
    {
      v4 = v2;
      v5 = *v35;
      *&v3 = 134218498;
      v26 = v3;
      v27 = *v35;
      do
      {
        v6 = 0;
        v28 = v4;
        do
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v34 + 1) + 8 * v6);
          v8 = [v7 process];
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
          v10 = [WeakRetained isEqual:v8];

          if (v10)
          {
            v11 = *(*(a1 + 32) + 48);
            v12 = [v8 identity];
            v13 = [v11 setValue:v7 forIdentity:v12];
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v12 = [*(*(a1 + 32) + 72) allValues];
            v14 = [v12 countByEnumeratingWithState:&v30 objects:v44 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v31;
              while (2)
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v31 != v16)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v18 = *(*(&v30 + 1) + 8 * i);
                  v19 = [v18 stateDescriptor];

                  if (v19 && [v18 matchesProcess:v8])
                  {
                    v20 = rbs_monitor_log();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                    {
                      v24 = [v8 identity];
                      v25 = *(*(a1 + 32) + 16);
                      *buf = v26;
                      v39 = v7;
                      v40 = 2114;
                      v41 = v24;
                      v42 = 2114;
                      v43 = v25;
                      _os_log_debug_impl(&dword_262485000, v20, OS_LOG_TYPE_DEBUG, "Sending state %p for %{public}@ to %{public}@", buf, 0x20u);
                    }

                    v21 = *(*(a1 + 32) + 48);
                    v22 = [v8 identity];
                    v23 = [v21 setValue:v7 forIdentity:v22];

                    objc_storeWeak((*(a1 + 32) + 88), v8);
                    goto LABEL_22;
                  }
                }

                v15 = [v12 countByEnumeratingWithState:&v30 objects:v44 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }

LABEL_22:
              v5 = v27;
              v4 = v28;
            }
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v4);
    }

    [*(a1 + 32) _lock_sendPendingStateUpdates];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 40));
}

- (void)didObserveProcessExit:(id)exit
{
  exitCopy = exit;
  v3 = exitCopy;
  RBSDispatchAsyncWithQoS();
}

void __50__RBProcessMonitorObserver_didObserveProcessExit___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 40));
  if ([*&(*v2)[18]._os_unfair_lock_opaque count])
  {
    v3 = [*(a1 + 40) handle];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [*(*(a1 + 32) + 72) allValues];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 events] && objc_msgSend(v9, "matchesProcess:", v3))
          {
            v10 = rbs_monitor_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              __50__RBProcessMonitorObserver_didObserveProcessExit___block_invoke_cold_1(v3);
            }

            v11 = objc_alloc_init(MEMORY[0x277D46F30]);
            [v11 setProcess:v3];
            v12 = [*(a1 + 40) lastExitContext];
            [v11 setContext:v12];

            [*(*(a1 + 32) + 56) addObject:v11];
            [*(a1 + 32) _lock_sendPendingStateUpdates];

            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  os_unfair_lock_unlock(*v2 + 10);
}

- (void)didResolvePreventLaunchPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v3 = predicatesCopy;
  RBSDispatchAsyncWithQoS();
}

void __62__RBProcessMonitorObserver_didResolvePreventLaunchPredicates___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 40));
  if ([*(*v2 + 9) count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [*(*v2 + 9) allValues];
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v14 + 1) + 8 * i) events])
          {
            v8 = rbs_monitor_log();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              __62__RBProcessMonitorObserver_didResolvePreventLaunchPredicates___block_invoke_cold_1(v2, v8);
            }

            v9 = *(a1 + 40);
            if (v9)
            {
              v10 = *v2;
              v11 = v9;
              v12 = v10[8];
              v10[8] = v11;
            }

            else
            {
              v13 = [MEMORY[0x277CBEB98] set];
              v12 = *(*v2 + 8);
              *(*v2 + 8) = v13;
            }

            [*v2 _lock_sendPendingStateUpdates];
            goto LABEL_17;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  os_unfair_lock_unlock(*v2 + 10);
}

- (NSString)stateCaptureTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(RBProcess *)self->_process description];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

- (void)_checkForBadActorWithPendingStates:(id)states
{
  v70 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x277CCA940]);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__6;
  v50 = __Block_byref_object_dispose__6;
  v51 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__6;
  v44[4] = __Block_byref_object_dispose__6;
  v45 = &stru_287507640;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __63__RBProcessMonitorObserver__checkForBadActorWithPendingStates___block_invoke;
  v39[3] = &unk_279B33E10;
  v6 = v5;
  v40 = v6;
  v41 = &v52;
  v42 = &v46;
  v43 = v44;
  [statesCopy enumerateWithBlock:v39];
  v7 = rbs_monitor_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v53[3];
    v9 = v47[5];
    *buf = 134218242;
    v57 = v8;
    v58 = 2114;
    v59 = v9;
    _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "checkForBadActor: %lu instances of '%{public}@' have been terminated since last update read", buf, 0x16u);
  }

  RBSMachAbsoluteTime();
  v11 = v10;
  lastSend = self->_lastSend;
  v13 = [(RBProcessMap *)self->_pendingProcessState count];
  if (_RBMaxPendingProcessStates_onceToken != -1)
  {
    [RBProcessMonitorObserver _checkForBadActorWithPendingStates:];
  }

  v14 = RBTargetExtensionPointRestriction;
  if (v13 <= _RBMaxPendingProcessStates_maxPendingProcessStates || (v15 = v11 - lastSend, v15 <= 2.0))
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v16 = llround(v15);
    if (v16 >= 0x7FFFFF)
    {
      v17 = 0x7FFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    v18 = v53[3];
    v19 = rbs_process_log();
    v20 = v18 & 0x1FF | (v17 << 9) | 0xB10CCA1100000000;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      process = self->_process;
      v36 = [(RBProcessMap *)self->_pendingProcessState count];
      if (_RBMaxPendingProcessStates_onceToken != -1)
      {
        [RBProcessMonitorObserver _checkForBadActorWithPendingStates:];
      }

      v37 = v53[3];
      v38 = v47[5];
      *buf = 138544898;
      v57 = process;
      v58 = 2048;
      v59 = v36;
      v60 = 1024;
      v61 = _RBMaxPendingProcessStates_maxPendingProcessStates;
      v62 = 2048;
      v63 = v15;
      v64 = 2048;
      v65 = v37;
      v66 = 2114;
      v67 = v38;
      v68 = 2048;
      v69 = v20;
      _os_log_error_impl(&dword_262485000, v19, OS_LOG_TYPE_ERROR, "%{public}@ is over the maximum number of pending updates:%lu vs. %u.\nLast unread update sent %f seconds ago.\n%lu of those updates were for terminated '%{public}@' processes.\nExceptionCode %llx", buf, 0x44u);
    }

    v21 = objc_alloc(MEMORY[0x277D47010]);
    v22 = MEMORY[0x277CCACA8];
    v23 = self->_process;
    v24 = [(RBProcessMap *)self->_pendingProcessState count];
    if (_RBMaxPendingProcessStates_onceToken != -1)
    {
      [RBProcessMonitorObserver _checkForBadActorWithPendingStates:];
    }

    v25 = [v22 stringWithFormat:@"%@ is over the maximum number of pending updates:%lu vs. %u. Last unread update sent %f seconds ago. %lu of those updates were for terminated '%@' processes.", v23, v24, _RBMaxPendingProcessStates_maxPendingProcessStates, *&v15, v53[3], v47[5]];
    v26 = [v21 initWithExplanation:v25];

    [v26 setExceptionCode:v20];
    [v26 setExceptionDomain:15];
    [v26 setMaximumTerminationResistance:50];
    [v26 setReportType:1];
    identity = [(RBProcess *)self->_process identity];
    v28 = rbs_sp_telemetry_log();
    if (os_signpost_enabled(v28))
    {
      embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
      v30 = embeddedApplicationIdentifier;
      if (embeddedApplicationIdentifier)
      {
        v31 = 0;
        consistentLaunchdJobLabel = embeddedApplicationIdentifier;
      }

      else
      {
        xpcServiceIdentifier = [identity xpcServiceIdentifier];
        v14 = xpcServiceIdentifier;
        if (xpcServiceIdentifier)
        {
          v31 = 0;
          consistentLaunchdJobLabel = xpcServiceIdentifier;
        }

        else
        {
          consistentLaunchdJobLabel = [identity consistentLaunchdJobLabel];
          v14 = 0;
          v31 = 1;
        }
      }

      *buf = 138543362;
      v57 = consistentLaunchdJobLabel;
      _os_signpost_emit_with_name_impl(&dword_262485000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RBProcessStatesMaxCountReached_ProcessTerminated", "BundleIdOverride=%{public, signpost.description:attribute}@ enableTelemetry=YES ", buf, 0xCu);
      if (v31)
      {
      }

      if (!v30)
      {
      }
    }

    v34 = self->_process;
    os_unfair_lock_unlock(&self->_lock);
    [(RBProcess *)v34 terminateWithContext:v26];
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
}

void __63__RBProcessMonitorObserver__checkForBadActorWithPendingStates___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 isEmbeddedApplication])
  {
    v4 = [v8 embeddedApplicationIdentifier];
  }

  else if ([v8 isXPCService])
  {
    v4 = [v8 xpcServiceIdentifier];
  }

  else
  {
    if (![v8 hasConsistentLaunchdJob])
    {
      v5 = 0;
      goto LABEL_11;
    }

    v4 = [v8 consistentLaunchdJobLabel];
  }

  v5 = v4;
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
    v6 = [*(a1 + 32) countForObject:v5];
    v7 = *(*(a1 + 40) + 8);
    if (v6 > *(v7 + 24))
    {
      *(v7 + 24) = v6;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    }
  }

LABEL_11:
}

void __57__RBProcessMonitorObserver__lock_sendPendingStateUpdates__block_invoke_108(uint64_t a1)
{
  v2 = rbs_monitor_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__RBProcessMonitorObserver__lock_sendPendingStateUpdates__block_invoke_108_cold_1();
  }

  v3 = *(a1 + 32);
  os_unfair_lock_lock((*(a1 + 40) + 40));
  v4 = *(a1 + 40);
  if (v4[98] == 1)
  {
    [v4 _lock_addAllConfiguredStatesToPending];
    *(*(a1 + 40) + 98) = 0;
    v4 = *(a1 + 40);
  }

  v4[97] = 0;
  [*(a1 + 40) _lock_sendPendingStateUpdates];
  os_unfair_lock_unlock((*(a1 + 40) + 40));
}

void __57__RBProcessMonitorObserver__lock_sendPendingStateUpdates__block_invoke_111(uint64_t a1)
{
  v2 = rbs_monitor_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__RBProcessMonitorObserver__lock_sendPendingStateUpdates__block_invoke_108_cold_1();
  }

  v3 = *(a1 + 32);
  os_unfair_lock_lock((*(a1 + 40) + 40));
  v4 = *(a1 + 40);
  if (v4[98] == 1)
  {
    [v4 _lock_addAllConfiguredStatesToPending];
    *(*(a1 + 40) + 98) = 0;
    v4 = *(a1 + 40);
  }

  v4[97] = 0;
  [*(a1 + 40) _lock_sendPendingStateUpdates];
  os_unfair_lock_unlock((*(a1 + 40) + 40));
}

- (void)initWithMonitor:forProcess:connection:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"RBProcessMonitorObserver.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"monitor != nil"}];
}

- (void)initWithMonitor:forProcess:connection:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"RBProcessMonitorObserver.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"process != nil"}];
}

- (void)initWithMonitor:forProcess:connection:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"RBProcessMonitorObserver.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];
}

void __50__RBProcessMonitorObserver_didObserveProcessExit___block_invoke_cold_1(void *a1)
{
  v6 = [a1 identity];
  OUTLINED_FUNCTION_1_19();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __62__RBProcessMonitorObserver_didResolvePreventLaunchPredicates___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 16);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_262485000, a2, OS_LOG_TYPE_DEBUG, "Sending prevent launch update to %{public}@", &v3, 0xCu);
}

void __57__RBProcessMonitorObserver__lock_sendPendingStateUpdates__block_invoke_108_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  [*(v0 + 32) count];
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_19();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

@end