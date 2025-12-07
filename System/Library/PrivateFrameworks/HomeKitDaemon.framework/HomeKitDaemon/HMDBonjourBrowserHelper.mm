@interface HMDBonjourBrowserHelper
- (BOOL)_startBrowsers;
- (BOOL)isStarted;
- (HMDBonjourBrowserHelper)initWithServicesOfTypes:(id)types browsingTimeInterval:(double)interval browsingPeriodicity:(double)periodicity workQueue:(id)queue;
- (unint64_t)discoveredServicesCountForServiceType:(id)type;
- (unint64_t)state;
- (void)_addBrowser:(id)browser;
- (void)_removeBrowser:(id)browser;
- (void)_stopBrowsers;
- (void)_updateTimerWithTimeout:(double)timeout;
- (void)netServiceBrowser:(id)browser didAddService:(id)service;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service;
- (void)netServiceBrowser:(id)browser didStopBrowsingWithError:(id)error;
- (void)setState:(unint64_t)state;
- (void)startWithBrowsingCompletion:(id)completion;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDBonjourBrowserHelper

- (void)netServiceBrowser:(id)browser didStopBrowsingWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  errorCopy = error;
  if (browserCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = objc_msgSend_serviceType(browserCopy);
      v13 = MEMORY[0x277CCABB0];
      v14 = objc_msgSend_serviceType(browserCopy);
      v15 = [v13 numberWithUnsignedInteger:{-[HMDBonjourBrowserHelper discoveredServicesCountForServiceType:](selfCopy, "discoveredServicesCountForServiceType:", v14)}];
      v16 = 138544130;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = errorCopy;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Stopped browsing for services of type: %@ with error: %@. Found %@ servcies.", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service
{
  browserCopy = browser;
  serviceCopy = service;
  os_unfair_lock_lock_with_options();
  type = [serviceCopy type];
  if (type)
  {
    name = [serviceCopy name];

    if (name)
    {
      internalDiscoveredServices = self->_internalDiscoveredServices;
      type2 = [serviceCopy type];
      v11 = [(NSMutableDictionary *)internalDiscoveredServices objectForKey:type2];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [MEMORY[0x277CBEB58] set];
      }

      v14 = v13;

      name2 = [serviceCopy name];
      [v14 removeObject:name2];

      v16 = self->_internalDiscoveredServices;
      type3 = [serviceCopy type];
      [(NSMutableDictionary *)v16 setObject:v14 forKey:type3];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)netServiceBrowser:(id)browser didAddService:(id)service
{
  browserCopy = browser;
  serviceCopy = service;
  os_unfair_lock_lock_with_options();
  type = [serviceCopy type];
  if (type)
  {
    name = [serviceCopy name];

    if (name)
    {
      internalDiscoveredServices = self->_internalDiscoveredServices;
      type2 = [serviceCopy type];
      v11 = [(NSMutableDictionary *)internalDiscoveredServices objectForKey:type2];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [MEMORY[0x277CBEB58] set];
      }

      v14 = v13;

      name2 = [serviceCopy name];
      [v14 addObject:name2];

      v16 = self->_internalDiscoveredServices;
      type3 = [serviceCopy type];
      [(NSMutableDictionary *)v16 setObject:v14 forKey:type3];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timer = [(HMDBonjourBrowserHelper *)self timer];

  if (timer == fireCopy)
  {
    state = [(HMDBonjourBrowserHelper *)self state];
    if (state == 2)
    {

      [(HMDBonjourBrowserHelper *)self _startBrowsers];
    }

    else if (state == 1)
    {

      [(HMDBonjourBrowserHelper *)self _stopBrowsers];
    }
  }
}

- (void)_updateTimerWithTimeout:(double)timeout
{
  workQueue = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timer = [(HMDBonjourBrowserHelper *)self timer];
  [timer cancel];

  [(HMDBonjourBrowserHelper *)self setTimer:0];
  if (timeout > 0.0)
  {
    v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:timeout];
    [v8 setDelegate:self];
    workQueue2 = [(HMDBonjourBrowserHelper *)self workQueue];
    [v8 setDelegateQueue:workQueue2];

    [v8 resume];
    [(HMDBonjourBrowserHelper *)self setTimer:v8];
  }
}

- (void)_removeBrowser:(id)browser
{
  browserCopy = browser;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_browsers removeObject:browserCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addBrowser:(id)browser
{
  browserCopy = browser;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_browsers addObject:browserCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (BOOL)isStarted
{
  os_unfair_lock_lock_with_options();
  v3 = self->_state != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)discoveredServicesCountForServiceType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock_with_options();
  v5 = self->_latestDiscoveredServices;
  if (!v5)
  {
    if (![(NSMutableDictionary *)self->_internalDiscoveredServices count])
    {
      v6 = 0;
      goto LABEL_5;
    }

    v5 = objc_msgSend_copy(self->_internalDiscoveredServices);
  }

  v6 = v5;
LABEL_5:
  v7 = [(NSDictionary *)v6 objectForKey:typeCopy];
  v8 = [v7 count];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (void)_stopBrowsers
{
  v41 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  os_unfair_lock_lock_with_options();
  if (self->_state == 1 && self->_browsingPeriodicity > 0.0)
  {
    v4 = 1;
    v5 = 2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  self->_state = v5;
  internalDiscoveredServices = self->_internalDiscoveredServices;
  if (internalDiscoveredServices)
  {
    v7 = objc_msgSend_copy(internalDiscoveredServices);
    latestDiscoveredServices = self->_latestDiscoveredServices;
    self->_latestDiscoveredServices = v7;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = self->_internalDiscoveredServices;
  self->_internalDiscoveredServices = dictionary;

  v11 = objc_msgSend_copy(self->_browsers);
  [(NSMutableArray *)self->_browsers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [(HMDBonjourBrowserHelper *)self browsingPeriodicity];
    [(HMDBonjourBrowserHelper *)self _updateTimerWithTimeout:?];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = MEMORY[0x277CCABB0];
      [(HMDBonjourBrowserHelper *)selfCopy browsingPeriodicity];
      v17 = [v16 numberWithDouble:?];
      *buf = 138543618;
      v38 = v15;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Waiting to restart browsing after: %@ seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v19)
  {
    v20 = *v32;
    do
    {
      v21 = 0;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v31 + 1) + 8 * v21++) stopBrowsing];
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v19);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  browsingCompletions = [(HMDBonjourBrowserHelper *)self browsingCompletions];
  v23 = [browsingCompletions countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v23)
  {
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(browsingCompletions);
        }

        (*(*(*(&v27 + 1) + 8 * v25++) + 16))();
      }

      while (v23 != v25);
      v23 = [browsingCompletions countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v23);
  }

  browsingCompletions2 = [(HMDBonjourBrowserHelper *)self browsingCompletions];
  [browsingCompletions2 removeAllObjects];
}

- (void)stop
{
  workQueue = [(HMDBonjourBrowserHelper *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDBonjourBrowserHelper_stop__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__31__HMDBonjourBrowserHelper_stop__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isStarted];
  if (result)
  {
    [*(a1 + 32) _stopBrowsers];
    [*(a1 + 32) setState:0];
    v3 = *(a1 + 32);

    return [v3 _updateTimerWithTimeout:0.0];
  }

  return result;
}

- (BOOL)_startBrowsers
{
  v25 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  os_unfair_lock_lock_with_options();
  if (self->_state == 1)
  {
    os_unfair_lock_unlock(&self->_lock);
    return 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  internalDiscoveredServices = self->_internalDiscoveredServices;
  self->_internalDiscoveredServices = dictionary;

  self->_state = 1;
  v6 = self->_serviceTypes;
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    return 0;
  }

  [(HMDBonjourBrowserHelper *)self browsingInterval];
  [(HMDBonjourBrowserHelper *)self _updateTimerWithTimeout:?];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    v9 = MEMORY[0x277D85DD0];
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = [objc_alloc(MEMORY[0x277D0F878]) initWithDomain:@"local." serviceType:v11];
        [v12 setDelegate:self];
        [(HMDBonjourBrowserHelper *)self _addBrowser:v12];
        objc_initWeak(&location, self);
        v16[0] = v9;
        v16[1] = 3221225472;
        v16[2] = __41__HMDBonjourBrowserHelper__startBrowsers__block_invoke;
        v16[3] = &unk_278685D08;
        objc_copyWeak(&v18, &location);
        v16[4] = v11;
        v13 = v12;
        v17 = v13;
        [v13 startBrowsingWithCompletionHandler:v16];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);

        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return 1;
}

void __41__HMDBonjourBrowserHelper__startBrowsers__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CCABB0];
    [v6 browsingInterval];
    v11 = [v10 numberWithDouble:?];
    v12 = 138544130;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting browsing for services of type: %@ with error: %@ for %@ seconds", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  if (v3)
  {
    [v6 _removeBrowser:*(a1 + 40)];
  }
}

- (void)startWithBrowsingCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDBonjourBrowserHelper *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDBonjourBrowserHelper_startWithBrowsingCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __55__HMDBonjourBrowserHelper_startWithBrowsingCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isStarted])
  {
    if (!*(a1 + 40))
    {
      return;
    }
  }

  else
  {
    v2 = [*(a1 + 32) _startBrowsers];
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }

    if (!v2)
    {
      v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(v3 + 16))(v3);
      goto LABEL_9;
    }
  }

  v5 = [*(a1 + 32) browsingCompletions];
  v4 = _Block_copy(*(a1 + 40));
  [v5 addObject:v4];

LABEL_9:
}

- (HMDBonjourBrowserHelper)initWithServicesOfTypes:(id)types browsingTimeInterval:(double)interval browsingPeriodicity:(double)periodicity workQueue:(id)queue
{
  v28 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  queueCopy = queue;
  if (interval > 0.0 && [typesCopy count])
  {
    v25.receiver = self;
    v25.super_class = HMDBonjourBrowserHelper;
    v13 = [(HMDBonjourBrowserHelper *)&v25 init];
    if (v13)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      internalDiscoveredServices = v13->_internalDiscoveredServices;
      v13->_internalDiscoveredServices = dictionary;

      v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
      browsers = v13->_browsers;
      v13->_browsers = v16;

      array = [MEMORY[0x277CBEB18] array];
      browsingCompletions = v13->_browsingCompletions;
      v13->_browsingCompletions = array;

      objc_storeStrong(&v13->_serviceTypes, types);
      v13->_browsingInterval = interval;
      v13->_browsingPeriodicity = periodicity;
      objc_storeStrong(&v13->_workQueue, queue);
      v13->_state = 0;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Browsing interval or types count must be greater than 0", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    selfCopy = 0;
  }

  return selfCopy;
}

@end