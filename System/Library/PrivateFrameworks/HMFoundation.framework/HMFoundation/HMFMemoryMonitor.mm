@interface HMFMemoryMonitor
+ (HMFMemoryMonitor)memoryMonitor;
- (HMFMemoryMonitor)init;
- (void)addObserver:(id)observer debounceInterval:(double)interval events:(id)events;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)start;
- (void)stop;
@end

@implementation HMFMemoryMonitor

+ (HMFMemoryMonitor)memoryMonitor
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_17);
  }

  v3 = qword_280AFC4D0;

  return v3;
}

uint64_t __33__HMFMemoryMonitor_memoryMonitor__block_invoke()
{
  v0 = objc_alloc_init(HMFMemoryMonitor);
  v1 = qword_280AFC4D0;
  qword_280AFC4D0 = v0;

  v2 = qword_280AFC4D0;

  return [v2 start];
}

- (HMFMemoryMonitor)init
{
  v14.receiver = self;
  v14.super_class = HMFMemoryMonitor;
  v2 = [(HMFMemoryMonitor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMFDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create(v4, v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = dispatch_source_create(MEMORY[0x277D85D18], 0, 0x37uLL, v3->_queue);
    memoryPressureSource = v3->_memoryPressureSource;
    v3->_memoryPressureSource = v9;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    memoryObservancesByObserver = v3->_memoryObservancesByObserver;
    v3->_memoryObservancesByObserver = weakToStrongObjectsMapTable;
  }

  return v3;
}

- (void)dealloc
{
  if (!self->_monitoring)
  {
    dispatch_resume(self->_memoryPressureSource);
  }

  v3.receiver = self;
  v3.super_class = HMFMemoryMonitor;
  [(HMFMemoryMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)observer debounceInterval:(double)interval events:(id)events
{
  observerCopy = observer;
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  v9 = [[HMFMemoryObservance alloc] initWithDebounceInterval:eventsCopy events:interval];
  memoryObservancesByObserver = [(HMFMemoryMonitor *)self memoryObservancesByObserver];
  [memoryObservancesByObserver setObject:v9 forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  memoryObservancesByObserver = [(HMFMemoryMonitor *)self memoryObservancesByObserver];
  [memoryObservancesByObserver removeObjectForKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)start
{
  os_unfair_lock_lock_with_options();
  if (![(HMFMemoryMonitor *)self isMonitoring])
  {
    [(HMFMemoryMonitor *)self setMonitoring:1];
    objc_initWeak(&location, self);
    memoryPressureSource = [(HMFMemoryMonitor *)self memoryPressureSource];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __25__HMFMemoryMonitor_start__block_invoke;
    v8 = &unk_2786E6CA8;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(memoryPressureSource, &v5);

    v4 = [(HMFMemoryMonitor *)self memoryPressureSource:v5];
    dispatch_resume(v4);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __25__HMFMemoryMonitor_start__block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v36 = WeakRetained;
    v2 = [WeakRetained memoryPressureSource];
    data = dispatch_source_get_data(v2);

    if (data)
    {
      v9 = 1;
    }

    else if ((data & 2) != 0)
    {
      v9 = 2;
    }

    else if ((data & 4) != 0)
    {
      v9 = 3;
    }

    else if ((data & 0x10) != 0)
    {
      v9 = 4;
    }

    else
    {
      if ((data & 0x20) == 0)
      {
        v4 = objc_autoreleasePoolPush();
        v5 = v36;
        v7 = HMFGetOSLogHandle(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = HMFGetLogIdentifier(v5);
          *buf = 138543618;
          v50 = v8;
          v51 = 2048;
          v52 = data;
          _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring unknown memory pressure source event: %lu", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v4);
LABEL_35:
        WeakRetained = v36;
        goto LABEL_36;
      }

      v9 = 5;
    }

    v39 = v9;
    v10 = objc_autoreleasePoolPush();
    v11 = v36;
    v13 = HMFGetOSLogHandle(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier(v11);
      v15 = HMFStringFromMemoryEvent(v39);
      *buf = 138543618;
      v50 = v14;
      v51 = 2112;
      v52 = v15;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@Received memory event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v37 = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock_with_options();
    v16 = [MEMORY[0x277CBEAA8] now];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = [(os_unfair_lock_s *)v11 memoryObservancesByObserver];
    v18 = [v17 countByEnumeratingWithState:&v44 objects:buf count:16];
    if (v18)
    {
      v19 = *v45;
      obj = v17;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v44 + 1) + 8 * i);
          v22 = [(os_unfair_lock_s *)v11 memoryObservancesByObserver];
          v23 = [v22 objectForKey:v21];

          v24 = [v23 lastUpdateDate];
          [v16 timeIntervalSinceDate:v24];
          v26 = v25;
          [v23 debounceInterval];
          v28 = v26 < v27;

          if (!v28)
          {
            v29 = [v23 events];
            v30 = [MEMORY[0x277CCABB0] numberWithInteger:v39];
            v31 = [v29 containsObject:v30];

            if (v31)
            {
              [v23 setLastUpdateDate:v16];
              [v37 addObject:v21];
            }
          }
        }

        v17 = obj;
        v18 = [obj countByEnumeratingWithState:&v44 objects:buf count:16];
      }

      while (v18);
    }

    os_unfair_lock_unlock(v11 + 2);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v37;
    v33 = [v32 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v33)
    {
      v34 = *v41;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(v32);
          }

          [*(*(&v40 + 1) + 8 * j) memoryMonitor:v11 didReceiveMemoryEvent:v39];
        }

        v33 = [v32 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v33);
    }

    goto LABEL_35;
  }

LABEL_36:
}

- (void)stop
{
  os_unfair_lock_lock_with_options();
  if ([(HMFMemoryMonitor *)self isMonitoring])
  {
    [(HMFMemoryMonitor *)self setMonitoring:0];
    memoryPressureSource = [(HMFMemoryMonitor *)self memoryPressureSource];
    dispatch_suspend(memoryPressureSource);
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end