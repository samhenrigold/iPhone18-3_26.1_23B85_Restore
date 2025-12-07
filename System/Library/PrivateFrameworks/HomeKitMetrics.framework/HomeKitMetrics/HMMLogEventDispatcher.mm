@interface HMMLogEventDispatcher
+ (id)logCategory;
- (HMMLogEventDispatcher)init;
- (HMMLogEventDispatchingDataSource)dataSource;
- (id)_getOrCreateObserversForEventClass:(Class)class;
- (void)_checkPendingLogEventBuffer;
- (void)addObserver:(id)observer forEventClass:(Class)class;
- (void)addObserver:(id)observer forEventClasses:(id)classes;
- (void)addObserver:(id)observer forProtocol:(id)protocol;
- (void)handleMemoryEvent:(int64_t)event;
- (void)processAndSubmitLogEvents;
- (void)removeObserver:(id)observer;
- (void)submitLogEvent:(id)event;
- (void)submitLogEvent:(id)event error:(id)error;
@end

@implementation HMMLogEventDispatcher

- (HMMLogEventDispatchingDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7, &__block_literal_global_521);
  }

  v3 = logCategory__hmf_once_v8;

  return v3;
}

- (void)_checkPendingLogEventBuffer
{
  v12 = *MEMORY[0x277D85DE8];
  if (__ROR8__(0x1CAC083126E978D5 * [(NSMutableArray *)self->_pendingLogEvents count], 3) <= 0x4189374BC6A7EFuLL)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [(NSMutableArray *)self->_pendingLogEvents count];
      v8 = 138543618;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_22B074000, v5, OS_LOG_TYPE_ERROR, "%{public}@Excessive pending log events: %ld", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)processAndSubmitLogEvents
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pendingLogEvents copy];
  [(NSMutableArray *)self->_pendingLogEvents removeAllObjects];
  self->_isProcessingPending = 0;
  os_unfair_lock_unlock(&self->_lock);
  if ([v3 count] > 0x13)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if ([v3 count] <= 0x3E7)
    {
      v7 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v6, v7))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = [v3 count];
      _os_log_impl(&dword_22B074000, v6, v7, "%{public}@Processing %ld log events", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMMLogEventDispatcher_processAndSubmitLogEvents__block_invoke;
  v9[3] = &unk_2786F8F90;
  v9[4] = self;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

void __50__HMMLogEventDispatcher_processAndSubmitLogEvents__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 prepareForObservation];
  v4 = [*(a1 + 32) _getOrCreateObserversForEventClass:objc_opt_class()];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 allObjects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) observeEvent:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)handleMemoryEvent:(int64_t)event
{
  if (event == 5)
  {
    os_unfair_lock_lock_with_options();
    [(HMMLogEventDispatcher *)self _checkPendingLogEventBuffer];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)submitLogEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  [eventCopy markEndTime];
  dataSource = [(HMMLogEventDispatcher *)self dataSource];
  v6 = dataSource;
  if (!dataSource || [dataSource isSubmissionEnabled])
  {
    confirmSubmission = [eventCopy confirmSubmission];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (confirmSubmission)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = objc_opt_class();
        _os_log_impl(&dword_22B074000, v11, OS_LOG_TYPE_INFO, "%{public}@Submitting event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      os_unfair_lock_lock_with_options();
      [(NSMutableArray *)selfCopy->_pendingLogEvents addObject:eventCopy];
      [(HMMLogEventDispatcher *)selfCopy _checkPendingLogEventBuffer];
      if (selfCopy->_isProcessingPending)
      {
        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      else
      {
        selfCopy->_isProcessingPending = 1;
        os_unfair_lock_unlock(&selfCopy->_lock);
        clientQueue = [(HMMLogEventDispatcher *)selfCopy clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__HMMLogEventDispatcher_submitLogEvent___block_invoke;
        block[3] = &unk_2786F8F68;
        block[4] = selfCopy;
        v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
        dispatch_async(clientQueue, v15);
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = objc_opt_class();
        _os_log_impl(&dword_22B074000, v11, OS_LOG_TYPE_ERROR, "%{public}@Event %@ was already submitted", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }
}

- (void)submitLogEvent:(id)event error:(id)error
{
  eventCopy = event;
  [eventCopy setError:error];
  [(HMMLogEventDispatcher *)self submitLogEvent:eventCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  clientQueue = [(HMMLogEventDispatcher *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HMMLogEventDispatcher_removeObserver___block_invoke;
  v7[3] = &unk_2786F9038;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(clientQueue, v7);
}

void __40__HMMLogEventDispatcher_removeObserver___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [*(*(a1 + 32) + 32) keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 32) objectForKey:v8];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(a1 + 32) + 32) removeObjectForKey:*(*(&v25 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = [*(*(a1 + 32) + 24) objectEnumerator];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * k) removeObject:*(a1 + 40)];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)addObserver:(id)observer forProtocol:(id)protocol
{
  observerCopy = observer;
  protocolCopy = protocol;
  clientQueue = [(HMMLogEventDispatcher *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMMLogEventDispatcher_addObserver_forProtocol___block_invoke;
  block[3] = &unk_2786F9060;
  block[4] = self;
  v12 = observerCopy;
  v13 = protocolCopy;
  v9 = protocolCopy;
  v10 = observerCopy;
  dispatch_sync(clientQueue, block);
}

void __49__HMMLogEventDispatcher_addObserver_forProtocol___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1[4] + 32) setObject:a1[5] forKey:a1[6]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1[4] + 24) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 conformsToProtocol:a1[6]])
        {
          v8 = [*(a1[4] + 24) objectForKey:v7];
          [v8 addObject:a1[5]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)_getOrCreateObserversForEventClass:(Class)class
{
  v20 = *MEMORY[0x277D85DE8];
  weakObjectsHashTable = [(NSMapTable *)self->_observersByClass objectForKey:?];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMapTable *)self->_observersByClass setObject:weakObjectsHashTable forKey:class];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    keyEnumerator = [(NSMapTable *)self->_observersByProtocol keyEnumerator];
    v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([(objc_class *)class conformsToProtocol:v11])
          {
            v12 = [(NSMapTable *)self->_observersByProtocol objectForKey:v11];
            [weakObjectsHashTable addObject:v12];
          }
        }

        v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v13 = weakObjectsHashTable;

  return v13;
}

- (void)addObserver:(id)observer forEventClasses:(id)classes
{
  observerCopy = observer;
  classesCopy = classes;
  clientQueue = [(HMMLogEventDispatcher *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMMLogEventDispatcher_addObserver_forEventClasses___block_invoke;
  block[3] = &unk_2786F9060;
  v12 = classesCopy;
  selfCopy = self;
  v14 = observerCopy;
  v9 = observerCopy;
  v10 = classesCopy;
  dispatch_sync(clientQueue, block);
}

void __53__HMMLogEventDispatcher_addObserver_forEventClasses___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _getOrCreateObserversForEventClass:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 addObject:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)addObserver:(id)observer forEventClass:(Class)class
{
  v9 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v5 = MEMORY[0x277CBEA60];
  observerCopy = observer;
  v7 = [v5 arrayWithObjects:&classCopy count:1];
  [(HMMLogEventDispatcher *)self addObserver:observerCopy forEventClasses:v7, classCopy, v9];
}

- (HMMLogEventDispatcher)init
{
  v15.receiver = self;
  v15.super_class = HMMLogEventDispatcher;
  v2 = [(HMMLogEventDispatcher *)&v15 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    observersByClass = v2->_observersByClass;
    v2->_observersByClass = strongToStrongObjectsMapTable;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    observersByProtocol = v2->_observersByProtocol;
    v2->_observersByProtocol = strongToWeakObjectsMapTable;

    array = [MEMORY[0x277CBEB18] array];
    pendingLogEvents = v2->_pendingLogEvents;
    v2->_pendingLogEvents = array;

    v9 = HMMDispatchQueueName(v2, @"LogEventQueue");
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create(v9, v11);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v12;
  }

  return v2;
}

uint64_t __36__HMMLogEventDispatcher_logCategory__block_invoke()
{
  logCategory__hmf_once_v8 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end