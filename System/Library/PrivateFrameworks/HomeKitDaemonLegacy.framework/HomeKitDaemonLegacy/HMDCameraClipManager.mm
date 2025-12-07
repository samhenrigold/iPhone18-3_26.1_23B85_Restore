@interface HMDCameraClipManager
+ (double)maximumClipDuration;
+ (id)logCategory;
- (BOOL)_fetchClipsWithDateInterval:(id)interval quality:(int64_t)quality isAscending:(BOOL)ascending error:(id *)error handler:(id)handler;
- (BOOL)_fetchSignificantEventsWithDateInterval:(id)interval isAscending:(BOOL)ascending error:(id *)error handler:(id)handler;
- (BOOL)areShareModificationsEnabledForManager:(id)manager;
- (BOOL)hasStartedUpCloudZone;
- (BOOL)manager:(id)manager shouldGrantWriteAccessToUser:(id)user;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user;
- (HMDCameraClipManager)initWithHome:(id)home zoneName:(id)name messageDispatcher:(id)dispatcher workQueue:(id)queue cameraProfileUUID:(id)d;
- (HMDCameraClipManager)initWithZoneManager:(id)manager quotaManager:(id)quotaManager faceClassificationResolver:(id)resolver clientConnectionsTimer:(id)timer messageDispatcher:(id)dispatcher workQueue:(id)queue cameraProfileUUID:(id)d fileManager:(id)self0 featuresDataSource:(id)self1;
- (HMDCameraClipManagerDelegate)delegate;
- (NSDictionary)stateDump;
- (NSString)zoneName;
- (NSUUID)messageTargetUUID;
- (id)_disableCloudStorage;
- (id)_enableCloudStorage;
- (id)_faceClassificationsForSignificantEventWithUUID:(id)d;
- (id)_fetchCanonicalHeroFrameURLForClipModel:(id)model;
- (id)_fetchFaceCropURLForSignificantEventModel:(id)model;
- (id)_fetchHeroFrameURLForSignificantEventModel:(id)model;
- (id)_handleFaceMisclassificationForSignificantEvent:(id)event personUUID:(id)d faceClassificationPersonManagerUUID:(id)iD homePersonManagerUUID:(id)uID;
- (id)_performCloudPull;
- (id)_removeClipsWithUUIDs:(id)ds options:(id)options;
- (id)_significantEventFromSignificantEventModel:(id)model;
- (id)_significantEventModelsForClipWithUUID:(id)d;
- (id)_significantEventModelsWithUUIDs:(id)ds;
- (id)_significantEventsWithUUIDs:(id)ds;
- (id)_updateModelsForMisclassificationForSignificantEvent:(id)event unassociatedFaceCropUUID:(id)d personManagerUUID:(id)iD;
- (id)fetchHeroFrameURLForSignificantEventWithUUID:(id)d;
- (id)fetchSignificantEventsForClipWithSignificantEventWithUUID:(id)d;
- (id)fetchSignificantEventsWithDateInterval:(id)interval;
- (id)heroFrameURLForSignificantEventWithUUID:(id)d;
- (id)home;
- (id)performCloudPull;
- (id)remove;
- (id)significantEventsForClipWithUUID:(id)d;
- (id)significantEventsWithDateInterval:(id)interval;
- (void)_cleanUpClipsForInitialStartup:(BOOL)startup;
- (void)_cleanUpExpiredClips;
- (void)_cleanUpIncompleteClipsForInitialStartup:(BOOL)startup;
- (void)_fetchAssetContextForMessage:(id)message propertyName:(id)name;
- (void)_handleChangedClipModel:(id)model wasCreated:(BOOL)created mirrorOutputFuture:(id)future;
- (void)_handleChangedFaceClassificationModel:(id)model;
- (void)_handleChangedSignificantEventNotificationModel:(id)model mirrorOutputFuture:(id)future;
- (void)_notifyForChangedSignificantEventModel:(id)model mirrorOutputFuture:(id)future;
- (void)_notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData:(id)data personUUID:(id)d personManagerUUID:(id)iD;
- (void)_notifyTransportsOfUpdatedClips:(id)clips removedClipUUIDs:(id)ds;
- (void)_notifyTransportsOfUpdatedSignificantEvents:(id)events removedSignificantEventUUIDs:(id)ds;
- (void)_removeAllFaceClassificationModels;
- (void)cleanUpClips;
- (void)clientConnectionsTimerDidFire:(id)fire;
- (void)cloudZone:(id)zone didEncounterZoneDisabledError:(id)error;
- (void)configure;
- (void)handleDeleteAllClipsMessage:(id)message;
- (void)handleDeleteClipMessage:(id)message;
- (void)handleFetchClipForSignificantEventMessage:(id)message;
- (void)handleFetchClipMessage:(id)message;
- (void)handleFetchClipsMessage:(id)message;
- (void)handleFetchCountOfClipsMessage:(id)message;
- (void)handleFetchFaceCropDataRepresentationMessage:(id)message;
- (void)handleFetchFaceCropURLMessage:(id)message;
- (void)handleFetchHeroFrameDataRepresentationMessage:(id)message;
- (void)handleFetchHeroFrameURLMessage:(id)message;
- (void)handleFetchIsCloudStorageEnabledMessage:(id)message;
- (void)handleFetchSignificantEventsMessage:(id)message;
- (void)handleFetchVideoSegmentsAssetContextMessage:(id)message;
- (void)handleHandleFaceMisclassificationMessage:(id)message;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification;
- (void)handleImportClipsMessage:(id)message;
- (void)handlePerformCloudPullMessage:(id)message;
- (void)handleRemoteHandleFaceMisclassificationMessage:(id)message;
- (void)handleSubscribeMessage:(id)message;
- (void)handleUnsubscribeMessage:(id)message;
- (void)handleUpdateCloudStorageMessage:(id)message;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification;
- (void)handleUserPrivilegeDidChangeNotification:(id)notification;
- (void)handleUserRemoteAccessDidChangeNotification:(id)notification;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)setHasWriteAccess:(BOOL)access;
- (void)submitLogEvent:(id)event error:(id)error;
- (void)zoneManager:(id)manager didReceiveMessageWithUserInfo:(id)info;
- (void)zoneManagerDidStart:(id)start;
- (void)zoneManagerDidStop:(id)stop;
@end

@implementation HMDCameraClipManager

- (HMDCameraClipManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)submitLogEvent:(id)event error:(id)error
{
  errorCopy = error;
  eventCopy = event;
  v7 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v7 submitLogEvent:eventCopy error:errorCopy];
}

- (void)clientConnectionsTimerDidFire:(id)fire
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _performCloudPull = [(HMDCameraClipManager *)self _performCloudPull];
}

- (void)zoneManager:(id)manager didReceiveMessageWithUserInfo:(id)info
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  infoCopy = info;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [[HMDCameraClipsQuotaServerNotification alloc] initWithDictionaryRepresentation:infoCopy];
  containerIdentifier = [(HMDCameraClipsQuotaServerNotification *)v9 containerIdentifier];
  zoneManager = [(HMDCameraClipManager *)self zoneManager];
  containerIdentifier2 = [zoneManager containerIdentifier];
  v13 = [containerIdentifier isEqualToString:containerIdentifier2];

  if (v13)
  {
    delegate = [(HMDCameraClipManager *)self delegate];
    reason = [(HMDCameraClipsQuotaServerNotification *)v9 reason];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (reason == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received all storage disabled notification", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (objc_opt_respondsToSelector())
      {
        [delegate clipManagerDidDisableCloudStorage:selfCopy];
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v21;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Received unknown notification: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }
}

- (void)zoneManagerDidStop:(id)stop
{
  v13 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Camera clips zone manager stopped", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraClipManager *)selfCopy setLocalZone:0];
  [(HMDCameraClipManager *)selfCopy setCloudZone:0];
  delegate = [(HMDCameraClipManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate clipManagerDidStop:selfCopy];
  }
}

- (void)zoneManagerDidStart:(id)start
{
  v51 = *MEMORY[0x277D85DE8];
  startCopy = start;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Camera clips zone manager started", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [startCopy localZone];
  [(HMDCameraClipManager *)selfCopy setLocalZone:localZone];

  localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
  [localZone2 addObserverForAllModels:selfCopy];

  localZone3 = [(HMDCameraClipManager *)selfCopy localZone];
  [localZone3 startUp];

  [(HMDCameraClipManager *)selfCopy _cleanUpClipsForInitialStartup:1];
  cloudZone = [startCopy cloudZone];
  [(HMDCameraClipManager *)selfCopy setCloudZone:cloudZone];

  cloudZone2 = [(HMDCameraClipManager *)selfCopy cloudZone];
  hasPerformedInitialFetch = [cloudZone2 hasPerformedInitialFetch];

  if ((hasPerformedInitialFetch & 1) == 0)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDCameraClipManager *)selfCopy setSuppressNotificationsBeforeDate:date];

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      suppressNotificationsBeforeDate = [(HMDCameraClipManager *)v18 suppressNotificationsBeforeDate];
      *buf = 138543618;
      v48 = v20;
      v49 = 2112;
      v50 = suppressNotificationsBeforeDate;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Suppressing all clip-related notifications before %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  cloudZone3 = [(HMDCameraClipManager *)selfCopy cloudZone];
  startUp = [cloudZone3 startUp];
  v24 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDCameraClipManager *)selfCopy workQueue];
  v26 = [v24 schedulerWithDispatchQueue:workQueue2];
  v27 = [startUp reschedule:v26];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __44__HMDCameraClipManager_zoneManagerDidStart___block_invoke;
  v46[3] = &unk_2797358F0;
  v46[4] = selfCopy;
  v28 = [v27 addSuccessBlock:v46];

  delegate = [(HMDCameraClipManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate clipManagerDidStart:selfCopy];
  }

  home = [startCopy home];
  if (home)
  {
    v31 = [HMDCameraClipFeedbackManager alloc];
    localZone4 = [(HMDCameraClipManager *)selfCopy localZone];
    cloudZone4 = [(HMDCameraClipManager *)selfCopy cloudZone];
    messageDispatcher = [(HMDCameraClipManager *)selfCopy messageDispatcher];
    cameraProfileUUID = [(HMDCameraClipManager *)selfCopy cameraProfileUUID];
    messageTargetUUID = [(HMDCameraClipManager *)selfCopy messageTargetUUID];
    [(HMDCameraClipManager *)selfCopy workQueue];
    v37 = v45 = startCopy;
    v38 = [(HMDCameraClipFeedbackManager *)v31 initWithLocalZone:localZone4 cloudZone:cloudZone4 home:home messageDispatcher:messageDispatcher cameraProfileUUID:cameraProfileUUID messageTargetUUID:messageTargetUUID workQueue:v37];
    [(HMDCameraClipManager *)selfCopy setFeedbackManager:v38];

    feedbackManager = [(HMDCameraClipManager *)selfCopy feedbackManager];
    v40 = +[HMDDeviceCapabilities deviceCapabilities];
    [feedbackManager configureWithIsCurrentDeviceResidentCapable:{objc_msgSend(v40, "isResidentCapable")}];

    startCopy = v45;
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    v42 = selfCopy;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v44;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot create feedback manager because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
  }
}

void __44__HMDCameraClipManager_zoneManagerDidStart___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Camera clips cloud zone finished starting up", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 clipManagerDidStartUpCloudZone:*(a1 + 32)];
  }
}

- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue;
}

- (BOOL)areShareModificationsEnabledForManager:(id)manager
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return [(HMDCameraClipManager *)self hasWriteAccess];
}

- (BOOL)manager:(id)manager shouldGrantWriteAccessToUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isAdministrator];
  return workQueue;
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy hasCameraClipsAccess];
  return workQueue;
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  deletionCopy = deletion;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDCameraClipManager_localZone_didProcessModelDeletion___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = deletionCopy;
  selfCopy = self;
  v7 = deletionCopy;
  dispatch_sync(workQueue, v8);
}

void __58__HMDCameraClipManager_localZone_didProcessModelDeletion___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
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

  if (!v4)
  {
    v11 = [*(a1 + 32) model];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v18 = [v13 hmbModelID];

        if (v18)
        {
          v19 = [v13 hmbModelID];
          [v19 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v40 = *buf;
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        v43 = 2098;
        v44 = &v40;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Significant event notification deleted with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v14);
      v35 = *(a1 + 40);
      v22 = [MEMORY[0x277CBEB98] set];
      v36 = MEMORY[0x277CBEB98];
      v37 = [v13 hmbModelID];
      v38 = [v36 setWithObject:v37];
      [v35 _notifyTransportsOfUpdatedSignificantEvents:v22 removedSignificantEventUUIDs:v38];
    }

    else
    {
      v20 = [*(a1 + 32) model];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v27 = [v22 hmbModelID];

          if (v27)
          {
            v28 = [v22 hmbModelID];
            [v28 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v39 = *buf;
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          v43 = 2098;
          v44 = &v39;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Significant event face classification deleted with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v23);
        [*(a1 + 40) _handleChangedFaceClassificationModel:v22];
      }

      v13 = 0;
    }

    goto LABEL_33;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    v9 = [v4 hmbModelID];

    if (v9)
    {
      v10 = [v4 hmbModelID];
      [v10 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v41 = *buf;
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 1042;
    *&buf[14] = 16;
    v43 = 2098;
    v44 = &v41;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Clip deleted with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
  v29 = *(a1 + 40);
  v30 = [MEMORY[0x277CBEB98] set];
  v31 = MEMORY[0x277CBEB98];
  v32 = [v4 hmbModelID];
  v33 = [v31 setWithObject:v32];
  [v29 _notifyTransportsOfUpdatedClips:v30 removedClipUUIDs:v33];

  v13 = [*(a1 + 40) delegate];
  if (objc_opt_respondsToSelector())
  {
    v34 = *(a1 + 40);
    v22 = [v4 hmbModelID];
    [v13 clipManager:v34 didDeleteClipWithUUID:v22];
LABEL_33:
  }
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  updateCopy = update;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDCameraClipManager_localZone_didProcessModelUpdate___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = updateCopy;
  selfCopy = self;
  v7 = updateCopy;
  dispatch_sync(workQueue, v8);
}

void __56__HMDCameraClipManager_localZone_didProcessModelUpdate___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
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
      *buf = 0;
      *&buf[8] = 0;
      v9 = [v4 hmbModelID];

      if (v9)
      {
        v10 = [v4 hmbModelID];
        [v10 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v33 = *buf;
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v35 = 2098;
      v36 = &v33;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Clip updated with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    v29 = *(a1 + 40);
    v13 = [*(a1 + 32) mirrorOutputFuture];
    [v29 _handleChangedClipModel:v4 wasCreated:0 mirrorOutputFuture:v13];
  }

  else
  {
    v11 = [*(a1 + 32) model];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v18 = [v13 hmbModelID];

        if (v18)
        {
          v19 = [v13 hmbModelID];
          [v19 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v32 = *buf;
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        v35 = 2098;
        v36 = &v32;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Significant event notification updated with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v14);
      v30 = *(a1 + 40);
      v22 = [*(a1 + 32) mirrorOutputFuture];
      [v30 _handleChangedSignificantEventNotificationModel:v13 mirrorOutputFuture:v22];
    }

    else
    {
      v20 = [*(a1 + 32) model];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v27 = [v22 hmbModelID];

          if (v27)
          {
            v28 = [v22 hmbModelID];
            [v28 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v31 = *buf;
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          v35 = 2098;
          v36 = &v31;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Face classification updated with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v23);
        [*(a1 + 40) _handleChangedFaceClassificationModel:v22];
      }
    }
  }
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  creationCopy = creation;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDCameraClipManager_localZone_didProcessModelCreation___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = creationCopy;
  selfCopy = self;
  v7 = creationCopy;
  dispatch_sync(workQueue, v8);
}

void __58__HMDCameraClipManager_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
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
      *buf = 0;
      *&buf[8] = 0;
      v9 = [v4 hmbModelID];

      if (v9)
      {
        v10 = [v4 hmbModelID];
        [v10 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v33 = *buf;
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v35 = 2098;
      v36 = &v33;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@New clip received with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    v29 = *(a1 + 40);
    v13 = [*(a1 + 32) mirrorOutputFuture];
    [v29 _handleChangedClipModel:v4 wasCreated:1 mirrorOutputFuture:v13];
  }

  else
  {
    v11 = [*(a1 + 32) model];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v18 = [v13 hmbModelID];

        if (v18)
        {
          v19 = [v13 hmbModelID];
          [v19 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v32 = *buf;
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        v35 = 2098;
        v36 = &v32;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@New significant event notification received with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v14);
      v30 = *(a1 + 40);
      v22 = [*(a1 + 32) mirrorOutputFuture];
      [v30 _handleChangedSignificantEventNotificationModel:v13 mirrorOutputFuture:v22];
    }

    else
    {
      v20 = [*(a1 + 32) model];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v27 = [v22 hmbModelID];

          if (v27)
          {
            v28 = [v22 hmbModelID];
            [v28 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v31 = *buf;
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          v35 = 2098;
          v36 = &v31;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@New face classification received with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v23);
      }
    }
  }
}

- (void)cloudZone:(id)zone didEncounterZoneDisabledError:(id)error
{
  v5 = [(HMDCameraClipManager *)self workQueue:zone];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDCameraClipManager_cloudZone_didEncounterZoneDisabledError___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v5, block);
}

void __64__HMDCameraClipManager_cloudZone_didEncounterZoneDisabledError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 clipManagerDidEncounterDisabledCloudStorage:*(a1 + 32)];
  }
}

- (NSUUID)messageTargetUUID
{
  zoneManager = [(HMDCameraClipManager *)self zoneManager];
  messageTargetUUID = [zoneManager messageTargetUUID];

  return messageTargetUUID;
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDCameraClipManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __77__HMDCameraClipManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) zoneManager];
  v3 = [v2 defaultConfiguration];
  v4 = [v3 isZoneOwner];

  if (v4)
  {
    v5 = [*(a1 + 32) home];
    v6 = [v5 personManagerSettings];
    v7 = [v6 isFaceClassificationEnabled];

    if ((v7 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Home person manager face classification is disabled; removing all face classification models", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) _removeAllFaceClassificationModels];
    }
  }
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCameraClipManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __68__HMDCameraClipManager_handleUserRemoteAccessDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDCameraClipManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __74__HMDCameraClipManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUserPrivilegeDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDCameraClipManager_handleUserPrivilegeDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __65__HMDCameraClipManager_handleUserPrivilegeDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUpdateCloudStorageMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  cloudZone = [(HMDCameraClipManager *)selfCopy cloudZone];

  if (cloudZone)
  {
    if ([messageCopy BOOLForKey:*MEMORY[0x277CCF460]])
    {
      _enableCloudStorage = [(HMDCameraClipManager *)selfCopy _enableCloudStorage];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__HMDCameraClipManager_handleUpdateCloudStorageMessage___block_invoke;
      v23[3] = &unk_279733BC0;
      v24 = messageCopy;
      v13 = [_enableCloudStorage addCompletionBlock:v23];

      v14 = v24;
    }

    else
    {
      _disableCloudStorage = [(HMDCameraClipManager *)selfCopy _disableCloudStorage];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __56__HMDCameraClipManager_handleUpdateCloudStorageMessage___block_invoke_2;
      v21[3] = &unk_279733BC0;
      v22 = messageCopy;
      v20 = [_disableCloudStorage addCompletionBlock:v21];

      v14 = v22;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot update cloud storage because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v14];
  }
}

- (void)handleFetchIsCloudStorageEnabledMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v39 = v9;
    v40 = 2114;
    v41 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch is cloud storage enabled message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  cloudZone = [(HMDCameraClipManager *)selfCopy cloudZone];

  if (!cloudZone)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch is cloud storage enabled because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    goto LABEL_12;
  }

  zoneManager = [(HMDCameraClipManager *)selfCopy zoneManager];
  defaultConfiguration = [zoneManager defaultConfiguration];
  isZoneOwner = [defaultConfiguration isZoneOwner];

  if ((isZoneOwner & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@User is not the zone owner; cannot fetch is cloud storage enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
LABEL_12:
    v33 = v28;
    [messageCopy respondWithError:v28];

    goto LABEL_13;
  }

  quotaManager = [(HMDCameraClipManager *)selfCopy quotaManager];
  fetchNamesForZonesWithEnabledCloudStorage = [quotaManager fetchNamesForZonesWithEnabledCloudStorage];
  v17 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDCameraClipManager *)selfCopy workQueue];
  v19 = [v17 schedulerWithDispatchQueue:workQueue2];
  v20 = [fetchNamesForZonesWithEnabledCloudStorage reschedule:v19];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke;
  v36[3] = &unk_27972EB68;
  v36[4] = selfCopy;
  v21 = messageCopy;
  v37 = v21;
  v22 = [v20 addSuccessBlock:v36];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke_222;
  v34[3] = &unk_2797358C8;
  v34[4] = selfCopy;
  v35 = v21;
  v23 = [v22 addFailureBlock:v34];

LABEL_13:
}

void __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) zoneManager];
  v5 = [v4 zoneName];
  v6 = [v3 containsObject:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFEnabledStatusToString();
    *buf = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched is cloud storage enabled: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 40);
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{v6, *MEMORY[0x277CCF460]}];
  v16 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v12 respondWithPayload:v14];
}

void __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke_222(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch is cloud storage enabled: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];
}

- (void)handleImportClipsMessage:(id)message
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v43 = v9;
    v44 = 2114;
    v45 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling import clips message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy dataForKey:*MEMORY[0x277CCF420]];
    if (v12)
    {
      v13 = MEMORY[0x277CCAAC8];
      v14 = MEMORY[0x277CBEB98];
      v41[0] = objc_opt_class();
      v41[1] = objc_opt_class();
      v41[2] = objc_opt_class();
      v41[3] = objc_opt_class();
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
      v16 = [v14 setWithArray:v15];
      v40 = 0;
      v17 = [v13 unarchivedObjectOfClasses:v16 fromData:v12 error:&v40];
      v18 = v40;

      if (v17)
      {
        v19 = [HMDCameraClipImporter alloc];
        localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
        cameraProfileUUID = [(HMDCameraClipManager *)selfCopy cameraProfileUUID];
        v22 = [(HMDCameraClipImporter *)v19 initWithLocalZone:localZone2 cameraProfileUUID:cameraProfileUUID];

        v23 = [(HMDCameraClipImporter *)v22 importClipsWithImportData:v17];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __49__HMDCameraClipManager_handleImportClipsMessage___block_invoke;
        v38[3] = &unk_279733BC0;
        v39 = messageCopy;
        v24 = [v23 addCompletionBlock:v38];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v37;
          v44 = 2112;
          v45 = v18;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera clips import dictionary from clip data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        [messageCopy respondWithError:v18];
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
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v43 = v32;
        v44 = 2112;
        v45 = messagePayload;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find serialized import data in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v18];
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot import clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

- (void)handleRemoteHandleFaceMisclassificationMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remote handle face misclassification message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy dataForKey:@"HMDCCM.mk.fmfcd"];
    v13 = [messageCopy uuidForKey:@"HMDCCM.mk.fmpu"];
    v14 = [messageCopy uuidForKey:@"HMDCCM.mk.fmpmu"];
    v15 = v14;
    if (v12 && v14 && v13)
    {
      faceClassificationResolver = [(HMDCameraClipManager *)selfCopy faceClassificationResolver];
      v17 = [faceClassificationResolver personManagerWithUUID:v15];

      if (v17)
      {
        [v17 handleFaceMisclassificationForFaceCropData:v12 personUUID:v13];
        [messageCopy respondWithSuccess];
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [v15 getUUIDBytes:buf];
          v32 = *buf;
          *buf = 138543874;
          *&buf[4] = v30;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v32;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not find person manager with UUID %{public,uuid_t}.16P to handle misclassified person", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v27);
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v31];

        v17 = 0;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = messagePayload;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not find all face misclassification information in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v17];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle face misclassification because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

- (void)handleHandleFaceMisclassificationMessage:(id)message
{
  v61[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v56 = v9;
    v57 = 2114;
    v58 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling handle face misclassification message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = *MEMORY[0x277CCF498];
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v14 = [messageCopy unarchivedObjectForKey:v12 ofClasses:v13];

    firstObject = [v14 firstObject];
    v16 = firstObject;
    if (firstObject)
    {
      faceClassification = [firstObject faceClassification];
      v18 = faceClassification;
      if (faceClassification)
      {
        person = [faceClassification person];
        if (person)
        {
          home = [(HMDCameraClipManager *)selfCopy home];
          personManager = [home personManager];
          uUID = [personManager UUID];

          if (uUID)
          {
            uUID2 = [person UUID];
            personManagerUUID = [v18 personManagerUUID];
            v24 = [(HMDCameraClipManager *)selfCopy _handleFaceMisclassificationForSignificantEvent:v16 personUUID:uUID2 faceClassificationPersonManagerUUID:personManagerUUID homePersonManagerUUID:uUID];
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __65__HMDCameraClipManager_handleHandleFaceMisclassificationMessage___block_invoke;
            v53[3] = &unk_2797358F0;
            v25 = messageCopy;
            v54 = v25;
            v26 = [v24 addSuccessBlock:v53];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __65__HMDCameraClipManager_handleHandleFaceMisclassificationMessage___block_invoke_2;
            v51[3] = &unk_2797359D8;
            v52 = v25;
            v27 = [v26 addFailureBlock:v51];

            v28 = v54;
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = selfCopy;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543362;
              v56 = v49;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle misclassification because the home person manager can't be found", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v46);
            v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [messageCopy respondWithError:v28];
          }
        }

        else
        {
          v42 = objc_autoreleasePoolPush();
          v43 = selfCopy;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 138543618;
            v56 = v45;
            v57 = 2112;
            v58 = v18;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle misclassification for face classification without a person: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v42);
          uUID = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [messageCopy respondWithError:uUID];
        }
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v41;
          v57 = 2112;
          v58 = v16;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Could not find face classification on significant event: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        person = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:person];
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543874;
        v56 = v36;
        v57 = 2112;
        v58 = v14;
        v59 = 2112;
        v60 = messagePayload;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event in decoded significant events %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v18];
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
      v56 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle face misclassification because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v14];
  }
}

- (void)handleDeleteAllClipsMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling delete all clips message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v13 = MEMORY[0x277D17108];
    name = [messageCopy name];
    v15 = [v13 optionsWithLabel:name];
    v16 = [localZone2 removeAllModelsOfTypes:v12 options:v15];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__HMDCameraClipManager_handleDeleteAllClipsMessage___block_invoke;
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

- (void)handleDeleteClipMessage:(id)message
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v32 = v9;
    v33 = 2114;
    v34 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling delete clip message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
      v14 = MEMORY[0x277D17108];
      name = [messageCopy name];
      v16 = [v14 optionsWithLabel:name];
      v17 = [(HMDCameraClipManager *)selfCopy _removeClipsWithUUIDs:v13 options:v16];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __48__HMDCameraClipManager_handleDeleteClipMessage___block_invoke;
      v29[3] = &unk_279733BC0;
      v30 = messageCopy;
      v18 = [v17 addCompletionBlock:v29];

      v19 = v30;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v32 = v27;
        v33 = 2112;
        v34 = messagePayload;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v19];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot delete clip because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

- (void)handleFetchSignificantEventsMessage:(id)message
{
  v60 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v57 = v9;
    v58 = 2114;
    v59 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch significant event message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CCF490]];
    v13 = v12;
    if (v12)
    {
      allObjects = [v12 allObjects];
      v15 = [(HMDCameraClipManager *)selfCopy _significantEventsWithUUIDs:allObjects];

      v54 = *MEMORY[0x277CCF498];
      v16 = encodeRootObjectForIncomingXPCMessage(v15, 0);
      v55 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [messageCopy respondWithPayload:v17];
    }

    else
    {
      fetchServerFactory = [(HMDCameraClipManager *)selfCopy fetchServerFactory];
      v15 = (fetchServerFactory)[2](fetchServerFactory, messageCopy);

      if (v15)
      {
        v16 = [messageCopy dateForKey:*MEMORY[0x277CCF448]];
        v23 = [messageCopy dateForKey:*MEMORY[0x277CCF450]];
        v24 = [messageCopy numberForKey:*MEMORY[0x277CCF468]];
        v25 = [messageCopy numberForKey:*MEMORY[0x277CCF488]];
        v26 = v25;
        if (v16 && v23 && v24 && v25)
        {
          v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v23];
          v47 = v26;
          bOOLValue = [v26 BOOLValue];
          [v15 setTotalFetchedObjectsLimit:{objc_msgSend(v24, "unsignedIntegerValue")}];
          v53 = 0;
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __60__HMDCameraClipManager_handleFetchSignificantEventsMessage___block_invoke;
          v51[3] = &unk_27972E840;
          v29 = v15;
          v52 = v29;
          LOBYTE(bOOLValue) = [(HMDCameraClipManager *)selfCopy _fetchSignificantEventsWithDateInterval:v27 isAscending:bOOLValue error:&v53 handler:v51];
          v45 = v53;
          if (bOOLValue)
          {
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __60__HMDCameraClipManager_handleFetchSignificantEventsMessage___block_invoke_216;
            v49[3] = &unk_279735D00;
            v50 = messageCopy;
            [v29 sendCurrentlyBatchedFetchedObjectsWithCompletion:v49];

            v30 = v45;
          }

          else
          {
            v40 = objc_autoreleasePoolPush();
            v41 = selfCopy;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v43 = v44 = v40;
              *buf = 138543618;
              v57 = v43;
              v58 = 2112;
              v59 = v45;
              _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant event models from local zone: %@", buf, 0x16u);

              v40 = v44;
            }

            objc_autoreleasePoolPop(v40);
            v30 = v45;
            [messageCopy respondWithError:v45];
          }

          v26 = v47;
        }

        else
        {
          v35 = objc_autoreleasePoolPush();
          v36 = selfCopy;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v38 = v48 = v26;
            [messageCopy messagePayload];
            v39 = v46 = v23;
            *buf = 138543618;
            v57 = v38;
            v58 = 2112;
            v59 = v39;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);

            v23 = v46;
            v26 = v48;
          }

          objc_autoreleasePoolPop(v35);
          v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          [messageCopy respondWithError:v27];
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v34;
          v58 = 2112;
          v59 = messageCopy;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [messageCopy respondWithError:v16];
        v15 = 0;
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch significant events because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v13];
  }
}

void *__60__HMDCameraClipManager_handleFetchSignificantEventsMessage___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchFaceCropURLMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch face crop for message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CCF490]];
    anyObject = [v12 anyObject];
    if (anyObject)
    {
      localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
      v39 = 0;
      v15 = [localZone2 fetchModelWithModelID:anyObject ofType:objc_opt_class() error:&v39];
      v16 = v39;

      if (v15)
      {
        v17 = [(HMDCameraClipManager *)selfCopy _fetchFaceCropURLForSignificantEventModel:v15];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __54__HMDCameraClipManager_handleFetchFaceCropURLMessage___block_invoke;
        v37[3] = &unk_27972EB18;
        v18 = messageCopy;
        v38 = v18;
        v19 = [v17 addSuccessBlock:v37];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __54__HMDCameraClipManager_handleFetchFaceCropURLMessage___block_invoke_2;
        v35[3] = &unk_2797359D8;
        v36 = v18;
        v20 = [v19 addFailureBlock:v35];

        v21 = v38;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [anyObject getUUIDBytes:buf];
          v40 = *buf;
          *buf = 138544130;
          *&buf[4] = v34;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v40;
          *&buf[28] = 2112;
          *&buf[30] = v16;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v31);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v21];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543874;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = messagePayload;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event UUID in decoded UUIDs %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v16];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch face crop url because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

void __54__HMDCameraClipManager_handleFetchFaceCropURLMessage___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5 = *MEMORY[0x277CCF458];
  v3 = [a2 absoluteString];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 respondWithPayload:v4];
}

- (void)handleFetchFaceCropDataRepresentationMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch face crop data representation with message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CCF490]];
    anyObject = [v12 anyObject];
    if (anyObject)
    {
      localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
      v41 = 0;
      v15 = [localZone2 fetchModelWithModelID:anyObject ofType:objc_opt_class() error:&v41];
      v16 = v41;

      if (v15)
      {
        v17 = [(HMDCameraClipManager *)selfCopy _fetchFaceCropURLForSignificantEventModel:v15];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke;
        v40[3] = &unk_27972EAC8;
        v40[4] = selfCopy;
        v18 = [v17 flatMap:v40];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke_215;
        v38[3] = &unk_27972EAF0;
        v19 = messageCopy;
        v39 = v19;
        v20 = [v18 addSuccessBlock:v38];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke_2;
        v36[3] = &unk_2797359D8;
        v37 = v19;
        v21 = [v20 addFailureBlock:v36];
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [anyObject getUUIDBytes:buf];
          v42 = *buf;
          *buf = 138544130;
          *&buf[4] = v34;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v42;
          *&buf[28] = 2112;
          *&buf[30] = v16;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v35];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543874;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = messagePayload;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event UUID in decoded UUIDs %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v16];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch face crop data representation because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

id __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) fileManager];
  v15 = 0;
  v5 = [v4 dataWithContentsOfURL:v3 options:0 error:&v15];
  v6 = v15;

  if (v5)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data from URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v7 = [v12 futureWithError:v13];
  }

  return v7;
}

void __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke_215(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *MEMORY[0x277CCF440];
  v7[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 respondWithPayload:v5];
}

- (void)handleFetchHeroFrameURLMessage:(id)message
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch hero frame URL message with payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
      v37 = 0;
      v14 = [localZone2 fetchModelWithModelID:v12 ofType:objc_opt_class() error:&v37];
      v15 = v37;

      if (v14)
      {
        v16 = [(HMDCameraClipManager *)selfCopy _fetchCanonicalHeroFrameURLForClipModel:v14];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __55__HMDCameraClipManager_handleFetchHeroFrameURLMessage___block_invoke;
        v35[3] = &unk_27972EB18;
        v17 = messageCopy;
        v36 = v17;
        v18 = [v16 addSuccessBlock:v35];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __55__HMDCameraClipManager_handleFetchHeroFrameURLMessage___block_invoke_2;
        v33[3] = &unk_2797359D8;
        v34 = v17;
        v19 = [v18 addFailureBlock:v33];

        v20 = v36;
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [v12 getUUIDBytes:buf];
          v38 = *buf;
          *buf = 138543874;
          *&buf[4] = v32;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v38;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed requesting to fetch hero frame url because no clip could be found for UUID %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v29);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v20];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hero frame url because clip uuid cannot be found in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch hero frame url because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

void __55__HMDCameraClipManager_handleFetchHeroFrameURLMessage___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5 = *MEMORY[0x277CCF458];
  v3 = [a2 absoluteString];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 respondWithPayload:v4];
}

- (void)handleFetchHeroFrameDataRepresentationMessage:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v42 = v9;
    v43 = 2114;
    v44 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch hero frame data representation with message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
      v40 = 0;
      v14 = [localZone2 fetchModelWithModelID:v12 ofType:objc_opt_class() error:&v40];
      v15 = v40;

      if (v14)
      {
        v16 = [(HMDCameraClipManager *)selfCopy _fetchCanonicalHeroFrameURLForClipModel:v14];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke;
        v39[3] = &unk_27972EAC8;
        v39[4] = selfCopy;
        v17 = [v16 flatMap:v39];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke_212;
        v37[3] = &unk_27972EAF0;
        v18 = messageCopy;
        v38 = v18;
        v19 = [v17 addSuccessBlock:v37];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke_2;
        v35[3] = &unk_2797359D8;
        v36 = v18;
        v20 = [v19 addFailureBlock:v35];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543874;
          v42 = v33;
          v43 = 2112;
          v44 = v12;
          v45 = 2112;
          v46 = v15;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v34];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v42 = v28;
        v43 = 2112;
        v44 = messagePayload;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot find clip UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch hero frame data representation because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

id __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) fileManager];
  v15 = 0;
  v5 = [v4 dataWithContentsOfURL:v3 options:0 error:&v15];
  v6 = v15;

  if (v5)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data from URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v7 = [v12 futureWithError:v13];
  }

  return v7;
}

void __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke_212(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *MEMORY[0x277CCF440];
  v7[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 respondWithPayload:v5];
}

- (void)handleFetchVideoSegmentsAssetContextMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch video segments asset context message", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraClipManager *)selfCopy _fetchAssetContextForMessage:messageCopy propertyName:@"videoStreamingAsset"];
  v10 = [HMDCameraClipManagerRequestLogEvent alloc];
  zoneManager = [(HMDCameraClipManager *)selfCopy zoneManager];
  home = [zoneManager home];
  uuid = [home uuid];
  v14 = [(HMDCameraClipManagerRequestLogEvent *)v10 initWithRequestName:@"HMDCameraClipManagerRequestLogEventFetchVideoSegmentsAssetRequestName" homeUUID:uuid];
  [(HMDCameraClipManager *)selfCopy submitLogEvent:v14 error:0];
}

- (void)handleFetchCountOfClipsMessage:(id)message
{
  v53 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v48 = v9;
    v49 = 2114;
    v50 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch count of clips message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy dateForKey:*MEMORY[0x277CCF448]];
    v13 = [messageCopy dateForKey:*MEMORY[0x277CCF450]];
    v14 = [messageCopy numberForKey:*MEMORY[0x277CCF470]];
    v15 = v14;
    if (v12 && v13 && v14)
    {
      integerValue = [v14 integerValue];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v48 = v20;
        v49 = 2112;
        v50 = v12;
        v51 = 2112;
        v52 = v13;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetching count of clips between %@ and %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v45[0] = @"dateAfter";
      v45[1] = @"dateBefore";
      v46[0] = v12;
      v46[1] = v13;
      v45[2] = @"quality";
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      v46[2] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];

      localZone2 = [(HMDCameraClipManager *)v18 localZone];
      v24 = +[HMDCameraClipModel countOfClipsWithQualityBetweenDatesQuery];
      v42 = 0;
      v25 = [localZone2 countModelsUsingQuery:v24 arguments:v22 error:&v42];
      v26 = v42;

      if (v25)
      {
        v43 = *MEMORY[0x277CCF438];
        v44 = v25;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        [messageCopy respondWithPayload:v27];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v18;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = v41 = v37;
          *buf = 138543618;
          v48 = v40;
          v49 = 2112;
          v50 = v26;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch count of clip models from local zone: %@", buf, 0x16u);

          v37 = v41;
        }

        objc_autoreleasePoolPop(v37);
        [messageCopy respondWithError:v26];
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v48 = v35;
        v49 = 2112;
        v50 = messagePayload;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v22];
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch count of clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

- (void)handleFetchClipForSignificantEventMessage:(id)message
{
  v71 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch clip for significant event message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CCF490]];
    anyObject = [v12 anyObject];
    if (!anyObject)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543874;
        *&buf[4] = v33;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = messagePayload;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event UUID in decoded UUIDs %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v16];
      goto LABEL_40;
    }

    localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
    v64 = 0;
    v15 = [localZone2 fetchModelWithModelID:anyObject ofType:objc_opt_class() error:&v64];
    v16 = v64;

    if (!v15)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        [anyObject getUUIDBytes:buf];
        v69 = *buf;
        *buf = 138544130;
        *&buf[4] = v38;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        *&buf[18] = 2098;
        *&buf[20] = &v69;
        *&buf[28] = 2112;
        *&buf[30] = v16;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v35);
      associatedClip = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:associatedClip];
      goto LABEL_39;
    }

    localZone3 = [(HMDCameraClipManager *)selfCopy localZone];
    hmbParentModelID = [v15 hmbParentModelID];
    v63 = v16;
    associatedClip = [localZone3 fetchModelWithModelID:hmbParentModelID ofType:objc_opt_class() error:&v63];
    v20 = v63;

    if (associatedClip)
    {
      v16 = v20;
LABEL_8:
      hmbModelID = [associatedClip hmbModelID];
      v22 = [(HMDCameraClipManager *)selfCopy significantEventsForClipWithUUID:hmbModelID];

      v23 = [associatedClip createClipWithSignificantEvents:v22];
      v65 = *MEMORY[0x277CCF418];
      v24 = encodeRootObjectForIncomingXPCMessage(v23, 0);
      v66 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      [messageCopy respondWithPayload:v25];

LABEL_38:
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      context = v39;
      v42 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      hmbParentModelID2 = [v15 hmbParentModelID];

      if (hmbParentModelID2)
      {
        hmbParentModelID3 = [v15 hmbParentModelID];
        [hmbParentModelID3 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v68 = *buf;
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = &v68;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find clip model with UUID %{public,uuid_t}.16P. Falling back to using the associated clip", buf, 0x1Cu);

      v39 = context;
    }

    objc_autoreleasePoolPop(v39);
    associatedClip = [v15 associatedClip];
    contexta = objc_autoreleasePoolPush();
    v45 = v40;
    v46 = HMFGetOSLogHandle();
    v47 = v46;
    if (associatedClip)
    {
      v59 = v20;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v48;
        *&buf[12] = 2112;
        *&buf[14] = associatedClip;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Fetching clip model using associated clip reference: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(contexta);
      [(HMDCameraClipManager *)v45 localZone];
      v49 = v58 = v45;
      hmbModelID2 = [associatedClip hmbModelID];
      v62 = v59;
      v51 = [v49 fetchModelWithModelID:hmbModelID2 ofType:objc_opt_class() error:&v62];
      v16 = v62;

      if (v51)
      {

        associatedClip = v51;
        goto LABEL_8;
      }

      v53 = objc_autoreleasePoolPush();
      v45 = v58;
      v54 = v58;
      v47 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
LABEL_37:

        objc_autoreleasePoolPop(v53);
        v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v22];
        goto LABEL_38;
      }

      contexta = v53;
      v55 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      hmbModelID3 = [associatedClip hmbModelID];

      if (hmbModelID3)
      {
        hmbModelID4 = [associatedClip hmbModelID];
        [hmbModelID4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v67 = *buf;
      *buf = 138544130;
      *&buf[4] = v55;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = &v67;
      *&buf[28] = 2112;
      *&buf[30] = v16;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    else
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@No associatedClip found for significant event model: %@", buf, 0x16u);
      }

      v16 = v20;
    }

    v53 = contexta;
    goto LABEL_37;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v29;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch clip for significant event because zones are not ready", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v26);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [messageCopy respondWithError:v12];
LABEL_41:
}

- (void)handleFetchClipsMessage:(id)message
{
  v59 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v56 = v9;
    v57 = 2114;
    v58 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch clips message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    fetchServerFactory = [(HMDCameraClipManager *)selfCopy fetchServerFactory];
    v13 = (fetchServerFactory)[2](fetchServerFactory, messageCopy);

    if (v13)
    {
      v14 = [messageCopy dateForKey:*MEMORY[0x277CCF448]];
      v15 = [messageCopy dateForKey:*MEMORY[0x277CCF450]];
      v16 = [messageCopy numberForKey:*MEMORY[0x277CCF468]];
      v17 = [messageCopy numberForKey:*MEMORY[0x277CCF488]];
      v18 = [messageCopy numberForKey:*MEMORY[0x277CCF470]];
      v19 = v18;
      if (v14 && v15 && v16 && v17 && v18)
      {
        v48 = v15;
        v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
        v21 = v16;
        bOOLValue = [v17 BOOLValue];
        integerValue = [v19 integerValue];
        v46 = v21;
        [v13 setTotalFetchedObjectsLimit:{objc_msgSend(v21, "unsignedIntegerValue")}];
        v54 = 0;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __48__HMDCameraClipManager_handleFetchClipsMessage___block_invoke;
        v52[3] = &unk_27972EAA0;
        v24 = v13;
        v53 = v24;
        LOBYTE(bOOLValue) = [(HMDCameraClipManager *)selfCopy _fetchClipsWithDateInterval:v20 quality:integerValue isAscending:bOOLValue error:&v54 handler:v52];
        v25 = v54;
        if (bOOLValue)
        {
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __48__HMDCameraClipManager_handleFetchClipsMessage___block_invoke_207;
          v50[3] = &unk_279735D00;
          v51 = messageCopy;
          [v24 sendCurrentlyBatchedFetchedObjectsWithCompletion:v50];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          v42 = selfCopy;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v44 = v45 = v41;
            *buf = 138543618;
            v56 = v44;
            v57 = 2112;
            v58 = v25;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch clip models from local zone: %@", buf, 0x16u);

            v41 = v45;
          }

          objc_autoreleasePoolPop(v41);
          [messageCopy respondWithError:v25];
        }

        v16 = v46;
        v15 = v48;
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v37 = v49 = v15;
          [messageCopy messagePayload];
          v47 = v17;
          v38 = v19;
          v40 = v39 = v16;
          *buf = 138543618;
          v56 = v37;
          v57 = 2112;
          v58 = v40;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);

          v16 = v39;
          v19 = v38;
          v17 = v47;

          v15 = v49;
        }

        objc_autoreleasePoolPop(v34);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [messageCopy respondWithError:v20];
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
        *buf = 138543618;
        v56 = v33;
        v57 = 2112;
        v58 = messageCopy;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v14];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v13];
  }
}

void *__48__HMDCameraClipManager_handleFetchClipsMessage___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchClipMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v38 = v9;
    v39 = 2114;
    v40 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch clip message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraClipManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
      v34 = 0;
      v14 = [localZone2 fetchModelWithModelID:v12 ofType:objc_opt_class() error:&v34];
      v15 = v34;

      if (v14)
      {
        hmbModelID = [v14 hmbModelID];
        v17 = [(HMDCameraClipManager *)selfCopy significantEventsForClipWithUUID:hmbModelID];

        v18 = [v14 createClipWithSignificantEvents:v17];
        v35 = *MEMORY[0x277CCF418];
        v19 = encodeRootObjectForIncomingXPCMessage(v18, 0);
        v36 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [messageCopy respondWithPayload:v20];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543874;
          v38 = v33;
          v39 = 2112;
          v40 = v12;
          v41 = 2112;
          v42 = v15;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v17];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v38 = v28;
        v39 = 2112;
        v40 = messagePayload;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch clip because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }
}

- (void)handlePerformCloudPullMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
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
  _performCloudPull = [(HMDCameraClipManager *)selfCopy _performCloudPull];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__HMDCameraClipManager_handlePerformCloudPullMessage___block_invoke;
  v17[3] = &unk_2797358F0;
  v11 = messageCopy;
  v18 = v11;
  v12 = [_performCloudPull addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HMDCameraClipManager_handlePerformCloudPullMessage___block_invoke_2;
  v15[3] = &unk_2797359D8;
  v16 = v11;
  v13 = v11;
  v14 = [v12 addFailureBlock:v15];
}

- (void)handleUnsubscribeMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
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
    clientConnectionsTimer = [(HMDCameraClipManager *)selfCopy clientConnectionsTimer];
    [clientConnectionsTimer removeClientConnection:v12];

    [messageCopy respondWithPayload:0];
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
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message", &v27, 0xCu);
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
    clientConnectionsTimer = [(HMDCameraClipManager *)selfCopy clientConnectionsTimer];
    [clientConnectionsTimer addClientConnection:v12];

    cloudZone = [(HMDCameraClipManager *)selfCopy cloudZone];

    if (!cloudZone)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Asked to subscribe to changes when no cloud zone exists; Restarting zone manager", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      zoneManager = [(HMDCameraClipManager *)v16 zoneManager];
      [zoneManager start];
    }

    [messageCopy respondWithPayload:0];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = objc_opt_class();
      transport2 = [messageCopy transport];
      v27 = 138543874;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2112;
      v32 = transport2;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v26];
  }
}

- (id)_disableCloudStorage
{
  v27 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Disabling cloud storage", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  zoneManager = [(HMDCameraClipManager *)selfCopy zoneManager];
  defaultConfiguration = [zoneManager defaultConfiguration];
  isZoneOwner = [defaultConfiguration isZoneOwner];

  if (isZoneOwner)
  {
    quotaManager = [(HMDCameraClipManager *)selfCopy quotaManager];
    zoneManager2 = [(HMDCameraClipManager *)selfCopy zoneManager];
    zoneName = [zoneManager2 zoneName];
    v14 = [quotaManager disableCloudStorageForZoneWithName:zoneName];
    v15 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDCameraClipManager *)selfCopy workQueue];
    v17 = [v15 schedulerWithDispatchQueue:workQueue2];
    v18 = [v14 reschedule:v17];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@User is not the zone owner; cannot disable cloud storage", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = MEMORY[0x277D2C900];
    quotaManager = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v18 = [v23 futureWithError:quotaManager];
  }

  return v18;
}

- (id)_enableCloudStorage
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling cloud storage", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  zoneManager = [(HMDCameraClipManager *)selfCopy zoneManager];
  defaultConfiguration = [zoneManager defaultConfiguration];
  isZoneOwner = [defaultConfiguration isZoneOwner];

  if (isZoneOwner)
  {
    cloudZone = [(HMDCameraClipManager *)selfCopy cloudZone];
    startUp = [cloudZone startUp];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__HMDCameraClipManager__enableCloudStorage__block_invoke;
    v20[3] = &unk_2797306C8;
    v20[4] = selfCopy;
    v13 = [startUp flatMap:v20];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@User is not the zone owner; cannot enable cloud storage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = MEMORY[0x277D2C900];
    cloudZone = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v13 = [v18 futureWithError:cloudZone];
  }

  return v13;
}

id __43__HMDCameraClipManager__enableCloudStorage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) quotaManager];
  v3 = [*(a1 + 32) zoneManager];
  v4 = [v3 zoneName];
  v5 = [v2 enableCloudStorageForZoneWithName:v4];
  v6 = MEMORY[0x277D2C938];
  v7 = [*(a1 + 32) workQueue];
  v8 = [v6 schedulerWithDispatchQueue:v7];
  v9 = [v5 reschedule:v8];

  return v9;
}

- (void)_removeAllFaceClassificationModels
{
  v8[1] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove all face classification models"];
  localZone = [(HMDCameraClipManager *)self localZone];
  v8[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v7 = [localZone removeAllModelsOfTypes:v6 options:v4];
}

- (id)_removeClipsWithUUIDs:(id)ds options:(id)options
{
  optionsCopy = options;
  dsCopy = ds;
  localZone = [(HMDCameraClipManager *)self localZone];
  v9 = [localZone removeModelsAndDescendantModelsWithIDs:dsCopy depth:3 options:optionsCopy];

  v10 = [v9 flatMap:&__block_literal_global_199];

  return v10;
}

- (void)_notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData:(id)data personUUID:(id)d personManagerUUID:(id)iD
{
  v45[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCameraClipManager *)self home];
  primaryResident = [home primaryResident];

  if (primaryResident)
  {
    v14 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDCameraClipManager *)self messageTargetUUID];
    device = [primaryResident device];
    v17 = [(HMDRemoteDeviceMessageDestination *)v14 initWithTarget:messageTargetUUID device:device];

    v38 = dataCopy;
    v45[0] = dataCopy;
    v44[0] = @"HMDCCM.mk.fmfcd";
    v44[1] = @"HMDCCM.mk.fmpu";
    uUIDString = [dCopy UUIDString];
    v45[1] = uUIDString;
    v44[2] = @"HMDCCM.mk.fmpmu";
    uUIDString2 = [iDCopy UUIDString];
    v45[2] = uUIDString2;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

    v21 = [[HMDRemoteMessage alloc] initWithName:@"HMDCCM.m.rhfm" destination:v17 payload:v20 type:0 timeout:1 secure:0.0];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __117__HMDCameraClipManager__notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData_personUUID_personManagerUUID___block_invoke;
    v39[3] = &unk_279734E00;
    v39[4] = self;
    [(HMDRemoteMessage *)v21 setResponseHandler:v39];
    isCurrentDevice = [primaryResident isCurrentDevice];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (isCurrentDevice)
    {
      if (v26)
      {
        v27 = HMFGetLogIdentifier();
        [(HMFObject *)v21 shortDescription];
        v28 = v36 = dCopy;
        *buf = 138543618;
        v41 = v27;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Directly handling face misclassification message because we are the primary resident: %@", buf, 0x16u);

        dCopy = v36;
      }

      objc_autoreleasePoolPop(v23);
      [(HMDCameraClipManager *)selfCopy handleRemoteHandleFaceMisclassificationMessage:v21];
    }

    else
    {
      if (v26)
      {
        v33 = HMFGetLogIdentifier();
        [(HMFObject *)v21 shortDescription];
        v34 = v37 = dCopy;
        *buf = 138543618;
        v41 = v33;
        v42 = 2112;
        v43 = v34;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Sending remote handle face misclassification message to primary resident: %@", buf, 0x16u);

        dCopy = v37;
      }

      objc_autoreleasePoolPop(v23);
      messageDispatcher = [(HMDCameraClipManager *)selfCopy messageDispatcher];
      [messageDispatcher sendMessage:v21];
    }

    dataCopy = v38;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find primary resident to send face misclassification message to", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
  }
}

void __117__HMDCameraClipManager__notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData_personUUID_personManagerUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v12 = "%{public}@Failed to notify primary resident of face misclassification: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, &v16, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v11;
    v12 = "%{public}@Successfully notified primary resident of face misclassification";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

- (id)_updateModelsForMisclassificationForSignificantEvent:(id)event unassociatedFaceCropUUID:(id)d personManagerUUID:(id)iD
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  iDCopy = iD;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDCameraClipManager *)self localZone];
  uniqueIdentifier = [eventCopy uniqueIdentifier];
  v29 = 0;
  v14 = [localZone fetchModelWithModelID:uniqueIdentifier ofType:objc_opt_class() error:&v29];
  v15 = v29;

  if (v14)
  {
    v16 = [(HMDCameraClipManager *)self _fetchFaceCropURLForSignificantEventModel:v14];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke;
    v26[3] = &unk_27972EA58;
    v26[4] = self;
    v27 = v14;
    v28 = dCopy;
    v17 = [v16 flatMap:v26];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      uniqueIdentifier2 = [eventCopy uniqueIdentifier];

      if (uniqueIdentifier2)
      {
        uniqueIdentifier3 = [eventCopy uniqueIdentifier];
        [uniqueIdentifier3 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v30 = *buf;
      *buf = 138544130;
      *&buf[4] = v21;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v32 = 2098;
      v33 = &v30;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v17 = [v24 futureWithError:v16];
  }

  return v17;
}

id __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke(id *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] fileManager];
  v27 = 0;
  v5 = [v4 dataWithContentsOfURL:v3 options:0 error:&v27];
  v6 = v27;

  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = a1[5];
      *buf = 138543618;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing all face classifications for significant event model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove all face classifications from significant event"];
    v14 = [a1[4] localZone];
    v15 = [a1[5] hmbModelID];
    v16 = [v14 removeModelsWithParentModelID:v15 options:v13];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke_188;
    v24[3] = &unk_27972EA30;
    v24[4] = a1[4];
    v25 = a1[6];
    v26 = a1[5];
    v17 = [v16 flatMap:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke_193;
    v22[3] = &unk_2797330A0;
    v23 = v5;
    v18 = [v17 flatMap:v22];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v19;
      v30 = 2112;
      v31 = v3;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not load face crop data at URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v20 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v18 = [v20 futureWithError:v13];
  }

  return v18;
}

id __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke_188(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v21 = 138543618;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating face classification to use unassociated face crop with UUID: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [HMDCameraSignificantEventFaceClassificationModel alloc];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [*(a1 + 48) hmbModelID];
  v12 = [(HMBModel *)v9 initWithModelID:v10 parentModelID:v11];

  v13 = [*(a1 + 32) home];
  v14 = [v13 personManager];
  v15 = [v14 UUID];
  [(HMDCameraSignificantEventFaceClassificationModel *)v12 setPersonManagerUUID:v15];

  [(HMDCameraSignificantEventFaceClassificationModel *)v12 setUnassociatedFaceCropUUID:*(a1 + 40)];
  v16 = [MEMORY[0x277D17108] optionsWithLabel:@"Create face classification with unassociated face crop"];
  v17 = [*(a1 + 32) localZone];
  v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v19 = [v17 createModels:v18 options:v16];

  return v19;
}

- (id)_handleFaceMisclassificationForSignificantEvent:(id)event personUUID:(id)d faceClassificationPersonManagerUUID:(id)iD homePersonManagerUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  eventCopy = event;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v15 = [(HMDCameraClipManager *)self _updateModelsForMisclassificationForSignificantEvent:eventCopy unassociatedFaceCropUUID:uUID personManagerUUID:iDCopy];

  completionHandlerAdapter = [v13 completionHandlerAdapter];
  v17 = [v15 addCompletionBlock:completionHandlerAdapter];

  v18 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDCameraClipManager *)self workQueue];
  v20 = [v18 schedulerWithDispatchQueue:workQueue2];
  v21 = [v13 reschedule:v20];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __141__HMDCameraClipManager__handleFaceMisclassificationForSignificantEvent_personUUID_faceClassificationPersonManagerUUID_homePersonManagerUUID___block_invoke;
  v27[3] = &unk_27972EA08;
  v27[4] = self;
  v28 = dCopy;
  v29 = iDCopy;
  v30 = uUID;
  v22 = uUID;
  v23 = iDCopy;
  v24 = dCopy;
  v25 = [v21 flatMap:v27];

  return v25;
}

id __141__HMDCameraClipManager__handleFaceMisclassificationForSignificantEvent_personUUID_faceClassificationPersonManagerUUID_homePersonManagerUUID___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData:v3 personUUID:*(a1 + 40) personManagerUUID:*(a1 + 48)];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Adding unassociated face crop to home person dataset for misclassified face classification", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) home];
  v9 = [v8 personManager];
  v10 = [v9 addUnassociatedFaceCropWithUUID:*(a1 + 56) data:v3];

  return v10;
}

- (void)_notifyForChangedSignificantEventModel:(id)model mirrorOutputFuture:(id)future
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  futureCopy = future;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (futureCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = futureCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Waiting for mirror output future to complete: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDCameraClipManager *)selfCopy workQueue];
    v15 = [v13 schedulerWithDispatchQueue:workQueue2];
    v16 = [futureCopy reschedule:v15];
    futureWithNoResult = [v16 flatMap:&__block_literal_global_178];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__HMDCameraClipManager__notifyForChangedSignificantEventModel_mirrorOutputFuture___block_invoke_2;
  v20[3] = &unk_27972E9E0;
  v20[4] = self;
  v21 = modelCopy;
  v18 = modelCopy;
  v19 = [futureWithNoResult addCompletionBlock:v20];
}

void __82__HMDCameraClipManager__notifyForChangedSignificantEventModel_mirrorOutputFuture___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _significantEventFromSignificantEventModel:*(a1 + 40)];
  if (!v7)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(a1 + 40);
      v27 = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create significant event from model: %@", &v27, 0x16u);
LABEL_12:
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    goto LABEL_14;
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v10 = [MEMORY[0x277CBEB98] set];
  [v8 _notifyTransportsOfUpdatedSignificantEvents:v9 removedSignificantEventUUIDs:v10];

  v11 = [v7 dateOfOccurrence];
  v12 = [*(a1 + 32) suppressNotificationsBeforeDate];
  v13 = [v11 compare:v12];

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v13 == -1)
  {
    if (v17)
    {
      v23 = HMFGetLogIdentifier();
      v25 = [v7 dateOfOccurrence];
      v26 = [*(a1 + 32) suppressNotificationsBeforeDate];
      v27 = 138543874;
      v28 = v23;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring significant event with date of occurrence %@ because it is before %@", &v27, 0x20u);

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v18;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate about updated significant event: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v20 = [HMDHomePresenceRemote alloc];
    v21 = [*(a1 + 40) homePresenceByPairingIdentity];
    v22 = [(HMDHomePresenceRemote *)v20 initWithPresenceByPairingIdentity:v21];

    [v19 clipManager:*(a1 + 32) didUpdateSignificantEvent:v7 withHomePresence:v22];
  }

LABEL_14:
}

- (void)_handleChangedFaceClassificationModel:(id)model
{
  v24 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDCameraClipManager *)self localZone];
  hmbParentModelID = [modelCopy hmbParentModelID];
  v8 = [localZone fetchModelWithModelID:hmbParentModelID ofType:objc_opt_class() error:0];

  if (v8)
  {
    v9 = [(HMDCameraClipManager *)self _significantEventFromSignificantEventModel:v8];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v11 = [MEMORY[0x277CBEB98] set];
      [(HMDCameraClipManager *)self _notifyTransportsOfUpdatedSignificantEvents:v10 removedSignificantEventUUIDs:v11];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v19;
        v22 = 2112;
        v23 = modelCopy;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Ignoring changed face classification model because it could not be converted into a HMCameraClipSignificantEvent: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = modelCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring changed face classification model because its associated significant event does not exist: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_handleChangedSignificantEventNotificationModel:(id)model mirrorOutputFuture:(id)future
{
  v21 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  futureCopy = future;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  associatedClip = [modelCopy associatedClip];
  v10 = objc_opt_class();
  localZone = [(HMDCameraClipManager *)self localZone];
  v12 = [associatedClip referencedModelOfType:v10 fromLocalZone:localZone error:0];

  if (v12)
  {
    [(HMDCameraClipManager *)self _handleChangedClipModel:v12 wasCreated:0 mirrorOutputFuture:0];
    [(HMDCameraClipManager *)self _notifyForChangedSignificantEventModel:modelCopy mirrorOutputFuture:futureCopy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = modelCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring changed significant event notification model because its associated clip model does not exist: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)_handleChangedClipModel:(id)model wasCreated:(BOOL)created mirrorOutputFuture:(id)future
{
  createdCopy = created;
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  futureCopy = future;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v33 = modelCopy;
  hmbModelID = [modelCopy hmbModelID];
  v12 = [(HMDCameraClipManager *)self _significantEventModelsForClipWithUUID:hmbModelID];

  if (createdCopy)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v22 = v21 = futureCopy;
            *buf = 138543874;
            v41 = v22;
            v42 = 2112;
            v43 = v17;
            v44 = 2112;
            v45 = v33;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Found existing significant event model %@ associated with new clip model %@", buf, 0x20u);

            futureCopy = v21;
          }

          objc_autoreleasePoolPop(v18);
          [(HMDCameraClipManager *)selfCopy _notifyForChangedSignificantEventModel:v17 mirrorOutputFuture:futureCopy];
        }

        v14 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v14);
    }

    v12 = v32;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __78__HMDCameraClipManager__handleChangedClipModel_wasCreated_mirrorOutputFuture___block_invoke;
  v35[3] = &unk_27972E818;
  v35[4] = self;
  v23 = [v12 na_map:v35];
  v24 = [v33 createClipWithSignificantEvents:v23];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEB98] setWithObject:v24];
    v26 = [MEMORY[0x277CBEB98] set];
    [(HMDCameraClipManager *)self _notifyTransportsOfUpdatedClips:v25 removedClipUUIDs:v26];
  }

  else
  {
    v27 = futureCopy;
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v31;
      v42 = 2112;
      v43 = v33;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to create clip from clip model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    futureCopy = v27;
  }
}

- (void)_fetchAssetContextForMessage:(id)message propertyName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  nameCopy = name;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDCameraClipManager *)self localZone];

  if (localZone)
  {
    v10 = [messageCopy uuidForKey:*MEMORY[0x277CCF428]];
    if (v10)
    {
      v11 = v10;
      cloudZone = [(HMDCameraClipManager *)self cloudZone];
      v13 = [cloudZone fetchCompleteModelWithID:v11];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __66__HMDCameraClipManager__fetchAssetContextForMessage_propertyName___block_invoke;
      v26[3] = &unk_27972E998;
      v26[4] = self;
      v14 = v11;
      v27 = v14;
      v28 = messageCopy;
      v29 = nameCopy;
      v15 = [v13 addCompletionBlock:v26];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v31 = v23;
        v32 = 2112;
        v33 = messagePayload;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failing request to fetch asset context because message has no clip UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:v25];

      v14 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = messageCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch asset context for message because zones are not ready: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v14];
  }
}

void __66__HMDCameraClipManager__fetchAssetContextForMessage_propertyName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 hmbPropertyNamed:*(a1 + 56)];
    v8 = [v7 downloadStreamingAsset];

    if (v8)
    {
      v9 = [v8 contentDownloadURL];
      if (v9)
      {
        v10 = [v8 contentDownloadURLExpirationDate];
        if (v10)
        {
          v64 = v6;
          v11 = MEMORY[0x277CD18C8];
          v12 = [v5 streamingAssetVersion];
          v13 = [v11 requiredHTTPHeadersForStreamingAssetVersion:v12];

          v63 = [v5 videoSegments];
          v14 = [objc_alloc(MEMORY[0x277CD18D0]) initWithURL:v9 expirationDate:v10 requiredHTTPHeaders:v13 videoSegments:v63];
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          v65 = v14;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v60 = v13;
            v61 = v15;
            v18 = HMFGetLogIdentifier();
            v19 = *(a1 + 56);
            *buf = 0;
            *&buf[8] = 0;
            v20 = [v5 hmbModelID];

            if (v20)
            {
              v21 = [v5 hmbModelID];
              [v21 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v69 = *buf;
            *buf = 138544386;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v19;
            *&buf[22] = 1042;
            *&buf[24] = 16;
            v71 = 2098;
            v72 = &v69;
            v73 = 2112;
            v14 = v65;
            v74 = v65;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched streaming asset with property name %@ for clip UUID %{public,uuid_t}.16P with context %@", buf, 0x30u);

            v13 = v60;
            v15 = v61;
          }

          objc_autoreleasePoolPop(v15);
          v62 = *(a1 + 48);
          v67[0] = *MEMORY[0x277CCF410];
          v49 = encodeRootObjectForIncomingXPCMessage(v14, 0);
          v68[0] = v49;
          v67[1] = *MEMORY[0x277CCF418];
          v50 = [MEMORY[0x277CBEB98] set];
          v51 = [v5 createClipWithSignificantEvents:v50];
          v52 = encodeRootObjectForIncomingXPCMessage(v51, 0);
          v68[1] = v52;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
          v53 = v9;
          v54 = v10;
          v56 = v55 = v13;
          [v62 respondWithPayload:v56];

          v57 = v55;
          v10 = v54;
          v9 = v53;

          v6 = v64;
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          v42 = *(a1 + 32);
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v66 = v41;
            v44 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            v45 = [v5 hmbModelID];

            if (v45)
            {
              v46 = [v5 hmbModelID];
              [v46 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v75 = *buf;
            *buf = 138544130;
            *&buf[4] = v44;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            *&buf[22] = 1042;
            *&buf[24] = 16;
            v71 = 2098;
            v72 = &v75;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Could not find content download URL expiration date on streaming asset %@ for clip with UUID: %{public,uuid_t}.16P", buf, 0x26u);

            v41 = v66;
          }

          objc_autoreleasePoolPop(v41);
          v59 = *(a1 + 48);
          v57 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          [v59 respondWithError:v57];
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = *(a1 + 32);
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v39 = [v5 hmbModelID];

          if (v39)
          {
            v40 = [v5 hmbModelID];
            [v40 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v76 = *buf;
          *buf = 138544130;
          *&buf[4] = v38;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          *&buf[22] = 1042;
          *&buf[24] = 16;
          v71 = 2098;
          v72 = &v76;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find content download URL on streaming asset %@ for clip with UUID: %{public,uuid_t}.16P", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v35);
        v58 = *(a1 + 48);
        v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        [v58 respondWithError:v10];
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v6;
        v31 = HMFGetLogIdentifier();
        v32 = *(a1 + 56);
        *buf = 0;
        *&buf[8] = 0;
        v33 = [v5 hmbModelID];

        if (v33)
        {
          v34 = [v5 hmbModelID];
          [v34 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v77 = *buf;
        *buf = 138544130;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        *&buf[22] = 1042;
        *&buf[24] = 16;
        v71 = 2098;
        v72 = &v77;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not find streaming asset on property named %@ for clip with UUID: %{public,uuid_t}.16P", buf, 0x26u);

        v6 = v30;
      }

      objc_autoreleasePoolPop(v27);
      v48 = *(a1 + 48);
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [v48 respondWithError:v9];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v26 = *(a1 + 40);
      if (v26)
      {
        [v26 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v78 = *buf;
      *buf = 138544130;
      *&buf[4] = v25;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = &v78;
      v71 = 2112;
      v72 = v6;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch complete model for clip UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v22);
    v47 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v47 respondWithError:v8];
  }
}

- (void)_notifyTransportsOfUpdatedSignificantEvents:(id)events removedSignificantEventUUIDs:(id)ds
{
  v53 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dsCopy = ds;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnectionsTimer = [(HMDCameraClipManager *)self clientConnectionsTimer];
  clientConnections = [clientConnectionsTimer clientConnections];
  v11 = [clientConnections count];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      clientConnectionsTimer2 = [(HMDCameraClipManager *)selfCopy clientConnectionsTimer];
      clientConnections2 = [clientConnectionsTimer2 clientConnections];
      *buf = 138544130;
      v46 = v16;
      v47 = 2048;
      v48 = [clientConnections2 count];
      v49 = 2048;
      v50 = [eventsCopy count];
      v51 = 2048;
      v52 = [dsCopy count];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribed transports of %lu updated significant events, %lu removed significant events", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v43[0] = *MEMORY[0x277CCF4A8];
    v36 = eventsCopy;
    v19 = encodeRootObjectForIncomingXPCMessage(eventsCopy, 0);
    v43[1] = *MEMORY[0x277CCF480];
    v44[0] = v19;
    v35 = dsCopy;
    v44[1] = dsCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    clientConnectionsTimer3 = [(HMDCameraClipManager *)selfCopy clientConnectionsTimer];
    clientConnections3 = [clientConnectionsTimer3 clientConnections];

    obj = clientConnections3;
    v23 = [clientConnections3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      v26 = *MEMORY[0x277CCF3A0];
      do
      {
        v27 = 0;
        do
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v38 + 1) + 8 * v27);
          v29 = [MEMORY[0x277D0F848] entitledMessageWithName:v26 messagePayload:v20];
          [v29 setTransport:v28];
          v30 = objc_alloc(MEMORY[0x277D0F820]);
          messageTargetUUID = [(HMDCameraClipManager *)selfCopy messageTargetUUID];
          v32 = [v30 initWithTarget:messageTargetUUID];
          [v29 setDestination:v32];

          [v29 setRequiresCameraClipsEntitlement];
          messageDispatcher = [(HMDCameraClipManager *)selfCopy messageDispatcher];
          [messageDispatcher sendMessage:v29 completionHandler:0];

          ++v27;
        }

        while (v24 != v27);
        v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v24);
    }

    dsCopy = v35;
    eventsCopy = v36;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v46 = v34;
      v47 = 2048;
      v48 = [eventsCopy count];
      v49 = 2048;
      v50 = [dsCopy count];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify of %lu updated significant events, %lu removed significant events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_notifyTransportsOfUpdatedClips:(id)clips removedClipUUIDs:(id)ds
{
  v53 = *MEMORY[0x277D85DE8];
  clipsCopy = clips;
  dsCopy = ds;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnectionsTimer = [(HMDCameraClipManager *)self clientConnectionsTimer];
  clientConnections = [clientConnectionsTimer clientConnections];
  v11 = [clientConnections count];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      clientConnectionsTimer2 = [(HMDCameraClipManager *)selfCopy clientConnectionsTimer];
      clientConnections2 = [clientConnectionsTimer2 clientConnections];
      *buf = 138544130;
      v46 = v16;
      v47 = 2048;
      v48 = [clientConnections2 count];
      v49 = 2048;
      v50 = [clipsCopy count];
      v51 = 2048;
      v52 = [dsCopy count];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribed transports of %lu updated clips, %lu removed clips", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v43[0] = *MEMORY[0x277CCF4A0];
    v36 = clipsCopy;
    v19 = encodeRootObjectForIncomingXPCMessage(clipsCopy, 0);
    v43[1] = *MEMORY[0x277CCF478];
    v44[0] = v19;
    v35 = dsCopy;
    v44[1] = dsCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    clientConnectionsTimer3 = [(HMDCameraClipManager *)selfCopy clientConnectionsTimer];
    clientConnections3 = [clientConnectionsTimer3 clientConnections];

    obj = clientConnections3;
    v23 = [clientConnections3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      v26 = *MEMORY[0x277CCF398];
      do
      {
        v27 = 0;
        do
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v38 + 1) + 8 * v27);
          v29 = [MEMORY[0x277D0F848] entitledMessageWithName:v26 messagePayload:v20];
          [v29 setTransport:v28];
          v30 = objc_alloc(MEMORY[0x277D0F820]);
          messageTargetUUID = [(HMDCameraClipManager *)selfCopy messageTargetUUID];
          v32 = [v30 initWithTarget:messageTargetUUID];
          [v29 setDestination:v32];

          [v29 setRequiresCameraClipsEntitlement];
          messageDispatcher = [(HMDCameraClipManager *)selfCopy messageDispatcher];
          [messageDispatcher sendMessage:v29 completionHandler:0];

          ++v27;
        }

        while (v24 != v27);
        v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v24);
    }

    dsCopy = v35;
    clipsCopy = v36;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v46 = v34;
      v47 = 2048;
      v48 = [clipsCopy count];
      v49 = 2048;
      v50 = [dsCopy count];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify of %lu updated clips, %lu removed clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_cleanUpExpiredClips
{
  v27[1] = *MEMORY[0x277D85DE8];
  cleanupQueue = [(HMDCameraClipManager *)self cleanupQueue];
  dispatch_assert_queue_V2(cleanupQueue);

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCF518]];
  v26 = @"dateBefore";
  v27[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{-[HMDCameraClipManager fetchBatchLimit](self, "fetchBatchLimit")}];
  v7 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove expired clips"];
  [v7 setShouldEnqueueMirrorOutput:0];
  v8 = +[HMDCameraClipModel clipsBeforeDateQuery];
  localZone = [(HMDCameraClipManager *)self localZone];
  v10 = [localZone queryModelsUsingQuery:v8 arguments:v5];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__HMDCameraClipManager__cleanUpExpiredClips__block_invoke;
  v19[3] = &unk_27972E970;
  v19[4] = self;
  v11 = v6;
  v20 = v11;
  v12 = v7;
  v21 = v12;
  [v10 enumerateObjectsUsingBlock:v19];
  if ([v11 count])
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v11 count];
      *buf = 138543618;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Removing %lu expired clips", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [(HMDCameraClipManager *)selfCopy _removeClipsWithUUIDs:v11 options:v12];
  }
}

void __44__HMDCameraClipManager__cleanUpExpiredClips__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 debugDescription];
    v18 = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Removing expired clip: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 40);
  v10 = [v3 hmbModelID];
  [v9 addObject:v10];

  v11 = [*(a1 + 40) count];
  if (v11 >= [*(a1 + 32) fetchBatchLimit])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) count];
      v18 = 138543618;
      v19 = v15;
      v20 = 2048;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Removing %lu expired clips", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [*(a1 + 32) _removeClipsWithUUIDs:*(a1 + 40) options:*(a1 + 48)];
    [*(a1 + 40) removeAllObjects];
  }
}

- (void)_cleanUpIncompleteClipsForInitialStartup:(BOOL)startup
{
  v39 = *MEMORY[0x277D85DE8];
  cleanupQueue = [(HMDCameraClipManager *)self cleanupQueue];
  dispatch_assert_queue_V2(cleanupQueue);

  localZone = [(HMDCameraClipManager *)self localZone];
  v7 = +[HMDCameraClipModel incompleteClipsQuery];
  v8 = [localZone queryModelsUsingQuery:v7];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HMDCameraClipManager__cleanUpIncompleteClipsForInitialStartup___block_invoke;
  aBlock[3] = &unk_27972E948;
  aBlock[4] = self;
  v12 = dictionary;
  v31 = v12;
  startupCopy = startup;
  v13 = v10;
  v32 = v13;
  v14 = v11;
  v33 = v14;
  v15 = _Block_copy(aBlock);
  [v8 enumerateObjectsUsingBlock:v15];
  v16 = 0x277D17000;
  if ([v13 count])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v20;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Completing incomplete clips: %@", buf, 0x16u);

      v16 = 0x277D17000uLL;
    }

    objc_autoreleasePoolPop(v17);
    localZone2 = [(HMDCameraClipManager *)selfCopy localZone];
    v22 = [*(v16 + 264) optionsWithLabel:@"Complete Incomplete Clips"];
    v23 = [localZone2 updateModels:v13 options:v22];
  }

  if ([v14 count])
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Removing incomplete 0-duration clip UUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [*(v16 + 264) optionsWithLabel:@"Remove 0-duration Incomplete Clips"];
    v29 = [(HMDCameraClipManager *)selfCopy2 _removeClipsWithUUIDs:v14 options:v28];
  }
}

void __65__HMDCameraClipManager__cleanUpIncompleteClipsForInitialStartup___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 debugDescription];
    v47 = 138543618;
    v48 = v7;
    v49 = 2112;
    v50 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Cleaning up incomplete clip: %@", &v47, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 40);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "quality")}];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v11 unsignedIntegerValue];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + 1];
  v14 = *(a1 + 40);
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "quality")}];
  [v14 setObject:v13 forKeyedSubscript:v15];

  if (!v12)
  {
    v24 = [v3 recordedLocally];
    if (([v24 BOOLValue] & 1) == 0)
    {

      goto LABEL_19;
    }

    v25 = *(a1 + 64);

    if (v25 != 1)
    {
      goto LABEL_19;
    }
  }

  v16 = objc_msgSend_duration(v3);
  [v16 doubleValue];
  v18 = v17;

  if (v18 <= 0.0)
  {
    v26 = *(a1 + 56);
    v22 = [v3 hmbModelID];
    v23 = v26;
  }

  else
  {
    v19 = [HMDCameraClipModel alloc];
    v20 = [v3 hmbModelID];
    v21 = [v3 hmbParentModelID];
    v22 = [(HMBModel *)v19 initWithModelID:v20 parentModelID:v21];

    [(HMDCameraClipModel *)v22 setIsComplete:MEMORY[0x277CBEC38]];
    v23 = *(a1 + 48);
  }

  [v23 addObject:v22];

  v27 = [*(a1 + 48) count];
  if (v27 >= [*(a1 + 32) fetchBatchLimit])
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 48);
      v47 = 138543618;
      v48 = v31;
      v49 = 2112;
      v50 = v32;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Completing batch of incomplete clips: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v33 = [*(a1 + 32) localZone];
    v34 = *(a1 + 48);
    v35 = [MEMORY[0x277D17108] optionsWithLabel:@"Complete Incomplete Clips"];
    v36 = [v33 updateModels:v34 options:v35];

    [*(a1 + 48) removeAllObjects];
  }

  v37 = [*(a1 + 56) count];
  if (v37 >= [*(a1 + 32) fetchBatchLimit])
  {
    v38 = objc_autoreleasePoolPush();
    v39 = *(a1 + 32);
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      v42 = *(a1 + 56);
      v47 = 138543618;
      v48 = v41;
      v49 = 2112;
      v50 = v42;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Removing batch of incomplete 0-duration clip UUIDs: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v43 = *(a1 + 32);
    v44 = *(a1 + 56);
    v45 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove 0-duration Incomplete Clips"];
    v46 = [v43 _removeClipsWithUUIDs:v44 options:v45];

    [*(a1 + 56) removeAllObjects];
  }

LABEL_19:
}

- (void)_cleanUpClipsForInitialStartup:(BOOL)startup
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cleanupQueue = [(HMDCameraClipManager *)self cleanupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDCameraClipManager__cleanUpClipsForInitialStartup___block_invoke;
  v7[3] = &unk_279735D28;
  v7[4] = self;
  startupCopy = startup;
  dispatch_async(cleanupQueue, v7);
}

uint64_t __55__HMDCameraClipManager__cleanUpClipsForInitialStartup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpIncompleteClipsForInitialStartup:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _cleanUpExpiredClips];
}

- (id)_performCloudPull
{
  v22 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cloudZone = [(HMDCameraClipManager *)self cloudZone];

  if (cloudZone)
  {
    v5 = [MEMORY[0x277D17108] optionsWithLabel:@"Explicit fetch"];
    cloudZone2 = [(HMDCameraClipManager *)self cloudZone];
    v7 = [cloudZone2 performCloudPullWithOptions:v5];
    v8 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDCameraClipManager *)self workQueue];
    v10 = [v8 schedulerWithDispatchQueue:workQueue2];
    v11 = [v7 reschedule:v10];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__HMDCameraClipManager__performCloudPull__block_invoke;
    v19[3] = &unk_2797359D8;
    v19[4] = self;
    v12 = [v11 addFailureBlock:v19];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform cloud pull because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = MEMORY[0x277D2C900];
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v12 = [v17 futureWithError:v5];
  }

  return v12;
}

void __41__HMDCameraClipManager__performCloudPull__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform cloud pull due to cloud zone fetch timer firing: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_fetchFaceCropURLForSignificantEventModel:(id)model
{
  v28 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  faceCropAsset = [modelCopy faceCropAsset];
  fileURL = [faceCropAsset fileURL];

  if (fileURL && (-[HMDCameraClipManager fileManager](self, "fileManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 fileExistsAtURL:fileURL], v7, v8))
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = fileURL;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Using existing cached face crop URL: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277D2C900] futureWithResult:fileURL];
  }

  else
  {
    cloudZone = [(HMDCameraClipManager *)self cloudZone];
    v15 = [cloudZone fetchCompleteModel:modelCopy];

    v16 = MEMORY[0x277D2C938];
    workQueue = [(HMDCameraClipManager *)self workQueue];
    v18 = [v16 schedulerWithDispatchQueue:workQueue];
    v19 = [v15 reschedule:v18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke;
    v23[3] = &unk_27972E920;
    v23[4] = self;
    v20 = [v19 flatMap:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke_155;
    v22[3] = &unk_2797359D8;
    v22[4] = self;
    v13 = [v20 addFailureBlock:v22];
  }

  return v13;
}

id __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 faceCropAsset];
  v5 = [v4 fileURL];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched face crop URL: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 faceCropAsset];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop file URL on fetched asset: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v11 = [v14 futureWithError:v15];
  }

  return v11;
}

void __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke_155(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch complete significant event notification model: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_fetchHeroFrameURLForSignificantEventModel:(id)model
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  heroFrameAsset = [modelCopy heroFrameAsset];
  fileURL = [heroFrameAsset fileURL];

  if (fileURL && (-[HMDCameraClipManager fileManager](self, "fileManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 fileExistsAtURL:fileURL], v7, v8))
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      hmbModelID = [modelCopy hmbModelID];

      if (hmbModelID)
      {
        hmbModelID2 = [modelCopy hmbModelID];
        [hmbModelID2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v30 = *buf;
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v32 = 2098;
      v33 = &v30;
      v34 = 2112;
      v35 = fileURL;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Using existing cached hero frame URL for significant event with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = [MEMORY[0x277D2C900] futureWithResult:fileURL];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Force fetching significant event model from cloud for hero frame url", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    cloudZone = [(HMDCameraClipManager *)selfCopy2 cloudZone];
    v20 = [cloudZone fetchCompleteModel:modelCopy];

    v21 = MEMORY[0x277D2C938];
    workQueue = [(HMDCameraClipManager *)selfCopy2 workQueue];
    v23 = [v21 schedulerWithDispatchQueue:workQueue];
    v24 = [v20 reschedule:v23];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke;
    v29[3] = &unk_27972E920;
    v29[4] = selfCopy2;
    v25 = [v24 flatMap:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke_153;
    v28[3] = &unk_2797359D8;
    v28[4] = selfCopy2;
    v26 = [v25 addFailureBlock:v28];
  }

  return v26;
}

id __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 heroFrameAsset];
  v5 = [v4 fileURL];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched hero frame URL: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 heroFrameAsset];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not find hero frame file URL on fetched asset: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v11 = [v14 futureWithError:v15];
  }

  return v11;
}

void __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke_153(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch complete significant event notification model: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_fetchCanonicalHeroFrameURLForClipModel:(id)model
{
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v36 = modelCopy;
  hmbModelID = [modelCopy hmbModelID];
  v7 = [(HMDCameraClipManager *)self significantEventsForClipWithUUID:hmbModelID];

  v35 = v7;
  allObjects = [v7 allObjects];
  v9 = [allObjects sortedArrayUsingComparator:&__block_literal_global_150];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
  v37 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        localZone = [(HMDCameraClipManager *)self localZone];
        uniqueIdentifier = [v15 uniqueIdentifier];
        v18 = objc_opt_class();
        v38 = 0;
        v19 = [localZone fetchModelWithModelID:uniqueIdentifier ofType:v18 error:&v38];
        v20 = v38;

        if (v19)
        {
          v32 = [(HMDCameraClipManager *)self _fetchHeroFrameURLForSignificantEventModel:v19];

          v31 = v10;
          v33 = v10;
          v28 = v36;
          goto LABEL_15;
        }

        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v24;
          v45 = 2112;
          v46 = v20;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant event notification model: %@", buf, 0x16u);

          v10 = v37;
        }

        objc_autoreleasePoolPop(v21);
      }

      v12 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  v28 = v36;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v29;
    v45 = 2112;
    v46 = v36;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Could not find hero frame on any significant event for clip model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v30 = MEMORY[0x277D2C900];
  v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v32 = [v30 futureWithError:v31];
  v33 = v37;
LABEL_15:

  return v32;
}

uint64_t __64__HMDCameraClipManager__fetchCanonicalHeroFrameURLForClipModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 reason] == 1 || objc_msgSend(v5, "reason") == 1)
  {
    if ([v4 reason] == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v7 = [v4 confidenceLevel];
    if (v7 == [v5 confidenceLevel])
    {
      v8 = [v4 dateOfOccurrence];
      [v5 dateOfOccurrence];
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "confidenceLevel")}];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "confidenceLevel")}];
    }
    v9 = ;
    v6 = [v8 compare:v9];
  }

  return v6;
}

- (BOOL)_fetchClipsWithDateInterval:(id)interval quality:(int64_t)quality isAscending:(BOOL)ascending error:(id *)error handler:(id)handler
{
  ascendingCopy = ascending;
  v47 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__HMDCameraClipManager__fetchClipsWithDateInterval_quality_isAscending_error_handler___block_invoke;
  aBlock[3] = &unk_27972E8F8;
  aBlock[4] = self;
  v36 = &v37;
  v14 = handlerCopy;
  v35 = v14;
  v15 = _Block_copy(aBlock);
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v19;
    v45 = 2112;
    v46 = intervalCopy;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching clips with date interval: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (ascendingCopy)
  {
    +[HMDCameraClipModel clipsWithQualityBetweenDatesAscendingQuery];
  }

  else
  {
    +[HMDCameraClipModel clipsWithQualityBetweenDatesDescendingQuery];
  }
  v20 = ;
  v41[0] = @"dateAfter";
  startDate = [intervalCopy startDate];
  v42[0] = startDate;
  v41[1] = @"dateBefore";
  endDate = [intervalCopy endDate];
  v42[1] = endDate;
  v41[2] = @"quality";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:quality];
  v42[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

  localZone = [(HMDCameraClipManager *)selfCopy localZone];
  v26 = [localZone queryModelsUsingQuery:v20 arguments:v24];

  [v26 enumerateObjectsUsingBlock:v15];
  error = [v26 error];

  if (error)
  {
    *(v38 + 24) = 0;
    if (error)
    {
      *error = [v26 error];
    }
  }

  v28 = objc_autoreleasePoolPush();
  v29 = selfCopy;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v31;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Finished fetching clips", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = *(v38 + 24);

  _Block_object_dispose(&v37, 8);
  return v32 & 1;
}

void __86__HMDCameraClipManager__fetchClipsWithDateInterval_quality_isAscending_error_handler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 hmbModelID];
  v8 = [v6 significantEventsForClipWithUUID:v7];

  if (v8)
  {
    v9 = [v5 createClipWithSignificantEvents:v8];
    if (v9)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant events for clip model %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (BOOL)_fetchSignificantEventsWithDateInterval:(id)interval isAscending:(BOOL)ascending error:(id *)error handler:(id)handler
{
  ascendingCopy = ascending;
  v38 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __90__HMDCameraClipManager__fetchSignificantEventsWithDateInterval_isAscending_error_handler___block_invoke;
  v29 = &unk_27972E8D0;
  selfCopy = self;
  v12 = handlerCopy;
  v31 = v12;
  v13 = _Block_copy(&v26);
  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v17;
    v36 = 2112;
    v37 = intervalCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetching significant events with date interval: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  selfCopy = [HMDCameraSignificantEventNotificationModel significantEventsBetweenDatesQueryWithIsAscending:ascendingCopy, v26, v27, v28, v29, selfCopy];
  v32[0] = @"dateAfter";
  startDate = [intervalCopy startDate];
  v32[1] = @"dateBefore";
  v33[0] = startDate;
  endDate = [intervalCopy endDate];
  v33[1] = endDate;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  localZone = [(HMDCameraClipManager *)selfCopy2 localZone];
  v23 = [localZone queryModelsUsingQuery:selfCopy arguments:v21];

  [v23 enumerateObjectsUsingBlock:v13];
  error = [v23 error];

  if (error && error)
  {
    *error = [v23 error];
  }

  return error == 0;
}

uint64_t __90__HMDCameraClipManager__fetchSignificantEventsWithDateInterval_isAscending_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _significantEventFromSignificantEventModel:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_faceClassificationsForSignificantEventWithUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  localZone = [(HMDCameraClipManager *)self localZone];
  v15 = 0;
  v6 = [localZone fetchModelsWithParentModelID:dCopy ofType:objc_opt_class() error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = [v6 na_map:&__block_literal_global_134_145453];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (dCopy)
      {
        [dCopy getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v16 = *buf;
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v18 = 2098;
      v19 = &v16;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch face classification models for significant event UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v8;

  return v13;
}

- (id)_significantEventsWithUUIDs:(id)ds
{
  v4 = [(HMDCameraClipManager *)self _significantEventModelsWithUUIDs:ds];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDCameraClipManager__significantEventsWithUUIDs___block_invoke;
  v7[3] = &unk_27972E818;
  v7[4] = self;
  v5 = [v4 na_map:v7];

  return v5;
}

- (id)_significantEventFromSignificantEventModel:(id)model
{
  modelCopy = model;
  hmbModelID = [modelCopy hmbModelID];
  v6 = [(HMDCameraClipManager *)self _faceClassificationsForSignificantEventWithUUID:hmbModelID];

  faceClassificationResolver = [(HMDCameraClipManager *)self faceClassificationResolver];
  v8 = [faceClassificationResolver faceClassificationForSignificantEventFaceClassifications:v6];

  cameraProfileUUID = [(HMDCameraClipManager *)self cameraProfileUUID];
  v10 = [modelCopy createClipSignificantEventWithCameraProfileUUID:cameraProfileUUID faceClassification:v8];

  return v10;
}

- (id)_significantEventModelsForClipWithUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  localZone = [(HMDCameraClipManager *)self localZone];
  v15 = 0;
  v6 = [localZone fetchModelsWithParentModelID:dCopy ofType:objc_opt_class() error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (dCopy)
      {
        [dCopy getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v16 = *buf;
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v18 = 2098;
      v19 = &v16;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant events for clip UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v8;

  return v13;
}

- (id)_significantEventModelsWithUUIDs:(id)ds
{
  v40 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = dsCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    *&v7 = 138544130;
    v24 = v7;
    v25 = *v30;
    do
    {
      v10 = 0;
      v26 = v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        localZone = [(HMDCameraClipManager *)self localZone];
        v13 = objc_opt_class();
        v28 = 0;
        v14 = [localZone fetchModelWithModelID:v11 ofType:v13 error:&v28];
        v15 = v28;

        if (v14)
        {
          [v5 addObject:v14];
        }

        else if (![v15 isHMFError] || objc_msgSend(v15, "code") != 2)
        {
          v16 = v5;
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          selfCopy2 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            if (v11)
            {
              [v11 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v33 = *buf;
            *buf = v24;
            *&buf[4] = v21;
            *&buf[12] = 1042;
            *&buf[14] = 16;
            v35 = 2098;
            v36 = &v33;
            v37 = 2112;
            v38 = v15;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant notification model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v17);
          v5 = v16;
          self = selfCopy;
          v9 = v25;
          v8 = v26;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  v22 = objc_msgSend_copy(v5);

  return v22;
}

- (id)home
{
  zoneManager = [(HMDCameraClipManager *)self zoneManager];
  home = [zoneManager home];

  return home;
}

- (id)performCloudPull
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  workQueue = [(HMDCameraClipManager *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HMDCameraClipManager_performCloudPull__block_invoke;
  v9[3] = &unk_2797359B0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(workQueue, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __40__HMDCameraClipManager_performCloudPull__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _performCloudPull];
  v2 = [*(a1 + 40) completionHandlerAdapter];
  v3 = [v4 addCompletionBlock:v2];
}

- (void)cleanUpClips
{
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraClipManager *)self _cleanUpClipsForInitialStartup:0];
}

- (id)remove
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Asked to remove clip manager zones", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  zoneManager = [(HMDCameraClipManager *)selfCopy zoneManager];
  remove = [zoneManager remove];

  return remove;
}

- (id)fetchHeroFrameURLForSignificantEventWithUUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDCameraClipManager *)self localZone];
  v17 = 0;
  v7 = [localZone fetchModelWithModelID:dCopy ofType:objc_opt_class() error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = [(HMDCameraClipManager *)self _fetchHeroFrameURLForSignificantEventModel:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (dCopy)
      {
        [dCopy getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v18 = *buf;
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v20 = 2098;
      v21 = &v18;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant notification model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v9 = [v14 futureWithError:v15];
  }

  return v9;
}

- (id)heroFrameURLForSignificantEventWithUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDCameraClipManager *)self localZone];
  v16 = 0;
  v7 = [localZone fetchModelWithModelID:dCopy ofType:objc_opt_class() error:&v16];
  v8 = v16;

  if (v7)
  {
    heroFrameAsset = [v7 heroFrameAsset];
    fileURL = [heroFrameAsset fileURL];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (dCopy)
      {
        [dCopy getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v17 = *buf;
      *buf = 138544130;
      *&buf[4] = v14;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v19 = 2098;
      v20 = &v17;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant notification model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    fileURL = 0;
  }

  return fileURL;
}

- (id)fetchSignificantEventsForClipWithSignificantEventWithUUID:(id)d
{
  dCopy = d;
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _performCloudPull = [(HMDCameraClipManager *)self _performCloudPull];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__HMDCameraClipManager_fetchSignificantEventsForClipWithSignificantEventWithUUID___block_invoke;
  v10[3] = &unk_27972E868;
  v10[4] = self;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [_performCloudPull flatMap:v10];

  return v8;
}

id __82__HMDCameraClipManager_fetchSignificantEventsForClipWithSignificantEventWithUUID___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v12[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v4 = [v2 _significantEventsWithUUIDs:v3];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v5 clipUUID];
    v8 = [v6 significantEventsForClipWithUUID:v7];

    [MEMORY[0x277D2C900] futureWithResult:v8];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v9 futureWithError:v8];
  }
  v10 = ;

  return v10;
}

- (void)configure
{
  v55 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneManager = [(HMDCameraClipManager *)self zoneManager];
  home = [zoneManager home];

  if (home)
  {
    messageDispatcher = [(HMDCameraClipManager *)self messageDispatcher];
    v7 = [HMDXPCMessagePolicy policyWithEntitlements:133];
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
    v45 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v52[0] = v7;
    v52[1] = v8;
    v40 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3F8] receiver:self policies:v10 selector:sel_handleFetchVideoSegmentsAssetContextMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF4C0] receiver:self policies:v10 selector:sel_handleSubscribeMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF4C8] receiver:self policies:v10 selector:sel_handleUnsubscribeMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF4B0] receiver:self policies:v10 selector:sel_handlePerformCloudPullMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3B0] receiver:self policies:v10 selector:sel_handleFetchClipMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3B8] receiver:self policies:v10 selector:sel_handleFetchClipsMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3A8] receiver:self policies:v10 selector:sel_handleFetchClipForSignificantEventMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3C0] receiver:self policies:v10 selector:sel_handleFetchCountOfClipsMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3D8] receiver:self policies:v10 selector:sel_handleFetchHeroFrameDataRepresentationMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3E0] receiver:self policies:v10 selector:sel_handleFetchHeroFrameURLMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3C8] receiver:self policies:v10 selector:sel_handleFetchFaceCropDataRepresentationMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3D0] receiver:self policies:v10 selector:sel_handleFetchFaceCropURLMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF3F0] receiver:self policies:v10 selector:sel_handleFetchSignificantEventsMessage_];
    v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
    v46 = v7;
    v51[0] = v7;
    v51[1] = v9;
    v51[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF390] receiver:self policies:v12 selector:sel_handleDeleteClipMessage_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF388] receiver:self policies:v12 selector:sel_handleDeleteAllClipsMessage_];
    v43 = v12;
    [messageDispatcher registerForMessage:*MEMORY[0x277CCF400] receiver:self policies:v12 selector:sel_handleHandleFaceMisclassificationMessage_];
    +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v50[0] = v9;
    v50[1] = v11;
    v42 = v44 = v11;
    v50[2] = v42;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
    [messageDispatcher registerForMessage:@"HMDCCM.m.rhfm" receiver:self policies:? selector:?];
    if (isInternalBuild())
    {
      v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
      v14 = *MEMORY[0x277CCF408];
      v49[0] = v46;
      v49[1] = v45;
      v49[2] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
      [messageDispatcher registerForMessage:v14 receiver:self policies:v15 selector:sel_handleImportClipsMessage_];

      v16 = *MEMORY[0x277CCF3E8];
      v48[0] = v46;
      v48[1] = v45;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      [messageDispatcher registerForMessage:v16 receiver:self policies:v17 selector:sel_handleFetchIsCloudStorageEnabledMessage_];

      v18 = *MEMORY[0x277CCF4D0];
      v47[0] = v46;
      v47[1] = v45;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
      [messageDispatcher registerForMessage:v18 receiver:self policies:v19 selector:sel_handleUpdateCloudStorageMessage_];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleUserPrivilegeDidChangeNotification_ name:@"HMDUserPrivilegeDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:home];

    zoneManager2 = [(HMDCameraClipManager *)self zoneManager];
    defaultConfiguration = [zoneManager2 defaultConfiguration];
    v26 = [defaultConfiguration mutableCopy];

    [v26 setZoneOwner:{objc_msgSend(home, "isOwnerUser")}];
    v27 = MEMORY[0x277CBEB98];
    v28 = +[HMDCameraSignificantEventNotificationModel hmbExternalRecordType];
    v29 = [v27 setWithObject:v28];
    [v26 setExternalRecordTypesForSubscriptions:v29];

    zoneManager3 = [(HMDCameraClipManager *)self zoneManager];
    [zoneManager3 setDefaultConfiguration:v26];

    zoneManager4 = [(HMDCameraClipManager *)self zoneManager];
    [zoneManager4 setDelegate:self];

    zoneManager5 = [(HMDCameraClipManager *)self zoneManager];
    [zoneManager5 setDataSource:self];

    zoneManager6 = [(HMDCameraClipManager *)self zoneManager];
    [zoneManager6 configure];

    zoneManager7 = [(HMDCameraClipManager *)self zoneManager];
    [zoneManager7 start];

    clientConnectionsTimer = [(HMDCameraClipManager *)self clientConnectionsTimer];
    [clientConnectionsTimer setDelegate:self];
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v39;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera clip manager configure because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
  }
}

- (NSDictionary)stateDump
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"Subscribed Clients";
  clientConnectionsTimer = [(HMDCameraClipManager *)self clientConnectionsTimer];
  clientConnections = [clientConnectionsTimer clientConnections];
  v4 = [clientConnections na_map:&__block_literal_global_145489];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (BOOL)hasStartedUpCloudZone
{
  cloudZone = [(HMDCameraClipManager *)self cloudZone];
  startUp = [cloudZone startUp];
  isFinished = [startUp isFinished];

  return isFinished;
}

- (void)setHasWriteAccess:(BOOL)access
{
  accessCopy = access;
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_hasWriteAccess != accessCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating has write access from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    self->_hasWriteAccess = accessCopy;
    if (accessCopy)
    {
      zoneManager = [(HMDCameraClipManager *)selfCopy zoneManager];
      [zoneManager updateShareParticipants];
    }
  }
}

- (id)fetchSignificantEventsWithDateInterval:(id)interval
{
  intervalCopy = interval;
  performCloudPull = [(HMDCameraClipManager *)self performCloudPull];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMDCameraClipManager_fetchSignificantEventsWithDateInterval___block_invoke;
  v9[3] = &unk_27972E868;
  v9[4] = self;
  v10 = intervalCopy;
  v6 = intervalCopy;
  v7 = [performCloudPull flatMap:v9];

  return v7;
}

id __63__HMDCameraClipManager_fetchSignificantEventsWithDateInterval___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) significantEventsWithDateInterval:*(a1 + 40)];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)significantEventsWithDateInterval:(id)interval
{
  v4 = MEMORY[0x277CBEB18];
  intervalCopy = interval;
  array = [v4 array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HMDCameraClipManager_significantEventsWithDateInterval___block_invoke;
  v10[3] = &unk_27972E840;
  v11 = array;
  v7 = array;
  [(HMDCameraClipManager *)self _fetchSignificantEventsWithDateInterval:intervalCopy isAscending:1 error:0 handler:v10];

  v8 = objc_msgSend_copy(v7);

  return v8;
}

- (id)significantEventsForClipWithUUID:(id)d
{
  v4 = [(HMDCameraClipManager *)self _significantEventModelsForClipWithUUID:d];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDCameraClipManager_significantEventsForClipWithUUID___block_invoke;
  v7[3] = &unk_27972E818;
  v7[4] = self;
  v5 = [v4 na_map:v7];

  return v5;
}

- (NSString)zoneName
{
  zoneManager = [(HMDCameraClipManager *)self zoneManager];
  zoneName = [zoneManager zoneName];

  return zoneName;
}

- (HMDCameraClipManager)initWithZoneManager:(id)manager quotaManager:(id)quotaManager faceClassificationResolver:(id)resolver clientConnectionsTimer:(id)timer messageDispatcher:(id)dispatcher workQueue:(id)queue cameraProfileUUID:(id)d fileManager:(id)self0 featuresDataSource:(id)self1
{
  managerCopy = manager;
  obj = quotaManager;
  quotaManagerCopy = quotaManager;
  resolverCopy = resolver;
  resolverCopy2 = resolver;
  dispatcherCopy = dispatcher;
  v55 = resolverCopy2;
  timerCopy = timer;
  dispatcherCopy2 = dispatcher;
  queueCopy = queue;
  queueCopy2 = queue;
  dCopy = d;
  fileManagerCopy = fileManager;
  sourceCopy = source;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!quotaManagerCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v55)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!timerCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!dispatcherCopy2)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!queueCopy2)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!dCopy)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!fileManagerCopy)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!sourceCopy)
  {
LABEL_21:
    v44 = _HMFPreconditionFailure();
    return __184__HMDCameraClipManager_initWithZoneManager_quotaManager_faceClassificationResolver_clientConnectionsTimer_messageDispatcher_workQueue_cameraProfileUUID_fileManager_featuresDataSource___block_invoke(v44, v45);
  }

  v49 = sourceCopy;
  v50 = quotaManagerCopy;
  v58.receiver = self;
  v58.super_class = HMDCameraClipManager;
  v24 = [(HMDCameraClipManager *)&v58 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_zoneManager, manager);
    objc_storeStrong(&v25->_messageDispatcher, dispatcherCopy);
    objc_storeStrong(&v25->_quotaManager, obj);
    objc_storeStrong(&v25->_faceClassificationResolver, resolverCopy);
    objc_storeStrong(&v25->_clientConnectionsTimer, timer);
    objc_storeStrong(&v25->_workQueue, queueCopy);
    objc_storeStrong(&v25->_cameraProfileUUID, d);
    objc_storeStrong(&v25->_fileManager, fileManager);
    objc_storeStrong(&v25->_featuresDataSource, source);
    v26 = MEMORY[0x277CCACA8];
    [managerCopy zoneName];
    v28 = v27 = managerCopy;
    v29 = [v26 stringWithFormat:@"%@/%@", dCopy, v28];
    logIdentifier = v25->_logIdentifier;
    v25->_logIdentifier = v29;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    suppressNotificationsBeforeDate = v25->_suppressNotificationsBeforeDate;
    v25->_suppressNotificationsBeforeDate = distantPast;

    v25->_fetchBatchLimit = 100;
    v33 = HMDispatchQueueNameString();
    uTF8String = [v33 UTF8String];
    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_get_global_queue(9, 0);
    v37 = v36 = queueCopy2;
    v38 = uTF8String;
    managerCopy = v27;
    v39 = dispatch_queue_create_with_target_V2(v38, v35, v37);
    cleanupQueue = v25->_cleanupQueue;
    v25->_cleanupQueue = v39;

    queueCopy2 = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __184__HMDCameraClipManager_initWithZoneManager_quotaManager_faceClassificationResolver_clientConnectionsTimer_messageDispatcher_workQueue_cameraProfileUUID_fileManager_featuresDataSource___block_invoke;
    aBlock[3] = &unk_27972E7F0;
    v57 = v36;
    v41 = _Block_copy(aBlock);
    fetchServerFactory = v25->_fetchServerFactory;
    v25->_fetchServerFactory = v41;
  }

  return v25;
}

id __184__HMDCameraClipManager_initWithZoneManager_quotaManager_faceClassificationResolver_clientConnectionsTimer_messageDispatcher_workQueue_cameraProfileUUID_fileManager_featuresDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1918];
  v4 = a2;
  v5 = [[v3 alloc] initWithFetchMessage:v4 workQueue:*(a1 + 32)];

  return v5;
}

- (HMDCameraClipManager)initWithHome:(id)home zoneName:(id)name messageDispatcher:(id)dispatcher workQueue:(id)queue cameraProfileUUID:(id)d
{
  homeCopy = home;
  nameCopy = name;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  dCopy = d;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!nameCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!queueCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v16 = dCopy;
  if (dCopy)
  {
    v17 = [HMDDatabaseZoneManager alloc];
    v18 = +[HMDDatabase cameraClipsDatabase];
    v19 = [(HMDDatabaseZoneManager *)v17 initWithDatabase:v18 zoneName:nameCopy home:homeCopy messageTargetUUID:v16 workQueue:queueCopy];

    v20 = [[HMDCameraSignificantEventFaceClassificationResolver alloc] initWithHome:homeCopy];
    v21 = [HMDActiveXPCClientConnectionsPeriodicTimer alloc];
    zoneName = [(HMDDatabaseZoneManager *)v19 zoneName];
    v23 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v21 initWithTimeInterval:zoneName logIdentifier:queueCopy workQueue:4.0];

    v24 = objc_alloc_init(HMDFileManager);
    selfCopy = self;
    v26 = objc_alloc_init(HMDFeaturesDataSource);
    +[HMDCameraClipsQuotaManager defaultManager];
    v32 = nameCopy;
    v27 = v33 = homeCopy;
    v28 = [(HMDCameraClipManager *)selfCopy initWithZoneManager:v19 quotaManager:v27 faceClassificationResolver:v20 clientConnectionsTimer:v23 messageDispatcher:dispatcherCopy workQueue:queueCopy cameraProfileUUID:v16 fileManager:v24 featuresDataSource:v26];

    return v28;
  }

LABEL_11:
  v30 = _HMFPreconditionFailure();
  return +[(HMDCameraClipManager *)v30];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t148 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t148, &__block_literal_global_224_145551);
  }

  v3 = logCategory__hmf_once_v149;

  return v3;
}

uint64_t __35__HMDCameraClipManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v149;
  logCategory__hmf_once_v149 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (double)maximumClipDuration
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"maxClipDuration"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

@end