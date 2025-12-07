@interface HMDAccessoryFirmwareUpdateCameraPolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)_checkStreamingStatus;
- (void)_handleStreamStatusCharacteristicChanges;
- (void)_processStreamingStatus:(id)status;
- (void)configure;
- (void)handleAccessoryConfiguredNotification:(id)notification;
- (void)handleAccessoryUnconfiguredNotification:(id)notification;
- (void)handleCharacteristicValuesChanged:(id)changed;
- (void)handleSettingsChange:(id)change;
- (void)monitorStreamStatus:(BOOL)status;
- (void)registerForNotifications;
@end

@implementation HMDAccessoryFirmwareUpdateCameraPolicy

- (BOOL)evaluate
{
  v21 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  cameraProfileSettingsManager = [accessory cameraProfileSettingsManager];
  currentSettings = [cameraProfileSettingsManager currentSettings];

  if (!currentSettings)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v9;
      v10 = "%{public}@Invalid settings, policy status evaluated to NO";
      goto LABEL_13;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if ([currentSettings currentAccessMode])
  {
    if (HMIsRecordingAllowedForCameraAccessMode())
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v9;
        v10 = "%{public}@Recording enabled, policy status evaluated to NO";
LABEL_13:
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v10, &v19, 0xCu);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    if (HMIsStreamingAllowedForCameraAccessMode())
    {
      [(HMDAccessoryFirmwareUpdateCameraPolicy *)self _checkStreamingStatus];
      v6 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v9;
        v10 = "%{public}@Checking streaming status, policy status temporarily set to NO";
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    HMIsMotionDetectionAllowedForCameraAccessMode();
    v6 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v8 = HMFGetOSLogHandle();
    v13 = 1;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v14 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v14;
    v15 = "%{public}@Policy status evaluated to YES";
LABEL_18:
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v15, &v19, 0xCu);

    goto LABEL_15;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v8 = HMFGetOSLogHandle();
  v13 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v14;
    v15 = "%{public}@Camera access mode is OFF, policy status evaluated to YES";
    goto LABEL_18;
  }

LABEL_15:

  objc_autoreleasePoolPop(v6);
  return v13;
}

- (void)_processStreamingStatus:(id)status
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  statusCopy = status;
  v5 = [statusCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v8 = 0x277CBE000uLL;
    while (2)
    {
      v9 = 0;
      v29 = v6;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(statusCopy);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          v13 = [(HAPTLVBase *)[HMDStreamingStatus alloc] initWithTLVData:v12];
          v14 = v13;
          if (v13 && [(HMDStreamingStatus *)v13 streamingStatus]== 1)
          {

            v23 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v18 = v7;
            v19 = v8;
            v20 = statusCopy;
            v22 = v21 = self;
            *buf = 138543618;
            v35 = v22;
            v36 = 2112;
            v37 = v10;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Invalid value type: %@", buf, 0x16u);

            self = v21;
            statusCopy = v20;
            v8 = v19;
            v7 = v18;
            v6 = v29;
          }

          objc_autoreleasePoolPop(v15);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [statusCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_20:

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = HMFBooleanToString();
    *buf = 138543618;
    v35 = v27;
    v36 = 2112;
    v37 = v28;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (v23 != [(HMDAccessoryFirmwareUpdatePolicy *)selfCopy2 status])
  {
    [(HMDAccessoryFirmwareUpdatePolicy *)selfCopy2 setStatus:v23];
    [(HMDAccessoryFirmwareUpdatePolicy *)selfCopy2 notify:v23];
  }
}

- (void)_checkStreamingStatus
{
  v37 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v5 = [accessory findCharacteristicsByType:*MEMORY[0x277CFE6F0] forServiceType:*MEMORY[0x277CD0E00]];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v28 + 1) + 8 * v9)];
        [array addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

  if ([array count])
  {
    accessory2 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = accessory2;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [array count];
      *buf = 138543618;
      v33 = v17;
      v34 = 2048;
      v35 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Check streaming status, request array size: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    objc_initWeak(buf, selfCopy);
    home = [v13 home];
    v20 = [(HMDAccessoryFirmwareUpdateCameraPolicy *)selfCopy description];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__HMDAccessoryFirmwareUpdateCameraPolicy__checkStreamingStatus__block_invoke;
    v25[3] = &unk_278687F40;
    objc_copyWeak(&v27, buf);
    v26 = array;
    [home readCharacteristicValues:v26 source:1000 sourceForLogging:v20 qualityOfService:-1 withCompletionHandler:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the stream status characteristic from any of the stream services", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

void __63__HMDAccessoryFirmwareUpdateCameraPolicy__checkStreamingStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v33 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    v32 = v6;
    if (v6)
    {
      v30 = WeakRetained;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response for read of stream status", buf, 0xCu);
      }

      v31 = v5;

      objc_autoreleasePoolPop(v8);
      v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = *(a1 + 32);
      v12 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      v13 = v32;
      if (v12)
      {
        v14 = v12;
        v15 = *v40;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v39 + 1) + 8 * i);
            v18 = [v17 characteristic];
            v38 = 0;
            v19 = [v13 hmd_valueOfCharacteristic:v18 error:&v38];
            v20 = v38;

            if (v19)
            {
              [v35 addObject:v19];
            }

            else
            {
              v21 = objc_autoreleasePoolPush();
              v22 = v33;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = HMFGetLogIdentifier();
                v25 = [v17 characteristic];
                *buf = 138543618;
                v45 = v24;
                v46 = 2112;
                v47 = v25;
                _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Read failed for %@", buf, 0x16u);

                v13 = v32;
              }

              objc_autoreleasePoolPop(v21);
            }
          }

          v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v14);
      }

      v26 = [v33 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__HMDAccessoryFirmwareUpdateCameraPolicy__checkStreamingStatus__block_invoke_15;
      block[3] = &unk_27868A750;
      block[4] = v33;
      v37 = v35;
      v6 = v13;
      v27 = v35;
      dispatch_async(v26, block);

      WeakRetained = v30;
      v5 = v31;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 32);
        *buf = 138543874;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v5;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Read of characteristics %@ failed with error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v6 = 0;
    }
  }
}

- (void)handleSettingsChange:(id)change
{
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDAccessoryFirmwareUpdateCameraPolicy_handleSettingsChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __63__HMDAccessoryFirmwareUpdateCameraPolicy_handleSettingsChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Settings changed, updating policy status", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) evaluateAndNotify];
}

- (void)_handleStreamStatusCharacteristicChanges
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v5 = [accessory findCharacteristicsByType:*MEMORY[0x277CFE6F0] forServiceType:*MEMORY[0x277CD0E00]];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        value = [*(*(&v13 + 1) + 8 * v11) value];
        [v6 addObject:value];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(HMDAccessoryFirmwareUpdateCameraPolicy *)self _processStreamingStatus:v6];
}

- (void)handleCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDAccessoryFirmwareUpdateCameraPolicy_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __76__HMDAccessoryFirmwareUpdateCameraPolicy_handleCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v3 count])
  {
    [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v17 = v16 = v3;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      v8 = *MEMORY[0x277CFE6F0];
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = [*(a1 + 40) accessory];
          v12 = [v10 accessory];
          v13 = HMFEqualObjects();

          if (v13)
          {
            v14 = [v10 type];
            v15 = [v14 isEqualToString:v8];

            if (v15)
            {
              [v17 addObject:v10];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    if ([v17 count])
    {
      [*(a1 + 40) _handleStreamStatusCharacteristicChanges];
    }

    v3 = v16;
  }
}

- (void)monitorStreamStatus:(BOOL)status
{
  statusCopy = status;
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  if (accessory)
  {
    v6 = accessory;
    v5 = [accessory findCharacteristicsByType:*MEMORY[0x277CFE6F0] forServiceType:*MEMORY[0x277CD0E00]];
    [v6 enableNotification:statusCopy forCharacteristics:v5 message:0 clientIdentifier:@"com.apple.HomeKitDaemon.firmwareUpdateCameraPolicy"];

    accessory = v6;
  }
}

- (void)handleAccessoryUnconfiguredNotification:(id)notification
{
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryUnconfiguredNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __82__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryUnconfiguredNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is unconfigured, disabling stream status monitoring...", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *(a1 + 32);
  v8 = [v7 accessory];
  [v6 removeObserver:v7 name:@"HMDAccessoryCharacteristicsChangedNotification" object:v8];

  return [*(a1 + 32) monitorStreamStatus:0];
}

- (void)handleAccessoryConfiguredNotification:(id)notification
{
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryConfiguredNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __80__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryConfiguredNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is configured, enabling stream status monitoring...", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *(a1 + 32);
  v8 = [v7 accessory];
  [v6 addObserver:v7 selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v8];

  return [*(a1 + 32) monitorStreamStatus:1];
}

- (void)registerForNotifications
{
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleAccessoryUnconfiguredNotification_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handleSettingsChange_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:accessory];

  if ([accessory isReachable])
  {
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
      accessory2 = [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
      v9 = [accessory isEqual:accessory2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v3 = [accessory hash];

  return v3;
}

- (void)configure
{
  [(HMDAccessoryFirmwareUpdateCameraPolicy *)self registerForNotifications];
  evaluate = [(HMDAccessoryFirmwareUpdateCameraPolicy *)self evaluate];

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:evaluate];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_27605 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_27605, &__block_literal_global_27606);
  }

  v3 = logCategory__hmf_once_v1_27607;

  return v3;
}

void __53__HMDAccessoryFirmwareUpdateCameraPolicy_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_27607;
  logCategory__hmf_once_v1_27607 = v0;
}

@end