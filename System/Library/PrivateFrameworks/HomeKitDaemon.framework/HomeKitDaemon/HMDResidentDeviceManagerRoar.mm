@interface HMDResidentDeviceManagerRoar
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updatePrimaryResidentGenerationID:(id)d;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to;
- (BOOL)hasAnyResident;
- (BOOL)hasTrustZoneCapableResident;
- (BOOL)isCurrentDeviceAvailableResident;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isOwnerUser;
- (BOOL)isResidentAvailable;
- (BOOL)isResidentEnabled;
- (BOOL)isResidentSupported;
- (HMDDevice)confirmedPrimaryResidentDevice;
- (HMDHome)home;
- (HMDResidentDevice)primaryResidentDevice;
- (HMDResidentDeviceManagerDelegate)delegate;
- (HMDResidentDeviceManagerRoar)init;
- (HMDResidentDeviceManagerRoar)initWithDataSource:(id)source;
- (NSArray)residentDevices;
- (NSUUID)primaryResidentGenerationID;
- (NSUUID)primaryResidentUUID;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)dumpState;
- (id)foundNewPrimaryResident:(id)resident generationID:(id)d selectionTimestamp:(id)timestamp changeSource:(unint64_t)source;
- (id)ourSelf;
- (id)residentDeviceForDevice:(id)device;
- (id)residentDeviceWithIDSIdentifier:(id)identifier;
- (id)residentDevicesSet;
- (id)residentDevicesWithIDSIdentifiers:(id)identifiers;
- (id)residentWithUUID:(id)d;
- (id)shortDescription;
- (int64_t)atHomeLevel;
- (void)_addResidentDevice:(id)device;
- (void)_checkPrimaryResidentDeviceRemoved:(id)removed currentPrimary:(id)primary;
- (void)_configureResidentSupported;
- (void)_discoverPrimaryResidentForRequester:(id)requester;
- (void)_handleCloudResidentChange:(id)change;
- (void)_handleCloudZoneReadyNotification:(id)notification;
- (void)_handlePrimaryResident:(id)resident isReachable:(BOOL)reachable;
- (void)_handlePrimaryResidentDiscoveryRequest:(id)request;
- (void)_handlePrimaryResidentDiscoveryXPCRequest:(id)request;
- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)to previousPrimaryResident:(id)resident;
- (void)_handleRemoteDeviceIsNotReachable:(id)reachable;
- (void)_handleRemoteDeviceIsReachable:(id)reachable;
- (void)_handleResidentDeviceUpdateEnabled:(id)enabled;
- (void)_handleResidentSelectionVersionDidChange:(id)change;
- (void)_handleUpdatedPrimaryFromLeader:(id)leader;
- (void)_handleUpdatedPrimaryResidentDevice:(id)device previousPrimaryResident:(id)resident generationID:(id)d changeSource:(unint64_t)source;
- (void)_joinLocalMesh;
- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)resident;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_removeResidentDevice:(id)device;
- (void)_run;
- (void)_sendResidentDeviceNotificationWithName:(id)name forResidentDevice:(id)device;
- (void)_setResident:(id)resident reachableOverIDS:(BOOL)s andNotify:(BOOL)notify;
- (void)_setupSessionWithPrimaryResidentDevice;
- (void)_startLocalNetworkElection;
- (void)_stopLocalNetworkElection;
- (void)_teardownSessionWithPrimaryResidentDevice;
- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)device;
- (void)_updateReachability:(BOOL)reachability forResidentDevice:(id)device;
- (void)_updateReachability:(BOOL)reachability forResidentDevices:(id)devices;
- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)resident;
- (void)_updateResidentAvailability:(BOOL)availability;
- (void)_updateResidentIDSReachability:(BOOL)reachability withUpdatedDevice:(id)device;
- (void)_updateResidentReachabilityWithResidents:(id)residents;
- (void)accountOrDeviceDidUpdate:(id)update;
- (void)addDataSource:(id)source;
- (void)atHomeLevelChanged:(int64_t)changed;
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
- (void)invalidate;
- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)update isReachable:(BOOL)reachable;
- (void)notifyClientsOfUpdatedResidentDevice:(id)device;
- (void)notifyResidentAvailable:(BOOL)available;
- (void)notifyUpdatedPrimaryResident:(id)resident previousPrimaryResident:(id)primaryResident;
- (void)primaryElectionAddOn:(id)on didElectPrimaryResident:(id)resident confirmed:(BOOL)confirmed electionLogEvent:(id)event;
- (void)primaryElectionAddOn:(id)on didFailToElectWithError:(id)error;
- (void)primaryElectionAddOn:(id)on didReceivePrimaryResidentUUIDFromLeader:(id)leader;
- (void)primaryElectionAddOn:(id)on didUpdateActiveNodes:(id)nodes;
- (void)primaryElectionAddOn:(id)on didUpdateResidentDevice:(id)device;
- (void)removeResidentDevice:(id)device;
- (void)run;
- (void)sawGenerationID:(id)d forDevice:(id)device;
- (void)setResidentAvailable:(BOOL)available;
- (void)setResidentSupported:(BOOL)supported;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updatePrimaryResidentWithUUID:(id)d actions:(id)actions;
- (void)updateResidentAvailability;
@end

@implementation HMDResidentDeviceManagerRoar

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

- (void)primaryElectionAddOn:(id)on didReceivePrimaryResidentUUIDFromLeader:(id)leader
{
  leaderCopy = leader;
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDResidentDeviceManagerRoar *)self _handleUpdatedPrimaryFromLeader:leaderCopy];
}

- (void)primaryElectionAddOn:(id)on didFailToElectWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  onCopy = on;
  errorCopy = error;
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v12;
    v15 = 2112;
    v16 = onCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Election %@ failed: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)primaryElectionAddOn:(id)on didUpdateActiveNodes:(id)nodes
{
  nodesCopy = nodes;
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDResidentDeviceManagerRoar *)self _updateResidentReachabilityWithResidents:nodesCopy];
}

- (void)primaryElectionAddOn:(id)on didUpdateResidentDevice:(id)device
{
  deviceCopy = device;
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(queue);

  residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v7 = [residentDevices containsObject:deviceCopy];

  if ((v7 & 1) == 0)
  {
    [(HMDResidentDeviceManagerRoar *)self _addResidentDevice:deviceCopy];
  }

  [(HMDResidentDeviceManagerRoar *)self notifyClientsOfUpdatedResidentDevice:deviceCopy];
}

- (void)primaryElectionAddOn:(id)on didElectPrimaryResident:(id)resident confirmed:(BOOL)confirmed electionLogEvent:(id)event
{
  residentCopy = resident;
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([residentCopy isCurrentDevice])
  {
    [MEMORY[0x277CCAD78] UUID];
  }

  else
  {
    [(HMDResidentDeviceManagerRoar *)self primaryResidentGenerationID];
  }
  v8 = ;
  primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  [(HMDResidentDeviceManagerRoar *)self _handleUpdatedPrimaryResidentDevice:residentCopy previousPrimaryResident:primaryResidentDevice generationID:v8 changeSource:1];
}

- (void)_handleUpdatedPrimaryFromLeader:(id)leader
{
  v25 = *MEMORY[0x277D85DE8];
  leaderCopy = leader;
  primaryResidentUUID = [(HMDResidentDeviceManagerRoar *)self primaryResidentUUID];
  v6 = [leaderCopy isEqual:primaryResidentUUID];

  if ((v6 & 1) == 0)
  {
    v7 = [(HMDResidentDeviceManagerRoar *)self residentWithUUID:leaderCopy];
    primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Leader notified that we are the primary. Becoming the primary resident.", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(HMDResidentDeviceManagerRoar *)selfCopy _handleUpdatedPrimaryResidentDevice:v7 previousPrimaryResident:primaryResidentDevice generationID:uUID changeSource:2];
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Leader notified a new primary resident in the ping notification: %{public}@. Current Primary: %{public}@. Kicking off a primary resident discovery", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDResidentDeviceManagerRoar *)selfCopy _discoverPrimaryResidentForRequester:0];
    }
  }
}

- (void)_updateResidentReachabilityWithResidents:(id)residents
{
  v18 = *MEMORY[0x277D85DE8];
  residentsCopy = residents;
  dispatch_assert_queue_V2(self->_queue);
  if ([(HMDResidentDeviceManagerRoar *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = residentsCopy;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing resident reachability update: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke;
    v13[3] = &unk_278685038;
    v13[4] = selfCopy;
    [residentsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
    residentDevicesSet = [(HMDResidentDeviceManagerRoar *)selfCopy residentDevicesSet];
    v10 = [residentDevicesSet hmf_removedObjectsFromSet:residentsCopy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke_2;
    v12[3] = &unk_278685038;
    v12[4] = selfCopy;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];
    backingStore = [(HMDResidentDeviceManagerRoar *)selfCopy backingStore];
    [backingStore updateReachabilityForResidents:residentsCopy];
  }
}

void __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isReachable] & 1) == 0)
  {
    [*(a1 + 32) _updateReachability:1 forResidentDevice:v3];
  }
}

void __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isReachable])
  {
    [*(a1 + 32) _updateReachability:0 forResidentDevice:v3];
  }
}

- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)to previousPrimaryResident:(id)resident
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  residentCopy = resident;
  if (!toCopy)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    residentDevices = [(HMDResidentDeviceManagerRoar *)selfCopy residentDevices];
    [(HMDResidentDeviceManagerRoar *)selfCopy _updateReachability:0 forResidentDevices:residentDevices];
    goto LABEL_7;
  }

  if ([toCopy isCurrentDevice])
  {
    v8 = MEMORY[0x277CBEB58];
    localNetworkElection = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
    residentsInMesh = [localNetworkElection residentsInMesh];
    residentDevices = [v8 setWithSet:residentsInMesh];

    [residentDevices addObject:toCopy];
    [(HMDResidentDeviceManagerRoar *)self _updateResidentReachabilityWithResidents:residentDevices];
LABEL_7:
  }
}

- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy isCurrentDevice] && !-[HMDResidentDeviceManagerRoar hasActivePrimaryResidentTransaction](self, "hasActivePrimaryResidentTransaction"))
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
    v9 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.primary-resident"];
    goto LABEL_11;
  }

  if (([deviceCopy isCurrentDevice] & 1) == 0 && -[HMDResidentDeviceManagerRoar hasActivePrimaryResidentTransaction](self, "hasActivePrimaryResidentTransaction"))
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
    v9 = 0;
LABEL_11:
    primaryResidentTransaction = self->_primaryResidentTransaction;
    self->_primaryResidentTransaction = v9;
  }
}

- (void)_handleUpdatedPrimaryResidentDevice:(id)device previousPrimaryResident:(id)resident generationID:(id)d changeSource:(unint64_t)source
{
  v70 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  residentCopy = resident;
  dCopy = d;
  isCurrentDevice = [deviceCopy isCurrentDevice];
  if (deviceCopy)
  {
    isReachable = [deviceCopy isReachable];
  }

  else
  {
    isReachable = 1;
  }

  if (!((residentCopy != 0) & isReachable | (deviceCopy == 0) | isCurrentDevice & 1))
  {
    [(HMDResidentDeviceManagerRoar *)self _updateReachabilityFromWorkingStoreExceptResident:deviceCopy];
  }

  if (isReachable)
  {
    if (!deviceCopy)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v63 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      residentDevices = [(HMDResidentDeviceManagerRoar *)selfCopy residentDevices];
      [(HMDResidentDeviceManagerRoar *)selfCopy _updateReachability:0 forResidentDevices:residentDevices];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Marking new primary resident as reachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDResidentDeviceManagerRoar *)selfCopy2 _updateReachability:1 forResidentDevice:deviceCopy];
  }

  identifier = [residentCopy identifier];
  identifier2 = [deviceCopy identifier];
  v25 = HMFEqualObjects();

  if (v25)
  {
    [(HMDResidentDeviceManagerRoar *)self _updatePrimaryResidentGenerationID:dCopy];
    goto LABEL_37;
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier();
    v30 = v29;
    if (source - 1 > 6)
    {
      v31 = @"resident removed";
    }

    else
    {
      v31 = off_27867D278[source - 1];
    }

    *buf = 138544130;
    v63 = v29;
    v64 = 2112;
    v65 = v31;
    v66 = 2112;
    v67 = residentCopy;
    v68 = 2112;
    v69 = deviceCopy;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Updating primary resident due to %@, from %@ to %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
  os_unfair_lock_lock_with_options();
  identifier3 = [deviceCopy identifier];
  primaryResidentUUID = selfCopy3->_primaryResidentUUID;
  selfCopy3->_primaryResidentUUID = identifier3;

  v34 = HMFEqualObjects();
  if ((v34 & 1) == 0)
  {
    objc_storeStrong(&selfCopy3->_primaryResidentGenerationID, d);
  }

  os_unfair_lock_unlock(&selfCopy3->_lock);
  if (![(HMDResidentDeviceManagerRoar *)selfCopy3 isActingAsResident])
  {
    if (residentCopy)
    {
      reachabilityObserver = [(HMDResidentDeviceManagerRoar *)selfCopy3 reachabilityObserver];
      device = [residentCopy device];
      deviceAddress = [device deviceAddress];
      [reachabilityObserver removeListener:selfCopy3 forDeviceAddress:deviceAddress];

      deviceMonitor = [(HMDResidentDeviceManagerRoar *)selfCopy3 deviceMonitor];
      device2 = [residentCopy device];
      [deviceMonitor stopMonitoringDevice:device2 forClient:selfCopy3];
    }

    if (deviceCopy)
    {
      reachabilityObserver2 = [(HMDResidentDeviceManagerRoar *)selfCopy3 reachabilityObserver];
      device3 = [deviceCopy device];
      deviceAddress2 = [device3 deviceAddress];
      [reachabilityObserver2 addListener:selfCopy3 forDeviceAddress:deviceAddress2];

      deviceMonitor2 = [(HMDResidentDeviceManagerRoar *)selfCopy3 deviceMonitor];
      device4 = [deviceCopy device];
      [deviceMonitor2 startMonitoringDevice:device4 withInitialReachability:0 forClient:selfCopy3];

      deviceMonitor3 = [(HMDResidentDeviceManagerRoar *)selfCopy3 deviceMonitor];
      unreachableDevices = [deviceMonitor3 unreachableDevices];
      device5 = [deviceCopy device];
      -[HMDResidentDeviceManagerRoar _setResident:reachableOverIDS:andNotify:](selfCopy3, "_setResident:reachableOverIDS:andNotify:", deviceCopy, [unreachableDevices containsObject:device5] ^ 1, 0);
    }
  }

  [(HMDResidentDeviceManagerRoar *)selfCopy3 _updatePrimaryResidentTransactionWithPrimaryResidentDevice:deviceCopy];
  [(HMDResidentDeviceManagerRoar *)selfCopy3 notifyUpdatedPrimaryResident:deviceCopy previousPrimaryResident:residentCopy];
  if ((v34 & 1) == 0)
  {
    v48 = objc_autoreleasePoolPush();
    v49 = selfCopy3;
    v50 = HMFGetOSLogHandle();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
    if (isCurrentDevice)
    {
      if (v51)
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v63 = v52;
        v64 = 2114;
        v65 = dCopy;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Using newly generated primaryResidentGenerationID = %{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v53;
      v64 = 2114;
      v65 = dCopy;
      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Updating primaryResidentGenerationID = %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v48);
  }

  if ((deviceCopy == 0) | isCurrentDevice & 1)
  {
    [(HMDResidentDeviceManagerRoar *)selfCopy3 _teardownSessionWithPrimaryResidentDevice];
LABEL_37:
    if (!deviceCopy)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  [(HMDResidentDeviceManagerRoar *)selfCopy3 _setupSessionWithPrimaryResidentDevice];
LABEL_40:
  primaryDiscoveryManager = [(HMDResidentDeviceManagerRoar *)self primaryDiscoveryManager];
  [primaryDiscoveryManager cancel];

  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    v56 = logger;
    identifier4 = [deviceCopy identifier];
    *buf = 138412290;
    v63 = identifier4;
    _os_signpost_emit_with_name_impl(&dword_229538000, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HH2ElectedPrimaryResident", "electedPrimaryResidentIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

LABEL_42:
  [(HMDResidentDeviceManagerRoar *)self _handleReachabilityAfterPrimaryResidentChangedTo:deviceCopy previousPrimaryResident:residentCopy];
  device6 = [deviceCopy device];
  if (-[HMDResidentDeviceManagerRoar isCurrentDeviceConfirmedPrimaryResident](self, "isCurrentDeviceConfirmedPrimaryResident") && [device6 isCurrentDevice])
  {
    backingStore = [(HMDResidentDeviceManagerRoar *)self backingStore];
    availableResidentDevices = [(HMDResidentDeviceManagerRoar *)self availableResidentDevices];
    [backingStore updateIdentifiersForAvailableResidentDevices:availableResidentDevices];
  }
}

- (void)_updateReachability:(BOOL)reachability forResidentDevices:(id)devices
{
  reachabilityCopy = reachability;
  v16 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [devicesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(devicesCopy);
        }

        [(HMDResidentDeviceManagerRoar *)self _updateReachability:reachabilityCopy forResidentDevice:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [devicesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)resident
{
  v20 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  residentDevicesSet = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
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
  queue = [(HMDResidentDeviceManagerRoar *)selfCopy queue];
  v13 = [v11 initWithQueue:queue];

  backingStore = [(HMDResidentDeviceManagerRoar *)selfCopy backingStore];
  v15 = [backingStore residentsRequiringReachabilityUpdate:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke;
  v17[3] = &unk_2786851F0;
  v17[4] = selfCopy;
  v16 = [v15 inContext:v13 then:v17];
}

uint64_t __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2;
  v3[3] = &unk_278685038;
  v3[4] = *(a1 + 32);
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
  return 1;
}

void __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isReachable];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v10 = 138543874;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating resident reachability from database to %@ for: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) _updateReachability:v4 ^ 1u forResidentDevice:v3];
}

- (int64_t)atHomeLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_home);
  atHomeLevel = [WeakRetained atHomeLevel];

  return atHomeLevel;
}

- (BOOL)isOwnerUser
{
  home = [(HMDResidentDeviceManagerRoar *)self home];
  isOwnerUser = [home isOwnerUser];

  return isOwnerUser;
}

- (BOOL)isResidentEnabled
{
  ourSelf = [(HMDResidentDeviceManagerRoar *)self ourSelf];
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

- (id)dumpState
{
  v38 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  localNetworkElection = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];

  if (localNetworkElection)
  {
    localNetworkElection2 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
    dumpState = [localNetworkElection2 dumpState];
    [dictionary setObject:dumpState forKeyedSubscript:@"Election.Coordination"];
  }

  home = [(HMDResidentDeviceManagerRoar *)self home];
  v8 = MEMORY[0x277CCACA8];
  v31 = home;
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  v11 = v10 = dictionary;
  device = [v11 device];
  identifier = [device identifier];
  uUIDString2 = [identifier UUIDString];
  [(HMDResidentDeviceManagerRoar *)self isResidentAvailable];
  v15 = HMFBooleanToString();
  [(HMDResidentDeviceManagerRoar *)self isResidentSupported];
  v16 = HMFBooleanToString();
  v17 = [v8 stringWithFormat:@"home: %@, primaryResidentDevice: %@ isResidentAvailable: %@, isResidentSupported: %@", uUIDString, uUIDString2, v15, v16];
  v32 = v10;
  [v10 setObject:v17 forKeyedSubscript:@"State"];

  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v20 = [residentDevices countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(residentDevices);
        }

        dumpState2 = [*(*(&v33 + 1) + 8 * i) dumpState];
        [array addObject:dumpState2];
      }

      v21 = [residentDevices countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  [v32 setObject:array forKeyedSubscript:@"Residents"];
  messageDispatcher = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  deviceMonitor = [secureRemoteTransport deviceMonitor];
  dumpState3 = [deviceMonitor dumpState];
  [v32 setObject:dumpState3 forKeyedSubscript:@"Remote Device Monitor"];

  return v32;
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

  residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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
  messageTargetUUID = [(HMDResidentDeviceManagerRoar *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (void)_updateReachability:(BOOL)reachability forResidentDevice:(id)device
{
  reachabilityCopy = reachability;
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  isReachable = [deviceCopy isReachable];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (isReachable == reachabilityCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = "un";
      v16 = 138543874;
      v17 = v14;
      if (reachabilityCopy)
      {
        v15 = "";
      }

      v18 = 2112;
      v19 = deviceCopy;
      v20 = 2080;
      v21 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Resident %@ is already %sreachable", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMFBooleanToString();
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = deviceCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Setting reachability to %@ for resident %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [deviceCopy setReachable:reachabilityCopy];
    [(HMDResidentDeviceManagerRoar *)selfCopy notifyClientsOfUpdatedResidentDevice:deviceCopy];
  }
}

- (void)_updateResidentIDSReachability:(BOOL)reachability withUpdatedDevice:(id)device
{
  deviceCopy = device;
  if (![(HMDResidentDeviceManagerRoar *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDResidentDeviceManagerRoar__updateResidentIDSReachability_withUpdatedDevice___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = deviceCopy;
    reachabilityCopy = reachability;
    dispatch_async(queue, block);
  }
}

void __81__HMDResidentDeviceManagerRoar__updateResidentIDSReachability_withUpdatedDevice___block_invoke(uint64_t a1)
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
      [(HMDResidentDeviceManagerRoar *)selfCopy notifyClientsOfUpdatedResidentDevice:residentCopy];
    }
  }
}

- (void)_handleResidentSelectionVersionDidChange:(id)change
{
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDResidentDeviceManagerRoar__handleResidentSelectionVersionDidChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __73__HMDResidentDeviceManagerRoar__handleResidentSelectionVersionDidChange___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 residentSelectionVersion];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    [*(a1 + 32) isActingAsResident];
    v8 = HMFBooleanToString();
    v13 = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Device is acting as resident %@, home's resident selection version changed to %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 32) isActingAsResident] && objc_msgSend(v3, "integerValue") >= 3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Exiting mesh since home's resident selection version changed to %{public}@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 32) _stopLocalNetworkElection];
  }
}

- (void)_handleRemoteDeviceIsNotReachable:(id)reachable
{
  object = [reachable object];
  [(HMDResidentDeviceManagerRoar *)self _updateResidentIDSReachability:0 withUpdatedDevice:object];
}

- (void)_handleRemoteDeviceIsReachable:(id)reachable
{
  object = [reachable object];
  [(HMDResidentDeviceManagerRoar *)self _updateResidentIDSReachability:1 withUpdatedDevice:object];
}

- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)update isReachable:(BOOL)reachable
{
  updateCopy = update;
  if (![(HMDResidentDeviceManagerRoar *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__HMDResidentDeviceManagerRoar_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = updateCopy;
    reachableCopy = reachable;
    dispatch_async(queue, block);
  }
}

void __95__HMDResidentDeviceManagerRoar_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke(uint64_t a1)
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
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HMDResidentDeviceManagerRoar_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __82__HMDResidentDeviceManagerRoar_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke(uint64_t a1)
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
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __93__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke(uint64_t a1)
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
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __129__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke;
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

void __129__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) primaryDiscoveryRequesters];
  v3 = objc_msgSend_copy(v2);

  v4 = [*(a1 + 32) primaryDiscoveryRequesters];
  [v4 removeAllObjects];

  v5 = *(a1 + 40);
  if (v5)
  {
    [*(a1 + 32) handlePrimaryResidentDiscovered:v5 primaryResidentGenerationID:*(a1 + 48)];
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
  v16 = *MEMORY[0x277D85DE8];
  if (device != 7)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (![(HMDResidentDeviceManagerRoar *)self isActingAsResident])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@SetPreferredPrimary - This device is not an acting resident, returning from electResidentDevice", buf, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v5);
    return;
  }

  localNetworkElection = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [localNetworkElection selectPrimaryResidentWithReason:7];
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = [(HMDResidentDeviceManagerRoar *)self residentDeviceForDevice:toCopy];
  if ([(HMDResidentDeviceManagerRoar *)self isCurrentDevicePrimaryResident])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [toCopy shortDescription];
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = shortDescription;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Request for external update of the primary resident to: %{public}@ received while we are the primary", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  localNetworkElection = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];

  if (localNetworkElection)
  {
    localNetworkElection2 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
    v13 = [localNetworkElection2 allowExternalUpdateOfPrimaryResidentTo:v5];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)sawGenerationID:(id)d forDevice:(id)device
{
  dCopy = d;
  deviceCopy = device;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDResidentDeviceManagerRoar_sawGenerationID_forDevice___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = deviceCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = deviceCopy;
  dispatch_async(queue, block);
}

void __58__HMDResidentDeviceManagerRoar_sawGenerationID_forDevice___block_invoke(uint64_t a1)
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

- (id)foundNewPrimaryResident:(id)resident generationID:(id)d selectionTimestamp:(id)timestamp changeSource:(unint64_t)source
{
  residentCopy = resident;
  dCopy = d;
  v11 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  v13 = [v11 initWithQueue:queue];

  v14 = MEMORY[0x277D0F7C0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__HMDResidentDeviceManagerRoar_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke;
  v19[3] = &unk_27867D258;
  v19[4] = self;
  v20 = residentCopy;
  v21 = dCopy;
  sourceCopy = source;
  v15 = dCopy;
  v16 = residentCopy;
  v17 = [v14 inContext:v13 perform:v19];

  return v17;
}

uint64_t __101__HMDResidentDeviceManagerRoar_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke(uint64_t a1)
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
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
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
    if (![v14 allowExternalUpdateOfPrimaryResidentTo:*(a1 + 40)])
    {
      v16 = 1;
      goto LABEL_11;
    }

    v17 = *(a1 + 32);
    v15 = [v17 primaryResidentDevice];
    [v17 _handleUpdatedPrimaryResidentDevice:v2 previousPrimaryResident:v15 generationID:*(a1 + 48) changeSource:*(a1 + 56)];
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
  v7[2] = __59__HMDResidentDeviceManagerRoar_handleCurrentDeviceChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

void __59__HMDResidentDeviceManagerRoar_handleCurrentDeviceChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = [*(a1 + 40) notificationCenter];
  [v4 removeObserver:*(a1 + 40) name:@"HMDDeviceUpdatedNotification" object:0];
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
    residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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
  isCurrentDevicePrimaryResident = [(HMDResidentDeviceManagerRoar *)self isCurrentDevicePrimaryResident];
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
    currentResidentDevice = [(HMDResidentDeviceManagerRoar *)selfCopy currentResidentDevice];
    identifier = [currentResidentDevice identifier];
    uUIDString = [identifier UUIDString];
    v21 = uUIDString;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [v14 mutableCopy];

    primaryResidentGenerationID = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentGenerationID];
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
  v9 = objc_alloc_init(HMDResidentDeviceManagerXPCDiscoveryRequester);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HMDResidentDeviceManagerRoar__handlePrimaryResidentDiscoveryXPCRequest___block_invoke;
  v12[3] = &unk_278685108;
  v13 = v9;
  v14 = selfCopy;
  v15 = requestCopy;
  v10 = requestCopy;
  v11 = v9;
  [(HMDResidentDeviceManagerXPCDiscoveryRequester *)v11 setBlock:v12];
  [(HMDResidentDeviceManagerRoar *)selfCopy _discoverPrimaryResidentForRequester:v11];
}

void __74__HMDResidentDeviceManagerRoar__handlePrimaryResidentDiscoveryXPCRequest___block_invoke(uint64_t a1, void *a2, void *a3)
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
    residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__HMDResidentDeviceManagerRoar_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke;
    v16[3] = &unk_2786850E0;
    v9 = discoveredCopy;
    v17 = v9;
    v10 = [residentDevices na_any:v16];

    if ((v10 & 1) == 0)
    {
      [(HMDResidentDeviceManagerRoar *)self _addResidentDevice:v9];
    }

    primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
    [(HMDResidentDeviceManagerRoar *)self _handleUpdatedPrimaryResidentDevice:v9 previousPrimaryResident:primaryResidentDevice generationID:dCopy changeSource:4];
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

uint64_t __92__HMDResidentDeviceManagerRoar_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke(uint64_t a1, void *a2)
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
  v19 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Running primary resident discovery", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  queue = [(HMDResidentDeviceManagerRoar *)selfCopy queue];
  dispatch_assert_queue_V2(queue);

  if (![(HMDResidentDeviceManagerRoar *)selfCopy isResidentSupported])
  {
    primaryResidentDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v11 = requesterCopy;
    v12 = selfCopy;
    v13 = 0;
    v14 = primaryResidentDevice;
    goto LABEL_7;
  }

  primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentDevice];
  if ([primaryResidentDevice isCurrentDevice])
  {
    v11 = requesterCopy;
    v12 = selfCopy;
    v13 = primaryResidentDevice;
    v14 = 0;
LABEL_7:
    [v11 residentDeviceManager:v12 didCompleteDiscoveryWithPrimaryResidentDevice:v13 error:v14];
    goto LABEL_11;
  }

  if (requesterCopy)
  {
    primaryDiscoveryRequesters = [(HMDResidentDeviceManagerRoar *)selfCopy primaryDiscoveryRequesters];
    [primaryDiscoveryRequesters addObject:requesterCopy];
  }

  primaryDiscoveryManager = [(HMDResidentDeviceManagerRoar *)selfCopy primaryDiscoveryManager];
  [primaryDiscoveryManager discoverPrimaryResident];

LABEL_11:
}

- (void)discoverPrimaryResidentForRequester:(id)requester
{
  requesterCopy = requester;
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDResidentDeviceManagerRoar_discoverPrimaryResidentForRequester___block_invoke;
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
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
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
    [(HMDResidentDeviceManagerRoar *)selfCopy _updateReachability:1 forResidentDevice:residentCopy];
    [(HMDResidentDeviceManagerRoar *)selfCopy _updateReachabilityFromWorkingStoreExceptResident:residentCopy];
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
    residentDevices = [(HMDResidentDeviceManagerRoar *)selfCopy residentDevices];
    [(HMDResidentDeviceManagerRoar *)selfCopy _updateReachability:0 forResidentDevices:residentDevices];

    [(HMDResidentDeviceManagerRoar *)selfCopy _discoverPrimaryResidentForRequester:0];
  }
}

- (void)_sendResidentDeviceNotificationWithName:(id)name forResidentDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:deviceCopy forKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
  home = [(HMDResidentDeviceManagerRoar *)self home];
  uuid = [home uuid];
  [dictionary setObject:uuid forKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = nameCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying %{public}@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  notificationCenter = [(HMDResidentDeviceManagerRoar *)selfCopy notificationCenter];
  [notificationCenter postNotificationName:nameCopy object:selfCopy userInfo:dictionary];
}

- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)resident
{
  queue = self->_queue;
  residentCopy = resident;
  dispatch_assert_queue_V2(queue);
  [(HMDResidentDeviceManagerRoar *)self _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" forResidentDevice:residentCopy];
}

- (void)notifyUpdatedPrimaryResident:(id)resident previousPrimaryResident:(id)primaryResident
{
  residentCopy = resident;
  primaryResidentCopy = primaryResident;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDResidentDeviceManagerRoar_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = residentCopy;
  v13 = primaryResidentCopy;
  v9 = primaryResidentCopy;
  v10 = residentCopy;
  dispatch_async(queue, block);
}

void __85__HMDResidentDeviceManagerRoar_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" forResidentDevice:*(a1 + 40)];
  v2 = [*(a1 + 32) localNetworkElection];
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

- (void)notifyClientsOfUpdatedResidentDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v6 = [residentDevices containsObject:deviceCopy];

  if (v6)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__HMDResidentDeviceManagerRoar_notifyClientsOfUpdatedResidentDevice___block_invoke;
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

void __69__HMDResidentDeviceManagerRoar_notifyClientsOfUpdatedResidentDevice___block_invoke(uint64_t a1)
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
  v4[2] = __56__HMDResidentDeviceManagerRoar_notifyResidentAvailable___block_invoke;
  v4[3] = &unk_278688650;
  v4[4] = self;
  availableCopy = available;
  dispatch_async(queue, v4);
}

void __56__HMDResidentDeviceManagerRoar_notifyResidentAvailable___block_invoke(uint64_t a1)
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
  v7[2] = __57__HMDResidentDeviceManagerRoar_accountOrDeviceDidUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

uint64_t __57__HMDResidentDeviceManagerRoar_accountOrDeviceDidUpdate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 32) isResidentSupported];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %{public}@. self.isResidentSupported: %d", &v9, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _configureResidentSupported];
}

- (void)setResidentSupported:(BOOL)supported
{
  supportedCopy = supported;
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@ResidentSupported = %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  selfCopy->_residentSupported = supportedCopy;
  os_unfair_lock_unlock(&selfCopy->_lock);
  notificationCenter = [(HMDResidentDeviceManagerRoar *)selfCopy notificationCenter];
  appleAccountManager = [(HMDResidentDeviceManagerRoar *)selfCopy appleAccountManager];
  if (supportedCopy)
  {
    [notificationCenter removeObserver:selfCopy name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:appleAccountManager];
  }

  else
  {
    [notificationCenter removeObserver:selfCopy name:@"HMDAppleAccountManagerResolved" object:appleAccountManager];

    notificationCenter2 = [(HMDResidentDeviceManagerRoar *)selfCopy notificationCenter];
    appleAccountManager2 = [(HMDResidentDeviceManagerRoar *)selfCopy appleAccountManager];
    [notificationCenter2 removeObserver:selfCopy name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:appleAccountManager2];

    notificationCenter3 = [(HMDResidentDeviceManagerRoar *)selfCopy notificationCenter];
    appleAccountManager3 = [(HMDResidentDeviceManagerRoar *)selfCopy appleAccountManager];
    [notificationCenter3 addObserver:selfCopy selector:sel_accountOrDeviceDidUpdate_ name:@"HMDAppleAccountManagerResolved" object:appleAccountManager3];

    notificationCenter = [(HMDResidentDeviceManagerRoar *)selfCopy notificationCenter];
    appleAccountManager = [(HMDResidentDeviceManagerRoar *)selfCopy appleAccountManager];
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
    primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentDevice];
    [(HMDResidentDeviceManagerRoar *)selfCopy _notifyUpdatedGenerationIDWithPrimaryResident:primaryResidentDevice];
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
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
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
        primaryResidentUUID = [(HMDResidentDeviceManagerRoar *)self primaryResidentUUID];

        if (primaryResidentUUID)
        {
          primaryResidentUUID2 = [(HMDResidentDeviceManagerRoar *)self primaryResidentUUID];
          v8 = [(HMDResidentDeviceManagerRoar *)self residentWithUUID:primaryResidentUUID2];

          if (v8)
          {
            [(HMDResidentDeviceManagerRoar *)self notifyUpdatedPrimaryResident:v8 previousPrimaryResident:0];
          }

          else
          {
            v14 = objc_autoreleasePoolPush();
            selfCopy = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = HMFGetLogIdentifier();
              primaryResidentUUID3 = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentUUID];
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

        [(HMDResidentDeviceManagerRoar *)self _discoverPrimaryResidentForRequester:0];
      }

      else
      {
        primaryDiscoveryManager = [(HMDResidentDeviceManagerRoar *)self primaryDiscoveryManager];
        [primaryDiscoveryManager cancel];
      }
    }

    [(HMDResidentDeviceManagerRoar *)self notifyResidentAvailable:availableCopy];
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)hasAnyResident
{
  residentDevicesSet = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
  hmf_isEmpty = [residentDevicesSet hmf_isEmpty];

  if (!hmf_isEmpty)
  {
    return 1;
  }

  backingStore = [(HMDResidentDeviceManagerRoar *)self backingStore];
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
  availableResidentDevices = [(HMDResidentDeviceManagerRoar *)self availableResidentDevices];
  if ([availableResidentDevices count])
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  [(HMDResidentDeviceManagerRoar *)self setResidentAvailable:v3];
}

- (void)updateResidentAvailability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDResidentDeviceManagerRoar_updateResidentAvailability__block_invoke;
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
  v7[2] = __53__HMDResidentDeviceManagerRoar_removeResidentDevice___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)_checkPrimaryResidentDeviceRemoved:(id)removed currentPrimary:(id)primary
{
  v20 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  primaryCopy = primary;
  v8 = [(NSMutableSet *)self->_residentDevices count];
  v9 = [primaryCopy isEqual:removedCopy];
  primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removed residentDevice is current device. There are %lu residents remaining.", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (primaryResidentDevice)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  if (v15 == 1)
  {
    [(HMDResidentDeviceManagerRoar *)selfCopy _handleUpdatedPrimaryResidentDevice:0 previousPrimaryResident:primaryCopy generationID:0 changeSource:0];
  }
}

- (void)_removeResidentDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_residentDevices containsObject:deviceCopy])
    {
      [(NSMutableSet *)self->_residentDevices removeObject:deviceCopy];
      os_unfair_lock_unlock(&self->_lock);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__HMDResidentDeviceManagerRoar__removeResidentDevice___block_invoke;
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

void __54__HMDResidentDeviceManagerRoar__removeResidentDevice___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerRemoveResidentNotification" forResidentDevice:*(a1 + 40)];
  v3 = [*(a1 + 32) home];
  [v3 reEvaluateHomeHubState];
  [v3 evaluateResidentUpdate];
  [v3 evaluateBulletinNotificationsSupported];
  [*(a1 + 32) _updateResidentAvailability:0];
  v4 = [*(a1 + 40) device];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 disableNotificationsForDevices:v5];

  [*(a1 + 32) _checkPrimaryResidentDeviceRemoved:*(a1 + 40) currentPrimary:*(a1 + 48)];
  if ([*(a1 + 40) isCurrentDevice])
  {
    v6 = [*(a1 + 32) localNetworkElection];
    [v6 stop];
  }
}

- (void)_addResidentDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableSet *)self->_residentDevices member:deviceCopy];
  if (v6)
  {

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_31;
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
  home = [(HMDResidentDeviceManagerRoar *)selfCopy home];
  [deviceCopy configureWithHome:home];
  primaryResidentUUID = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentUUID];
  v13 = primaryResidentUUID == 0;

  if (v13)
  {
    [deviceCopy setReachable:0];
  }

  if ([(HMDResidentDeviceManagerRoar *)selfCopy isCurrentDeviceConfirmedPrimaryResident])
  {
    if (([deviceCopy isReachable] & 1) == 0)
    {
      localNetworkElection = [(HMDResidentDeviceManagerRoar *)selfCopy localNetworkElection];
      v15 = [localNetworkElection residentIsPartOfTheCurrentMesh:deviceCopy];

      if (v15)
      {
        [(HMDResidentDeviceManagerRoar *)selfCopy _updateReachability:1 forResidentDevice:deviceCopy];
        backingStore = [(HMDResidentDeviceManagerRoar *)selfCopy backingStore];
        v17 = [MEMORY[0x277CBEB98] setWithObject:deviceCopy];
        [backingStore updateReachabilityForResidents:v17];
      }
    }
  }

  [(HMDResidentDeviceManagerRoar *)selfCopy _updateResidentAvailability:0];
  delegate = [(HMDResidentDeviceManagerRoar *)selfCopy delegate];
  [delegate residentDeviceManagerDidUpdateResidents:selfCopy];

  [(HMDResidentDeviceManagerRoar *)selfCopy _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerAddResidentNotification" forResidentDevice:deviceCopy];
  [home reEvaluateHomeHubState];
  [home evaluateBulletinNotificationsSupported];
  primaryResidentUUID2 = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentUUID];
  identifier = [deviceCopy identifier];
  if ([primaryResidentUUID2 isEqual:identifier])
  {
  }

  else
  {
    primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentDevice];
    device = [primaryResidentDevice device];
    if (![device isCurrentDevice])
    {

      goto LABEL_18;
    }

    isEnabled = [deviceCopy isEnabled];

    if (!isEnabled)
    {
      goto LABEL_19;
    }
  }

  primaryResidentUUID2 = [deviceCopy device];
  v40 = primaryResidentUUID2;
  identifier = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  [home enableNotificationsForDevices:identifier];
LABEL_18:

LABEL_19:
  device2 = [deviceCopy device];
  if ([device2 isCurrentDevice])
  {
    homeManager = [home homeManager];
    currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];
    [currentAccessorySetupMetricDispatcher markSetupBeginStage:14 error:0];
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      residentSelectionVersion = [home residentSelectionVersion];
      *buf = 138543618;
      v42 = v30;
      v43 = 2114;
      v44 = residentSelectionVersion;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Current device added as resident to home with resident selection version %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    residentSelectionVersion2 = [home residentSelectionVersion];
    v33 = [residentSelectionVersion2 integerValue] > 2;

    v34 = objc_autoreleasePoolPush();
    v35 = v28;
    v36 = HMFGetOSLogHandle();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
    if (v33)
    {
      if (v37)
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v38;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Backing off from joining mesh since home's resident selection version is higher", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
    }

    else
    {
      if (v37)
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v39;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Will attempt to join mesh.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      [(HMDResidentDeviceManagerRoar *)v35 _joinLocalMesh];
    }
  }

LABEL_31:
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
  primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  device = [primaryResidentDevice device];

  return device;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  isCurrentDevice = [primaryResidentDevice isCurrentDevice];

  return isCurrentDevice;
}

- (BOOL)isCurrentDeviceAvailableResident
{
  ourSelf = [(HMDResidentDeviceManagerRoar *)self ourSelf];
  isEnabled = [ourSelf isEnabled];

  return isEnabled;
}

- (id)residentDevicesSet
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_residentDevices);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
  residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v3 = [residentDevices hmf_objectPassingTest:&__block_literal_global_178836];

  return v3;
}

uint64_t __39__HMDResidentDeviceManagerRoar_ourSelf__block_invoke(uint64_t a1, void *a2)
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
  residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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

- (NSUUID)primaryResidentUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDResidentDevice)primaryResidentDevice
{
  v18 = *MEMORY[0x277D85DE8];
  residentDevicesSet = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
  primaryResidentUUID = [(HMDResidentDeviceManagerRoar *)self primaryResidentUUID];
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

- (void)_teardownSessionWithPrimaryResidentDevice
{
  messageDispatcher = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  home = [(HMDResidentDeviceManagerRoar *)self home];
  [messageDispatcher setRemoteAccessDevice:0 forHome:home];
}

- (void)_setupSessionWithPrimaryResidentDevice
{
  primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  if (primaryResidentDevice)
  {
    v7 = primaryResidentDevice;
    messageDispatcher = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
    device = [v7 device];
    home = [(HMDResidentDeviceManagerRoar *)self home];
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
  home = [(HMDResidentDeviceManagerRoar *)selfCopy home];
  primaryResidentDevice = [(HMDResidentDeviceManagerRoar *)selfCopy primaryResidentDevice];
  if (primaryResidentDevice && [(HMDResidentDeviceManagerRoar *)selfCopy isResidentSupported])
  {
    [home subscribeForNotificationsFromRemoteGateway];
  }

  else
  {
    messageDispatcher = [(HMDResidentDeviceManagerRoar *)selfCopy messageDispatcher];
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
      [(HMDResidentDeviceManagerRoar *)v14 _teardownSessionWithPrimaryResidentDevice];
    }
  }
}

- (void)run
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDResidentDeviceManagerRoar_run__block_invoke;
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
  residentDevices = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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
  appleAccountManager = [(HMDResidentDeviceManagerRoar *)self appleAccountManager];
  device = [appleAccountManager device];

  backingStore = [(HMDResidentDeviceManagerRoar *)self backingStore];
  residentDevicesSet = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
  v9 = [backingStore handleCloudResidentChange:changeCopy currentResidents:residentDevicesSet isCurrentDevicePrimaryResident:-[HMDResidentDeviceManagerRoar isCurrentDevicePrimaryResident](self currentDevice:{"isCurrentDevicePrimaryResident"), device}];

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
  v15[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = self;
  v16 = v9;
  dispatch_async(queue, v15);

LABEL_6:
}

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
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
    v18 = v5;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = [v10 count];
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Residents changed, added: %lu; removed: %lu; reachability: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v11 = [*(a1 + 40) deletedResidentDevices];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_148;
  v16[3] = &unk_278685038;
  v16[4] = *(a1 + 32);
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  v12 = [*(a1 + 40) addedResidentDevices];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_150;
  v15[3] = &unk_278685038;
  v15[4] = *(a1 + 32);
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  v13 = [*(a1 + 40) reachabilityUpdates];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_151;
  v14[3] = &unk_278685038;
  v14[4] = *(a1 + 32);
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
}

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_148(uint64_t a1, void *a2)
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

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_150(uint64_t a1, void *a2)
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

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_151(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isReachable];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v3 name];
    v10 = [v3 identifier];
    v11 = HMFBooleanToString();
    v12 = 138544130;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Cloud updated resident reachability: %@ (%{public}@) -> %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) _updateReachability:v4 ^ 1u forResidentDevice:v3];
}

- (id)residentDevicesWithIDSIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  availableResidentDevices = [(HMDResidentDeviceManagerRoar *)self availableResidentDevices];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __66__HMDResidentDeviceManagerRoar_residentDevicesWithIDSIdentifiers___block_invoke;
        v16[3] = &unk_2786850E0;
        v16[4] = v12;
        v13 = [availableResidentDevices na_firstObjectPassingTest:v16];
        if (v13)
        {
          [array addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = objc_msgSend_copy(array);

  return v14;
}

uint64_t __66__HMDResidentDeviceManagerRoar_residentDevicesWithIDSIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 idsIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
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

- (void)_joinLocalMesh
{
  v38[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  home = [(HMDResidentDeviceManagerRoar *)self home];
  homeManager = [home homeManager];

  currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];
  v5 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue = [(HMDResidentDeviceManagerRoar *)self queue];
  v7 = [v5 initWithQueue:queue];

  appleAccountManager = [(HMDResidentDeviceManagerRoar *)self appleAccountManager];
  idsDevicesUpdated = [appleAccountManager idsDevicesUpdated];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke;
  v36[3] = &unk_278687050;
  v36[4] = self;
  v10 = currentAccessorySetupMetricDispatcher;
  v37 = v10;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_139;
  v35[3] = &unk_278689CD8;
  v35[4] = self;
  v11 = [idsDevicesUpdated inContext:v7 then:v36 orRecover:v35];
  dataSource = [(HMDResidentDeviceManagerRoar *)self dataSource];
  firstCloudKitImportFuture = [dataSource firstCloudKitImportFuture];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_141;
  v33[3] = &unk_278687050;
  v33[4] = self;
  v14 = v10;
  v34 = v14;
  v15 = [firstCloudKitImportFuture inContext:v7 then:v33];
  messageDispatcher = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  startFuture = [secureRemoteTransport startFuture];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_142;
  v31[3] = &unk_278687050;
  v31[4] = self;
  v19 = v14;
  v32 = v19;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_143;
  v30[3] = &unk_278689CD8;
  v30[4] = self;
  v20 = [startFuture inContext:v7 then:v31 orRecover:v30];
  v21 = MEMORY[0x277D0F7C0];
  v38[0] = startFuture;
  v38[1] = firstCloudKitImportFuture;
  v38[2] = idsDevicesUpdated;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  v23 = [v21 allSettled:v22];

  v27[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_144;
  v28[3] = &unk_278687050;
  v28[4] = self;
  v29 = v19;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_145;
  v27[3] = &unk_278689CD8;
  v24 = v19;
  v25 = [v23 inContext:v7 then:v28 orRecover:v27];
}

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_139(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_141(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_142(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_143(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_144(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      v22 = 138543362;
      v23 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Operating in bad CDP state. Not joining the mesh", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else if (([*(a1 + 32) isActingAsResident] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Met conditions required to join mesh, starting join.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) markPrimaryResidentElectionJoinMesh];
    [*(a1 + 32) setActingAsResident:1];
    [*(a1 + 32) _startLocalNetworkElection];
    v15 = [*(a1 + 32) primaryResidentDevice];
    if (v15)
    {
      v16 = [*(a1 + 32) reachabilityObserver];
      v17 = *(a1 + 32);
      v18 = [v15 messageAddress];
      [v16 removeListener:v17 forDeviceAddress:v18];

      v19 = [*(a1 + 32) deviceMonitor];
      v20 = [v15 device];
      [v19 stopMonitoringDevice:v20 forClient:*(a1 + 32)];
    }
  }

  return 1;
}

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_145(uint64_t a1, void *a2)
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

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDResidentDeviceManagerRoar_invalidate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__HMDResidentDeviceManagerRoar_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 removeObserver:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 _stopLocalNetworkElection];
}

- (void)_configureResidentSupported
{
  v25 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  appleAccountManager = [(HMDResidentDeviceManagerRoar *)self appleAccountManager];
  device = [appleAccountManager device];

  if (device)
  {
    if (![(HMDResidentDeviceManagerRoar *)self isResidentSupported])
    {
      v20 = 0;
      backingStore = [(HMDResidentDeviceManagerRoar *)self backingStore];
      v6 = [backingStore findResidents:device outHasResidents:&v20];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__HMDResidentDeviceManagerRoar__configureResidentSupported__block_invoke;
      v19[3] = &unk_278684FC0;
      v19[4] = self;
      [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        residentDevices = [(HMDResidentDeviceManagerRoar *)selfCopy residentDevices];
        *buf = 138543618;
        v22 = v10;
        v23 = 2114;
        v24 = residentDevices;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Initial resident devices: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      residentDevices2 = [(HMDResidentDeviceManagerRoar *)selfCopy residentDevices];
      v13 = [residentDevices2 count] == 0;
      v14 = v13 & v20;

      if (v14 == 1)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v22 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@No HMDResidentDevice but has MKFResident models, force update", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
      }

      [(HMDResidentDeviceManagerRoar *)selfCopy setResidentSupported:1];
      [(HMDResidentDeviceManagerRoar *)selfCopy _updateResidentAvailability:v14];
    }
  }

  else
  {
    [(HMDResidentDeviceManagerRoar *)self setResidentSupported:0];
  }
}

void __59__HMDResidentDeviceManagerRoar__configureResidentSupported__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 272));
  [v5 configureWithHome:WeakRetained];

  [*(a1 + 32) _addResidentDevice:v5];
}

- (void)_stopLocalNetworkElection
{
  [(HMDResidentDeviceManagerRoar *)self setActingAsResident:0];
  localNetworkElection = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [localNetworkElection stop];

  [(HMDResidentDeviceManagerRoar *)self setLocalNetworkElection:0];
}

- (void)_startLocalNetworkElection
{
  dataSource = [(HMDResidentDeviceManagerRoar *)self dataSource];
  v4 = [dataSource createElectionAddOnWithContext:self];
  [(HMDResidentDeviceManagerRoar *)self setLocalNetworkElection:v4];

  localNetworkElection = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [localNetworkElection setDelegate:self];

  localNetworkElection2 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [localNetworkElection2 registerForMessages];

  localNetworkElection3 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [localNetworkElection3 start];
}

- (void)_registerForNotifications
{
  notificationCenter = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  backingStore = [(HMDResidentDeviceManagerRoar *)self backingStore];
  cloudChangeUpdateNotificationName = [backingStore cloudChangeUpdateNotificationName];
  [notificationCenter addObserver:self selector:sel__handleCloudResidentChange_ name:cloudChangeUpdateNotificationName object:0];

  notificationCenter2 = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel__handleRemoteDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  notificationCenter3 = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel__handleRemoteDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  notificationCenter4 = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  home = [(HMDResidentDeviceManagerRoar *)self home];
  [notificationCenter4 addObserver:self selector:sel__handleResidentSelectionVersionDidChange_ name:@"HMDHomeResidentSelectionVersionDidChangeNotification" object:home];
}

- (void)_registerForMessages
{
  v18[3] = *MEMORY[0x277D85DE8];
  home = [(HMDResidentDeviceManagerRoar *)self home];
  messageDispatcher = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v18[0] = v6;
  v18[1] = v5;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v18[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  [messageDispatcher registerForMessage:@"kResidentDeviceUpdateEnabledRequestKey" receiver:self policies:v8 selector:sel__handleResidentDeviceUpdateEnabled_];

  v9 = +[HMDRemoteMessagePolicy defaultPolicy];
  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:5 remoteAccessRequired:0];
  if (isInternalBuild())
  {
    v11 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v17[0] = v11;
    v17[1] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [messageDispatcher registerForMessage:@"hm.prdisco" receiver:self policies:v12 selector:sel__handlePrimaryResidentDiscoveryXPCRequest_];
  }

  dataSource = [(HMDResidentDeviceManagerRoar *)self dataSource];
  isResidentCapable = [dataSource isResidentCapable];

  if (isResidentCapable)
  {
    v16[0] = v9;
    v16[1] = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [messageDispatcher registerForMessage:@"primaryResidentDiscovery" receiver:self policies:v15 selector:sel__handlePrimaryResidentDiscoveryRequest_];
  }
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDResidentDeviceManagerRoar_configureWithHome_messageDispatcher___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = homeCopy;
  v13 = dispatcherCopy;
  v9 = dispatcherCopy;
  v10 = homeCopy;
  dispatch_async(queue, block);
}

uint64_t __68__HMDResidentDeviceManagerRoar_configureWithHome_messageDispatcher___block_invoke(id *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  [a1[4] setHome:a1[5]];
  v2 = [a1[4] dataSource];
  v3 = [v2 logIdentifierForHome:a1[5]];
  v4 = a1[4];
  v5 = v4[12];
  v4[12] = v3;

  v6 = [a1[5] uuid];
  v7 = a1[4];
  v8 = v7[11];
  v7[11] = v6;

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
    v26 = 138543874;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring and registering for messages, isInternal: %@, isResidentEnabled: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v16 = [a1[4] dataSource];
  v17 = [v16 createBackingStoreForHome:a1[5]];
  v18 = a1[4];
  v19 = v18[28];
  v18[28] = v17;

  objc_storeStrong(a1[4] + 8, a1[6]);
  v20 = [a1[6] secureRemoteTransport];
  v21 = [v20 modernReachabilityObserver];
  [a1[4] setReachabilityObserver:v21];

  v22 = [a1[6] secureRemoteTransport];
  v23 = [v22 deviceMonitor];
  [a1[4] setDeviceMonitor:v23];

  [a1[4] _registerForMessages];
  [a1[4] _registerForNotifications];
  v24 = [a1[4] primaryDiscoveryManager];
  [v24 configureWithContext:a1[4]];

  return [a1[4] _configureResidentSupported];
}

- (HMDResidentDeviceManagerRoar)initWithDataSource:(id)source
{
  sourceCopy = source;
  v28.receiver = self;
  v28.super_class = HMDResidentDeviceManagerRoar;
  v6 = [(HMDResidentDeviceManagerRoar *)&v28 init];
  if (v6)
  {
    v7 = HMFGetOSLogHandle();
    logger = v6->_logger;
    v6->_logger = v7;

    queue = [sourceCopy queue];
    queue = v6->_queue;
    v6->_queue = queue;

    objc_storeStrong(&v6->_dataSource, source);
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = @"<unconfigured>";

    messageTargetUUID = v6->_messageTargetUUID;
    v6->_messageTargetUUID = 0;

    v13 = [MEMORY[0x277CBEB58] set];
    residentDevices = v6->_residentDevices;
    v6->_residentDevices = v13;

    notificationCenter = [sourceCopy notificationCenter];
    notificationCenter = v6->_notificationCenter;
    v6->_notificationCenter = notificationCenter;

    appleAccountManager = [sourceCopy appleAccountManager];
    appleAccountManager = v6->_appleAccountManager;
    v6->_appleAccountManager = appleAccountManager;

    v19 = [sourceCopy createPrimaryResidentDiscoveryManagerWithQueue:v6->_queue];
    primaryDiscoveryManager = v6->_primaryDiscoveryManager;
    v6->_primaryDiscoveryManager = v19;

    [(HMDPrimaryResidentDiscoveryManager *)v6->_primaryDiscoveryManager setDelegate:v6];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    primaryDiscoveryRequesters = v6->_primaryDiscoveryRequesters;
    v6->_primaryDiscoveryRequesters = weakObjectsHashTable;

    v23 = [MEMORY[0x277D0F7C0] futureWithPromise:&v6->_firstPrimaryResidentDiscoveryAttemptCompletionPromise];
    firstPrimaryResidentDiscoveryAttemptCompletionFuture = v6->_firstPrimaryResidentDiscoveryAttemptCompletionFuture;
    v6->_firstPrimaryResidentDiscoveryAttemptCompletionFuture = v23;

    featuresDataSource = [sourceCopy featuresDataSource];
    featuresDataSource = v6->_featuresDataSource;
    v6->_featuresDataSource = featuresDataSource;
  }

  return v6;
}

- (HMDResidentDeviceManagerRoar)init
{
  v3 = objc_alloc_init(HMDDefaultResidentDeviceManagerRoarDataSource);
  v4 = [(HMDResidentDeviceManagerRoar *)self initWithDataSource:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t75_178879 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t75_178879, &__block_literal_global_200_178880);
  }

  v3 = logCategory__hmf_once_v76_178881;

  return v3;
}

void __43__HMDResidentDeviceManagerRoar_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v76_178881;
  logCategory__hmf_once_v76_178881 = v0;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end