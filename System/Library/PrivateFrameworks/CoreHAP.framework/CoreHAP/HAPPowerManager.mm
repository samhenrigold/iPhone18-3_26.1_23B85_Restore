@interface HAPPowerManager
+ (HAPPowerManager)sharedInstance;
+ (id)logCategory;
- (HAPPowerManager)init;
- (void)deRegisterFromSleepWake:(id)wake;
- (void)dealloc;
- (void)registerForSleepWake:(id)wake queue:(id)queue;
- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d;
@end

@implementation HAPPowerManager

- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d
{
  v5 = *&changed;
  v38 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = StringForSystemPowerChangedMessage(v5);
    *buf = 138543618;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@System power changed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  switch(v5)
  {
    case 0xE0000270:
      goto LABEL_14;
    case 0xE0000280:
      v12 = 1;
      [(HAPPowerManager *)selfCopy delegatesMap:1];
      break;
    case 0xE0000320:
      v12 = 2;
      [(HAPPowerManager *)selfCopy delegatesMap:0];
      break;
    default:
      return;
  }
  v13 = ;
  keyEnumerator = [v13 keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v16 = nextObject;
    do
    {
      delegatesMap = [(HAPPowerManager *)selfCopy delegatesMap];
      v18 = [delegatesMap objectForKey:v16];

      if (v18)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__HAPPowerManager_systemPowerChanged_notificationID___block_invoke;
        block[3] = &unk_2786D63C8;
        v30 = v16;
        v31 = v12;
        dispatch_async(v18, block);
      }

      nextObject2 = [keyEnumerator nextObject];

      v16 = nextObject2;
    }

    while (nextObject2);
  }

  d = v28;
  if (v27)
  {
LABEL_14:
    v20 = IOAllowPowerChange([(HAPPowerManager *)selfCopy systemPowerMgr], d);
    if (v20)
    {
      v21 = v20;
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = StringForSystemPowerChangedMessage(v5);
        *buf = 138543874;
        v33 = v25;
        v34 = 2112;
        v35 = v26;
        v36 = 1024;
        v37 = v21;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to allow for %@ with error: %d", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v22);
    }
  }
}

- (void)deRegisterFromSleepWake:(id)wake
{
  wakeCopy = wake;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HAPPowerManager_deRegisterFromSleepWake___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = wakeCopy;
  v6 = wakeCopy;
  dispatch_async(workQueue, v7);
}

void __43__HAPPowerManager_deRegisterFromSleepWake___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatesMap];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)registerForSleepWake:(id)wake queue:(id)queue
{
  wakeCopy = wake;
  queueCopy = queue;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HAPPowerManager_registerForSleepWake_queue___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = wakeCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = wakeCopy;
  dispatch_async(workQueue, block);
}

void __46__HAPPowerManager_registerForSleepWake_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatesMap];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) delegatesMap];
  [v3 setObject:*(a1 + 48) forKey:*(a1 + 40)];
}

- (void)dealloc
{
  v27 = *MEMORY[0x277D85DE8];
  p_systemPowerNotifier = &self->_systemPowerNotifier;
  if (self->_systemPowerNotifier)
  {
    v4 = IODeregisterForSystemPower(&self->_systemPowerNotifier);
    if (v4)
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v9;
        v25 = 1024;
        v26 = v5;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to deregister from system power with error: %d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v6);
    }

    *p_systemPowerNotifier = 0;
  }

  systemPowerPort = self->_systemPowerPort;
  if (systemPowerPort)
  {
    IONotificationPortDestroy(systemPowerPort);
    self->_systemPowerPort = 0;
  }

  systemPowerMgr = self->_systemPowerMgr;
  if (systemPowerMgr)
  {
    v12 = IOServiceClose(systemPowerMgr);
    if (v12)
    {
      v13 = v12;
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v17;
        v25 = 1024;
        v26 = v13;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to close power IO Service with error: %d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v14);
    }

    self->_systemPowerMgr = 0;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v21;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Deallocating Power Manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22.receiver = selfCopy3;
  v22.super_class = HAPPowerManager;
  [(HAPPowerManager *)&v22 dealloc];
}

- (HAPPowerManager)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HAPPowerManager;
  v2 = [(HAPPowerManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("HAPPowerManager", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v7 = *(v2 + 4);
    *(v2 + 4) = weakToWeakObjectsMapTable;

    v8 = IORegisterForSystemPower(v2, v2 + 3, PowerChangedCallback, v2 + 5);
    *(v2 + 4) = v8;
    if (v8)
    {
      IONotificationPortSetDispatchQueue([v2 systemPowerPort], *(v2 + 1));
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v2;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error registering for system power", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = objc_autoreleasePoolPush();
  v14 = v2;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v16;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Initialized Power Manager.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7, &__block_literal_global_6);
  }

  v3 = logCategory__hmf_once_v8;

  return v3;
}

uint64_t __30__HAPPowerManager_logCategory__block_invoke()
{
  logCategory__hmf_once_v8 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (HAPPowerManager)sharedInstance
{
  if (sharedInstance_onceToken_15660 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_15660, &__block_literal_global_15661);
  }

  v3 = sharedInstance_powerManager;

  return v3;
}

uint64_t __33__HAPPowerManager_sharedInstance__block_invoke()
{
  sharedInstance_powerManager = objc_alloc_init(HAPPowerManager);

  return MEMORY[0x2821F96F8]();
}

@end