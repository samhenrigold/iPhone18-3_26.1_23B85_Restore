@interface HMDHAPAccessoryLocalNotifyUpdateManager
+ (id)logCategory;
- (HMDHAPAccessory)hmdHAPAccessory;
- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue;
- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue dataSource:(id)source;
- (HMDHome)home;
- (id)_filterOutUnchangedCharacteristicsFrom:(id)from enable:(BOOL)enable;
- (id)_mergeFailedUpdateIfAnyToUpdate:(id)update;
- (id)logIdentifier;
- (id)setEnable:(BOOL)enable forCharacteristics:(id)characteristics clientIdentifier:(id)identifier changeThresholds:(id)thresholds;
- (void)_handleUpdateComplete;
- (void)_handleUpdateCompletedSuccessfully;
- (void)_handleUpdateCompletedWithError:(id)error;
- (void)_processPendingUpdate;
- (void)_removeFailedUpdateRetryTimer;
- (void)_startFailedUpdateRetryTimer;
- (void)processPendingUpdateIfAny;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHAPAccessoryLocalNotifyUpdateManager

- (HMDHAPAccessory)hmdHAPAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hmdHAPAccessory);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  hmdHAPAccessory = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self hmdHAPAccessory];
  shortDescription = [hmdHAPAccessory shortDescription];

  return shortDescription;
}

- (void)timerDidFire:(id)fire
{
  v19 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  failedUpdateRetryTimer = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];

  if (failedUpdateRetryTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      failedUpdateRetryCount = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdateRetryCount];
      failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdate];
      v13 = 138543874;
      v14 = v9;
      v15 = 2048;
      v16 = failedUpdateRetryCount;
      v17 = 2112;
      v18 = failedUpdate;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed update retry timer fired. Retry count: %ld. Failed update: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdateRetryCount]+ 1;
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setFailedUpdateRetryCount:v12];
    if (v12 >= 5)
    {
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy _removeFailedUpdateRetryTimer];
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setFailedUpdate:0];
    }

    [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy processPendingUpdateIfAny];
  }
}

- (void)_removeFailedUpdateRetryTimer
{
  failedUpdateRetryTimer = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
  [failedUpdateRetryTimer cancel];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryTimer:0];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryCount:0];
}

- (void)_startFailedUpdateRetryTimer
{
  failedUpdateRetryTimer = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];

  if (!failedUpdateRetryTimer)
  {
    dataSource = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self dataSource];
    createBackoffTimer = [dataSource createBackoffTimer];
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryTimer:createBackoffTimer];

    failedUpdateRetryTimer2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
    [failedUpdateRetryTimer2 setDelegate:self];

    queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
    failedUpdateRetryTimer3 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
    [failedUpdateRetryTimer3 setDelegateQueue:queue];
  }

  failedUpdateRetryTimer4 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
  [failedUpdateRetryTimer4 resume];
}

- (void)_handleUpdateComplete
{
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setInFlightUpdate:0];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setInProcessing:0];
}

- (void)_handleUpdateCompletedSuccessfully
{
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _handleUpdateComplete];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self processPendingUpdateIfAny];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _removeFailedUpdateRetryTimer];
}

- (void)_handleUpdateCompletedWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    inFlightUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self inFlightUpdate];
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdate:inFlightUpdate];

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdate];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = failedUpdate;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed update: %@ needs retry.", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _handleUpdateComplete];
  pendingUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self pendingUpdate];

  if (pendingUpdate)
  {
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self processPendingUpdateIfAny];
  }

  else
  {
    failedUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];

    if (failedUpdate2)
    {
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _startFailedUpdateRetryTimer];
    }
  }
}

- (id)_mergeFailedUpdateIfAnyToUpdate:(id)update
{
  updateCopy = update;
  failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];

  if (failedUpdate)
  {
    failedUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];
    v7 = failedUpdate2;
    if (updateCopy)
    {
      [updateCopy copyRelevantFieldsFrom:failedUpdate2];
    }

    else
    {
      updateCopy = failedUpdate2;
    }
  }

  v8 = updateCopy;

  return updateCopy;
}

- (void)_processPendingUpdate
{
  v27 = *MEMORY[0x277D85DE8];
  queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    pendingUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy pendingUpdate];
    failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdate];
    *buf = 138543874;
    v22 = v7;
    v23 = 2112;
    v24 = pendingUpdate;
    v25 = 2112;
    v26 = failedUpdate;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Processing enable notify update. Pending: %@. Failed: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_lock_with_options();
  pendingUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy pendingUpdate];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setPendingUpdate:0];
  os_unfair_lock_unlock(&updateLocalNotifyLock);
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setInProcessing:1];
  v11 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy _mergeFailedUpdateIfAnyToUpdate:pendingUpdate2];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setInFlightUpdate:v11];

  inFlightUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy inFlightUpdate];
  [inFlightUpdate performLocalNotifyUpdate];

  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy queue];
  v15 = [v13 initWithQueue:queue2];

  inFlightUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy inFlightUpdate];
  completionFuture = [inFlightUpdate2 completionFuture];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke;
  v20[3] = &unk_278689CB0;
  v20[4] = selfCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke_84;
  v19[3] = &unk_278689CD8;
  v19[4] = selfCopy;
  v18 = [completionFuture inContext:v15 then:v20 orRecover:v19];
}

uint64_t __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) pendingUpdate];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMFBooleanToString();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Enable notify update succeeded. Got queued updates: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleUpdateCompletedSuccessfully];

  return 1;
}

uint64_t __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke_84(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) pendingUpdate];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMFBooleanToString();
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Enable notify update failed with error: %@. Got queued updates: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleUpdateCompletedWithError:v3];

  return 1;
}

- (void)processPendingUpdateIfAny
{
  queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHAPAccessoryLocalNotifyUpdateManager_processPendingUpdateIfAny__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __68__HMDHAPAccessoryLocalNotifyUpdateManager_processPendingUpdateIfAny__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) inProcessing] & 1) == 0)
  {
    v2 = [*(a1 + 32) pendingUpdate];
    if (v2)
    {
    }

    else
    {
      v3 = [*(a1 + 32) failedUpdate];

      if (!v3)
      {
        return;
      }
    }

    v4 = *(a1 + 32);

    [v4 _processPendingUpdate];
  }
}

- (id)_filterOutUnchangedCharacteristicsFrom:(id)from enable:(BOOL)enable
{
  enableCopy = enable;
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = fromCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isNotificationEnabled] != enableCopy)
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = objc_msgSend_copy(array);

  return v13;
}

- (id)setEnable:(BOOL)enable forCharacteristics:(id)characteristics clientIdentifier:(id)identifier changeThresholds:(id)thresholds
{
  enableCopy = enable;
  v64 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  identifierCopy = identifier;
  thresholdsCopy = thresholds;
  v45 = characteristicsCopy;
  if ([characteristicsCopy count])
  {
    selfCopy = self;
    v49 = enableCopy;
    v44 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _filterOutUnchangedCharacteristicsFrom:characteristicsCopy enable:enableCopy];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = characteristicsCopy;
    v11 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v11)
    {
      v12 = *v52;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v51 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = selfCopy;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = HMFGetLogIdentifier();
            v19 = HMFBooleanToString();
            shortDescription = [v14 shortDescription];
            *buf = 138544130;
            v56 = v18;
            v57 = 2112;
            v58 = v19;
            v59 = 2112;
            v60 = shortDescription;
            v61 = 2112;
            v62 = identifierCopy;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Marking the notification change (%@) before actually doing it in the accessory for characteristic %@ for client %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v15);
          hmdHAPAccessory = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v16 hmdHAPAccessory];
          v22 = [hmdHAPAccessory changeThresholdForCharacteristic:v14 changeThresholds:thresholdsCopy];

          [v14 setNotificationEnabled:v49 forClientIdentifier:identifierCopy changeThreshold:v22];
        }

        v11 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v11);
    }

    v23 = [v44 count] == 0;
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v27)
      {
        v41 = HMFGetLogIdentifier();
        v42 = HMFBooleanToString();
        *buf = 138543874;
        v56 = v41;
        v57 = 2112;
        v58 = obj;
        v59 = 2112;
        v60 = v42;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@No change in enablement for characteristics %@. Enable value: %@.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      pendingUpdate3 = 0;
    }

    else
    {
      if (v27)
      {
        v28 = HMFGetLogIdentifier();
        v29 = HMFBooleanToString();
        *buf = 138543874;
        v56 = v28;
        v57 = 2112;
        v58 = v44;
        v59 = 2112;
        v60 = v29;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@characteristicsNeedingUpdate: %@. Enable: %@.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      os_unfair_lock_lock_with_options();
      pendingUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v25 pendingUpdate];
      v31 = pendingUpdate == 0;

      if (v31)
      {
        dataSource = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v25 dataSource];
        createLocalNotifyUpdate = [dataSource createLocalNotifyUpdate];
        [(HMDHAPAccessoryLocalNotifyUpdateManager *)v25 setPendingUpdate:createLocalNotifyUpdate];
      }

      pendingUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v25 pendingUpdate];
      [pendingUpdate2 setEnable:v49 forCharacteristics:v44];

      os_unfair_lock_unlock(&updateLocalNotifyLock);
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)v25 processPendingUpdateIfAny];
      pendingUpdate3 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v25 pendingUpdate];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = HMFGetLogIdentifier();
      v40 = HMFBooleanToString();
      *buf = 138543618;
      v56 = v39;
      v57 = 2112;
      v58 = v40;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@No characteristics to enable to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    pendingUpdate3 = 0;
  }

  return pendingUpdate3;
}

- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue dataSource:(id)source
{
  homeCopy = home;
  accessoryCopy = accessory;
  queueCopy = queue;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = HMDHAPAccessoryLocalNotifyUpdateManager;
  v14 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, homeCopy);
    objc_storeWeak(&v15->_hmdHAPAccessory, accessoryCopy);
    objc_storeStrong(&v15->_queue, queue);
    v15->_inProcessing = 0;
    objc_storeStrong(&v15->_dataSource, source);
  }

  return v15;
}

- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue
{
  queueCopy = queue;
  accessoryCopy = accessory;
  homeCopy = home;
  v11 = [[HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource alloc] initWithHome:homeCopy hmdHAPAccessory:accessoryCopy queue:queueCopy];
  v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self initWithHome:homeCopy hmdHAPAccessory:accessoryCopy queue:queueCopy dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_279295 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_279295, &__block_literal_global_279296);
  }

  v3 = logCategory__hmf_once_v12_279297;

  return v3;
}

void __54__HMDHAPAccessoryLocalNotifyUpdateManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12_279297;
  logCategory__hmf_once_v12_279297 = v0;
}

@end