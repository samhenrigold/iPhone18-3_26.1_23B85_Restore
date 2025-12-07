@interface HMDCameraRecordingReachabilityEventManager
+ (id)logCategory;
- (BOOL)isAccessoryReachable;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isCurrentDeviceConnectedToNetwork;
- (BOOL)shouldAddInitialReachabilityEventWithReachability:(BOOL)reachability mostRecentReachabilityEventModel:(id)model;
- (BOOL)shouldHandleReachabilityChanges;
- (HMDCameraRecordingReachabilityEventManager)initWithAccessory:(id)accessory workQueue:(id)queue identifier:(id)identifier bulletinBoard:(id)board logEventSubmitter:(id)submitter accountSettings:(id)settings featuresDataSource:(id)source notificationCenter:(id)self0;
- (HMDCameraRecordingReachabilityEventManager)initWithHAPAccessory:(id)accessory zoneName:(id)name workQueue:(id)queue;
- (HMDHAPAccessory)hapAccessory;
- (_HMCameraUserSettings)currentSettings;
- (double)initialReachabilityTimeout;
- (double)reachabilityChangeReachableDebounceTimeout;
- (double)reachabilityChangeUnreachableDebounceTimeout;
- (id)addCameraReachabilityEventModel:(id)model;
- (id)fetchMostRecentReachabilityEventModel;
- (id)fetchReachabilityEventsWithDateInterval:(id)interval;
- (id)logIdentifier;
- (id)mostRecentReachabilityEventModelInModels:(id)models;
- (id)performCloudPullWithLabel:(id)label;
- (id)reachabilityEventModelWithReachability:(BOOL)reachability dateOfOccurrence:(id)occurrence;
- (id)reachabilityEventModelWithUUID:(id)d reachability:(BOOL)reachability dateOfOccurrence:(id)occurrence;
- (void)addCameraReachabilityEventWithReachability:(BOOL)reachability dateOfOccurrence:(id)occurrence;
- (void)cleanUpEvents;
- (void)clipManagerDidStart:(id)start;
- (void)clipManagerDidStop:(id)stop;
- (void)configureWithMessageDispatcher:(id)dispatcher currentSettings:(id)settings isCurrentDeviceConfirmedPrimaryResident:(BOOL)resident isCurrentDeviceConnectedToNetwork:(BOOL)network;
- (void)handleAccessoryConnectedNotification:(id)notification;
- (void)handleAccessoryDisconnectedNotification:(id)notification;
- (void)handleAppleAccountSettingsHomeStateUpdated:(id)updated;
- (void)handleBridgedAccessoryConnectedNotification:(id)notification;
- (void)handleBridgedAccessoryDisconnectedNotification:(id)notification;
- (void)handleCameraProfileSettingsDidChange:(id)change;
- (void)handleDeleteAllEventsMessage:(id)message;
- (void)handleFetchCountOfEventsMessage:(id)message;
- (void)handleFetchEventsMessage:(id)message;
- (void)handleInitialCameraReachability;
- (void)handlePerformCloudPullMessage:(id)message;
- (void)handleRemoteCameraReachabilityDidChangeMessage:(id)message;
- (void)handleResidentDeviceConfirmedStateChangedNotification:(id)notification;
- (void)handleSubscribeMessage:(id)message;
- (void)handleUnsubscribeMessage:(id)message;
- (void)handleUpdatedCameraReachability:(BOOL)reachability;
- (void)insertBulletinForReachabilityEvent:(id)event;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)notifyRemoteSubscribersOfCameraReachabilityEventModel:(id)model;
- (void)notifyTransportOfUpdatedEvents:(id)events removedEventUUIDs:(id)ds;
- (void)setCurrentDeviceConfirmedPrimaryResident:(BOOL)resident;
- (void)setCurrentDeviceConnectedToNetwork:(BOOL)network;
- (void)setCurrentSettings:(id)settings;
- (void)startReachabilityChangeDebounceTimerWithReachability:(BOOL)reachability;
- (void)submitLogEventWithCurrentModel:(id)model;
- (void)timerDidFire:(id)fire;
- (void)updateInitialReachabilityTimer;
@end

@implementation HMDCameraRecordingReachabilityEventManager

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  if (isInternalBuild())
  {
    v4 = MEMORY[0x277CCACA8];
    home = [hapAccessory home];
    name = [home name];
    name2 = [hapAccessory name];
    uniqueIdentifier = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
    uUIDString = [v4 stringWithFormat:@"%@/%@/%@", name, name2, uniqueIdentifier];
  }

  else
  {
    home = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
    uUIDString = [home UUIDString];
  }

  return uUIDString;
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  v12 = *MEMORY[0x277D85DE8];
  unreachableCopy = unreachable;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received network monitor is unreachable", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConnectedToNetwork:0];
}

- (void)networkMonitorIsReachable:(id)reachable
{
  v12 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received network monitor is reachable", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConnectedToNetwork:1];
}

- (void)timerDidFire:(id)fire
{
  v36 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initialReachabilityTimer = [(HMDCameraRecordingReachabilityEventManager *)self initialReachabilityTimer];

  if (initialReachabilityTimer == fireCopy)
  {
    isAccessoryReachable = [(HMDCameraRecordingReachabilityEventManager *)self isAccessoryReachable];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMFBooleanToString();
      *buf = 138543618;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Initial reachability timer fired with isReachable: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setLastKnownCameraReachability:isAccessoryReachable];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentCameraReachability:isAccessoryReachable];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setInitialReachabilityTimer:0];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy handleInitialCameraReachability];
  }

  else
  {
    reachabilityChangeDebounceTimer = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeDebounceTimer];

    if (reachabilityChangeDebounceTimer == fireCopy)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 lastKnownCameraReachability];
        v12 = HMFBooleanToString();
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability];
        v13 = HMFBooleanToString();
        *buf = 138543874;
        v31 = v11;
        v32 = 2114;
        v33 = v12;
        v34 = 2114;
        v35 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Reachability change debounce timer fired with last known reachability %{public}@ and current reachability %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      lastKnownCameraReachability = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 lastKnownCameraReachability];
      if (lastKnownCameraReachability == [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability])
      {
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 submitLogEventWithCurrentModel:0];
      }

      else
      {
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 setLastKnownCameraReachability:[(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability]];
        currentCameraReachability = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability];
        reachabilityChangeDebounceStartDate = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 reachabilityChangeDebounceStartDate];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __59__HMDCameraRecordingReachabilityEventManager_timerDidFire___block_invoke;
        aBlock[3] = &unk_27972CF98;
        v29 = currentCameraReachability;
        aBlock[4] = selfCopy2;
        v28 = reachabilityChangeDebounceStartDate;
        v17 = reachabilityChangeDebounceStartDate;
        v18 = _Block_copy(aBlock);
        didHandleInitialReachabilityFuture = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 didHandleInitialReachabilityFuture];
        v20 = [didHandleInitialReachabilityFuture addSuccessBlock:v18];
      }

      [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 setReachabilityChangeDebounceTimer:0];
    }
  }
}

- (void)clipManagerDidStop:(id)stop
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingReachabilityEventManager *)self setLocalZone:0];

  [(HMDCameraRecordingReachabilityEventManager *)self setCloudZone:0];
}

- (void)clipManagerDidStart:(id)start
{
  v21 = *MEMORY[0x277D85DE8];
  startCopy = start;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [startCopy localZone];
  [(HMDCameraRecordingReachabilityEventManager *)self setLocalZone:localZone];

  cloudZone = [startCopy cloudZone];
  [(HMDCameraRecordingReachabilityEventManager *)self setCloudZone:cloudZone];

  localZone2 = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  [localZone2 addObserverForAllModels:self];

  [(HMDCameraRecordingReachabilityEventManager *)self cleanUpEvents];
  cloudZone2 = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];
  hasPerformedInitialFetch = [cloudZone2 hasPerformedInitialFetch];

  if ((hasPerformedInitialFetch & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      suppressNotificationsBeforeDate = [(HMDCameraRecordingReachabilityEventManager *)selfCopy suppressNotificationsBeforeDate];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = suppressNotificationsBeforeDate;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Suppressing all reachability notifications before %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setSuppressNotificationsBeforeDate:date];
  }
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  updateCopy = update;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = updateCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received model update: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  deletionCopy = deletion;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelDeletion___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = deletionCopy;
  selfCopy = self;
  v7 = deletionCopy;
  dispatch_sync(workQueue, v8);
}

void __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelDeletion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) model];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 debugDescription];
      v18 = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received deleted reachability event model: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CBEB98] set];
    v13 = MEMORY[0x277CBEB98];
    v14 = [v4 hmbModelID];
    v15 = [v13 setWithObject:v14];
    [v11 notifyTransportOfUpdatedEvents:v12 removedEventUUIDs:v15];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 32);
      v18 = 138543874;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = objc_opt_class();
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Deletion model %@ is not of expected type: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  creationCopy = creation;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelCreation___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = creationCopy;
  selfCopy = self;
  v7 = creationCopy;
  dispatch_sync(workQueue, v8);
}

void __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) model];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 debugDescription];
      v27 = 138543618;
      v28 = v8;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received new reachability event model: %{public}@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v4 createEvent];
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
      v13 = [MEMORY[0x277CBEB98] set];
      [v11 notifyTransportOfUpdatedEvents:v12 removedEventUUIDs:v13];

      v14 = [v10 dateOfOccurrence];
      v15 = [*(a1 + 40) suppressNotificationsBeforeDate];
      v16 = [v14 compare:v15];

      if (v16 != -1)
      {
        [*(a1 + 40) insertBulletinForReachabilityEvent:v10];
LABEL_17:

        goto LABEL_18;
      }

      v17 = objc_autoreleasePoolPush();
      v22 = *(a1 + 40);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v10 dateOfOccurrence];
        v26 = [*(a1 + 40) suppressNotificationsBeforeDate];
        v27 = 138543874;
        v28 = v24;
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v26;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Ignoring created event with date of occurrence %@ because it is before %@", &v27, 0x20u);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v4 debugDescription];
        v27 = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert reachability model into event: %@", &v27, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_17;
  }

LABEL_18:
}

- (void)handleDeleteAllEventsMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling delete all reachability events message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];

  if (localZone)
  {
    localZone2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = MEMORY[0x277D17108];
    name = [messageCopy name];
    v15 = [v13 optionsWithLabel:name];
    v16 = [localZone2 removeAllModelsOfTypes:v12 options:v15];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__HMDCameraRecordingReachabilityEventManager_handleDeleteAllEventsMessage___block_invoke;
    v23[3] = &unk_27972EB40;
    v24 = messageCopy;
    v17 = [v16 addCompletionBlock:v23];

    v18 = v24;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot delete clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v18];
  }
}

- (void)handlePerformCloudPullMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy performCloudPullWithLabel:@"Fetching reachability events due to client request"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__HMDCameraRecordingReachabilityEventManager_handlePerformCloudPullMessage___block_invoke;
  v17[3] = &unk_2797358F0;
  v11 = messageCopy;
  v18 = v11;
  v12 = [v10 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HMDCameraRecordingReachabilityEventManager_handlePerformCloudPullMessage___block_invoke_2;
  v15[3] = &unk_2797359D8;
  v16 = v11;
  v13 = v11;
  v14 = [v12 addFailureBlock:v15];
}

- (void)handleUnsubscribeMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = transport;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    clientConnections = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
    [clientConnections removeObject:v12];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      transport2 = [messageCopy transport];
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = transport2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
  }
}

- (void)handleSubscribeMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = transport;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    clientConnections = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
    [clientConnections addObject:v12];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      transport2 = [messageCopy transport];
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = transport2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
  }
}

- (void)handleFetchCountOfEventsMessage:(id)message
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v41 = v9;
    v42 = 2112;
    v43 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch count of events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];

  if (localZone)
  {
    messagePayload = [messageCopy messagePayload];
    v13 = [messagePayload hmf_dateForKey:*MEMORY[0x277CCF548]];

    messagePayload2 = [messageCopy messagePayload];
    v15 = [messagePayload2 hmf_dateForKey:*MEMORY[0x277CCF550]];

    if (v13 && v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v15];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v20;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetching count of reachability event models with date interval: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [(HMDCameraRecordingReachabilityEventManager *)v18 fetchReachabilityEventsWithDateInterval:v16];
      v22 = objc_autoreleasePoolPush();
      v23 = v18;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v21 count];
        *buf = 138543874;
        v41 = v25;
        v42 = 2048;
        v43 = v26;
        v44 = 2112;
        v45 = v16;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched count of %lu events with date interval: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count", *MEMORY[0x277CCF540])}];
      v39 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

      [messageCopy respondWithPayload:v28];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        messagePayload3 = [messageCopy messagePayload];
        *buf = 138543618;
        v41 = v36;
        v42 = 2112;
        v43 = messagePayload3;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v16];
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch count of events because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v13];
  }
}

- (void)handleFetchEventsMessage:(id)message
{
  v56 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v49 = v9;
    v50 = 2112;
    v51 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy dateForKey:*MEMORY[0x277CCF548]];
    v13 = [messageCopy dateForKey:*MEMORY[0x277CCF550]];
    v14 = [messageCopy numberForKey:*MEMORY[0x277CCF558]];
    v15 = [messageCopy numberForKey:*MEMORY[0x277CCF568]];
    v16 = v15;
    if (v12 && v13 && v14 && v15)
    {
      v45 = v13;
      v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v13];
      bOOLValue = [v16 BOOLValue];
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      v44 = v16;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        HMFBooleanToString();
        v24 = v43 = v14;
        *buf = 138544130;
        v49 = v23;
        v50 = 2112;
        v51 = v17;
        v52 = 2048;
        v53 = unsignedIntegerValue;
        v54 = 2112;
        v55 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Fetching reachability event models with date interval: %@, limit: %lu, shouldOrderAscending: %@", buf, 0x2Au);

        v14 = v43;
      }

      objc_autoreleasePoolPop(v20);
      v25 = [(HMDCameraRecordingReachabilityEventManager *)v21 fetchReachabilityEventsWithDateInterval:v17];
      v26 = [v25 mutableCopy];

      if (bOOLValue)
      {
        v27 = &__block_literal_global_118_131098;
      }

      else
      {
        v27 = &__block_literal_global_120_131099;
      }

      [v26 sortUsingComparator:v27];
      v28 = v14;
      if ([v26 count] <= unsignedIntegerValue)
      {
        v29 = objc_msgSend_copy(v26);
      }

      else
      {
        v29 = [v26 subarrayWithRange:{0, unsignedIntegerValue}];
      }

      v39 = v29;
      v13 = v45;
      v40 = [v29 na_map:&__block_literal_global_123_131100];
      v46 = *MEMORY[0x277CCF578];
      v41 = encodeRootObjectForIncomingXPCMessage(v40, 0);
      v47 = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [messageCopy respondWithPayload:v42];

      v14 = v28;
      v16 = v44;
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v49 = v37;
        v50 = 2112;
        v51 = messagePayload;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v17];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v33;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch events because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

uint64_t __71__HMDCameraRecordingReachabilityEventManager_handleFetchEventsMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __71__HMDCameraRecordingReachabilityEventManager_handleFetchEventsMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)handleRemoteCameraReachabilityDidChangeMessage:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received remote camera reachability change message", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy performCloudPullWithLabel:@"Fetching reachability events due to remote message"];
}

- (void)handleAppleAccountSettingsHomeStateUpdated:(id)updated
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDCameraRecordingReachabilityEventManager_handleAppleAccountSettingsHomeStateUpdated___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __89__HMDCameraRecordingReachabilityEventManager_handleAppleAccountSettingsHomeStateUpdated___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) accountSettings];
    v15 = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification of updated home state for account settings: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) hapAccessory];
  v8 = [v7 home];
  v9 = [*(a1 + 32) accountSettings];
  v10 = [v9 isHomeEnabled];

  if (v10)
  {
    v11 = [*(a1 + 32) currentSettings];
    v12 = [v11 notificationSettings];
    [v8 setCameraReachabilityEventNotificationsEnabled:objc_msgSend(v12 forAccessory:"isReachabilityEventNotificationEnabled") completionHandler:{v7, 0}];

    v13 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setSuppressNotificationsBeforeDate:v13];

    v14 = [*(a1 + 32) performCloudPullWithLabel:@"Fetching reachability events due to account settings changed"];
  }

  else
  {
    [v8 setCameraReachabilityEventNotificationsEnabled:0 forAccessory:v7 completionHandler:0];
  }
}

- (void)handleBridgedAccessoryDisconnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __93__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Bridged camera disconnected: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:0];
  }
}

- (void)handleBridgedAccessoryConnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryConnectedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __90__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryConnectedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Bridged camera connected: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:1];
  }
}

- (void)handleAccessoryDisconnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMDCameraRecordingReachabilityEventManager_handleAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __86__HMDCameraRecordingReachabilityEventManager_handleAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Unconfigured camera: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:0];
  }
}

- (void)handleAccessoryConnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDCameraRecordingReachabilityEventManager_handleAccessoryConnectedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __83__HMDCameraRecordingReachabilityEventManager_handleAccessoryConnectedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Configured camera: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:1];
  }
}

- (void)handleCameraProfileSettingsDidChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMDCameraRecordingReachabilityEventManager_handleCameraProfileSettingsDidChange___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

void __83__HMDCameraRecordingReachabilityEventManager_handleCameraProfileSettingsDidChange___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received camera profile settings did change notification", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) currentSettings];
  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [*(a1 + 32) setCurrentSettings:v10];
    v11 = [*(a1 + 40) userInfo];
    v12 = [v11 hmf_BOOLForKey:@"HMDCameraProfileSettingsIsInitialSettingsUpdateNotificationKey"];

    if ((v12 & 1) == 0)
    {
      v13 = [v6 notificationSettings];
      v14 = [v13 isReachabilityEventNotificationEnabled];

      v15 = [v10 notificationSettings];
      v16 = [v15 isReachabilityEventNotificationEnabled];

      if ((v14 & 1) == 0)
      {
        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            v30 = 138543362;
            v31 = v20;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Reachability event notifications are now enabled", &v30, 0xCu);
          }

          objc_autoreleasePoolPop(v17);
          v21 = [MEMORY[0x277CBEAA8] date];
          [*(a1 + 32) setSuppressNotificationsBeforeDate:v21];

          v22 = [*(a1 + 32) performCloudPullWithLabel:@"Fetching reachability events due to enabling notifications"];
        }
      }
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = objc_opt_class();
      v28 = [*(a1 + 40) userInfo];
      v29 = [v28 objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];
      v30 = 138544130;
      v31 = v26;
      v32 = 2112;
      v33 = @"HMDCameraProfileSettingsNotificationKey";
      v34 = 2112;
      v35 = v27;
      v36 = 2112;
      v37 = v29;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Object for key %@ is not of expected type %@: %@", &v30, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
  }
}

- (void)handleResidentDeviceConfirmedStateChangedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HMDCameraRecordingReachabilityEventManager_handleResidentDeviceConfirmedStateChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__100__HMDCameraRecordingReachabilityEventManager_handleResidentDeviceConfirmedStateChangedNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 home];
  v4 = [v3 isCurrentDeviceConfirmedPrimaryResident];

  result = [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
  if (v4 != result)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notified that isCurrentDeviceConfirmedPrimaryResident changed from %@ to %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    return [*(a1 + 32) setCurrentDeviceConfirmedPrimaryResident:v4];
  }

  return result;
}

- (void)insertBulletinForReachabilityEvent:(id)event
{
  v30 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  currentSettings = [(HMDCameraRecordingReachabilityEventManager *)self currentSettings];
  notificationSettings = [currentSettings notificationSettings];
  isReachabilityEventNotificationEnabled = [notificationSettings isReachabilityEventNotificationEnabled];

  accountSettings = [(HMDCameraRecordingReachabilityEventManager *)self accountSettings];
  isHomeEnabled = [accountSettings isHomeEnabled];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (isReachabilityEventNotificationEnabled && isHomeEnabled)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = eventCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Inserting bulletin for new reachability event: %{public}@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    bulletinBoard = [(HMDCameraRecordingReachabilityEventManager *)selfCopy bulletinBoard];
    hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy hapAccessory];
    isReachable = [eventCopy isReachable];
    dateOfOccurrence = [eventCopy dateOfOccurrence];
    [bulletinBoard insertReachabilityEventBulletinForAccessory:hapAccessory reachable:isReachable date:dateOfOccurrence];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMFBooleanToString();
      v21 = HMFBooleanToString();
      v22 = 138544130;
      v23 = v19;
      v24 = 2112;
      v25 = eventCopy;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Not inserting bulletin for new reachability event: %@ due to reachabilityEventNotificationEnabled: %@ and isHomeEnabled: %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (id)mostRecentReachabilityEventModelInModels:(id)models
{
  modelsCopy = models;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__131128;
  v11 = __Block_byref_object_dispose__131129;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__HMDCameraRecordingReachabilityEventManager_mostRecentReachabilityEventModelInModels___block_invoke;
  v6[3] = &unk_27972CF30;
  v6[4] = &v7;
  [modelsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __87__HMDCameraRecordingReachabilityEventManager_mostRecentReachabilityEventModelInModels___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v10 = v4;
  if (v6)
  {
    v7 = [v6 dateOfOccurrence];
    v8 = [v10 dateOfOccurrence];
    v9 = [v7 compare:v8];

    if (v9 != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

- (void)startReachabilityChangeDebounceTimerWithReachability:(BOOL)reachability
{
  reachabilityCopy = reachability;
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (reachabilityCopy)
  {
    [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeReachableDebounceTimeout];
  }

  else
  {
    [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeUnreachableDebounceTimeout];
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v11;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting reachability change debounce timer with time interval of %fs", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  reachabilityChangeDebounceTimerFactory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimerFactory];
  v13 = reachabilityChangeDebounceTimerFactory[2](reachabilityChangeDebounceTimerFactory, 0, v7);
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setReachabilityChangeDebounceTimer:v13];

  reachabilityChangeDebounceTimer = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimer];
  [reachabilityChangeDebounceTimer setDelegate:selfCopy];

  workQueue2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy workQueue];
  reachabilityChangeDebounceTimer2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimer];
  [reachabilityChangeDebounceTimer2 setDelegateQueue:workQueue2];

  reachabilityChangeDebounceTimer3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimer];
  [reachabilityChangeDebounceTimer3 resume];

  date = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setReachabilityChangeDebounceStartDate:date];
}

- (double)reachabilityChangeUnreachableDebounceTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"reachabilityChangeUnreachableDebounceTimeout"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (double)reachabilityChangeReachableDebounceTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"reachabilityChangeReachableDebounceTimeout"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (void)updateInitialReachabilityTimer
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraRecordingReachabilityEventManager *)self shouldHandleReachabilityChanges])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting initial reachability timer", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setReachabilityChangeDebounceTimer:0];
    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setDidHandleInitialReachabilityFuture:v8];

    initialReachabilityTimerFactory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimerFactory];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimeout];
    v10 = initialReachabilityTimerFactory[2](initialReachabilityTimerFactory, 0);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setInitialReachabilityTimer:v10];

    initialReachabilityTimer = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimer];
    [initialReachabilityTimer setDelegate:selfCopy];

    workQueue2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy workQueue];
    initialReachabilityTimer2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimer];
    [initialReachabilityTimer2 setDelegateQueue:workQueue2];

    initialReachabilityTimer3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimer];
    [initialReachabilityTimer3 resume];
  }

  else
  {
    [(HMDCameraRecordingReachabilityEventManager *)self setInitialReachabilityTimer:0];

    [(HMDCameraRecordingReachabilityEventManager *)self setReachabilityChangeDebounceTimer:0];
  }
}

- (double)initialReachabilityTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"cameraInitialReachabilityTimeout"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (id)performCloudPullWithLabel:(id)label
{
  v26 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cloudZone = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];

  if (cloudZone)
  {
    v7 = [MEMORY[0x277D17108] optionsWithLabel:labelCopy];
    cloudZone2 = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];
    v9 = [cloudZone2 performCloudPullWithOptions:v7];
    v10 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
    v12 = [v10 schedulerWithDispatchQueue:workQueue2];
    v13 = [v9 reschedule:v12];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__HMDCameraRecordingReachabilityEventManager_performCloudPullWithLabel___block_invoke;
    v22[3] = &unk_2797358C8;
    v22[4] = self;
    v23 = v7;
    v14 = v7;
    v15 = [v13 addFailureBlock:v22];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform cloud pull because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v15 = [v20 futureWithError:v13];
  }

  return v15;
}

void __72__HMDCameraRecordingReachabilityEventManager_performCloudPullWithLabel___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform cloud pull with options %@ due to error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)submitLogEventWithCurrentModel:(id)model
{
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = 0.0;
  if ([modelCopy reachable])
  {
    mostRecentReachabilityEventModel = [(HMDCameraRecordingReachabilityEventManager *)self mostRecentReachabilityEventModel];
    if (!mostRecentReachabilityEventModel)
    {
      _HMFPreconditionFailure();
    }

    v7 = mostRecentReachabilityEventModel;
    dateOfOccurrence = [mostRecentReachabilityEventModel dateOfOccurrence];
    if (dateOfOccurrence)
    {
      dateOfOccurrence2 = [modelCopy dateOfOccurrence];
      [dateOfOccurrence2 timeIntervalSinceDate:dateOfOccurrence];
      v5 = v10;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v7 debugDescription];
        v23 = 138543618;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_FAULT, "%{public}@Most recent reachability event model has no date of occurrence: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v16 = [HMDCameraRecordingReachabilityLogEvent alloc];
  if (modelCopy)
  {
    reachable = [modelCopy reachable];
  }

  else
  {
    reachable = [(HMDCameraRecordingReachabilityEventManager *)self currentCameraReachability];
  }

  v18 = reachable;
  reachabilityChangeDebounceCount = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeDebounceCount];
  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v21 = [(HMDCameraRecordingReachabilityLogEvent *)v16 initWithReachability:v18 didCreateEventModel:modelCopy != 0 reachabilityChangeDebounceCount:reachabilityChangeDebounceCount offlineDuration:hapAccessory hapAccessory:v5];

  logEventSubmitter = [(HMDCameraRecordingReachabilityEventManager *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v21];

  [(HMDCameraRecordingReachabilityEventManager *)self setReachabilityChangeDebounceCount:0];
}

- (id)reachabilityEventModelWithUUID:(id)d reachability:(BOOL)reachability dateOfOccurrence:(id)occurrence
{
  reachabilityCopy = reachability;
  occurrenceCopy = occurrence;
  dCopy = d;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = [HMDCameraRecordingReachabilityEventModel alloc];
  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  uuid = [hapAccessory uuid];
  v14 = [(HMBModel *)v11 initWithModelID:dCopy parentModelID:uuid];

  [(HMDCameraRecordingReachabilityEventModel *)v14 setReachable:reachabilityCopy];
  [(HMDCameraRecordingReachabilityEventModel *)v14 setDateOfOccurrence:occurrenceCopy];

  return v14;
}

- (id)reachabilityEventModelWithReachability:(BOOL)reachability dateOfOccurrence:(id)occurrence
{
  reachabilityCopy = reachability;
  occurrenceCopy = occurrence;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityEventModelWithUUID:uUID reachability:reachabilityCopy dateOfOccurrence:occurrenceCopy];

  return v9;
}

- (void)notifyTransportOfUpdatedEvents:(id)events removedEventUUIDs:(id)ds
{
  v49 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dsCopy = ds;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnections = [(HMDCameraRecordingReachabilityEventManager *)self clientConnections];
  v10 = [clientConnections count];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      clientConnections2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
      *buf = 138544130;
      v42 = v15;
      v43 = 2048;
      v44 = [clientConnections2 count];
      v45 = 2048;
      v46 = [eventsCopy count];
      v47 = 2048;
      v48 = [dsCopy count];
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribed transports of %lu updated events, %lu removed events", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v39[0] = *MEMORY[0x277CCF570];
    v32 = eventsCopy;
    v17 = encodeRootObjectForIncomingXPCMessage(eventsCopy, 0);
    v39[1] = *MEMORY[0x277CCF560];
    v40[0] = v17;
    v31 = dsCopy;
    v40[1] = dsCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
    v19 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      v22 = *MEMORY[0x277CCF528];
      do
      {
        v23 = 0;
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v34 + 1) + 8 * v23);
          v25 = [MEMORY[0x277D0F848] entitledMessageWithName:v22 messagePayload:v18];
          [v25 setTransport:v24];
          v26 = objc_alloc(MEMORY[0x277D0F820]);
          messageTargetUUID = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageTargetUUID];
          v28 = [v26 initWithTarget:messageTargetUUID];
          [v25 setDestination:v28];

          [v25 setRequiresCameraClipsEntitlement];
          messageDispatcher = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
          [messageDispatcher sendMessage:v25];

          ++v23;
        }

        while (v20 != v23);
        v20 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v20);
    }

    dsCopy = v31;
    eventsCopy = v32;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v30;
      v43 = 2048;
      v44 = [eventsCopy count];
      v45 = 2048;
      v46 = [dsCopy count];
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify of %lu updated events, %lu removed events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)notifyRemoteSubscribersOfCameraReachabilityEventModel:(id)model
{
  v75[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v6 = hapAccessory;
  if (hapAccessory)
  {
    home = [hapAccessory home];
    v8 = home;
    if (home)
    {
      notificationRegistry = [home notificationRegistry];
      uuid = [v6 uuid];
      v75[0] = uuid;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
      v12 = [notificationRegistry userIDsRegisteredForReachabilityEventNotificationsForAccessoryUUIDs:v11];

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __100__HMDCameraRecordingReachabilityEventManager_notifyRemoteSubscribersOfCameraReachabilityEventModel___block_invoke;
      v63[3] = &unk_27972CF08;
      v63[4] = self;
      v13 = [v12 na_map:v63];
      if ([v13 hmf_isEmpty])
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v18 = v17 = v12;
          *buf = 138543362;
          v65 = v18;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No devices need to be notified for accessory reachability event", buf, 0xCu);

          v12 = v17;
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {
        v50 = v12;
        v51 = v8;
        v52 = v6;
        v73[0] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyUUID";
        hmbModelID = [modelCopy hmbModelID];
        uUIDString = [hmbModelID UUIDString];
        v74[0] = uUIDString;
        v73[1] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyDateOfOccurrence";
        dateOfOccurrence = [modelCopy dateOfOccurrence];
        v74[1] = dateOfOccurrence;
        v73[2] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyIsReachable";
        v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "reachable")}];
        v74[2] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = v13;
        v58 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        if (v58)
        {
          v32 = *v60;
          v53 = v31;
          v54 = v13;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v60 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v59 + 1) + 8 * i);
              v35 = [HMDRemoteMessage alloc];
              v36 = [HMDRemoteDeviceMessageDestination alloc];
              uniqueIdentifier = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
              v38 = [(HMDRemoteDeviceMessageDestination *)v36 initWithTarget:uniqueIdentifier device:v34];
              v39 = [(HMDRemoteMessage *)v35 initWithName:@"HMDRemoteCameraReachabilityDidChangeMessage" destination:v38 payload:v31 type:3 timeout:1 secure:86400.0];

              v40 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = HMFGetLogIdentifier();
                shortDescription = [v34 shortDescription];
                hmbModelID2 = [modelCopy hmbModelID];
                [(HMFObject *)v39 shortDescription];
                v57 = v40;
                v46 = v32;
                v48 = v47 = self;
                *buf = 138544130;
                v65 = v43;
                v66 = 2112;
                v67 = shortDescription;
                v68 = 2114;
                v69 = hmbModelID2;
                v70 = 2114;
                v71 = v48;
                _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Notifying device %@ of camera reachability event model %{public}@ using message: %{public}@", buf, 0x2Au);

                self = v47;
                v32 = v46;
                v40 = v57;

                v31 = v53;
                v13 = v54;
              }

              objc_autoreleasePoolPop(v40);
              messageDispatcher = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 messageDispatcher];
              [messageDispatcher sendMessage:v39];
            }

            v58 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
          }

          while (v58);
        }

        v8 = v51;
        v6 = v52;
        v12 = v50;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v65 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil when attempting to notify subscribers", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory reference was nil when attempting to notify subscribers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

id __100__HMDCameraRecordingReachabilityEventManager_notifyRemoteSubscribersOfCameraReachabilityEventModel___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDDevice deviceWithDestination:v3];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the device with destination %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

- (id)addCameraReachabilityEventModel:(id)model
{
  v4 = MEMORY[0x277D17108];
  modelCopy = model;
  v6 = [v4 optionsWithLabel:@"Create camera reachability event"];
  localZone = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  v8 = [MEMORY[0x277CBEB98] setWithObject:modelCopy];

  v9 = [localZone createModels:v8 options:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventModel___block_invoke;
  v17[3] = &unk_2797330A0;
  v17[4] = self;
  v10 = [v9 flatMap:v17];
  v11 = [v10 flatMap:&__block_literal_global_88_131161];
  v12 = MEMORY[0x277D2C938];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v14 = [v12 schedulerWithDispatchQueue:workQueue];
  v15 = [v11 reschedule:v14];

  return v15;
}

id __78__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventModel___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mirrorOutputResult];

  if (v4)
  {
    v5 = [v3 mirrorOutputResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@No mirrorOutputResult future provided", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v5 = [v10 futureWithError:v11];
  }

  return v5;
}

- (void)addCameraReachabilityEventWithReachability:(BOOL)reachability dateOfOccurrence:(id)occurrence
{
  reachabilityCopy = reachability;
  v35 = *MEMORY[0x277D85DE8];
  occurrenceCopy = occurrence;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityEventModelWithReachability:reachabilityCopy dateOfOccurrence:occurrenceCopy];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    hmbModelID = [v8 hmbModelID];
    *buf = 138544130;
    v28 = v12;
    v29 = 2114;
    v30 = hmbModelID;
    v31 = 1024;
    v32 = reachabilityCopy;
    v33 = 2112;
    v34 = occurrenceCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding camera reachability event model %{public}@ with reachability: %{BOOL}d date of occurrence: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy addCameraReachabilityEventModel:v8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __106__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventWithReachability_dateOfOccurrence___block_invoke;
  v25[3] = &unk_279735918;
  v25[4] = selfCopy;
  v15 = v8;
  v26 = v15;
  v16 = [v14 addSuccessBlock:v25];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __106__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventWithReachability_dateOfOccurrence___block_invoke_2;
  v22 = &unk_2797358C8;
  v23 = selfCopy;
  v24 = v15;
  v17 = v15;
  v18 = [v16 addFailureBlock:&v19];

  [(HMDCameraRecordingReachabilityEventManager *)selfCopy submitLogEventWithCurrentModel:v17, v19, v20, v21, v22, v23];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setMostRecentReachabilityEventModel:v17];
}

void __106__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventWithReachability_dateOfOccurrence___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to push event %@ to the cloud due to error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)fetchMostRecentReachabilityEventModel
{
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self performCloudPullWithLabel:@"Fetch most recent reachability event model"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HMDCameraRecordingReachabilityEventManager_fetchMostRecentReachabilityEventModel__block_invoke;
  v6[3] = &unk_2797306C8;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __83__HMDCameraRecordingReachabilityEventManager_fetchMostRecentReachabilityEventModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [*(a1 + 32) fetchReachabilityEventsWithDateInterval:v6];
  v8 = [*(a1 + 32) mostRecentReachabilityEventModelInModels:v7];
  v9 = MEMORY[0x277D2C900];
  if (v8)
  {
    v10 = [MEMORY[0x277D2C900] futureWithResult:v8];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v10 = [v9 futureWithError:v11];
  }

  return v10;
}

- (id)fetchReachabilityEventsWithDateInterval:(id)interval
{
  intervalCopy = interval;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  v8 = [localZone queryModelsOfType:objc_opt_class()];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __86__HMDCameraRecordingReachabilityEventManager_fetchReachabilityEventsWithDateInterval___block_invoke;
  v16 = &unk_27972CEE0;
  v17 = intervalCopy;
  v18 = v6;
  v9 = v6;
  v10 = intervalCopy;
  [v8 enumerateObjectsUsingBlock:&v13];
  v11 = objc_msgSend_copy(v9, v13, v14, v15, v16);

  return v11;
}

void __86__HMDCameraRecordingReachabilityEventManager_fetchReachabilityEventsWithDateInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 dateOfOccurrence];
  LODWORD(v4) = [v4 containsDate:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (BOOL)shouldAddInitialReachabilityEventWithReachability:(BOOL)reachability mostRecentReachabilityEventModel:(id)model
{
  reachabilityCopy = reachability;
  modelCopy = model;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (modelCopy)
  {
    reachabilityCopy ^= [modelCopy reachable];
  }

  else
  {
    LOBYTE(reachabilityCopy) = reachabilityCopy ^ 1;
  }

  return reachabilityCopy;
}

- (void)handleInitialCameraReachability
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [(HMDCameraRecordingReachabilityEventManager *)self currentCameraReachability];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraRecordingReachabilityEventManager *)self setSuppressNotificationsBeforeDate:date];
  fetchMostRecentReachabilityEventModel = [(HMDCameraRecordingReachabilityEventManager *)self fetchMostRecentReachabilityEventModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HMDCameraRecordingReachabilityEventManager_handleInitialCameraReachability__block_invoke;
  v8[3] = &unk_27972CEB8;
  v10 = workQueue;
  v8[4] = self;
  v9 = date;
  v6 = date;
  v7 = [fetchMostRecentReachabilityEventModel addCompletionBlock:v8];
}

void __77__HMDCameraRecordingReachabilityEventManager_handleInitialCameraReachability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) mostRecentReachabilityEventModel];
  if (v8)
  {
    v9 = [v5 dateOfOccurrence];
    v10 = [v8 dateOfOccurrence];
    v11 = [v9 compare:v10];

    if (v11 == -1)
    {
      v12 = v8;

      v5 = v12;
    }
  }

  [*(a1 + 32) setMostRecentReachabilityEventModel:v5];
  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v27 = v13;
    v17 = v8;
    v18 = v5;
    v19 = v6;
    v20 = *(a1 + 48);
    v21 = [*(a1 + 32) mostRecentReachabilityEventModel];
    v22 = [v21 createEvent];
    *buf = 138543874;
    v29 = v16;
    v30 = 1024;
    v31 = v20;
    v6 = v19;
    v5 = v18;
    v8 = v17;
    v13 = v27;
    v32 = 2114;
    v33 = v22;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Determining should add initial reachability event using reachability: %{BOOL}d, most recent reachability event: %{public}@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v13);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v25 = [v23 mostRecentReachabilityEventModel];
  LODWORD(v23) = [v23 shouldAddInitialReachabilityEventWithReachability:v24 mostRecentReachabilityEventModel:v25];

  if (v23)
  {
    [*(a1 + 32) setReachabilityChangeDebounceCount:1];
    [*(a1 + 32) addCameraReachabilityEventWithReachability:*(a1 + 48) dateOfOccurrence:*(a1 + 40)];
  }

  v26 = [*(a1 + 32) didHandleInitialReachabilityFuture];
  [v26 finishWithNoResult];
}

- (void)handleUpdatedCameraReachability:(BOOL)reachability
{
  reachabilityCopy = reachability;
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initialReachabilityTimer = [(HMDCameraRecordingReachabilityEventManager *)self initialReachabilityTimer];

  if (initialReachabilityTimer)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      v11 = "%{public}@Initial reachability timer active";
LABEL_11:
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v14, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (![(HMDCameraRecordingReachabilityEventManager *)self shouldHandleReachabilityChanges])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      v11 = "%{public}@Not handling reachability change";
      goto LABEL_11;
    }

LABEL_13:

    objc_autoreleasePoolPop(v7);
    return;
  }

  if ([(HMDCameraRecordingReachabilityEventManager *)self currentCameraReachability]== reachabilityCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v10 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v10;
    v11 = "%{public}@Current camera reachability is same as updated camera reachability";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_12;
  }

  [(HMDCameraRecordingReachabilityEventManager *)self setCurrentCameraReachability:reachabilityCopy];
  [(HMDCameraRecordingReachabilityEventManager *)self setReachabilityChangeDebounceCount:[(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeDebounceCount]+ 1];

  [(HMDCameraRecordingReachabilityEventManager *)self startReachabilityChangeDebounceTimerWithReachability:reachabilityCopy];
}

- (void)setCurrentDeviceConnectedToNetwork:(BOOL)network
{
  networkCopy = network;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_currentDeviceConnectedToNetwork != networkCopy)
  {
    self->_currentDeviceConnectedToNetwork = networkCopy;

    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
  }
}

- (BOOL)isCurrentDeviceConnectedToNetwork
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_currentDeviceConnectedToNetwork;
}

- (void)setCurrentDeviceConfirmedPrimaryResident:(BOOL)resident
{
  residentCopy = resident;
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_currentDeviceConfirmedPrimaryResident != residentCopy)
  {
    self->_currentDeviceConfirmedPrimaryResident = residentCopy;
    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
    hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
    if (hapAccessory)
    {
      notificationCenter = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
      v8 = notificationCenter;
      if (residentCopy)
      {
        [notificationCenter addObserver:self selector:sel_handleAccessoryConnectedNotification_ name:@"HMDAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter2 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter2 addObserver:self selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:hapAccessory];

        notificationCenter3 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter3 addObserver:self selector:sel_handleBridgedAccessoryConnectedNotification_ name:@"HMDBridgedAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter4 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter4 addObserver:self selector:sel_handleBridgedAccessoryDisconnectedNotification_ name:@"HMDBridgedAccessoryDisconnectedNotification" object:hapAccessory];
      }

      else
      {
        [notificationCenter removeObserver:self name:@"HMDAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter5 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter5 removeObserver:self name:@"HMDAccessoryDisconnectedNotification" object:hapAccessory];

        notificationCenter6 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter6 removeObserver:self name:@"HMDBridgedAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter4 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter4 removeObserver:self name:@"HMDBridgedAccessoryDisconnectedNotification" object:hapAccessory];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Not updating notification registrations because accessory reference is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }
  }
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_currentDeviceConfirmedPrimaryResident;
}

- (void)setCurrentSettings:(id)settings
{
  settingsCopy = settings;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = isRecordingAllowedForSettings(self->_currentSettings);
  v6 = objc_msgSend_copy(settingsCopy);
  currentSettings = self->_currentSettings;
  self->_currentSettings = v6;

  v8 = isRecordingAllowedForSettings(settingsCopy);
  if (workQueue != v8)
  {

    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
  }
}

- (_HMCameraUserSettings)currentSettings
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSettings = self->_currentSettings;

  return currentSettings;
}

- (BOOL)shouldHandleReachabilityChanges
{
  currentSettings = [(HMDCameraRecordingReachabilityEventManager *)self currentSettings];
  v4 = isRecordingAllowedForSettings(currentSettings) && [(HMDCameraRecordingReachabilityEventManager *)self isCurrentDeviceConnectedToNetwork]&& [(HMDCameraRecordingReachabilityEventManager *)self isCurrentDeviceConfirmedPrimaryResident];

  return v4;
}

- (BOOL)isAccessoryReachable
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v5 = hapAccessory;
  if (hapAccessory)
  {
    if ([hapAccessory isPrimary])
    {
      isSecuritySessionOpen = [v5 isSecuritySessionOpen];
    }

    else
    {
      isSecuritySessionOpen = [v5 isBridgedAccessoryConnected];
    }

    v7 = isSecuritySessionOpen;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)cleanUpEvents
{
  v32 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCF518]];
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v7 = [v5 initWithStartDate:distantPast endDate:v4];

  v8 = [(HMDCameraRecordingReachabilityEventManager *)self fetchReachabilityEventsWithDateInterval:v7];
  if ([v8 count] > 1)
  {
    v13 = [(HMDCameraRecordingReachabilityEventManager *)self mostRecentReachabilityEventModelInModels:v8];
    v14 = MEMORY[0x277CBEB98];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __59__HMDCameraRecordingReachabilityEventManager_cleanUpEvents__block_invoke;
    v26[3] = &unk_27972CE90;
    v15 = v13;
    v27 = v15;
    v16 = [v8 na_map:v26];
    v17 = [v14 setWithArray:v16];

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v17 count];
      *buf = 138543618;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Removing %lu expired records", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove expired camera reachability event records"];
    [v23 setShouldEnqueueMirrorOutput:0];
    localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];
    v25 = [localZone removeModelIDs:v17 options:v23];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No expired models to delete", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

id __59__HMDCameraRecordingReachabilityEventManager_cleanUpEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hmbModelID];
  v5 = [*(a1 + 32) hmbModelID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 hmbModelID];
  }

  return v7;
}

- (void)configureWithMessageDispatcher:(id)dispatcher currentSettings:(id)settings isCurrentDeviceConfirmedPrimaryResident:(BOOL)resident isCurrentDeviceConnectedToNetwork:(BOOL)network
{
  networkCopy = network;
  residentCopy = resident;
  v68 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  settingsCopy = settings;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    v17 = HMFBooleanToString();
    *buf = 138544130;
    v61 = v15;
    v62 = 2112;
    v63 = settingsCopy;
    v64 = 2112;
    v65 = v16;
    v66 = 2112;
    v67 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Configuring with current settings: %@, isCurrentDeviceConfirmedPrimaryResident: %@, isCurrentDeviceConnectedToNetwork: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setMessageDispatcher:dispatcherCopy];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:133];
  v21 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0 requiresCameraStreamingAccess:1];
  [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v22 = v50 = networkCopy;
  messageDispatcher = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v24 = v51 = dispatcherCopy;
  v59[0] = v24;
  v59[1] = v21;
  v49 = settingsCopy;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [messageDispatcher registerForMessage:@"HMDRemoteCameraReachabilityDidChangeMessage" receiver:selfCopy policies:v25 selector:sel_handleRemoteCameraReachabilityDidChangeMessage_];

  messageDispatcher2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v27 = *MEMORY[0x277CCF538];
  v58[0] = v20;
  v58[1] = v21;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  [messageDispatcher2 registerForMessage:v27 receiver:selfCopy policies:v28 selector:sel_handleFetchEventsMessage_];

  messageDispatcher3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v30 = *MEMORY[0x277CCF530];
  v57[0] = v20;
  v57[1] = v21;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  [messageDispatcher3 registerForMessage:v30 receiver:selfCopy policies:v31 selector:sel_handleFetchCountOfEventsMessage_];

  messageDispatcher4 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v33 = *MEMORY[0x277CCF588];
  v56[0] = v20;
  v56[1] = v21;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  [messageDispatcher4 registerForMessage:v33 receiver:selfCopy policies:v34 selector:sel_handleSubscribeMessage_];

  messageDispatcher5 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v36 = *MEMORY[0x277CCF590];
  v55[0] = v20;
  v55[1] = v21;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  [messageDispatcher5 registerForMessage:v36 receiver:selfCopy policies:v37 selector:sel_handleUnsubscribeMessage_];

  messageDispatcher6 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v39 = *MEMORY[0x277CCF580];
  v54[0] = v20;
  v54[1] = v21;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  [messageDispatcher6 registerForMessage:v39 receiver:selfCopy policies:v40 selector:sel_handlePerformCloudPullMessage_];

  v41 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  messageDispatcher7 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v43 = *MEMORY[0x277CCF520];
  v53[0] = v20;
  v53[1] = v22;
  v53[2] = v41;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
  [messageDispatcher7 registerForMessage:v43 receiver:selfCopy policies:v44 selector:sel_handleDeleteAllEventsMessage_];

  notificationCenter = [(HMDCameraRecordingReachabilityEventManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleResidentDeviceConfirmedStateChangedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  notificationCenter2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleCameraProfileSettingsDidChange_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:hapAccessory];

  notificationCenter3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy notificationCenter];
  accountSettings = [(HMDCameraRecordingReachabilityEventManager *)selfCopy accountSettings];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleAppleAccountSettingsHomeStateUpdated_ name:@"HMDAppleAccountSettingsHomeStateUpdatedNotification" object:accountSettings];

  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentSettings:v49];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConfirmedPrimaryResident:residentCopy];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConnectedToNetwork:v50];
}

- (HMDCameraRecordingReachabilityEventManager)initWithHAPAccessory:(id)accessory zoneName:(id)name workQueue:(id)queue
{
  queueCopy = queue;
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  v10 = +[HMDBulletinBoard sharedBulletinBoard];
  v11 = +[HMDMetricsManager sharedLogEventSubmitter];
  v12 = +[HMDAppleAccountSettings sharedSettings];
  v13 = objc_alloc_init(HMDFeaturesDataSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = [(HMDCameraRecordingReachabilityEventManager *)self initWithAccessory:accessoryCopy workQueue:queueCopy identifier:uuid bulletinBoard:v10 logEventSubmitter:v11 accountSettings:v12 featuresDataSource:v13 notificationCenter:defaultCenter];

  return v15;
}

- (HMDCameraRecordingReachabilityEventManager)initWithAccessory:(id)accessory workQueue:(id)queue identifier:(id)identifier bulletinBoard:(id)board logEventSubmitter:(id)submitter accountSettings:(id)settings featuresDataSource:(id)source notificationCenter:(id)self0
{
  obj = accessory;
  queueCopy = queue;
  identifierCopy = identifier;
  boardCopy = board;
  submitterCopy = submitter;
  settingsCopy = settings;
  sourceCopy = source;
  centerCopy = center;
  v35.receiver = self;
  v35.super_class = HMDCameraRecordingReachabilityEventManager;
  v18 = [(HMDCameraRecordingReachabilityEventManager *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uniqueIdentifier, identifier);
    objc_storeWeak(&v19->_hapAccessory, obj);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_bulletinBoard, board);
    objc_storeStrong(&v19->_logEventSubmitter, submitter);
    objc_storeStrong(&v19->_accountSettings, settings);
    objc_storeStrong(&v19->_featuresDataSource, source);
    objc_storeStrong(&v19->_notificationCenter, center);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    clientConnections = v19->_clientConnections;
    v19->_clientConnections = weakObjectsHashTable;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    suppressNotificationsBeforeDate = v19->_suppressNotificationsBeforeDate;
    v19->_suppressNotificationsBeforeDate = distantPast;

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    didHandleInitialReachabilityFuture = v19->_didHandleInitialReachabilityFuture;
    v19->_didHandleInitialReachabilityFuture = v24;

    initialReachabilityTimerFactory = v19->_initialReachabilityTimerFactory;
    v19->_initialReachabilityTimerFactory = &__block_literal_global_131213;

    reachabilityChangeDebounceTimerFactory = v19->_reachabilityChangeDebounceTimerFactory;
    v19->_reachabilityChangeDebounceTimerFactory = &__block_literal_global_24_131214;
  }

  return v19;
}

id __171__HMDCameraRecordingReachabilityEventManager_initWithAccessory_workQueue_identifier_bulletinBoard_logEventSubmitter_accountSettings_featuresDataSource_notificationCenter___block_invoke_2(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

id __171__HMDCameraRecordingReachabilityEventManager_initWithAccessory_workQueue_identifier_bulletinBoard_logEventSubmitter_accountSettings_featuresDataSource_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t67 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t67, &__block_literal_global_130_131222);
  }

  v3 = logCategory__hmf_once_v68;

  return v3;
}

uint64_t __57__HMDCameraRecordingReachabilityEventManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v68;
  logCategory__hmf_once_v68 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end