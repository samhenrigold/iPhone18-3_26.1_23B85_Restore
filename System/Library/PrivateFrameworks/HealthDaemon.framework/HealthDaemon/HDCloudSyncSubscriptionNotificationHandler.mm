@interface HDCloudSyncSubscriptionNotificationHandler
- (BOOL)_shouldTriggerDownload;
- (BOOL)_shouldTriggerUpload;
- (HDCloudSyncSubscriptionNotificationHandler)initWithCoordinator:(id)coordinator behavior:(id)behavior;
- (id)_copyAPSEntitlement;
- (void)_enableAPSPush;
- (void)_queue_fetchAPSEnvironmentStringWithHandler:(id)handler;
- (void)_queue_handleIncomingCloudKitPushNotification:(id)notification;
- (void)_queue_handleIncomingDataDownloadAvailableNotificationOnGuardianDevices;
- (void)_queue_handleIncomingDataDownloadAvailableNotificationOnTinkerDevices;
- (void)_queue_handleIncomingDataUploadRequest;
- (void)_queue_handleIncomingPrimaryMedicalIDDataAvailableForDownloadNotification;
- (void)_queue_handleIncomingSharedSummaryDataAvailableForDownloadNotification;
- (void)_queue_handleIncomingTinkerMedicalIDDataAvailableForDownloadNotification;
- (void)_queue_handleMedicationsStateUpdatedNotification;
- (void)_queue_handleSubscriptionWithID:(id)d;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)daemonReady:(id)ready;
- (void)resetSubscriptionSyncBackoff;
- (void)triggerSubscription:(id)subscription;
@end

@implementation HDCloudSyncSubscriptionNotificationHandler

- (HDCloudSyncSubscriptionNotificationHandler)initWithCoordinator:(id)coordinator behavior:(id)behavior
{
  coordinatorCopy = coordinator;
  behaviorCopy = behavior;
  v15.receiver = self;
  v15.super_class = HDCloudSyncSubscriptionNotificationHandler;
  v8 = [(HDCloudSyncSubscriptionNotificationHandler *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_coordinator, coordinatorCopy);
    objc_storeStrong(&v9->_behavior, behavior);
    v10 = HKCreateSerialUtilityDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    v9->_lock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v9->_coordinator);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v9 queue:v9->_queue];
  }

  return v9;
}

- (void)_enableAPSPush
{
  dispatch_assert_queue_V2(self->_queue);
  if (!_HDIsUnitTesting)
  {
    if (self->_apsConnection)
    {
      _HKInitializeLogging();
      v3 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "APS connection is already created (#t0)", v4, 2u);
      }
    }

    else
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __60__HDCloudSyncSubscriptionNotificationHandler__enableAPSPush__block_invoke;
      v5[3] = &unk_27861BC20;
      v5[4] = self;
      [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_fetchAPSEnvironmentStringWithHandler:v5];
    }
  }
}

void __60__HDCloudSyncSubscriptionNotificationHandler__enableAPSPush__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HDCloudSyncSubscriptionNotificationHandler__enableAPSPush__block_invoke_298;
    v8[3] = &unk_278613920;
    v8[4] = v5;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Error establishing APS connection due to nil APS enviroment.", buf, 2u);
    }
  }
}

void __60__HDCloudSyncSubscriptionNotificationHandler__enableAPSPush__block_invoke_298(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [@"com.apple.icloud-container." stringByAppendingString:*MEMORY[0x277CCE3A8]];
  v3 = [objc_alloc(MEMORY[0x277CEEA10]) initWithEnvironmentName:*(a1 + 40) namedDelegatePort:@"com.apple.aps.healthd.cloud.subscription.push" queue:*(*(a1 + 32) + 32)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(a1 + 32) + 40) setDelegate:?];
  v6 = *(*(a1 + 32) + 40);
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 40);
      *buf = 134217984;
      v13 = v9;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Created APS connection %p (#t0)", buf, 0xCu);
    }

    v11 = v2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [*(*(a1 + 32) + 40) _setEnabledTopics:v10];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Couldn't create APS push connection (#t0)", buf, 2u);
  }
}

- (id)_copyAPSEntitlement
{
  v2 = xpc_copy_entitlement_for_self();
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v2)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_queue_fetchAPSEnvironmentStringWithHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  _copyAPSEntitlement = [(HDCloudSyncSubscriptionNotificationHandler *)self _copyAPSEntitlement];
  v6 = _copyAPSEntitlement;
  if (_copyAPSEntitlement)
  {
    if (![_copyAPSEntitlement compare:*MEMORY[0x277CBBFB8] options:1])
    {
      WeakRetained = objc_loadWeakRetained(&self->_coordinator);
      daemon = [WeakRetained daemon];
      primaryProfile = [daemon primaryProfile];
      cloudSyncManager = [primaryProfile cloudSyncManager];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __90__HDCloudSyncSubscriptionNotificationHandler__queue_fetchAPSEnvironmentStringWithHandler___block_invoke;
      v11[3] = &unk_278618DF0;
      v12 = handlerCopy;
      [cloudSyncManager fetchServerPreferredPushEnvironmentWithCompletion:v11];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __90__HDCloudSyncSubscriptionNotificationHandler__queue_fetchAPSEnvironmentStringWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEE9F0];
  v8 = MEMORY[0x277CCC328];
  if (v6)
  {
    _HKInitializeLogging();
    v9 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Error getting server APS preferred push environment: %{public}@ (#t0)", &v12, 0xCu);
    }
  }

  else
  {
    v10 = v5;

    v7 = v10;
  }

  _HKInitializeLogging();
  v11 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Using APS push environment: %{public}@ (#t0)", &v12, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_queue_handleSubscriptionWithID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if ([dCopy isEqual:HDCloudSyncPrimaryProfileDataRequestedSubscriptionIdentifier])
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleIncomingDataUploadRequest];
  }

  else if ([dCopy isEqual:HDCloudSyncPrimaryProfileDataAvailableForDownloadSubscriptionIdentifier])
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleIncomingDataDownloadAvailableNotificationOnTinkerDevices];
  }

  else if ([dCopy isEqual:HDCloudSyncTinkerProfileDataAvailableForDownloadSubscriptionIdentifier])
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleIncomingDataDownloadAvailableNotificationOnGuardianDevices];
  }

  else if ([dCopy isEqual:HDCloudSyncPrimaryMedicalIDDataAvailableForDownloadSubscriptionIdentifier])
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleIncomingPrimaryMedicalIDDataAvailableForDownloadNotification];
  }

  else if ([dCopy isEqual:HDCloudSyncTinkerMedicalIDDataAvailableForDownloadSubscriptionIdentifier])
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleIncomingTinkerMedicalIDDataAvailableForDownloadNotification];
  }

  else if ([dCopy isEqual:HDCloudSyncSharedSummaryDataAvailableForDownloadSubscriptionIdentifier])
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleIncomingSharedSummaryDataAvailableForDownloadNotification];
  }

  else if ([dCopy isEqual:HDCloudSyncMedicationsStateChangedSubscriptionIdentifier])
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleMedicationsStateUpdatedNotification];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 2114;
      v9 = dCopy;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Unknown subscription type %{public}@", &v6, 0x16u);
    }
  }
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  primaryProfile = [daemon primaryProfile];
  [primaryProfile registerProfileReadyObserver:self queue:self->_queue];
}

- (void)_queue_handleIncomingCloudKitPushNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  subscriptionID = [notificationCopy subscriptionID];
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = subscriptionID;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Recieved CloudKit push notification for subscription with id: %{public}@ (#t0)", &v10, 0xCu);
  }

  alertBody = [notificationCopy alertBody];

  if (alertBody)
  {
    [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleSubscriptionWithID:subscriptionID];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Push notification is low-priority, ignoring. (#t0)", &v10, 2u);
    }
  }
}

- (BOOL)_shouldTriggerUpload
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = CFAbsoluteTimeGetCurrent() - self->_lock_lastTinkerDataUploadTriggerTime;
  if (v3 <= 300.0)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543874;
      selfCopy = self;
      v8 = 2048;
      v9 = v3;
      v10 = 2048;
      v11 = 0x4072C00000000000;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring data upload request; time since last request %lf is less than threshold %lf", &v6, 0x20u);
    }
  }

  else
  {
    self->_lock_lastTinkerDataUploadTriggerTime = CFAbsoluteTimeGetCurrent();
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3 > 300.0;
}

- (void)_queue_handleIncomingDataUploadRequest
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (([(_HKBehavior *)self->_behavior tinkerModeEnabled]& 1) != 0)
  {
    if ([(HDCloudSyncSubscriptionNotificationHandler *)self _shouldTriggerUpload])
    {
      v3 = objc_alloc(MEMORY[0x277CCD140]);
      v4 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:0];
      v5 = [v3 initWithChangesSyncRequest:v4 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:0 summarySharingSyncRequest:0 allowCellular:1 qualityOfService:25];

      v6 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v5) reason:16];
      [v6 setSyncRequest:v5];
      WeakRetained = objc_loadWeakRetained(&self->_coordinator);
      v13 = 0;
      v8 = [WeakRetained scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v6 reason:@"Tinker data upload requested notification" error:&v13];
      v9 = v13;

      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      v11 = *MEMORY[0x277CCC328];
      if (v8)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy3 = self;
          _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully triggered sync for Tinker data upload requested notification", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v16 = 2114;
        v17 = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error triggering sync for Tinker data upload requested notification %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring data upload request on ineligible device.", buf, 0xCu);
    }
  }
}

- (BOOL)_shouldTriggerDownload
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = CFAbsoluteTimeGetCurrent() - self->_lock_lastTinkerDataDownloadTriggerTime;
  if (v3 <= 1800.0)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543874;
      selfCopy = self;
      v8 = 2048;
      v9 = v3;
      v10 = 2048;
      v11 = 0x409C200000000000;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring data download request; time since last request %lf is less than threshold %lf", &v6, 0x20u);
    }
  }

  else
  {
    self->_lock_lastTinkerDataDownloadTriggerTime = CFAbsoluteTimeGetCurrent();
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3 > 1800.0;
}

- (void)_queue_handleIncomingDataDownloadAvailableNotificationOnTinkerDevices
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (([(_HKBehavior *)self->_behavior tinkerModeEnabled]& 1) != 0)
  {
    if ([(HDCloudSyncSubscriptionNotificationHandler *)self _shouldTriggerDownload])
    {
      v3 = objc_alloc(MEMORY[0x277CCD140]);
      v4 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:0 pull:1 lite:0];
      v5 = [v3 initWithChangesSyncRequest:v4 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:0 summarySharingSyncRequest:0 allowCellular:1 qualityOfService:25];

      v6 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v5) reason:17];
      [v6 setSyncRequest:v5];
      WeakRetained = objc_loadWeakRetained(&self->_coordinator);
      v13 = 0;
      v8 = [WeakRetained scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v6 reason:@"Guardian data available for download notification" error:&v13];
      v9 = v13;

      if ((v8 & 1) == 0)
      {
        _HKInitializeLogging();
        v10 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v16 = 2114;
          v17 = v9;
          _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error triggering sync for Guardian data available for download notification %{public}@", buf, 0x16u);
        }
      }

      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully triggered sync for Guardian data available for download notification", buf, 0xCu);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring data download request on ineligible device.", buf, 0xCu);
    }
  }
}

- (void)_queue_handleIncomingDataDownloadAvailableNotificationOnGuardianDevices
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(_HKBehavior *)self->_behavior tinkerModeEnabled])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring data download on ineligible device.", buf, 0xCu);
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCD140]);
    v5 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:0 pull:1 lite:0];
    v6 = [v4 initWithChangesSyncRequest:v5 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:0 summarySharingSyncRequest:0 allowCellular:1 qualityOfService:25];

    v7 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v6) reason:17];
    [v7 setSyncRequest:v6];
    WeakRetained = objc_loadWeakRetained(&self->_coordinator);
    syncStatusProvider = [WeakRetained syncStatusProvider];
    [syncStatusProvider setDataUploadRequestStatus:3 profileType:3];

    v10 = objc_loadWeakRetained(&self->_coordinator);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __117__HDCloudSyncSubscriptionNotificationHandler__queue_handleIncomingDataDownloadAvailableNotificationOnGuardianDevices__block_invoke;
    v11[3] = &unk_2786130B0;
    v11[4] = self;
    [v10 syncAllProfilesViaGatedBackgroundTask:0 context:v7 reason:@"Tinker data available for download notification" completion:v11];
  }
}

void __117__HDCloudSyncSubscriptionNotificationHandler__queue_handleIncomingDataDownloadAvailableNotificationOnGuardianDevices__block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully completed sync for Tinker data available for download notification", &v13, 0xCu);
    }

    v9 = 4;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Error syncing Tinker data available for download notification %{public}@", &v13, 0x16u);
    }

    v9 = 5;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = [WeakRetained syncStatusProvider];
  [v11 setDataUploadRequestStatus:v9 profileType:3];
}

- (void)_queue_handleIncomingPrimaryMedicalIDDataAvailableForDownloadNotification
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc(MEMORY[0x277CCD140]);
  v4 = objc_alloc_init(MEMORY[0x277CCD5F0]);
  v5 = [v3 initWithChangesSyncRequest:0 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:v4 summarySharingSyncRequest:0 allowCellular:1 qualityOfService:25];

  v6 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v5) reason:23];
  [v6 setSyncRequest:v5];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v12 = 0;
  v8 = [WeakRetained scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v6 reason:@"Medical ID on data available notification" error:&v12];
  v9 = v12;

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  v11 = *MEMORY[0x277CCC328];
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully triggered sync for Medical ID on data available notification", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error triggering sync for Medical ID on data available notification %{public}@", buf, 0x16u);
  }
}

- (void)_queue_handleIncomingTinkerMedicalIDDataAvailableForDownloadNotification
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc(MEMORY[0x277CCD140]);
  v4 = objc_alloc_init(MEMORY[0x277CCD5F0]);
  v5 = [v3 initWithChangesSyncRequest:0 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:v4 summarySharingSyncRequest:0 allowCellular:1 qualityOfService:25];

  v6 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v5) reason:23];
  [v6 setSyncRequest:v5];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v12 = 0;
  v8 = [WeakRetained scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v6 reason:@"Tinker Medical ID on data available notification" error:&v12];
  v9 = v12;

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  v11 = *MEMORY[0x277CCC328];
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully triggered sync for Tinker Medical ID on data available notification", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error triggering sync for Tinker Medical ID on data available notification %{public}@", buf, 0x16u);
  }
}

- (void)_queue_handleIncomingSharedSummaryDataAvailableForDownloadNotification
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc(MEMORY[0x277CCD140]);
  v4 = [objc_alloc(MEMORY[0x277CCDA80]) initWithPush:0 pull:1];
  v5 = [v3 initWithChangesSyncRequest:0 contextSyncRequest:0 stateSyncRequest:0 medicalIDSyncRequest:0 summarySharingSyncRequest:v4 allowCellular:1 qualityOfService:25];

  v6 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v5) reason:25];
  [v6 setSyncRequest:v5];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v12 = 0;
  v8 = [WeakRetained scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v6 reason:@"Summary sharing data available notification" error:&v12];
  v9 = v12;

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  v11 = *MEMORY[0x277CCC328];
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully triggered sync for Summary sharing data available notification", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error triggering sync for Summary sharing data available notification %{public}@", buf, 0x16u);
  }
}

- (void)_queue_handleMedicationsStateUpdatedNotification
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  stateSyncDomainForSubscriptionIdentifier = [WeakRetained stateSyncDomainForSubscriptionIdentifier];
  v5 = [stateSyncDomainForSubscriptionIdentifier objectForKeyedSubscript:HDCloudSyncMedicationsStateChangedSubscriptionIdentifier];

  v6 = objc_loadWeakRetained(&self->_coordinator);
  daemon = [v6 daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator stateSync_subscriptionTriggeredDomain:v5];

  v9 = objc_alloc(MEMORY[0x277CCD140]);
  v10 = objc_alloc_init(MEMORY[0x277CCDA40]);
  v11 = [v9 initWithChangesSyncRequest:0 contextSyncRequest:0 stateSyncRequest:v10 medicalIDSyncRequest:0 summarySharingSyncRequest:0 allowCellular:1 qualityOfService:25];

  v12 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v11) reason:29];
  [v12 setSyncRequest:v11];
  v13 = objc_loadWeakRetained(&self->_coordinator);
  v18 = 0;
  v14 = [v13 scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v12 reason:@"Medications subscription notification" error:&v18];
  v15 = v18;

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  v17 = *MEMORY[0x277CCC328];
  if (v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully triggered sync for medications on receiving subscription notification", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v21 = 2114;
    v22 = v15;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error triggering sync for medications on receiving subscription notification %{public}@", buf, 0x16u);
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = tokenCopy;
    v11 = 2048;
    v12 = connectionCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "Subscription notification registration complete or updated with public token %@ on connection %p", &v9, 0x16u);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v15 = 138413058;
    v16 = tokenCopy;
    v17 = 2114;
    v18 = topicCopy;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2048;
    v22 = connectionCopy;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "Received per-topic push token %@ for topic %{public}@ identifier %@ on connection %p", &v15, 0x2Au);
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  userInfo = [messageCopy userInfo];
  v7 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:userInfo];
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    topic = [messageCopy topic];
    v11 = 138412546;
    v12 = topic;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "APS push recieved: %@ %@ (#t0)", &v11, 0x16u);
  }

  [(HDCloudSyncSubscriptionNotificationHandler *)self _queue_handleIncomingCloudKitPushNotification:v7];
}

- (void)triggerSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HDCloudSyncSubscriptionNotificationHandler_triggerSubscription___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = subscriptionCopy;
  v6 = subscriptionCopy;
  dispatch_async(queue, v7);
}

- (void)resetSubscriptionSyncBackoff
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_lastTinkerDataDownloadTriggerTime = 0.0;
  self->_lock_lastTinkerDataUploadTriggerTime = 0.0;

  os_unfair_lock_unlock(&self->_lock);
}

@end