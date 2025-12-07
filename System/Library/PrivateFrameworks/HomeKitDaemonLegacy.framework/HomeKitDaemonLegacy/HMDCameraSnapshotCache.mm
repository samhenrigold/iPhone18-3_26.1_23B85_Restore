@interface HMDCameraSnapshotCache
+ (id)logCategory;
- (BOOL)isEntryPresentForCharacteristicEventUUID:(id)d;
- (HMDCameraSnapshotCache)initWithWorkQueue:(id)queue logIdentifier:(id)identifier;
- (void)addEntryWithCharacteristicEventUUID:(id)d;
- (void)removeEntryWithCharacteristicEventUUID:(id)d error:(id)error;
- (void)requestSnapshot:(id)snapshot streamingTierType:(unint64_t)type completionHandler:(id)handler;
- (void)setSnapshotFile:(id)file forEntryWithCharacteristicEventUUID:(id)d;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraSnapshotCache

- (void)timerDidFire:(id)fire
{
  v30 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = objc_msgSend_copy(self->_snapshotCacheMap, 0);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = objc_msgSend_copy(0, 0);
  }

  v6 = v5;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if (self)
        {
          snapshotCacheMap = self->_snapshotCacheMap;
        }

        else
        {
          snapshotCacheMap = 0;
        }

        v13 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v10)];
        timer = [v13 timer];

        if (timer == fireCopy)
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v26 = v19;
            v27 = 2112;
            v28 = v11;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Cache entry for %@ has expired", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          if (self)
          {
            v20 = selfCopy->_snapshotCacheMap;
          }

          else
          {
            v20 = 0;
          }

          [(NSMutableDictionary *)v20 removeObjectForKey:v11];

          goto LABEL_21;
        }

        ++v10;
      }

      while (v8 != v10);
      v15 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v8 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

- (BOOL)isEntryPresentForCharacteristicEventUUID:(id)d
{
  if (self)
  {
    workQueue = self->_workQueue;
    dCopy = d;
    dispatch_assert_queue_V2(workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dCopy2 = d;
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v8 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:d];

  snapshotFile = [v8 snapshotFile];
  v10 = snapshotFile != 0;

  return v10;
}

- (void)requestSnapshot:(id)snapshot streamingTierType:(unint64_t)type completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  handlerCopy = handler;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v10 = snapshotCacheMap;
  snapshotCharacteristicEventUUID = [snapshotCopy snapshotCharacteristicEventUUID];
  v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:snapshotCharacteristicEventUUID];

  if (!v12)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = snapshotCopy;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not find the snapshot cache file for %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    snapshotFile2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, snapshotFile2);
    goto LABEL_11;
  }

  snapshotFile = [v12 snapshotFile];

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (snapshotFile)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = snapshotCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Found the snapshot cache file for %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    snapshotFile2 = [v12 snapshotFile];
    (handlerCopy)[2](handlerCopy, snapshotFile2, 0);
LABEL_11:

    goto LABEL_15;
  }

  if (v17)
  {
    v24 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v24;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Found the snapshot cache file placeholder, saving the completion handler", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  [v12 setSnapshotRequestCompletion:handlerCopy];
LABEL_15:
}

- (void)setSnapshotFile:(id)file forEntryWithCharacteristicEventUUID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  dCopy = d;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v9 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:dCopy];
  snapshotRequestCompletion = [v9 snapshotRequestCompletion];

  if (snapshotRequestCompletion)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v14;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = fileCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Snapshot request completion is already set for %@, calling completion with %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    snapshotRequestCompletion2 = [v9 snapshotRequestCompletion];
    (snapshotRequestCompletion2)[2](snapshotRequestCompletion2, fileCopy, 0);
  }

  v16 = objc_alloc(MEMORY[0x277D0F920]);
  v17 = [v16 initWithTimeInterval:1 options:*&snapshotCacheValidPeriod];
  [v17 setDelegate:self];
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  [v17 setDelegateQueue:workQueue];
  v19 = [[HMDCameraSnapshotCacheEntry alloc] initWithSnapshotCharacteristicEventUUID:dCopy snapshotFile:fileCopy timer:v17];

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v23;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting Cache Entry %@ for snapshotCharacteristicEventUUID: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  if (self)
  {
    v24 = selfCopy2->_snapshotCacheMap;
  }

  else
  {
    v24 = 0;
  }

  [(NSMutableDictionary *)v24 setObject:v19 forKeyedSubscript:dCopy];
  [v17 resume];
}

- (void)removeEntryWithCharacteristicEventUUID:(id)d error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v9 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:dCopy];
  snapshotRequestCompletion = [v9 snapshotRequestCompletion];

  if (snapshotRequestCompletion)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = dCopy;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Snapshot request completion is already set for %@, calling completion with error %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    snapshotRequestCompletion2 = [v9 snapshotRequestCompletion];
    (snapshotRequestCompletion2)[2](snapshotRequestCompletion2, 0, errorCopy);
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v19;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing Cache Entry for snapshotCharacteristicEventUUID: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (self)
  {
    v20 = selfCopy2->_snapshotCacheMap;
  }

  else
  {
    v20 = 0;
  }

  [(NSMutableDictionary *)v20 removeObjectForKey:dCopy];
}

- (void)addEntryWithCharacteristicEventUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v6 = [[HMDCameraSnapshotCacheEntry alloc] initWithSnapshotCharacteristicEventUUID:dCopy snapshotFile:0 timer:0];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Added Cache Entry %@ for snapshotCharacteristicEventUUID: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (self)
  {
    snapshotCacheMap = selfCopy->_snapshotCacheMap;
  }

  else
  {
    snapshotCacheMap = 0;
  }

  [(NSMutableDictionary *)snapshotCacheMap setObject:v6 forKeyedSubscript:dCopy];
}

- (HMDCameraSnapshotCache)initWithWorkQueue:(id)queue logIdentifier:(id)identifier
{
  queueCopy = queue;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HMDCameraSnapshotCache;
  v9 = [(HMDCameraSnapshotCache *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v10->_logIdentifier, identifier);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    snapshotCacheMap = v10->_snapshotCacheMap;
    v10->_snapshotCacheMap = dictionary;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_178732 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_178732, &__block_literal_global_178733);
  }

  v3 = logCategory__hmf_once_v9_178734;

  return v3;
}

uint64_t __37__HMDCameraSnapshotCache_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v9_178734;
  logCategory__hmf_once_v9_178734 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end