@interface HMDAccessoryFirmwareUpdateScheduler
+ (id)logCategory;
- (BOOL)isIdle;
- (BOOL)isStagingInProgress;
- (BOOL)needsToScheduleApply;
- (BOOL)needsToScheduleRegister;
- (BOOL)needsToScheduleStaging;
- (BOOL)needsToStop;
- (HMDAccessoryFirmwareUpdateProfile)updateProfile;
- (HMDAccessoryFirmwareUpdateScheduler)initWithAccessory:(id)accessory firmwareUpdateSession:(id)session wingman:(id)wingman workQueue:(id)queue;
- (HMDAccessoryFirmwareUpdateSession)updateSession;
- (HMDHAPAccessory)accessory;
- (NSString)description;
- (id)logIdentifier;
- (id)privateDescription;
- (void)_createUpdatePolicy;
- (void)_defer;
- (void)_handleSchedulingConditionChanged;
- (void)_invalidateExistingScheduling;
- (void)_logDebugStates:(const char *)states;
- (void)_registerForNotifications;
- (void)_removeUpdatePolicy;
- (void)_scheduleCurrentTask;
- (void)_scheduleCurrentTaskBackgroundRun;
- (void)_startDeferCheckTimer;
- (void)_startTaskInitialDelayTimer;
- (void)_stop;
- (void)_stopDeferCheckTimer;
- (void)_stopInitialDelayTimer;
- (void)_taskCanRunInCurrentDevice:(id)device;
- (void)dealloc;
- (void)handleAccessoryReachabilityChanged:(id)changed;
- (void)handleApplyNotReadyReasonsChanged:(id)changed;
- (void)handleBridgeUpdate:(id)update;
- (void)handlePolicyStatusChange:(id)change;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handleStagingNotReadyReasonsChanged:(id)changed;
- (void)handleUpdateStateChanged:(id)changed;
- (void)removeUpdatePolicy;
- (void)scheduleWithDelay:(BOOL)delay;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAccessoryFirmwareUpdateScheduler

- (HMDAccessoryFirmwareUpdateSession)updateSession
{
  WeakRetained = objc_loadWeakRetained(&self->_updateSession);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)handleBridgeUpdate:(id)update
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDAccessoryFirmwareUpdateScheduler_handleBridgeUpdate___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __58__HMDAccessoryFirmwareUpdateScheduler_handleBridgeUpdate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) updateSession];
  v3 = [v2 sessionState];

  if (v3 == 2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Bridge update received; rescheduling...", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _removeUpdatePolicy];
    [*(a1 + 32) scheduleWithDelay:0];
  }
}

- (void)_removeUpdatePolicy
{
  updatePolicy = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];

  if (updatePolicy)
  {
    wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter = [wingman notificationCenter];
    [notificationCenter removeObserver:self name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:0];

    [(HMDAccessoryFirmwareUpdateScheduler *)self setUpdatePolicy:0];
  }
}

- (void)_createUpdatePolicy
{
  [(HMDAccessoryFirmwareUpdateScheduler *)self _removeUpdatePolicy];
  wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  sessionState = [updateSession sessionState];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v8 = [wingman policyForAccessory:accessory sessionState:sessionState workQueue:workQueue];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setUpdatePolicy:v8];

  updatePolicy = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];

  if (updatePolicy)
  {
    wingman2 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter = [wingman2 notificationCenter];
    updatePolicy2 = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];
    [notificationCenter addObserver:self selector:sel_handlePolicyStatusChange_ name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:updatePolicy2];
  }
}

- (void)handlePolicyStatusChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAccessoryFirmwareUpdateScheduler_handlePolicyStatusChange___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDAccessoryFirmwareUpdateScheduler_handlePolicyStatusChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  [v2 hmf_BOOLForKey:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedKey"];

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMFBooleanToString();
    v8 = [*(a1 + 40) updateSession];
    v9 = [v8 sessionState];
    if ((v9 - 1) > 2)
    {
      v10 = @"Up-To-Date";
    }

    else
    {
      v10 = off_27867DF68[v9 - 1];
    }

    v11 = v10;
    v14 = 138543874;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Policy status - %@, Session State - %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v12 = [*(a1 + 40) updateSession];
  if ([v12 sessionState] == 2)
  {
    v13 = [*(a1 + 40) currentState];

    if (!v13)
    {
      [*(a1 + 40) scheduleWithDelay:0];
    }
  }

  else
  {
  }
}

- (void)removeUpdatePolicy
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDAccessoryFirmwareUpdateScheduler_removeUpdatePolicy__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initialDelayTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self initialDelayTimer];

  if (initialDelayTimer == fireCopy)
  {
    [(HMDAccessoryFirmwareUpdateScheduler *)self _scheduleCurrentTaskBackgroundRun];
  }

  else
  {
    deferCheckTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
    v8 = deferCheckTimer;
    if (deferCheckTimer == fireCopy)
    {
      backgroundScheduler = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
      shouldDefer = [backgroundScheduler shouldDefer];

      if (shouldDefer)
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = 138543362;
          v16 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@System condition is no longer conducive to running scheduled task", &v15, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _defer];
      }
    }

    else
    {
    }
  }
}

- (void)_stopInitialDelayTimer
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initialDelayTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self initialDelayTimer];
  [initialDelayTimer cancel];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setInitialDelayTimer:0];
}

- (void)_startTaskInitialDelayTimer
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
    v16 = 138543618;
    v17 = v7;
    v18 = 2112;
    v19 = currentTask;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting initial delay timer for task %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  wingman = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy wingman];
  currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
  [currentTask2 initialDelay];
  v11 = [wingman newInitialDelayTimerWithDelay:1 options:?];
  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy setInitialDelayTimer:v11];

  initialDelayTimer = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy initialDelayTimer];
  [initialDelayTimer setDelegate:selfCopy];

  workQueue2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy workQueue];
  initialDelayTimer2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy initialDelayTimer];
  [initialDelayTimer2 setDelegateQueue:workQueue2];

  initialDelayTimer3 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy initialDelayTimer];
  [initialDelayTimer3 resume];
}

- (void)_stopDeferCheckTimer
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  deferCheckTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer cancel];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setDeferCheckTimer:0];
}

- (void)_startDeferCheckTimer
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:5 options:10000.0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setDeferCheckTimer:v4];

  deferCheckTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer setDelegate:self];

  workQueue2 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  deferCheckTimer2 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer2 setDelegateQueue:workQueue2];

  deferCheckTimer3 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer3 resume];
}

- (void)_logDebugStates:(const char *)states
{
  v49 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateProfile = [(HMDAccessoryFirmwareUpdateScheduler *)self updateProfile];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v34 = updateProfile;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v31 = HMFGetLogIdentifier();
    statesCopy = states;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:states];
    [updateProfile stagingNotReadyReasons];
    v11 = HAPStagingNotReadyReasonsAsString();
    [updateProfile updateNotReadyReasons];
    v12 = HAPUpdateNotReadyReasonsAsString();
    [updateProfile updateState];
    v13 = HAPFirmwareUpdateStateAsString();
    updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateSession];
    sessionState = [updateSession sessionState];
    if ((sessionState - 1) > 2)
    {
      v16 = @"Up-To-Date";
    }

    else
    {
      v16 = off_27867DF68[sessionState - 1];
    }

    v17 = v16;
    currentState = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentState];
    if ((currentState - 1) > 2)
    {
      v19 = @"Idle";
    }

    else
    {
      v19 = off_278677F30[currentState - 1];
    }

    *buf = 138544898;
    v36 = v31;
    v37 = 2112;
    v38 = v10;
    v39 = 2114;
    v40 = v11;
    v41 = 2114;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = v17;
    v47 = 2112;
    v48 = v19;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@%@: Staging Not Ready Reasons = %{public}@, Apply Not Ready Reasons = %{public}@, Accessory State = %@, Session State = %@, Scheduler State = %@", buf, 0x48u);

    states = statesCopy;
    updateProfile = v34;
  }

  objc_autoreleasePoolPop(v7);
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = HMFGetLogIdentifier();
    [MEMORY[0x277CCACA8] stringWithUTF8String:states];
    v24 = v33 = v20;
    accessory = [(HMDAccessoryFirmwareUpdateScheduler *)v21 accessory];
    [accessory isReachable];
    v26 = HMFBooleanToString();
    updateSession2 = [(HMDAccessoryFirmwareUpdateScheduler *)v21 updateSession];
    [updateSession2 isUserInitiatedInstall];
    v28 = HMFBooleanToString();
    accessory2 = [(HMDAccessoryFirmwareUpdateScheduler *)v21 accessory];
    [accessory2 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    v30 = HMFBooleanToString();
    *buf = 138544386;
    v36 = v23;
    v37 = 2112;
    v38 = v24;
    v39 = 2112;
    v40 = v26;
    v41 = 2112;
    v42 = v28;
    v43 = 2112;
    v44 = v30;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@%@: Accessory Locally Reachable = %@, User Initiated Install = %@, Automatic Update = %@", buf, 0x34u);

    v20 = v33;
    updateProfile = v34;
  }

  objc_autoreleasePoolPop(v20);
}

- (void)_taskCanRunInCurrentDevice:(id)device
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  shouldRun = [currentTask shouldRun];

  if (shouldRun)
  {
    accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
    home = [accessory home];
    primaryResident = [home primaryResident];
    capabilities = [primaryResident capabilities];
    supportsResidentFirmwareUpdate = [capabilities supportsResidentFirmwareUpdate];

    v12 = [home isResidentSupported] & supportsResidentFirmwareUpdate;
    isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v17 = v25 = accessory;
      v18 = HMFBooleanToString();
      [home isResidentSupported];
      HMFBooleanToString();
      v19 = v24 = v14;
      v20 = HMFBooleanToString();
      *buf = 138544130;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Resident parameters: supports AFU=%@, enabled=%@, current device is resident=%@", buf, 0x2Au);

      v14 = v24;
      accessory = v25;
    }

    objc_autoreleasePoolPop(v14);
    if (isCurrentDeviceConfirmedPrimaryResident & 1 | ((v12 & 1) == 0) || (-[HMDAccessoryFirmwareUpdateScheduler updateSession](selfCopy, "updateSession"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isUserInitiatedInstall], v21, (v22 & 1) != 0))
    {
      deviceCopy[2](deviceCopy, 1);
    }

    else
    {
      v29 = accessory;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke;
      v27[3] = &unk_278689FC0;
      v27[4] = selfCopy;
      v28 = deviceCopy;
      [home queryPrimaryResidentReachabilityForAccessories:v23 completion:v27];
    }
  }

  else
  {
    deviceCopy[2](deviceCopy, 0);
  }
}

void __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke_2;
  v6[3] = &unk_278687BF8;
  objc_copyWeak(&v9, &location);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) count] == 1)
  {
    v3 = [*(a1 + 32) firstObject];
    v4 = [v3 hmf_BOOLForKey:@"kAccessoryIsReachableKey"];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = v8;
    v10 = @"unreachable";
    if (v4)
    {
      v10 = @"reachable";
    }

    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Accessory is %@ from the resident", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)_defer
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    activityCompletion = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy activityCompletion];
    v9 = HMFBooleanToString();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Deferring active task, activityCompletion %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _defer]"];
  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateSession];
  [updateSession pause];

  activityCompletion2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy activityCompletion];

  if (activityCompletion2)
  {
    activityCompletion3 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy activityCompletion];
    activityCompletion3[2](activityCompletion3, 2);
  }
}

- (void)_stop
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping current task", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _stop]"];
  if ([(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentState])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = selfCopy;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Stopping active task", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    activityCompletion = [(HMDAccessoryFirmwareUpdateScheduler *)v9 activityCompletion];

    if (activityCompletion)
    {
      activityCompletion2 = [(HMDAccessoryFirmwareUpdateScheduler *)v9 activityCompletion];
      activityCompletion2[2](activityCompletion2, 1);
    }

    [(HMDAccessoryFirmwareUpdateScheduler *)v9 _invalidateExistingScheduling];
    [(HMDAccessoryFirmwareUpdateScheduler *)v9 setCurrentState:0];
    updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)v9 updateSession];
    [updateSession pause];
  }
}

- (void)_scheduleCurrentTaskBackgroundRun
{
  v37 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  shouldRun = [currentTask shouldRun];

  if (shouldRun)
  {
    currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    [(HMDAccessoryFirmwareUpdateScheduler *)self _invalidateExistingScheduling];
    [(HMDAccessoryFirmwareUpdateScheduler *)self setCurrentTask:currentTask2];
    accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
    uniqueIdentifier = [accessory uniqueIdentifier];
    v9 = [@"com.apple.homed.firmwareUpdate.scheduler." stringByAppendingString:uniqueIdentifier];

    wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v11 = [wingman newBackgroundSchedulerWithIdentifier:v9];
    [(HMDAccessoryFirmwareUpdateScheduler *)self setBackgroundScheduler:v11];

    backgroundScheduler = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
    currentTask3 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    criteria = [currentTask3 criteria];
    [backgroundScheduler _setAdditionalXPCActivityProperties:criteria];

    objc_initWeak(&location, self);
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      currentTask4 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
      *buf = 138543874;
      v32 = v18;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = currentTask4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Scheduling background task %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    backgroundScheduler2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy backgroundScheduler];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke;
    v27[3] = &unk_278677F10;
    objc_copyWeak(&v29, &location);
    v21 = v9;
    v28 = v21;
    [backgroundScheduler2 scheduleWithBlock:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      currentTask5 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy2 currentTask];
      *buf = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = currentTask5;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Aborting task %@ after initial delay because required conditions are no longer satisfied", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy2 _stop];
  }
}

void __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_2;
    block[3] = &unk_278689F98;
    block[4] = v5;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, block);
  }

  else
  {
    (*(v3 + 2))(v3, 1);
  }
}

uint64_t __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) currentTask];
    *buf = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Running background task %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setActivityCompletion:*(a1 + 48)];
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_50;
  v10[3] = &unk_278682310;
  v10[4] = v8;
  return [v8 _taskCanRunInCurrentDevice:v10];
}

uint64_t __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_50(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) currentTask];
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Running task %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) currentTask];
    [v10 run];

    return [*(a1 + 32) _startDeferCheckTimer];
  }

  else
  {
    if (v7)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) currentTask];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Aborting background running because required conditions are no longer satisfied for task=%@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    return [*(a1 + 32) _stop];
  }
}

- (void)_scheduleCurrentTask
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  if ([currentTask isUserInitiated])
  {

LABEL_4:
    workQueue2 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue2, block);

    return;
  }

  currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  [currentTask2 initialDelay];
  v7 = v6;

  if (v7 == 0.0)
  {
    goto LABEL_4;
  }

  [(HMDAccessoryFirmwareUpdateScheduler *)self _startTaskInitialDelayTimer];
}

uint64_t __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke_2;
  v3[3] = &unk_278682310;
  v3[4] = v1;
  return [v1 _taskCanRunInCurrentDevice:v3];
}

void __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke_2(uint64_t a1, char a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) currentTask];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v7)
      {
        v8 = HMFGetLogIdentifier();
        v9 = [*(a1 + 32) currentTask];
        v17 = 138543618;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Running current task now %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v10 = [*(a1 + 32) currentTask];
      [v10 run];
    }

    else
    {
      if (v7)
      {
        v16 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Task was invalidated", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) currentTask];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Aborting background run of task %@ because required conditions are no longer satisfied", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 32) _stop];
  }
}

- (void)_invalidateExistingScheduling
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  backgroundScheduler = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
  [backgroundScheduler invalidate];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setBackgroundScheduler:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setActivityCompletion:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setCurrentTask:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self _stopInitialDelayTimer];

  [(HMDAccessoryFirmwareUpdateScheduler *)self _stopDeferCheckTimer];
}

- (BOOL)isStagingInProgress
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return [(HMDAccessoryFirmwareUpdateScheduler *)self currentState]== 1;
}

- (BOOL)isIdle
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return [(HMDAccessoryFirmwareUpdateScheduler *)self currentState]== 0;
}

- (BOOL)needsToScheduleApply
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  if ([updateSession sessionState] == 2 && !-[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState"))
  {
    if ([updateSession isUserInitiatedInstall])
    {
      isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = 1;
    }

    else
    {
      accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
      isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [accessory isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    }
  }

  else
  {
    isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = 0;
  }

  return isAutomaticThirdPartyAccessorySoftwareUpdateEnabled;
}

- (BOOL)needsToScheduleStaging
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  v5 = [updateSession sessionState] == 1 && -[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState") == 0;

  return v5;
}

- (BOOL)needsToScheduleRegister
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  v5 = [updateSession sessionState] == 3 && -[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState") == 0;

  return v5;
}

- (BOOL)needsToStop
{
  v35 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  if ([accessory isReachable])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(HMDAccessoryFirmwareUpdateScheduler *)self isIdle];
  }

  updateProfile = [(HMDAccessoryFirmwareUpdateScheduler *)self updateProfile];
  if ([updateProfile stagingNotReadyReasons])
  {
    isStagingInProgress = [(HMDAccessoryFirmwareUpdateScheduler *)self isStagingInProgress];
  }

  else
  {
    isStagingInProgress = 0;
  }

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  if (currentTask)
  {
    currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    v9 = [currentTask2 shouldRun] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = v4 | isStagingInProgress | v9;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v22 = v11;
      currentTask3 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
      v16 = HMFBooleanToString();
      v17 = HMFBooleanToString();
      updateProfile2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateProfile];
      [updateProfile2 stagingNotReadyReasons];
      v19 = HAPStagingNotReadyReasonsAsString();
      v20 = HMFBooleanToString();
      *buf = 138544642;
      v24 = v14;
      v25 = 2112;
      v26 = currentTask3;
      v27 = 2112;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Task %@ needs to stop - notReachable %@, StagingNotReady %{public}@ (%@), shouldn't run %@", buf, 0x3Eu);

      v11 = v22;
    }

    objc_autoreleasePoolPop(v11);
  }

  return v10 & 1;
}

- (void)scheduleWithDelay:(BOOL)delay
{
  delayCopy = delay;
  v55 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v49 = 138543618;
    v50 = v9;
    v51 = 2112;
    v52 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@scheduleWithDelay: %@", &v49, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _invalidateExistingScheduling];
  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateSession];
  sessionState = [updateSession sessionState];
  v13 = 0;
  if (sessionState > 1)
  {
    if (sessionState == 2)
    {
      accessory = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy accessory];
      isUserInitiatedInstall = [updateSession isUserInitiatedInstall];
      isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [accessory isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
      home = [accessory home];
      isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

      if (isUserInitiatedInstall & 1) != 0 || (isAutomaticThirdPartyAccessorySoftwareUpdateEnabled & isCurrentDeviceConfirmedPrimaryResident)
      {
        if ([updateSession isUserInitiatedInstall])
        {
          v30 = objc_autoreleasePoolPush();
          v31 = selfCopy;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            v49 = 138543362;
            v50 = v33;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@User initiated install; removing policy...", &v49, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          [(HMDAccessoryFirmwareUpdateScheduler *)v31 _removeUpdatePolicy];
        }

        else
        {
          updatePolicy = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updatePolicy];

          if (!updatePolicy)
          {
            v35 = objc_autoreleasePoolPush();
            v36 = selfCopy;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = HMFGetLogIdentifier();
              v49 = 138543362;
              v50 = v38;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Auto install; creating policy...", &v49, 0xCu);
            }

            objc_autoreleasePoolPop(v35);
            [(HMDAccessoryFirmwareUpdateScheduler *)v36 _createUpdatePolicy];
          }
        }

        v39 = [HMDAccessoryFirmwareUpdateApplyTask alloc];
        updateProfile = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateProfile];
        updatePolicy2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updatePolicy];
        v14 = -[HMDAccessoryFirmwareUpdateApplyTask initWithSession:profile:policy:userInitiated:delay:](v39, "initWithSession:profile:policy:userInitiated:delay:", updateSession, updateProfile, updatePolicy2, [updateSession isUserInitiatedInstall], delayCopy);

        v13 = 2;
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v28 = HMFBooleanToString();
          v29 = HMFBooleanToString();
          v49 = 138543874;
          v50 = v27;
          v51 = 2112;
          v52 = v28;
          v53 = 2112;
          v54 = v29;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Automatic update not allowed in current device: allowed=%@, current device is resident=%@", &v49, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
        [(HMDAccessoryFirmwareUpdateScheduler *)v25 _removeUpdatePolicy];
        v13 = 0;
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      if (sessionState == 3)
      {
        v17 = [HMDAccessoryFirmwareUpdateRegisterTask alloc];
        updateProfile2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateProfile];
        v14 = [(HMDAccessoryFirmwareUpdateRegisterTask *)v17 initWithSession:updateSession profile:updateProfile2 initialDelay:0.0];

        v13 = 3;
      }
    }
  }

  else if (sessionState)
  {
    v14 = 0;
    if (sessionState == 1)
    {
      v15 = [HMDAccessoryFirmwareUpdateStagingTask alloc];
      updateProfile3 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateProfile];
      v14 = -[HMDAccessoryFirmwareUpdateStagingTask initWithSession:profile:userInitiated:delay:](v15, "initWithSession:profile:userInitiated:delay:", updateSession, updateProfile3, [updateSession isUserInitiatedStaging], delayCopy);

      [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _removeUpdatePolicy];
      v13 = 1;
    }
  }

  else
  {
    [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _removeUpdatePolicy];
    v13 = 0;
    v14 = 0;
  }

  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler scheduleWithDelay:]"];
  shouldRun = [(HMDAccessoryFirmwareUpdateApplyTask *)v14 shouldRun];
  v43 = objc_autoreleasePoolPush();
  v44 = selfCopy;
  v45 = HMFGetOSLogHandle();
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
  if (shouldRun)
  {
    if (v46)
    {
      v47 = HMFGetLogIdentifier();
      v49 = 138543618;
      v50 = v47;
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Scheduling new task %@", &v49, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    [(HMDAccessoryFirmwareUpdateScheduler *)v44 setCurrentState:v13];
    [(HMDAccessoryFirmwareUpdateScheduler *)v44 setCurrentTask:v14];
    [(HMDAccessoryFirmwareUpdateScheduler *)v44 _scheduleCurrentTask];
  }

  else
  {
    if (v46)
    {
      v48 = HMFGetLogIdentifier();
      v49 = 138543618;
      v50 = v48;
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Skip scheduling unready task %@", &v49, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    [(HMDAccessoryFirmwareUpdateScheduler *)v44 setCurrentState:0];
    if ([updateSession isUserInitiatedInstall])
    {
      [updateSession updateAvailableSoftwareUpdateState:2];
    }
  }
}

- (void)_handleSchedulingConditionChanged
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateScheduler *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _handleSchedulingConditionChanged]"];
  if ([(HMDAccessoryFirmwareUpdateScheduler *)self needsToStop])
  {

    [(HMDAccessoryFirmwareUpdateScheduler *)self _stop];
  }

  else if ([(HMDAccessoryFirmwareUpdateScheduler *)self needsToScheduleApply]|| [(HMDAccessoryFirmwareUpdateScheduler *)self needsToScheduleStaging]|| [(HMDAccessoryFirmwareUpdateScheduler *)self needsToScheduleRegister])
  {

    [(HMDAccessoryFirmwareUpdateScheduler *)self scheduleWithDelay:0];
  }
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDAccessoryFirmwareUpdateScheduler_handlePrimaryResidentChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __68__HMDAccessoryFirmwareUpdateScheduler_handlePrimaryResidentChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed to %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _handleSchedulingConditionChanged];
}

- (void)handleApplyNotReadyReasonsChanged:(id)changed
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDAccessoryFirmwareUpdateScheduler_handleApplyNotReadyReasonsChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __73__HMDAccessoryFirmwareUpdateScheduler_handleApplyNotReadyReasonsChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) updateProfile];
    [v6 updateNotReadyReasons];
    v7 = HAPUpdateNotReadyReasonsAsString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory apply not ready reasons changed to %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleSchedulingConditionChanged];
}

- (void)handleStagingNotReadyReasonsChanged:(id)changed
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryFirmwareUpdateScheduler_handleStagingNotReadyReasonsChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __75__HMDAccessoryFirmwareUpdateScheduler_handleStagingNotReadyReasonsChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) updateProfile];
    [v6 stagingNotReadyReasons];
    v7 = HAPStagingNotReadyReasonsAsString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory staging not ready reasons changed to %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleSchedulingConditionChanged];
}

- (void)handleUpdateStateChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAccessoryFirmwareUpdateScheduler_handleUpdateStateChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDAccessoryFirmwareUpdateScheduler_handleUpdateStateChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_numberForKey:@"HMDAccessoryFirmwareUpdateStateKey"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [v3 unsignedIntegerValue];
    v8 = HAPFirmwareUpdateStateAsString();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory firmware update status changed to %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _handleSchedulingConditionChanged];
}

- (void)handleAccessoryReachabilityChanged:(id)changed
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDAccessoryFirmwareUpdateScheduler_handleAccessoryReachabilityChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __74__HMDAccessoryFirmwareUpdateScheduler_handleAccessoryReachabilityChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) accessory];
    [v6 isReachable];
    v7 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory reachability changes to %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleSchedulingConditionChanged];
}

- (void)_registerForNotifications
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  firmwareUpdateProfile = [accessory firmwareUpdateProfile];
  if (firmwareUpdateProfile)
  {
    wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter = [wingman notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleUpdateStateChanged_ name:@"HMDAccessoryFirmwareUpdateStateChangedNotification" object:firmwareUpdateProfile];

    wingman2 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter2 = [wingman2 notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleStagingNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateStagingNotReadyReasonsChangedNotification" object:firmwareUpdateProfile];

    wingman3 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter3 = [wingman3 notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleApplyNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateApplyNotReadyReasonsChangedNotification" object:firmwareUpdateProfile];

    wingman4 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter4 = [wingman4 notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleAccessoryReachabilityChanged_ name:@"HMDAccessoryIsReachableNotification" object:accessory];

    wingman5 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter5 = [wingman5 notificationCenter];
    [notificationCenter5 addObserver:self selector:sel_handleAccessoryReachabilityChanged_ name:@"HMDAccessoryIsNotReachableNotification" object:accessory];
  }

  wingman6 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter6 = [wingman6 notificationCenter];
  home = [accessory home];
  residentDeviceManager = [home residentDeviceManager];
  [notificationCenter6 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  wingman7 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter7 = [wingman7 notificationCenter];
  [notificationCenter7 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  wingman8 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter8 = [wingman8 notificationCenter];
  [notificationCenter8 addObserver:self selector:sel_handleBridgeUpdate_ name:@"HMDAccessoryBridgedAccessoryAddedNotification" object:accessory];

  wingman9 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter9 = [wingman9 notificationCenter];
  [notificationCenter9 addObserver:self selector:sel_handleBridgeUpdate_ name:@"HMDAccessoryBridgedAccessoryRemovedNotification" object:accessory];
}

- (HMDAccessoryFirmwareUpdateProfile)updateProfile
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  firmwareUpdateProfile = [accessory firmwareUpdateProfile];

  return firmwareUpdateProfile;
}

- (HMDAccessoryFirmwareUpdateScheduler)initWithAccessory:(id)accessory firmwareUpdateSession:(id)session wingman:(id)wingman workQueue:(id)queue
{
  accessoryCopy = accessory;
  sessionCopy = session;
  wingmanCopy = wingman;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdateScheduler;
  v14 = [(HMDAccessoryFirmwareUpdateScheduler *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    objc_storeWeak(&v15->_updateSession, sessionCopy);
    v16 = wingmanCopy;
    if (!wingmanCopy)
    {
      v16 = objc_alloc_init(HMDAccessoryFirmwareUpdateSchedulerWingman);
    }

    objc_storeStrong(&v15->_wingman, v16);
    if (!wingmanCopy)
    {
    }

    objc_storeStrong(&v15->_workQueue, queue);
    v15->_currentState = 0;
  }

  return v15;
}

- (void)dealloc
{
  [(NSBackgroundActivityScheduler *)self->_backgroundScheduler invalidate];
  notificationCenter = [(HMDAccessoryFirmwareUpdateSchedulerWingman *)self->_wingman notificationCenter];
  [notificationCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateScheduler;
  [(HMDAccessoryFirmwareUpdateScheduler *)&v4 dealloc];
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, uUIDString];

  return v8;
}

- (NSString)description
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Accessory Firmware Update Scheduler %@, %@", name, uniqueIdentifier];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_103573 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_103573, &__block_literal_global_103574);
  }

  v3 = logCategory__hmf_once_v1_103575;

  return v3;
}

void __50__HMDAccessoryFirmwareUpdateScheduler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_103575;
  logCategory__hmf_once_v1_103575 = v0;
}

@end