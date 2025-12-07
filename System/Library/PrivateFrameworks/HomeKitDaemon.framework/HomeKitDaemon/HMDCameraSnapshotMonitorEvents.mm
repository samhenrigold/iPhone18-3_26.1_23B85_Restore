@interface HMDCameraSnapshotMonitorEvents
+ (id)logCategory;
- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher;
- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher bulletinBoard:(id)board notificationCenter:(id)center;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)currentCameraSettings;
- (uint64_t)_canEnableNotificationForCharacteristic:(void *)characteristic cameraSettings:;
- (void)_characteristicsUpdated:(void *)updated modifiedCharacteristics:;
- (void)_enableNotificationsForCharacteristics:(void *)characteristics cameraSettings:;
- (void)_handleUpdatedBulletinSnapshotCharacteristics:(id *)characteristics;
- (void)_insertUpdateOrRemoveBulletins:(void *)bulletins forChangedCharacteristics:(void *)characteristics snapshotData:;
- (void)_removeBulletins:(void *)bulletins sessionID:;
- (void)_updateHomedRelaunchRegistration;
- (void)dealloc;
- (void)handleBulletinBoardNotificationDidUpdateNotification:(id)notification;
- (void)handleCameraSettingsDidUpdateNotification:(id)notification;
- (void)handleCharacteristicsChangedNotification:(id)notification;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)registerForMessages;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraSnapshotMonitorEvents

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
    v2 = vars8;
  }

  return self;
}

- (void)timerDidFire:(id)fire
{
  v33 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = fireCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      sessionID = [v9 sessionID];
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = sessionID;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Timer did fire for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (self)
    {
      v16 = objc_getProperty(selfCopy, v15, 32, 1);
    }

    else
    {
      v16 = 0;
    }

    if ([v16 containsObject:v9])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        sessionID2 = [v9 sessionID];
        *buf = 138543618;
        v30 = v20;
        v31 = 2112;
        v32 = sessionID2;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Posting notification as timer has expired for snapshot session %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      if (self)
      {
        v23 = objc_getProperty(v18, v22, 64, 1);
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      changedCharacteristics = [v9 changedCharacteristics];
      allObjects = [changedCharacteristics allObjects];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke;
      v27[3] = &unk_278687998;
      v27[4] = v18;
      v28 = v9;
      [v24 insertImageBulletinsForChangedCharacteristics:allObjects snapshotData:0 completion:v27];
    }
  }
}

void __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 8, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke_2;
  block[3] = &unk_27868A010;
  block[4] = v7;
  v10 = v4;
  v11 = *(a1 + 40);
  v8 = v4;
  dispatch_async(Property, block);
}

void __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v4, 8, 1);
    dispatch_assert_queue_V2(Property);
    if ([v3 count])
    {
      v8 = [objc_getProperty(v1 v7];
      v9 = objc_autoreleasePoolPush();
      v10 = v1;
      v11 = HMFGetOSLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v12)
        {
          v13 = HMFGetLogIdentifier();
          v14 = [v5 sessionID];
          v23 = 138543618;
          v24 = v13;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating the posted bulletin for %@", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        [v5 setPostedBulletins:v3];
      }

      else
      {
        if (v12)
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v5 sessionID];
          v23 = 138543618;
          v24 = v20;
          v25 = 2112;
          v26 = v21;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Timer has been already removed for %@, removing the posted bulletin", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v22 = [v5 sessionID];
        [(HMDCameraSnapshotMonitorEvents *)v10 _removeBulletins:v3 sessionID:v22];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v5 sessionID];
        v23 = 138543618;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@No bulletins were posted for snapshot %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }
}

- (void)_removeBulletins:(void *)bulletins sessionID:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  bulletinsCopy = bulletins;
  Property = objc_getProperty(self, v6, 8, 1);
  dispatch_assert_queue_V2(Property);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543874;
          v25 = v16;
          v26 = 2112;
          v27 = v12;
          v28 = 2112;
          v29 = bulletinsCopy;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@A bulletin with recordID %@ has already been posted for snapshot session %@, removing it", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        [objc_getProperty(selfCopy v17];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v9);
  }
}

- (void)handleCameraSettingsDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HMDCameraSnapshotMonitorEvents_handleCameraSettingsDidUpdateNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = notificationCopy;
  selfCopy = self;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __76__HMDCameraSnapshotMonitorEvents_handleCameraSettingsDidUpdateNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];

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

  if (v5)
  {
    v6 = [*(a1 + 40) characteristicsAvailabilityListener];
    v7 = [v6 availableCharacteristics];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Camera user settings changed.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDCameraSnapshotMonitorEvents *)*(a1 + 40) _enableNotificationsForCharacteristics:v7 cameraSettings:v5];
  }
}

- (void)_enableNotificationsForCharacteristics:(void *)characteristics cameraSettings:
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  characteristicsCopy = characteristics;
  if (self)
  {
    Property = objc_getProperty(self, v6, 8, 1);
    dispatch_assert_queue_V2(Property);
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = &OBJC_IVAR___HMDApplicationVendorIDStoreValue__spiClient;
    [objc_getProperty(self v11];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v32 = *v34;
      v29 = characteristicsCopy;
      v30 = v9;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          service = [v15 service];
          bulletinBoardNotification = [service bulletinBoardNotification];

          [objc_getProperty(self v18];
          if ([bulletinBoardNotification isEnabled] && -[HMDCameraSnapshotMonitorEvents _canEnableNotificationForCharacteristic:cameraSettings:](self, v15, characteristicsCopy))
          {
            v19 = objc_autoreleasePoolPush();
            selfCopy = self;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              *buf = 138543618;
              v38 = v22;
              v39 = 2112;
              v40 = v15;
              _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin snapshot characteristic: %@", buf, 0x16u);

              characteristicsCopy = v29;
            }

            objc_autoreleasePoolPop(v19);
            v9 = v30;
            [v30 addObject:v15];
            v10 = &OBJC_IVAR___HMDApplicationVendorIDStoreValue__spiClient;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v13);
    }

    bulletinSnapshotCharacteristics = [self bulletinSnapshotCharacteristics];
    v24 = [bulletinSnapshotCharacteristics count];
    if (v24 == [v9 count])
    {

      [(HMDCameraSnapshotMonitorEvents *)self _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v28;
LABEL_21:

      goto LABEL_22;
    }

    bulletinSnapshotCharacteristics2 = [self bulletinSnapshotCharacteristics];
    if ([bulletinSnapshotCharacteristics2 count])
    {
      v26 = [v9 count];

      [(HMDCameraSnapshotMonitorEvents *)self _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v28;
      if (v26)
      {
        goto LABEL_21;
      }
    }

    else
    {

      [(HMDCameraSnapshotMonitorEvents *)self _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v28;
    }

    [(HMDCameraSnapshotMonitorEvents *)self _updateHomedRelaunchRegistration];
    goto LABEL_21;
  }

LABEL_22:
}

- (uint64_t)_canEnableNotificationForCharacteristic:(void *)characteristic cameraSettings:
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  characteristicCopy = characteristic;
  Property = objc_getProperty(self, v7, 8, 1);
  dispatch_assert_queue_V2(Property);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v54 = 138543618;
    v55 = v12;
    v56 = 2112;
    v57 = v5;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Checking if bulletin notification can be enabled for characteristic: %@", &v54, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = v5;
  objc_opt_self();
  type = [v13 type];
  if ([type isEqualToString:*MEMORY[0x277CCF910]])
  {
    service = [v13 service];
    type2 = [service type];
    v17 = [type2 isEqualToString:*MEMORY[0x277CD0E38]];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        v54 = 138543362;
        v55 = v21;
        v22 = "%{public}@Allowing notifications to be enabled for doorbell characteristic";
        v23 = v20;
        v24 = OS_LOG_TYPE_DEBUG;
LABEL_26:
        _os_log_impl(&dword_229538000, v23, v24, v22, &v54, 0xCu);

        goto LABEL_27;
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v25 = v13;
  objc_opt_self();
  type3 = [v25 type];
  if (([type3 isEqualToString:*MEMORY[0x277CCF978]] & 1) == 0)
  {

LABEL_21:
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v47 = HMFGetLogIdentifier();
      v54 = 138543362;
      v55 = v47;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Disallowing notifications to be enabled for non-doorbell, non-motion characteristic", &v54, 0xCu);
    }

    goto LABEL_23;
  }

  service2 = [v25 service];
  type4 = [service2 type];
  v29 = [type4 isEqualToString:*MEMORY[0x277CD0EC0]];

  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(selfCopy + 5);
  }

  else
  {
    WeakRetained = 0;
  }

  isCameraRecordingFeatureSupported = [WeakRetained isCameraRecordingFeatureSupported];

  if ((isCameraRecordingFeatureSupported & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v54 = 138543362;
      v55 = v21;
      v22 = "%{public}@Allowing notifications to be enabled because recording is not supported for this camera";
      v23 = v20;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

LABEL_27:

    objc_autoreleasePoolPop(v18);
    v48 = 1;
    goto LABEL_28;
  }

  [characteristicCopy currentAccessMode];
  if ((HMIsMotionDetectionAllowedForCameraAccessMode() & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      v51 = HMCameraAccessModeAsString();
      v54 = 138543618;
      v55 = v50;
      v56 = 2112;
      v57 = v51;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Disallowing notifications to be enabled because the camera's current access mode disallows motion detection: %@", &v54, 0x16u);
    }

LABEL_23:

    objc_autoreleasePoolPop(v44);
    v48 = 0;
    goto LABEL_28;
  }

  notificationSettings = [characteristicCopy notificationSettings];
  v33 = MEMORY[0x277CD18C0];
  smartBulletinBoardNotificationCondition = [notificationSettings smartBulletinBoardNotificationCondition];
  v35 = [v33 significantEventTypesInPredicate:smartBulletinBoardNotificationCondition];
  integerValue = [v35 integerValue];

  isSmartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];
  if (integerValue)
  {
    v38 = isSmartBulletinBoardNotificationEnabled;
  }

  else
  {
    v38 = 0;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = selfCopy;
  v41 = HMFGetOSLogHandle();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
  if (v38 == 1)
  {
    if (v42)
    {
      v43 = HMFGetLogIdentifier();
      v54 = 138543618;
      v55 = v43;
      v56 = 2112;
      v57 = notificationSettings;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Disallowing notifications to be enabled because smart notifications are enabled: %@", &v54, 0x16u);
    }
  }

  else if (v42)
  {
    v52 = HMFGetLogIdentifier();
    v53 = HMCameraAccessModeAsString();
    v54 = 138543874;
    v55 = v52;
    v56 = 2112;
    v57 = v53;
    v58 = 2112;
    v59 = notificationSettings;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Allowing notifications to be enabled for current access mode: %@, notification settings: %@", &v54, 0x20u);
  }

  objc_autoreleasePoolPop(v39);
  v48 = v38 ^ 1u;

LABEL_28:
  return v48;
}

- (void)_handleUpdatedBulletinSnapshotCharacteristics:(id *)characteristics
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(characteristics, v4, 8, 1);
  dispatch_assert_queue_V2(Property);
  if (characteristics)
  {
    WeakRetained = objc_loadWeakRetained(characteristics + 5);
  }

  else
  {
    WeakRetained = 0;
  }

  v52 = WeakRetained;
  home = [WeakRetained home];
  characteristicsAvailabilityListener = [characteristics characteristicsAvailabilityListener];
  availableCharacteristics = [characteristicsAvailabilityListener availableCharacteristics];

  v51 = availableCharacteristics;
  v53 = v3;
  [availableCharacteristics na_setByRemovingObjectsFromSet:v3];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = v67 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v64 objects:v73 count:16];
  obj = v9;
  characteristicsCopy = characteristics;
  if (v10)
  {
    v11 = v10;
    v12 = *v65;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v65 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v64 + 1) + 8 * i);
        accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];
        v16 = objc_autoreleasePoolPush();
        characteristicsCopy2 = characteristics;
        v18 = HMFGetOSLogHandle();
        v19 = v18;
        if (!accessoryBulletinNotificationManager)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 138543362;
            v70 = v45;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory Bulletin Notification Manager is nil", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
          v46 = obj;

          v47 = v52;
          v48 = v53;
          v49 = v51;
          goto LABEL_33;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v70 = v20;
          v71 = 2112;
          v72 = v14;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Unregistering for notifications for characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [MEMORY[0x277CBEB98] set];
        v22 = [MEMORY[0x277CBEB98] setWithObject:v14];
        v23 = [MEMORY[0x277CBEB98] set];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke;
        v63[3] = &unk_27868A1D8;
        v63[4] = characteristicsCopy2;
        v63[5] = v14;
        [accessoryBulletinNotificationManager updateRegistrationsWithEnabledCharacteristics:v21 disabledCharacteristics:v22 conditions:v23 completion:v63];

        characteristics = characteristicsCopy;
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v24 = v53;
  v25 = [v24 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v25)
  {
    v26 = v25;
    v55 = *v60;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v60 != v55)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v59 + 1) + 8 * j);
        accessoryBulletinNotificationManager2 = [home accessoryBulletinNotificationManager];
        v30 = objc_autoreleasePoolPush();
        characteristicsCopy3 = characteristics;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (!accessoryBulletinNotificationManager2)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543362;
            v70 = v50;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Accessory Bulletin Notification Manager is nil", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          goto LABEL_32;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v70 = v34;
          v71 = 2112;
          v72 = v28;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Registering for notifications for characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        service = [v28 service];
        bulletinBoardNotification = [service bulletinBoardNotification];
        condition = [bulletinBoardNotification condition];

        v38 = [accessoryBulletinNotificationManager2 conditionsFromPredicate:condition];
        v39 = [MEMORY[0x277CBEB98] setWithObject:v28];
        v40 = [MEMORY[0x277CBEB98] set];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke_41;
        v58[3] = &unk_27868A1D8;
        v58[4] = characteristicsCopy3;
        v58[5] = v28;
        [accessoryBulletinNotificationManager2 updateRegistrationsWithEnabledCharacteristics:v39 disabledCharacteristics:v40 conditions:v38 completion:v58];

        characteristics = characteristicsCopy;
      }

      v26 = [v24 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v41 = objc_autoreleasePoolPush();
  characteristicsCopy4 = characteristics;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543618;
    v70 = v44;
    v71 = 2112;
    v72 = v24;
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Setting the bulletin snapshot characteristics to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v41);
  [characteristicsCopy4 setBulletinSnapshotCharacteristics:v24];
LABEL_32:
  v49 = v51;
  v47 = v52;
  v46 = obj;
  v48 = v53;
LABEL_33:
}

- (void)_updateHomedRelaunchRegistration
{
  v16 = *MEMORY[0x277D85DE8];
  Property = objc_getProperty(self, a2, 8, 1);
  dispatch_assert_queue_V2(Property);
  bulletinSnapshotCharacteristics = [self bulletinSnapshotCharacteristics];
  v5 = [bulletinSnapshotCharacteristics count];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering homed for relaunch", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = +[HMDLaunchHandler sharedHandler];
    uniqueIdentifier = [selfCopy uniqueIdentifier];
    [v11 registerRelaunchClientWithUUID:uniqueIdentifier];
  }

  else
  {
    if (v9)
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Deregistering homed for relaunch", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = +[HMDLaunchHandler sharedHandler];
    uniqueIdentifier = [selfCopy uniqueIdentifier];
    [v11 deregisterRelaunchClientWithUUID:uniqueIdentifier];
  }
}

void __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@Error unregistering for notifications from characteristic %@ : %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v10 = "%{public}@Unregistered for notifications from characteristic %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

void __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke_41(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@Error registering for notifications from characteristic %@ : %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v10 = "%{public}@Registered for notifications from characteristic %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMDCameraSnapshotMonitorEvents_handleCharacteristicsChangedNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __75__HMDCameraSnapshotMonitorEvents_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  v33 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v3, 8, 1);
    dispatch_assert_queue_V2(Property);
    v5 = [v33 objectForKeyedSubscript:@"kModifiedCharacteristicsMapKey"];
    v6 = [v33 hmf_arrayForKey:@"kCharacteristicsToShowBulletinsKey"];
    v31 = v6;
    v32 = v5;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [v33 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
    }

    v8 = v7;
    v9 = [MEMORY[0x277CBEB58] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      v14 = *MEMORY[0x277CCF978];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = [v1 bulletinSnapshotCharacteristics];
          v18 = [v17 containsObject:v16];

          if (v18)
          {
            v19 = [v16 type];
            v20 = [v19 isEqualToString:v14];

            if (!v20 || ([v16 value], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "BOOLValue"), v21, v22))
            {
              [v9 addObject:v16];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      goto LABEL_26;
    }

    if (v31)
    {
      v23 = [v9 allObjects];
      [(HMDCameraSnapshotMonitorEvents *)v1 _characteristicsUpdated:v23 modifiedCharacteristics:v32];
LABEL_25:

LABEL_26:
      v2 = v33;
      goto LABEL_27;
    }

    v23 = [v33 hmf_dictionaryForKey:@"kPresenceDictionaryForNotificationKey"];
    v24 = [v33 hmf_dictionaryForKey:@"kPresencePairingIdentifierDictionaryForNotificationKey"];
    v30 = v24;
    if (v24)
    {
      v25 = [[HMDHomePresenceRemote alloc] initWithPresenceByPairingIdentity:v24, v24];
    }

    else
    {
      if (!v23)
      {
        v26 = 0;
        goto LABEL_24;
      }

      v25 = [[HMDHomePresenceRemote alloc] initWithPresenceByUserId:v23, 0];
    }

    v26 = v25;
LABEL_24:
    WeakRetained = objc_loadWeakRetained(v1 + 5);
    v28 = [WeakRetained home];
    v29 = [v9 allObjects];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke;
    v34[3] = &unk_278684218;
    v34[4] = v1;
    v35 = v32;
    [v28 evaluateNotificationConditionForCharacteristics:v29 homePresence:v26 completion:v34];

    goto LABEL_25;
  }

LABEL_27:
}

- (void)_characteristicsUpdated:(void *)updated modifiedCharacteristics:
{
  v63 = *MEMORY[0x277D85DE8];
  v47 = a2;
  updatedCopy = updated;
  if (self)
  {
    Property = objc_getProperty(self, v5, 8, 1);
    dispatch_assert_queue_V2(Property);
    v46 = [MEMORY[0x277CBEB98] setWithArray:v47];
    v8 = v46;
    if ([v46 count])
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v9 = v46;
      v10 = [v9 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v10)
      {
        v11 = *v55;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [updatedCopy objectForKey:*(*(&v54 + 1) + 8 * v12)];
          updateIdentifier = [v13 updateIdentifier];
          if (updateIdentifier)
          {
            remoteDevice = [v13 remoteDevice];
            v16 = remoteDevice == 0;

            if (!v16)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v9 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v13 = 0;
      }

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v20;
        v60 = 2112;
        v61 = v9;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Taking a snapshot as the update characteristic %@ is being monitored", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      WeakRetained = objc_loadWeakRetained(selfCopy + 3);
      v21 = objc_loadWeakRetained(selfCopy + 5);
      if ([v21 isReachable])
      {
        v22 = 7.0;
      }

      else
      {
        v22 = 15.0;
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v25 = [[HMDCameraSnapshotNotificationTimer alloc] initWithCameraSessionID:uUIDString changedCharacteristics:v9 timeInterval:v22];
      [(HMFTimer *)v25 setDelegate:selfCopy];
      [(HMFTimer *)v25 setDelegateQueue:objc_getProperty(selfCopy, v26, 8, 1)];
      [objc_getProperty(selfCopy v27];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:uUIDString forKeyedSubscript:@"kCameraSessionID"];
      if (v13)
      {
        updateIdentifier2 = [v13 updateIdentifier];
        [dictionary setObject:updateIdentifier2 forKeyedSubscript:@"kCameraProactiveSessionID"];

        remoteDevice2 = [v13 remoteDevice];
        [dictionary setObject:remoteDevice2 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
      }

      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCF5B8]];
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v34;
        v60 = 2112;
        v61 = dictionary;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Notification payload is: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      objc_initWeak(&location, v32);
      v35 = MEMORY[0x277D0F818];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __82__HMDCameraSnapshotMonitorEvents__characteristicsUpdated_modifiedCharacteristics___block_invoke;
      v48[3] = &unk_2786839D0;
      objc_copyWeak(&v52, &location);
      v36 = *MEMORY[0x277CCF5D0];
      v44 = uUIDString;
      v49 = v44;
      v50 = v9;
      v37 = v25;
      v51 = v37;
      v38 = [v35 messageWithName:v36 messagePayload:dictionary responseHandler:v48];
      [WeakRetained takeSnapshot:v38];
      v39 = objc_autoreleasePoolPush();
      v40 = v32;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        sessionID = [(HMDCameraSnapshotNotificationTimer *)v37 sessionID];
        *buf = 138543618;
        v59 = v42;
        v60 = 2112;
        v61 = sessionID;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Starting the notification timer for identifier %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      [(HMFTimer *)v37 resume];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);

      v8 = v46;
    }
  }
}

void __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 8, 1);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke_2;
  block[3] = &unk_27868A010;
  block[4] = v8;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  dispatch_async(Property, block);
}

void __82__HMDCameraSnapshotMonitorEvents__characteristicsUpdated_modifiedCharacteristics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  self = objc_loadWeakRetained((a1 + 56));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v15 = v9;
  if (self)
  {
    Property = objc_getProperty(self, v14, 8, 1);
    dispatch_assert_queue_V2(Property);
    [objc_getProperty(self v17];
    if (v10)
    {
      v66 = v15;
      v63 = v11;
      WeakRetained = objc_loadWeakRetained(self + 3);
      v19 = *MEMORY[0x277CD26B8];
      v20 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD26B8]];
      v21 = [v20 lastPathComponent];
      v23 = objc_getProperty(self, v22, 48, 1);
      v24 = MEMORY[0x277CCACA8];
      v25 = v23;
      v61 = v21;
      v26 = [v24 stringWithFormat:@"%@_%@.%@", v21, v12, @"jpg"];
      v27 = [v25 stringByAppendingPathComponent:v26];

      v28 = [MEMORY[0x277CCAA00] defaultManager];
      v68 = 0;
      v65 = v20;
      v29 = v20;
      v30 = v27;
      LOBYTE(v25) = [v28 linkItemAtPath:v29 toPath:v27 error:&v68];
      v64 = v68;

      if ((v25 & 1) == 0)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138544130;
          v70 = v34;
          v71 = 2112;
          v72 = v30;
          v73 = 2112;
          v74 = v65;
          v75 = 2112;
          v76 = v64;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hard link: %@ to file at path %@ with error %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v31);
        v30 = 0;
      }

      v35 = [MEMORY[0x277CBEB38] dictionary];
      v36 = *MEMORY[0x277CD1198];
      v37 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1198]];
      [v35 setObject:v37 forKeyedSubscript:v36];

      v62 = v30;
      [v35 setObject:v30 forKeyedSubscript:v19];
      [v35 setObject:v12 forKeyedSubscript:@"kCameraSessionID"];
      v38 = *MEMORY[0x277CD26B0];
      v39 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD26B0]];
      [v35 setObject:v39 forKeyedSubscript:v38];

      v40 = [WeakRetained uniqueIdentifier];
      [v35 setObject:v40 forKeyedSubscript:@"HM.accessoryProfileUUID"];

      v41 = objc_autoreleasePoolPush();
      v42 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v70 = v44;
        v71 = 2112;
        v72 = v10;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Took snapshot with response %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v45 = [v66 postedBulletins];
      v46 = [v13 allObjects];
      [(HMDCameraSnapshotMonitorEvents *)v42 _insertUpdateOrRemoveBulletins:v45 forChangedCharacteristics:v46 snapshotData:v35];

      v47 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1060]];
      v48 = objc_autoreleasePoolPush();
      v49 = v42;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v51 = WeakRetained;
        v52 = v13;
        v54 = v53 = v12;
        *buf = 138543618;
        v70 = v54;
        v71 = 2112;
        v72 = v47;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot with slot identifier: %@", buf, 0x16u);

        v12 = v53;
        v13 = v52;
        WeakRetained = v51;
      }

      objc_autoreleasePoolPop(v48);
      [WeakRetained releaseSnapshotWithSlotIdentifier:v47];

      v11 = v63;
      v55 = v65;
      v15 = v66;
    }

    else
    {
      v56 = v13;
      v57 = objc_autoreleasePoolPush();
      v58 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543874;
        v70 = v60;
        v71 = 2112;
        v72 = v12;
        v73 = 2112;
        v74 = v11;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to take a snapshot for session ID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v57);
      [v15 postedBulletins];
      WeakRetained = v13 = v56;
      v55 = [v13 allObjects];
      [(HMDCameraSnapshotMonitorEvents *)v58 _insertUpdateOrRemoveBulletins:v55 forChangedCharacteristics:0 snapshotData:?];
    }
  }
}

- (void)_insertUpdateOrRemoveBulletins:(void *)bulletins forChangedCharacteristics:(void *)characteristics snapshotData:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  bulletinsCopy = bulletins;
  characteristicsCopy = characteristics;
  Property = objc_getProperty(self, v10, 8, 1);
  dispatch_assert_queue_V2(Property);
  v13 = objc_getProperty(self, v12, 64, 1);
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = v7;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v17 = v15;
        v18 = *v23;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v22 + 1) + 8 * i);
            v21 = objc_getProperty(self, v16, 64, 1);
            [v21 updateBulletinWithRecordID:v20 forChangedCharacteristics:bulletinsCopy snapshotData:{characteristicsCopy, v22}];
          }

          v17 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v14 = [characteristicsCopy objectForKeyedSubscript:@"kCameraSessionID"];
      [(HMDCameraSnapshotMonitorEvents *)self _removeBulletins:v7 sessionID:v14];
    }
  }

  else
  {
    [v13 insertImageBulletinsForChangedCharacteristics:bulletinsCopy snapshotData:characteristicsCopy completion:0];
  }
}

- (void)handleBulletinBoardNotificationDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HMDCameraSnapshotMonitorEvents_handleBulletinBoardNotificationDidUpdateNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __87__HMDCameraSnapshotMonitorEvents_handleBulletinBoardNotificationDidUpdateNotification___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 8, 1);
    dispatch_assert_queue_V2(Property);
    v5 = [v3 object];
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

    v8 = objc_autoreleasePoolPush();
    v41 = v1;
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (!v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [v3 object];
        *buf = 138543618;
        v52 = v34;
        v53 = 2112;
        v54 = v35;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected notifier for HMDBulletinBoardNotificationDidUpdateNotification: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      goto LABEL_33;
    }

    v40 = v3;
    v11 = v41;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v12;
      v53 = 2112;
      v54 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling updated bulletin board notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v41 characteristicsAvailabilityListener];
    v14 = [v13 availableCharacteristics];

    v15 = [v41 bulletinSnapshotCharacteristics];
    v16 = [v15 mutableCopy];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v14;
    v17 = [obj countByEnumeratingWithState:&v43 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          v22 = [v7 service];
          v23 = [v22 characteristics];
          v24 = [v23 containsObject:v21];

          if (v24)
          {
            if ([v7 isEnabled] && (-[HMDCameraSnapshotMonitorEvents currentCameraSettings](v11, v25), v26 = objc_claimAutoreleasedReturnValue(), v27 = -[HMDCameraSnapshotMonitorEvents _canEnableNotificationForCharacteristic:cameraSettings:](v11, v21, v26), v26, v27))
            {
              v28 = objc_autoreleasePoolPush();
              v29 = v11;
              v30 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = HMFGetLogIdentifier();
                *v47 = 138543618;
                v48 = v31;
                v49 = 2112;
                v50 = v21;
                _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin snapshot characteristic: %@", v47, 0x16u);

                v11 = v41;
              }

              objc_autoreleasePoolPop(v28);
              [v16 addObject:v21];
            }

            else
            {
              [v16 removeObject:v21];
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v43 objects:buf count:16];
      }

      while (v18);
    }

    v32 = [v11 bulletinSnapshotCharacteristics];
    v33 = [v32 count];
    if (v33 == [v16 count])
    {

      [(HMDCameraSnapshotMonitorEvents *)v11 _handleUpdatedBulletinSnapshotCharacteristics:v16];
      v3 = v40;
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v36 = [v11 bulletinSnapshotCharacteristics];
    v37 = v11;
    v3 = v40;
    if ([v36 count])
    {
      v38 = [v16 count];

      [(HMDCameraSnapshotMonitorEvents *)v37 _handleUpdatedBulletinSnapshotCharacteristics:v16];
      if (v38)
      {
        goto LABEL_32;
      }
    }

    else
    {

      [(HMDCameraSnapshotMonitorEvents *)v37 _handleUpdatedBulletinSnapshotCharacteristics:v16];
    }

    [(HMDCameraSnapshotMonitorEvents *)v37 _updateHomedRelaunchRegistration];
    goto LABEL_32;
  }

LABEL_34:
}

- (id)currentCameraSettings
{
  selfCopy = self;
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(selfCopy + 5);
    cameraProfiles = [WeakRetained cameraProfiles];
    anyObject = [cameraProfiles anyObject];
    selfCopy = [anyObject currentSettings];
  }

  return selfCopy;
}

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  v18 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  characteristicsCopy = characteristics;
  if (self)
  {
    Property = objc_getProperty(self, v7, 8, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Available characteristics changed", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  currentCameraSettings = [(HMDCameraSnapshotMonitorEvents *)&selfCopy->super.super.isa currentCameraSettings];
  [(HMDCameraSnapshotMonitorEvents *)selfCopy _enableNotificationsForCharacteristics:characteristicsCopy cameraSettings:currentCameraSettings];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = selfCopy;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v7, 56, 1);
  }

  else
  {
    Property = 0;
  }

  [Property removeObserver:selfCopy];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_accessory);
  allObjects = [(NSSet *)selfCopy->_bulletinSnapshotCharacteristics allObjects];
  [WeakRetained setNotificationsEnabled:0 forCharacteristics:allObjects clientIdentifier:selfCopy->_clientIdentifier];

  [objc_getProperty(selfCopy v11];
  v12.receiver = selfCopy;
  v12.super_class = HMDCameraSnapshotMonitorEvents;
  [(HMDCameraSnapshotMonitorEvents *)&v12 dealloc];
}

- (void)registerForMessages
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_accessory);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    WeakRetained = 0;
  }

  characteristicsAvailabilityListener = [(HMDCameraSnapshotMonitorEvents *)self characteristicsAvailabilityListener];
  [characteristicsAvailabilityListener setDelegate:self];

  characteristicsAvailabilityListener2 = [(HMDCameraSnapshotMonitorEvents *)self characteristicsAvailabilityListener];
  [characteristicsAvailabilityListener2 start];

  if (self && objc_getProperty(self, v7, 64, 1))
  {
    [objc_getProperty(self v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@No bulletin board, not subscribing for notifications for doorbell or motion sensor", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (!self)
    {
      v14 = 0;
      goto LABEL_10;
    }
  }

  v14 = objc_getProperty(self, v9, 72, 1);
LABEL_10:
  [v14 addObserver:sel_handleCameraSettingsDidUpdateNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:WeakRetained];
}

- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher bulletinBoard:(id)board notificationCenter:(id)center
{
  v57[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  accessoryCopy = accessory;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  boardCopy = board;
  centerCopy = center;
  v54.receiver = self;
  v54.super_class = HMDCameraSnapshotMonitorEvents;
  v19 = [(HMDCameraSnapshotMonitorEvents *)&v54 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_snapshotManager, managerCopy);
    objc_storeWeak(&v20->_accessory, accessoryCopy);
    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeStrong(&v20->_msgDispatcher, dispatcher);
    objc_storeStrong(&v20->_notificationCenter, center);
    v21 = [MEMORY[0x277CBEB58] set];
    snapShotNotificationResponseTimers = v20->_snapShotNotificationResponseTimers;
    v20->_snapShotNotificationResponseTimers = v21;

    v23 = MEMORY[0x277CCAD78];
    uniqueIdentifier = [managerCopy uniqueIdentifier];
    v57[0] = @"HMDCameraSnapshotMonitorEvents";
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    v26 = [v23 hm_deriveUUIDFromBaseUUID:uniqueIdentifier identifierSalt:0 withSalts:v25];
    uniqueIdentifier = v20->_uniqueIdentifier;
    v20->_uniqueIdentifier = v26;

    v28 = MEMORY[0x277CCACA8];
    name = [accessoryCopy name];
    uUIDString = [(NSUUID *)v20->_uniqueIdentifier UUIDString];
    v31 = [v28 stringWithFormat:@"%@/%@", name, uUIDString];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v31;

    if (boardCopy)
    {
      objc_storeStrong(&v20->_bulletinBoard, board);
      v33 = getBulletinImagesPath();
      uuid = [accessoryCopy uuid];
      uUIDString2 = [uuid UUIDString];
      v36 = [v33 stringByAppendingPathComponent:uUIDString2];
      bulletinImagesDirectory = v20->_bulletinImagesDirectory;
      v20->_bulletinImagesDirectory = v36;

      createDirectory(v20->_bulletinImagesDirectory);
    }

    v38 = [MEMORY[0x277CBEB98] set];
    bulletinSnapshotCharacteristics = v20->_bulletinSnapshotCharacteristics;
    v20->_bulletinSnapshotCharacteristics = v38;

    v40 = [[HMDNotificationRegistration alloc] initWithRegisterer:v20];
    notificationRegistration = v20->_notificationRegistration;
    v20->_notificationRegistration = v40;

    v55[0] = *MEMORY[0x277CD0EC0];
    v42 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF978]];
    v56[0] = v42;
    v55[1] = *MEMORY[0x277CD0E38];
    v43 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF910]];
    v56[1] = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];

    v45 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:accessoryCopy workQueue:queueCopy interestedCharacteristicTypesByServiceType:v44];
    characteristicsAvailabilityListener = v20->_characteristicsAvailabilityListener;
    v20->_characteristicsAvailabilityListener = v45;

    v47 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString3 = [uUID UUIDString];
    v50 = [v47 stringWithFormat:@"%@.%@", @"com.apple.HomeKitDaemon.serviceGroupAssociation", uUIDString3];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v50;
  }

  return v20;
}

- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  accessoryCopy = accessory;
  managerCopy = manager;
  v14 = +[HMDCameraProfile bulletinBoard];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = [(HMDCameraSnapshotMonitorEvents *)self initWithSnapshotManager:managerCopy accessory:accessoryCopy workQueue:queueCopy msgDispatcher:dispatcherCopy bulletinBoard:v14 notificationCenter:defaultCenter];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_154744 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_154744, &__block_literal_global_154745);
  }

  v3 = logCategory__hmf_once_v43_154746;

  return v3;
}

void __45__HMDCameraSnapshotMonitorEvents_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v43_154746;
  logCategory__hmf_once_v43_154746 = v0;
}

@end