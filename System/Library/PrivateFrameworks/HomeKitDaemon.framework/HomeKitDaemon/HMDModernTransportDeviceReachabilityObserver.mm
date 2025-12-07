@interface HMDModernTransportDeviceReachabilityObserver
+ (id)logCategory;
- (HMDModernTransportDeviceReachabilityObserver)init;
- (HMDModernTransportDeviceReachabilityObserver)initWithTimerProvider:(id)provider dateProvider:(id)dateProvider;
- (id)isDeviceAddressReachable:(id)reachable;
- (void)_clearUnreachablePendingForContext:(id)context;
- (void)_evaluateDebounceTimer;
- (void)_notifyListeners:(id)listeners address:(id)address isReachable:(BOOL)reachable;
- (void)_serviceExpiredUnreachableDevices;
- (void)_setUnreachablePendingForContext:(id)context;
- (void)addListener:(id)listener forDeviceAddress:(id)address;
- (void)removeListener:(id)listener forDeviceAddress:(id)address;
- (void)setDebounceTimer:(uint64_t)timer;
- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable;
@end

@implementation HMDModernTransportDeviceReachabilityObserver

- (void)_serviceExpiredUnreachableDevices
{
  v36 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock_with_options();
  [(HMDModernTransportDeviceReachabilityObserver *)self setDebounceTimer:?];
  if (self)
  {
    devicesWithPendingUnreachability = self->_devicesWithPendingUnreachability;
  }

  else
  {
    devicesWithPendingUnreachability = 0;
  }

  v5 = devicesWithPendingUnreachability;
  firstObject = [(NSMutableArray *)v5 firstObject];

  if (self)
  {
    dateProvider = self->_dateProvider;
  }

  else
  {
    dateProvider = 0;
  }

  v8 = dateProvider;
  [(HMFDateProvider *)v8 timeIntervalSince1970];
  v10 = v9;

  if (firstObject)
  {
    v11 = MEMORY[0x277CBEC28];
    do
    {
      [firstObject unreachableStartTime];
      if (v12 + 20.0 - v10 > 0.01)
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        address = [firstObject address];
        *buf = 138543618;
        v33 = v16;
        v34 = 2112;
        v35 = address;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Unreachable Debounce timer did fire for device address %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if (self)
      {
        v18 = selfCopy->_devicesWithPendingUnreachability;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [(NSMutableArray *)v19 removeObjectAtIndex:0];

      [firstObject setReachability:v11];
      if (self)
      {
        deviceToListenersMap = selfCopy->_deviceToListenersMap;
      }

      else
      {
        deviceToListenersMap = 0;
      }

      v21 = deviceToListenersMap;
      address2 = [firstObject address];
      idsIdentifier = [address2 idsIdentifier];
      v24 = [(NSMapTable *)v21 objectForKey:idsIdentifier];

      if (v24)
      {
        listeners = [firstObject listeners];
        allObjects = [listeners allObjects];
        address3 = [firstObject address];
        [dictionary setObject:allObjects forKey:address3];
      }

      v28 = self ? selfCopy->_devicesWithPendingUnreachability : 0;
      v29 = v28;
      firstObject2 = [(NSMutableArray *)v29 firstObject];

      firstObject = firstObject2;
    }

    while (firstObject2);
  }

  [(HMDModernTransportDeviceReachabilityObserver *)self _evaluateDebounceTimer];

  os_unfair_lock_unlock(&self->_lock);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __81__HMDModernTransportDeviceReachabilityObserver__serviceExpiredUnreachableDevices__block_invoke;
  v31[3] = &unk_27866EE28;
  v31[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v31];
}

- (void)setDebounceTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 48), a2);
  }
}

- (void)_notifyListeners:(id)listeners address:(id)address isReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v33 = *MEMORY[0x277D85DE8];
  listenersCopy = listeners;
  addressCopy = address;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (addressCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = @"unreachable";
      *buf = 138543874;
      v28 = v14;
      v29 = 2112;
      if (reachableCopy)
      {
        v15 = @"reachable";
      }

      v30 = v15;
      v31 = 2112;
      v32 = addressCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying listeners that device address is %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = listenersCopy;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v22 + 1) + 8 * v20++) modernTransportDeviceReachabilityObserverDidUpdate:addressCopy isReachable:{reachableCopy, v22}];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v21;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot notify listeners for reachability change with nil address", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v27 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  identifierCopy = identifier;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = @"unreachable";
    *v24 = 138543874;
    *&v24[4] = v13;
    *&v24[12] = 2112;
    if (reachableCopy)
    {
      v14 = @"reachable";
    }

    *&v24[14] = v14;
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Device with idsIdentifier reporting %@: %@ ", v24, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    deviceToListenersMap = selfCopy->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v16 = deviceToListenersMap;
  v17 = [(NSMapTable *)v16 objectForKey:identifierCopy];

  if (!v17)
  {
    goto LABEL_13;
  }

  if (!reachableCopy)
  {
    [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _setUnreachablePendingForContext:v17];
LABEL_13:

    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_14;
  }

  [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _clearUnreachablePendingForContext:v17];
  reachability = [v17 reachability];
  if (reachability)
  {
    reachability2 = [v17 reachability];
    bOOLValue = [reachability2 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_13;
    }
  }

  [v17 setReachability:{MEMORY[0x277CBEC38], *v24, *&v24[8]}];
  address = [v17 address];
  listeners = [v17 listeners];
  allObjects = [listeners allObjects];

  os_unfair_lock_unlock(&selfCopy->_lock);
  [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _notifyListeners:allObjects address:address isReachable:1];

LABEL_14:
}

- (void)_clearUnreachablePendingForContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  [contextCopy setUnreachableStartTime:0.0];
  if (self)
  {
    devicesWithPendingUnreachability = self->_devicesWithPendingUnreachability;
  }

  else
  {
    devicesWithPendingUnreachability = 0;
  }

  [(NSMutableArray *)devicesWithPendingUnreachability removeObject:contextCopy];
}

- (void)_setUnreachablePendingForContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([(NSMutableArray *)self->_devicesWithPendingUnreachability containsObject:contextCopy]& 1) == 0)
  {
    reachability = [contextCopy reachability];
    if (!reachability || (v6 = reachability, [contextCopy reachability], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, v8))
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        address = [contextCopy address];
        v14 = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = address;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Device address %@ reported unreachable.  Debouncing reachability", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [(HMFDateProvider *)selfCopy->_dateProvider timeIntervalSince1970];
      [contextCopy setUnreachableStartTime:?];
      [(NSMutableArray *)self->_devicesWithPendingUnreachability addObject:contextCopy];
      [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _evaluateDebounceTimer];
    }
  }
}

- (void)_evaluateDebounceTimer
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self || !self->_debounceTimer)
  {
    firstObject = [(NSMutableArray *)self->_devicesWithPendingUnreachability firstObject];
    if (firstObject)
    {
      v9 = firstObject;
      [(HMFDateProvider *)self->_dateProvider timeIntervalSince1970];
      v5 = v4;
      [v9 unreachableStartTime];
      v7 = v6 + 20.0 - v5;
      if (v7 <= 0.01)
      {
        v7 = 0.01;
      }

      v8 = [(HMFTimerProvider *)self->_timerProvider timerWithTimeInterval:0 options:v7];
      objc_storeStrong(&self->_debounceTimer, v8);

      [(HMFTimer *)self->_debounceTimer setDelegate:self];
      [(HMFTimer *)self->_debounceTimer resume];
      firstObject = v9;
    }
  }
}

- (id)isDeviceAddressReachable:(id)reachable
{
  reachableCopy = reachable;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    deviceToListenersMap = self->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v6 = deviceToListenersMap;
  idsIdentifier = [reachableCopy idsIdentifier];
  v8 = [(NSMapTable *)v6 objectForKey:idsIdentifier];

  if (v8)
  {
    reachability = [v8 reachability];
  }

  else
  {
    reachability = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return reachability;
}

- (void)removeListener:(id)listener forDeviceAddress:(id)address
{
  v28 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  addressCopy = address;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543874;
    v23 = v11;
    v24 = 2048;
    v25 = listenerCopy;
    v26 = 2112;
    v27 = addressCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing listener %p for address: %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    deviceToListenersMap = selfCopy->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v13 = deviceToListenersMap;
  idsIdentifier = [addressCopy idsIdentifier];
  v15 = [(NSMapTable *)v13 objectForKey:idsIdentifier];

  if (v15)
  {
    listeners = [v15 listeners];
    [listeners removeObject:listenerCopy];

    listeners2 = [v15 listeners];
    v18 = [listeners2 count] == 0;

    if (v18)
    {
      [(HMDModernTransportDeviceReachabilityObserver *)selfCopy _clearUnreachablePendingForContext:v15];
      if (selfCopy)
      {
        v19 = selfCopy->_deviceToListenersMap;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      idsIdentifier2 = [addressCopy idsIdentifier];
      [(NSMapTable *)v20 removeObjectForKey:idsIdentifier2];
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (void)addListener:(id)listener forDeviceAddress:(id)address
{
  v26 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  addressCopy = address;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v11;
    v22 = 2048;
    v23 = listenerCopy;
    v24 = 2112;
    v25 = addressCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding listener %p for address: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    deviceToListenersMap = selfCopy->_deviceToListenersMap;
  }

  else
  {
    deviceToListenersMap = 0;
  }

  v13 = deviceToListenersMap;
  idsIdentifier = [addressCopy idsIdentifier];
  v15 = [(NSMapTable *)v13 objectForKey:idsIdentifier];

  if (!v15)
  {
    v15 = [[HMDModernTransportDeviceReachabilityObserverListenerContext alloc] initWithAddress:addressCopy];
    if (selfCopy)
    {
      v16 = selfCopy->_deviceToListenersMap;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    idsIdentifier2 = [addressCopy idsIdentifier];
    [(NSMapTable *)v17 setObject:v15 forKey:idsIdentifier2];
  }

  listeners = [(HMDModernTransportDeviceReachabilityObserverListenerContext *)v15 listeners];
  [listeners addObject:listenerCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (HMDModernTransportDeviceReachabilityObserver)initWithTimerProvider:(id)provider dateProvider:(id)dateProvider
{
  providerCopy = provider;
  dateProviderCopy = dateProvider;
  v15.receiver = self;
  v15.super_class = HMDModernTransportDeviceReachabilityObserver;
  v9 = [(HMDModernTransportDeviceReachabilityObserver *)&v15 init];
  if (v9)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceToListenersMap = v9->_deviceToListenersMap;
    v9->_deviceToListenersMap = strongToStrongObjectsMapTable;

    array = [MEMORY[0x277CBEB18] array];
    devicesWithPendingUnreachability = v9->_devicesWithPendingUnreachability;
    v9->_devicesWithPendingUnreachability = array;

    objc_storeStrong(&v9->_timerProvider, provider);
    objc_storeStrong(&v9->_dateProvider, dateProvider);
  }

  return v9;
}

- (HMDModernTransportDeviceReachabilityObserver)init
{
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277D0F798]);
  v5 = [(HMDModernTransportDeviceReachabilityObserver *)self initWithTimerProvider:v3 dateProvider:v4];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_8085 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_8085, &__block_literal_global_8086);
  }

  v3 = logCategory__hmf_once_v13_8087;

  return v3;
}

void __59__HMDModernTransportDeviceReachabilityObserver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v13_8087;
  logCategory__hmf_once_v13_8087 = v0;
}

@end