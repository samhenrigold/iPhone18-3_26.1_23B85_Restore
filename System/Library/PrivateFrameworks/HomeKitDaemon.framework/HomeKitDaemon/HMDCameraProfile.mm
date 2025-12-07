@interface HMDCameraProfile
+ (HMDCameraBulletinBoard)bulletinBoard;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_areFaceClassificationNotificationsSuppressedForSignificantEvent:(id)event;
- (BOOL)_shouldNotifyForSignificantEvent:(id)event notificationReasons:(unint64_t)reasons;
- (BOOL)isCameraRecordingFeatureSupported;
- (BOOL)isEqual:(id)equal;
- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager;
- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services recordingManagementService:(id)service msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager uniqueIdentifier:(id)self0 clipManager:(id)self1 clipUserNotificationCenter:(id)self2 reachabilityEventManager:(id)self3 networkMonitor:(id)self4 streamSnapshotHandler:(id)self5 snapshotManager:(id)self6 cameraStreamManagers:(id)self7 notificationCenter:(id)self8;
- (HMDHAPAccessory)hapAccessory;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)urlString;
- (_HMCameraUserSettings)currentSettings;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (unint64_t)hash;
- (void)_createCameraRecordingManager;
- (void)_handleNegotiateStreamRequest:(id)request;
- (void)_handleStreamControlRequest:(id)request;
- (void)_postNotificationForUpdatedSignificantEvent:(id)event allClipSignificantEvents:(id)events notificationReasons:(unint64_t)reasons;
- (void)_setControlSupport;
- (void)_setUpBulletinNotificationManagerObserver;
- (void)cameraSettingProactiveReaderDidCompleteRead:(id)read;
- (void)clipManager:(id)manager didDeleteClipWithUUID:(id)d;
- (void)clipManager:(id)manager didUpdateSignificantEvent:(id)event;
- (void)clipManagerDidDisableCloudStorage:(id)storage;
- (void)clipManagerDidEncounterDisabledCloudStorage:(id)storage;
- (void)clipManagerDidStart:(id)start;
- (void)clipManagerDidStartUpCloudZone:(id)zone;
- (void)clipManagerDidStop:(id)stop;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleCameraProfileSettingsDidChangeNotification:(id)notification;
- (void)handleResidentsChangedNotification:(id)notification;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)notificationManager:(id)manager didReceiveNotificationForCameraSignificantEventIdentifier:(id)identifier notificationReasons:(unint64_t)reasons;
- (void)registerForMessages;
- (void)removeCloudData;
- (void)setUp;
- (void)tearDownWithReplacementCameraProfile:(id)profile;
- (void)timerDidFire:(id)fire;
- (void)unconfigure;
@end

@implementation HMDCameraProfile

- (NSDictionary)assistantObject
{
  v38 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  name = [accessory name];
  home = [accessory home];
  v6 = home;
  if (home && ([home name], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && name)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v29[0] = *MEMORY[0x277D48170];
    v9 = [(HMDCameraProfile *)self urlString:@"objectType"];
    v10 = *MEMORY[0x277D482E0];
    v29[1] = v9;
    v29[2] = v10;
    v28[2] = @"objectServiceType";
    v28[3] = @"objectHome";
    name2 = [v6 name];
    v29[3] = name2;
    v28[4] = @"objectHomeIdentifier";
    urlString = [v6 urlString];
    v29[4] = urlString;
    v29[5] = self;
    v28[5] = @"objectReference";
    v28[6] = @"objectName";
    v29[6] = name;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:7];
    v14 = [v8 initWithDictionary:v13];

    name3 = [accessory name];
    [v14 setObject:name3 forKey:@"objectAccessory"];

    urlString2 = [accessory urlString];
    [v14 setObject:urlString2 forKey:@"objectAccessoryIdentifier"];

    room = [accessory room];
    name4 = [room name];
    if (name4)
    {
      name5 = [v6 name];
      v20 = [name4 isEqualToString:name5];

      if ((v20 & 1) == 0)
      {
        [v14 setObject:name4 forKey:@"objectRoom"];
        urlString3 = [room urlString];
        [v14 setObject:urlString3 forKey:@"objectRoomIdentifier"];
      }
    }

    v22 = objc_msgSend_copy(v14);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      if (v6)
      {
        name6 = [v6 name];
      }

      else
      {
        name6 = 0;
      }

      *buf = 138544130;
      v31 = v25;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = name6;
      v36 = 2112;
      v37 = name;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
      if (v6)
      {
      }
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

- (NSString)urlString
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  services = [(HMDAccessoryProfile *)self services];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(services, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  services2 = [(HMDAccessoryProfile *)self services];
  v7 = [services2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(services2);
        }

        v11 = MEMORY[0x277CCACA8];
        instanceID = [*(*(&v17 + 1) + 8 * i) instanceID];
        v13 = [v11 stringWithFormat:@"%@", instanceID];
        [v5 addObject:v13];
      }

      v8 = [services2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v15 = hm_assistantIdentifierWithSalts();

  return v15;
}

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingEventsCleanupTimer = [(HMDCameraProfile *)self recordingEventsCleanupTimer];

  if (recordingEventsCleanupTimer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Performing recording events cleanup due to timer firing", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    clipManager = [(HMDCameraProfile *)selfCopy clipManager];
    [clipManager cleanUpClips];

    reachabilityEventManager = [(HMDCameraProfile *)selfCopy reachabilityEventManager];
    [reachabilityEventManager cleanUpEvents];
  }
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  unreachableCopy = unreachable;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDCameraProfile_networkMonitorIsUnreachable___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = unreachableCopy;
  v6 = unreachableCopy;
  dispatch_async(workQueue, v7);
}

void __48__HMDCameraProfile_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reachabilityEventManager];
  [v2 networkMonitorIsUnreachable:*(a1 + 40)];
}

- (void)networkMonitorIsReachable:(id)reachable
{
  reachableCopy = reachable;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDCameraProfile_networkMonitorIsReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = reachableCopy;
  v6 = reachableCopy;
  dispatch_async(workQueue, v7);
}

void __46__HMDCameraProfile_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reachabilityEventManager];
  [v2 networkMonitorIsReachable:*(a1 + 40)];
}

- (void)notificationManager:(id)manager didReceiveNotificationForCameraSignificantEventIdentifier:(id)identifier notificationReasons:(unint64_t)reasons
{
  identifierCopy = identifier;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v11 = identifierCopy;
  reasonsCopy = reasons;
  v9 = identifierCopy;
  dispatch_async(workQueue, block);
}

void __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = NSPrintF("%#{flags}", *(a1 + 48), &unk_22A587E90);
    *buf = 138543874;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification for significant event with UUID: %@ notificationReasons: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) clipManager];
  v9 = [v8 fetchSignificantEventsForClipWithSignificantEventWithUUID:*(a1 + 40)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_128;
  v13[3] = &unk_278682DA0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  v16 = *(a1 + 48);
  v12 = [v9 addSuccessBlock:v13];
}

void __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_128(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_2;
  v10[3] = &unk_278682D78;
  v11 = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v10];
  if (v4)
  {
    [*(a1 + 40) _postNotificationForUpdatedSignificantEvent:v4 allClipSignificantEvents:v3 notificationReasons:*(a1 + 48)];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Fetched significant events did not contain significant event with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)clipManagerDidEncounterDisabledCloudStorage:(id)storage
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  [cameraSettingsManager synchronizeCloudStorageWithRecordingAccessModes];
}

- (void)clipManagerDidDisableCloudStorage:(id)storage
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  [cameraSettingsManager disableRecordingAccessModes];
}

- (void)clipManagerDidStop:(id)stop
{
  stopCopy = stop;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraRecordingManager = [(HMDCameraProfile *)self cameraRecordingManager];
  [cameraRecordingManager clipManagerDidStop:stopCopy];

  reachabilityEventManager = [(HMDCameraProfile *)self reachabilityEventManager];
  [reachabilityEventManager clipManagerDidStop:stopCopy];

  [(HMDCameraProfile *)self setRecordingEventsCleanupTimer:0];
  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
  [clipUserNotificationCenter removeEventNotificationsForCameraProfile:self];
}

- (void)clipManagerDidStartUpCloudZone:(id)zone
{
  zoneCopy = zone;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraRecordingManager = [(HMDCameraProfile *)self cameraRecordingManager];
  [cameraRecordingManager clipManagerDidStartUpCloudZone:zoneCopy];
}

- (void)clipManagerDidStart:(id)start
{
  startCopy = start;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  reachabilityEventManager = [(HMDCameraProfile *)self reachabilityEventManager];
  [reachabilityEventManager clipManagerDidStart:startCopy];

  recordingEventsCleanupTimerFactory = [(HMDCameraProfile *)self recordingEventsCleanupTimerFactory];
  v8 = recordingEventsCleanupTimerFactory[2](recordingEventsCleanupTimerFactory, 4, 86400.0);
  [(HMDCameraProfile *)self setRecordingEventsCleanupTimer:v8];

  recordingEventsCleanupTimer = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [recordingEventsCleanupTimer setDelegate:self];

  workQueue2 = [(HMDAccessoryProfile *)self workQueue];
  recordingEventsCleanupTimer2 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [recordingEventsCleanupTimer2 setDelegateQueue:workQueue2];

  recordingEventsCleanupTimer3 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [recordingEventsCleanupTimer3 resume];
}

- (void)clipManager:(id)manager didDeleteClipWithUUID:(id)d
{
  dCopy = d;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
  [clipUserNotificationCenter removeEventNotificationForClipWithUUID:dCopy];
}

- (void)clipManager:(id)manager didUpdateSignificantEvent:(id)event
{
  v4 = [(HMDAccessoryProfile *)self workQueue:manager];
  dispatch_assert_queue_V2(v4);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDCameraProfile;
  [(HMDAccessoryProfile *)&v9 encodeWithCoder:coderCopy];
  snapshotManager = [(HMDCameraProfile *)self snapshotManager];
  encodedMostRecentSnapshot = [snapshotManager encodedMostRecentSnapshot];

  if (encodedMostRecentSnapshot)
  {
    [coderCopy encodeObject:encodedMostRecentSnapshot forKey:*MEMORY[0x277CCF508]];
  }

  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  currentSettings = [cameraSettingsManager currentSettings];
  [coderCopy encodeObject:currentSettings forKey:*MEMORY[0x277CCF510]];
}

- (void)handleResidentsChangedNotification:(id)notification
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDCameraProfile_handleResidentsChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleCameraProfileSettingsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  v9 = v10;
  if (v10)
  {
    __updateClipManagerWriteAccess(self, v10);
    v9 = v10;
  }
}

- (_HMCameraUserSettings)currentSettings
{
  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  currentSettings = [cameraSettingsManager currentSettings];

  return currentSettings;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    if ([uniqueIdentifier isEqual:uniqueIdentifier2])
    {
      cameraStreamManagers = [(HMDCameraProfile *)self cameraStreamManagers];
      cameraStreamManagers2 = [v6 cameraStreamManagers];
      if ([cameraStreamManagers isEqualToSet:cameraStreamManagers2])
      {
        recordingManagementService = [(HMDCameraProfile *)self recordingManagementService];
        recordingManagementService2 = [v6 recordingManagementService];
        v13 = HMFEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)cameraSettingProactiveReaderDidCompleteRead:(id)read
{
  readCopy = read;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  settingProactiveReaders = [(HMDCameraProfile *)self settingProactiveReaders];
  [settingProactiveReaders removeObject:readCopy];
}

- (void)_handleStreamControlRequest:(id)request
{
  v62 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    name = [requestCopy name];
    messagePayload = [requestCopy messagePayload];
    *buf = 138543874;
    v57 = v9;
    v58 = 2112;
    v59 = name;
    v60 = 2112;
    v61 = messagePayload;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling %@ message with payload: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [requestCopy stringForKey:@"kCameraSessionID"];
  if (v12)
  {
    settingProactiveReaders = [(HMDCameraProfile *)selfCopy settingProactiveReaders];
    v14 = objc_msgSend_copy(settingProactiveReaders);

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v51;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          if ([v20 hasPendingNegotiateMessageForSessionWithIdentifier:v12])
          {
            [v20 handleMessage:requestCopy];
            v37 = v15;
            goto LABEL_30;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v42 = v15;
    v43 = requestCopy;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = selfCopy;
    obj = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
    v21 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v47;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v46 + 1) + 8 * j);
          v26 = objc_autoreleasePoolPush();
          v27 = v45;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            streamSessionID = [v25 streamSessionID];
            *buf = 138543874;
            v57 = v29;
            v58 = 2112;
            v59 = streamSessionID;
            v60 = 2112;
            v61 = v12;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Checking if stream message handler's session ID %@ matches with given %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
          streamSessionID2 = [v25 streamSessionID];
          v32 = [streamSessionID2 isEqual:v12];

          if (v32)
          {
            requestCopy = v43;
            [v25 handleMessage:v43];
            v15 = v42;
            v37 = obj;
            goto LABEL_30;
          }
        }

        v22 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v45;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v36;
      v58 = 2112;
      v59 = v12;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Did not find the stream with Session ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    requestCopy = v43;
    [v43 respondWithError:v37];
    v15 = v42;
LABEL_30:
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v41;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Stream session ID is not present in start request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [requestCopy respondWithError:v15];
  }
}

- (void)_handleNegotiateStreamRequest:(id)request
{
  v74 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [[HMDCameraMetricsMilestone alloc] initWithKey:@"ReceivedNegotiationRequest" timestamp:+[(HMDCameraSessionID *)HMDCameraStreamSessionID]];
  v7 = [requestCopy stringForKey:@"kCameraSessionID"];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [requestCopy shortDescription];
      *buf = 138543874;
      v69 = v12;
      v70 = 2112;
      v71 = v7;
      v72 = 2114;
      v73 = shortDescription;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Handling negotiate stream request message: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v67 = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    v15 = [requestCopy unarchivedObjectForKey:@"kCameraSessionPreference" ofClasses:v14];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CD1950]);
    }

    v19 = v17;

    if ([requestCopy isEntitledForSPIAccess] && objc_msgSend(v19, "shouldTakeOwnershipOfExistingStream"))
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      cameraStreamManagers = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      v21 = [cameraStreamManagers countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v61;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v61 != v23)
            {
              objc_enumerationMutation(cameraStreamManagers);
            }

            v25 = *(*(&v60 + 1) + 8 * i);
            if ([v25 hasStreamSessionShowingOnCurrentDevice])
            {
              [v25 takeOwnershipOfStreamUsingMessage:requestCopy];
              goto LABEL_45;
            }
          }

          v22 = [cameraStreamManagers countByEnumeratingWithState:&v60 objects:v66 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v51 = v7;
    cameraStreamManagers = [(HMDCameraProfile *)selfCopy hapAccessory];
    if ([cameraStreamManagers isReachable])
    {
      v54 = 0uLL;
      v55 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      cameraStreamManagers2 = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      v27 = [cameraStreamManagers2 countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v53;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v53 != v29)
            {
              objc_enumerationMutation(cameraStreamManagers2);
            }

            [*(*(&v52 + 1) + 8 * j) setNegotiationMilestone:v6];
          }

          v28 = [cameraStreamManagers2 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v28);
      }

      v31 = [HMDCameraSettingProactiveReader alloc];
      workQueue2 = [(HMDAccessoryProfile *)selfCopy workQueue];
      cameraStreamManagers3 = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      logIdentifier = [(HMDAccessoryProfile *)selfCopy logIdentifier];
      v7 = v51;
      cameraStreamManagers4 = [(HMDCameraSettingProactiveReader *)v31 initWithWorkQueue:workQueue2 sessionID:v51 accessory:cameraStreamManagers message:requestCopy streamControlMessageHandlers:cameraStreamManagers3 streamPreferences:v19 logIdentifier:logIdentifier];

      settingProactiveReaders = [(HMDCameraProfile *)selfCopy settingProactiveReaders];
      [settingProactiveReaders addObject:cameraStreamManagers4];

      [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 setDelegate:selfCopy];
      [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 readSetting];
    }

    else
    {
      v58 = 0uLL;
      v59 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      cameraStreamManagers4 = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      v37 = [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v57;
        while (2)
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v57 != v39)
            {
              objc_enumerationMutation(cameraStreamManagers4);
            }

            v41 = *(*(&v56 + 1) + 8 * k);
            if (([v41 hasStreamSession] & 1) == 0)
            {
              v46 = objc_autoreleasePoolPush();
              v47 = selfCopy;
              v48 = HMFGetOSLogHandle();
              v7 = v51;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v49 = v50 = v46;
                *buf = 138543874;
                v69 = v49;
                v70 = 2112;
                v71 = v51;
                v72 = 2112;
                v73 = v41;
                _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is not reachable, routing request to camera streaming service: %@", buf, 0x20u);

                v46 = v50;
              }

              objc_autoreleasePoolPop(v46);
              [v41 setNegotiationMilestone:v6];
              [v41 handleMessage:requestCopy];
              goto LABEL_44;
            }
          }

          v38 = [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 countByEnumeratingWithState:&v56 objects:v65 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v42 = objc_autoreleasePoolPush();
      v43 = selfCopy;
      v44 = HMFGetOSLogHandle();
      v7 = v51;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v45;
        v70 = 2112;
        v71 = v51;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory is not reachable and cannot route request to a camera streaming service", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
      cameraStreamManagers4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1019];
      [requestCopy respondWithError:cameraStreamManagers4];
    }

LABEL_44:

LABEL_45:
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v69 = v18;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Stream session ID is not present in negotiate request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [requestCopy respondWithError:v19];
  }
}

- (void)_postNotificationForUpdatedSignificantEvent:(id)event allClipSignificantEvents:(id)events notificationReasons:(unint64_t)reasons
{
  eventCopy = event;
  eventsCopy = events;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
  v11 = [clipUserNotificationCenter createBulletinForSignificantEvents:eventsCopy cameraProfile:self];

  if (v11)
  {
    bulletinBoard = [objc_opt_class() bulletinBoard];
    v13 = [bulletinBoard hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin:v11];

    if (!v13 || ([objc_opt_class() bulletinBoard], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "updateDoorbellPressNotificationsWithSignificantEventBulletin:", v11), v14, objc_msgSend(v11, "significantEvents"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "na_any:", &__block_literal_global_119_233650), v15, v16))
    {
      if ([(HMDCameraProfile *)self _shouldNotifyForSignificantEvent:eventCopy notificationReasons:reasons])
      {
        clipUserNotificationCenter2 = [(HMDCameraProfile *)self clipUserNotificationCenter];
        [clipUserNotificationCenter2 postNotificationForBulletin:v11 significantEvent:eventCopy];
      }
    }
  }
}

BOOL __109__HMDCameraProfile__postNotificationForUpdatedSignificantEvent_allClipSignificantEvents_notificationReasons___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 reason] != 1 && objc_msgSend(v2, "reason") != 2;

  return v3;
}

- (BOOL)_shouldNotifyForSignificantEvent:(id)event notificationReasons:(unint64_t)reasons
{
  reasonsCopy = reasons;
  v29 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];

  if (clipUserNotificationCenter)
  {
    currentSettings = [(HMDCameraProfile *)self currentSettings];
    notificationSettings = [currentSettings notificationSettings];
    isSmartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];

    if (isSmartBulletinBoardNotificationEnabled)
    {
      v12 = reasonsCopy & ![(HMDCameraProfile *)self _areFaceClassificationNotificationsSuppressedForSignificantEvent:eventCopy];
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        uniqueIdentifier = [eventCopy uniqueIdentifier];
        v18 = HMFBooleanToString();
        v23 = 138543874;
        v24 = v16;
        v25 = 2112;
        v26 = uniqueIdentifier;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Determined should add notification for significant event %@: %@", &v23, 0x20u);
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        uniqueIdentifier2 = [eventCopy uniqueIdentifier];
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = uniqueIdentifier2;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Not notifying for significant event %@ because smart notification bulletin is disabled", &v23, 0x16u);
      }

      LOBYTE(v12) = 0;
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)_areFaceClassificationNotificationsSuppressedForSignificantEvent:(id)event
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  faceClassification = [eventCopy faceClassification];
  person = [faceClassification person];

  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  currentUser = [home currentUser];
  personSettingsManager = [currentUser personSettingsManager];

  if (!person || !personSettingsManager)
  {
    goto LABEL_6;
  }

  uUID = [person UUID];
  v12 = [personSettingsManager areClassificationNotificationsEnabledForPersonUUID:uUID];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMFBooleanToString();
    v20 = 138543874;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = person;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Classification notifications enabled is %@ for person: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (!v12)
  {
    v18 = 1;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  return v18;
}

- (void)registerForMessages
{
  v75 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  hapAccessory = [(HMDCameraProfile *)selfCopy hapAccessory];
  v9 = hapAccessory;
  if (hapAccessory)
  {
    home = [hapAccessory home];
    if (!home)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = selfCopy;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        v74 = v49;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Not registering for messages because home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v46);
      goto LABEL_24;
    }

    snapshotManager = [(HMDCameraProfile *)selfCopy snapshotManager];
    [snapshotManager registerForMessages];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    cameraStreamManagers = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
    v13 = [cameraStreamManagers countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v65;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v65 != v15)
          {
            objc_enumerationMutation(cameraStreamManagers);
          }

          v17 = *(*(&v64 + 1) + 8 * i);
          msgDispatcher = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
          [v17 configureWithMessageDispatcher:msgDispatcher];
        }

        v14 = [cameraStreamManagers countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v14);
    }

    notificationCenter = [(HMDCameraProfile *)selfCopy notificationCenter];
    [notificationCenter addObserver:selfCopy selector:sel_handleCameraProfileSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v9];

    notificationCenter2 = [(HMDCameraProfile *)selfCopy notificationCenter];
    residentDeviceManager = [home residentDeviceManager];
    [notificationCenter2 addObserver:selfCopy selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:residentDeviceManager];

    notificationCenter3 = [(HMDCameraProfile *)selfCopy notificationCenter];
    residentDeviceManager2 = [home residentDeviceManager];
    [notificationCenter3 addObserver:selfCopy selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:residentDeviceManager2];

    notificationCenter4 = [(HMDCameraProfile *)selfCopy notificationCenter];
    residentDeviceManager3 = [home residentDeviceManager];
    [notificationCenter4 addObserver:selfCopy selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:residentDeviceManager3];

    cameraSettingsManager = [(HMDCameraProfile *)selfCopy cameraSettingsManager];
    [cameraSettingsManager start];

    [(HMDCameraProfile *)selfCopy _createCameraRecordingManager];
    [(HMDCameraProfile *)selfCopy _setUpBulletinNotificationManagerObserver];
    currentSettings = [(HMDCameraProfile *)selfCopy currentSettings];
    __updateClipManagerWriteAccess(selfCopy, currentSettings);

    [v9 configureBulletinNotification];
    featuresDataSource = [home featuresDataSource];
    LOBYTE(notificationCenter4) = [featuresDataSource isMessageBindingsEnabled];

    if (notificationCenter4)
    {
LABEL_24:

      goto LABEL_25;
    }

    accessory = [(HMDAccessoryProfile *)selfCopy accessory];
    home2 = [accessory home];
    v31 = [HMDUserMessagePolicy userMessagePolicyWithHome:home2 userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];

    v32 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v33 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v71[0] = v31;
    v71[1] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    msgDispatcher2 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher2 registerForMessage:*MEMORY[0x277CCF5F0] receiver:selfCopy policies:v34 selector:?];

    msgDispatcher3 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher3 registerForMessage:*MEMORY[0x277CCF608] receiver:selfCopy policies:v34 selector:sel__handleStreamControlRequest_];

    msgDispatcher4 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher4 registerForMessage:*MEMORY[0x277CCF5F8] receiver:selfCopy policies:v34 selector:sel__handleStreamControlRequest_];

    v70[0] = v31;
    v70[1] = v33;
    v63 = v33;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    msgDispatcher5 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher5 registerForMessage:*MEMORY[0x277CCF600] receiver:selfCopy policies:v38 selector:sel__handleStreamControlRequest_];

    msgDispatcher6 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher6 registerForMessage:*MEMORY[0x277CCF618] receiver:selfCopy policies:v38 selector:sel__handleStreamControlRequest_];

    v41 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v41 isResidentCapable])
    {
    }

    else
    {
      v50 = isiOSDevice();

      if (!v50)
      {
LABEL_23:
        v58 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
        v68[0] = v31;
        v68[1] = v58;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
        msgDispatcher7 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
        [msgDispatcher7 registerForMessage:@"kStreamRemoteConnectionSetupNotificationKey" receiver:selfCopy policies:v59 selector:sel__handleStreamControlRequest_];

        msgDispatcher8 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
        [msgDispatcher8 registerForMessage:@"kStreamStoppedRemoteNotificationKey" receiver:selfCopy policies:v59 selector:sel__handleStreamControlRequest_];

        goto LABEL_24;
      }
    }

    v51 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v51 setRoles:{objc_msgSend(v51, "roles") | 6}];
    v62 = v32;
    v52 = objc_msgSend_copy(v51);
    v69[0] = v31;
    v69[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
    msgDispatcher9 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher9 registerForMessage:@"kNegotitateRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleNegotiateStreamRequest_];

    msgDispatcher10 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher10 registerForMessage:@"kStartRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleStreamControlRequest_];

    msgDispatcher11 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher11 registerForMessage:@"kStopRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleStreamControlRequest_];

    msgDispatcher12 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher12 registerForMessage:@"kReconfigureRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleStreamControlRequest_];

    v32 = v62;
    goto LABEL_23;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = selfCopy;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Not registering for messages because accessory reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
LABEL_25:
}

- (void)_setControlSupport
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(HMDAccessoryProfile *)self services];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = *MEMORY[0x277CD0EB8];
    v7 = *MEMORY[0x277CD0EF0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_msgSend_serviceType(v9);
        v11 = [v10 isEqualToString:v6];

        v12 = &OBJC_IVAR___HMDCameraProfile__microphonePresent;
        if ((v11 & 1) == 0)
        {
          v13 = objc_msgSend_serviceType(v9);
          v14 = [v13 isEqualToString:v7];

          v12 = &OBJC_IVAR___HMDCameraProfile__speakerPresent;
          if (!v14)
          {
            continue;
          }
        }

        *(&self->super.super.super.isa + *v12) = 1;
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v16.receiver = self;
  v16.super_class = HMDCameraProfile;
  v4 = [(HMDAccessoryProfile *)&v16 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __46__HMDCameraProfile_dumpStateWithPrivacyLevel___block_invoke;
  v13 = &unk_27868A750;
  v14 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(workQueue, &v10);

  v8 = objc_msgSend_copy(v7, v10, v11, v12, v13);

  return v8;
}

void __46__HMDCameraProfile_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) clipManager];
  v3 = [v2 stateDump];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"Clip Manager"];

  v4 = [*(a1 + 40) cameraStreamManagers];
  v5 = [v4 na_map:&__block_literal_global_97_233667];
  v6 = [v5 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"Stream Managers"];

  v8 = [*(a1 + 40) cameraRecordingManager];
  v7 = [v8 stateDump];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"Recording Manager"];
}

- (void)dealloc
{
  msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDCameraProfile;
  [(HMDCameraProfile *)&v4 dealloc];
}

- (void)unconfigure
{
  hapAccessory = [(HMDCameraProfile *)self hapAccessory];
  home = [hapAccessory home];
  if (hapAccessory)
  {
    [home isCurrentDeviceAvailableResident];
  }

  notificationCenter = [(HMDCameraProfile *)self notificationCenter];
  [notificationCenter postNotificationName:@"HMDCameraProfileUnconfiguredNotification" object:self];
}

- (void)removeCloudData
{
  v5.receiver = self;
  v5.super_class = HMDCameraProfile;
  [(HMDAccessoryProfile *)&v5 removeCloudData];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDCameraProfile_removeCloudData__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __35__HMDCameraProfile_removeCloudData__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing all cloud data", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) clipManager];
  v7 = [v6 remove];

  v8 = [*(a1 + 32) cameraSettingsManager];
  [v8 remove];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  name = [accessory name];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"Camera Profile %@, %@", name, uniqueIdentifier];

  return v7;
}

- (void)_setUpBulletinNotificationManagerObserver
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  cameraBulletinNotificationManager = [home cameraBulletinNotificationManager];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  [cameraBulletinNotificationManager addCameraSignificantEventNotificationObserver:self cameraIdentifier:uniqueIdentifier];
}

- (void)_createCameraRecordingManager
{
  v31 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingManagementService = [(HMDCameraProfile *)self recordingManagementService];

  if (recordingManagementService)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    home = [accessory home];
    isOwnerUser = [home isOwnerUser];

    hapAccessory = [(HMDCameraProfile *)self hapAccessory];
    home2 = [hapAccessory home];
    isCurrentDeviceAvailableResident = [home2 isCurrentDeviceAvailableResident];

    cameraRecordingManager = [(HMDCameraProfile *)self cameraRecordingManager];

    if (isCurrentDeviceAvailableResident && (isOwnerUser & 1) != 0)
    {
      if (!cameraRecordingManager)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v29 = 138543362;
          v30 = v15;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Creating camera recording manager", &v29, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        recordingManagerFactory = [(HMDCameraProfile *)selfCopy recordingManagerFactory];
        recordingManagementService2 = [(HMDCameraProfile *)selfCopy recordingManagementService];
        v18 = (recordingManagerFactory)[2](recordingManagerFactory, selfCopy, recordingManagementService2);
        [(HMDCameraProfile *)selfCopy setCameraRecordingManager:v18];

        cameraRecordingManager2 = [(HMDCameraProfile *)selfCopy cameraRecordingManager];
        [cameraRecordingManager2 start];
      }
    }

    else if (cameraRecordingManager)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Destroying camera recording manager", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      cameraRecordingManager3 = [(HMDCameraProfile *)selfCopy2 cameraRecordingManager];
      [cameraRecordingManager3 shutDown];

      [(HMDCameraProfile *)selfCopy2 setCameraRecordingManager:0];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Not configuring for recording because there is no recording service", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (void)tearDownWithReplacementCameraProfile:(id)profile
{
  v17 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (-[HMDCameraProfile isCameraRecordingFeatureSupported](self, "isCameraRecordingFeatureSupported") && ([profileCopy isCameraRecordingFeatureSupported] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      recordingManagementService = [(HMDCameraProfile *)selfCopy recordingManagementService];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = recordingManagementService;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing clip data because we have a recording management service %@ and we are transitioning to a replacement camera profile that does not", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    clipManager = [(HMDCameraProfile *)selfCopy clipManager];
    remove = [clipManager remove];
  }
}

- (void)setUp
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryProfile *)self accessory];
  v5 = accessory;
  if (accessory)
  {
    home = [accessory home];
    if (home)
    {
      networkMonitor = [(HMDCameraProfile *)self networkMonitor];
      [networkMonitor setDelegate:self];

      clipManager = [(HMDCameraProfile *)self clipManager];
      [clipManager setDelegate:self];

      clipManager2 = [(HMDCameraProfile *)self clipManager];
      [clipManager2 configure];

      clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
      [clipUserNotificationCenter removeCachedHeroFrameImages];

      cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
      msgDispatcher = [v5 msgDispatcher];
      administratorHandler = [home administratorHandler];
      v14 = +[HMDDeviceCapabilities deviceCapabilities];
      [cameraSettingsManager configureWithMessageDispatcher:msgDispatcher adminMessageDispatcher:administratorHandler deviceIsResidentCapable:{objc_msgSend(v14, "isResidentCapable")}];

      reachabilityEventManager = [(HMDCameraProfile *)self reachabilityEventManager];
      msgDispatcher2 = [(HMDAccessoryProfile *)self msgDispatcher];
      currentSettings = [(HMDCameraProfile *)self currentSettings];
      isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
      networkMonitor2 = [(HMDCameraProfile *)self networkMonitor];
      [reachabilityEventManager configureWithMessageDispatcher:msgDispatcher2 currentSettings:currentSettings isCurrentDeviceConfirmedPrimaryResident:isCurrentDeviceConfirmedPrimaryResident isCurrentDeviceConnectedToNetwork:{objc_msgSend(networkMonitor2, "isReachable")}];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera profile setup because home reference is nil", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
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
      v28 = 138543362;
      v29 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera profile setup because accessory reference is nil", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (BOOL)isCameraRecordingFeatureSupported
{
  recordingManagementService = [(HMDCameraProfile *)self recordingManagementService];
  v3 = recordingManagementService != 0;

  return v3;
}

- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services recordingManagementService:(id)service msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager uniqueIdentifier:(id)self0 clipManager:(id)self1 clipUserNotificationCenter:(id)self2 reachabilityEventManager:(id)self3 networkMonitor:(id)self4 streamSnapshotHandler:(id)self5 snapshotManager:(id)self6 cameraStreamManagers:(id)self7 notificationCenter:(id)self8
{
  accessoryCopy = accessory;
  servicesCopy = services;
  serviceCopy = service;
  serviceCopy2 = service;
  obj = dispatcher;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  managerCopy = manager;
  identifierCopy = identifier;
  clipManagerCopy = clipManager;
  centerCopy = center;
  eventManagerCopy = eventManager;
  monitorCopy = monitor;
  handlerCopy = handler;
  snapshotManagerCopy = snapshotManager;
  managersCopy = managers;
  notificationCenterCopy = notificationCenter;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!servicesCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!dispatcherCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!queueCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v50 = clipManagerCopy;
  if (!homeCopy)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!identifierCopy)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!monitorCopy)
  {
LABEL_21:
    _HMFPreconditionFailure();
    goto LABEL_22;
  }

  if (!handlerCopy)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  if (!snapshotManagerCopy)
  {
LABEL_23:
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!managersCopy)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  v30 = notificationCenterCopy;
  if (!notificationCenterCopy)
  {
LABEL_25:
    v44 = _HMFPreconditionFailure();
    return __293__HMDCameraProfile_initWithAccessory_services_recordingManagementService_msgDispatcher_workQueue_home_settingsManager_uniqueIdentifier_clipManager_clipUserNotificationCenter_reachabilityEventManager_networkMonitor_streamSnapshotHandler_snapshotManager_cameraStreamManagers_notificationCenter___block_invoke_2(v44, v45, v46);
  }

  v31 = homeCopy;
  v49 = eventManagerCopy;
  v32 = monitorCopy;
  allObjects = [servicesCopy allObjects];
  v61.receiver = self;
  v61.super_class = HMDCameraProfile;
  v34 = [(HMDAccessoryProfile *)&v61 initWithAccessory:accessoryCopy uniqueIdentifier:identifierCopy services:allObjects workQueue:queueCopy];

  if (v34)
  {
    objc_storeWeak(&v34->_hapAccessory, accessoryCopy);
    v35 = [HMDPredicateUtilities alloc];
    logIdentifier = [(HMDAccessoryProfile *)v34 logIdentifier];
    v37 = [(HMDPredicateUtilities *)v35 initWithHome:homeCopy logIdentifier:logIdentifier];
    predicateUtilities = v34->_predicateUtilities;
    v34->_predicateUtilities = v37;

    v31 = homeCopy;
    objc_storeStrong(&v34->super._msgDispatcher, obj);
    objc_storeStrong(&v34->_recordingManagementService, serviceCopy);
    objc_storeStrong(&v34->_networkMonitor, monitor);
    objc_storeStrong(&v34->_streamSnapshotHandler, handler);
    objc_storeStrong(&v34->_snapshotManager, snapshotManager);
    objc_storeStrong(&v34->_cameraStreamManagers, managers);
    array = [MEMORY[0x277CBEB18] array];
    settingProactiveReaders = v34->_settingProactiveReaders;
    v34->_settingProactiveReaders = array;

    objc_storeStrong(&v34->_cameraSettingsManager, manager);
    objc_storeStrong(&v34->_clipManager, clipManager);
    objc_storeStrong(&v34->_clipUserNotificationCenter, center);
    objc_storeStrong(&v34->_reachabilityEventManager, eventManager);
    objc_storeStrong(&v34->_notificationCenter, notificationCenter);
    [(HMDCameraProfile *)v34 _setControlSupport];
    recordingEventsCleanupTimerFactory = v34->_recordingEventsCleanupTimerFactory;
    v34->_recordingEventsCleanupTimerFactory = &__block_literal_global_233705;

    recordingManagerFactory = v34->_recordingManagerFactory;
    v34->_recordingManagerFactory = &__block_literal_global_73_233706;
  }

  return v34;
}

HMDCameraRecordingManager *__293__HMDCameraProfile_initWithAccessory_services_recordingManagementService_msgDispatcher_workQueue_home_settingsManager_uniqueIdentifier_clipManager_clipUserNotificationCenter_reachabilityEventManager_networkMonitor_streamSnapshotHandler_snapshotManager_cameraStreamManagers_notificationCenter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HMDCameraRecordingManager alloc] initWithCamera:v5 recordingManagementService:v4];

  return v6;
}

id __293__HMDCameraProfile_initWithAccessory_services_recordingManagementService_msgDispatcher_workQueue_home_settingsManager_uniqueIdentifier_clipManager_clipUserNotificationCenter_reachabilityEventManager_networkMonitor_streamSnapshotHandler_snapshotManager_cameraStreamManagers_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager
{
  v116 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  servicesCopy = services;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  managerCopy = manager;
  v88 = accessoryCopy;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_42;
  }

  if (!servicesCopy)
  {
LABEL_42:
    _HMFPreconditionFailure();
    goto LABEL_43;
  }

  if (!dispatcherCopy)
  {
LABEL_43:
    _HMFPreconditionFailure();
    goto LABEL_44;
  }

  if (!queueCopy)
  {
LABEL_44:
    _HMFPreconditionFailure();
LABEL_45:
    _HMFPreconditionFailure();
  }

  if (!homeCopy)
  {
    goto LABEL_45;
  }

  v82 = queueCopy;
  selfCopy = self;
  v87 = managerCopy;
  v91 = homeCopy;
  v20 = [MEMORY[0x277CBEB58] set];
  v21 = [MEMORY[0x277CBEB58] set];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = servicesCopy;
  v22 = [obj countByEnumeratingWithState:&v109 objects:v115 count:16];
  v92 = dispatcherCopy;
  if (!v22)
  {
    v93 = 0;
    goto LABEL_21;
  }

  v23 = v22;
  v93 = 0;
  v24 = *v110;
  v25 = *MEMORY[0x277CD0E00];
  v26 = *MEMORY[0x277CD0E08];
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v110 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v109 + 1) + 8 * i);
      v29 = objc_msgSend_serviceType(v28);
      v30 = [v29 isEqualToString:v25];

      if (v30)
      {
        v31 = v20;
      }

      else
      {
        v32 = objc_msgSend_serviceType(v28);
        v33 = [v32 isEqualToString:v26];

        if (v33)
        {
          v34 = v28;

          v93 = v34;
          continue;
        }

        v31 = v21;
      }

      [v31 addObject:v28];
    }

    v23 = [obj countByEnumeratingWithState:&v109 objects:v115 count:16];
  }

  while (v23);
LABEL_21:

  array = [MEMORY[0x277CBEB18] array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v36 = v20;
  v37 = [v36 countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v106;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v106 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = MEMORY[0x277CCACA8];
        instanceID = [*(*(&v105 + 1) + 8 * j) instanceID];
        v43 = [v41 stringWithFormat:@"%@", instanceID];
        [array addObject:v43];
      }

      v38 = [v36 countByEnumeratingWithState:&v105 objects:v114 count:16];
    }

    while (v38);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v44 = v21;
  v45 = [v44 countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v102;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v102 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = MEMORY[0x277CCACA8];
        instanceID2 = [*(*(&v101 + 1) + 8 * k) instanceID];
        v51 = [v49 stringWithFormat:@"%@", instanceID2];
        [array addObject:v51];
      }

      v46 = [v44 countByEnumeratingWithState:&v101 objects:v113 count:16];
    }

    while (v46);
  }

  v52 = [array sortedArrayUsingSelector:sel_compare_];
  v53 = MEMORY[0x277CCAD78];
  uuid = [v88 uuid];
  v81 = v52;
  v55 = [v53 hm_deriveUUIDFromBaseUUID:uuid withSalts:v52];

  v56 = MEMORY[0x277CCACA8];
  name = [v91 name];
  name2 = [v88 name];
  v90 = [v56 stringWithFormat:@"%@/%@/%@", name, name2, v55];

  v79 = v55;
  if (v93)
  {
    v59 = MEMORY[0x277CD18F0];
    uuid2 = [v93 uuid];
    v61 = [v59 zoneNameForRecordingManagementServiceUUID:uuid2];

    v62 = v92;
    v63 = v82;
    v86 = [[HMDCameraClipManager alloc] initWithHome:v91 zoneName:v61 messageDispatcher:v92 workQueue:v82 cameraProfileUUID:v55];
    v64 = +[HMDCameraProfile bulletinBoard];
    v65 = v64;
    if (v64)
    {
      v64 = [[HMDCameraClipUserNotificationCenter alloc] initWithBulletinBoard:v64 workQueue:v82 logIdentifier:v90];
    }

    v66 = v88;
    v85 = v64;
    v80 = [[HMDCameraRecordingReachabilityEventManager alloc] initWithHAPAccessory:v88 zoneName:v61 workQueue:v82];
  }

  else
  {
    v80 = 0;
    v85 = 0;
    v86 = 0;
    v62 = v92;
    v66 = v88;
    v63 = v82;
  }

  v67 = objc_alloc_init(MEMORY[0x277D0F868]);
  v68 = [HMDCameraStreamSnapshotHandler alloc];
  allObjects = [v36 allObjects];
  v70 = [(HMDCameraStreamSnapshotHandler *)v68 initWithWorkQueue:v63 services:allObjects logIdentifier:v90];

  v89 = [[HMDCameraSnapshotManager alloc] initWithAccessory:v66 workQueue:v63 streamSnapshotHandler:v70 uniqueIdentifier:v79 msgDispatcher:v62 networkMonitor:v67];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __92__HMDCameraProfile_initWithAccessory_services_msgDispatcher_workQueue_home_settingsManager___block_invoke;
  v95[3] = &unk_278682D10;
  v96 = v63;
  v97 = v70;
  v98 = v66;
  v99 = v79;
  v100 = v67;
  v78 = v67;
  v71 = v79;
  v72 = v66;
  v83 = v70;
  v73 = v63;
  v74 = [v36 na_map:v95];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v76 = [(HMDCameraProfile *)selfCopy initWithAccessory:v72 services:v44 recordingManagementService:v93 msgDispatcher:v92 workQueue:v73 home:v91 settingsManager:v87 uniqueIdentifier:v71 clipManager:v86 clipUserNotificationCenter:v85 reachabilityEventManager:v80 networkMonitor:v78 streamSnapshotHandler:v83 snapshotManager:v89 cameraStreamManagers:v74 notificationCenter:defaultCenter];

  return v76;
}

HMDCameraStreamControlMessageHandler *__92__HMDCameraProfile_initWithAccessory_services_msgDispatcher_workQueue_home_settingsManager___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCameraStreamControlMessageHandler alloc] initWithWorkQueue:a1[4] streamSnapshotHandler:a1[5] accessory:a1[6] streamManagementService:v3 profileUniqueIdentifier:a1[7] networkMonitor:a1[8]];

  return v4;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v55[2] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = receiverCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  accessory = [v10 accessory];
  home = [accessory home];

  v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v51 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v55[0] = v13;
  v55[1] = v14;
  snapshotManager = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  name = [messageCopy name];
  v17 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

  name2 = [messageCopy name];
  name4 = name2;
  if (v17)
  {
    goto LABEL_8;
  }

  v20 = [name2 isEqualToString:*MEMORY[0x277CCF608]];

  name3 = [messageCopy name];
  name4 = name3;
  if (v20)
  {
    goto LABEL_8;
  }

  v22 = [name3 isEqualToString:*MEMORY[0x277CCF5F8]];

  if (v22)
  {
    name4 = [messageCopy name];
LABEL_8:
    v23 = HMFCreateMessageBinding();
LABEL_9:
    v24 = v23;
    goto LABEL_10;
  }

  v54[0] = v13;
  v54[1] = v51;
  snapshotManager = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  name5 = [messageCopy name];
  v27 = [name5 isEqualToString:*MEMORY[0x277CCF600]];

  name6 = [messageCopy name];
  name4 = name6;
  if (v27)
  {
    goto LABEL_8;
  }

  v29 = [name6 isEqualToString:*MEMORY[0x277CCF618]];

  if (v29)
  {
    name4 = [messageCopy name];
    goto LABEL_8;
  }

  v30 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v30 isResidentCapable])
  {
  }

  else
  {
    v31 = isiOSDevice();

    if (!v31)
    {
      goto LABEL_27;
    }
  }

  snapshotManager = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [snapshotManager setRoles:{objc_msgSend(snapshotManager, "roles") | 6}];
  name4 = objc_msgSend_copy(snapshotManager);
  v53[0] = v13;
  v53[1] = name4;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  name7 = [messageCopy name];
  v33 = [name7 isEqualToString:@"kNegotitateRemoteStreamRequestKey"];

  name8 = [messageCopy name];
  if (v33)
  {
    goto LABEL_25;
  }

  v35 = name8;
  v36 = [name8 isEqualToString:@"kStartRemoteStreamRequestKey"];

  name8 = [messageCopy name];
  if (v36)
  {
    goto LABEL_25;
  }

  v37 = name8;
  v38 = [name8 isEqualToString:@"kStopRemoteStreamRequestKey"];

  name8 = [messageCopy name];
  if (v38)
  {
    goto LABEL_25;
  }

  v39 = name8;
  v40 = [name8 isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

  if (v40)
  {
    name8 = [messageCopy name];
LABEL_25:
    v41 = name8;
    v24 = HMFCreateMessageBinding();

    goto LABEL_10;
  }

LABEL_27:
  snapshotManager = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v52[0] = v13;
  v52[1] = snapshotManager;
  name4 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  name9 = [messageCopy name];
  v43 = [name9 isEqualToString:@"kStreamRemoteConnectionSetupNotificationKey"];

  name10 = [messageCopy name];
  if ((v43 & 1) == 0)
  {
    v45 = name10;
    v46 = [name10 isEqualToString:@"kStreamStoppedRemoteNotificationKey"];

    if (!v46)
    {

      snapshotManager = [v10 snapshotManager];
      v48 = objc_opt_class();
      name4 = [v10 snapshotManager];
      v23 = [v48 messageBindingForDispatcher:dispatcherCopy message:messageCopy receiver:name4];
      goto LABEL_9;
    }

    name10 = [messageCopy name];
  }

  v47 = name10;
  v24 = HMFCreateMessageBinding();

LABEL_10:

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_233768 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_233768, &__block_literal_global_79_233769);
  }

  v3 = logCategory__hmf_once_v8_233770;

  return v3;
}

void __31__HMDCameraProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_233770;
  logCategory__hmf_once_v8_233770 = v0;
}

+ (HMDCameraBulletinBoard)bulletinBoard
{
  if (bulletinBoardOverride)
  {
    v2 = bulletinBoardOverride;
  }

  else
  {
    v2 = +[HMDBulletinBoard sharedBulletinBoard];
  }

  return v2;
}

@end