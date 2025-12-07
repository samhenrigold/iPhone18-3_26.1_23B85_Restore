@interface HMDLowPowerModeProfile
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_canEnterNewState:(unint64_t)state;
- (BOOL)_shouldManageAccessoryLPM;
- (HMDLowPowerModeProfile)initWithAccessory:(id)accessory powerManagementservice:(id)managementservice workQueue:(id)queue;
- (HMDLowPowerModeProfileDelegate)delegate;
- (NSString)description;
- (id)_validateSupportedSleepConfiguration:(id)configuration;
- (id)connectivityInfo;
- (id)hapAccessory;
- (id)newHAPSuspendedAccessoryFromAccessoryConnectivityInfoWithType:(int64_t)type;
- (id)selectedSleepConfigurationCharacteristic;
- (id)supportedSleepConfigurationCharacteristic;
- (unint64_t)suspendedState;
- (void)_configureAccessoryWithCompletion:(id)completion;
- (void)_enterState:(unint64_t)state;
- (void)_processSelectedSleepConfigurationParametersWithCharacteristic:(id)characteristic;
- (void)_processSupportedSleepConfigurationParametersWithCharacteristic:(id)characteristic;
- (void)_queryAccessoryWithOperation:(int64_t)operation completion:(id)completion;
- (void)_readAccessorySelectedConfigWithCompletion:(id)completion;
- (void)_readFromCharacteristic:(id)characteristic completion:(id)completion;
- (void)_readInitialRequiredCharacteristics;
- (void)_resetStateMachine;
- (void)_runStateMachine;
- (void)_startTimerForType:(unint64_t)type;
- (void)_stateMachine_Idle;
- (void)_stateMachine_backoffOperation;
- (void)_stateMachine_configureAccessory;
- (void)_stateMachine_configureAccessoryCompletion:(id)completion withWowInfos:(id)infos withStatus:(id)status;
- (void)_stateMachine_readAccessoryConfiguration;
- (void)_stateMachine_unconfigureAccessory;
- (void)_stopBackoffTimerForType:(unint64_t)type;
- (void)_unconfigureAccessoryWithCompletion:(id)completion;
- (void)_updateCharacteristicsNotifications:(BOOL)notifications;
- (void)_wakeSuspendedAccessory:(id)accessory activity:(id)activity completion:(id)completion;
- (void)_writeToCharacteristic:(id)characteristic value:(id)value completion:(id)completion;
- (void)dealloc;
- (void)enterState:(unint64_t)state;
- (void)handleAccessoryCharacteristicsChanged:(id)changed;
- (void)handleAccessoryConfigurationChanged:(id)changed;
- (void)handleInitialState;
- (void)registerForMessages;
- (void)timerDidFire:(id)fire;
- (void)unconfigure;
- (void)wakeAccessoryWithCompletion:(id)completion;
- (void)wakeAccessoryWithType:(int64_t)type completion:(id)completion;
@end

@implementation HMDLowPowerModeProfile

- (HMDLowPowerModeProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v22 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  backoffTimer = [(HMDLowPowerModeProfile *)self backoffTimer];

  if (backoffTimer == fireCopy)
  {
    [(HMDLowPowerModeProfile *)self _stopBackoffTimerForType:1];
    if (self->_internalState == 4)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = HMDLowPowerModeStateMachineDescription(selfCopy->_internalOldState);
        v16 = 138543874;
        v17 = v14;
        v18 = 2112;
        v19 = v15;
        v20 = 2112;
        v21 = selfCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Resuming a backed-off state: %@ for %@", &v16, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDLowPowerModeProfile *)selfCopy _enterState:selfCopy->_internalOldState];
    }
  }

  else
  {
    waitForWakeTimer = [(HMDLowPowerModeProfile *)self waitForWakeTimer];

    if (waitForWakeTimer == fireCopy)
    {
      [(HMDLowPowerModeProfile *)self _stopBackoffTimerForType:2];
      pendingWakeBlock = [(HMDLowPowerModeProfile *)self pendingWakeBlock];
      if (pendingWakeBlock)
      {
        suspendedAccessory = [(HMDLowPowerModeProfile *)self suspendedAccessory];

        if (suspendedAccessory)
        {
          v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:24];
          (pendingWakeBlock)[2](pendingWakeBlock, v10);
        }
      }

      [(HMDLowPowerModeProfile *)self setPendingWakeBlock:0];
    }
  }
}

- (void)_stopBackoffTimerForType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (type == 2)
  {
    waitForWakeTimer = [(HMDLowPowerModeProfile *)self waitForWakeTimer];

    if (waitForWakeTimer)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v16;
        v20 = 2112;
        v21 = selfCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Stopping wait for wake timer for %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      waitForWakeTimer2 = [(HMDLowPowerModeProfile *)selfCopy waitForWakeTimer];
      [waitForWakeTimer2 cancel];

      [(HMDLowPowerModeProfile *)selfCopy setWaitForWakeTimer:0];
    }
  }

  else if (type == 1)
  {
    backoffTimer = [(HMDLowPowerModeProfile *)self backoffTimer];

    if (backoffTimer)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = selfCopy2;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Stopping backoff timer for %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      backoffTimer2 = [(HMDLowPowerModeProfile *)selfCopy2 backoffTimer];
      [backoffTimer2 cancel];

      [(HMDLowPowerModeProfile *)selfCopy2 setBackoffTimer:0];
    }
  }
}

- (void)_startTimerForType:(unint64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (type == 1)
  {
    v6 = @"lowPowerModeRetryInterval";
  }

  else
  {
    if (type != 2)
    {
      return;
    }

    v6 = @"lowPowerModeWaitForWakeInterval";
  }

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = [mEMORY[0x277D0F8D0] preferenceForKey:v6];
  numberValue = [v8 numberValue];

  if (numberValue)
  {
    [numberValue doubleValue];
    v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v10];
    [v11 setDelegate:self];
    workQueue2 = [(HMDAccessoryProfile *)self workQueue];
    [v11 setDelegateQueue:workQueue2];

    if (type == 1)
    {
      [(HMDLowPowerModeProfile *)self setBackoffTimer:v11];
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = selfCopy;
        v17 = "%{public}@Starting backoff timer for %@";
LABEL_11:
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, v17, &v19, 0x16u);
      }
    }

    else
    {
      [(HMDLowPowerModeProfile *)self setWaitForWakeTimer:v11];
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = selfCopy2;
        v17 = "%{public}@Starting wait for wake timer for %@";
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v13);
    [v11 resume];
  }
}

- (NSString)description
{
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  v4 = MEMORY[0x277CCACA8];
  identifier = [hapAccessory identifier];
  name = [hapAccessory name];
  [(HMDLowPowerModeProfile *)self suspendedState];
  v7 = HAPAccessorySuspendedStateDescription();
  v8 = HMDLowPowerModeStateMachineDescription([(HMDLowPowerModeProfile *)self internalState]);
  v9 = [v4 stringWithFormat:@"<LPM ID: %@/%@, Suspended State: '%@', Internal State: '%@'>", identifier, name, v7, v8];

  return v9;
}

- (id)newHAPSuspendedAccessoryFromAccessoryConnectivityInfoWithType:(int64_t)type
{
  v32 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  v26 = v25 = self;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  connectivityInfo = [(HMDLowPowerModeProfile *)self connectivityInfo];
  woWLANInfos = [connectivityInfo woWLANInfos];

  v7 = [woWLANInfos countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(woWLANInfos);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (type != 2 || [*(*(&v27 + 1) + 8 * i) wakeType] == 2)
        {
          v12 = objc_alloc(MEMORY[0x277CFEA50]);
          wakePort = [v11 wakePort];
          wakeAddressString = [v11 wakeAddressString];
          wakePattern = [v11 wakePattern];
          v16 = [v12 initWithPort:wakePort wakeAddress:wakeAddressString wakePattern:wakePattern];

          if (v16)
          {
            [v26 addObject:v16];
          }
        }
      }

      v8 = [woWLANInfos countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  if ([v26 count])
  {
    v17 = objc_alloc(MEMORY[0x277CFEC70]);
    hapAccessory = [(HMDLowPowerModeProfile *)v25 hapAccessory];
    name = [hapAccessory name];
    hapAccessory2 = [(HMDLowPowerModeProfile *)v25 hapAccessory];
    identifier = [hapAccessory2 identifier];
    workQueue = [(HMDAccessoryProfile *)v25 workQueue];
    v23 = [v17 initWithName:name identifier:identifier wakeTuples:v26 queue:workQueue];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)suspendedState
{
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  suspendedState = [hapAccessory suspendedState];

  return suspendedState;
}

- (id)supportedSleepConfigurationCharacteristic
{
  powerManagementService = [(HMDLowPowerModeProfile *)self powerManagementService];
  v3 = [powerManagementService findCharacteristicWithType:@"00000251-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)selectedSleepConfigurationCharacteristic
{
  powerManagementService = [(HMDLowPowerModeProfile *)self powerManagementService];
  v3 = [powerManagementService findCharacteristicWithType:@"00000252-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)connectivityInfo
{
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  connectivityInfo = [hapAccessory connectivityInfo];

  return connectivityInfo;
}

- (id)hapAccessory
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)handleAccessoryConfigurationChanged:(id)changed
{
  v25 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [changedCopy name];
    *buf = 138543874;
    v20 = v8;
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = selfCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %@ received by %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  name2 = [changedCopy name];
  v11 = [name2 isEqualToString:@"HMDAccessoryConnectedNotification"];

  if (v11)
  {
    workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
    v13 = workQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__HMDLowPowerModeProfile_handleAccessoryConfigurationChanged___block_invoke;
    v18[3] = &unk_279735D00;
    v18[4] = selfCopy;
    v14 = v18;
LABEL_7:
    dispatch_async(workQueue, v14);

    goto LABEL_8;
  }

  name3 = [changedCopy name];
  v16 = [name3 isEqualToString:@"HMDAccessoryDisconnectedNotification"];

  if (v16)
  {
    workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
    v13 = workQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HMDLowPowerModeProfile_handleAccessoryConfigurationChanged___block_invoke_2;
    v17[3] = &unk_279735D00;
    v17[4] = selfCopy;
    v14 = v17;
    goto LABEL_7;
  }

LABEL_8:
}

void __62__HMDLowPowerModeProfile_handleAccessoryConfigurationChanged___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) suspendedState] == 2)
  {
    v2 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 profile:*(a1 + 32) didUpdateAccessoryState:3];
    }
  }
}

- (void)handleAccessoryCharacteristicsChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDLowPowerModeProfile_handleAccessoryCharacteristicsChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDLowPowerModeProfile_handleAccessoryCharacteristicsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v3 = findMatchingCharacteristic(@"00000251-0000-1000-8000-0026BB765291", v5);
  if (v3)
  {
    [*(a1 + 40) _processSupportedSleepConfigurationParametersWithCharacteristic:v3];
  }

  v4 = findMatchingCharacteristic(@"00000252-0000-1000-8000-0026BB765291", v5);
  if (v4)
  {
    [*(a1 + 40) _processSelectedSleepConfigurationParametersWithCharacteristic:v4];
  }
}

- (BOOL)_shouldManageAccessoryLPM
{
  v20 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];

  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  if (__51__HMDLowPowerModeProfile__shouldManageAccessoryLPM__block_invoke(primaryResidentDevice))
  {
    isCurrentDevice = [primaryResidentDevice isCurrentDevice];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    residentDeviceManager2 = [home residentDeviceManager];
    residentDevices = [residentDeviceManager2 residentDevices];

    v9 = [residentDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(residentDevices);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (__51__HMDLowPowerModeProfile__shouldManageAccessoryLPM__block_invoke(v13))
          {
            isCurrentDevice = [v13 isCurrentDevice];
            goto LABEL_13;
          }
        }

        v10 = [residentDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    isCurrentDevice = 1;
LABEL_13:
  }

  return isCurrentDevice;
}

uint64_t __51__HMDLowPowerModeProfile__shouldManageAccessoryLPM__block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 isReachable] && objc_msgSend(v1, "isEnabled"))
  {
    v2 = [v1 capabilities];
    v3 = [v2 supportsWakeOnLAN];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateCharacteristicsNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v9[1] = *MEMORY[0x277D85DE8];
  selectedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self selectedSleepConfigurationCharacteristic];
  if (selectedSleepConfigurationCharacteristic)
  {
    hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
    v9[0] = selectedSleepConfigurationCharacteristic;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    clientIdentifier = [(HMDLowPowerModeProfile *)self clientIdentifier];
    [hapAccessory setNotificationsEnabled:notificationsCopy forCharacteristics:v7 clientIdentifier:clientIdentifier];
  }
}

- (void)_readInitialRequiredCharacteristics
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  supportedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self supportedSleepConfigurationCharacteristic];
  if (supportedSleepConfigurationCharacteristic)
  {
    [(HMDLowPowerModeProfile *)self _processSupportedSleepConfigurationParametersWithCharacteristic:supportedSleepConfigurationCharacteristic];
  }

  selectedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self selectedSleepConfigurationCharacteristic];
  if (selectedSleepConfigurationCharacteristic)
  {
    [(HMDLowPowerModeProfile *)self _processSelectedSleepConfigurationParametersWithCharacteristic:selectedSleepConfigurationCharacteristic];
  }

  [(HMDLowPowerModeProfile *)self _updateCharacteristicsNotifications:1];
}

- (void)_readFromCharacteristic:(id)characteristic completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [HMDCharacteristicRequest requestWithCharacteristic:characteristicCopy];
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  v18[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  workQueue2 = [(HMDAccessoryProfile *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HMDLowPowerModeProfile__readFromCharacteristic_completion___block_invoke;
  v15[3] = &unk_2797337F8;
  v15[4] = self;
  v16 = characteristicCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = characteristicCopy;
  [hapAccessory readCharacteristicValues:v11 source:1180 queue:workQueue2 completionHandler:v15];
}

void __61__HMDLowPowerModeProfile__readFromCharacteristic_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 error];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      [*(a1 + 40) instanceID];
      v13 = v16 = v3;
      [*(a1 + 40) type];
      v14 = v17 = v9;
      v15 = [v4 error];
      *buf = 138544130;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Reading from characteristic: %@/%@ failed with error: %@", buf, 0x2Au);

      v9 = v17;
      v3 = v16;
    }

    objc_autoreleasePoolPop(v9);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_writeToCharacteristic:(id)characteristic value:(id)value completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  completionCopy = completion;
  valueCopy = value;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristicCopy value:valueCopy authorizationData:0 type:0];

  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  v21[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  workQueue2 = [(HMDAccessoryProfile *)self workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__HMDLowPowerModeProfile__writeToCharacteristic_value_completion___block_invoke;
  v18[3] = &unk_2797337F8;
  v18[4] = self;
  v19 = characteristicCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = characteristicCopy;
  [hapAccessory writeCharacteristicValues:v14 source:1180 queue:workQueue2 completionHandler:v18];
}

void __66__HMDLowPowerModeProfile__writeToCharacteristic_value_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 error];

    v6 = [v3 firstObject];
    v7 = [v6 value];

    if (v5)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) instanceID];
        v13 = [*(a1 + 40) type];
        v16 = 138544130;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Writing to the characteristic: %@/%@ failed with error: %@", &v16, 0x2Au);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v14 = [v3 firstObject];
      v15 = [v14 value];

      v5 = 0;
      v7 = v15;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v7 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_processSelectedSleepConfigurationParametersWithCharacteristic:(id)characteristic
{
  v30 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = value;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_opt_class();
  v10 = deserializeObject(v9, v8);
  v11 = v10;
  if (v10)
  {
    operationStatus = [v10 operationStatus];
    value2 = [operationStatus value];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMDLowPowerModeOperationStatusDescription(value2);
      v24 = 138543874;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = selfCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing selected sleep configuration with status: '%@' for %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (value2 <= 2)
    {
      delegate = [(HMDLowPowerModeProfile *)selfCopy delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate profile:selfCopy didUpdateAccessoryState:value2];
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v23;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse selected sleep configuration with data: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (void)_processSupportedSleepConfigurationParametersWithCharacteristic:(id)characteristic
{
  v25 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDLowPowerModeProfile *)self _shouldManageAccessoryLPM])
  {
    value = [characteristicCopy value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = value;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = objc_opt_class();
    v10 = deserializeObject(v9, v8);
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = selfCopy;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Processing supported sleep configuration for %@.", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      if (![(HMDLowPowerModeProfile *)selfCopy internalState])
      {
        [(HMDLowPowerModeProfile *)selfCopy _enterState:1];
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v20;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse supported sleep configuration with data: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = selfCopy2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Skipping processing characteristic update since a resident is present for %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)_queryAccessoryWithOperation:(int64_t)operation completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((operation - 1) >= 3)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = HMDLowPowerModeOperationTypeDescription(operation);
      *buf = 138543874;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      v47 = 2112;
      v48 = selfCopy;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received invalid operation type: '%@' for %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, v12, 0);
    goto LABEL_22;
  }

  v8 = objc_alloc_init(HMDSelectedSleepConfigurationTLV);
  if (v8)
  {
    v9 = v8;
    v10 = [[HMDSleepConfigurationOperationTypeWrapper alloc] initWithValue:operation];
    [(HMDSelectedSleepConfigurationTLV *)v9 setOperationType:v10];

    selectedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self selectedSleepConfigurationCharacteristic];
    v12 = v9;
    if ([(HMDSelectedSleepConfigurationTLV *)v12 conformsToProtocol:&unk_286660C80])
    {
      v42 = 0;
      v13 = [(HMDSelectedSleepConfigurationTLV *)v12 serializeWithError:&v42];
      v14 = v42;
      if (v14 || !v13)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v18 = v17 = selectedSleepConfigurationCharacteristic;
          *buf = 138543874;
          v44 = v18;
          v45 = 2112;
          v46 = v12;
          v47 = 2112;
          v48 = v14;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize object: %@ with error: %@", buf, 0x20u);

          selectedSleepConfigurationCharacteristic = v17;
        }

        objc_autoreleasePoolPop(v15);
        v19 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
    }

    v13 = v13;
    v19 = v13;
LABEL_14:

    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (v19)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = HMFGetLogIdentifier();
        v30 = HMDLowPowerModeOperationTypeDescription(operation);
        [(HMDAccessoryProfile *)selfCopy2 accessory];
        v31 = v39 = selectedSleepConfigurationCharacteristic;
        identifier = [v31 identifier];
        *buf = 138543874;
        v44 = v29;
        v45 = 2112;
        v46 = v30;
        v47 = 2112;
        v48 = identifier;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Requesting response to operation type: '%@' from accessory: %@", buf, 0x20u);

        selectedSleepConfigurationCharacteristic = v39;
      }

      objc_autoreleasePoolPop(v25);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__HMDLowPowerModeProfile__queryAccessoryWithOperation_completion___block_invoke;
      aBlock[3] = &unk_279728058;
      v41 = completionCopy;
      v33 = _Block_copy(aBlock);
      [(HMDLowPowerModeProfile *)selfCopy2 _writeToCharacteristic:selectedSleepConfigurationCharacteristic value:v19 completion:v33];

      v34 = v41;
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        instanceID = [selectedSleepConfigurationCharacteristic instanceID];
        [selectedSleepConfigurationCharacteristic type];
        v38 = v37 = selectedSleepConfigurationCharacteristic;
        *buf = 138543874;
        v44 = v35;
        v45 = 2112;
        v46 = instanceID;
        v47 = 2112;
        v48 = v38;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize selected sleep configuration value for charactersitic %@/%@", buf, 0x20u);

        selectedSleepConfigurationCharacteristic = v37;
      }

      objc_autoreleasePoolPop(v25);
      v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, v34, 0);
    }

LABEL_22:
  }
}

void __66__HMDLowPowerModeProfile__queryAccessoryWithOperation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = deserializeObject(v6, v5);

  v8 = v9;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_unconfigureAccessoryWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDLowPowerModeProfile__unconfigureAccessoryWithCompletion___block_invoke;
  v7[3] = &unk_279728030;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HMDLowPowerModeProfile *)self _queryAccessoryWithOperation:3 completion:v7];
}

void __62__HMDLowPowerModeProfile__unconfigureAccessoryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {
    v6 = [a3 operationStatus];
    (*(v3 + 16))(v3, 0, [v6 value]);
  }
}

- (void)_configureAccessoryWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  supportedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self supportedSleepConfigurationCharacteristic];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke;
  v8[3] = &unk_279728008;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [(HMDLowPowerModeProfile *)self _readFromCharacteristic:supportedSleepConfigurationCharacteristic completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained accessory];
    if (v5)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v13;
        v41 = 2112;
        v42 = v5;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@LPM Configuration Error: Reading from Support Sleep Configuration resulted in error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [[HMDWoLANInvalidConfigurationLogEvent alloc] initWithAccessory:v9];
      v15 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v15 submitLogEvent:v14 error:v5];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v16 = objc_opt_class();
      v14 = deserializeObject(v16, v6);
      v34 = [v8 _validateSupportedSleepConfiguration:v14];
      if (v34)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v8;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v20;
          v41 = 2112;
          v42 = v34;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@LPM Configuration Error: Validating Support Sleep Configuration resulted in error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [HMDWoLANInvalidConfigurationLogEvent alloc];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
        v23 = [(HMDWoLANInvalidConfigurationLogEvent *)v14 version];
        v24 = [v23 value];
        v25 = [(HMDWoLANInvalidConfigurationLogEvent *)v21 initWithAccessory:v9 maxSupportedWoLANVersion:v22 wolanVersion:v24];

        v26 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v26 submitLogEvent:v25 error:v34];

        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v33 = HMDLowPowerModeWoWLANInfoForSupportedSleepConfiguration(v14);
        v27 = objc_autoreleasePoolPush();
        v28 = v8;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          v32 = [v28 connectivityInfo];
          v30 = [v32 woWLANInfos];
          *buf = 138543874;
          v40 = v31;
          v41 = 2112;
          v42 = v30;
          v43 = 2112;
          v44 = v33;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@LPM Configuration: Attempting to update WoWLANInfo: '%@' -> '%@'", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke_103;
        v35[3] = &unk_279727FE0;
        objc_copyWeak(&v38, (a1 + 40));
        v37 = *(a1 + 32);
        v25 = v33;
        v36 = v25;
        [v28 _queryAccessoryWithOperation:2 completion:v35];

        objc_destroyWeak(&v38);
      }
    }
  }
}

void __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *(v9 + 8);
    if (v11)
    {
      (*(v8 + 16))(v8, v11, v7, 0);
    }

    else
    {
      v10 = [v5 operationStatus];
      (*(v8 + 16))(v8, 0, v7, v10);
    }
  }
}

- (id)_validateSupportedSleepConfiguration:(id)configuration
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (!configurationCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v17;
      v18 = "%{public}@Supported Sleep Configuration Validation Failure: parameter is nil, deserialization failed.";
      v19 = v12;
      v20 = 12;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, v18, &v24, v20);
    }

LABEL_12:
    v15 = 3;
LABEL_13:

    objc_autoreleasePoolPop(v10);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v15];
    goto LABEL_14;
  }

  version = [configurationCopy version];

  if (!version)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = v5;
      v18 = "%{public}@Supported Sleep Configuration Validation Failure: Version is nil: %@";
      v19 = v12;
      v20 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  version2 = [v5 version];
  value = [version2 value];
  unsignedCharValue = [value unsignedCharValue];

  if (unsignedCharValue >= 2)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:unsignedCharValue];
      v24 = 138544130;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = &unk_2866282E8;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Supported Sleep Configuration Validation Failure: Accessory's supported LPM version: %@ is greater than the current supported device version: %@, from Supported Sleep Configuration: %@", &v24, 0x2Au);
    }

    v15 = 48;
    goto LABEL_13;
  }

  v22 = 0;
LABEL_14:

  return v22;
}

- (void)_readAccessorySelectedConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDLowPowerModeProfile__readAccessorySelectedConfigWithCompletion___block_invoke;
  v7[3] = &unk_279727FB8;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(HMDLowPowerModeProfile *)self _queryAccessoryWithOperation:1 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __69__HMDLowPowerModeProfile__readAccessorySelectedConfigWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (v9)
    {
      (*(v7 + 16))(v7, v9, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v8 = [v5 operationStatus];
      (*(v7 + 16))(v7, 0, [v8 value]);
    }
  }
}

- (void)_stateMachine_unconfigureAccessory
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HMDLowPowerModeProfile__stateMachine_unconfigureAccessory__block_invoke;
  v4[3] = &unk_279727F68;
  objc_copyWeak(&v5, &location);
  [(HMDLowPowerModeProfile *)self _unconfigureAccessoryWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__HMDLowPowerModeProfile__stateMachine_unconfigureAccessory__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDLowPowerModeOperationStatusDescription(a3);
      *v25 = 138544130;
      *&v25[4] = v10;
      *&v25[12] = 2112;
      *&v25[14] = v8;
      *&v25[22] = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@LPM SM Unconfigure: Did unconfigure %@ with status: '%@' and error: %@", v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v8 delegate];
    if (a3)
    {
      if (a3 == 3)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v8;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
LABEL_10:
          v16 = HMFGetLogIdentifier();
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "retryCount")}];
          *v25 = 138543874;
          *&v25[4] = v16;
          *&v25[12] = 2112;
          *&v25[14] = v14;
          *&v25[22] = 2112;
          v26 = v17;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Unconfigure: Need to backoff and retry unconfiguring of %@. Retry count: %@", v25, 0x20u);
        }

LABEL_11:

        objc_autoreleasePoolPop(v13);
        v18 = 4;
LABEL_20:
        [v8 enterState:{v18, *v25, *&v25[8], v26}];

        goto LABEL_21;
      }

      if (a3 == 1)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v8;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = HMDLowPowerModeOperationStatusDescription(a3);
        v24 = HMDLowPowerModeOperationTypeDescription(2);
        *v25 = 138544130;
        *&v25[4] = v22;
        *&v25[12] = 2112;
        *&v25[14] = v23;
        *&v25[22] = 2112;
        v26 = v24;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Unconfigure: Received invalid status: %@ to operation: %@ with error: %@", v25, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v12 profile:v8 didUpdateWoWLANInfos:0];
      }

      if (objc_opt_respondsToSelector())
      {
        [v12 profile:v8 didUpdateAccessoryState:0];
      }
    }

    v18 = 0;
    goto LABEL_20;
  }

LABEL_21:
}

- (void)_stateMachine_configureAccessoryCompletion:(id)completion withWowInfos:(id)infos withStatus:(id)status
{
  v44 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  infosCopy = infos;
  statusCopy = status;
  delegate = [(HMDLowPowerModeProfile *)self delegate];
  if (!completionCopy && statusCopy)
  {
    value = [statusCopy value];
    if (value)
    {
      if (value != 3)
      {
        if (value == 1)
        {
          if (objc_opt_respondsToSelector())
          {
            [delegate profile:self didUpdateWoWLANInfos:infosCopy];
          }

          v13 = 0;
          v14 = 1;
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          selfCopy = self;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            v33 = HMDLowPowerModeOperationStatusDescription([statusCopy value]);
            HMDLowPowerModeOperationTypeDescription(2);
            v34 = v35 = v29;
            *buf = 138544130;
            v37 = v32;
            v38 = 2112;
            v39 = v33;
            v40 = 2112;
            v41 = v34;
            v42 = 2112;
            v43 = 0;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Configuration: Received invalid status: %@ to operation: %@ with error: %@", buf, 0x2Au);

            v29 = v35;
          }

          objc_autoreleasePoolPop(v29);
          v14 = 0;
          v13 = 0;
        }

LABEL_25:
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDLowPowerModeProfile retryCount](selfCopy2, "retryCount")}];
        *buf = 138543874;
        v37 = v27;
        v38 = 2112;
        v39 = selfCopy2;
        v40 = 2112;
        v41 = v28;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Configure: Need to backoff and retry configuring of %@. Retry count: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
    }

    v14 = 0;
    v13 = 4;
    goto LABEL_25;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (completionCopy)
  {
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = HMFGetLogIdentifier();
    accessory = [(HMDAccessoryProfile *)selfCopy3 accessory];
    *buf = 138543874;
    v37 = v19;
    v38 = 2112;
    v39 = accessory;
    v40 = 2112;
    v41 = completionCopy;
    v21 = "%{public}@LPM SM Configure Error: configuring accessory %@ returned error: %@";
    v22 = v17;
    v23 = 32;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = HMFGetLogIdentifier();
    accessory = [(HMDAccessoryProfile *)selfCopy3 accessory];
    *buf = 138543618;
    v37 = v19;
    v38 = 2112;
    v39 = accessory;
    v21 = "%{public}@LPM SM Configure Error: configuring accessory %@ returned null status";
    v22 = v17;
    v23 = 22;
  }

  _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);

LABEL_15:
  objc_autoreleasePoolPop(v15);
  v14 = 0;
  v13 = 0;
  if (objc_opt_respondsToSelector())
  {
LABEL_16:
    [delegate profile:self didUpdateAccessoryState:v14];
  }

LABEL_17:
  [(HMDLowPowerModeProfile *)self enterState:v13];
}

- (void)_stateMachine_configureAccessory
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = selfCopy;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Configure: Starting configuration of accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDLowPowerModeProfile__stateMachine_configureAccessory__block_invoke;
  v8[3] = &unk_279727F90;
  objc_copyWeak(&v9, &location);
  [(HMDLowPowerModeProfile *)selfCopy _configureAccessoryWithCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__HMDLowPowerModeProfile__stateMachine_configureAccessory__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _stateMachine_configureAccessoryCompletion:v11 withWowInfos:v7 withStatus:v8];
  }
}

- (void)_stateMachine_readAccessoryConfiguration
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HMDLowPowerModeProfile__stateMachine_readAccessoryConfiguration__block_invoke;
  v4[3] = &unk_279727F68;
  objc_copyWeak(&v5, &location);
  [(HMDLowPowerModeProfile *)self _readAccessorySelectedConfigWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__HMDLowPowerModeProfile__stateMachine_readAccessoryConfiguration__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDLowPowerModeOperationStatusDescription(a3);
      v38 = 138544130;
      v39 = v10;
      v40 = 2112;
      v41 = v8;
      v42 = 2112;
      v43 = v11;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@LPM SM Read Config: Did read configuration of %@ with status: '%@' and error: %@", &v38, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    if (a3 == 3)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v8;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "retryCount")}];
        v38 = 138543874;
        v39 = v24;
        v40 = 2112;
        v41 = v22;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Read Config: Need to backoff and retry reading configuration for %@. Retry count: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v18 = 4;
    }

    else if (a3 == 1)
    {
      v19 = [v8 connectivityInfo];
      v20 = [v19 woWLANInfo];

      if (v20)
      {
        v18 = 0;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v8;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v33 accessory];
          v37 = [v36 identifier];
          v38 = 138543874;
          v39 = v35;
          v40 = 2112;
          v41 = v37;
          v42 = 2112;
          v43 = 0;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Read Config: Need to reconfigure the accessory: %@. Accessory has stale WoWLANInfo: %@.", &v38, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v18 = 2;
      }
    }

    else if (a3)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v8;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = HMDLowPowerModeOperationStatusDescription(a3);
        v31 = HMDLowPowerModeOperationTypeDescription(2);
        v38 = 138544130;
        v39 = v29;
        v40 = 2112;
        v41 = v30;
        v42 = 2112;
        v43 = v31;
        v44 = 2112;
        v45 = v5;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Read Config: Received invalid status: '%@' to operation: '%@' with error: %@", &v38, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v18 = 0;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v8;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v13 accessory];
        v17 = [v16 identifier];
        v38 = 138543618;
        v39 = v15;
        v40 = 2112;
        v41 = v17;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Read Config: Need to configure the accessory: %@. Accessory is unconfigured.", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v18 = 2;
    }

    [v8 enterState:v18];
  }
}

- (void)_stateMachine_Idle
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLowPowerModeProfile *)self _stopBackoffTimerForType:1];
}

- (void)_stateMachine_backoffOperation
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLowPowerModeProfile *)self _startTimerForType:1];
}

- (void)_enterState:(unint64_t)state
{
  v31 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDLowPowerModeProfile *)self _canEnterNewState:state])
  {
    if (state == 4 || (internalState = self->_internalState, internalState == state))
    {
      ++self->_retryCount;
      internalState = self->_internalState;
    }

    self->_internalOldState = internalState;
    self->_internalState = state;
    if (self->_internalOldState == 4)
    {
      self->_internalOldState = 0;
    }

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [mEMORY[0x277D0F8D0] preferenceForKey:@"lowPowerModeRetryCount"];
    numberValue = [v8 numberValue];

    retryCount = self->_retryCount;
    if (retryCount > [numberValue unsignedIntegerValue])
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_retryCount - 1];
        v16 = HMDLowPowerModeStateMachineDescription(state);
        v23 = 138544130;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = selfCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Resetting state machine. Tried '%@' times for operation: '%@' for %@", &v23, 0x2Au);
      }

      objc_autoreleasePoolPop(v11);
      self->_retryCount = 0;
      [(HMDLowPowerModeProfile *)selfCopy _resetStateMachine];
    }

    [(HMDLowPowerModeProfile *)self _runStateMachine];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = HMDLowPowerModeStateMachineDescription(selfCopy2->_internalState);
      v22 = HMDLowPowerModeStateMachineDescription(state);
      v23 = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid machine state: %@ -> %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)enterState:(unint64_t)state
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__HMDLowPowerModeProfile_enterState___block_invoke;
  v6[3] = &unk_279734BB8;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(workQueue, v6);
}

- (BOOL)_canEnterNewState:(unint64_t)state
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalState = self->_internalState;
  if (internalState <= 1)
  {
    if (internalState)
    {
      if (internalState != 1 || state >= 5)
      {
        goto LABEL_20;
      }

      v8 = 29;
      goto LABEL_17;
    }

    if (state < 2)
    {
LABEL_19:
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

LABEL_20:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  if (internalState != 2)
  {
    if (internalState != 3)
    {
      if (internalState != 4 || state - 1 >= 3)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (state < 5)
    {
      v8 = 25;
LABEL_17:
      v9 = v8 >> state;
      return v9 & 1;
    }

    goto LABEL_20;
  }

  if (state >= 5)
  {
    goto LABEL_20;
  }

  LOBYTE(v9) = state ^ 1;
  return v9 & 1;
}

- (void)_resetStateMachine
{
  self->_internalState = 0;
  self->_internalOldState = 0;
  self->_retryCount = 0;
}

- (void)_runStateMachine
{
  v28 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMDLowPowerModeStateMachineDescription(selfCopy->_internalOldState);
    v9 = HMDLowPowerModeStateMachineDescription(selfCopy->_internalState);
    v20 = 138544130;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = selfCopy;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@LPM running state: '%@' -> '%@' for %@", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  if (!selfCopy->_internalState)
  {
    goto LABEL_16;
  }

  if (![(HMDLowPowerModeProfile *)selfCopy _shouldManageAccessoryLPM])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Skipping processing state machine update since a resident is present for %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDLowPowerModeProfile *)v11 _enterState:0];
  }

  internalState = selfCopy->_internalState;
  if (internalState > 1)
  {
    switch(internalState)
    {
      case 2:
        [(HMDLowPowerModeProfile *)selfCopy _stateMachine_configureAccessory];
        return;
      case 3:
        [(HMDLowPowerModeProfile *)selfCopy _stateMachine_unconfigureAccessory];
        return;
      case 4:
        [(HMDLowPowerModeProfile *)selfCopy _stateMachine_backoffOperation];
        return;
    }

    goto LABEL_20;
  }

  if (!internalState)
  {
LABEL_16:
    [(HMDLowPowerModeProfile *)selfCopy _stateMachine_Idle];
    return;
  }

  if (internalState == 1)
  {
    [(HMDLowPowerModeProfile *)selfCopy _stateMachine_readAccessoryConfiguration];
    return;
  }

LABEL_20:
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_internalState];
    v20 = 138543874;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Invalid LPM state: %@ for %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
}

- (void)_wakeSuspendedAccessory:(id)accessory activity:(id)activity completion:(id)completion
{
  accessoryCopy = accessory;
  activityCopy = activity;
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke;
  aBlock[3] = &unk_2797346E0;
  objc_copyWeak(&v22, &location);
  v12 = accessoryCopy;
  v20 = v12;
  v13 = completionCopy;
  v21 = v13;
  v14 = _Block_copy(aBlock);
  [(HMDLowPowerModeProfile *)self setPendingWakeBlock:v14];
  [activityCopy markWithReason:@"Waking Suspended Accessory"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke_91;
  v16[3] = &unk_279734508;
  objc_copyWeak(&v18, &location);
  v15 = v14;
  v17 = v15;
  [v12 wakeWithCompletion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained pendingWakeBlock];

    if (v6)
    {
      [v5 setSuspendedAccessory:0];
      [v5 setPendingWakeBlock:0];
      [v5 _stopBackoffTimerForType:2];
      v7 = objc_autoreleasePoolPush();
      v8 = v5;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 32);
        v12 = 138543874;
        v13 = v10;
        v14 = 2112;
        v15 = v3;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Pending wake block was called with error: %@ for %@", &v12, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke_91(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [WeakRetained _startTimerForType:2];
  }
}

- (void)wakeAccessoryWithType:(int64_t)type completion:(id)completion
{
  v96 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_alloc(MEMORY[0x277D0F770]);
  v10 = MEMORY[0x277CCACA8];
  v11 = MEMORY[0x259C01AE0](self, a2);
  v12 = [v10 stringWithFormat:@"%@, %s:%ld", v11, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/PowerManagement/WakeOnLAN/HMDLowPowerModeProfile.m", 201];
  v13 = [v9 initWithName:v12];

  suspendedAccessory = [(HMDLowPowerModeProfile *)self suspendedAccessory];

  if (suspendedAccessory)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      suspendedAccessory2 = [(HMDLowPowerModeProfile *)selfCopy suspendedAccessory];
      *buf = 138543874;
      v85 = v18;
      v86 = 2112;
      v87 = selfCopy;
      v88 = 2112;
      v89 = suspendedAccessory2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Wake operation is in progress for %@ with suspended accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 15;
LABEL_9:
    woWLANInfo = [v20 hmErrorWithCode:v21];
    completionCopy[2](completionCopy, 0, woWLANInfo);
    goto LABEL_10;
  }

  if ((type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      *buf = 138543874;
      v85 = v25;
      v86 = 2112;
      v87 = v26;
      v88 = 2112;
      v89 = selfCopy2;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid wake up type is used '%@' for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 3;
    goto LABEL_9;
  }

  connectivityInfo = [(HMDLowPowerModeProfile *)self connectivityInfo];
  woWLANInfo = [connectivityInfo woWLANInfo];

  v76 = [(HMDLowPowerModeProfile *)self newHAPSuspendedAccessoryFromAccessoryConnectivityInfoWithType:type];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  availableBSPsCount = [home availableBSPsCount];
  unsignedIntegerValue = [availableBSPsCount unsignedIntegerValue];

  v31 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v33 = HMFGetOSLogHandle();
  v77 = accessory;
  v74 = v13;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    identifier = [accessory identifier];
    v75 = v31;
    v68 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(woWLANInfo, "version")}];
    v36 = v71 = selfCopy3;
    v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(woWLANInfo, "wakePacketType")}];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    *buf = 138544642;
    v85 = v34;
    v86 = 2112;
    v87 = identifier;
    v88 = 2112;
    v89 = v68;
    v90 = 2112;
    v91 = v36;
    v92 = 2112;
    v93 = v37;
    v94 = 2112;
    v95 = v38;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Waking suspended accessory: %@, wakeType: %@, version: %@, wakePacketType: %@, numBSP: %@", buf, 0x3Eu);

    v31 = v75;
    accessory = v77;

    selfCopy3 = v71;
    v13 = v74;
  }

  objc_autoreleasePoolPop(v31);
  v39 = v13;
  [accessory uuid];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(woWLANInfo, "version")}];
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(woWLANInfo, "wakePacketType")}];
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v69 = v39;

  v44 = -[HMDAccessoryPowerManagementLogEvent initWithAccessory:wolanWakeUpType:version:]([HMDAccessoryPowerManagementLogEvent alloc], "initWithAccessory:wolanWakeUpType:version:", accessory, type, [woWLANInfo version]);
  v45 = +[HMDMetricsManager sharedLogEventSubmitter];
  v72 = v44;
  [v45 submitLogEvent:v44];

  hapAccessory = [(HMDLowPowerModeProfile *)selfCopy3 hapAccessory];
  hapAccessory2 = [(HMDLowPowerModeProfile *)selfCopy3 hapAccessory];
  identifier2 = [hapAccessory2 identifier];
  v49 = [hapAccessory matchingHAPAccessoryWithServerIdentifier:identifier2 linkType:1];

  server = [(HMDLowPowerModeProfile *)v49 server];
  if ([server wakeNumber])
  {
    v51 = v69;
    [accessory uuid];

    v52 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];

    v54 = v76;
    [server setSuspendedAccessory:v76];
    v55 = objc_autoreleasePoolPush();
    v56 = selfCopy3;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      identifier3 = [v77 identifier];
      [MEMORY[0x277CCABB0] numberWithInteger:type];
      v60 = v70 = v55;
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      *buf = 138544642;
      v85 = v58;
      v86 = 2112;
      v87 = identifier3;
      v88 = 2112;
      v89 = v49;
      v90 = 2112;
      v91 = v76;
      v92 = 2112;
      v93 = v60;
      v94 = 2112;
      v95 = v61;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Found accessory server for %@. Returning the HAPAccessory: %@. Wake will be via suspended accessory: %@, wakeType: %@, numBSP: %@", buf, 0x3Eu);

      v55 = v70;
      v54 = v76;
    }

    objc_autoreleasePoolPop(v55);
    v62 = v49;
    (completionCopy)[2](completionCopy, v49, 0);
    v13 = v74;
  }

  else
  {
    v54 = v76;
    [(HMDLowPowerModeProfile *)selfCopy3 setSuspendedAccessory:v76];
    hapAccessory3 = [(HMDLowPowerModeProfile *)selfCopy3 hapAccessory];
    home2 = [hapAccessory3 home];
    accessoryBrowser = [home2 accessoryBrowser];

    hapAccessory4 = [(HMDLowPowerModeProfile *)selfCopy3 hapAccessory];
    identifier4 = [hapAccessory4 identifier];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __59__HMDLowPowerModeProfile_wakeAccessoryWithType_completion___block_invoke;
    v79[3] = &unk_279727F40;
    v80 = v76;
    v81 = selfCopy3;
    v82 = v69;
    v83 = completionCopy;
    [accessoryBrowser currentlyFoundHAPAccessoryServerWithIdentifier:identifier4 linkType:1 completion:v79];

    v62 = v49;
  }

LABEL_10:
}

void __59__HMDLowPowerModeProfile_wakeAccessoryWithType_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 wakeNumber])
  {
    v14 = 0;
    [v5 getBonjourDeviceDNSName:&v14];
    v6 = v14;
    [a1[4] setDnsName:v6];
  }

  v7 = [a1[5] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLowPowerModeProfile_wakeAccessoryWithType_completion___block_invoke_2;
  block[3] = &unk_279734578;
  v9 = *(a1 + 2);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v12 = a1[6];
  v13 = a1[7];
  dispatch_async(v7, block);
}

- (void)wakeAccessoryWithCompletion:(id)completion
{
  completionCopy = completion;
  connectivityInfo = [(HMDLowPowerModeProfile *)self connectivityInfo];
  woWLANInfo = [connectivityInfo woWLANInfo];
  wakeType = [woWLANInfo wakeType];

  if (wakeType == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [(HMDLowPowerModeProfile *)self wakeAccessoryWithType:v7 completion:completionCopy];
}

- (void)dealloc
{
  [(HMDLowPowerModeProfile *)self unconfigure];
  v3.receiver = self;
  v3.super_class = HMDLowPowerModeProfile;
  [(HMDLowPowerModeProfile *)&v3 dealloc];
}

- (void)unconfigure
{
  v4.receiver = self;
  v4.super_class = HMDLowPowerModeProfile;
  [(HMDAccessoryProfile *)&v4 unconfigure];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(HMDLowPowerModeProfile *)self _updateCharacteristicsNotifications:0];
}

- (void)handleInitialState
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4.receiver = self;
  v4.super_class = HMDLowPowerModeProfile;
  [(HMDAccessoryProfile *)&v4 handleInitialState];
  [(HMDLowPowerModeProfile *)self _readInitialRequiredCharacteristics];
}

- (void)registerForMessages
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13.receiver = self;
  v13.super_class = HMDLowPowerModeProfile;
  [(HMDAccessoryProfile *)&v13 registerForMessages];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = home;
    v18 = 2112;
    v19 = selfCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for messages with home: %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_handleAccessoryCharacteristicsChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel_handleAccessoryConfigurationChanged_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:selfCopy selector:sel_handleAccessoryConfigurationChanged_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];
}

- (HMDLowPowerModeProfile)initWithAccessory:(id)accessory powerManagementservice:(id)managementservice workQueue:(id)queue
{
  v33[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  managementserviceCopy = managementservice;
  queueCopy = queue;
  if (HMDLowPowerModeUUIDFromAccessory_onceToken != -1)
  {
    dispatch_once(&HMDLowPowerModeUUIDFromAccessory_onceToken, &__block_literal_global_290);
  }

  v11 = [MEMORY[0x277CBEB28] dataWithLength:16];
  uuid = [accessoryCopy uuid];
  [uuid getUUIDBytes:{objc_msgSend(v11, "mutableBytes")}];

  v13 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:HMDLowPowerModeUUIDFromAccessory_namespace data:v11];

  v33[0] = managementserviceCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v32.receiver = self;
  v32.super_class = HMDLowPowerModeProfile;
  v15 = [(HMDAccessoryProfile *)&v32 initWithAccessory:accessoryCopy uniqueIdentifier:v13 services:v14 workQueue:queueCopy];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v19 = [v16 stringWithFormat:@"%@.HMDLowPowerMode.%@", @"com.apple.HomeKitDaemon", uUIDString];
    clientIdentifier = v15->_clientIdentifier;
    v15->_clientIdentifier = v19;

    home = [accessoryCopy home];
    name = [home name];

    v23 = isInternalBuild();
    v24 = MEMORY[0x277CCACA8];
    if (v23)
    {
      name2 = [accessoryCopy name];
      uuid2 = [accessoryCopy uuid];
      uniqueIdentifier = [accessoryCopy uniqueIdentifier];
      v28 = [v24 stringWithFormat:@"%@/%@/%@/%@", name, name2, uuid2, uniqueIdentifier];
      logIdentifier = v15->_logIdentifier;
      v15->_logIdentifier = v28;
    }

    else
    {
      name2 = [accessoryCopy uuid];
      uuid2 = [accessoryCopy uniqueIdentifier];
      v30 = [v24 stringWithFormat:@"%@/%@/%@", name, name2, uuid2];
      uniqueIdentifier = v15->_logIdentifier;
      v15->_logIdentifier = v30;
    }

    objc_storeWeak(&v15->_delegate, accessoryCopy);
    [(HMDLowPowerModeProfile *)v15 _resetStateMachine];
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t51 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t51, &__block_literal_global_120);
  }

  v3 = logCategory__hmf_once_v52;

  return v3;
}

uint64_t __37__HMDLowPowerModeProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v52;
  logCategory__hmf_once_v52 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HMDLowPowerModeProfile;
  v5 = objc_msgSendSuper2(&v7, sel_messageBindingForDispatcher_message_receiver_, dispatcher, message, receiver);

  return v5;
}

@end