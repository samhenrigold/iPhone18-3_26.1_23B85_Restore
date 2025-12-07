@interface HMDAccessoryFirmwareUpdateProfile
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryFirmwareUpdateProfile)initWithAccessory:(id)accessory service:(id)service workQueue:(id)queue;
- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithCompletion:(id)completion;
- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithStagedFirmwareVersion:(id)version;
- (HMDHAPAccessory)accessory;
- (HMDService)service;
- (NSString)description;
- (id)characteristics;
- (id)firmwareVersionCharacteristic;
- (id)logIdentifier;
- (id)matterFirmwareVersionCharacteristic;
- (id)privateDescription;
- (id)readinessCharacteristic;
- (id)statusCharacteristic;
- (void)__handleAccessoryIsReachable;
- (void)__handleFirmwareUpdateReadinessUpdate:(id)update;
- (void)__handleFirmwareUpdateStatusUpdate:(id)update;
- (void)__handleFirmwareVersionUpdate:(id)update;
- (void)__handleStagedFirmwareVersionUpdate:(id)update;
- (void)_enableCharacteristicsNotifications:(BOOL)notifications;
- (void)_handleCharacteristicChanges:(id)changes;
- (void)_registerForNotifications;
- (void)_updateAccessoryFirmwareVersion:(id)version;
- (void)_updateFirmwareStagingNotReadyReasons:(unint64_t)reasons;
- (void)_updateFirmwareUpdateNotReadyReasons:(unint64_t)reasons;
- (void)_updateFirmwareUpdateState:(int64_t)state;
- (void)_updateStagedFirmwareVersion:(id)version;
- (void)configure;
- (void)dealloc;
- (void)handleAccessoryIsReachable:(id)reachable;
- (void)handleCharacteristicValuesChanged:(id)changed;
- (void)monitorCharacteristics:(BOOL)characteristics;
- (void)readAndProcessCharacteristics:(id)characteristics withCompletion:(id)completion;
@end

@implementation HMDAccessoryFirmwareUpdateProfile

- (HMDService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)__handleFirmwareVersionUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  value = [updateCopy value];
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

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v8];
    [(HMDAccessoryFirmwareUpdateProfile *)self setCurrentVersion:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = accessory;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Update fetched firmware version not available for accessory %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_updateStagedFirmwareVersion:(id)version
{
  v23 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  if (versionCopy)
  {
    v6 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:versionCopy];
  }

  else
  {
    v6 = 0;
  }

  stagedFirmwareVersion = [(HMDAccessoryFirmwareUpdateProfile *)self stagedFirmwareVersion];
  if (!stagedFirmwareVersion || (-[HMDAccessoryFirmwareUpdateProfile stagedFirmwareVersion](self, "stagedFirmwareVersion"), v3 = objc_claimAutoreleasedReturnValue(), ([v3 isEqualToVersion:v6] & 1) != 0))
  {
    stagedFirmwareVersion2 = [(HMDAccessoryFirmwareUpdateProfile *)self stagedFirmwareVersion];
    if (stagedFirmwareVersion2)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
    }

    v10 = !v9;

    if (stagedFirmwareVersion)
    {

      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (!v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    stagedFirmwareVersion3 = [(HMDAccessoryFirmwareUpdateProfile *)selfCopy stagedFirmwareVersion];
    v17 = 138543874;
    v18 = v14;
    v19 = 2112;
    v20 = stagedFirmwareVersion3;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@StagedFirmwareVersion changed from %@ to %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDAccessoryFirmwareUpdateProfile *)selfCopy setStagedFirmwareVersion:v6];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HMDAccessoryStagedFirmwareVersionChangedNotification" object:selfCopy];

LABEL_20:
}

- (void)__handleStagedFirmwareVersionUpdate:(id)update
{
  updateCopy = update;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  value = [updateCopy value];

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

  [(HMDAccessoryFirmwareUpdateProfile *)self _updateStagedFirmwareVersion:v8];
}

- (void)__handleFirmwareUpdateReadinessUpdate:(id)update
{
  v29 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  value = [updateCopy value];
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

  v18 = 0;
  v9 = [MEMORY[0x277CFEB50] parsedFromData:v8 error:&v18];
  v10 = v18;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      value2 = [updateCopy value];
      *buf = 138544386;
      v20 = v14;
      v21 = 2112;
      v22 = updateCopy;
      v23 = 2112;
      v24 = value2;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse firmware update readiness (%@) - characteristic %@ value %@ error %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    stagingNotReadyReasons = [v9 stagingNotReadyReasons];
    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareStagingNotReadyReasons:](self, "_updateFirmwareStagingNotReadyReasons:", [stagingNotReadyReasons value]);

    updateNotReadyReasons = [v9 updateNotReadyReasons];
    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareUpdateNotReadyReasons:](self, "_updateFirmwareUpdateNotReadyReasons:", [updateNotReadyReasons value]);
  }
}

- (void)__handleFirmwareUpdateStatusUpdate:(id)update
{
  v39 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  value = [updateCopy value];
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

  v28 = 0;
  v9 = [MEMORY[0x277CFEB58] parsedFromData:v8 error:&v28];
  v10 = v28;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      value2 = [updateCopy value];
      *buf = 138544386;
      v30 = v14;
      v31 = 2112;
      v32 = updateCopy;
      v33 = 2112;
      v34 = value2;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse firmware update status (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_15:
    }

LABEL_16:

    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  state = [v9 state];

  if (!state)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v14;
    v19 = "%{public}@Missing update state in Firmware Update Status TLV";
    v20 = v13;
    v21 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  state2 = [v9 state];
  if ([state2 value] == 3)
  {
    stagedFirmwareVersion = [v9 stagedFirmwareVersion];

    if (!stagedFirmwareVersion)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v14;
      v19 = "%{public}@Dropping Firmware Staging Status Success without a Staged Firmware Version";
      v20 = v13;
      v21 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&dword_229538000, v20, v21, v19, buf, 0xCu);
      goto LABEL_15;
    }
  }

  else
  {
  }

  state3 = [v9 state];

  if (state3)
  {
    state4 = [v9 state];
    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareUpdateState:](self, "_updateFirmwareUpdateState:", [state4 value]);
  }

  updateDuration = [v9 updateDuration];

  if (updateDuration)
  {
    updateDuration2 = [v9 updateDuration];
    value3 = [updateDuration2 value];

    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareUpdateDuration:](self, "_updateFirmwareUpdateDuration:", [value3 unsignedIntegerValue]);
  }

  stagedFirmwareVersion2 = [v9 stagedFirmwareVersion];
  [(HMDAccessoryFirmwareUpdateProfile *)self _updateStagedFirmwareVersion:stagedFirmwareVersion2];

LABEL_17:
}

- (void)_handleCharacteristicChanges:(id)changes
{
  v42 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = changesCopy;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v36;
    v34 = *MEMORY[0x277CCF8B8];
    v33 = *MEMORY[0x277CFE670];
    *&v9 = 138543362;
    v31 = v9;
    v32 = accessory;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        type = [v13 type];
        v15 = [type isEqualToString:@"00000235-0000-1000-8000-0026BB765291"];

        if (v15)
        {
          [(HMDAccessoryFirmwareUpdateProfile *)self __handleFirmwareUpdateStatusUpdate:v13];
          continue;
        }

        type2 = [v13 type];
        v17 = [type2 isEqualToString:@"00000234-0000-1000-8000-0026BB765291"];

        if (v17)
        {
          [(HMDAccessoryFirmwareUpdateProfile *)self __handleFirmwareUpdateReadinessUpdate:v13];
          continue;
        }

        type3 = [v13 type];
        v19 = [type3 isEqualToString:@"00000249-0000-1000-8000-0026BB765291"];

        if (v19)
        {
          [(HMDAccessoryFirmwareUpdateProfile *)self __handleStagedFirmwareVersionUpdate:v13];
          continue;
        }

        type4 = [v13 type];
        v21 = [type4 isEqualToString:v34];

        if (v21)
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = HMFGetLogIdentifier();
            *buf = v31;
            v40 = v25;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Firmware Update Profile _handleCharacteristicChanges: characteristic update for HMCharacteristicTypeFirmwareVersion", buf, 0xCu);

            accessory = v32;
          }

          objc_autoreleasePoolPop(v22);
          if ([accessory supportsHAP])
          {
            goto LABEL_21;
          }
        }

        else
        {
          type5 = [v13 type];
          v27 = [type5 isEqualToString:v33];

          if (v27)
          {
            v28 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v30 = HMFGetLogIdentifier();
              *buf = v31;
              v40 = v30;
              _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Firmware Update Profile _handleCharacteristicChanges: characteristic update for HAPCharacteristicUUID_MatterFirmwareRevisionNumber", buf, 0xCu);

              accessory = v32;
            }

            objc_autoreleasePoolPop(v28);
            if ([accessory supportsCHIP])
            {
LABEL_21:
              [(HMDAccessoryFirmwareUpdateProfile *)selfCopy2 __handleFirmwareVersionUpdate:v13];
              continue;
            }
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }
}

- (void)__handleAccessoryIsReachable
{
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryFirmwareUpdateProfile *)self notificationsEnabled])
  {

    [(HMDAccessoryFirmwareUpdateProfile *)self _enableCharacteristicsNotifications:1];
  }
}

- (void)handleAccessoryIsReachable:(id)reachable
{
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDAccessoryFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __64__HMDAccessoryFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is now reachable", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) __handleAccessoryIsReachable];
}

- (void)handleCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDAccessoryFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __71__HMDAccessoryFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_BOOLForKey:@"HMDAccessoryFirmwareUpdateHasHandledFirmwareVersionUpdatedNotificationKey"];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Already handled updated accessory firmware version", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) userInfo];
    v9 = [v8 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

    if ([v9 count])
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * v15);
            v17 = [*(a1 + 40) accessory];
            v18 = [v16 accessory];
            v19 = HMFEqualObjects();

            if (v19)
            {
              [v10 addObject:v16];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      [*(a1 + 40) _handleCharacteristicChanges:v10];
      v9 = v20;
    }
  }
}

- (void)_registerForNotifications
{
  v12 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  if (accessory)
  {
    notificationCenter = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

    notificationCenter2 = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:accessory];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Not registering for notifications as accessory is nil", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_updateAccessoryFirmwareVersion:(id)version
{
  v31[2] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  firmwareVersion = [accessory firmwareVersion];
  v8 = [versionCopy isGreaterThanVersion:firmwareVersion];

  if (v8)
  {
    if ([accessory supportsCHIP])
    {
      v30[0] = @"kModifiedCharacteristicsKey";
      matterFirmwareVersionCharacteristic = [(HMDAccessoryFirmwareUpdateProfile *)self matterFirmwareVersionCharacteristic];
      v29 = matterFirmwareVersionCharacteristic;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v30[1] = @"HMDAccessoryFirmwareUpdateHasHandledFirmwareVersionUpdatedNotificationKey";
      v31[0] = v10;
      v31[1] = MEMORY[0x277CBEC38];
      v11 = MEMORY[0x277CBEAC0];
      v12 = v31;
      v13 = v30;
    }

    else
    {
      v27[0] = @"kModifiedCharacteristicsKey";
      matterFirmwareVersionCharacteristic = [(HMDAccessoryFirmwareUpdateProfile *)self firmwareVersionCharacteristic];
      v26 = matterFirmwareVersionCharacteristic;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v27[1] = @"HMDAccessoryFirmwareUpdateHasHandledFirmwareVersionUpdatedNotificationKey";
      v28[0] = v10;
      v28[1] = MEMORY[0x277CBEC38];
      v11 = MEMORY[0x277CBEAC0];
      v12 = v28;
      v13 = v27;
    }

    v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:2];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      firmwareVersion2 = [accessory firmwareVersion];
      v20 = 138543874;
      v21 = v18;
      v22 = 2112;
      v23 = firmwareVersion2;
      v24 = 2112;
      v25 = versionCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory version=%@ is different than fetched version=%@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    logAndPostNotification(@"HMDAccessoryCharacteristicsChangedNotification", accessory, v14);
  }
}

- (void)_updateFirmwareUpdateNotReadyReasons:(unint64_t)reasons
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryFirmwareUpdateProfile *)self updateNotReadyReasons]== reasons)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)selfCopy updateNotReadyReasons];
      v10 = HAPUpdateNotReadyReasonsAsString();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Update Not Ready Reasons not changed: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [(HMDAccessoryFirmwareUpdateProfile *)self setUpdateNotReadyReasons:reasons];
    notificationCenter = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDAccessoryFirmwareUpdateApplyNotReadyReasonsChangedNotification" object:self userInfo:0];
  }
}

- (void)_updateFirmwareStagingNotReadyReasons:(unint64_t)reasons
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryFirmwareUpdateProfile *)self stagingNotReadyReasons]== reasons)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)selfCopy stagingNotReadyReasons];
      v10 = HAPStagingNotReadyReasonsAsString();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Staging Not Ready Reasons not changed: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [(HMDAccessoryFirmwareUpdateProfile *)self setStagingNotReadyReasons:reasons];
    notificationCenter = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDAccessoryFirmwareUpdateStagingNotReadyReasonsChangedNotification" object:self userInfo:0];
  }
}

- (void)_updateFirmwareUpdateState:(int64_t)state
{
  v26 = *MEMORY[0x277D85DE8];
  updateState = [(HMDAccessoryFirmwareUpdateProfile *)self updateState];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (updateState == state)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)selfCopy updateState];
      v11 = HAPFirmwareUpdateStateAsString();
      *buf = 138543618;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@State not changed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)selfCopy updateState];
      v13 = HAPFirmwareUpdateStateAsString();
      v14 = HAPFirmwareUpdateStateAsString();
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating firmware update state from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDAccessoryFirmwareUpdateProfile *)selfCopy setUpdateState:state];
    notificationCenter = [(HMDAccessoryFirmwareUpdateProfile *)selfCopy notificationCenter];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{state, @"HMDAccessoryFirmwareUpdateStateKey"}];
    v19 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [notificationCenter postNotificationName:@"HMDAccessoryFirmwareUpdateStateChangedNotification" object:selfCopy userInfo:v17];
  }
}

- (void)readAndProcessCharacteristics:(id)characteristics withCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [characteristicsCopy count] == 0;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v25;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No characteristics to read and process", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    completionCopy[2](completionCopy);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v14;
      v37 = 2112;
      v38 = characteristicsCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = characteristicsCopy;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = *v31;
      do
      {
        v19 = 0;
        do
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v30 + 1) + 8 * v19)];
          [v15 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }

    objc_initWeak(buf, selfCopy);
    accessory = [(HMDAccessoryFirmwareUpdateProfile *)selfCopy accessory];
    home = [accessory home];

    v23 = objc_msgSend_copy(v15);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke;
    v26[3] = &unk_278685EC0;
    objc_copyWeak(&v29, buf);
    v28 = completionCopy;
    v24 = v15;
    v27 = v24;
    [home readCharacteristicValues:v23 source:1000 qualityOfService:-1 withCompletionHandler:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

void __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v34 = WeakRetained;
    v8 = v5;
    if (v5)
    {
      *v49 = 0;
      *&v49[8] = v49;
      *&v49[16] = 0x3032000000;
      v50 = __Block_byref_object_copy__234309;
      v51 = __Block_byref_object_dispose__234310;
      v32 = a1;
      v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = *(a1 + 32);
      v9 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v9)
      {
        v10 = *v41;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v41 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v40 + 1) + 8 * i);
            v13 = [v12 characteristic];
            v39 = 0;
            v14 = [v8 hmd_valueOfCharacteristic:v13 error:&v39];
            v15 = v39;

            if (v14)
            {
              v16 = *(*&v49[8] + 40);
              v17 = [v12 characteristic];
              [v16 addObject:v17];
            }

            else
            {
              v18 = objc_autoreleasePoolPush();
              v19 = v34;
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = HMFGetLogIdentifier();
                v22 = [v12 characteristic];
                *buf = 138543618;
                v45 = v21;
                v46 = 2112;
                v47 = v22;
                _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Read failed for %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v18);
            }
          }

          v9 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v9);
      }

      v23 = [v34 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_52;
      block[3] = &unk_278682E60;
      block[4] = v34;
      v38 = v49;
      v37 = *(v32 + 40);
      dispatch_async(v23, block);

      _Block_object_dispose(v49, 8);
    }

    else
    {
      v26 = a1;
      v27 = objc_autoreleasePoolPush();
      v28 = v7;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(v26 + 32);
        *v49 = 138543874;
        *&v49[4] = v30;
        *&v49[12] = 2112;
        *&v49[14] = v31;
        *&v49[22] = 2112;
        v50 = v33;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Read of characteristics %@ failed with error %@", v49, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      (*(*(v26 + 40) + 16))();
    }

    v7 = v34;
  }

  else
  {
    v8 = v5;
    v24 = _Block_copy(*(a1 + 40));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }
  }
}

uint64_t __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_52(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = objc_msgSend_copy(*(*(a1[6] + 8) + 40), a2);
  [v3 _handleCharacteristicChanges:v4];

  v5 = *(a1[5] + 16);

  return v5();
}

- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating accessory firmware update profile", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  characteristics = [(HMDAccessoryFirmwareUpdateProfile *)selfCopy characteristics];
  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(characteristics, "count") + 1}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = characteristics;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addObject:{*(*(&v23 + 1) + 8 * v16++), v23}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  firmwareVersionCharacteristic = [(HMDAccessoryFirmwareUpdateProfile *)selfCopy firmwareVersionCharacteristic];
  if (firmwareVersionCharacteristic)
  {
    [v11 addObject:firmwareVersionCharacteristic];
  }

  accessory = [(HMDAccessoryFirmwareUpdateProfile *)selfCopy accessory];
  supportsCHIP = [accessory supportsCHIP];

  if (supportsCHIP)
  {
    matterFirmwareVersionCharacteristic = [(HMDAccessoryFirmwareUpdateProfile *)selfCopy matterFirmwareVersionCharacteristic];
    if (matterFirmwareVersionCharacteristic)
    {
      [v11 addObject:matterFirmwareVersionCharacteristic];
    }
  }

  allObjects = [v11 allObjects];
  [(HMDAccessoryFirmwareUpdateProfile *)selfCopy readAndProcessCharacteristics:allObjects withCompletion:completionCopy];

  return result;
}

- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithStagedFirmwareVersion:(id)version
{
  versionCopy = version;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateProfile *)self _updateFirmwareUpdateState:3];
  [(HMDAccessoryFirmwareUpdateProfile *)self _updateStagedFirmwareVersion:versionCopy];

  return result;
}

- (id)characteristics
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"00000235-0000-1000-8000-0026BB765291", @"00000234-0000-1000-8000-0026BB765291", 0}];
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v5 = [accessory findCharacteristicsByTypes:v3 forServiceType:@"00000236-0000-1000-8000-0026BB765291"];

  return v5;
}

- (id)statusCharacteristic
{
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = [accessory findCharacteristicType:@"00000235-0000-1000-8000-0026BB765291" forServiceType:@"00000236-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)matterFirmwareVersionCharacteristic
{
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  if ([accessory supportsCHIP])
  {
    v3 = [accessory findCharacteristicType:*MEMORY[0x277CFE670] forServiceType:*MEMORY[0x277CD0DD0]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)firmwareVersionCharacteristic
{
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = [accessory findCharacteristicType:*MEMORY[0x277CCF8B8] forServiceType:*MEMORY[0x277CD0DD0]];

  return v3;
}

- (id)readinessCharacteristic
{
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = [accessory findCharacteristicType:@"00000234-0000-1000-8000-0026BB765291" forServiceType:@"00000236-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)_enableCharacteristicsNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v6 = MEMORY[0x277CBEB18];
  characteristics = [(HMDAccessoryFirmwareUpdateProfile *)self characteristics];
  v8 = [v6 arrayWithArray:characteristics];

  firmwareVersionCharacteristic = [(HMDAccessoryFirmwareUpdateProfile *)self firmwareVersionCharacteristic];
  if (firmwareVersionCharacteristic)
  {
    [v8 addObject:firmwareVersionCharacteristic];
  }

  if ([accessory supportsCHIP])
  {
    matterFirmwareVersionCharacteristic = [(HMDAccessoryFirmwareUpdateProfile *)self matterFirmwareVersionCharacteristic];
    if (matterFirmwareVersionCharacteristic)
    {
      [v8 addObject:matterFirmwareVersionCharacteristic];
    }
  }

  [accessory setNotificationsEnabled:notificationsCopy forCharacteristics:v8 clientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareUpdate"];
  [(HMDAccessoryFirmwareUpdateProfile *)self setNotificationsEnabled:notificationsCopy];
  if (notificationsCopy)
  {
    characteristics2 = [(HMDAccessoryFirmwareUpdateProfile *)self characteristics];
    [(HMDAccessoryFirmwareUpdateProfile *)self readAndProcessCharacteristics:characteristics2 withCompletion:&__block_literal_global_49_234316];
  }
}

- (void)monitorCharacteristics:(BOOL)characteristics
{
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HMDAccessoryFirmwareUpdateProfile_monitorCharacteristics___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  characteristicsCopy = characteristics;
  dispatch_async(workQueue, v6);
}

void *__60__HMDAccessoryFirmwareUpdateProfile_monitorCharacteristics___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Monitoring characteristics set to %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) notificationsEnabled];
  if (*(a1 + 40) != result)
  {
    return [*(a1 + 32) _enableCharacteristicsNotifications:?];
  }

  return result;
}

- (void)configure
{
  v10[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    matterFirmwareUpdateProfile = [(HMDAccessoryFirmwareUpdateProfile *)self matterFirmwareUpdateProfile];
    [matterFirmwareUpdateProfile configure];
  }

  [(HMDAccessoryFirmwareUpdateProfile *)self _registerForNotifications];
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  if ([accessory isReachable])
  {
    v6 = MEMORY[0x277CBEB98];
    v10[0] = @"00000234-0000-1000-8000-0026BB765291";
    v10[1] = @"00000235-0000-1000-8000-0026BB765291";
    v10[2] = @"00000249-0000-1000-8000-0026BB765291";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [accessory findCharacteristicsByTypes:v8 forServiceType:@"00000236-0000-1000-8000-0026BB765291"];
    [(HMDAccessoryFirmwareUpdateProfile *)self _handleCharacteristicChanges:v9];
  }
}

- (HMDAccessoryFirmwareUpdateProfile)initWithAccessory:(id)accessory service:(id)service workQueue:(id)queue
{
  accessoryCopy = accessory;
  serviceCopy = service;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdateProfile;
  v11 = [(HMDAccessoryFirmwareUpdateProfile *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_accessory, accessoryCopy);
    objc_storeWeak(&v12->_service, serviceCopy);
    objc_storeStrong(&v12->_workQueue, queue);
    firmwareVersion = [accessoryCopy firmwareVersion];
    currentVersion = v12->_currentVersion;
    v12->_currentVersion = firmwareVersion;

    v15 = [[HMDAccessoryMatterFirmwareUpdateProfile alloc] initWithAccessory:accessoryCopy workQueue:queueCopy];
    matterFirmwareUpdateProfile = v12->_matterFirmwareUpdateProfile;
    v12->_matterFirmwareUpdateProfile = v15;
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateProfile;
  [(HMDAccessoryFirmwareUpdateProfile *)&v4 dealloc];
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

      service = [(HMDAccessoryFirmwareUpdateProfile *)self service];
      uuid = [service uuid];
      service2 = [(HMDAccessoryFirmwareUpdateProfile *)v7 service];

      uuid2 = [service2 uuid];
      v12 = [uuid isEqual:uuid2];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, uUIDString];

  return v8;
}

- (NSString)description
{
  accessory = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Accessory Firmware Update Profile %@, %@", name, uniqueIdentifier];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_234344 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_234344, &__block_literal_global_234345);
  }

  v3 = logCategory__hmf_once_v2_234346;

  return v3;
}

void __48__HMDAccessoryFirmwareUpdateProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_234346;
  logCategory__hmf_once_v2_234346 = v0;
}

@end