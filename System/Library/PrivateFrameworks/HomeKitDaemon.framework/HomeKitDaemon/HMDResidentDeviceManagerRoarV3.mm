@interface HMDResidentDeviceManagerRoarV3
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updatePrimaryResidentGenerationID:(id)d;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp;
- (BOOL)hasAnyResident;
- (BOOL)hasReachableAccessories;
- (BOOL)hasTrustZoneCapableResident;
- (BOOL)homeSupportsResidentSelection;
- (BOOL)isCurrentDeviceAvailableResident;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isOwnerUser;
- (BOOL)isResidentAvailable;
- (BOOL)isResidentEnabled;
- (BOOL)isResidentSupported;
- (HMDDevice)confirmedPrimaryResidentDevice;
- (HMDHome)home;
- (HMDIDSServerBag)idsServerBag;
- (HMDPreferredResidentsList)electorsPreferredResidentsList;
- (HMDResidentDevice)primaryResidentDevice;
- (HMDResidentDevice)userSelectedPreferredResident;
- (HMDResidentDeviceManagerDelegate)delegate;
- (HMDResidentDeviceManagerRoarV3)init;
- (HMDResidentDeviceManagerRoarV3)initWithDataSource:(id)source featuresDataSource:(id)dataSource;
- (HMDResidentSelectionInfo)residentSelectionInfo;
- (NSArray)autoSelectedPreferredResidents;
- (NSArray)residentDevices;
- (NSArray)residentsPresentOnStatusKit;
- (NSDate)primaryResidentSelectionTimestamp;
- (NSUUID)primaryResidentGenerationID;
- (NSUUID)primaryResidentUUID;
- (double)_initialConnectionToStatusKitOnResidentTimeout;
- (double)_primaryResidentPeriodicReassertionTimeInterval;
- (double)_statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds;
- (double)blockPrimaryTakeoverDuration;
- (id)_createBackoffTimer;
- (id)_electorForDeterminingResidentLocationFromPresentResidentStatuses:(id)statuses;
- (id)_residentDeviceDisplayName:(id)name;
- (id)_residentStatusWithPreferredResidentsList:(id)list;
- (id)_residentsFromResidentStatuses:(id)statuses residentDevices:(id)devices;
- (id)_updateReachabilityForResidentDevices:(id)devices reachableResidents:(id)residents source:(unint64_t)source;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)dumpState;
- (id)foundNewPrimaryResident:(id)resident generationID:(id)d selectionTimestamp:(id)timestamp changeSource:(unint64_t)source;
- (id)ourSelf;
- (id)preferredResidentUUIDs;
- (id)residentDeviceForDevice:(id)device;
- (id)residentDeviceWithIDSIdentifier:(id)identifier;
- (id)residentDevicesSet;
- (id)residentDevicesWithIDSIdentifiers:(id)identifiers;
- (id)residentIDSIdentifierToLocationMap;
- (id)residentWithUUID:(id)d;
- (id)shortDescription;
- (int64_t)atHomeLevel;
- (unint64_t)myLocation;
- (unint64_t)ourNetworkConnectionType;
- (unint64_t)residentSelectionMode;
- (void)_addResidentDevice:(id)device;
- (void)_checkForResidentSelectionInfoUpdate;
- (void)_checkForResidentSelectionInfoUpdateInNotification:(id)notification;
- (void)_checkForUnknownLocationAndRetry;
- (void)_checkPrimaryResidentDeviceRemoved:(id)removed currentPrimary:(id)primary;
- (void)_configureResidentSupported;
- (void)_createAllKnownResidentsInHomeWithCurrentDevice:(id)device hasResidents:(BOOL *)residents;
- (void)_determineResidentLocationWithCompletion:(id)completion;
- (void)_discoverPrimaryResidentForRequester:(id)requester;
- (void)_handleCloudResidentChange:(id)change;
- (void)_handleCloudZoneReadyNotification:(id)notification;
- (void)_handleDataReadyAfterBecomingPrimaryNotification:(id)notification;
- (void)_handleHomeLocationChangedNotification:(id)notification;
- (void)_handleInitialConnectionToStatusKit;
- (void)_handleInitialTransitionToResidentSelectionWithCompletion:(id)completion;
- (void)_handlePrimaryResident:(id)resident isReachable:(BOOL)reachable;
- (void)_handlePrimaryResidentDiscoveryRequest:(id)request;
- (void)_handlePrimaryResidentDiscoveryXPCRequest:(id)request;
- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)to previousPrimaryResident:(id)resident;
- (void)_handleRemoteDeviceIsNotReachable:(id)reachable;
- (void)_handleRemoteDeviceIsReachable:(id)reachable;
- (void)_handleResidentDeviceUpdateEnabled:(id)enabled;
- (void)_handleResidentSelectionVersionDidChange:(id)change;
- (void)_handleUpdatedPrimaryFromSelection:(id)selection;
- (void)_handleUpdatedPrimaryResidentDevice:(id)device previousPrimaryResident:(id)resident generationID:(id)d changeSource:(unint64_t)source;
- (void)_notifyPrimaryResidentChanged:(id)changed previousPrimaryResident:(id)resident changeSource:(unint64_t)source;
- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)resident;
- (void)_notifyUserPreferredResidentReachability:(id)reachability previousPrimaryResident:(id)resident;
- (void)_publishCurrentResidentStatusWithReason:(int64_t)reason preferredResidentsList:(id)list;
- (void)_refreshAllResidentsReachabilityFromStatusKit;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_removeResidentDevice:(id)device;
- (void)_removeRetryTimer;
- (void)_run;
- (void)_sendResidentDeviceNotificationWithName:(id)name forResidentDevice:(id)device;
- (void)_setResident:(id)resident reachableOverIDS:(BOOL)s andNotify:(BOOL)notify;
- (void)_setupAsAResident;
- (void)_setupSessionWithPrimaryResidentDevice;
- (void)_startActingAsResident;
- (void)_startPrimaryResidentPeriodicReassertionTimer;
- (void)_startResidentSelectionManager;
- (void)_startRetryTimer;
- (void)_stopActingAsResidentViaStatusKit;
- (void)_stopPrimaryResidentPeriodicReassertionTimer;
- (void)_submitLogeventForPrimaryResident:(id)resident previousPrimaryResident:(id)primaryResident changeSource:(unint64_t)source;
- (void)_teardownSessionWithPrimaryResidentDevice;
- (void)_updatePrimaryResidentPeriodicReassertionTimerWithPrimaryResidentDevice:(id)device;
- (void)_updatePrimaryResidentSelectionTimestamp:(id)timestamp;
- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)device;
- (void)_updateReachability:(BOOL)reachability forResidentDevice:(id)device source:(unint64_t)source forceUpdate:(BOOL)update;
- (void)_updateReachability:(BOOL)reachability forResidentDevices:(id)devices source:(unint64_t)source;
- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)resident;
- (void)_updateResidentAvailability:(BOOL)availability;
- (void)_updateResidentIDSReachability:(BOOL)reachability withUpdatedDevice:(id)device;
- (void)_updateResidentReachabilityFromReachableResidents:(id)residents source:(unint64_t)source;
- (void)_verifyAndUpdateReachability:(BOOL)reachability forResidentDevice:(id)device;
- (void)accountOrDeviceDidUpdate:(id)update;
- (void)addDataSource:(id)source;
- (void)atHomeLevelChanged:(int64_t)changed;
- (void)channel:(id)channel didObserveDevicesAdded:(id)added lost:(id)lost updated:(id)updated;
- (void)channel:(id)channel didObservePrimaryResidentChange:(id)change;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher;
- (void)confirmAsResident;
- (void)confirmOnAvailability;
- (void)confirmWithCompletionHandler:(id)handler;
- (void)discoverPrimaryResidentForRequester:(id)requester;
- (void)discoveryManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device primaryResidentGenerationID:(id)d error:(id)error;
- (void)discoveryManager:(id)manager didCompleteInitialDiscoveryAttemptWithError:(id)error;
- (void)discoveryManager:(id)manager didNotCompleteDiscoveryWithError:(id)error;
- (void)electResidentDevice:(unint64_t)device;
- (void)handleCurrentDeviceChanged:(id)changed;
- (void)handlePrimaryResidentDiscovered:(id)discovered primaryResidentGenerationID:(id)d;
- (void)handleSetPreferredResidentSelectionMessage:(id)message;
- (void)invalidate;
- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)update isReachable:(BOOL)reachable;
- (void)notifyClientsOfUpdatedResidentDevice:(id)device;
- (void)notifyResidentAvailable:(BOOL)available;
- (void)notifyUpdatedPrimaryResident:(id)resident previousPrimaryResident:(id)primaryResident;
- (void)reAssertAsTheCurrentPrimaryResident;
- (void)removeResidentDevice:(id)device;
- (void)residentSelectionManager:(id)manager didFailToSelectWithError:(id)error;
- (void)residentSelectionManager:(id)manager didReceivePrimaryResidentIdsIdentifier:(id)identifier selectionTimestamp:(id)timestamp;
- (void)residentSelectionManager:(id)manager didSelectPrimaryResident:(id)resident selectionInfo:(id)info electionLogEvent:(id)event completion:(id)completion;
- (void)residentSelectionManager:(id)manager didUpdateActiveNodes:(id)nodes;
- (void)residentSelectionManager:(id)manager didUpdatePreferredResidentsList:(id)list;
- (void)residentSelectionManager:(id)manager didUpdateResidentDevice:(id)device;
- (void)residentSelectionManager:(id)manager didUpdateResidentSelectionInfo:(id)info completion:(id)completion;
- (void)residentSelectionManager:(id)manager reassertAsTheCurrentPrimaryWithSelectionTimestamp:(id)timestamp;
- (void)residentSelectionManagerReadyAsResident:(id)resident;
- (void)run;
- (void)sawGenerationID:(id)d forDevice:(id)device;
- (void)setResidentAvailable:(BOOL)available;
- (void)setResidentSupported:(BOOL)supported;
- (void)timerDidFire:(id)fire;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updatePrimaryResidentWithUUID:(id)d actions:(id)actions;
- (void)updateResidentAvailability;
@end

@implementation HMDResidentDeviceManagerRoarV3

+ (id)logCategory
{
  if (logCategory__hmf_once_t123 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t123, &__block_literal_global_278_250124);
  }

  v3 = logCategory__hmf_once_v124;

  return v3;
}

- (HMDResidentDevice)primaryResidentDevice
{
  v18 = *MEMORY[0x277D85DE8];
  residentDevicesSet = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  primaryResidentUUID = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentUUID];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = residentDevicesSet;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [primaryResidentUUID isEqual:identifier];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)residentDevicesSet
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_residentDevices);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)primaryResidentUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDResidentDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)_residentDeviceDisplayName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  appleMediaAccessories = [home appleMediaAccessories];

  obj = appleMediaAccessories;
  v7 = [appleMediaAccessories countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        device = [v11 device];
        identifier = [device identifier];
        device2 = [nameCopy device];
        identifier2 = [device2 identifier];
        v16 = [identifier isEqual:identifier2];

        if (v16)
        {
          name = [v11 name];
          goto LABEL_14;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  obj = [nameCopy device];
  name2 = [obj name];
  v18 = name2;
  if (name2)
  {
    name3 = name2;
  }

  else
  {
    name3 = [nameCopy name];
  }

  name = name3;

LABEL_14:

  return name;
}

- (void)_checkForUnknownLocationAndRetry
{
  v24 = *MEMORY[0x277D85DE8];
  residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
  residentLocationRawValue = [residentLocationHandler residentLocationRawValue];
  unsignedIntegerValue = [residentLocationRawValue unsignedIntegerValue];

  if (unsignedIntegerValue == 100)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _startRetryTimer];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      residentLocationRetryTimer = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentLocationRetryTimer];
      fireDate = [residentLocationRetryTimer fireDate];
      [fireDate timeIntervalSinceNow];
      v18 = 138543874;
      v19 = v9;
      v20 = 2112;
      v21 = @"Unknown";
      v22 = 2048;
      v23 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Resident location is: %@, retrying after %.03f seconds", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = StringFromHMDResidentLocation(unsignedIntegerValue);
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Resident location determined to: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 _removeRetryTimer];
  }
}

- (void)_determineResidentLocationWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Determining resident location", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  residentLocationRetryTimer = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentLocationRetryTimer];
  [residentLocationRetryTimer suspend];

  residentStatusChannel = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentStatusChannel];
  isConnected = [residentStatusChannel isConnected];

  if (isConnected)
  {
    residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentLocationHandler];
    [residentLocationHandler requestResidentLocation];

    residentStatusChannel2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentStatusChannel];
    presentResidentStatuses = [residentStatusChannel2 presentResidentStatuses];
    v15 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy _electorForDeterminingResidentLocationFromPresentResidentStatuses:presentResidentStatuses];

    residentLocationHandler2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentLocationHandler];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __75__HMDResidentDeviceManagerRoarV3__determineResidentLocationWithCompletion___block_invoke;
    v22[3] = &unk_278689A68;
    v22[4] = selfCopy;
    v23 = completionCopy;
    [residentLocationHandler2 determineHomeOrAwayUsingElector:v15 withCompletion:v22];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not connected to StatusKit, unable to determine resident location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDResidentDeviceManagerRoarV3 *)v18 _checkForUnknownLocationAndRetry];
    v21 = _Block_copy(completionCopy);
    v15 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0);
    }
  }
}

void __75__HMDResidentDeviceManagerRoarV3__determineResidentLocationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Determining resident home/away state encountered error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 32) _checkForUnknownLocationAndRetry];
  v8 = _Block_copy(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v3);
  }
}

- (void)_removeRetryTimer
{
  residentLocationRetryTimer = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
  [residentLocationRetryTimer cancel];

  [(HMDResidentDeviceManagerRoarV3 *)self setResidentLocationRetryTimer:0];
}

- (void)_startRetryTimer
{
  residentLocationRetryTimer = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];

  if (!residentLocationRetryTimer)
  {
    _createBackoffTimer = [(HMDResidentDeviceManagerRoarV3 *)self _createBackoffTimer];
    [(HMDResidentDeviceManagerRoarV3 *)self setResidentLocationRetryTimer:_createBackoffTimer];

    residentLocationRetryTimer2 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
    [residentLocationRetryTimer2 setDelegate:self];

    queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
    residentLocationRetryTimer3 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
    [residentLocationRetryTimer3 setDelegateQueue:queue];
  }

  residentLocationRetryTimer4 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
  [residentLocationRetryTimer4 resume];
}

- (id)_createBackoffTimer
{
  v2 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:4 maximumTimeInterval:0 exponentialFactor:300.0 options:43200.0];

  return v2;
}

- (void)_handleHomeLocationChangedNotification:(id)notification
{
  if ([(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDResidentDeviceManagerRoarV3__handleHomeLocationChangedNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __73__HMDResidentDeviceManagerRoarV3__handleHomeLocationChangedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Determining resident location due to home location change", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _determineResidentLocationWithCompletion:0];
}

- (void)timerDidFire:(id)fire
{
  v19 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  residentLocationRetryTimer = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];

  if (residentLocationRetryTimer == fireCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Determining resident location due to retry timer firing", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _determineResidentLocationWithCompletion:0];
  }

  else
  {
    primaryResidentPeriodicReassertTimer = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentPeriodicReassertTimer];

    if (primaryResidentPeriodicReassertTimer == fireCopy)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident periodic re-assert timer fired", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 _startPrimaryResidentPeriodicReassertionTimer];
      residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 residentSelectionManager];
      localPreferredResidentsList = [residentSelectionManager localPreferredResidentsList];
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 _publishCurrentResidentStatusWithReason:5 preferredResidentsList:localPreferredResidentsList];
    }
  }
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v16 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = NSStringFromSelector(a2);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)residentSelectionManager:(id)manager didUpdatePreferredResidentsList:(id)list
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  listCopy = list;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Publishing updated resident status because preferred residents list was updated", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentSelectionManager];
  localPreferredResidentsList = [residentSelectionManager localPreferredResidentsList];
  [(HMDResidentDeviceManagerRoarV3 *)selfCopy _publishCurrentResidentStatusWithReason:4 preferredResidentsList:localPreferredResidentsList];
}

- (void)residentSelectionManager:(id)manager didUpdateResidentSelectionInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  [backingStore updateResidentSelectionInfoTo:infoCopy completion:completionCopy];
}

- (void)residentSelectionManager:(id)manager reassertAsTheCurrentPrimaryWithSelectionTimestamp:(id)timestamp
{
  [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentSelectionTimestamp:timestamp];

  [(HMDResidentDeviceManagerRoarV3 *)self reAssertAsTheCurrentPrimaryResident];
}

- (void)residentSelectionManager:(id)manager didUpdateResidentDevice:(id)device
{
  deviceCopy = device;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v7 = [residentDevices containsObject:deviceCopy];

  if ((v7 & 1) == 0)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _addResidentDevice:deviceCopy];
  }

  [(HMDResidentDeviceManagerRoarV3 *)self notifyClientsOfUpdatedResidentDevice:deviceCopy];
}

- (void)residentSelectionManager:(id)manager didUpdateActiveNodes:(id)nodes
{
  nodesCopy = nodes;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  if ([residentSelectionManager currentModeType] != 1)
  {

    goto LABEL_5;
  }

  isCurrentDeviceConfirmedPrimaryResident = [(HMDResidentDeviceManagerRoarV3 *)self isCurrentDeviceConfirmedPrimaryResident];

  v8 = nodesCopy;
  if (isCurrentDeviceConfirmedPrimaryResident)
  {
LABEL_5:
    [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentReachabilityFromReachableResidents:nodesCopy source:7];
    v8 = nodesCopy;
  }
}

- (void)residentSelectionManager:(id)manager didReceivePrimaryResidentIdsIdentifier:(id)identifier selectionTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentSelectionTimestamp:timestampCopy];
  v11 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceWithIDSIdentifier:identifierCopy];

  identifier = [v11 identifier];
  [(HMDResidentDeviceManagerRoarV3 *)self _handleUpdatedPrimaryFromSelection:identifier];
}

- (void)residentSelectionManagerReadyAsResident:(id)resident
{
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  localPreferredResidentsList = [residentSelectionManager localPreferredResidentsList];
  [(HMDResidentDeviceManagerRoarV3 *)self _publishCurrentResidentStatusWithReason:1 preferredResidentsList:localPreferredResidentsList];
}

- (void)residentSelectionManager:(id)manager didFailToSelectWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Selection failed with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)residentSelectionManager:(id)manager didSelectPrimaryResident:(id)resident selectionInfo:(id)info electionLogEvent:(id)event completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  residentCopy = resident;
  infoCopy = info;
  eventCopy = event;
  completionCopy = completion;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    shortDescription = [residentCopy shortDescription];
    *buf = 138543874;
    v33 = v21;
    v34 = 2112;
    v35 = shortDescription;
    v36 = 2112;
    v37 = infoCopy;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@residentSelectionManager didSelectPrimaryResident: %@ selectionInfo: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  if ([residentCopy isCurrentDevice])
  {
    [MEMORY[0x277CCAD78] UUID];
  }

  else
  {
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentGenerationID];
  }
  v23 = ;
  selectionTimestamp = [infoCopy selectionTimestamp];
  [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updatePrimaryResidentSelectionTimestamp:selectionTimestamp];

  if (!infoCopy)
  {
    backingStore = [(HMDResidentDeviceManagerRoarV3 *)selfCopy backingStore];
    [backingStore updateResidentSelectionInfoTo:0 completion:completionCopy];

    goto LABEL_10;
  }

  homeSupportsResidentSelection = [(HMDResidentDeviceManagerRoarV3 *)selfCopy homeSupportsResidentSelection];
  backingStore2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy backingStore];
  [backingStore2 updateResidentSelectionInfoTo:infoCopy completion:completionCopy];

  if (homeSupportsResidentSelection)
  {
LABEL_10:
    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _handleUpdatedPrimaryResidentDevice:residentCopy previousPrimaryResident:primaryResidentDevice generationID:v23 changeSource:1];

    goto LABEL_11;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __126__HMDResidentDeviceManagerRoarV3_residentSelectionManager_didSelectPrimaryResident_selectionInfo_electionLogEvent_completion___block_invoke;
  v29[3] = &unk_278688D58;
  v29[4] = selfCopy;
  v30 = residentCopy;
  v31 = v23;
  [(HMDResidentDeviceManagerRoarV3 *)selfCopy _handleInitialTransitionToResidentSelectionWithCompletion:v29];

LABEL_11:
}

void __126__HMDResidentDeviceManagerRoarV3_residentSelectionManager_didSelectPrimaryResident_selectionInfo_electionLogEvent_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 primaryResidentDevice];
  [v2 _handleUpdatedPrimaryResidentDevice:v3 previousPrimaryResident:v4 generationID:a1[6] changeSource:1];
}

- (void)_handleUpdatedPrimaryFromSelection:(id)selection
{
  v25 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  primaryResidentUUID = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentUUID];
  v6 = [selectionCopy isEqual:primaryResidentUUID];

  if ((v6 & 1) == 0)
  {
    v7 = [(HMDResidentDeviceManagerRoarV3 *)self residentWithUUID:selectionCopy];
    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
    isCurrentDevice = [v7 isCurrentDevice];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (isCurrentDevice)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Selection notified that we are the primary. Becoming the primary resident.", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy _handleUpdatedPrimaryResidentDevice:v7 previousPrimaryResident:primaryResidentDevice generationID:uUID changeSource:6];
    }

    else
    {
      if (v13)
      {
        v16 = HMFGetLogIdentifier();
        shortDescription = [v7 shortDescription];
        shortDescription2 = [primaryResidentDevice shortDescription];
        v19 = 138543874;
        v20 = v16;
        v21 = 2114;
        v22 = shortDescription;
        v23 = 2114;
        v24 = shortDescription2;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Selection notified a new primary resident: %{public}@. Current Primary: %{public}@. Kicking off a primary resident discovery", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy _discoverPrimaryResidentForRequester:0];
    }
  }
}

- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)to previousPrimaryResident:(id)resident
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  residentCopy = resident;
  if (!toCopy)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    residentDevices = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentDevices];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateReachability:0 forResidentDevices:residentDevices source:6];
    goto LABEL_8;
  }

  if ([toCopy isCurrentDevice])
  {
    residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
    currentModeType = [residentSelectionManager currentModeType];

    if (currentModeType == 1)
    {
      v10 = MEMORY[0x277CBEB58];
      residentSelectionManager2 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
      locallyReachableResidents = [residentSelectionManager2 locallyReachableResidents];
      residentDevices = [v10 setWithSet:locallyReachableResidents];

      [residentDevices addObject:toCopy];
      [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentReachabilityFromReachableResidents:residentDevices source:7];
LABEL_8:
    }
  }
}

- (double)_primaryResidentPeriodicReassertionTimeInterval
{
  v36 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  primaryResidentPeriodicReassertDurationSeconds = [dataSource primaryResidentPeriodicReassertDurationSeconds];

  if (primaryResidentPeriodicReassertDurationSeconds)
  {
    unsignedIntValue = [primaryResidentPeriodicReassertDurationSeconds unsignedIntValue];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v9;
      v30 = 2048;
      v31 = *&unsignedIntValue;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Using primaryResidentPeriodicReassertDurationSeconds from server bag: %lu", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    *&unsignedIntValue = 0.0;
  }

  dataSource2 = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  primaryResidentPeriodicReassertSlopDurationSeconds = [dataSource2 primaryResidentPeriodicReassertSlopDurationSeconds];

  if (primaryResidentPeriodicReassertSlopDurationSeconds)
  {
    *&v12 = [primaryResidentPeriodicReassertSlopDurationSeconds unsignedIntValue];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v16;
      v30 = 2048;
      v31 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Using primaryResidentPeriodicReassertSlopDurationSeconds from server bag: %lu", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (*&unsignedIntValue != 0.0)
    {
      if (LODWORD(v12))
      {
        v17 = unsignedIntValue + arc4random() % LODWORD(v12);
        goto LABEL_14;
      }

LABEL_13:
      v12 = 0.0;
      v17 = unsignedIntValue;
LABEL_14:
      v18 = v17;
      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        v28 = 138544130;
        v29 = v22;
        v30 = 2048;
        v31 = v18;
        v32 = 2048;
        v33 = unsignedIntValue;
        v34 = 2048;
        v35 = v12;
        v23 = "%{public}@Determined reassert interval: %f seconds (base: %lu seconds, slop: %lu seconds)";
        v24 = v21;
        v25 = 42;
LABEL_18:
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, v23, &v28, v25);

        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else if (*&unsignedIntValue != 0.0)
  {
    goto LABEL_13;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v21 = HMFGetOSLogHandle();
  v18 = 0.0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v22;
    v23 = "%{public}@Primary resident periodic re-assert duration is 0, defaulting to 0";
    v24 = v21;
    v25 = 12;
    goto LABEL_18;
  }

LABEL_19:

  objc_autoreleasePoolPop(v19);
  return v18;
}

- (void)_stopPrimaryResidentPeriodicReassertionTimer
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping primary resident periodic re-assert timer", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  primaryResidentPeriodicReassertTimer = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentPeriodicReassertTimer];
  [primaryResidentPeriodicReassertTimer cancel];

  [(HMDResidentDeviceManagerRoarV3 *)selfCopy setPrimaryResidentPeriodicReassertTimer:0];
}

- (void)_startPrimaryResidentPeriodicReassertionTimer
{
  v23 = *MEMORY[0x277D85DE8];
  [(HMDResidentDeviceManagerRoarV3 *)self _primaryResidentPeriodicReassertionTimeInterval];
  v4 = v3;
  v5 = fabs(v3);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5 >= 2.22044605e-16)
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v11;
      v21 = 2048;
      v22 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Starting primary resident periodic re-assert timer with interval: %f seconds", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    dataSource = [(HMDResidentDeviceManagerRoarV3 *)selfCopy dataSource];
    timerProvider = [dataSource timerProvider];
    v14 = [timerProvider timerWithTimeInterval:0 options:v4];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy setPrimaryResidentPeriodicReassertTimer:v14];

    primaryResidentPeriodicReassertTimer = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentPeriodicReassertTimer];
    [primaryResidentPeriodicReassertTimer setDelegate:selfCopy];

    queue = [(HMDResidentDeviceManagerRoarV3 *)selfCopy queue];
    primaryResidentPeriodicReassertTimer2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentPeriodicReassertTimer];
    [primaryResidentPeriodicReassertTimer2 setDelegateQueue:queue];

    primaryResidentPeriodicReassertTimer3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentPeriodicReassertTimer];
    [primaryResidentPeriodicReassertTimer3 resume];
  }

  else
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident periodic re-assert interval is 0, not starting timer", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_updatePrimaryResidentPeriodicReassertionTimerWithPrimaryResidentDevice:(id)device
{
  isCurrentDevice = [device isCurrentDevice];
  primaryResidentPeriodicReassertTimer = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentPeriodicReassertTimer];
  v6 = primaryResidentPeriodicReassertTimer;
  if (isCurrentDevice)
  {

    if (!v6)
    {

      [(HMDResidentDeviceManagerRoarV3 *)self _startPrimaryResidentPeriodicReassertionTimer];
    }
  }

  else
  {

    if (v6)
    {

      [(HMDResidentDeviceManagerRoarV3 *)self _stopPrimaryResidentPeriodicReassertionTimer];
    }
  }
}

- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy isCurrentDevice] && !self->_primaryResidentTransaction)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Taking OS transaction since this device is now the primary resident", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.primary-resident"];
    primaryResidentTransaction = self->_primaryResidentTransaction;
    self->_primaryResidentTransaction = v14;
    goto LABEL_11;
  }

  if (([deviceCopy isCurrentDevice] & 1) == 0 && self->_primaryResidentTransaction)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Releasing OS transaction since this device is no longer the primary resident", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    primaryResidentTransaction = self->_primaryResidentTransaction;
    self->_primaryResidentTransaction = 0;
LABEL_11:
  }
}

- (void)_handleUpdatedPrimaryResidentDevice:(id)device previousPrimaryResident:(id)resident generationID:(id)d changeSource:(unint64_t)source
{
  v91 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  residentCopy = resident;
  obj = d;
  dCopy = d;
  isCurrentDevice = [deviceCopy isCurrentDevice];
  v12 = isCurrentDevice;
  if (deviceCopy)
  {
    isReachable = [deviceCopy isReachable];
    if (v12)
    {
LABEL_3:
      v14 = v12;
      residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
      v81 = [residentDevices count] == 1;

      v12 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    isReachable = 1;
    if (isCurrentDevice)
    {
      goto LABEL_3;
    }
  }

  v81 = 0;
LABEL_6:
  v78 = (deviceCopy == 0) | v12;
  v79 = v12;
  if (!((residentCopy != 0) & isReachable | (deviceCopy == 0) | v12 & 1))
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _updateReachabilityFromWorkingStoreExceptResident:deviceCopy];
  }

  identifier = [residentCopy identifier];
  identifier2 = [deviceCopy identifier];
  v18 = HMFEqualObjects();

  if (isReachable)
  {
    if (!deviceCopy)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v84 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      residentDevices2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentDevices];
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateReachability:0 forResidentDevices:residentDevices2 source:6];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v84 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Marking new primary resident as reachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    if (v18)
    {
      v28 = 5;
    }

    else
    {
      v28 = 4;
    }

    [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 _updateReachability:1 forResidentDevice:deviceCopy source:v28 forceUpdate:v81];
  }

  if (v18)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentGenerationID:dCopy];
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      if (source - 1 > 6)
      {
        v33 = @"resident removed";
      }

      else
      {
        v33 = off_278685270[source - 1];
      }

      shortDescription = [residentCopy shortDescription];
      shortDescription2 = [deviceCopy shortDescription];
      *buf = 138544130;
      v84 = v32;
      v85 = 2112;
      v86 = v33;
      v87 = 2112;
      v88 = shortDescription;
      v89 = 2112;
      v90 = shortDescription2;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating primary resident due to %@, from %@ to %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    os_unfair_lock_lock_with_options();
    identifier3 = [deviceCopy identifier];
    primaryResidentUUID = selfCopy3->_primaryResidentUUID;
    selfCopy3->_primaryResidentUUID = identifier3;

    v38 = HMFEqualObjects();
    if ((v38 & 1) == 0)
    {
      objc_storeStrong(&selfCopy3->_primaryResidentGenerationID, obj);
    }

    os_unfair_lock_unlock(&selfCopy3->_lock);
    if (![(HMDResidentDeviceManagerRoarV3 *)selfCopy3 isActingAsResident])
    {
      if (residentCopy)
      {
        reachabilityObserver = [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 reachabilityObserver];
        device = [residentCopy device];
        deviceAddress = [device deviceAddress];
        [reachabilityObserver removeListener:selfCopy3 forDeviceAddress:deviceAddress];

        deviceMonitor = [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 deviceMonitor];
        device2 = [residentCopy device];
        [deviceMonitor stopMonitoringDevice:device2 forClient:selfCopy3];
      }

      if (deviceCopy)
      {
        reachabilityObserver2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 reachabilityObserver];
        device3 = [deviceCopy device];
        deviceAddress2 = [device3 deviceAddress];
        [reachabilityObserver2 addListener:selfCopy3 forDeviceAddress:deviceAddress2];

        deviceMonitor2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 deviceMonitor];
        device4 = [deviceCopy device];
        [deviceMonitor2 startMonitoringDevice:device4 withInitialReachability:0 forClient:selfCopy3];

        deviceMonitor3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 deviceMonitor];
        unreachableDevices = [deviceMonitor3 unreachableDevices];
        device5 = [deviceCopy device];
        -[HMDResidentDeviceManagerRoarV3 _setResident:reachableOverIDS:andNotify:](selfCopy3, "_setResident:reachableOverIDS:andNotify:", deviceCopy, [unreachableDevices containsObject:device5] ^ 1, 0);
      }
    }

    [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 _updatePrimaryResidentTransactionWithPrimaryResidentDevice:deviceCopy];
    if (!(v81 | (([(HMDResidentDeviceManagerRoarV3 *)selfCopy3 homeSupportsResidentSelection]& v79 & 1) == 0)))
    {
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 _refreshAllResidentsReachabilityFromStatusKit];
    }

    [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 notifyUpdatedPrimaryResident:deviceCopy previousPrimaryResident:residentCopy];
    if ((v38 & 1) == 0)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = selfCopy3;
      v54 = HMFGetOSLogHandle();
      v55 = os_log_type_enabled(v54, OS_LOG_TYPE_INFO);
      if (v79)
      {
        if (v55)
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543618;
          v84 = v56;
          v85 = 2114;
          v86 = dCopy;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Using newly generated primaryResidentGenerationID = %{public}@", buf, 0x16u);
        }
      }

      else if (v55)
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v57;
        v85 = 2114;
        v86 = dCopy;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Updating primaryResidentGenerationID = %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v52);
    }

    if (v78)
    {
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 _teardownSessionWithPrimaryResidentDevice];
    }

    else
    {
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 _setupSessionWithPrimaryResidentDevice];
    }

    [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 _notifyPrimaryResidentChanged:deviceCopy previousPrimaryResident:residentCopy changeSource:source];
  }

  if (deviceCopy)
  {
    primaryDiscoveryManager = [(HMDResidentDeviceManagerRoarV3 *)self primaryDiscoveryManager];
    [primaryDiscoveryManager cancel];

    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      v60 = logger;
      identifier4 = [deviceCopy identifier];
      *buf = 138412290;
      v84 = identifier4;
      _os_signpost_emit_with_name_impl(&dword_229538000, v60, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HH2ElectedPrimaryResident", "electedPrimaryResidentIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
    }
  }

  [(HMDResidentDeviceManagerRoarV3 *)self _handleReachabilityAfterPrimaryResidentChangedTo:deviceCopy previousPrimaryResident:residentCopy];
  device6 = [deviceCopy device];
  if (-[HMDResidentDeviceManagerRoarV3 isCurrentDeviceConfirmedPrimaryResident](self, "isCurrentDeviceConfirmedPrimaryResident") && [device6 isCurrentDevice])
  {
    backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
    availableResidentDevices = [(HMDResidentDeviceManagerRoarV3 *)self availableResidentDevices];
    [backingStore updateIdentifiersForAvailableResidentDevices:availableResidentDevices];
  }

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  if ([residentSelectionManager currentModeType] == 3)
  {
  }

  else
  {
    residentSelectionManager2 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
    v67 = [residentSelectionManager2 currentModeType] == 2;

    if (!v67)
    {
      goto LABEL_65;
    }
  }

  if (([deviceCopy isCurrentDevice] & 1) != 0 || objc_msgSend(residentCopy, "isCurrentDevice") && -[HMDResidentDeviceManagerRoarV3 isActingAsResident](self, "isActingAsResident"))
  {
    v68 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = HMFGetLogIdentifier();
      [deviceCopy isCurrentDevice];
      v72 = HMFBooleanToString();
      [residentCopy isCurrentDevice];
      v73 = HMFBooleanToString();
      *buf = 138543874;
      v84 = v71;
      v85 = 2112;
      v86 = v72;
      v87 = 2112;
      v88 = v73;
      _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Publishing updated resident status because became primary: %@ was previous primary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v68);
    if ([deviceCopy isCurrentDevice])
    {
      v74 = 2;
    }

    else
    {
      v74 = 3;
    }

    residentSelectionManager3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy4 residentSelectionManager];
    localPreferredResidentsList = [residentSelectionManager3 localPreferredResidentsList];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy4 _publishCurrentResidentStatusWithReason:v74 preferredResidentsList:localPreferredResidentsList];
  }

  [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentPeriodicReassertionTimerWithPrimaryResidentDevice:deviceCopy];
LABEL_65:
}

- (void)_notifyPrimaryResidentChanged:(id)changed previousPrimaryResident:(id)resident changeSource:(unint64_t)source
{
  v28 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  residentCopy = resident;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__HMDResidentDeviceManagerRoarV3__notifyPrimaryResidentChanged_previousPrimaryResident_changeSource___block_invoke;
  aBlock[3] = &unk_278685218;
  objc_copyWeak(v24, &location);
  v10 = changedCopy;
  v22 = v10;
  v11 = residentCopy;
  v23 = v11;
  v24[1] = source;
  v12 = _Block_copy(aBlock);
  residentSelectionInfo = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionInfo];
  selectionTimestamp = [residentSelectionInfo selectionTimestamp];
  primaryResidentSelectionTimestamp = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentSelectionTimestamp];
  v16 = [selectionTimestamp compare:primaryResidentSelectionTimestamp] == -1;

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@ResidentSelectionInfo is out of date submit the logevent when it is synced", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy setPendingNotifyPrimaryChanged:v12];
  }

  else
  {
    v12[2](v12);
  }

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

void __101__HMDResidentDeviceManagerRoarV3__notifyPrimaryResidentChanged_previousPrimaryResident_changeSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained isActingAsResident];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    [WeakRetained _submitLogeventForPrimaryResident:v3 previousPrimaryResident:v4 changeSource:*(a1 + 56)];
  }

  else
  {
    [WeakRetained _notifyUserPreferredResidentReachability:v3 previousPrimaryResident:v4];
  }
}

- (void)_submitLogeventForPrimaryResident:(id)resident previousPrimaryResident:(id)primaryResident changeSource:(unint64_t)source
{
  v117 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  primaryResidentCopy = primaryResident;
  if (!primaryResidentCopy && source != 6)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Skip not a resident selection primary changed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_63;
  }

  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  residentSelectionInfo = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionInfo];
  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  minimumHomeKitVersionForResidentSelection = [residentSelectionManager minimumHomeKitVersionForResidentSelection];

  if (primaryResidentCopy)
  {
    device = [primaryResidentCopy device];
    version = [device version];
    v84 = [version isAtLeastVersion:minimumHomeKitVersionForResidentSelection] ^ 1;
  }

  else
  {
    v84 = 0;
  }

  v87 = residentSelectionInfo;
  if ([residentSelectionInfo currentModeType] == 2)
  {
    currentResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
    device2 = [currentResidentDevice device];
    idsIdentifier = [device2 idsIdentifier];
    preferredResidentIDSIdentifier = [residentSelectionInfo preferredResidentIDSIdentifier];
    v83 = [idsIdentifier isEqual:preferredResidentIDSIdentifier];

    device3 = [residentCopy device];
    idsIdentifier2 = [device3 idsIdentifier];
    preferredResidentIDSIdentifier2 = [residentSelectionInfo preferredResidentIDSIdentifier];
    v27IdsIdentifier = idsIdentifier2;
    v30 = preferredResidentIDSIdentifier2;
  }

  else
  {
    preferredResidentUUIDs = [(HMDResidentDeviceManagerRoarV3 *)self preferredResidentUUIDs];
    device3 = [preferredResidentUUIDs firstObject];

    currentResidentDevice2 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
    device4 = [currentResidentDevice2 device];
    idsIdentifier3 = [device4 idsIdentifier];
    v83 = [idsIdentifier3 isEqual:device3];

    idsIdentifier2 = [residentCopy device];
    v27IdsIdentifier = [idsIdentifier2 idsIdentifier];
    preferredResidentIDSIdentifier2 = v27IdsIdentifier;
    v30 = device3;
  }

  v82 = [v27IdsIdentifier isEqual:v30];

  homeSupportsResidentSelection = [(HMDResidentDeviceManagerRoarV3 *)self homeSupportsResidentSelection];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v90 = minimumHomeKitVersionForResidentSelection;
  v94 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
  selfCopy2 = self;
  v86 = primaryResidentCopy;
  if (!v94)
  {
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v31 = 0;
    v101 = 0;
    v102 = 0;
    v32 = 0;
    goto LABEL_60;
  }

  v98 = 0;
  v99 = 0;
  v97 = 0;
  v31 = 0;
  v101 = 0;
  v102 = 0;
  v32 = 0;
  v91 = *v111;
  do
  {
    v33 = 0;
    do
    {
      if (*v111 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v100 = v33;
      v34 = *(*(&v110 + 1) + 8 * v33);
      device5 = [v34 device];
      productInfo = [device5 productInfo];
      softwareVersion = [productInfo softwareVersion];

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      appleMediaAccessories = [home appleMediaAccessories];
      v38 = [appleMediaAccessories countByEnumeratingWithState:&v106 objects:v115 count:16];
      v103 = v32;
      if (v38)
      {
        v39 = v38;
        v95 = softwareVersion;
        v96 = v31;
        v40 = *v107;
        while (2)
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v107 != v40)
            {
              objc_enumerationMutation(appleMediaAccessories);
            }

            v42 = *(*(&v106 + 1) + 8 * i);
            device6 = [v42 device];
            identifier = [device6 identifier];
            v45 = v34;
            device7 = [v34 device];
            identifier2 = [device7 identifier];
            v48 = [identifier isEqual:identifier2];

            if (v48)
            {
              softwareVersion = [v42 softwareVersion];

              minimumHomeKitVersionForResidentSelection = v90;
              v31 = v96;
              v34 = v45;
              goto LABEL_27;
            }

            v34 = v45;
          }

          v39 = [appleMediaAccessories countByEnumeratingWithState:&v106 objects:v115 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }

        minimumHomeKitVersionForResidentSelection = v90;
        softwareVersion = v95;
        v31 = v96;
      }

LABEL_27:

      if (softwareVersion)
      {
        objc_msgSend_operatingSystemVersion(softwareVersion);
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v49 = HMFOperatingSystemVersionCompare();
      if (homeSupportsResidentSelection)
      {
        if (softwareVersion)
        {
          objc_msgSend_operatingSystemVersion(softwareVersion);
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v50 = HMFOperatingSystemVersionCompare() != 1;
        if (v31)
        {
LABEL_37:
          if (![v31 isGreaterThanVersion:softwareVersion])
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v50 = 0;
        if (v31)
        {
          goto LABEL_37;
        }
      }

      v51 = softwareVersion;

      v31 = v51;
LABEL_39:
      if (v49 == 1)
      {
        if (!v50)
        {
          goto LABEL_53;
        }

        v52 = v98;
        if (v98)
        {
          v53 = softwareVersion;
          v54 = v97;
          if (![v98 isGreaterThanVersion:softwareVersion])
          {
            goto LABEL_43;
          }
        }

        else
        {
          v53 = softwareVersion;
          v54 = v97;
        }
      }

      else
      {
        v52 = v97;
        v53 = v98;
        if (v97)
        {
          v54 = softwareVersion;
          if (([v97 isGreaterThanVersion:softwareVersion] & 1) == 0)
          {
LABEL_43:
            if (!v99)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v54 = softwareVersion;
        }
      }

      v55 = softwareVersion;

      v97 = v54;
      v98 = v53;
      if (!v99)
      {
        goto LABEL_52;
      }

LABEL_51:
      if ([v99 isGreaterThanVersion:softwareVersion])
      {
LABEL_52:
        v56 = softwareVersion;

        v99 = v56;
      }

LABEL_53:
      v32 = v103;
      if (!v103 || ([v34 device], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "version"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isGreaterThanVersion:", v103), v58, v57, v59))
      {
        device8 = [v34 device];
        version2 = [device8 version];

        v32 = version2;
      }

      device9 = [v34 device];
      version3 = [device9 version];
      v64 = [version3 isAtLeastVersion:minimumHomeKitVersionForResidentSelection];

      v101 += v64;
      v102 += v64 ^ 1;

      v33 = v100 + 1;
    }

    while (v100 + 1 != v94);
    v94 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
  }

  while (v94);
LABEL_60:

  [residentCopy device];
  v66 = v65 = v32;
  version4 = [v66 version];
  v104 = v65;
  v68 = [version4 isAtLeastVersion:v65];

  v69 = [HMDResidentSelectionPrimaryResidentChangedLogEvent alloc];
  isCurrentDevice = [residentCopy isCurrentDevice];
  currentModeType = [v87 currentModeType];
  residentSelectionManager2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 residentSelectionManager];
  v73 = v31;
  primaryChangedReason = [residentSelectionManager2 primaryChangedReason];
  uuid = [home uuid];
  v76 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)v69 initWithPrimaryResidentDidChange:1 isElectedDevicePreferred:v82 isCurrentDevicePrimary:isCurrentDevice isCurrentDevicePreferred:v83 isPreviousPrimaryRev2:v84 isElectedDeviceLatestSWVersionInHome:v68 residentSelectionMode:currentModeType triggerReason:primaryChangedReason numResidentsREV3Capable:v101 numResidentsREV3Incompatible:v102 minimumVersionInHome:v73 minimumParticipatingtvOS17Version:v98 minimumParticipatingAllVersion:v99 minimumParticipatingtvOS18Version:v97 homeUUID:uuid];

  v77 = objc_autoreleasePoolPush();
  v78 = selfCopy2;
  v79 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
  {
    v80 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v80;
    *&buf[12] = 2112;
    *&buf[14] = v76;
    _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed logEvent: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v77);
  logEventSubmitter = [home logEventSubmitter];
  [logEventSubmitter submitLogEvent:v76];

  primaryResidentCopy = v86;
LABEL_63:
}

- (void)_updateReachability:(BOOL)reachability forResidentDevices:(id)devices source:(unint64_t)source
{
  reachabilityCopy = reachability;
  v18 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [devicesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(devicesCopy);
        }

        [(HMDResidentDeviceManagerRoarV3 *)self _updateReachability:reachabilityCopy forResidentDevice:*(*(&v13 + 1) + 8 * v12++) source:source];
      }

      while (v10 != v12);
      v10 = [devicesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)resident
{
  v20 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  residentDevicesSet = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v6 = [residentDevicesSet mutableCopy];

  [v6 removeObject:residentCopy];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating resident reachability from database", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue = [(HMDResidentDeviceManagerRoarV3 *)selfCopy queue];
  v13 = [v11 initWithQueue:queue];

  backingStore = [(HMDResidentDeviceManagerRoarV3 *)selfCopy backingStore];
  v15 = [backingStore residentsRequiringReachabilityUpdate:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke;
  v17[3] = &unk_2786851F0;
  v17[4] = selfCopy;
  v16 = [v15 inContext:v13 then:v17];
}

uint64_t __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2;
  v3[3] = &unk_278685038;
  v3[4] = *(a1 + 32);
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
  return 1;
}

void __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isReachable];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v10 = [v3 shortDescription];
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating resident reachability from database to %@ for: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) _updateReachability:v4 ^ 1u forResidentDevice:v3 source:3];
}

- (int64_t)atHomeLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_home);
  atHomeLevel = [WeakRetained atHomeLevel];

  return atHomeLevel;
}

- (BOOL)isOwnerUser
{
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  isOwnerUser = [home isOwnerUser];

  return isOwnerUser;
}

- (BOOL)isResidentEnabled
{
  ourSelf = [(HMDResidentDeviceManagerRoarV3 *)self ourSelf];
  isEnabled = [ourSelf isEnabled];

  return isEnabled;
}

- (void)updatePrimaryResidentWithUUID:(id)d actions:(id)actions
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  actionsCopy = actions;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = NSStringFromSelector(a2);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)_handleCloudZoneReadyNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
}

- (id)_residentsFromResidentStatuses:(id)statuses residentDevices:(id)devices
{
  devicesCopy = devices;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__HMDResidentDeviceManagerRoarV3__residentsFromResidentStatuses_residentDevices___block_invoke;
  v9[3] = &unk_2786851C8;
  v10 = devicesCopy;
  v6 = devicesCopy;
  v7 = [statuses na_map:v9];

  return v7;
}

- (void)channel:(id)channel didObservePrimaryResidentChange:(id)change
{
  v31 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  changeCopy = change;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  if (changeCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      idsIdentifier = [changeCopy idsIdentifier];
      generationID = [changeCopy generationID];
      v25 = 138543874;
      v26 = v12;
      v27 = 2114;
      v28 = idsIdentifier;
      v29 = 2112;
      v30 = generationID;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Did observed primary resident from status channel: %{public}@, generation: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    idsIdentifier2 = [changeCopy idsIdentifier];
    idsDestination = [changeCopy idsDestination];
    v17 = [HMDDeviceAddress addressWithIDSIdentifier:idsIdentifier2 idsDestination:idsDestination];

    appleAccountManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy appleAccountManager];
    accountRegistry = [appleAccountManager accountRegistry];
    v20 = [accountRegistry deviceForAddress:v17];

    generationID2 = [changeCopy generationID];
    selectionInfo = [changeCopy selectionInfo];
    selectionTimestamp = [selectionInfo selectionTimestamp];
    v24 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy foundNewPrimaryResident:v20 generationID:generationID2 selectionTimestamp:selectionTimestamp changeSource:7];
  }
}

- (void)channel:(id)channel didObserveDevicesAdded:(id)added lost:(id)lost updated:(id)updated
{
  v41 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  addedCopy = added;
  lostCopy = lost;
  updatedCopy = updated;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  currentModeType = [residentSelectionManager currentModeType];

  if (currentModeType == 1)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Ignoring Resident Status Channel update - in Coordination selection mode", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v21 = [HMDResidentSelectionStatusKit alloc];
    residentStatusChannel = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
    presentResidentStatuses = [residentStatusChannel presentResidentStatuses];
    v24 = [(HMDResidentSelectionStatusKit *)v21 initWithWithContext:self residentStatusList:presentResidentStatuses];
    [(HMDResidentDeviceManagerRoarV3 *)self setPresentResidentsStatuses:v24];

    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v33 = 138544130;
      v34 = v28;
      v35 = 2112;
      v36 = addedCopy;
      v37 = 2112;
      v38 = lostCopy;
      v39 = 2112;
      v40 = updatedCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Status channel Observed devices added %@ \nlost %@ \nupdated %@", &v33, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 _refreshAllResidentsReachabilityFromStatusKit];
    if ([(HMDResidentDeviceManagerRoarV3 *)selfCopy2 isActingAsResident])
    {
      v29 = [addedCopy na_map:&__block_literal_global_284_249892];
      v30 = [lostCopy na_map:&__block_literal_global_286_249893];
      residentSelectionManager2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 residentSelectionManager];
      presentResidentsStatuses = [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 presentResidentsStatuses];
      [residentSelectionManager2 didUpdateResidentStatus:presentResidentsStatuses residentsFound:v29 residentsLost:v30];
    }
  }
}

- (id)dumpState
{
  v43 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v36 = MEMORY[0x277CCACA8];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  device = [primaryResidentDevice device];
  identifier = [device identifier];
  uUIDString2 = [identifier UUIDString];
  [(HMDResidentDeviceManagerRoarV3 *)self isResidentAvailable];
  v8 = HMFBooleanToString();
  [(HMDResidentDeviceManagerRoarV3 *)self isResidentSupported];
  v9 = HMFBooleanToString();
  [(HMDResidentDeviceManagerRoarV3 *)self homeSupportsResidentSelection];
  v10 = HMFBooleanToString();
  v11 = [v36 stringWithFormat:@"home: %@, primaryResidentDevice: %@ isResidentAvailable: %@, isResidentSupported: %@, supportsResidentSelection: %@", uUIDString, uUIDString2, v8, v9, v10];
  v37 = dictionary;
  [dictionary setObject:v11 forKeyedSubscript:@"State"];

  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v14 = [residentDevices countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(residentDevices);
        }

        dumpState = [*(*(&v38 + 1) + 8 * i) dumpState];
        [array addObject:dumpState];
      }

      v15 = [residentDevices countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v15);
  }

  [v37 setObject:array forKeyedSubscript:@"Residents"];
  messageDispatcher = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  deviceMonitor = [secureRemoteTransport deviceMonitor];
  dumpState2 = [deviceMonitor dumpState];
  [v37 setObject:dumpState2 forKeyedSubscript:@"Remote Device Monitor"];

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  dumpState3 = [residentSelectionManager dumpState];
  [v37 setObject:dumpState3 forKeyedSubscript:@"Primary.Selection"];

  electorsPreferredResidentsList = [(HMDResidentDeviceManagerRoarV3 *)self electorsPreferredResidentsList];
  modifiedTimestamp = [electorsPreferredResidentsList modifiedTimestamp];
  localTimeDescription = [modifiedTimestamp localTimeDescription];
  [v37 setObject:localTimeDescription forKeyedSubscript:@"Merged Elector's Preferred Residents Timestamp"];

  autoSelectedPreferredResidents = [(HMDResidentDeviceManagerRoarV3 *)self autoSelectedPreferredResidents];
  v29 = [autoSelectedPreferredResidents na_map:&__block_literal_global_270_249906];
  [v37 setObject:v29 forKeyedSubscript:@"Merged Elector's Preferred Residents"];

  statusChannel = [(HMDResidentDeviceManagerRoarV3 *)self statusChannel];
  v31 = [statusChannel dumpStateWithPrivacyLevel:0];
  [v37 setObject:v31 forKeyedSubscript:@"Status Channel"];

  return v37;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v9 = [v5 stringWithFormat:@"<%@%@, Resident Devices = %@", shortDescription, v7, residentDevices];

  if (pointerCopy)
  {
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  messageTargetUUID = [(HMDResidentDeviceManagerRoarV3 *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (id)_updateReachabilityForResidentDevices:(id)devices reachableResidents:(id)residents source:(unint64_t)source
{
  v8 = MEMORY[0x277CBEB58];
  residentsCopy = residents;
  devicesCopy = devices;
  v11 = [v8 set];
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke;
  v28[3] = &unk_278685180;
  v13 = primaryResidentDevice;
  v29 = v13;
  selfCopy = self;
  sourceCopy = source;
  v14 = v11;
  v31 = v14;
  [residentsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v28];
  v15 = [devicesCopy hmf_removedObjectsFromSet:residentsCopy];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke_236;
  v23 = &unk_278685180;
  v24 = v13;
  selfCopy2 = self;
  v26 = v14;
  sourceCopy2 = source;
  v16 = v14;
  v17 = v13;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:&v20];
  v18 = objc_msgSend_copy(v16, v20, v21, v22, v23);

  return v18;
}

void __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 isEqual:*(a1 + 32)];
  if (([v3 isReachable] & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v9 = [v3 shortDescription];
      v10 = HMFBooleanToString();
      v11 = *(a1 + 56) - 1;
      if (v11 > 6)
      {
        v12 = @"StatusKit";
      }

      else
      {
        v12 = off_278685238[v11];
      }

      v13 = v12;
      v14 = 138544386;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Setting reachability to %@ for resident %@. isPrimary: %@. Source: %@", &v14, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 setReachable:1];
    [*(a1 + 48) addObject:v3];
  }
}

void __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke_236(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 isEqual:*(a1 + 32)];
  if ([v3 isReachable])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v9 = [v3 shortDescription];
      v10 = HMFBooleanToString();
      v11 = *(a1 + 56) - 1;
      if (v11 > 6)
      {
        v12 = @"StatusKit";
      }

      else
      {
        v12 = off_278685238[v11];
      }

      v13 = v12;
      v14 = 138544386;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Setting reachability to %@ for resident %@. isPrimary: %@. Source: %@", &v14, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 setReachable:0];
    [*(a1 + 48) addObject:v3];
  }
}

- (void)_updateResidentReachabilityFromReachableResidents:(id)residents source:(unint64_t)source
{
  residentsCopy = residents;
  residentDevicesSet = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v8 = [(HMDResidentDeviceManagerRoarV3 *)self _updateReachabilityForResidentDevices:residentDevicesSet reachableResidents:residentsCopy source:source];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__HMDResidentDeviceManagerRoarV3__updateResidentReachabilityFromReachableResidents_source___block_invoke;
  v10[3] = &unk_278685158;
  v10[4] = self;
  [v8 na_each:v10];
  if ([(HMDResidentDeviceManagerRoarV3 *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
    [backingStore updateReachabilityForResidents:residentsCopy];
  }
}

- (void)_refreshAllResidentsReachabilityFromStatusKit
{
  v16 = *MEMORY[0x277D85DE8];
  residentStatusChannel = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
  presentResidentStatuses = [residentStatusChannel presentResidentStatuses];
  residentDevicesSet = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v6 = [(HMDResidentDeviceManagerRoarV3 *)self _residentsFromResidentStatuses:presentResidentStatuses residentDevices:residentDevicesSet];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    shortDescription = [v6 shortDescription];
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = shortDescription;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Residents present on Status channel are: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateResidentReachabilityFromReachableResidents:v6 source:0];
}

- (void)_updateReachability:(BOOL)reachability forResidentDevice:(id)device source:(unint64_t)source forceUpdate:(BOOL)update
{
  reachabilityCopy = reachability;
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  if ([residentSelectionManager currentModeType] == 3)
  {
    v12 = 0;
  }

  else
  {
    residentSelectionManager2 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
    v12 = [residentSelectionManager2 currentModeType] != 2;
  }

  if (!update && !v12 && [(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMFBooleanToString();
      shortDescription = [deviceCopy shortDescription];
      *buf = 138543874;
      v34 = v17;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = shortDescription;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Running in selection mode on resident in home, not updating reachability to %@ for resident %@", buf, 0x20u);

LABEL_17:
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([deviceCopy isReachable] == reachabilityCopy)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v29 = "un";
      *buf = 138543874;
      v34 = v17;
      if (reachabilityCopy)
      {
        v29 = "";
      }

      v35 = 2112;
      v36 = deviceCopy;
      v37 = 2080;
      v38 = v29;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Resident %@ is already %sreachable", buf, 0x20u);
      goto LABEL_17;
    }

LABEL_18:

    objc_autoreleasePoolPop(v14);
    goto LABEL_22;
  }

  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  [deviceCopy isEqual:primaryResidentDevice];

  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v21;
    v24 = HMFGetLogIdentifier();
    v25 = HMFBooleanToString();
    shortDescription2 = [deviceCopy shortDescription];
    v27 = HMFBooleanToString();
    if (source - 1 > 6)
    {
      v28 = @"StatusKit";
    }

    else
    {
      v28 = off_278685238[source - 1];
    }

    v30 = v28;
    v31 = HMFBooleanToString();
    *buf = 138544642;
    v34 = v24;
    v35 = 2112;
    v36 = v25;
    v37 = 2112;
    v38 = shortDescription2;
    v39 = 2112;
    v40 = v27;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = v31;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Setting reachability to %@ for resident %@. isPrimary: %@. Source: %@. Force update: %@", buf, 0x3Eu);

    v21 = v32;
  }

  objc_autoreleasePoolPop(v21);
  [deviceCopy setReachable:reachabilityCopy];
  [(HMDResidentDeviceManagerRoarV3 *)selfCopy3 notifyClientsOfUpdatedResidentDevice:deviceCopy];
LABEL_22:
}

- (void)_verifyAndUpdateReachability:(BOOL)reachability forResidentDevice:(id)device
{
  reachabilityCopy = reachability;
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  residentStatusChannel = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
  isConnected = [residentStatusChannel isConnected];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (isConnected)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      shortDescription = [deviceCopy shortDescription];
      v15 = HMFBooleanToString();
      v20 = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = shortDescription;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring reachability in Resident Sync for resident %@ to %@ because we are connected to StatusKit.", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    if (v12)
    {
      v16 = HMFGetLogIdentifier();
      name = [deviceCopy name];
      identifier = [deviceCopy identifier];
      v19 = HMFBooleanToString();
      v20 = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = name;
      v24 = 2114;
      v25 = identifier;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cloud updated resident reachability: %@ (%{public}@) -> %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateReachability:reachabilityCopy forResidentDevice:deviceCopy source:2];
  }
}

- (void)_updateResidentIDSReachability:(BOOL)reachability withUpdatedDevice:(id)device
{
  deviceCopy = device;
  if (![(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDResidentDeviceManagerRoarV3__updateResidentIDSReachability_withUpdatedDevice___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = deviceCopy;
    reachabilityCopy = reachability;
    dispatch_async(queue, block);
  }
}

void __83__HMDResidentDeviceManagerRoarV3__updateResidentIDSReachability_withUpdatedDevice___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residentDeviceForDevice:*(a1 + 40)];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [v2 shortDescription];
      v8 = HMFBooleanToString();
      v9 = 138543874;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notified that resident device %@ IDS reachability changed: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _setResident:v2 reachableOverIDS:*(a1 + 48) andNotify:1];
  }
}

- (void)_setResident:(id)resident reachableOverIDS:(BOOL)s andNotify:(BOOL)notify
{
  notifyCopy = notify;
  sCopy = s;
  v27 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  isReachableByIDS = [residentCopy isReachableByIDS];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (isReachableByIDS == sCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      shortDescription = [residentCopy shortDescription];
      v19 = shortDescription;
      v20 = "un";
      v21 = 138543874;
      v22 = v17;
      if (sCopy)
      {
        v20 = "";
      }

      v23 = 2112;
      v24 = shortDescription;
      v25 = 2080;
      v26 = v20;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@resident %@ is already %sreachable by IDS", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = HMFBooleanToString();
      shortDescription2 = [residentCopy shortDescription];
      v21 = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = shortDescription2;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Setting IDS reachability to %@ for resident %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [residentCopy setReachableByIDS:sCopy];
    if (notifyCopy)
    {
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy notifyClientsOfUpdatedResidentDevice:residentCopy];
    }
  }
}

- (void)_handleDataReadyAfterBecomingPrimaryNotification:(id)notification
{
  notificationCopy = notification;
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  [backingStore handleHomeDataReadyAfterBecomingPrimary:notificationCopy];
}

- (void)_handleResidentSelectionVersionDidChange:(id)change
{
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 residentSelectionVersion];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Home's resident selection version changed to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) homeSupportsResidentSelection];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v9 configuredStatusKitForResidentSelection];
    v9 = *(a1 + 32);
    if (!v10)
    {
      if (![v9 isCurrentDeviceAvailableResident] || (objc_msgSend(*(a1 + 32), "isActingAsResident") & 1) != 0)
      {
        v12 = *(a1 + 32);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke_232;
        v13[3] = &unk_27868A250;
        v13[4] = v12;
        [v12 _handleInitialTransitionToResidentSelectionWithCompletion:v13];
        goto LABEL_6;
      }

      v9 = *(a1 + 32);
    }
  }

  v11 = [v9 residentSelectionManager];
  [v11 didUpdateResidentSelectionVersion];

LABEL_6:
}

void __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke_232(uint64_t a1)
{
  v1 = [*(a1 + 32) residentSelectionManager];
  [v1 didUpdateResidentSelectionVersion];
}

- (void)_handleRemoteDeviceIsNotReachable:(id)reachable
{
  object = [reachable object];
  [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentIDSReachability:0 withUpdatedDevice:object];
}

- (void)_handleRemoteDeviceIsReachable:(id)reachable
{
  object = [reachable object];
  [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentIDSReachability:1 withUpdatedDevice:object];
}

- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)update isReachable:(BOOL)reachable
{
  updateCopy = update;
  if (![(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HMDResidentDeviceManagerRoarV3_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = updateCopy;
    reachableCopy = reachable;
    dispatch_async(queue, block);
  }
}

void __97__HMDResidentDeviceManagerRoarV3_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryResidentDevice];
  if ([v2 isDeviceEquivalentToDeviceAddress:*(a1 + 40)])
  {
    [*(a1 + 32) _handlePrimaryResident:v2 isReachable:*(a1 + 48)];
  }
}

- (void)discoveryManager:(id)manager didNotCompleteDiscoveryWithError:(id)error
{
  errorCopy = error;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMDResidentDeviceManagerRoarV3_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __84__HMDResidentDeviceManagerRoarV3_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) primaryDiscoveryRequesters];
  v3 = objc_msgSend_copy(v2);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 residentDeviceManager:*(a1 + 32) didNotCompleteDiscoveryWithError:{*(a1 + 40), v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)discoveryManager:(id)manager didCompleteInitialDiscoveryAttemptWithError:(id)error
{
  errorCopy = error;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __95__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Account message phase of the primary resident discovery operation completed. Error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) firstPrimaryResidentDiscoveryAttemptCompletionPromise];
  v9 = v8;
  if (v7)
  {
    [v8 rejectWithError:*(a1 + 40)];
  }

  else
  {
    [v8 fulfillWithNoValue];
  }
}

- (void)discoveryManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device primaryResidentGenerationID:(id)d error:(id)error
{
  deviceCopy = device;
  dCopy = d;
  errorCopy = error;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __131__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke;
  v16[3] = &unk_2786891E0;
  v16[4] = self;
  v17 = deviceCopy;
  v18 = dCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = dCopy;
  v15 = deviceCopy;
  dispatch_async(queue, v16);
}

void __131__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) primaryDiscoveryRequesters];
  v3 = objc_msgSend_copy(v2);

  v4 = [*(a1 + 32) primaryDiscoveryRequesters];
  [v4 removeAllObjects];

  v5 = *(a1 + 40);
  if (v5 && ([v5 isCurrentDevice] & 1) == 0)
  {
    [*(a1 + 32) handlePrimaryResidentDiscovered:*(a1 + 40) primaryResidentGenerationID:*(a1 + 48)];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) residentDeviceManager:*(a1 + 32) didCompleteDiscoveryWithPrimaryResidentDevice:*(a1 + 40) error:{*(a1 + 56), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)electResidentDevice:(unint64_t)device
{
  v17 = *MEMORY[0x277D85DE8];
  if (device == 7)
  {
    if ([(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
    {
      residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__HMDResidentDeviceManagerRoarV3_electResidentDevice___block_invoke;
      v12[3] = &unk_2786899A0;
      v12[4] = self;
      [residentSelectionManager performSelectionInMode:1 preferredPrimaryResident:0 requireAutoUpdate:0 reason:7 completion:v12];

      return;
    }

    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@SetPreferredPrimary - This device is not an acting resident, returning from electResidentDevice", buf, 0xCu);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v6);
}

void __54__HMDResidentDeviceManagerRoarV3_electResidentDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@SetPreferredPrimary completed with error: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  timestampCopy = timestamp;
  v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceForDevice:toCopy];
  if ([(HMDResidentDeviceManagerRoarV3 *)self isCurrentDevicePrimaryResident])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [toCopy shortDescription];
      v17 = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = shortDescription;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Request for external update of the primary resident to: %{public}@ received while we are the primary", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v15 = [residentSelectionManager allowExternalUpdateOfPrimaryResidentTo:v8 selectionTimestamp:timestampCopy];

  return v15;
}

- (void)sawGenerationID:(id)d forDevice:(id)device
{
  dCopy = d;
  deviceCopy = device;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDResidentDeviceManagerRoarV3_sawGenerationID_forDevice___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = deviceCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = deviceCopy;
  dispatch_async(queue, block);
}

void __60__HMDResidentDeviceManagerRoarV3_sawGenerationID_forDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residentDeviceForDevice:*(a1 + 40)];
  if (!v2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device %@ is unknown, ignoring generation ID", &v14, 0x16u);
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) primaryResidentUUID];
  v4 = [v2 identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  if ((v5 & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v2;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@New generation ID is for a resident that isn't the primary: %@ ignoring it.", &v14, 0x16u);
    }

LABEL_10:
    objc_autoreleasePoolPop(v6);
    goto LABEL_11;
  }

  [*(a1 + 32) _updatePrimaryResidentGenerationID:*(a1 + 48)];
LABEL_11:
}

- (void)reAssertAsTheCurrentPrimaryResident
{
  v14 = *MEMORY[0x277D85DE8];
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  isCurrentDevice = [primaryResidentDevice isCurrentDevice];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (isCurrentDevice)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Reasserting ourselves as the current primary resident", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    primaryResidentDevice2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerReassertAsCurrentPrimaryNotification" forResidentDevice:primaryResidentDevice2];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Ignoring the request to reassert ourselves as the current primary resident", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (id)foundNewPrimaryResident:(id)resident generationID:(id)d selectionTimestamp:(id)timestamp changeSource:(unint64_t)source
{
  residentCopy = resident;
  dCopy = d;
  timestampCopy = timestamp;
  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v15 = [v13 initWithQueue:queue];

  v16 = MEMORY[0x277D0F7C0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__HMDResidentDeviceManagerRoarV3_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke;
  v22[3] = &unk_278685130;
  v22[4] = self;
  v23 = residentCopy;
  v24 = dCopy;
  v25 = timestampCopy;
  sourceCopy = source;
  v17 = timestampCopy;
  v18 = dCopy;
  v19 = residentCopy;
  v20 = [v16 inContext:v15 perform:v22];

  return v20;
}

uint64_t __103__HMDResidentDeviceManagerRoarV3_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residentDeviceForDevice:*(a1 + 40)];
  if (!v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v19 = 138543618;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@New resident device %@ is not known as a resident device, creating one", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [HMDResidentDevice alloc];
    v9 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 288));
    v2 = [(HMDResidentDevice *)v8 initWithDevice:v9 home:WeakRetained];

    [*(a1 + 32) _addResidentDevice:v2];
  }

  v11 = [*(a1 + 32) primaryResidentUUID];
  v12 = [(HMDResidentDevice *)v2 identifier];
  v13 = [v11 hmf_isEqualToUUID:v12];

  v14 = *(a1 + 32);
  if (v13)
  {
    [v14 _updatePrimaryResidentGenerationID:*(a1 + 48)];
    v15 = [*(a1 + 32) primaryDiscoveryManager];
    [v15 cancel];
    v16 = 0;
  }

  else
  {
    if (![v14 allowExternalUpdateOfPrimaryResidentTo:*(a1 + 40) selectionTimestamp:*(a1 + 56)])
    {
      v16 = 1;
      goto LABEL_11;
    }

    [*(a1 + 32) _updatePrimaryResidentSelectionTimestamp:*(a1 + 56)];
    v17 = *(a1 + 32);
    v15 = [v17 primaryResidentDevice];
    [v17 _handleUpdatedPrimaryResidentDevice:v2 previousPrimaryResident:v15 generationID:*(a1 + 48) changeSource:*(a1 + 64)];
    v16 = 2;
  }

LABEL_11:
  [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  objc_claimAutoreleasedReturnValue();

  return 1;
}

- (void)handleCurrentDeviceChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDResidentDeviceManagerRoarV3_handleCurrentDeviceChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

void __61__HMDResidentDeviceManagerRoarV3_handleCurrentDeviceChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = [*(a1 + 40) notificationCenter];
  [v4 removeObserver:*(a1 + 40) name:@"HMDDeviceUpdatedNotification" object:0];
}

- (void)handleSetPreferredResidentSelectionMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_UUIDForKey:*MEMORY[0x277CD04E0]];

  messagePayload2 = [messageCopy messagePayload];
  v8 = [messagePayload2 hmf_BOOLForKey:*MEMORY[0x277CD04E8]];

  if (v6)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to update the selection mode to manual", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    residentDevices = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentDevices];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke;
    v24[3] = &unk_2786850E0;
    v25 = v6;
    v14 = [residentDevices na_firstObjectPassingTest:v24];

    v15 = 2;
  }

  else
  {
    v14 = 0;
    v15 = 3;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138544130;
    v27 = v19;
    v28 = 2112;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 1024;
    v33 = v8;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Handling request to set preferred resident to: %@, in mode: %lu, requireAutoUpdate: %{BOOL}d", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v16);
  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 residentSelectionManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke_226;
  v22[3] = &unk_2786899A0;
  v23 = messageCopy;
  v21 = messageCopy;
  [residentSelectionManager performSelectionInMode:v15 preferredPrimaryResident:v14 requireAutoUpdate:v8 reason:7 completion:v22];
}

uint64_t __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 idsIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

uint64_t __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke_226(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 respondWithError:?];
  }

  else
  {
    return [v3 respondWithSuccess];
  }
}

- (void)_handleResidentDeviceUpdateEnabled:(id)enabled
{
  v48 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v5 = [enabledCopy uuidForKey:@"kIdentifierKey"];
  if (v5)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
    v7 = [residentDevices countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(residentDevices);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        identifier = [v11 identifier];
        v13 = [identifier isEqual:v5];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [residentDevices countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (!v14)
      {
        goto LABEL_17;
      }

      v38 = 0;
      messagePayload = [enabledCopy messagePayload];
      [messagePayload hmf_BOOLForKey:@"kEnabledKey" isPresent:&v38];

      if ((v38 & 1) == 0)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          messagePayload2 = [enabledCopy messagePayload];
          buf = 138543618;
          v45 = v19;
          v46 = 2112;
          v47 = messagePayload2;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Invalid message payload, missing enabled state: %@", &buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        responseHandler = [enabledCopy responseHandler];

        if (responseHandler)
        {
          responseHandler5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          responseHandler2 = [enabledCopy responseHandler];
          responseHandler2[2](responseHandler2, responseHandler5, 0);

          goto LABEL_26;
        }
      }

      goto LABEL_27;
    }

LABEL_10:

LABEL_17:
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      uUIDString = [v5 UUIDString];
      buf = 138543618;
      v45 = v27;
      v46 = 2114;
      v47 = uUIDString;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to find resident device with identifier: %{public}@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    responseHandler3 = [enabledCopy responseHandler];

    if (responseHandler3)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = 2;
      goto LABEL_25;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      messagePayload3 = [enabledCopy messagePayload];
      buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = messagePayload3;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Invalid message payload, missing resident device identifier: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    responseHandler4 = [enabledCopy responseHandler];

    if (responseHandler4)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = 20;
LABEL_25:
      v14 = [v30 hmErrorWithCode:v31];
      responseHandler5 = [enabledCopy responseHandler];
      (responseHandler5)[2](responseHandler5, v14, 0);
LABEL_26:

LABEL_27:
    }
  }
}

- (void)_handlePrimaryResidentDiscoveryRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  isCurrentDevicePrimaryResident = [(HMDResidentDeviceManagerRoarV3 *)self isCurrentDevicePrimaryResident];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isCurrentDevicePrimaryResident)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received query for primary resident, responding", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    currentResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)selfCopy currentResidentDevice];
    identifier = [currentResidentDevice identifier];
    uUIDString = [identifier UUIDString];
    v21 = uUIDString;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [v14 mutableCopy];

    primaryResidentGenerationID = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentGenerationID];
    uUIDString2 = [primaryResidentGenerationID UUIDString];
    [v15 setObject:uUIDString2 forKeyedSubscript:@"gen"];

    v18 = objc_msgSend_copy(v15);
    [requestCopy respondWithPayload:v18];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v19;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received query for primary but we are standby, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_handlePrimaryResidentDiscoveryXPCRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling primary resident discovery request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc_init(HMDResidentDeviceManagerV3XPCDiscoveryRequester);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HMDResidentDeviceManagerRoarV3__handlePrimaryResidentDiscoveryXPCRequest___block_invoke;
  v12[3] = &unk_278685108;
  v13 = v9;
  v14 = selfCopy;
  v15 = requestCopy;
  v10 = requestCopy;
  v11 = v9;
  [(HMDResidentDeviceManagerV3XPCDiscoveryRequester *)v11 setBlock:v12];
  [(HMDResidentDeviceManagerRoarV3 *)selfCopy _discoverPrimaryResidentForRequester:v11];
}

void __76__HMDResidentDeviceManagerRoarV3__handlePrimaryResidentDiscoveryXPCRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 setBlock:0];
  if (v5)
  {
    v14 = @"uuid";
    v8 = [v5 identifier];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v9 mutableCopy];

    v11 = [*(a1 + 40) primaryResidentGenerationID];
    [v10 setObject:v11 forKeyedSubscript:@"uuid"];
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a1 + 48);
  v13 = objc_msgSend_copy(v10);
  [v12 respondWithPayload:v13 error:v7];
}

- (void)handlePrimaryResidentDiscovered:(id)discovered primaryResidentGenerationID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  dCopy = d;
  if (discoveredCopy)
  {
    residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __94__HMDResidentDeviceManagerRoarV3_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke;
    v16[3] = &unk_2786850E0;
    v9 = discoveredCopy;
    v17 = v9;
    v10 = [residentDevices na_any:v16];

    if ((v10 & 1) == 0)
    {
      [(HMDResidentDeviceManagerRoarV3 *)self _addResidentDevice:v9];
    }

    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)self _handleUpdatedPrimaryResidentDevice:v9 previousPrimaryResident:primaryResidentDevice generationID:dCopy changeSource:4];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Primary resident discovered is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

uint64_t __94__HMDResidentDeviceManagerRoarV3_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)_discoverPrimaryResidentForRequester:(id)requester
{
  v20 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Running primary resident discovery", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  queue = [(HMDResidentDeviceManagerRoarV3 *)selfCopy queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDResidentDeviceManagerRoarV3 *)selfCopy isResidentSupported])
  {
    home = [(HMDResidentDeviceManagerRoarV3 *)selfCopy home];
    v11 = home;
    if (home)
    {
      homeManager = [home homeManager];
      uuid = [v11 uuid];
      v14 = [homeManager sharedUserAcceptEventBuilderForHomeUuid:uuid];

      [v14 markDiscoverPrimaryResidentBegin];
    }

    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentDevice];
    if ([primaryResidentDevice isCurrentDevice])
    {
      [requesterCopy residentDeviceManager:selfCopy didCompleteDiscoveryWithPrimaryResidentDevice:primaryResidentDevice error:0];
    }

    else
    {
      if (requesterCopy)
      {
        primaryDiscoveryRequesters = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryDiscoveryRequesters];
        [primaryDiscoveryRequesters addObject:requesterCopy];
      }

      primaryDiscoveryManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryDiscoveryManager];
      [primaryDiscoveryManager discoverPrimaryResident];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [requesterCopy residentDeviceManager:selfCopy didCompleteDiscoveryWithPrimaryResidentDevice:0 error:v11];
  }
}

- (void)discoverPrimaryResidentForRequester:(id)requester
{
  requesterCopy = requester;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDResidentDeviceManagerRoarV3_discoverPrimaryResidentForRequester___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = requesterCopy;
  v6 = requesterCopy;
  dispatch_async(queue, v7);
}

- (void)_handlePrimaryResident:(id)resident isReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v19 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (reachableCopy)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = residentCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident: %@ became reachable. Updating the reachability of all residents from the working store", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateReachability:1 forResidentDevice:residentCopy source:1];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateReachabilityFromWorkingStoreExceptResident:residentCopy];
  }

  else
  {
    if (v11)
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = residentCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident: %@ became unreachable. Marking all residents as unreachable", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    residentDevices = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentDevices];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateReachability:0 forResidentDevices:residentDevices source:1];

    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _discoverPrimaryResidentForRequester:0];
  }
}

- (void)_sendResidentDeviceNotificationWithName:(id)name forResidentDevice:(id)device
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:deviceCopy forKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  uuid = [home uuid];
  [dictionary setObject:uuid forKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  if ([nameCopy isEqual:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification"])
  {
    if ([deviceCopy isCurrentDevice])
    {
      residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
      currentModeType = [residentSelectionManager currentModeType];

      if (currentModeType != 1)
      {
        residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
        residentLocationRawValue = [residentLocationHandler residentLocationRawValue];

        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          StringFromHMDResidentLocation([residentLocationRawValue unsignedIntegerValue]);
          v19 = v25 = v15;
          *buf = 138543874;
          v27 = v18;
          v28 = 2112;
          v29 = v19;
          v30 = 2112;
          v31 = @"HMDResidentDeviceManagerUpdatePrimaryResidentNotification";
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Including current resident location: %@ in: %@", buf, 0x20u);

          v15 = v25;
        }

        objc_autoreleasePoolPop(v15);
        [dictionary setObject:residentLocationRawValue forKeyedSubscript:@"HMDResidentDeviceManagerResidentLocationKey"];
      }
    }
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v23;
    v28 = 2114;
    v29 = nameCopy;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Posting notification: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  notificationCenter = [(HMDResidentDeviceManagerRoarV3 *)selfCopy2 notificationCenter];
  [notificationCenter postNotificationName:nameCopy object:selfCopy2 userInfo:dictionary];
}

- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)resident
{
  queue = self->_queue;
  residentCopy = resident;
  dispatch_assert_queue_V2(queue);
  [(HMDResidentDeviceManagerRoarV3 *)self _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" forResidentDevice:residentCopy];
}

- (void)notifyUpdatedPrimaryResident:(id)resident previousPrimaryResident:(id)primaryResident
{
  residentCopy = resident;
  primaryResidentCopy = primaryResident;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDResidentDeviceManagerRoarV3_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = residentCopy;
  v13 = primaryResidentCopy;
  v9 = primaryResidentCopy;
  v10 = residentCopy;
  dispatch_async(queue, block);
}

void __87__HMDResidentDeviceManagerRoarV3_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" forResidentDevice:*(a1 + 40)];
  v2 = [*(a1 + 32) residentSelectionManager];
  [v2 primaryResidentChanged:*(a1 + 40) previousResidentDevice:*(a1 + 48)];

  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) delegate];
    [v3 residentDeviceManager:*(a1 + 32) didUpdatePrimaryResident:*(a1 + 40) previousPrimaryResident:*(a1 + 48)];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of resident device confirmed state changing to YES", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 32) notificationCenter];
    v13[0] = @"HMDResidentDeviceHomeUUIDNotificationKey";
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) home];
    v11 = [v10 uuid];
    v13[1] = @"HMDResidentDeviceResidentNotificationKey";
    v14[0] = v11;
    v14[1] = *(a1 + 40);
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v8 postNotificationName:@"HMDResidentDeviceConfirmedStateChangedNotification" object:v9 userInfo:v12];

    [*(a1 + 32) _notifyUpdatedGenerationIDWithPrimaryResident:*(a1 + 40)];
  }
}

- (void)_notifyUserPreferredResidentReachability:(id)reachability previousPrimaryResident:(id)resident
{
  reachabilityCopy = reachability;
  residentCopy = resident;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDResidentDeviceManagerRoarV3__notifyUserPreferredResidentReachability_previousPrimaryResident___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = residentCopy;
  v13 = reachabilityCopy;
  v9 = reachabilityCopy;
  v10 = residentCopy;
  dispatch_async(queue, block);
}

void __99__HMDResidentDeviceManagerRoarV3__notifyUserPreferredResidentReachability_previousPrimaryResident___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isOwnerUser])
  {
    if (*(a1 + 40))
    {
      v2 = [*(a1 + 32) residentSelectionInfo];
      v3 = [v2 preferredResidentIDSIdentifier];
      if (v3 && (v4 = *(a1 + 48), v3, v4))
      {
        v5 = [*(a1 + 32) home];
        if (v5)
        {
          v6 = [*(a1 + 48) device];
          v7 = [v6 idsIdentifier];
          v8 = [v2 preferredResidentIDSIdentifier];
          v9 = [v7 isEqual:v8];

          v10 = [*(a1 + 32) _residentDeviceDisplayName:*(a1 + 40)];
          v11 = [*(a1 + 32) _residentDeviceDisplayName:*(a1 + 48)];
          v12 = [MEMORY[0x277CBEB38] dictionary];
          v13 = [v5 uuid];
          [v12 setObject:v13 forKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

          v14 = [MEMORY[0x277CCABB0] numberWithBool:v9];
          [v12 setObject:v14 forKeyedSubscript:@"HMDResidentDeviceManagerUserPreferredResidentReachabilityKey"];

          if (v10)
          {
            [v12 setObject:v10 forKeyedSubscript:@"HMDResidentDeviceManagerUserPreferredResidentNameKey"];
          }

          if (v11)
          {
            [v12 setObject:v11 forKeyedSubscript:@"HMDResidentDeviceManagerBackupResidentNameKey"];
          }

          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v36 = 138543362;
            v37 = v18;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Notify user preferred resident reachability is changed", &v36, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [*(a1 + 32) notificationCenter];
          v20 = *(a1 + 32);
          v21 = objc_msgSend_copy(v12);
          [v19 postNotificationName:@"HMDResidentDeviceManagerUserPreferredResidentReachabilityNotification" object:v20 userInfo:v21];
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = *(a1 + 32);
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            v36 = 138543362;
            v37 = v35;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@No home to notify user preferred change", &v36, 0xCu);
          }

          objc_autoreleasePoolPop(v32);
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = *(a1 + 32);
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v2 preferredResidentIDSIdentifier];
          v31 = "no elected primary";
          if (!v30)
          {
            v31 = "in auto mode";
          }

          v36 = 138543618;
          v37 = v29;
          v38 = 2080;
          v39 = v31;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Do not notify user preferred change: %s", &v36, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Not owner do not notify user perferred resident reachability is changed.", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (void)notifyClientsOfUpdatedResidentDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v6 = [residentDevices containsObject:deviceCopy];

  if (v6)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__HMDResidentDeviceManagerRoarV3_notifyClientsOfUpdatedResidentDevice___block_invoke;
    v12[3] = &unk_27868A750;
    v12[4] = self;
    v13 = deviceCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = deviceCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not notifying clients of updated resident %@ since it is not in the resident devices list", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __71__HMDResidentDeviceManagerRoarV3_notifyClientsOfUpdatedResidentDevice___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated resident: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdateResidentNotification" forResidentDevice:*(a1 + 40)];
  v8 = [*(a1 + 32) home];
  v9 = [v8 homeManager];
  v10 = [*(a1 + 40) identifier];
  [v9 updateGenerationCounterWithReason:@"ResidentDeviceUpdated" sourceUUID:v10 shouldNotifyClients:1];

  [v8 reEvaluateHomeHubState];
  [v8 evaluateResidentUpdate];
  [v8 evaluateBulletinNotificationsSupported];
}

- (void)notifyResidentAvailable:(BOOL)available
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDResidentDeviceManagerRoarV3_notifyResidentAvailable___block_invoke;
  v4[3] = &unk_278688650;
  v4[4] = self;
  availableCopy = available;
  dispatch_async(queue, v4);
}

void __58__HMDResidentDeviceManagerRoarV3_notifyResidentAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManager:*(a1 + 32) didUpdateResidentAvailable:*(a1 + 40)];
}

- (void)accountOrDeviceDidUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDResidentDeviceManagerRoarV3_accountOrDeviceDidUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

void __59__HMDResidentDeviceManagerRoarV3_accountOrDeviceDidUpdate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 32) isResidentSupported];
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %{public}@. self.isResidentSupported: %d", &v10, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _configureResidentSupported];
  v8 = [*(a1 + 32) appleAccountManager];
  v9 = [v8 device];

  if (([*(a1 + 32) isCurrentDeviceAvailableResident] & 1) == 0 && v9)
  {
    [*(a1 + 32) _createAllKnownResidentsInHomeWithCurrentDevice:v9 hasResidents:0];
  }
}

- (void)setResidentSupported:(BOOL)supported
{
  supportedCopy = supported;
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@ResidentSupported = %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  selfCopy->_residentSupported = supportedCopy;
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (supportedCopy && [(HMDResidentDeviceManagerRoarV3 *)selfCopy isCurrentDeviceAvailableResident])
  {
    notificationCenter = [(HMDResidentDeviceManagerRoarV3 *)selfCopy notificationCenter];
    appleAccountManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy appleAccountManager];
    [notificationCenter removeObserver:selfCopy name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:appleAccountManager];
  }

  else
  {
    notificationCenter2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy notificationCenter];
    appleAccountManager2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy appleAccountManager];
    [notificationCenter2 removeObserver:selfCopy name:@"HMDAppleAccountManagerResolved" object:appleAccountManager2];

    notificationCenter3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy notificationCenter];
    appleAccountManager3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy appleAccountManager];
    [notificationCenter3 removeObserver:selfCopy name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:appleAccountManager3];

    notificationCenter4 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy notificationCenter];
    appleAccountManager4 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy appleAccountManager];
    [notificationCenter4 addObserver:selfCopy selector:sel_accountOrDeviceDidUpdate_ name:@"HMDAppleAccountManagerResolved" object:appleAccountManager4];

    notificationCenter = [(HMDResidentDeviceManagerRoarV3 *)selfCopy notificationCenter];
    appleAccountManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy appleAccountManager];
    [notificationCenter addObserver:selfCopy selector:sel_accountOrDeviceDidUpdate_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:appleAccountManager];
  }
}

- (BOOL)isResidentSupported
{
  os_unfair_lock_lock_with_options();
  residentSupported = self->_residentSupported;
  os_unfair_lock_unlock(&self->_lock);
  return residentSupported;
}

- (void)_updatePrimaryResidentSelectionTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  os_unfair_lock_lock_with_options();
  primaryResidentSelectionTimestamp = self->_primaryResidentSelectionTimestamp;
  self->_primaryResidentSelectionTimestamp = timestampCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)primaryResidentSelectionTimestamp
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentSelectionTimestamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_updatePrimaryResidentGenerationID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock_with_options();
  v6 = self->_primaryResidentGenerationID;
  v7 = HMFEqualObjects();
  if (v7)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_primaryResidentGenerationID, d);

    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating primaryResidentGenerationID = %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _notifyUpdatedGenerationIDWithPrimaryResident:primaryResidentDevice];
  }

  return v7 ^ 1;
}

- (NSUUID)primaryResidentGenerationID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentGenerationID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResidentAvailable:(BOOL)available
{
  availableCopy = available;
  v23 = *MEMORY[0x277D85DE8];
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_lock_with_options();
  if (self->_residentSupported)
  {
    if (self->_residentAvailable == availableCopy)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      self->_residentAvailable = availableCopy;
      os_unfair_lock_unlock(&self->_lock);
      if (availableCopy)
      {
        primaryResidentUUID = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentUUID];

        if (primaryResidentUUID)
        {
          primaryResidentUUID2 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentUUID];
          v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentWithUUID:primaryResidentUUID2];

          if (v8)
          {
            [(HMDResidentDeviceManagerRoarV3 *)self notifyUpdatedPrimaryResident:v8 previousPrimaryResident:0];
          }

          else
          {
            v14 = objc_autoreleasePoolPush();
            selfCopy = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = HMFGetLogIdentifier();
              primaryResidentUUID3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentUUID];
              v19 = 138543618;
              v20 = v17;
              v21 = 2114;
              v22 = primaryResidentUUID3;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Primary resident UUID is set to %{public}@, but cannot find the primary resident device", &v19, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        else
        {
          v10 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = HMFGetLogIdentifier();
            v19 = 138543362;
            v20 = v13;
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident UUID is not set, cannot find the primary resident device (yet)", &v19, 0xCu);
          }

          objc_autoreleasePoolPop(v10);
        }

        [(HMDResidentDeviceManagerRoarV3 *)self _discoverPrimaryResidentForRequester:0];
      }

      else
      {
        primaryDiscoveryManager = [(HMDResidentDeviceManagerRoarV3 *)self primaryDiscoveryManager];
        [primaryDiscoveryManager cancel];
      }
    }

    [(HMDResidentDeviceManagerRoarV3 *)self notifyResidentAvailable:availableCopy];
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)hasAnyResident
{
  residentDevicesSet = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  hmf_isEmpty = [residentDevicesSet hmf_isEmpty];

  if (!hmf_isEmpty)
  {
    return 1;
  }

  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  hasAnyResident = [backingStore hasAnyResident];

  return hasAnyResident;
}

- (BOOL)isResidentAvailable
{
  os_unfair_lock_lock_with_options();
  residentAvailable = self->_residentAvailable;
  os_unfair_lock_unlock(&self->_lock);
  return residentAvailable;
}

- (void)_updateResidentAvailability:(BOOL)availability
{
  LODWORD(v3) = availability;
  availableResidentDevices = [(HMDResidentDeviceManagerRoarV3 *)self availableResidentDevices];
  if ([availableResidentDevices count])
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  [(HMDResidentDeviceManagerRoarV3 *)self setResidentAvailable:v3];
}

- (void)updateResidentAvailability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDResidentDeviceManagerRoarV3_updateResidentAvailability__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeResidentDevice:(id)device
{
  deviceCopy = device;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDResidentDeviceManagerRoarV3_removeResidentDevice___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)_stopActingAsResidentViaStatusKit
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping acting as a resident via StatusKit", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  statusChannel = [(HMDResidentDeviceManagerRoarV3 *)selfCopy statusChannel];
  [statusChannel stopPublishingAsResident];
}

- (void)_handleInitialTransitionToResidentSelectionWithCompletion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  configuredStatusKitForResidentSelection = [(HMDResidentDeviceManagerRoarV3 *)self configuredStatusKitForResidentSelection];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (configuredStatusKitForResidentSelection)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Handling initial transition to resident selection - already configured, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = _Block_copy(completionCopy);
    home = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Handling initial transition to resident selection", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy setConfiguredStatusKitForResidentSelection:1];
    home = [(HMDResidentDeviceManagerRoarV3 *)selfCopy home];
    dataSource = [(HMDResidentDeviceManagerRoarV3 *)selfCopy dataSource];
    v16 = [dataSource createResidentStatusChannelForHome:home queue:selfCopy->_queue];
    statusChannel = selfCopy->_statusChannel;
    selfCopy->_statusChannel = v16;

    statusChannel = [(HMDResidentDeviceManagerRoarV3 *)selfCopy statusChannel];
    [statusChannel addObserver:selfCopy];

    v19 = [HMDResidentStatusChannelManager alloc];
    statusChannel2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy statusChannel];
    queue2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy queue];
    idsServerBag = [(HMDResidentDeviceManagerRoarV3 *)selfCopy idsServerBag];
    v23 = [(HMDResidentStatusChannelManager *)v19 initWithResidentStatusChannel:statusChannel2 queue:queue2 idsServerBag:idsServerBag];
    residentStatusChannelManager = selfCopy->_residentStatusChannelManager;
    selfCopy->_residentStatusChannelManager = v23;

    residentStatusChannelManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentStatusChannelManager];
    statusChannel3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy statusChannel];
    [statusChannel3 setManager:residentStatusChannelManager];

    residentStatusChannelManager2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentStatusChannelManager];
    [residentStatusChannelManager2 configure];

    if ([(HMDResidentDeviceManagerRoarV3 *)selfCopy isActingAsResident])
    {
      residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentLocationHandler];
      [residentLocationHandler configure];

      residentLocationHandler2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentLocationHandler];
      [residentLocationHandler2 requestResidentLocation];

      v30 = objc_alloc(MEMORY[0x277D0F7A8]);
      queue3 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy queue];
      v32 = [v30 initWithQueue:queue3];

      [(HMDResidentDeviceManagerRoarV3 *)selfCopy _statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
      v34 = v33;
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v38;
        v55 = 2048;
        v56 = v34;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Setting timeout of %f for initial connected to status kit future", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      residentStatusChannel = [(HMDResidentDeviceManagerRoarV3 *)v36 residentStatusChannel];
      initialConnectedToStatusKitFuture = [residentStatusChannel initialConnectedToStatusKitFuture];
      v41 = [initialConnectedToStatusKitFuture timeout:v34];

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke;
      v51[3] = &unk_278685090;
      v51[4] = v36;
      v52 = completionCopy;
      v45 = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      v47 = __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke_212;
      v48 = &unk_2786850B8;
      v49 = v36;
      v50 = v52;
      v42 = [v41 inContext:v32 then:v51 orRecover:&v45];
      v43 = [(HMDResidentDeviceManagerRoarV3 *)v36 residentStatusChannelManager:v45];
      [v43 addClientWithIdentifier:@"resident.device.manager"];
    }

    else
    {
      v44 = _Block_copy(completionCopy);
      v32 = v44;
      if (v44)
      {
        (*(v44 + 2))(v44, 0);
      }
    }
  }
}

uint64_t __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Handling initial transition to resident selection - Received initial Resident Status Channel state.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _determineResidentLocationWithCompletion:*(a1 + 40)];

  return 1;
}

uint64_t __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke_212(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Handling initial transition to resident selection - Initial Resident Status Channel state returned error: %@.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _determineResidentLocationWithCompletion:*(a1 + 40)];

  return 1;
}

- (void)_checkPrimaryResidentDeviceRemoved:(id)removed currentPrimary:(id)primary
{
  v19 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  primaryCopy = primary;
  v8 = [(NSMutableSet *)self->_residentDevices count];
  v9 = [primaryCopy isEqual:removedCopy];
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];

  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v14;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Current primary got removed. There are %lu residents remaining.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (!primaryResidentDevice)
    {
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy _handleUpdatedPrimaryResidentDevice:0 previousPrimaryResident:primaryCopy generationID:0 changeSource:0];
    }
  }
}

- (void)_removeResidentDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_residentDevices containsObject:deviceCopy])
    {
      [(NSMutableSet *)self->_residentDevices removeObject:deviceCopy];
      os_unfair_lock_unlock(&self->_lock);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__HMDResidentDeviceManagerRoarV3__removeResidentDevice___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v8 = deviceCopy;
      v9 = primaryResidentDevice;
      dispatch_async(queue, block);
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

void __56__HMDResidentDeviceManagerRoarV3__removeResidentDevice___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerRemoveResidentNotification" forResidentDevice:*(a1 + 40)];
  v3 = [*(a1 + 32) home];
  [v3 reEvaluateHomeHubState];
  [v3 evaluateResidentUpdate];
  [v3 evaluateBulletinNotificationsSupported];
  [*(a1 + 32) _updateResidentAvailability:0];
  v4 = [*(a1 + 40) device];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 disableNotificationsForDevices:v5];

  if ([*(a1 + 40) isCurrentDevice])
  {
    [*(a1 + 32) setActingAsResident:0];
    v6 = [*(a1 + 32) residentSelectionManager];
    [v6 stop];

    if ([*(a1 + 32) homeSupportsResidentSelection])
    {
      [*(a1 + 32) _stopActingAsResidentViaStatusKit];
      v7 = [*(a1 + 32) residentStatusChannelManager];
      [v7 removeClientWithIdentifier:@"resident.device.manager"];
    }
  }

  [*(a1 + 32) _checkPrimaryResidentDeviceRemoved:*(a1 + 40) currentPrimary:*(a1 + 48)];
}

- (void)_addResidentDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableSet *)self->_residentDevices member:deviceCopy];
  if (v6)
  {

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_29;
  }

  [(NSMutableSet *)self->_residentDevices addObject:deviceCopy];
  os_unfair_lock_unlock(&self->_lock);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v10;
    v43 = 2112;
    v44 = deviceCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Added resident device %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMDResidentDeviceManagerRoarV3 *)selfCopy home];
  [deviceCopy configureWithHome:home];
  primaryResidentUUID = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentUUID];
  v13 = primaryResidentUUID == 0;

  if (v13)
  {
    [deviceCopy setReachable:0];
  }

  if ([(HMDResidentDeviceManagerRoarV3 *)selfCopy isCurrentDeviceConfirmedPrimaryResident])
  {
    if (([deviceCopy isReachable] & 1) == 0)
    {
      residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentSelectionManager];
      v15 = [residentSelectionManager currentModeType] == 1;

      if (v15)
      {
        residentSelectionManager2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentSelectionManager];
        v17 = [residentSelectionManager2 residentIsLocallyReachable:deviceCopy];

        if (v17)
        {
          [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateReachability:1 forResidentDevice:deviceCopy source:7];
          backingStore = [(HMDResidentDeviceManagerRoarV3 *)selfCopy backingStore];
          v19 = [MEMORY[0x277CBEB98] setWithObject:deviceCopy];
          [backingStore updateReachabilityForResidents:v19];
        }
      }
    }
  }

  [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateResidentAvailability:0];
  delegate = [(HMDResidentDeviceManagerRoarV3 *)selfCopy delegate];
  [delegate residentDeviceManagerDidUpdateResidents:selfCopy];

  [(HMDResidentDeviceManagerRoarV3 *)selfCopy _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerAddResidentNotification" forResidentDevice:deviceCopy];
  [home reEvaluateHomeHubState];
  [home evaluateBulletinNotificationsSupported];
  primaryResidentUUID2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentUUID];
  identifier = [deviceCopy identifier];
  if ([primaryResidentUUID2 isEqual:identifier])
  {
  }

  else
  {
    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentDevice];
    device = [primaryResidentDevice device];
    if (![device isCurrentDevice])
    {

      goto LABEL_19;
    }

    isEnabled = [deviceCopy isEnabled];

    if (!isEnabled)
    {
      goto LABEL_20;
    }
  }

  primaryResidentUUID2 = [deviceCopy device];
  v40 = primaryResidentUUID2;
  identifier = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  [home enableNotificationsForDevices:identifier];
LABEL_19:

LABEL_20:
  device2 = [deviceCopy device];
  if ([device2 isCurrentDevice])
  {
    homeManager = [home homeManager];
    currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];
    [currentAccessorySetupMetricDispatcher markSetupBeginStage:14 error:0];
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      residentSelectionVersion = [home residentSelectionVersion];
      *buf = 138543618;
      v42 = v32;
      v43 = 2114;
      v44 = residentSelectionVersion;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Current device added as resident to home with resident selection version %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    if ([(HMDResidentDeviceManagerRoarV3 *)v30 homeSupportsResidentSelection])
    {
      residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)v30 residentLocationHandler];
      [residentLocationHandler configure];

      residentLocationHandler2 = [(HMDResidentDeviceManagerRoarV3 *)v30 residentLocationHandler];
      residentLocationRawValue = [residentLocationHandler2 residentLocationRawValue];
      v37 = [residentLocationRawValue unsignedIntegerValue] == 100;

      if (v37)
      {
        residentLocationHandler3 = [(HMDResidentDeviceManagerRoarV3 *)v30 residentLocationHandler];
        [residentLocationHandler3 requestResidentLocation];
      }

      residentStatusChannelManager = [(HMDResidentDeviceManagerRoarV3 *)v30 residentStatusChannelManager];
      [residentStatusChannelManager addClientWithIdentifier:@"resident.device.manager"];
    }

    [(HMDResidentDeviceManagerRoarV3 *)v30 _setupAsAResident];
  }

LABEL_29:
}

- (id)residentDevicesWithIDSIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceWithIDSIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = objc_msgSend_copy(array);

  return v12;
}

- (id)residentDeviceWithIDSIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_residentDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        device = [v9 device];
        idsIdentifier = [device idsIdentifier];
        v12 = [idsIdentifier isEqual:identifierCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)residentDeviceForDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_residentDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        device = [v9 device];
        v11 = [device isEqual:deviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (HMDDevice)confirmedPrimaryResidentDevice
{
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  device = [primaryResidentDevice device];

  return device;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  isCurrentDevice = [primaryResidentDevice isCurrentDevice];

  return isCurrentDevice;
}

- (BOOL)isCurrentDeviceAvailableResident
{
  ourSelf = [(HMDResidentDeviceManagerRoarV3 *)self ourSelf];
  isEnabled = [ourSelf isEnabled];

  return isEnabled;
}

- (NSArray)residentDevices
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_residentDevices allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (id)ourSelf
{
  residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v3 = [residentDevices hmf_objectPassingTest:&__block_literal_global_250044];

  return v3;
}

uint64_t __41__HMDResidentDeviceManagerRoarV3_ourSelf__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 isCurrentDevice];

  return v3;
}

- (id)residentWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v6 = [residentDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(residentDevices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [residentDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)addDataSource:(id)source
{
  v15 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
}

- (HMDIDSServerBag)idsServerBag
{
  dataSource = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v5 = [dataSource idsServerBagForHome:home];

  return v5;
}

- (void)_teardownSessionWithPrimaryResidentDevice
{
  messageDispatcher = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  [messageDispatcher setRemoteAccessDevice:0 forHome:home];
}

- (void)_setupSessionWithPrimaryResidentDevice
{
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  if (primaryResidentDevice)
  {
    v7 = primaryResidentDevice;
    messageDispatcher = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
    device = [v7 device];
    home = [(HMDResidentDeviceManagerRoarV3 *)self home];
    [messageDispatcher setRemoteAccessDevice:device forHome:home];

    primaryResidentDevice = v7;
  }
}

- (void)_run
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Starting", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  home = [(HMDResidentDeviceManagerRoarV3 *)selfCopy home];
  primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentDevice];
  if (primaryResidentDevice && [(HMDResidentDeviceManagerRoarV3 *)selfCopy isResidentSupported])
  {
    [home subscribeForNotificationsFromRemoteGateway];
  }

  else
  {
    messageDispatcher = [(HMDResidentDeviceManagerRoarV3 *)selfCopy messageDispatcher];
    v10 = [messageDispatcher remoteAccessDeviceForHome:home];

    capabilities = [v10 capabilities];
    isResidentCapable = [capabilities isResidentCapable];

    if (isResidentCapable)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v16;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Tearing down remote access to device: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(HMDResidentDeviceManagerRoarV3 *)v14 _teardownSessionWithPrimaryResidentDevice];
    }
  }
}

- (void)run
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDResidentDeviceManagerRoarV3_run__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)atHomeLevelChanged:(int64_t)changed
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)confirmOnAvailability
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)confirmAsResident
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)confirmWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (BOOL)hasTrustZoneCapableResident
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[HMDHomeKitVersion version6];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  residentDevices = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v5 = [residentDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(residentDevices);
        }

        device = [*(*(&v12 + 1) + 8 * i) device];
        version = [device version];
        v10 = [version isAtLeastVersion:v3];

        if (v10)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [residentDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_handleCloudResidentChange:(id)change
{
  changeCopy = change;
  appleAccountManager = [(HMDResidentDeviceManagerRoarV3 *)self appleAccountManager];
  device = [appleAccountManager device];

  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  residentDevicesSet = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v9 = [backingStore handleCloudResidentChange:changeCopy currentResidents:residentDevicesSet isCurrentDevicePrimaryResident:-[HMDResidentDeviceManagerRoarV3 isCurrentDevicePrimaryResident](self currentDevice:{"isCurrentDevicePrimaryResident"), device}];

  [(HMDResidentDeviceManagerRoarV3 *)self _checkForResidentSelectionInfoUpdateInNotification:changeCopy];
  addedResidentDevices = [v9 addedResidentDevices];
  if (![addedResidentDevices count])
  {
    deletedResidentDevices = [v9 deletedResidentDevices];
    if (![deletedResidentDevices count])
    {
      reachabilityUpdates = [v9 reachabilityUpdates];
      v14 = [reachabilityUpdates count];

      if (!v14)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = self;
  v16 = v9;
  dispatch_async(queue, v15);

LABEL_6:
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) addedResidentDevices];
    v7 = [v6 count];
    v8 = [*(a1 + 40) deletedResidentDevices];
    v9 = [v8 count];
    v10 = [*(a1 + 40) reachabilityUpdates];
    *buf = 138544130;
    v32 = v5;
    v33 = 2048;
    v34 = v7;
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = [v10 count];
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Residents changed, added: %lu; removed: %lu; reachability: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v11 = [*(a1 + 40) deletedResidentDevices];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_202;
  v30[3] = &unk_278685038;
  v30[4] = *(a1 + 32);
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

  v12 = [*(a1 + 40) addedResidentDevices];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_204;
  v29[3] = &unk_278685038;
  v29[4] = *(a1 + 32);
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];

  v13 = [*(a1 + 40) reachabilityUpdates];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_205;
  v28[3] = &unk_278685038;
  v28[4] = *(a1 + 32);
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];

  v14 = [*(a1 + 40) addedResidentDevices];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [*(a1 + 32) residentSelectionManager];
    v17 = [*(a1 + 40) addedResidentDevices];
    [v16 didAddResidentsToHome:v17];

    if ([*(a1 + 32) homeSupportsResidentSelection])
    {
      v18 = [*(a1 + 32) residentStatusChannel];
      v19 = [v18 isConnected];

      if (v19)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 32);
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud added resident refresh residents reachability", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        [*(a1 + 32) _refreshAllResidentsReachabilityFromStatusKit];
      }
    }
  }

  v24 = [*(a1 + 40) deletedResidentDevices];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [*(a1 + 32) residentSelectionManager];
    v27 = [*(a1 + 40) deletedResidentDevices];
    [v26 didRemoveResidentsFromHome:v27];
  }
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_202(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 name];
    v9 = [v3 identifier];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud removed resident: %@ (%{public}@)", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _removeResidentDevice:v3];
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_204(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 name];
    v9 = [v3 identifier];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud added resident: %@ (%{public}@)", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _addResidentDevice:v3];
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_205(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _verifyAndUpdateReachability:objc_msgSend(v3 forResidentDevice:{"isReachable") ^ 1, v3}];
}

- (unint64_t)myLocation
{
  residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
  residentLocationRawValue = [residentLocationHandler residentLocationRawValue];
  unsignedIntegerValue = [residentLocationRawValue unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)residentSelectionMode
{
  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  currentModeType = [residentSelectionManager currentModeType];

  return currentModeType;
}

- (NSArray)autoSelectedPreferredResidents
{
  v21 = *MEMORY[0x277D85DE8];
  electorsPreferredResidentsList = [(HMDResidentDeviceManagerRoarV3 *)self electorsPreferredResidentsList];
  residentIDSIdentifiers = [electorsPreferredResidentsList residentIDSIdentifiers];
  v5 = [residentIDSIdentifiers mutableCopy];

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesWithIDSIdentifiers:v5];
  v7 = [v6 mutableCopy];

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v9 = [residentSelectionManager residentsNotPresentInPreferredResidentsList:electorsPreferredResidentsList];

  [v7 addObjectsFromArray:v9];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    shortDescription = [v7 shortDescription];
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = shortDescription;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@autoSelectedPreferredResidents: %@.", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v15;
}

- (HMDResidentDevice)userSelectedPreferredResident
{
  v22 = *MEMORY[0x277D85DE8];
  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  currentModeType = [residentSelectionManager currentModeType];

  if (currentModeType == 2)
  {
    residentSelectionInfo = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionInfo];
    preferredResidentIDSIdentifier = [residentSelectionInfo preferredResidentIDSIdentifier];

    if (preferredResidentIDSIdentifier)
    {
      v7 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceWithIDSIdentifier:preferredResidentIDSIdentifier];
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        shortDescription = [v7 shortDescription];
        v18 = 138543618;
        v19 = v11;
        v20 = 2112;
        v21 = shortDescription;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@User preferred resident: %@.", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@We are not in Manual mode. Returning nil for user preferred resident.", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v7 = 0;
  }

  return v7;
}

- (NSArray)residentsPresentOnStatusKit
{
  v3 = [MEMORY[0x277CBEB58] set];
  statusChannel = [(HMDResidentDeviceManagerRoarV3 *)self statusChannel];
  presentResidentStatuses = [statusChannel presentResidentStatuses];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HMDResidentDeviceManagerRoarV3_residentsPresentOnStatusKit__block_invoke;
  v9[3] = &unk_278685010;
  v10 = v3;
  v6 = v3;
  [presentResidentStatuses hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  allObjects = [v6 allObjects];

  return allObjects;
}

void __61__HMDResidentDeviceManagerRoarV3_residentsPresentOnStatusKit__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 idsIdentifier];
  [v2 addObject:v3];
}

- (HMDResidentSelectionInfo)residentSelectionInfo
{
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  residentSelectionInfo = [backingStore residentSelectionInfo];

  presentResidentsStatuses = [(HMDResidentDeviceManagerRoarV3 *)self presentResidentsStatuses];
  selectionInfo = [presentResidentsStatuses selectionInfo];

  v7 = selectionInfo;
  selectionTimestamp = [residentSelectionInfo selectionTimestamp];
  selectionTimestamp2 = [v7 selectionTimestamp];
  v10 = selectionTimestamp2;
  v11 = v7;
  if (selectionTimestamp)
  {
    if (!selectionTimestamp2 || (v11 = v7, [selectionTimestamp compare:selectionTimestamp2] == 1))
    {
      v11 = residentSelectionInfo;
    }
  }

  return v11;
}

- (BOOL)homeSupportsResidentSelection
{
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  residentSelectionVersion = [home residentSelectionVersion];
  v4 = [residentSelectionVersion integerValue] > 2;

  return v4;
}

- (void)_checkForResidentSelectionInfoUpdateInNotification:(id)notification
{
  notificationCopy = notification;
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v6 = [backingStore hasResidentSelectionInfoUpdateInNotification:notificationCopy];

  if (v6)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _checkForResidentSelectionInfoUpdate];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdateInNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __85__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdateInNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingNotifyPrimaryChanged];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingNotifyPrimaryChanged];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setPendingNotifyPrimaryChanged:0];
  }
}

- (void)_checkForResidentSelectionInfoUpdate
{
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  residentSelectionInfo = [backingStore residentSelectionInfo];

  if (residentSelectionInfo)
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdate__block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = residentSelectionInfo;
    dispatch_async(queue, v6);
  }
}

void __70__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) residentSelectionManager];
  [v2 didUpdateResidentSelectionModelTo:*(a1 + 40)];
}

- (id)residentIDSIdentifierToLocationMap
{
  presentResidentsStatuses = [(HMDResidentDeviceManagerRoarV3 *)self presentResidentsStatuses];
  residentIDSIdentifierToLocationMap = [presentResidentsStatuses residentIDSIdentifierToLocationMap];
  v5 = [residentIDSIdentifierToLocationMap mutableCopy];

  currentResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
  if (currentResidentDevice)
  {
    v7 = currentResidentDevice;
    currentResidentDevice2 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
    device = [currentResidentDevice2 device];
    idsIdentifier = [device idsIdentifier];
    v11 = [v5 objectForKeyedSubscript:idsIdentifier];

    if (!v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentDeviceManagerRoarV3 myLocation](self, "myLocation")}];
      currentResidentDevice3 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
      device2 = [currentResidentDevice3 device];
      idsIdentifier2 = [device2 idsIdentifier];
      [v5 setObject:v12 forKeyedSubscript:idsIdentifier2];
    }
  }

  v16 = objc_msgSend_copy(v5);

  return v16;
}

- (id)preferredResidentUUIDs
{
  electorsPreferredResidentsList = [(HMDResidentDeviceManagerRoarV3 *)self electorsPreferredResidentsList];
  residentIDSIdentifiers = [electorsPreferredResidentsList residentIDSIdentifiers];

  return residentIDSIdentifiers;
}

- (HMDPreferredResidentsList)electorsPreferredResidentsList
{
  presentResidentsStatuses = [(HMDResidentDeviceManagerRoarV3 *)self presentResidentsStatuses];
  preferredResidentsList = [presentResidentsStatuses preferredResidentsList];

  return preferredResidentsList;
}

- (void)_startResidentSelectionManager
{
  dataSource = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  v4 = [dataSource createResidentSelectionManagerWithContext:self];
  [(HMDResidentDeviceManagerRoarV3 *)self setResidentSelectionManager:v4];

  residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  [residentSelectionManager setDelegate:self];

  [(HMDResidentDeviceManagerRoarV3 *)self _checkForResidentSelectionInfoUpdate];
  residentSelectionManager2 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  [residentSelectionManager2 start];
}

- (id)_electorForDeterminingResidentLocationFromPresentResidentStatuses:(id)statuses
{
  v14 = *MEMORY[0x277D85DE8];
  statusesCopy = statuses;
  if ([statusesCopy hmf_isEmpty])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@No present resident statuses, returning ourselves as the elector", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    ourSelf = [(HMDResidentDeviceManagerRoarV3 *)selfCopy ourSelf];
  }

  else
  {
    v10 = [[HMDResidentSelectionStatusKit alloc] initWithWithContext:self residentStatusList:statusesCopy];
    ourSelf = [(HMDResidentSelectionStatusKit *)v10 elector];
  }

  return ourSelf;
}

- (id)_residentStatusWithPreferredResidentsList:(id)list
{
  listCopy = list;
  if ([(HMDResidentDeviceManagerRoarV3 *)self isCurrentDevicePrimaryResident])
  {
    primaryResidentGenerationID = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentGenerationID];
  }

  else
  {
    primaryResidentGenerationID = 0;
  }

  residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
  residentLocationRawValue = [residentLocationHandler residentLocationRawValue];

  v8 = [HMDUnpublishedResidentStatus alloc];
  v9 = +[HMDHomeKitVersion currentVersion];
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  residentSelectionInfo = [backingStore residentSelectionInfo];
  ourNetworkConnectionType = [(HMDResidentDeviceManagerRoarV3 *)self ourNetworkConnectionType];
  LOBYTE(v15) = [(HMDResidentDeviceManagerRoarV3 *)self hasReachableAccessories];
  v13 = [(HMDUnpublishedResidentStatus *)v8 initWithVersion:v9 generationID:primaryResidentGenerationID preferredResidentsList:listCopy selectionInfo:residentSelectionInfo connectionType:ourNetworkConnectionType locationRawValue:residentLocationRawValue hasReachableAccessories:v15];

  return v13;
}

- (BOOL)hasReachableAccessories
{
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  if ([home isCurrentDeviceAvailableResident])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    accessories = [home accessories];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__HMDResidentDeviceManagerRoarV3_hasReachableAccessories__block_invoke;
    v6[3] = &unk_278684FE8;
    v6[4] = &v7;
    [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v6];

    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void __57__HMDResidentDeviceManagerRoarV3_hasReachableAccessories__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    if (([v7 supportsCHIP] & 1) == 0)
    {
      v9 = [v8 hostAccessory];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0 && [v8 hasIPLink] && objc_msgSend(v8, "isReachable"))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

- (unint64_t)ourNetworkConnectionType
{
  default_evaluator = nw_path_create_default_evaluator();
  v3 = nw_path_evaluator_copy_path();
  if (MEMORY[0x22AAD4080](v3, 3))
  {
    v4 = 1;
  }

  else if (MEMORY[0x22AAD4080](v3, 1))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_publishCurrentResidentStatusWithReason:(int64_t)reason preferredResidentsList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  listCopy = list;
  residentStatusChannel = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];

  if (!residentStatusChannel)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      v14 = "%{public}@Attempting to publish current resident status but Resident Status Channel is nil";
LABEL_8:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, v14, &v15, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v10);
    goto LABEL_10;
  }

  if (![(HMDResidentDeviceManagerRoarV3 *)self configuredStatusKitForResidentSelection])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      v14 = "%{public}@Attempting to publish current resident status before Resident Status Channel is configured";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [(HMDResidentDeviceManagerRoarV3 *)self _residentStatusWithPreferredResidentsList:listCopy];
  statusChannel = [(HMDResidentDeviceManagerRoarV3 *)self statusChannel];
  [statusChannel publishResidentStatus:v8 reason:reason];

LABEL_10:
}

- (double)blockPrimaryTakeoverDuration
{
  v27 = *MEMORY[0x277D85DE8];
  [(HMDResidentDeviceManagerRoarV3 *)self blockPrimaryTakeoverStartTime];
  v3 = 0.0;
  if (v4 >= 0.0)
  {
    idsServerBag = [(HMDResidentDeviceManagerRoarV3 *)self idsServerBag];
    residentDeviceManagerBlockPrimaryTakeoverDurationSeconds = [idsServerBag residentDeviceManagerBlockPrimaryTakeoverDurationSeconds];

    if (residentDeviceManagerBlockPrimaryTakeoverDurationSeconds)
    {
      [residentDeviceManagerBlockPrimaryTakeoverDurationSeconds doubleValue];
      v8 = v7;
    }

    else
    {
      v8 = 300.0;
    }

    HMFUptime();
    v10 = v9;
    [(HMDResidentDeviceManagerRoarV3 *)self blockPrimaryTakeoverStartTime];
    v12 = v10 - v11;
    v3 = 0.0;
    if (v12 < v8)
    {
      v3 = v8 - v12;
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        [(HMDResidentDeviceManagerRoarV3 *)selfCopy blockPrimaryTakeoverStartTime];
        v19 = 138544130;
        v20 = v16;
        v21 = 2048;
        v22 = v17;
        v23 = 2048;
        v24 = v12;
        v25 = 2048;
        v26 = v8 - v12;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Blocking primary takeover (start: %fs, durationAlreadyBlocked: %fs, durationLeft: %fs)", &v19, 0x2Au);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  return v3;
}

- (double)_initialConnectionToStatusKitOnResidentTimeout
{
  v46 = *MEMORY[0x277D85DE8];
  userDefaults = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  v4 = [userDefaults objectForKey:@"TTSU.Finished"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  userDefaults2 = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  [userDefaults2 removeObjectForKey:@"TTSU.Finished"];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v9 = !isAppleTV() & bOOLValue;
  userDefaults3 = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  v11 = [userDefaults3 objectForKey:@"rpr"];

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

  userDefaults4 = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  [userDefaults4 removeObjectForKey:@"rpr"];

  idsServerBag = [(HMDResidentDeviceManagerRoarV3 *)self idsServerBag];
  statusKitInitialConnectionTimeoutSeconds = [idsServerBag statusKitInitialConnectionTimeoutSeconds];

  if (statusKitInitialConnectionTimeoutSeconds)
  {
    [statusKitInitialConnectionTimeoutSeconds doubleValue];
    v18 = v17;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 60.0;
    if (v9)
    {
LABEL_12:
      if (v13)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = HMFGetLogIdentifier();
          [v13 BOOLValue];
          v23 = HMFBooleanToString();
          v40 = 138543618;
          v41 = v22;
          v42 = 2112;
          v43 = *&v23;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Determining initial StatusKit timeout: using hint from controller homeHasReachableResident: %@", &v40, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        if ([v13 BOOLValue])
        {
LABEL_16:
          HMFUptime();
          goto LABEL_24;
        }
      }

      else
      {
        availableResidentDevices = [(HMDResidentDeviceManagerRoarV3 *)self availableResidentDevices];
        v30 = [availableResidentDevices count];

        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = HMFGetLogIdentifier();
          v40 = 138543618;
          v41 = v34;
          v42 = 2048;
          v43 = *&v30;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Determining initial StatusKit timeout: using available resident devices count: %lu", &v40, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        if (v30 >= 2)
        {
          goto LABEL_16;
        }
      }

      [(HMDResidentDeviceManagerRoarV3 *)self _statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
      v18 = v35;
      v24 = -1.0;
LABEL_24:
      [(HMDResidentDeviceManagerRoarV3 *)self setBlockPrimaryTakeoverStartTime:v24];
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v37 = HMFGetLogIdentifier();
        v38 = HMFBooleanToString();
        v40 = 138543874;
        v41 = v37;
        v42 = 2048;
        v43 = v18;
        v44 = 2112;
        v45 = v38;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Using initial StatusKit timeout of: %f seconds (blockPrimaryTakeover: %@)", &v40, 0x20u);
      }

      goto LABEL_26;
    }
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    v40 = 138543618;
    v41 = v28;
    v42 = 2048;
    v43 = v18;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Using initial StatusKit timeout of: %f seconds", &v40, 0x16u);
  }

LABEL_26:

  objc_autoreleasePoolPop(v25);
  return v18;
}

- (double)_statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds
{
  idsServerBag = [(HMDResidentDeviceManagerRoarV3 *)self idsServerBag];
  statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds = [idsServerBag statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];

  if (statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds)
  {
    [statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  return v5;
}

- (void)_startActingAsResident
{
  v38 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  isCurrentDeviceAvailableResident = [(HMDResidentDeviceManagerRoarV3 *)self isCurrentDeviceAvailableResident];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (isCurrentDeviceAvailableResident)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Met conditions required to start acting as a resident.", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    home = [(HMDResidentDeviceManagerRoarV3 *)selfCopy home];
    homeManager = [home homeManager];
    currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];
    [currentAccessorySetupMetricDispatcher markPrimaryResidentElectionJoinMesh];
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy setActingAsResident:1];
    primaryResidentDevice = [(HMDResidentDeviceManagerRoarV3 *)selfCopy primaryResidentDevice];
    if (primaryResidentDevice)
    {
      reachabilityObserver = [(HMDResidentDeviceManagerRoarV3 *)selfCopy reachabilityObserver];
      messageAddress = [primaryResidentDevice messageAddress];
      [reachabilityObserver removeListener:selfCopy forDeviceAddress:messageAddress];

      deviceMonitor = [(HMDResidentDeviceManagerRoarV3 *)selfCopy deviceMonitor];
      device = [primaryResidentDevice device];
      [deviceMonitor stopMonitoringDevice:device forClient:selfCopy];
    }

    if ([(HMDResidentDeviceManagerRoarV3 *)selfCopy homeSupportsResidentSelection])
    {
      residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentLocationHandler];
      residentLocationRawValue = [residentLocationHandler residentLocationRawValue];
      unsignedIntegerValue = [residentLocationRawValue unsignedIntegerValue];

      if (unsignedIntegerValue == 100)
      {
        [(HMDResidentDeviceManagerRoarV3 *)selfCopy _startRetryTimer];
        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          residentLocationRetryTimer = [(HMDResidentDeviceManagerRoarV3 *)v21 residentLocationRetryTimer];
          fireDate = [residentLocationRetryTimer fireDate];
          [fireDate timeIntervalSinceNow];
          v32 = 138543874;
          v33 = v23;
          v34 = 2112;
          v35 = @"Unknown";
          v36 = 2048;
          v37 = v26;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Resident location is: %@, scheduling retry after %.03f seconds", &v32, 0x20u);
        }
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = StringFromHMDResidentLocation(unsignedIntegerValue);
          v32 = 138543618;
          v33 = v29;
          v34 = 2112;
          v35 = v30;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Resident location determined to: %@", &v32, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v20);
    }

    residentSelectionManager = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentSelectionManager];
    [residentSelectionManager currentDeviceReadyAsAResident];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v27;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Current device is not a resident anymore. Do not start acting as a resident.", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_handleInitialConnectionToStatusKit
{
  v23 = *MEMORY[0x277D85DE8];
  [(HMDResidentDeviceManagerRoarV3 *)self setConfiguredStatusKitForResidentSelection:1];
  residentStatusChannel = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
  isConnected = [residentStatusChannel isConnected];

  if (isConnected)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _refreshAllResidentsReachabilityFromStatusKit];
    v5 = [HMDResidentSelectionStatusKit alloc];
    residentStatusChannel2 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
    presentResidentStatuses = [residentStatusChannel2 presentResidentStatuses];
    v8 = [(HMDResidentSelectionStatusKit *)v5 initWithWithContext:self residentStatusList:presentResidentStatuses];
    [(HMDResidentDeviceManagerRoarV3 *)self setPresentResidentsStatuses:v8];

    residentLocationHandler = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
    residentLocationRawValue = [residentLocationHandler residentLocationRawValue];
    unsignedIntegerValue = [residentLocationRawValue unsignedIntegerValue];

    if (unsignedIntegerValue == 100)
    {
      residentStatusChannel3 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
      presentResidentStatuses2 = [residentStatusChannel3 presentResidentStatuses];
      v14 = [(HMDResidentDeviceManagerRoarV3 *)self _electorForDeterminingResidentLocationFromPresentResidentStatuses:presentResidentStatuses2];

      residentLocationHandler2 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __69__HMDResidentDeviceManagerRoarV3__handleInitialConnectionToStatusKit__block_invoke;
      v20[3] = &unk_27868A250;
      v20[4] = self;
      [residentLocationHandler2 determineHomeOrAwayUsingElector:v14 withCompletion:v20];
    }

    else
    {

      [(HMDResidentDeviceManagerRoarV3 *)self _startActingAsResident];
    }
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
      v22 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not connected to StatusKit, unable to determine resident location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDResidentDeviceManagerRoarV3 *)selfCopy _startActingAsResident];
  }
}

void __69__HMDResidentDeviceManagerRoarV3__handleInitialConnectionToStatusKit__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Determining resident home/away state encountered error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 32) _startActingAsResident];
}

- (void)_setupAsAResident
{
  v38[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v5 = [v3 initWithQueue:queue];

  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  homeManager = [home homeManager];
  currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];

  appleAccountManager = [(HMDResidentDeviceManagerRoarV3 *)self appleAccountManager];
  idsDevicesUpdated = [appleAccountManager idsDevicesUpdated];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke;
  v36[3] = &unk_278687050;
  v36[4] = self;
  v11 = currentAccessorySetupMetricDispatcher;
  v37 = v11;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_180;
  v35[3] = &unk_278689CD8;
  v35[4] = self;
  v12 = [idsDevicesUpdated inContext:v5 then:v36 orRecover:v35];
  dataSource = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  firstCloudKitImportFuture = [dataSource firstCloudKitImportFuture];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_182;
  v33[3] = &unk_278687050;
  v33[4] = self;
  v15 = v11;
  v34 = v15;
  v16 = [firstCloudKitImportFuture inContext:v5 then:v33];
  messageDispatcher = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  startFuture = [secureRemoteTransport startFuture];

  v30[4] = self;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_183;
  v31[3] = &unk_278687050;
  v31[4] = self;
  v32 = v15;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_184;
  v30[3] = &unk_278689CD8;
  v20 = v15;
  v21 = [startFuture inContext:v5 then:v31 orRecover:v30];
  v22 = MEMORY[0x277D0F7C0];
  v38[0] = startFuture;
  v38[1] = firstCloudKitImportFuture;
  v38[2] = idsDevicesUpdated;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  v24 = [v22 allSettled:v23];

  v27[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_185;
  v28[3] = &unk_278687050;
  v28[4] = self;
  v29 = v5;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_193;
  v27[3] = &unk_278689CD8;
  v25 = v5;
  v26 = [v24 inContext:v25 then:v28 orRecover:v27];
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Peer devices settled.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) markPrimaryResidentElectionPeerDeviceFutureResolved];

  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_180(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Peer devices settled with error: %@.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_182(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@First CloudKit import promise resolved.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) markPrimaryResidentElectionFirstCloudKitImportFutureResolved];

  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_183(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Modern Transport Started.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) markPrimaryResidentElectionModernTransportStartedFutureResolved];

  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_184(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Modern Transport start returned error: %@.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_185(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 homeManager];
  v6 = [v5 badCDPState];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Operating in bad CDP state. Not joining the mesh", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else if (([*(a1 + 32) isActingAsResident] & 1) == 0)
  {
    v11 = [*(a1 + 32) appleAccountManager];
    v12 = [v11 device];

    if (v12)
    {
      [*(a1 + 32) _createAllKnownResidentsInHomeWithCurrentDevice:v12 hasResidents:0];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: No current device to add resident devices", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [[HMDAssertionLogEvent alloc] initWithReason:@"No current device to add resident devices"];
      v18 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v18 submitLogEvent:v17];
    }

    v19 = [*(a1 + 32) residentSelectionManager];
    v20 = [v19 currentModeType];

    v21 = *(a1 + 32);
    if (v20 == 1)
    {
      [v21 _startActingAsResident];
    }

    else if ([v21 homeSupportsResidentSelection])
    {
      [*(a1 + 32) _initialConnectionToStatusKitOnResidentTimeout];
      v23 = v22;
      v24 = [*(a1 + 32) residentStatusChannel];
      v25 = [v24 initialConnectedToStatusKitFuture];
      v26 = [v25 timeout:v23];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_191;
      v31[3] = &unk_278689CB0;
      v27 = *(a1 + 40);
      v32 = *(a1 + 32);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_192;
      v30[3] = &unk_278689CD8;
      v30[4] = v32;
      v28 = [v26 inContext:v27 then:v31 orRecover:v30];
    }
  }

  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_193(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not join the mesh. One of the conditions to join was not met", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_191(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received initial Resident Status Channel state.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleInitialConnectionToStatusKit];

  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_192(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Initial Resident Status Channel state returned error: %@.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleInitialConnectionToStatusKit];

  return 1;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDResidentDeviceManagerRoarV3_invalidate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__HMDResidentDeviceManagerRoarV3_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 removeObserver:*(a1 + 32)];

  v3 = [*(a1 + 32) residentSelectionManager];
  [v3 stop];
}

- (void)_configureResidentSupported
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  appleAccountManager = [(HMDResidentDeviceManagerRoarV3 *)self appleAccountManager];
  device = [appleAccountManager device];

  if (device)
  {
    if (![(HMDResidentDeviceManagerRoarV3 *)self isResidentSupported])
    {
      v17 = 0;
      [(HMDResidentDeviceManagerRoarV3 *)self _createAllKnownResidentsInHomeWithCurrentDevice:device hasResidents:&v17];
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        residentDevices = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentDevices];
        *buf = 138543618;
        v19 = v8;
        v20 = 2114;
        v21 = residentDevices;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Initial resident devices: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      residentDevices2 = [(HMDResidentDeviceManagerRoarV3 *)selfCopy residentDevices];
      v11 = [residentDevices2 count] == 0;
      v12 = v11 & v17;

      if (v12 == 1)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = selfCopy;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v19 = v16;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@No HMDResidentDevice but has MKFResident models, force update", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
      }

      [(HMDResidentDeviceManagerRoarV3 *)selfCopy setResidentSupported:1];
      [(HMDResidentDeviceManagerRoarV3 *)selfCopy _updateResidentAvailability:v12];
    }
  }

  else
  {
    [(HMDResidentDeviceManagerRoarV3 *)self setResidentSupported:0];
  }
}

- (void)_createAllKnownResidentsInHomeWithCurrentDevice:(id)device hasResidents:(BOOL *)residents
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = deviceCopy;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Constructing all known resident devices in the home", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)selfCopy backingStore];
  v13 = [backingStore findResidents:v7 outHasResidents:residents];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__HMDResidentDeviceManagerRoarV3__createAllKnownResidentsInHomeWithCurrentDevice_hasResidents___block_invoke;
  v14[3] = &unk_278684FC0;
  v14[4] = selfCopy;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
}

void __95__HMDResidentDeviceManagerRoarV3__createAllKnownResidentsInHomeWithCurrentDevice_hasResidents___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 288));
  [v5 configureWithHome:WeakRetained];

  [*(a1 + 32) _addResidentDevice:v5];
}

- (void)_registerForNotifications
{
  notificationCenter = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  backingStore = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  cloudChangeUpdateNotificationName = [backingStore cloudChangeUpdateNotificationName];
  [notificationCenter addObserver:self selector:sel__handleCloudResidentChange_ name:cloudChangeUpdateNotificationName object:0];

  notificationCenter2 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel__handleRemoteDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  notificationCenter3 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel__handleRemoteDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  notificationCenter4 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  [notificationCenter4 addObserver:self selector:sel__handleResidentSelectionVersionDidChange_ name:@"HMDHomeResidentSelectionVersionDidChangeNotification" object:home];

  notificationCenter5 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [notificationCenter5 addObserver:self selector:sel__handleDataReadyAfterBecomingPrimaryNotification_ name:@"HMDHomeDataReadyAfterBecomingPrimaryNotification" object:0];

  notificationCenter6 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [notificationCenter6 addObserver:self selector:sel__handleHomeLocationChangedNotification_ name:@"HMDLocationForHomeChanged" object:0];
}

- (void)_registerForMessages
{
  v24[3] = *MEMORY[0x277D85DE8];
  home = [(HMDResidentDeviceManagerRoarV3 *)self home];
  messageDispatcher = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24[0] = v7;
  v24[1] = v5;
  v8 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v24[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  [messageDispatcher registerForMessage:@"kResidentDeviceUpdateEnabledRequestKey" receiver:self policies:v9 selector:sel__handleResidentDeviceUpdateEnabled_];

  v10 = +[HMDRemoteMessagePolicy defaultPolicy];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:5 remoteAccessRequired:0];
  if (isInternalBuild())
  {
    v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v23[0] = v12;
    v23[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    [messageDispatcher registerForMessage:@"hm.prdisco" receiver:self policies:v13 selector:sel__handlePrimaryResidentDiscoveryXPCRequest_];
  }

  dataSource = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  isResidentCapable = [dataSource isResidentCapable];

  if (isResidentCapable)
  {
    v22[0] = v10;
    v22[1] = v11;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [messageDispatcher registerForMessage:@"primaryResidentDiscovery" receiver:self policies:v16 selector:sel__handlePrimaryResidentDiscoveryRequest_];
  }

  v17 = *MEMORY[0x277CD05C0];
  v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v21[0] = v18;
  v21[1] = v6;
  v19 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v21[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [messageDispatcher registerForMessage:v17 receiver:self policies:v20 selector:sel_handleSetPreferredResidentSelectionMessage_];
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDResidentDeviceManagerRoarV3_configureWithHome_messageDispatcher___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = homeCopy;
  v13 = dispatcherCopy;
  v9 = dispatcherCopy;
  v10 = homeCopy;
  dispatch_async(queue, block);
}

uint64_t __70__HMDResidentDeviceManagerRoarV3_configureWithHome_messageDispatcher___block_invoke(id *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  [a1[4] setHome:a1[5]];
  v2 = [a1[4] dataSource];
  v3 = [v2 logIdentifierForHome:a1[5]];
  v4 = a1[4];
  v5 = v4[11];
  v4[11] = v3;

  v6 = [a1[5] uuid];
  v7 = a1[4];
  v8 = v7[10];
  v7[10] = v6;

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    isInternalBuild();
    v13 = HMFBooleanToString();
    v14 = [a1[4] dataSource];
    [v14 isResidentCapable];
    v15 = HMFBooleanToString();
    v45 = 138543874;
    v46 = v12;
    v47 = 2112;
    v48 = v13;
    v49 = 2112;
    v50 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring and registering for messages, isInternal: %@, isResidentEnabled: %@", &v45, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v16 = [a1[4] dataSource];
  v17 = [v16 createBackingStoreForHome:a1[5]];
  v18 = a1[4];
  v19 = v18[20];
  v18[20] = v17;

  objc_storeStrong(a1[4] + 8, a1[6]);
  v20 = [a1[6] secureRemoteTransport];
  v21 = [v20 modernReachabilityObserver];
  [a1[4] setReachabilityObserver:v21];

  v22 = [a1[6] secureRemoteTransport];
  v23 = [v22 deviceMonitor];
  [a1[4] setDeviceMonitor:v23];

  [a1[4] _registerForMessages];
  [a1[4] _registerForNotifications];
  [a1[4] _startResidentSelectionManager];
  v24 = [a1[4] primaryDiscoveryManager];
  [v24 configureWithContext:a1[4]];

  if ([a1[4] homeSupportsResidentSelection])
  {
    v25 = [a1[4] dataSource];
    v26 = [v25 createResidentStatusChannelForHome:a1[5] queue:*(a1[4] + 2)];
    v27 = a1[4];
    v28 = v27[26];
    v27[26] = v26;

    v29 = [a1[4] statusChannel];
    [v29 addObserver:a1[4]];

    v30 = [HMDResidentStatusChannelManager alloc];
    v31 = [a1[4] statusChannel];
    v32 = [a1[4] queue];
    v33 = [a1[4] idsServerBag];
    v34 = [(HMDResidentStatusChannelManager *)v30 initWithResidentStatusChannel:v31 queue:v32 idsServerBag:v33];
    v35 = a1[4];
    v36 = v35[27];
    v35[27] = v34;

    v37 = [a1[4] residentStatusChannelManager];
    v38 = [a1[4] statusChannel];
    [v38 setManager:v37];

    v39 = [a1[4] residentStatusChannelManager];
    [v39 configure];
  }

  [a1[4] setPendingNotifyPrimaryChanged:0];
  v40 = [a1[4] dataSource];
  v41 = [v40 createResidentLocationHandlerForHome:a1[5] queue:*(a1[4] + 2) messageDispatcher:a1[6]];
  v42 = a1[4];
  v43 = v42[33];
  v42[33] = v41;

  return [a1[4] _configureResidentSupported];
}

- (HMDResidentDeviceManagerRoarV3)initWithDataSource:(id)source featuresDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v31.receiver = self;
  v31.super_class = HMDResidentDeviceManagerRoarV3;
  v9 = [(HMDResidentDeviceManagerRoarV3 *)&v31 init];
  if (v9)
  {
    v10 = HMFGetOSLogHandle();
    logger = v9->_logger;
    v9->_logger = v10;

    queue = [sourceCopy queue];
    queue = v9->_queue;
    v9->_queue = queue;

    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v9->_featuresDataSource, dataSource);
    logIdentifier = v9->_logIdentifier;
    v9->_logIdentifier = @"<unconfigured>";

    messageTargetUUID = v9->_messageTargetUUID;
    v9->_messageTargetUUID = 0;

    v16 = [MEMORY[0x277CBEB58] set];
    residentDevices = v9->_residentDevices;
    v9->_residentDevices = v16;

    notificationCenter = [sourceCopy notificationCenter];
    notificationCenter = v9->_notificationCenter;
    v9->_notificationCenter = notificationCenter;

    appleAccountManager = [sourceCopy appleAccountManager];
    appleAccountManager = v9->_appleAccountManager;
    v9->_appleAccountManager = appleAccountManager;

    v9->_residentCapable = [sourceCopy isResidentCapable];
    v22 = [sourceCopy createPrimaryResidentDiscoveryManagerWithQueue:v9->_queue];
    primaryDiscoveryManager = v9->_primaryDiscoveryManager;
    v9->_primaryDiscoveryManager = v22;

    [(HMDPrimaryResidentDiscoveryManager *)v9->_primaryDiscoveryManager setDelegate:v9];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    primaryDiscoveryRequesters = v9->_primaryDiscoveryRequesters;
    v9->_primaryDiscoveryRequesters = weakObjectsHashTable;

    v26 = [MEMORY[0x277D0F7C0] futureWithPromise:&v9->_firstPrimaryResidentDiscoveryAttemptCompletionPromise];
    firstPrimaryResidentDiscoveryAttemptCompletionFuture = v9->_firstPrimaryResidentDiscoveryAttemptCompletionFuture;
    v9->_firstPrimaryResidentDiscoveryAttemptCompletionFuture = v26;

    v9->_configuredStatusKitForResidentSelection = 0;
    userDefaults = [sourceCopy userDefaults];
    userDefaults = v9->_userDefaults;
    v9->_userDefaults = userDefaults;

    v9->_blockPrimaryTakeoverStartTime = -1.0;
  }

  return v9;
}

- (HMDResidentDeviceManagerRoarV3)init
{
  v3 = objc_alloc_init(HMDDefaultResidentDeviceManagerRoarV3DataSource);
  v4 = +[HMDFeaturesDataSource defaultDataSource];
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self initWithDataSource:v3 featuresDataSource:v4];

  return v5;
}

void __45__HMDResidentDeviceManagerRoarV3_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v124;
  logCategory__hmf_once_v124 = v0;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end