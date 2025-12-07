@interface HMDPowerManager
+ (id)logCategory;
- (BOOL)isPowerAsserted;
- (HMDPowerManager)init;
- (HMDPowerManager)initWithPowerManager:(id)manager timerProvider:(id)provider ttrManager:(id)ttrManager;
- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options;
- (int)_ensureNetworkInterfaceMonitorStarted;
- (void)_ensureNetworkInterfaceMonitorStopped;
- (void)_update;
- (void)dealloc;
- (void)setNetworkAccessRequired:(BOOL)required;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDPowerManager

- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options
{
  v4 = *&options;
  timerProvider = [(HMDPowerManager *)self timerProvider];
  v7 = [timerProvider timerWithTimeInterval:v4 options:interval];

  return v7;
}

- (void)timerDidFire:(id)fire
{
  v13 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  verificationTimer = self->_verificationTimer;
  if (verificationTimer == fireCopy)
  {
    self->_verificationTimer = 0;

    if (![(HMDPowerManager *)self isPowerAsserted])
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@HomeKit remote access power assertion unexpectedly released", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      ttrManager = selfCopy->_ttrManager;
      if (ttrManager)
      {
        [(HMMRadarInitiating *)ttrManager requestRadarWithDisplayReason:@"Power Assertion was released unexpectedly" radarTitle:@"Power Assertion was released unexpectedly" componentName:@"HomeKit" componentVersion:@"Resident" componentID:938669];
      }
    }
  }
}

- (void)_ensureNetworkInterfaceMonitorStopped
{
  v11 = *MEMORY[0x277D85DE8];
  scStore = self->_scStore;
  if (scStore)
  {
    SCDynamicStoreSetDispatchQueue(scStore, 0);
    CFRelease(self->_scStore);
    self->_scStore = 0;
    if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDPowerManager, "[HMDPowerManager _ensureNetworkInterfaceMonitorStopped]", 30, "Stopped network interface monitor\n");
    }

    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopped network interface monitor", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  scContext = self->_scContext;
  if (scContext)
  {

    self->_scContext = 0;
  }

  self->_networkInterfaceActive = 0;
}

- (int)_ensureNetworkInterfaceMonitorStarted
{
  v26 = *MEMORY[0x277D85DE8];
  memset(&context, 0, sizeof(context));
  if (self->_scStore)
  {
    LODWORD(v9) = 0;
    return v9;
  }

  selfCopy = self;
  selfCopy->_scContext = selfCopy;
  context.info = selfCopy;
  v4 = SCDynamicStoreCreate(0, @"HomeKit:NetworkInterfaceMonitor", _handleNetworkInterfaceChanged, &context);
  if (v4)
  {
LABEL_3:
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      v9 = 4294960568;
      if (!v4)
      {
LABEL_27:
        if (!v9)
        {
          return v9;
        }

        goto LABEL_28;
      }

LABEL_26:
      CFRelease(v4);
      goto LABEL_27;
    }

    v6 = Mutable;
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], *MEMORY[0x277CE16A0]);
    if (!NetworkInterfaceEntity)
    {
      v9 = 4294960568;
      goto LABEL_25;
    }

    v8 = NetworkInterfaceEntity;
    CFArrayAppendValue(v6, NetworkInterfaceEntity);
    CFRelease(v8);
    if (!SCDynamicStoreSetNotificationKeys(v4, 0, v6))
    {
      if (!SCError())
      {
        goto LABEL_19;
      }

      v10 = SCError();
      if (v10)
      {
        goto LABEL_18;
      }
    }

    if (SCDynamicStoreSetDispatchQueue(v4, selfCopy->_dispatchQueue))
    {
      goto LABEL_7;
    }

    if (SCError())
    {
      v10 = SCError();
      if (!v10)
      {
LABEL_7:
        self->_scStore = v4;
        [(HMDPowerManager *)selfCopy setNetworkInterfaceActive:_isNetworkIntefaceActive(selfCopy)];
        if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_HMDPowerManager, "[HMDPowerManager _ensureNetworkInterfaceMonitorStarted]", 30, "Start network interface monitor\n");
        }

        v11 = objc_autoreleasePoolPush();
        v12 = selfCopy;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v23 = v14;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Start network interface monitor", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        v4 = 0;
        v9 = 0;
LABEL_25:
        CFRelease(v6);
        if (!v4)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_18:
      v9 = v10;
      goto LABEL_25;
    }

LABEL_19:
    v9 = 4294960596;
    goto LABEL_25;
  }

  if (SCError())
  {
    v9 = SCError();
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 4294960596;
  }

LABEL_28:
  if (gLogCategory_HMDPowerManager <= 60 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDPowerManager, "[HMDPowerManager _ensureNetworkInterfaceMonitorStarted]", 60, "### Start network interface monitor failed: %#m\n", v9);
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = strerror(v9);
    *buf = 138543618;
    v23 = v18;
    v24 = 2080;
    v25 = v19;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Start network interface monitor failed: %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDPowerManager *)v16 _ensureNetworkInterfaceMonitorStopped];
  return v9;
}

- (void)_update
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_started && self->_networkAccessRequired && isAppleTV())
  {
    [(HMDPowerManager *)self _ensureNetworkInterfaceMonitorStarted];
  }

  else
  {
    [(HMDPowerManager *)self _ensureNetworkInterfaceMonitorStopped];
  }

  networkInterfaceActive = [(HMDPowerManager *)self networkInterfaceActive];
  powerAssertion = self->_powerAssertion;
  if (networkInterfaceActive)
  {
    if (powerAssertion)
    {
      return;
    }

    v5 = [(HMDIOPM *)self->_iopmLib iopmAssertionCreateWithDescription:@"PreventUserIdleSystemSleep" name:@"HomeKit remote access" details:0 humanReadableReason:0 localizationBundlePath:0 timeout:0 timeoutAction:0.0 iopmAssertionID:&self->_powerAssertion];
    if (v5)
    {
      v6 = v5;
      if (gLogCategory_HMDPowerManager <= 60 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDPowerManager, "[HMDPowerManager _update]", 60, "### Create HomeKit remote access power assertion failed: %#m\n", v6);
      }

      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v15;
        v31 = 2080;
        v32 = strerror(v6);
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Create HomeKit remote access power assertion failed: %s", buf, 0x16u);
      }

LABEL_39:
      objc_autoreleasePoolPop(v12);
      ttrManager = selfCopy->_ttrManager;
      if (ttrManager)
      {
        [(HMMRadarInitiating *)ttrManager requestRadarWithDisplayReason:@"Unable to create power assertion" radarTitle:@"Unable to create power assertion" componentName:@"HomeKit" componentVersion:@"Resident" componentID:938669];
      }

      return;
    }

    if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDPowerManager, "[HMDPowerManager _update]", 30, "Created HomeKit remote access power assertion\n");
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Created HomeKit remote access power assertion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    isPowerAsserted = [(HMDPowerManager *)selfCopy2 isPowerAsserted];
    v12 = objc_autoreleasePoolPush();
    selfCopy = selfCopy2;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (!isPowerAsserted)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v27;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Create HomeKit remote access power assertion failed to become active", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@HomeKit remote access power assertion is active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    timerProvider = [(HMDPowerManager *)selfCopy timerProvider];
    v25 = [timerProvider timerWithTimeInterval:0 options:2.5];
    verificationTimer = selfCopy->_verificationTimer;
    selfCopy->_verificationTimer = v25;

    [(HMFTimer *)selfCopy->_verificationTimer setDelegate:selfCopy];
    [(HMFTimer *)selfCopy->_verificationTimer setDelegateQueue:selfCopy->_dispatchQueue];
    [(HMFTimer *)selfCopy->_verificationTimer resume];
  }

  else
  {
    if (powerAssertion)
    {
      IOPMAssertionRelease(powerAssertion);
      self->_powerAssertion = 0;
      if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDPowerManager, "[HMDPowerManager _update]", 30, "Released HomeKit remote access power assertion\n");
      }

      v7 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Released HomeKit remote access power assertion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }

    [(HMFTimer *)self->_verificationTimer suspend];
    v11 = self->_verificationTimer;
    self->_verificationTimer = 0;
  }
}

- (BOOL)isPowerAsserted
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  iopmUpdateAssertionsByProcess = [(HMDIOPM *)selfCopy->_iopmLib iopmUpdateAssertionsByProcess];
  if (iopmUpdateAssertionsByProcess)
  {
    v4 = iopmUpdateAssertionsByProcess;
    v5 = objc_autoreleasePoolPush();
    v6 = selfCopy;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v8;
      v25 = 2080;
      v26 = strerror(v4);
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@iopmUpdateAssertionsByProcess returned %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    ttrManager = v6->_ttrManager;
    if (ttrManager)
    {
      [(HMMRadarInitiating *)ttrManager requestRadarWithDisplayReason:@"Unable to set power assertion for assertion verification" radarTitle:@"Unable to set power assertion for assertion verification" componentName:@"HomeKit" componentVersion:@"Resident" componentID:938669];
    }

    goto LABEL_15;
  }

  assertionsByPID = [(HMDIOPM *)selfCopy->_iopmLib assertionsByPID];
  if (!assertionsByPID || (v11 = assertionsByPID, *buf = getpid(), v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, buf), Value = CFDictionaryGetValue(v11, v12), CFRelease(v12), !Value))
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  for (i = 0; ; ++i)
  {
    Count = CFArrayGetCount(Value);
    v16 = Count > i;
    if (Count <= i)
    {
      break;
    }

    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
    if (ValueAtIndex)
    {
      v18 = ValueAtIndex;
      v19 = CFDictionaryGetValue(ValueAtIndex, @"AssertType");
      v20 = CFDictionaryGetValue(v18, @"AssertLevel");
      valuePtr = 0;
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
        if (valuePtr == 255)
        {
          if (CFEqual(v19, @"PreventUserIdleSystemSleep"))
          {
            break;
          }
        }
      }
    }
  }

LABEL_16:

  return v16;
}

- (void)stop
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__HMDPowerManager_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMDPowerManager_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)setNetworkAccessRequired:(BOOL)required
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HMDPowerManager_setNetworkAccessRequired___block_invoke;
  v4[3] = &unk_279735D28;
  requiredCopy = required;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

unsigned __int8 *__44__HMDPowerManager_setNetworkAccessRequired___block_invoke(unsigned __int8 *result)
{
  v1 = result[40];
  v2 = *(result + 4);
  if (v1 != *(v2 + 16))
  {
    *(v2 + 16) = v1;
    return [*(result + 4) _update];
  }

  return result;
}

- (void)dealloc
{
  [(HMFTimer *)self->_verificationTimer suspend];
  verificationTimer = self->_verificationTimer;
  self->_verificationTimer = 0;

  v4.receiver = self;
  v4.super_class = HMDPowerManager;
  [(HMDPowerManager *)&v4 dealloc];
}

- (HMDPowerManager)initWithPowerManager:(id)manager timerProvider:(id)provider ttrManager:(id)ttrManager
{
  managerCopy = manager;
  providerCopy = provider;
  ttrManagerCopy = ttrManager;
  v17.receiver = self;
  v17.super_class = HMDPowerManager;
  v12 = [(HMDPowerManager *)&v17 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.HMDPowerManager", v13);
    dispatchQueue = v12->_dispatchQueue;
    v12->_dispatchQueue = v14;

    objc_storeStrong(&v12->_iopmLib, manager);
    objc_storeStrong(&v12->_timerProvider, provider);
    if (ttrManagerCopy)
    {
      objc_storeStrong(&v12->_ttrManager, ttrManager);
    }
  }

  return v12;
}

- (HMDPowerManager)init
{
  v3 = objc_alloc_init(HMDIOPMWrapper);
  v4 = objc_opt_new();
  v5 = +[HMDTTRManager sharedManager];
  v6 = [(HMDPowerManager *)self initWithPowerManager:v3 timerProvider:v4 ttrManager:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_53569 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_53569, &__block_literal_global_53570);
  }

  v3 = logCategory__hmf_once_v1_53571;

  return v3;
}

uint64_t __30__HMDPowerManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_53571;
  logCategory__hmf_once_v1_53571 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end