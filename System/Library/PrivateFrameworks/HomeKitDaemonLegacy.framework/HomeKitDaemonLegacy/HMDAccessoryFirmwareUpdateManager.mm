@interface HMDAccessoryFirmwareUpdateManager
+ (id)logCategory;
- (BOOL)_registerAccessory:(id)accessory source:(int64_t)source path:(id)path;
- (BOOL)checkForUpdateForAccessory:(id)accessory;
- (BOOL)hasReachedMaximumFirmwareUpdateRetriesForAccessory:(id)accessory assetID:(id)d;
- (BOOL)isAccessoryRegistered:(id)registered;
- (BOOL)isFirmwareUpdateRetryAllowedForAccessory:(id)accessory forAsset:(id)asset;
- (BOOL)registerAccessory:(id)accessory;
- (BOOL)startUARPPacketCapture:(id)capture;
- (BOOL)supportsFirmwareUpdate;
- (HMDAccessoryFirmwareUpdateManager)init;
- (HMDAccessoryFirmwareUpdateManager)initWithHomeManager:(id)manager wingman:(id)wingman;
- (HMDHomeManager)homeManager;
- (UARPController)defaultUARPController;
- (id)UARPAccessoryForHMDAccessory:(id)accessory;
- (id)UARPControllerForAccessory:(id)accessory;
- (id)addSessionForUARPAccessory:(id)accessory;
- (id)availableSoftwareAssetForMatterAccessory:(id)accessory error:(id *)error;
- (id)changeAccessory:(id)accessory source:(int64_t)source path:(id)path documentationPath:(id)documentationPath userInitiatedStaging:(BOOL)staging;
- (id)findHMDHAPAccessoryWithUARPAccessory:(id)accessory;
- (id)matterUARPController;
- (id)registerAndCreateSessionForAccessory:(id)accessory updateUARPParameters:(BOOL)parameters;
- (id)sessionForAccessory:(id)accessory;
- (id)sessionForUARPAccessory:(id)accessory;
- (int64_t)defaultProductDataUpdateAssetSource;
- (int64_t)defaultUpdateAssetSourceWithAccessory:(id)accessory;
- (void)_handleAccessoryFirmwareVersionUpdateNotification:(id)notification;
- (void)_handleHomeAccessoryRemovedNotification:(id)notification;
- (void)_handleMatterSettingsUpdateNotification:(id)notification;
- (void)dealloc;
- (void)handleAccessoryFirmwareVersionUpdateNotification:(id)notification;
- (void)handleHomeAccessoryRemovedNotification:(id)notification;
- (void)handleMatterSettingsUpdateNotification:(id)notification;
- (void)removeSession:(id)session;
- (void)rescindStagedAsset:(id)asset completion:(id)completion;
- (void)resetFirmwareUpdateAccessoryRetryTracking:(id)tracking forAsset:(id)asset;
- (void)startStatusTimer;
- (void)stopUARPPacketCapture;
- (void)timerDidFire:(id)fire;
- (void)unregisterAccessory:(id)accessory;
@end

@implementation HMDAccessoryFirmwareUpdateManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  statusTimer = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];

  if (statusTimer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateManager *)selfCopy defaultProductDataUpdateAssetSource];
      v11 = HMSoftwareUpdateAssetSourceAsString();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Default asset source: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    activeSessions = [(HMDAccessoryFirmwareUpdateManager *)selfCopy activeSessions];
    [activeSessions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_106_127195];
  }
}

- (void)rescindStagedAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = [assetCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HMDAccessoryFirmwareUpdateManager_rescindStagedAsset_completion___block_invoke;
  v11[3] = &unk_279730E50;
  objc_copyWeak(&v14, &location);
  v12 = assetCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = assetCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __67__HMDAccessoryFirmwareUpdateManager_rescindStagedAsset_completion___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained isAccessoryRegistered:a1[4]])
  {
    v3 = [WeakRetained sessionForAccessory:a1[4]];
    if (v3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__HMDAccessoryFirmwareUpdateManager_rescindStagedAsset_completion___block_invoke_102;
      v15[3] = &unk_279735558;
      v16 = a1[5];
      [v3 rescindStagedAsset:v15];
      v4 = v16;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [a1[4] shortDescription];
        *buf = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not available session for accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:0 reason:@"Invalid state: session not available for accessory" suggestion:0];
      (*(a1[5] + 2))();
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[4] shortDescription];
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory not registered", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:0 reason:@"accessory not registered" suggestion:0];
    (*(a1[5] + 2))();
  }
}

- (void)stopUARPPacketCapture
{
  defaultUARPController = [(HMDAccessoryFirmwareUpdateManager *)self defaultUARPController];
  [defaultUARPController stopPacketCapture];
}

- (BOOL)startUARPPacketCapture:(id)capture
{
  captureCopy = capture;
  defaultUARPController = [(HMDAccessoryFirmwareUpdateManager *)self defaultUARPController];
  v6 = [defaultUARPController startPacketCapture:captureCopy];

  return v6;
}

- (void)resetFirmwareUpdateAccessoryRetryTracking:(id)tracking forAsset:(id)asset
{
  v6 = MEMORY[0x277CCACA8];
  assetCopy = asset;
  uuid = [tracking uuid];
  uUIDString = [uuid UUIDString];
  assetVersion = [assetCopy assetVersion];

  v12 = [v6 stringWithFormat:@"%@-%@", uUIDString, assetVersion];

  accessoryRetries = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  [accessoryRetries removeObjectForKey:v12];
}

- (BOOL)isFirmwareUpdateRetryAllowedForAccessory:(id)accessory forAsset:(id)asset
{
  v6 = MEMORY[0x277CCACA8];
  assetCopy = asset;
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  uUIDString = [uuid UUIDString];
  assetVersion = [assetCopy assetVersion];
  v12 = [v6 stringWithFormat:@"%@-%@", uUIDString, assetVersion];

  accessoryRetries = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  v14 = [accessoryRetries objectForKeyedSubscript:v12];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
  accessoryRetries2 = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  [accessoryRetries2 setObject:v15 forKeyedSubscript:v12];

  LOBYTE(self) = [(HMDAccessoryFirmwareUpdateManager *)self hasReachedMaximumFirmwareUpdateRetriesForAccessory:accessoryCopy assetID:assetCopy];
  return self ^ 1;
}

- (BOOL)hasReachedMaximumFirmwareUpdateRetriesForAccessory:(id)accessory assetID:(id)d
{
  v6 = MEMORY[0x277CCACA8];
  dCopy = d;
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  assetVersion = [dCopy assetVersion];

  v11 = [v6 stringWithFormat:@"%@-%@", uUIDString, assetVersion];

  accessoryRetries = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  v13 = [accessoryRetries objectForKeyedSubscript:v11];

  LOBYTE(accessoryRetries) = [v13 intValue] > 0xA;
  return accessoryRetries;
}

- (id)UARPAccessoryForHMDAccessory:(id)accessory
{
  v29 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([accessoryCopy identityType])
  {
    registeredAccessories = [(HMDAccessoryFirmwareUpdateManager *)self registeredAccessories];
    v6 = [registeredAccessories objectForKey:accessoryCopy];

    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277D02600]) initWithHMDHAPAccessory:accessoryCopy];
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        shortDescription = [accessoryCopy shortDescription];
        name = [accessoryCopy name];
        v21 = 138544130;
        v22 = v10;
        v23 = 2112;
        v24 = shortDescription;
        v25 = 2112;
        v26 = v6;
        v27 = 2112;
        v28 = name;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Initialized UARP Accessory %@ from HAP Accessory %@", &v21, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
      if (v6)
      {
        registeredAccessories2 = [(HMDAccessoryFirmwareUpdateManager *)selfCopy registeredAccessories];
        [registeredAccessories2 setObject:v6 forKey:accessoryCopy];
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      shortDescription2 = [accessoryCopy shortDescription];
      name2 = [accessoryCopy name];
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = shortDescription2;
      v25 = 2112;
      v26 = name2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unknown identity type for %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v6 = 0;
  }

  return v6;
}

- (id)findHMDHAPAccessoryWithUARPAccessory:(id)accessory
{
  v27 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  homeManager = [(HMDAccessoryFirmwareUpdateManager *)self homeManager];
  uuid = [accessoryCopy uuid];
  v7 = [homeManager accessoryWithUUID:uuid];

  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() & 1;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v9)
    {
      v12 = v8;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory %@ is not a HAPAccessory", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      uuid2 = [accessoryCopy uuid];
      v23 = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = uuid2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory %@ not found in homes", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

- (id)sessionForUARPAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  activeSessions = [(HMDAccessoryFirmwareUpdateManager *)self activeSessions];
  uuid = [accessoryCopy uuid];
  v7 = [activeSessions objectForKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)addSessionForUARPAccessory:(id)accessory
{
  v34 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([(HMDAccessoryFirmwareUpdateManager *)self supportsFirmwareUpdate])
  {
    v5 = [(HMDAccessoryFirmwareUpdateManager *)self findHMDHAPAccessoryWithUARPAccessory:accessoryCopy];
    if (v5)
    {
      wingman = [(HMDAccessoryFirmwareUpdateManager *)self wingman];
      logEventManager = [(HMDAccessoryFirmwareUpdateManager *)self logEventManager];
      v8 = [wingman newAccessoryFirmwareUpdateSessionWithHAPAccessory:v5 uarpAccessory:accessoryCopy accessoryFirmwareUpdateManager:self logEventManager:logEventManager];

      [v8 configure];
      os_unfair_lock_lock_with_options();
      activeSessions = [(HMDAccessoryFirmwareUpdateManager *)self activeSessions];
      uuid = [accessoryCopy uuid];
      [activeSessions setObject:v8 forKey:uuid];

      os_unfair_lock_unlock(&self->_lock);
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        shortDescription = [v5 shortDescription];
        v28 = 138543874;
        v29 = v14;
        v30 = 2112;
        v31 = shortDescription;
        v32 = 2112;
        v33 = accessoryCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%@] Created session %@ for accessory", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        shortDescription2 = [v5 shortDescription];
        v28 = 138543874;
        v29 = v19;
        v30 = 2112;
        v31 = shortDescription2;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] New firmwareUpdateSession %@", &v28, 0x20u);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v26;
        v30 = 2112;
        v31 = accessoryCopy;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find HAPAccessory from UARPHomeKitAccessory %@", &v28, 0x16u);
      }

      v8 = 0;
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not enabled on this device; ignoring", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v8 = 0;
  }

  return v8;
}

- (id)sessionForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  activeSessions = [(HMDAccessoryFirmwareUpdateManager *)self activeSessions];
  uuid = [accessoryCopy uuid];
  v7 = [activeSessions objectForKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)removeSession:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  hapAccessory = [sessionCopy hapAccessory];
  uuid = [hapAccessory uuid];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (uuid)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      hapAccessory2 = [sessionCopy hapAccessory];
      shortDescription = [hapAccessory2 shortDescription];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = shortDescription;
      v20 = 2112;
      v21 = sessionCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Removing session %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    os_unfair_lock_lock_with_options();
    activeSessions = [(HMDAccessoryFirmwareUpdateManager *)selfCopy activeSessions];
    [activeSessions removeObjectForKey:uuid];

    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@removeSession: No accessory UUID exists", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)startStatusTimer
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:13 options:86400.0];
  [(HMDAccessoryFirmwareUpdateManager *)self setStatusTimer:v3];

  statusTimer = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];
  [statusTimer setDelegate:self];

  workQueue = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  statusTimer2 = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];
  [statusTimer2 setDelegateQueue:workQueue];

  statusTimer3 = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];
  [statusTimer3 resume];
}

- (BOOL)checkForUpdateForAccessory:(id)accessory
{
  v18 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self UARPControllerForAccessory:accessoryCopy];
  v6 = [(HMDAccessoryFirmwareUpdateManager *)self UARPAccessoryForHMDAccessory:accessoryCopy];
  if (v6)
  {
    v7 = [v5 checkForUpdate:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [accessoryCopy shortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = shortDescription;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Cannot check for update for accessory - unsupported", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (void)unregisterAccessory:(id)accessory
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self UARPAccessoryForHMDAccessory:accessoryCopy];
  if (v5)
  {
    v6 = [(HMDAccessoryFirmwareUpdateManager *)self sessionForAccessory:accessoryCopy];
    v7 = v6;
    if (v6)
    {
      [v6 unregisterAccessory];
      [(HMDAccessoryFirmwareUpdateManager *)self removeSession:v7];
    }

    v8 = [(HMDAccessoryFirmwareUpdateManager *)self UARPControllerForAccessory:accessoryCopy];
    accessoryList = [v8 accessoryList];
    v10 = [accessoryList containsObject:v5];

    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = [v8 removeAccessory:v5];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        shortDescription = [accessoryCopy shortDescription];
        *v28 = 138543874;
        *&v28[4] = v16;
        *&v28[12] = 2112;
        *&v28[14] = shortDescription;
        *&v28[22] = 2112;
        v29 = v5;
        v18 = "%{public}@[%@] Unregistering accessory %@";
        v19 = v15;
        v20 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
        _os_log_impl(&dword_2531F8000, v19, v20, v18, v28, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      shortDescription = [accessoryCopy shortDescription];
      *v28 = 138543874;
      *&v28[4] = v16;
      *&v28[12] = 2112;
      *&v28[14] = shortDescription;
      *&v28[22] = 2112;
      v29 = v5;
      v18 = "%{public}@[%@] Not unregistering accessory %@ - failed";
      v19 = v15;
      v20 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    objc_autoreleasePoolPop(v12);
LABEL_15:
    v27 = [(HMDAccessoryFirmwareUpdateManager *)self registeredAccessories:*v28];
    [v27 removeObjectForKey:accessoryCopy];

    goto LABEL_16;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    shortDescription2 = [accessoryCopy shortDescription];
    name = [accessoryCopy name];
    *v28 = 138543874;
    *&v28[4] = v24;
    *&v28[12] = 2112;
    *&v28[14] = shortDescription2;
    *&v28[22] = 2112;
    v29 = name;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Not unregistering accessory %@ - unsupported", v28, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
LABEL_16:
}

- (void)_handleHomeAccessoryRemovedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  v7 = v8;
  if (v8)
  {
    [(HMDAccessoryFirmwareUpdateManager *)self unregisterAccessory:v8];
    v7 = v8;
  }
}

- (void)handleHomeAccessoryRemovedNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDAccessoryFirmwareUpdateManager_handleHomeAccessoryRemovedNotification___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__HMDAccessoryFirmwareUpdateManager_handleHomeAccessoryRemovedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleHomeAccessoryRemovedNotification:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)changeAccessory:(id)accessory source:(int64_t)source path:(id)path documentationPath:(id)documentationPath userInitiatedStaging:(BOOL)staging
{
  stagingCopy = staging;
  v92 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  pathCopy = path;
  documentationPathCopy = documentationPath;
  v15 = [(HMDAccessoryFirmwareUpdateManager *)self UARPControllerForAccessory:accessoryCopy];
  v16 = [(HMDAccessoryFirmwareUpdateManager *)self UARPAccessoryForHMDAccessory:accessoryCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  v20 = v19;
  if (v16)
  {
    v75 = documentationPathCopy;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      [accessoryCopy shortDescription];
      v76 = accessoryCopy;
      v72 = v16;
      v23 = v22 = v15;
      HMFBooleanToString();
      sourceCopy = source;
      v26 = v25 = pathCopy;
      *buf = 138543874;
      v79 = v21;
      v80 = 2112;
      v81 = v23;
      v82 = 2112;
      v83 = v26;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Setting userInitiatedFirmwareStaging to %@", buf, 0x20u);

      pathCopy = v25;
      source = sourceCopy;

      v15 = v22;
      v16 = v72;
      accessoryCopy = v76;
    }

    objc_autoreleasePoolPop(v17);
    [v16 setUserInitiatedFirmwareStaging:stagingCopy];
    v77 = v15;
    accessoryList = [v15 accessoryList];
    v28 = [accessoryList containsObject:v16];

    if ((v28 & 1) == 0)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        shortDescription = [accessoryCopy shortDescription];
        *buf = 138543618;
        v79 = v37;
        v80 = 2112;
        v81 = shortDescription;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot change source for unregistered accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v39 = objc_autoreleasePoolPush();
      v40 = v35;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v42 = HMFGetLogIdentifier();
        shortDescription2 = [accessoryCopy shortDescription];
        [v77 accessoryList];
        v45 = v44 = pathCopy;
        *buf = 138544130;
        v79 = v42;
        v80 = 2112;
        v81 = shortDescription2;
        v82 = 2112;
        v83 = v16;
        v84 = 2112;
        v85 = v45;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Looking for %@ in accessoryList %@", buf, 0x2Au);

        pathCopy = v44;
      }

      objc_autoreleasePoolPop(v39);
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      documentationPathCopy = v75;
      goto LABEL_34;
    }

    if (source == 2)
    {
      documentationPathCopy = v75;
      if (![pathCopy length])
      {
        v63 = objc_autoreleasePoolPush();
        v64 = selfCopy;
        v65 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = HMFGetLogIdentifier();
          shortDescription3 = [accessoryCopy shortDescription];
          HMSoftwareUpdateAssetSourceAsString();
          v69 = v68 = pathCopy;
          *buf = 138543874;
          v79 = v66;
          v80 = 2112;
          v81 = shortDescription3;
          v82 = 2112;
          v83 = v69;
          _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@[%@] Invalid path for asset source %@", buf, 0x20u);

          pathCopy = v68;
          documentationPathCopy = v75;
        }

        objc_autoreleasePoolPop(v63);
        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        goto LABEL_34;
      }

      v29 = objc_alloc(MEMORY[0x277D02618]);
      v30 = 0;
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x277D02618]);
      documentationPathCopy = v75;
      if ((source - 1) > 8)
      {
        v30 = 1;
      }

      else
      {
        v30 = qword_253D4BF98[source - 1];
      }
    }

    if (pathCopy)
    {
      v46 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
      if (documentationPathCopy)
      {
LABEL_21:
        v47 = [MEMORY[0x277CBEBC0] fileURLWithPath:documentationPathCopy isDirectory:0];
        v48 = [v29 initWithLocationType:v30 remoteURL:v46 releaseNotesRemoteURL:v47];

LABEL_24:
        if (pathCopy)
        {
        }

        v49 = [v77 changeAssetLocation:v16 assetID:v48];
        v50 = objc_autoreleasePoolPush();
        v51 = selfCopy;
        v52 = HMFGetOSLogHandle();
        v53 = v52;
        if (v49)
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            [accessoryCopy shortDescription];
            v55 = v73 = v50;
            v56 = HMSoftwareUpdateAssetSourceAsString();
            assetVersion = [v48 assetVersion];
            *buf = 138544898;
            v79 = v54;
            v80 = 2112;
            v81 = v55;
            v82 = 2112;
            v83 = v56;
            v84 = 2112;
            v85 = assetVersion;
            v86 = 2112;
            v87 = pathCopy;
            v88 = 2112;
            v89 = accessoryCopy;
            v90 = 2112;
            v91 = v48;
            _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@[%@] Successfully changed source to %@ %@ %@ for accessory <%@> asset <%@>", buf, 0x48u);

            documentationPathCopy = v75;
            v50 = v73;
          }

          objc_autoreleasePoolPop(v50);
          v33 = 0;
        }

        else
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v74 = HMFGetLogIdentifier();
            shortDescription4 = [accessoryCopy shortDescription];
            v71 = HMSoftwareUpdateAssetSourceAsString();
            assetVersion2 = [v48 assetVersion];
            name = [accessoryCopy name];
            *buf = 138544642;
            v79 = v74;
            v80 = 2112;
            v81 = shortDescription4;
            v82 = 2112;
            v83 = v71;
            v84 = 2112;
            v85 = assetVersion2;
            v60 = assetVersion2;
            v86 = 2112;
            v87 = pathCopy;
            v88 = 2112;
            v89 = name;
            v61 = name;
            _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to change source to %@ %@ %@ for accessory %@", buf, 0x3Eu);

            documentationPathCopy = v75;
          }

          objc_autoreleasePoolPop(v50);
          v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        }

LABEL_34:
        v15 = v77;
        goto LABEL_35;
      }
    }

    else
    {
      v46 = 0;
      if (documentationPathCopy)
      {
        goto LABEL_21;
      }
    }

    v48 = [v29 initWithLocationType:v30 remoteURL:v46 releaseNotesRemoteURL:0];
    goto LABEL_24;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    shortDescription5 = [accessoryCopy shortDescription];
    *buf = 138543618;
    v79 = v31;
    v80 = 2112;
    v81 = shortDescription5;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot change source for unsupported accessory", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_35:

  return v33;
}

- (BOOL)_registerAccessory:(id)accessory source:(int64_t)source path:(id)path
{
  v182 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  pathCopy = path;
  workQueue = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [accessoryCopy home];
  isOwnerUser = [home isOwnerUser];

  firmwareVersion = [accessoryCopy firmwareVersion];

  firmwareUpdateProfile = [accessoryCopy firmwareUpdateProfile];

  if (![(HMDAccessoryFirmwareUpdateManager *)self isAccessoryRegistered:accessoryCopy])
  {
    sourceCopy = source;
    if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [accessoryCopy supportsCHIP])
    {
      matterVendorID = [accessoryCopy matterVendorID];
      if (matterVendorID)
      {
        matterVendorID2 = [accessoryCopy matterVendorID];
        v23 = [matterVendorID2 isEqualToNumber:&unk_286628F30] ^ 1;
      }

      else
      {
        v23 = 0;
      }

      matterProductID = [accessoryCopy matterProductID];
      if (matterProductID)
      {
        matterProductID2 = [accessoryCopy matterProductID];
        v157 = [matterProductID2 isEqualToNumber:&unk_286628F30] ^ 1;
      }

      else
      {
        v157 = 0;
      }

      name = [accessoryCopy name];

      v149 = isOwnerUser;
      if (firmwareUpdateProfile)
      {
        firmwareUpdateProfile2 = [accessoryCopy firmwareUpdateProfile];
        matterFirmwareUpdateProfile = [firmwareUpdateProfile2 matterFirmwareUpdateProfile];

        if (matterFirmwareUpdateProfile)
        {
          firmwareUpdateProfile3 = [accessoryCopy firmwareUpdateProfile];
          matterFirmwareUpdateProfile = [firmwareUpdateProfile3 matterFirmwareUpdateProfile];
          matterFirmwareRevisionNumber = [matterFirmwareUpdateProfile matterFirmwareRevisionNumber];
          v30 = matterFirmwareRevisionNumber != 0;

          v31 = v30;
          LODWORD(matterFirmwareUpdateProfile) = 1;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
        LODWORD(matterFirmwareUpdateProfile) = 0;
      }

      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v145 = v23;
        v139 = HMFGetLogIdentifier();
        shortDescription = [accessoryCopy shortDescription];
        HMFBooleanToString();
        v34 = v140 = selfCopy;
        HMFBooleanToString();
        v35 = v163 = pathCopy;
        HMFBooleanToString();
        matterFirmwareUpdateProfile = v141 = matterFirmwareUpdateProfile;
        HMFBooleanToString();
        v36 = v142 = v31;
        v37 = HMFBooleanToString();
        *buf = 138544898;
        v167 = v139;
        v168 = 2112;
        v169 = shortDescription;
        v170 = 2112;
        v171 = v34;
        v172 = 2112;
        v173 = v35;
        v174 = 2112;
        v175 = matterFirmwareUpdateProfile;
        v176 = 2112;
        v177 = v36;
        v178 = 2112;
        v179 = v37;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[%@] Matter AFU Settings: hasMatterFirmwareUpdateProfile: %@, hasMatterFirmwareRevisionNumber: %@, hasMatterVendorID: %@, hasMatterProductID: %@, hasHapAccessoryName: %@", buf, 0x48u);

        v23 = v145;
        v31 = v142;

        LODWORD(matterFirmwareUpdateProfile) = v141;
        pathCopy = v163;

        selfCopy = v140;
      }

      objc_autoreleasePoolPop(context);
      isOwnerUser = v149;
      if ((matterFirmwareUpdateProfile & v31 & v23 & v157) != 1 || !name)
      {
        v55 = objc_autoreleasePoolPush();
        v56 = selfCopy;
        v57 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
LABEL_53:

          objc_autoreleasePoolPop(v55);
LABEL_54:
          v20 = 0;
          goto LABEL_94;
        }

        v58 = HMFGetLogIdentifier();
        shortDescription2 = [accessoryCopy shortDescription];
        *buf = 138543618;
        v167 = v58;
        v168 = 2112;
        v169 = shortDescription2;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not registering with FirmwareUpdateManager due to invalid matter AFU settings", buf, 0x16u);
LABEL_52:

        goto LABEL_53;
      }
    }

    if (![accessoryCopy identityType])
    {
      matterVendorID3 = [accessoryCopy matterVendorID];
      matterProductID3 = [accessoryCopy matterProductID];
      v47 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        shortDescription3 = [accessoryCopy shortDescription];
        manufacturer = [accessoryCopy manufacturer];
        [accessoryCopy model];
        v53 = v165 = pathCopy;
        [accessoryCopy productData];
        v54 = v161 = v47;
        *buf = 138545154;
        v167 = v50;
        v168 = 2112;
        v169 = shortDescription3;
        v170 = 2112;
        v171 = manufacturer;
        v172 = 2112;
        v173 = v53;
        v174 = 2112;
        v175 = v54;
        v176 = 2112;
        v177 = matterVendorID3;
        v178 = 2112;
        v179 = matterProductID3;
        v180 = 2112;
        v181 = accessoryCopy;
        _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not registering with FirmwareUpdateManager due to unknown identity type for manufacturer: %@ model: %@ productData: %@ vendorID: %@ productID: %@ accessory: %@", buf, 0x52u);

        v47 = v161;
        pathCopy = v165;
      }

      objc_autoreleasePoolPop(v47);
      goto LABEL_54;
    }

    v164 = pathCopy;
    if (firmwareVersion)
    {
      v38 = (firmwareUpdateProfile != 0) & isOwnerUser;
    }

    else
    {
      v38 = 0;
    }

    v39 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v41 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
LABEL_43:

      objc_autoreleasePoolPop(v39);
      if (v38)
      {
        softwareUpdate = [accessoryCopy softwareUpdate];
        if (!softwareUpdate)
        {
          goto LABEL_57;
        }

        softwareUpdate4 = softwareUpdate;
        softwareUpdate2 = [accessoryCopy softwareUpdate];
        if ([softwareUpdate2 state] == 2)
        {
          firmwareVersion2 = [accessoryCopy firmwareVersion];
          softwareUpdate3 = [accessoryCopy softwareUpdate];
          version = [softwareUpdate3 version];
          v67 = [firmwareVersion2 isAtLeastVersion:version];

          if (!v67)
          {
            goto LABEL_57;
          }

          v68 = objc_autoreleasePoolPush();
          v69 = selfCopy3;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v71 = HMFGetLogIdentifier();
            shortDescription4 = [accessoryCopy shortDescription];
            *buf = 138543618;
            v167 = v71;
            v168 = 2112;
            v169 = shortDescription4;
            _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Verifying pending firmware version on registered accessory", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
          softwareUpdate4 = [accessoryCopy softwareUpdate];
          [softwareUpdate4 updateLocalState:4];
        }

        else
        {
        }

LABEL_57:
        v76 = [(HMDAccessoryFirmwareUpdateManager *)selfCopy3 UARPAccessoryForHMDAccessory:accessoryCopy];
        if (!v76)
        {
          v77 = objc_autoreleasePoolPush();
          v78 = selfCopy3;
          v79 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v80 = HMFGetLogIdentifier();
            shortDescription5 = [accessoryCopy shortDescription];
            *buf = 138543618;
            v167 = v80;
            v168 = 2112;
            v169 = shortDescription5;
            _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Not registering accessory with FirmwareUpdateManager - unsupported accessory type", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v77);
          v20 = 0;
          goto LABEL_93;
        }

        if (pathCopy)
        {
          v159 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
        }

        else
        {
          v159 = 0;
        }

        v82 = objc_alloc(MEMORY[0x277D02618]);
        if ((sourceCopy - 1) > 8)
        {
          v83 = 1;
        }

        else
        {
          v83 = qword_253D4BF98[sourceCopy - 1];
        }

        v84 = [v82 initWithLocationType:v83 remoteURL:v159];
        v85 = [(HMDAccessoryFirmwareUpdateManager *)selfCopy3 UARPControllerForAccessory:accessoryCopy];
        v86 = objc_autoreleasePoolPush();
        v87 = selfCopy3;
        v88 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = HMFGetLogIdentifier();
          shortDescription6 = [accessoryCopy shortDescription];
          *buf = 138544130;
          v167 = v89;
          v168 = 2112;
          v169 = shortDescription6;
          v170 = 2112;
          v171 = v76;
          v172 = 2112;
          v173 = v84;
          _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_INFO, "%{public}@[%@] Registering UARP Accessory %@ with AssetID %@", buf, 0x2Au);

          pathCopy = v164;
        }

        objc_autoreleasePoolPop(v86);
        if ([v85 addAccessory:v76 assetID:v84])
        {
          firmwareVersion3 = [accessoryCopy firmwareVersion];
          versionString = [firmwareVersion3 versionString];

          if (![accessoryCopy supportsCHIP] || (objc_msgSend(accessoryCopy, "firmwareUpdateProfile"), v93 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v93, "matterFirmwareUpdateProfile"), v94 = v84, v95 = v85, v96 = versionString, v97 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v97, "matterFirmwareRevisionNumber"), v98 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v98, "stringValue"), v99 = objc_claimAutoreleasedReturnValue(), v96, v85 = v95, v84 = v94, v98, pathCopy = v164, v97, v93, (versionString = v99) != 0))
          {
            v162 = versionString;
            v100 = objc_autoreleasePoolPush();
            v101 = v87;
            v102 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              v103 = HMFGetLogIdentifier();
              shortDescription7 = [accessoryCopy shortDescription];
              name2 = [accessoryCopy name];
              *buf = 138544386;
              v167 = v103;
              v168 = 2112;
              v169 = shortDescription7;
              v170 = 2112;
              v171 = name2;
              v172 = 2112;
              v173 = v76;
              v174 = 2112;
              v175 = v162;
              _os_log_impl(&dword_2531F8000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Registered accessory %@ %@, version %@ with FirmwareUpdateManager", buf, 0x34u);

              pathCopy = v164;
            }

            objc_autoreleasePoolPop(v100);
            if (([v85 updateProperty:4 value:v162 forAccessory:v76] & 1) == 0)
            {
              v106 = objc_autoreleasePoolPush();
              v107 = v101;
              v108 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
              {
                v109 = HMFGetLogIdentifier();
                shortDescription8 = [accessoryCopy shortDescription];
                *buf = 138543618;
                v167 = v109;
                v168 = 2112;
                v169 = shortDescription8;
                _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to update UARP accessory firmware version property for accessory", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v106);
              pathCopy = v164;
            }

            if ([accessoryCopy isAppleAccessory])
            {
              v111 = [(HMDAccessoryFirmwareUpdateManager *)v101 sessionForUARPAccessory:v76];
              if (v111)
              {
                v112 = objc_autoreleasePoolPush();
                v113 = v101;
                v114 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v115 = v155 = v111;
                  [accessoryCopy shortDescription];
                  v116 = v151 = v112;
                  uuid = [v76 uuid];
                  *buf = 138543874;
                  v167 = v115;
                  v168 = 2112;
                  v169 = v116;
                  v170 = 2112;
                  v171 = uuid;
                  _os_log_impl(&dword_2531F8000, v114, OS_LOG_TYPE_ERROR, "%{public}@[%@] Session already created when trying to register accessory %@ with FirmwareUpdateSession", buf, 0x20u);

                  v112 = v151;
                  v111 = v155;
                }

                objc_autoreleasePoolPop(v112);
              }

              v118 = objc_autoreleasePoolPush();
              v119 = v101;
              v120 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
              {
                HMFGetLogIdentifier();
                v121 = v156 = v111;
                shortDescription9 = [accessoryCopy shortDescription];
                [v76 uuid];
                v123 = v152 = v118;
                *buf = 138543874;
                v167 = v121;
                v168 = 2112;
                v169 = shortDescription9;
                v170 = 2112;
                v171 = v123;
                _os_log_impl(&dword_2531F8000, v120, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Creating session to register accessory %@ with FirmwareUpdateSession", buf, 0x20u);

                v118 = v152;
                v111 = v156;
              }

              objc_autoreleasePoolPop(v118);
              v124 = [(HMDAccessoryFirmwareUpdateManager *)v119 addSessionForUARPAccessory:v76];

              [v124 registerAccessory];
              pathCopy = v164;
            }

            v125 = objc_autoreleasePoolPush();
            v126 = v101;
            v127 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
            {
              v128 = HMFGetLogIdentifier();
              shortDescription10 = [accessoryCopy shortDescription];
              firmwareVersion4 = [accessoryCopy firmwareVersion];
              *buf = 138544130;
              v167 = v128;
              v168 = 2112;
              v169 = shortDescription10;
              v170 = 2112;
              v171 = firmwareVersion4;
              v172 = 2112;
              v173 = v162;
              _os_log_impl(&dword_2531F8000, v127, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory firmware version updated to %@ (%@)", buf, 0x2Au);

              pathCopy = v164;
            }

            objc_autoreleasePoolPop(v125);
            v20 = 1;
            goto LABEL_92;
          }

          v131 = objc_autoreleasePoolPush();
          v132 = v87;
          v133 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            v137 = HMFGetLogIdentifier();
            shortDescription11 = [accessoryCopy shortDescription];
            *buf = 138543874;
            v167 = v137;
            v168 = 2112;
            v169 = shortDescription11;
            v170 = 2112;
            v171 = 0;
            _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_ERROR, "%{public}@[%@] Matter firmware version is invalid: %@", buf, 0x20u);
          }
        }

        else
        {
          v131 = objc_autoreleasePoolPush();
          v132 = v87;
          v133 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            v134 = HMFGetLogIdentifier();
            shortDescription12 = [accessoryCopy shortDescription];
            *buf = 138543874;
            v167 = v134;
            v168 = 2112;
            v169 = shortDescription12;
            v170 = 2112;
            v171 = v76;
            _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to register UARP accessory %@", buf, 0x20u);

            pathCopy = v164;
          }
        }

        objc_autoreleasePoolPop(v131);
        v20 = 0;
LABEL_92:

LABEL_93:
        goto LABEL_94;
      }

      v55 = objc_autoreleasePoolPush();
      v56 = selfCopy3;
      v57 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v58 = HMFGetLogIdentifier();
      shortDescription2 = [accessoryCopy shortDescription];
      name3 = [accessoryCopy name];
      v74 = HMFBooleanToString();
      v75 = HMFBooleanToString();
      *buf = 138544386;
      v167 = v58;
      v168 = 2112;
      v169 = shortDescription2;
      v170 = 2112;
      v171 = name3;
      v172 = 2112;
      v173 = v74;
      v174 = 2112;
      v175 = v75;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not registering accessory %@ with FirmwareUpdateManager. Details: validAFUSettings = %@, validDynamicAssetUpdateSettings = %@", buf, 0x34u);

      goto LABEL_52;
    }

    v154 = v39;
    v158 = HMFGetLogIdentifier();
    contexta = [accessoryCopy shortDescription];
    v146 = HMFBooleanToString();
    v150 = HMFBooleanToString();
    v144 = HMFBooleanToString();
    v42 = HMFBooleanToString();
    identityType = [accessoryCopy identityType];
    if (!identityType)
    {
      goto LABEL_41;
    }

    if (identityType != 3)
    {
      v44 = @"AppleModelNumber";
      if (identityType == 1)
      {
        v44 = @"ProductData";
      }

      goto LABEL_42;
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v44 = @"VendorProductID";
    }

    else
    {
LABEL_41:
      v44 = @"Unknown";
    }

LABEL_42:
    v60 = v44;
    *buf = 138544898;
    v167 = v158;
    v168 = 2112;
    v169 = contexta;
    v170 = 2112;
    v171 = v146;
    v172 = 2112;
    v173 = v150;
    v174 = 2112;
    v175 = v144;
    v176 = 2112;
    v177 = v42;
    v178 = 2112;
    v179 = v60;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@[%@] Valid AFU settings = %@ : isOwner = %@, hasFirmwareUpdateProfile = %@, hasFirmwareVersion = %@, identityType = %@", buf, 0x48u);

    v39 = v154;
    goto LABEL_43;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    shortDescription13 = [accessoryCopy shortDescription];
    *buf = 138543618;
    v167 = v18;
    v168 = 2112;
    v169 = shortDescription13;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Accessory already registered with FirmwareUpdateManager", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = 1;
LABEL_94:

  return v20;
}

- (BOOL)registerAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDAccessoryFirmwareUpdateManager_registerAccessory___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v8);

  return 1;
}

void __55__HMDAccessoryFirmwareUpdateManager_registerAccessory___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    v17 = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[%@] Registering accessory with FirmwareUpdateManager", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) _registerAccessory:*(a1 + 40) source:objc_msgSend(*(a1 + 32) path:{"defaultUpdateAssetSourceWithAccessory:", *(a1 + 40)), 0}];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) shortDescription];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v14 = "%{public}@[%@] FirmwareUpdateManager Registration succeeded for accessory";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 40) shortDescription];
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v14 = "%{public}@[%@] FirmwareUpdateManager Registration failed for accessory";
    v15 = v11;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v8);
}

- (int64_t)defaultProductDataUpdateAssetSource
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDAccessoryFirmwareUpdateManager_defaultProductDataUpdateAssetSource__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  if (defaultProductDataUpdateAssetSource_onceToken != -1)
  {
    dispatch_once(&defaultProductDataUpdateAssetSource_onceToken, block);
  }

  return defaultProductDataUpdateAssetSource_updateAssetSource;
}

void __72__HMDAccessoryFirmwareUpdateManager_defaultProductDataUpdateAssetSource__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"firmwareUpdateiCloudContainer"];
  v4 = [v3 stringValue];

  if (v4 && isValidHMSoftwareUpdateAssetSourceString())
  {
    defaultProductDataUpdateAssetSource_updateAssetSource = stringToHMSoftwareUpdateAssetSource();
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMSoftwareUpdateAssetSourceAsString();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Setting MFi default container to: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (int64_t)defaultUpdateAssetSourceWithAccessory:(id)accessory
{
  result = [accessory identityType];
  if (result)
  {
    if (result == 3)
    {
      if (_os_feature_enabled_impl())
      {
        return 8;
      }

      else
      {
        return 8 * (CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) != 0);
      }
    }

    else if (result == 1)
    {

      return [(HMDAccessoryFirmwareUpdateManager *)self defaultProductDataUpdateAssetSource];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

- (void)_handleMatterSettingsUpdateNotification:(id)notification
{
  v92 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v11)
    {
      v34 = HMFGetLogIdentifier();
      v84 = 138543362;
      v85 = v34;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received matter settings update notification", &v84, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v38 = HMFGetLogIdentifier();
    object2 = [notificationCopy object];
    v40 = objc_opt_class();
    v41 = v40;
    v42 = objc_opt_class();
    v84 = 138543874;
    v85 = v38;
    v86 = 2112;
    v87 = v40;
    v88 = 2112;
    v89 = v42;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@The notification object of type %@ is not of expected type %@", &v84, 0x20u);

    goto LABEL_30;
  }

  if (v11)
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [v7 shortDescription];
    v84 = 138543618;
    v85 = v12;
    v86 = 2112;
    v87 = shortDescription;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Received matter settings update notification", &v84, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (![(HMDAccessoryFirmwareUpdateManager *)selfCopy supportsFirmwareUpdate])
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      shortDescription2 = [v7 shortDescription];
      v84 = 138543618;
      v85 = v38;
      v86 = 2112;
      v87 = shortDescription2;
      v44 = "%{public}@[%@] Firmware Update not enabled on this device; ignoring";
      v45 = v37;
      v46 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
      _os_log_impl(&dword_2531F8000, v45, v46, v44, &v84, 0x16u);

LABEL_30:
    }

LABEL_31:

    v33 = v35;
    goto LABEL_32;
  }

  if (([v7 supportsCHIP] & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = HMFGetLogIdentifier();
      shortDescription2 = [v7 shortDescription];
      v84 = 138543618;
      v85 = v38;
      v86 = 2112;
      v87 = shortDescription2;
      v44 = "%{public}@[%@] Matter firmware update not supported";
      v45 = v37;
      v46 = OS_LOG_TYPE_DEBUG;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  name = [notificationCopy name];
  v15 = [name isEqualToString:@"HMDAccessoryVendorIDProductIDUpdatedNotification"];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription3 = [v7 shortDescription];
      v84 = 138543618;
      v85 = v19;
      v86 = 2112;
      v87 = shortDescription3;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[%@] Received VID/PID update notification", &v84, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    matterVendorID = [v7 matterVendorID];
    if (!matterVendorID)
    {
      goto LABEL_17;
    }

    v22 = matterVendorID;
    matterProductID = [v7 matterProductID];
    if (!matterProductID)
    {
      goto LABEL_16;
    }

    v24 = matterProductID;
    matterVendorID2 = [v7 matterVendorID];
    if ([matterVendorID2 isEqualToNumber:&unk_286628F30])
    {

LABEL_16:
LABEL_17:
      v26 = objc_autoreleasePoolPush();
      v27 = v17;
      v28 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
LABEL_20:

        v33 = v26;
LABEL_32:
        objc_autoreleasePoolPop(v33);
        goto LABEL_33;
      }

      v29 = HMFGetLogIdentifier();
      shortDescription4 = [v7 shortDescription];
      matterVendorID3 = [v7 matterVendorID];
      matterProductID2 = [v7 matterProductID];
      v84 = 138544130;
      v85 = v29;
      v86 = 2112;
      v87 = shortDescription4;
      v88 = 2112;
      v89 = matterVendorID3;
      v90 = 2112;
      v91 = matterProductID2;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[%@] Ignoring invalid VID: %@, PID: %@", &v84, 0x2Au);

LABEL_19:
      goto LABEL_20;
    }

    matterProductID3 = [v7 matterProductID];
    v48 = [matterProductID3 isEqualToNumber:&unk_286628F30];

    if (v48)
    {
      goto LABEL_17;
    }
  }

  name2 = [notificationCopy name];
  v50 = [name2 isEqualToString:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification"];

  if (v50)
  {
    v51 = objc_autoreleasePoolPush();
    v52 = selfCopy;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      shortDescription5 = [v7 shortDescription];
      v84 = 138543618;
      v85 = v54;
      v86 = 2112;
      v87 = shortDescription5;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@[%@] Received matter firmware revision number update notification", &v84, 0x16u);
    }

    objc_autoreleasePoolPop(v51);
    firmwareUpdateProfile = [v7 firmwareUpdateProfile];
    matterFirmwareUpdateProfile = [firmwareUpdateProfile matterFirmwareUpdateProfile];
    matterFirmwareRevisionNumber = [matterFirmwareUpdateProfile matterFirmwareRevisionNumber];

    v59 = objc_autoreleasePoolPush();
    v60 = v52;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = HMFGetLogIdentifier();
      shortDescription6 = [v7 shortDescription];
      v84 = 138543874;
      v85 = v62;
      v86 = 2112;
      v87 = shortDescription6;
      v88 = 2112;
      v89 = matterFirmwareRevisionNumber;
      _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@[%@] Firmware Update Manager: Received matter firmware revision number update notification, request change to %@", &v84, 0x20u);
    }

    objc_autoreleasePoolPop(v59);
    if (!matterFirmwareRevisionNumber)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v60;
      v28 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v29 = HMFGetLogIdentifier();
      shortDescription4 = [v7 shortDescription];
      v84 = 138543874;
      v85 = v29;
      v86 = 2112;
      v87 = shortDescription4;
      v88 = 2112;
      v89 = 0;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[%@] Ignoring invalid matterFirmwareRevisionNumber: %@", &v84, 0x20u);
      goto LABEL_19;
    }
  }

  v64 = [(HMDAccessoryFirmwareUpdateManager *)selfCopy registerAndCreateSessionForAccessory:v7 updateUARPParameters:0];
  if (v64)
  {
    v65 = objc_autoreleasePoolPush();
    v66 = selfCopy;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = HMFGetLogIdentifier();
      shortDescription7 = [v7 shortDescription];
      v84 = 138543618;
      v85 = v68;
      v86 = 2112;
      v87 = shortDescription7;
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@Failed to register and create session for accessory: %@", &v84, 0x16u);
    }

    objc_autoreleasePoolPop(v65);
  }

  else
  {
    name3 = [notificationCopy name];
    v71 = [name3 isEqualToString:@"HMDAccessoryVendorIDProductIDUpdatedNotification"];

    if (v71)
    {
      v72 = objc_autoreleasePoolPush();
      v73 = selfCopy;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v75 = HMFGetLogIdentifier();
        shortDescription8 = [v7 shortDescription];
        v84 = 138543874;
        v85 = v75;
        v86 = 2112;
        v87 = shortDescription8;
        v88 = 2112;
        v89 = 0;
        _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@[%@] Updating accessory vendor ID and product ID with new session %@", &v84, 0x20u);
      }

      objc_autoreleasePoolPop(v72);
      [0 updateAccessoryVendorIDAndProductID];
    }

    else
    {
      name4 = [notificationCopy name];
      v78 = [name4 isEqualToString:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification"];

      if (v78)
      {
        v79 = objc_autoreleasePoolPush();
        v80 = selfCopy;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v82 = HMFGetLogIdentifier();
          shortDescription9 = [v7 shortDescription];
          v84 = 138543874;
          v85 = v82;
          v86 = 2112;
          v87 = shortDescription9;
          v88 = 2112;
          v89 = 0;
          _os_log_impl(&dword_2531F8000, v81, OS_LOG_TYPE_INFO, "%{public}@[%@] Updating matter firmware version number with new session %@", &v84, 0x20u);
        }

        objc_autoreleasePoolPop(v79);
        [0 updateAccessoryFirmwareVersion];
      }
    }
  }

LABEL_33:
}

- (void)handleMatterSettingsUpdateNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDAccessoryFirmwareUpdateManager_handleMatterSettingsUpdateNotification___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__HMDAccessoryFirmwareUpdateManager_handleMatterSettingsUpdateNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleMatterSettingsUpdateNotification:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_handleAccessoryFirmwareVersionUpdateNotification:(id)notification
{
  v63 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(HMDAccessoryFirmwareUpdateManager *)self supportsFirmwareUpdate])
  {
    object = [notificationCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = object;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!v7)
    {
      if (v11)
      {
        v29 = HMFGetLogIdentifier();
        v57 = 138543362;
        v58 = v29;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received accessory firmware version update notification", &v57, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v33 = HMFGetLogIdentifier();
      object2 = [notificationCopy object];
      v35 = objc_opt_class();
      v36 = v35;
      v37 = objc_opt_class();
      v57 = 138543874;
      v58 = v33;
      v59 = 2112;
      v60 = v35;
      v61 = 2112;
      v62 = v37;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@The notification object of type %@ is not of expected type %@", &v57, 0x20u);

      goto LABEL_28;
    }

    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [v7 shortDescription];
      v57 = 138543618;
      v58 = v12;
      v59 = 2112;
      v60 = shortDescription;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Received accessory firmware version update notification", &v57, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if ([(HMDAccessoryFirmwareUpdateManager *)selfCopy registerAccessory:v7])
    {
      if ([(HMDAccessoryFirmwareUpdateManager *)selfCopy isAccessoryRegistered:v7])
      {
        v14 = [(HMDAccessoryFirmwareUpdateManager *)selfCopy sessionForAccessory:v7];
        if (v14)
        {
          v15 = v14;
          v16 = objc_autoreleasePoolPush();
          v17 = selfCopy;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = HMFGetLogIdentifier();
            shortDescription2 = [v7 shortDescription];
            v57 = 138543874;
            v58 = v19;
            v59 = 2112;
            v60 = shortDescription2;
            v61 = 2112;
            v62 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Do not need to establish a new session with existing session: %@", &v57, 0x20u);
          }

          objc_autoreleasePoolPop(v16);
          goto LABEL_48;
        }

        v40 = [(HMDAccessoryFirmwareUpdateManager *)selfCopy UARPAccessoryForHMDAccessory:v7];
        if (v40)
        {
          v41 = [(HMDAccessoryFirmwareUpdateManager *)selfCopy addSessionForUARPAccessory:v40];
          if (v41)
          {
            v15 = v41;
            supportsCHIP = [v7 supportsCHIP];
            v43 = objc_autoreleasePoolPush();
            v44 = selfCopy;
            v45 = HMFGetOSLogHandle();
            v46 = v45;
            if (supportsCHIP)
            {
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v47 = HMFGetLogIdentifier();
                shortDescription3 = [v7 shortDescription];
                v57 = 138543618;
                v58 = v47;
                v59 = 2112;
                v60 = shortDescription3;
                _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@[%@] Ignoring this notification for updating UARP with firmware version", &v57, 0x16u);
              }

              objc_autoreleasePoolPop(v43);
            }

            else
            {
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v55 = HMFGetLogIdentifier();
                shortDescription4 = [v7 shortDescription];
                v57 = 138543874;
                v58 = v55;
                v59 = 2112;
                v60 = shortDescription4;
                v61 = 2112;
                v62 = v15;
                _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@[%@] Updating accessory firmware version with new session %@", &v57, 0x20u);
              }

              objc_autoreleasePoolPop(v43);
              [v15 updateAccessoryFirmwareVersion];
            }

            goto LABEL_47;
          }

          v49 = objc_autoreleasePoolPush();
          v50 = selfCopy;
          v51 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = HMFGetLogIdentifier();
            shortDescription5 = [v7 shortDescription];
            v57 = 138543618;
            v58 = v52;
            v59 = 2112;
            v60 = shortDescription5;
            v54 = "%{public}@[%@] Failed to start update for accessory because a session could not be established";
            goto LABEL_42;
          }
        }

        else
        {
          v49 = objc_autoreleasePoolPush();
          v50 = selfCopy;
          v51 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = HMFGetLogIdentifier();
            shortDescription5 = [v7 shortDescription];
            v57 = 138543618;
            v58 = v52;
            v59 = 2112;
            v60 = shortDescription5;
            v54 = "%{public}@[%@] UARP accessory is not found for accessory";
LABEL_42:
            _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, v54, &v57, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v49);
        v15 = 0;
LABEL_47:

LABEL_48:
        goto LABEL_30;
      }

      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = HMFGetLogIdentifier();
        shortDescription6 = [v7 shortDescription];
        v57 = 138543618;
        v58 = v33;
        v59 = 2112;
        v60 = shortDescription6;
        v39 = "%{public}@[%@] Accessory not registered with FirmwareUpdateManager";
        goto LABEL_27;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = HMFGetLogIdentifier();
        shortDescription6 = [v7 shortDescription];
        v57 = 138543618;
        v58 = v33;
        v59 = 2112;
        v60 = shortDescription6;
        v39 = "%{public}@[%@] Failed to register accessory with FirmwareUpdateManager";
LABEL_27:
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEBUG, v39, &v57, 0x16u);

LABEL_28:
      }
    }

LABEL_29:

    objc_autoreleasePoolPop(v30);
LABEL_30:

    goto LABEL_31;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v57 = 138543362;
    v58 = v24;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Received accessory firmware version update notification", &v57, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v25 = objc_autoreleasePoolPush();
  v26 = selfCopy2;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    v57 = 138543362;
    v58 = v28;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not enabled on this device; ignoring", &v57, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
LABEL_31:
}

- (void)handleAccessoryFirmwareVersionUpdateNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMDAccessoryFirmwareUpdateManager_handleAccessoryFirmwareVersionUpdateNotification___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __86__HMDAccessoryFirmwareUpdateManager_handleAccessoryFirmwareVersionUpdateNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleAccessoryFirmwareVersionUpdateNotification:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (BOOL)isAccessoryRegistered:(id)registered
{
  registeredCopy = registered;
  registeredAccessories = [(HMDAccessoryFirmwareUpdateManager *)self registeredAccessories];
  v6 = [registeredAccessories objectForKey:registeredCopy];

  return v6 != 0;
}

- (id)matterUARPController
{
  wingman = [(HMDAccessoryFirmwareUpdateManager *)self wingman];
  matterUARPController = [wingman matterUARPController];

  return matterUARPController;
}

- (UARPController)defaultUARPController
{
  wingman = [(HMDAccessoryFirmwareUpdateManager *)self wingman];
  defaultUARPController = [wingman defaultUARPController];

  return defaultUARPController;
}

- (id)UARPControllerForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [accessoryCopy supportsCHIP])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      shortDescription = [accessoryCopy shortDescription];
      v18 = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = shortDescription;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] UARPControllerForAccessory: Returning Matter UARP Controller", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    matterUARPController = [(HMDAccessoryFirmwareUpdateManager *)selfCopy matterUARPController];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      shortDescription2 = [accessoryCopy shortDescription];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = shortDescription2;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%@] UARPControllerForAccessory: Returning default UARP Controller", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    matterUARPController = [(HMDAccessoryFirmwareUpdateManager *)selfCopy2 defaultUARPController];
  }

  v16 = matterUARPController;

  return v16;
}

- (id)registerAndCreateSessionForAccessory:(id)accessory updateUARPParameters:(BOOL)parameters
{
  parametersCopy = parameters;
  v44 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (![(HMDAccessoryFirmwareUpdateManager *)self supportsFirmwareUpdate])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      shortDescription = [accessoryCopy shortDescription];
      v38 = 138543618;
      v39 = v18;
      v40 = 2112;
      v41 = shortDescription;
      v20 = "%{public}@[CHECK_AFU_SESSION][%@] Firmware Update not enabled on this device; ignoring";
      v21 = v17;
      v22 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      _os_log_impl(&dword_2531F8000, v21, v22, v20, &v38, 0x16u);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (([accessoryCopy supportsCHIP] & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    v18 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    v38 = 138543618;
    v39 = v18;
    v40 = 2112;
    v41 = shortDescription;
    v20 = "%{public}@[CHECK_AFU_SESSION][%@] Matter firmware update not supported";
LABEL_17:
    v21 = v17;
    v22 = OS_LOG_TYPE_DEBUG;
    goto LABEL_18;
  }

  if (![(HMDAccessoryFirmwareUpdateManager *)self registerAccessory:accessoryCopy])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    v18 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    v38 = 138543618;
    v39 = v18;
    v40 = 2112;
    v41 = shortDescription;
    v20 = "%{public}@[CHECK_AFU_SESSION][%@] Failed to register accessory";
    goto LABEL_17;
  }

  if (![(HMDAccessoryFirmwareUpdateManager *)self isAccessoryRegistered:accessoryCopy])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      shortDescription = [accessoryCopy shortDescription];
      v38 = 138543618;
      v39 = v18;
      v40 = 2112;
      v41 = shortDescription;
      v20 = "%{public}@[CHECK_AFU_SESSION][%@] accessory not registered";
      goto LABEL_17;
    }

LABEL_19:

    objc_autoreleasePoolPop(v15);
    v14 = 0;
    goto LABEL_20;
  }

  v7 = [(HMDAccessoryFirmwareUpdateManager *)self sessionForAccessory:accessoryCopy];
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription2 = [accessoryCopy shortDescription];
      v38 = 138543874;
      v39 = v12;
      v40 = 2112;
      v41 = shortDescription2;
      v42 = 2112;
      v43 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@[CHECK_AFU_SESSION][%@] Do not need to establish a new session, existing session found: %@", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = 0;
    goto LABEL_37;
  }

  v24 = [(HMDAccessoryFirmwareUpdateManager *)self UARPAccessoryForHMDAccessory:accessoryCopy];
  if (v24)
  {
    v25 = [(HMDAccessoryFirmwareUpdateManager *)self addSessionForUARPAccessory:v24];
    if (v25)
    {
      v26 = v25;
      if (parametersCopy)
      {
        [v25 updateAccessoryVendorIDAndProductID];
        [v26 updateAccessoryFirmwareVersion];
      }

      v27 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        shortDescription3 = [accessoryCopy shortDescription];
        v38 = 138543618;
        v39 = v30;
        v40 = 2112;
        v41 = shortDescription3;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[CHECK_AFU_SESSION][%@] Firmware update registration and session creation complete", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v8 = v26;
      goto LABEL_36;
    }

    v32 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      shortDescription4 = [accessoryCopy shortDescription];
      v38 = 138543618;
      v39 = v35;
      v40 = 2112;
      v41 = shortDescription4;
      v37 = "%{public}@[CHECK_AFU_SESSION][%@] Failed to establish session for accessory";
      goto LABEL_34;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      shortDescription4 = [accessoryCopy shortDescription];
      v38 = 138543618;
      v39 = v35;
      v40 = 2112;
      v41 = shortDescription4;
      v37 = "%{public}@[CHECK_AFU_SESSION][%@] UARP accessory is not found for accessory";
LABEL_34:
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, v37, &v38, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v32);
  v8 = 0;
LABEL_36:

  v14 = v8;
LABEL_37:

LABEL_20:

  return v14;
}

- (id)availableSoftwareAssetForMatterAccessory:(id)accessory error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v20 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543874;
    v38 = v20;
    v39 = 2112;
    v40 = shortDescription;
    v41 = 2080;
    v42 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
    v22 = "%{public}@[%@] %s: Matter Accessory Software Update not enabled.";
    goto LABEL_14;
  }

  if ([accessoryCopy supportsCHIP])
  {
    v7 = [(HMDAccessoryFirmwareUpdateManager *)self sessionForAccessory:accessoryCopy];
    v8 = v7;
    if (!v7)
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        shortDescription2 = [accessoryCopy shortDescription];
        *buf = 138543874;
        v38 = v26;
        v39 = 2112;
        v40 = shortDescription2;
        v41 = 2080;
        v42 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[%@] %s: no session", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      uarpAssetID = 0;
      if (!error)
      {
        goto LABEL_32;
      }

      v11 = 4;
      goto LABEL_31;
    }

    uarpAssetID = [v7 uarpAssetID];
    updateAvailabilityStatus = [uarpAssetID updateAvailabilityStatus];
    if ((updateAvailabilityStatus - 6) < 3)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        shortDescription3 = [accessoryCopy shortDescription];
        [uarpAssetID updateAvailabilityStatus];
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
        *buf = 138544130;
        v38 = v29;
        v39 = 2112;
        v40 = shortDescription3;
        v41 = 2080;
        v42 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
        v43 = 2114;
        v44 = v31;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] %s: Image is not available %{public}@", buf, 0x2Au);
      }

      v11 = 4;
    }

    else
    {
      v11 = updateAvailabilityStatus;
      if ((updateAvailabilityStatus - 1) >= 2)
      {
        if (updateAvailabilityStatus == 3)
        {
          goto LABEL_30;
        }

        v12 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v33 = HMFGetLogIdentifier();
          shortDescription4 = [accessoryCopy shortDescription];
          [uarpAssetID updateAvailabilityStatus];
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
          *buf = 138544130;
          v38 = v33;
          v39 = 2112;
          v40 = shortDescription4;
          v41 = 2080;
          v42 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
          v43 = 2114;
          v44 = v35;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] %s: These statuses should never be seen, ignore status %{public}@.", buf, 0x2Au);
        }

        v11 = 1;
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = HMFGetLogIdentifier();
          shortDescription5 = [accessoryCopy shortDescription];
          *buf = 138543874;
          v38 = v15;
          v39 = 2112;
          v40 = shortDescription5;
          v41 = 2080;
          v42 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] %s: Image is busy downloading", buf, 0x20u);
        }

        v11 = 2;
      }
    }

    objc_autoreleasePoolPop(v12);
    uarpAssetID = 0;
LABEL_30:
    if (!error)
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_31:
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDAccessoryMatterUARPAssetErrorDomain" code:v11 userInfo:0];
    goto LABEL_32;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543874;
    v38 = v20;
    v39 = 2112;
    v40 = shortDescription;
    v41 = 2080;
    v42 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
    v22 = "%{public}@[%@] %s: Accessory does not support Matter.";
LABEL_14:
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x20u);
  }

LABEL_15:

  objc_autoreleasePoolPop(v17);
  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDAccessoryMatterUARPAssetErrorDomain" code:1 userInfo:0];
    *error = uarpAssetID = 0;
  }

  else
  {
    uarpAssetID = 0;
  }

LABEL_33:

  return uarpAssetID;
}

- (BOOL)supportsFirmwareUpdate
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsFirmwareUpdate = [v2 supportsFirmwareUpdate];

  return supportsFirmwareUpdate;
}

- (void)dealloc
{
  defaultUARPController = [(HMDAccessoryFirmwareUpdateManager *)self defaultUARPController];
  [defaultUARPController stopPacketCapture];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateManager;
  [(HMDAccessoryFirmwareUpdateManager *)&v4 dealloc];
}

- (HMDAccessoryFirmwareUpdateManager)initWithHomeManager:(id)manager wingman:(id)wingman
{
  v61 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  wingmanCopy = wingman;
  v56.receiver = self;
  v56.super_class = HMDAccessoryFirmwareUpdateManager;
  v8 = [(HMDAccessoryFirmwareUpdateManager *)&v56 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_homeManager, managerCopy);
    if (wingmanCopy)
    {
      v10 = wingmanCopy;
    }

    else
    {
      v10 = objc_alloc_init(HMDAccessoryFirmwareUpdateManagerWingman);
    }

    wingman = v9->_wingman;
    v9->_wingman = v10;

    v12 = [[HMDDefaultUARPControllerDelegate alloc] initWithAccessoryFirmwareUpdateManager:v9];
    defaultUARPControllerDelegate = v9->_defaultUARPControllerDelegate;
    v9->_defaultUARPControllerDelegate = v12;

    v14 = v9->_defaultUARPControllerDelegate;
    defaultUARPController = [(HMDAccessoryFirmwareUpdateManagerWingman *)v9->_wingman defaultUARPController];
    [defaultUARPController setDelegate:v14];

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v16 = [[HMDMatterUARPControllerDelegate alloc] initWithAccessoryFirmwareUpdateManager:v9];
      matterUARPControllerDelegate = v9->_matterUARPControllerDelegate;
      v9->_matterUARPControllerDelegate = v16;

      v18 = v9->_matterUARPControllerDelegate;
      matterUARPController = [(HMDAccessoryFirmwareUpdateManagerWingman *)v9->_wingman matterUARPController];
      [matterUARPController setDelegate:v18];
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeSessions = v9->_activeSessions;
    v9->_activeSessions = v20;

    v22 = [HMDAccessoryFirmwareUpdateConcurrencyLogEventManager alloc];
    metricsManager = [managerCopy metricsManager];
    legacyCountersManager = [metricsManager legacyCountersManager];
    v25 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)v22 initWithCountersManager:legacyCountersManager];
    logEventManager = v9->_logEventManager;
    v9->_logEventManager = v25;

    v9->_lock._os_unfair_lock_opaque = 0;
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    registeredAccessories = v9->_registeredAccessories;
    v9->_registeredAccessories = weakToWeakObjectsMapTable;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryRetries = v9->_accessoryRetries;
    v9->_accessoryRetries = v29;

    workQueue = [managerCopy workQueue];
    workQueue = v9->_workQueue;
    v9->_workQueue = workQueue;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_handleAccessoryFirmwareVersionUpdateNotification_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:v9 selector:sel_handleMatterSettingsUpdateNotification_ name:@"HMDAccessoryVendorIDProductIDUpdatedNotification" object:0];

      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter4 addObserver:v9 selector:sel_handleMatterSettingsUpdateNotification_ name:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification" object:0];
    }

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v38 = [mEMORY[0x277D0F8D0] preferenceForKey:@"firmwareUpdateUARPCapturePath"];

    stringValue = [v38 stringValue];
    if (stringValue)
    {
      v55 = wingmanCopy;
      v40 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v40 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
      v41 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      v43 = [v40 stringFromDate:date];
      v44 = [v41 stringWithFormat:@"%@_%@", stringValue, v43];

      defaultUARPController2 = [(HMDAccessoryFirmwareUpdateManager *)v9 defaultUARPController];
      LOBYTE(v43) = [defaultUARPController2 startPacketCapture:v44];

      if ((v43 & 1) == 0)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = v9;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v58 = v49;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Error starting UARP packet capture for UARP Controller", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
      }

      v50 = objc_autoreleasePoolPush();
      v51 = v9;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v53;
        v59 = 2112;
        v60 = v44;
        _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@Started UARP packet capture for UARP Controller in: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      wingmanCopy = v55;
    }

    [(HMDAccessoryFirmwareUpdateManager *)v9 startStatusTimer];
  }

  return v9;
}

- (HMDAccessoryFirmwareUpdateManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t81_127340 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t81_127340, &__block_literal_global_127341);
  }

  v3 = logCategory__hmf_once_v82_127342;

  return v3;
}

uint64_t __48__HMDAccessoryFirmwareUpdateManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v82_127342;
  logCategory__hmf_once_v82_127342 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end