@interface HMISystemResourceUsageMonitoriPad
- (BOOL)computeResourceUsageLevel;
- (HMISystemResourceUsageMonitorDelegate)delegate;
- (HMISystemResourceUsageMonitoriPad)initWithWorkQueue:(id)queue;
- (void)handleResourceUsageNotification;
- (void)possibleComputeResourceChange;
- (void)start;
@end

@implementation HMISystemResourceUsageMonitoriPad

- (HMISystemResourceUsageMonitoriPad)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = HMISystemResourceUsageMonitoriPad;
  v6 = [(HMISystemResourceUsageMonitoriPad *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    v8 = objc_alloc_init(HMISystemResourceUsage);
    currentSystemResourceUsage = v7->_currentSystemResourceUsage;
    v7->_currentSystemResourceUsage = v8;

    v7->_displayOn = 1;
    v10 = [HMINotifydObserver alloc];
    workQueue = [(HMISystemResourceUsageMonitoriPad *)v7 workQueue];
    v21 = v7;
    v12 = [HMINotifydObserver initWithNotificationName:v10 andQueue:"initWithNotificationName:andQueue:andCallback:" andCallback:?];
    notifydObserverForDisplayState = v21->_notifydObserverForDisplayState;
    v21->_notifydObserverForDisplayState = v12;

    v14 = [HMINotifydObserver alloc];
    workQueue2 = [(HMISystemResourceUsageMonitoriPad *)v21 workQueue];
    v19 = MEMORY[0x277D85DD0];
    v20 = v21;
    v16 = [(HMINotifydObserver *)v14 initWithNotificationName:v19 andQueue:3221225472 andCallback:__55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke_4, &unk_2787548D8];
    notifydObserverForLockState = v20->_notifydObserverForLockState;
    v20->_notifydObserverForLockState = v16;
  }

  return v7;
}

void __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  [*(a1 + 32) setDisplayOn:?];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) isDisplayOn];
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    v12 = v8;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Display enabled: %d", &v9, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) possibleComputeResourceChange];
}

void __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  [*(a1 + 32) setLocked:?];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) isLocked];
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    v12 = v8;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Device lock state: %d", &v9, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) possibleComputeResourceChange];
}

- (void)start
{
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMISystemResourceUsageMonitoriPad *)self possibleComputeResourceChange];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:? selector:? name:? object:?];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:? selector:? name:? object:?];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:? selector:? name:? object:?];

  mEMORY[0x277D0F8C8] = [MEMORY[0x277D0F8C8] sharedManager];
  [mEMORY[0x277D0F8C8] start];

  notifydObserverForDisplayState = [(HMISystemResourceUsageMonitoriPad *)self notifydObserverForDisplayState];
  [notifydObserverForDisplayState start];

  notifydObserverForLockState = [(HMISystemResourceUsageMonitoriPad *)self notifydObserverForLockState];
  [notifydObserverForLockState start];
}

- (void)handleResourceUsageNotification
{
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMISystemResourceUsageMonitoriPad_handleResourceUsageNotification__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)possibleComputeResourceChange
{
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMISystemResourceUsageMonitoriPad *)self computeResourceUsageLevel])
  {
    delegate = [(HMISystemResourceUsageMonitoriPad *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      currentSystemResourceUsage = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage];
      [currentSystemResourceUsage systemResourceUsageLevel];
      [delegate systemResourceUsageDidChangeTo:?];
    }
  }
}

- (BOOL)computeResourceUsageLevel
{
  v34 = *MEMORY[0x277D85DE8];
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_5:
      v11 = 3;
LABEL_23:

      objc_autoreleasePoolPop(v6);
      goto LABEL_24;
    }

    v9 = HMFGetLogIdentifier();
    *v33 = 138543362;
    *&v33[4] = v9;
    v10 = "%{public}@System is in low power mode";
LABEL_4:
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, v10, v33, 0xCu);

    goto LABEL_5;
  }

  mEMORY[0x277D0F8C8] = [MEMORY[0x277D0F8C8] sharedManager];
  batteryState = [mEMORY[0x277D0F8C8] batteryState];

  mEMORY[0x277D0F8C8]2 = [MEMORY[0x277D0F8C8] sharedManager];
  [mEMORY[0x277D0F8C8]2 batteryLevel];
  v16 = v15;

  if ([(HMISystemResourceUsageMonitoriPad *)self isDisplayOn])
  {
    v17 = ![(HMISystemResourceUsageMonitoriPad *)self isLocked];
  }

  else
  {
    v17 = 0;
  }

  if (batteryState - 2 < 2)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    v26 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (!v17)
    {
      if (v26)
      {
        v32 = HMFGetLogIdentifier();
        *v33 = 138543362;
        *&v33[4] = v32;
        v11 = 1;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Battery state charging/charged", v33, 0xCu);
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_23;
    }

    if (!v26)
    {
      goto LABEL_22;
    }

    v21 = HMFGetLogIdentifier();
    *v33 = 138543362;
    *&v33[4] = v21;
    v22 = "%{public}@Battery state charging/charged but user is actively using the device";
    goto LABEL_20;
  }

  if (!batteryState)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v21 = HMFGetLogIdentifier();
    *v33 = 138543362;
    *&v33[4] = v21;
    v22 = "%{public}@Battery state unknown, should get the real one shortly";
LABEL_20:
    v23 = v8;
    v24 = 12;
    goto LABEL_21;
  }

  if (batteryState == 1)
  {
    v18 = v16;
    v6 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v8 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v18 <= 0.2)
    {
      if (!v20)
      {
        goto LABEL_5;
      }

      v9 = HMFGetLogIdentifier();
      *v33 = 138543362;
      *&v33[4] = v9;
      v10 = "%{public}@Battery level critical";
      goto LABEL_4;
    }

    if (v20)
    {
      v21 = HMFGetLogIdentifier();
      *v33 = 138543618;
      *&v33[4] = v21;
      *&v33[12] = 2048;
      *&v33[14] = v18;
      v22 = "%{public}@Battery level: %f";
      v23 = v8;
      v24 = 22;
LABEL_21:
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_INFO, v22, v33, v24);
    }

LABEL_22:
    v11 = 2;
    goto LABEL_23;
  }

  v11 = 0;
LABEL_24:
  v28 = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage:*v33];
  systemResourceUsageLevel = [v28 systemResourceUsageLevel];

  if (systemResourceUsageLevel != v11)
  {
    currentSystemResourceUsage = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage];
    [currentSystemResourceUsage setSystemResourceUsageLevel:?];
  }

  return systemResourceUsageLevel != v11;
}

- (HMISystemResourceUsageMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end