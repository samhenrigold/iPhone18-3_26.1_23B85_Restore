@interface HMDResidentMesh
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDMessageDispatcher)messageDispatcher;
- (HMDResidentMesh)initWithHomeManager:(id)manager residentEnabled:(BOOL)enabled;
- (HMDResidentMeshMeshStorage)resident;
- (NSSet)activeRecordingSessionCameraUUIDs;
- (NSString)stateDump;
- (id)_activeRecordingSessionCameraUUIDs;
- (id)_addMeshStorageResidentDevice:(id)device;
- (id)_addResidentStorageResidentDevice:(id)device;
- (id)_meshStorageForDeviceIdentifier:(id)identifier;
- (id)_meshStorageForResidentDevice:(id)device;
- (id)_residentStorageForResidentDevice:(id)device;
- (id)_stateDump;
- (id)cameraRecordingAnalysisNodesForCamera:(id)camera pendingDecisionsByCameraUUIDByDeviceUUID:(id)d;
- (id)messageDestination;
- (void)__deviceIsNotReachable:(id)reachable;
- (void)__deviceIsReachable:(id)reachable;
- (void)__deviceResidentChanged:(id)changed;
- (void)__rebuildResidents:(id)residents;
- (void)__residentDeviceAddedOrUpdatedNotification:(id)notification;
- (void)__residentDeviceRemovedNotification:(id)notification;
- (void)_buildResidentsWithElection:(id)election device:(id)device;
- (void)_deviceIsNotReachable:(id)reachable;
- (void)_handleAddUpdateOrReachabilityChangeForDevice:(id)device;
- (void)_handleMeshUpdateMessage:(id)message;
- (void)_handleMeshUpdateRequestMessage:(id)message;
- (void)_handlePrimaryResidentChangedNotification:(id)notification;
- (void)_sendMessage:(id)message payload:(id)payload target:(id)target force:(BOOL)force responseHandler:(id)handler;
- (void)_transmitCurrentDeviceMetricsToPrimaryResidentWithIsUrgent:(BOOL)urgent;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setMetricForCurrentDevice:(id)device withValue:(id)value isUrgent:(BOOL)urgent;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentMesh

- (HMDResidentMeshMeshStorage)resident
{
  WeakRetained = objc_loadWeakRetained(&self->_resident);

  return WeakRetained;
}

- (HMDMessageDispatcher)messageDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_messageDispatcher);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HMDResidentMesh_removeObserver___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(workQueue, v7);
}

void __34__HMDResidentMesh_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__HMDResidentMesh_addObserver___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(workQueue, v7);
}

void __31__HMDResidentMesh_addObserver___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Registering %@ for resident mesh updates", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) observers];
  [v7 addObject:*(a1 + 40)];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDResidentMesh *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSString)stateDump
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__160007;
  v11 = __Block_byref_object_dispose__160008;
  v12 = 0;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__HMDResidentMesh_stateDump__block_invoke;
  v6[3] = &unk_27868A688;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__HMDResidentMesh_stateDump__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateDump];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_stateDump
{
  v73 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  string = [MEMORY[0x277CCAB68] string];
  selfCopy = self;
  residents = [(HMDResidentMesh *)self residents];
  v6 = [residents count];

  if (v6)
  {
    [string appendString:@"mesh:\n"];
  }

  resident = [(HMDResidentMesh *)selfCopy resident];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [(HMDResidentMesh *)selfCopy residents];
  v7 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v67;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v67 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v66 + 1) + 8 * i);
        residentDevice = [v11 residentDevice];
        device = [residentDevice device];

        identifier = [device identifier];
        name = [device name];
        [string appendFormat:@"    device: %@ / %@ / ", identifier, name];

        if (v11 == resident)
        {
          primaryResidentForHomes = [(HMDResidentMesh *)selfCopy primaryResidentForHomes];
          if ([primaryResidentForHomes count])
          {
            v17 = @"primary";
          }

          else
          {
            v17 = @"local";
          }

          [string appendString:v17];
        }

        else
        {
          [string appendString:@"remote"];
        }

        remoteDestinationString = [device remoteDestinationString];
        [string appendFormat:@" / %@\n", remoteDestinationString];

        [string appendFormat:@"     generation: %lu\n", objc_msgSend(v11, "generationCount")];
        enabled = [v11 enabled];
        v20 = "YES";
        if (!enabled)
        {
          v20 = "NO";
        }

        [string appendFormat:@"        enabled: %s\n", v20];
        string2 = [MEMORY[0x277CCAB68] string];
        [string2 appendFormat:@"{"];
        metrics = [v11 metrics];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __29__HMDResidentMesh__stateDump__block_invoke;
        v64[3] = &unk_278689790;
        v23 = string2;
        v65 = v23;
        [metrics enumerateKeysAndObjectsUsingBlock:v64];

        if ([v23 hasSuffix:{@", "}])
        {
          [v23 deleteCharactersInRange:{objc_msgSend(v23, "length") - 1, 1}];
        }

        [v23 appendFormat:@" }"];
        [string appendFormat:@"      Device metrics: %@ \n", v23];
      }

      v8 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v8);
  }

  reachableAccessories = [(HMDResidentMesh *)selfCopy reachableAccessories];
  v25 = [reachableAccessories count];

  if (v25)
  {
    [string appendString:@"remote primary residents:\n"];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obja = [(HMDResidentMesh *)selfCopy reachableAccessories];
  v26 = [obja countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v61;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v61 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v60 + 1) + 8 * j);
        residentDevice2 = [v30 residentDevice];
        device2 = [residentDevice2 device];
        identifier2 = [device2 identifier];
        device3 = [residentDevice2 device];
        name2 = [device3 name];
        [string appendFormat:@"    resident: %@ / %@ \n", identifier2, name2];

        transmitTimer = [v30 transmitTimer];
        v37 = "YES";
        if (!transmitTimer)
        {
          v37 = "NO";
        }

        [string appendFormat:@"         pending: %s\n", v37];
      }

      v27 = [obja countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v27);
  }

  primaryResidentForHomes2 = [(HMDResidentMesh *)selfCopy primaryResidentForHomes];
  v39 = [primaryResidentForHomes2 count];

  if (v39)
  {
    [string appendString:@"primary resident for:\n"];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  primaryResidentForHomes3 = [(HMDResidentMesh *)selfCopy primaryResidentForHomes];
  v41 = [primaryResidentForHomes3 countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(primaryResidentForHomes3);
        }

        uUIDString = [*(*(&v56 + 1) + 8 * k) UUIDString];
        [string appendFormat:@"    %@\n", uUIDString];
      }

      v42 = [primaryResidentForHomes3 countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v42);
  }

  if (resident)
  {
    messageDispatcher = [(HMDResidentMesh *)selfCopy messageDispatcher];
    secureRemoteTransport = [messageDispatcher secureRemoteTransport];
    deviceMonitor = [secureRemoteTransport deviceMonitor];
    isReachable = [deviceMonitor isReachable];

    if (isReachable)
    {
      goto LABEL_45;
    }

    v50 = @"we are about to go unreachable in the near future unless we get network back.";
  }

  else
  {
    v50 = @"we do not have a resident device (either not logged into iCloud or have reachability issues).";
  }

  [string appendString:v50];
LABEL_45:

  return string;
}

- (void)_transmitCurrentDeviceMetricsToPrimaryResidentWithIsUrgent:(BOOL)urgent
{
  urgentCopy = urgent;
  v40 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  homeManager = [(HMDResidentMesh *)self homeManager];
  homes = [homeManager homes];

  obj = homes;
  v7 = [homes countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    *&v8 = 138543362;
    v28 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if ([v12 isCurrentDeviceAvailableResident])
        {
          primaryResident = [v12 primaryResident];
          if (primaryResident)
          {
            v14 = [(HMDResidentMesh *)self _addResidentStorageResidentDevice:primaryResident];
            metrics = [v14 metrics];
            loadMetrics = [(HMDResidentMesh *)self loadMetrics];
            [metrics addEntriesFromDictionary:loadMetrics];

            if (([primaryResident isCurrentDevice] & 1) == 0)
            {
              v17 = objc_autoreleasePoolPush();
              selfCopy = self;
              v19 = HMFGetOSLogHandle();
              v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
              if (urgentCopy)
              {
                if (v20)
                {
                  v21 = HMFGetLogIdentifier();
                  *buf = v28;
                  v36 = v21;
                  _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Immediately transmitting updated metrics", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v17);
                [v14 _transmitStatus:0];
              }

              else
              {
                if (v20)
                {
                  v27 = HMFGetLogIdentifier();
                  *buf = v28;
                  v36 = v27;
                  _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Scheduling transmission of updated metrics", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v17);
                [v14 _transmitAfter:10.0];
              }
            }
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              uuid = [v12 uuid];
              *buf = 138543618;
              v36 = v25;
              v37 = 2114;
              v38 = uuid;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Could not set metric for current device for home %{public}@: no primary resident", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }
}

- (void)setMetricForCurrentDevice:(id)device withValue:(id)value isUrgent:(BOOL)urgent
{
  deviceCopy = device;
  valueCopy = value;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDResidentMesh_setMetricForCurrentDevice_withValue_isUrgent___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = deviceCopy;
  v15 = valueCopy;
  urgentCopy = urgent;
  v11 = valueCopy;
  v12 = deviceCopy;
  dispatch_async(workQueue, v13);
}

uint64_t __64__HMDResidentMesh_setMetricForCurrentDevice_withValue_isUrgent___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v13 = 138543874;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Setting local metric with key: %@, value: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) loadMetrics];
  [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

  v10 = [*(a1 + 32) loadMetrics];
  v11 = [*(a1 + 32) resident];
  [v11 setMetrics:v10];

  return [*(a1 + 32) _transmitCurrentDeviceMetricsToPrimaryResidentWithIsUrgent:*(a1 + 56)];
}

- (id)_activeRecordingSessionCameraUUIDs
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(HMDResidentMesh *)self residents];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        metrics = [*(*(&v15 + 1) + 8 * i) metrics];
        v10 = [metrics hmf_dictionaryForKey:@"recordingSessionSummaries"];

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __53__HMDResidentMesh__activeRecordingSessionCameraUUIDs__block_invoke;
        v13[3] = &unk_278689488;
        v13[4] = self;
        v14 = v4;
        [v10 enumerateKeysAndObjectsUsingBlock:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

void __53__HMDResidentMesh__activeRecordingSessionCameraUUIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse camera UUID string: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (NSSet)activeRecordingSessionCameraUUIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__160007;
  v11 = __Block_byref_object_dispose__160008;
  v12 = 0;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMDResidentMesh_activeRecordingSessionCameraUUIDs__block_invoke;
  v6[3] = &unk_27868A688;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__HMDResidentMesh_activeRecordingSessionCameraUUIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeRecordingSessionCameraUUIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)cameraRecordingAnalysisNodesForCamera:(id)camera pendingDecisionsByCameraUUIDByDeviceUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  cameraCopy = camera;
  dCopy = d;
  accessory = [cameraCopy accessory];
  home = [accessory home];

  if (home)
  {
    array = [MEMORY[0x277CBEB18] array];
    workQueue = [(HMDResidentMesh *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke;
    block[3] = &unk_278689550;
    block[4] = self;
    v21 = home;
    v22 = cameraCopy;
    v23 = dCopy;
    v12 = array;
    v24 = v12;
    dispatch_sync(workQueue, block);

    v13 = v24;
    v14 = v12;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory or home reference was nil when determining camera recording analysis nodes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

void __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residents];
  v3 = [v2 mutableCopy];

  v4 = MEMORY[0x277CBEB98];
  v27 = a1;
  v5 = [*(a1 + 40) residentDeviceManager];
  v6 = [v5 availableResidentDevices];
  v7 = [v4 setWithArray:v6];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke_2;
  v34[3] = &unk_27867C000;
  v24 = v7;
  v35 = v24;
  v23 = [v3 indexesOfObjectsPassingTest:v34];
  [v3 removeObjectsAtIndexes:?];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v28 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v28)
  {
    v26 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v29 = [HMDCameraRecordingAnalysisNodeMetrics alloc];
        v10 = [v9 residentDevice];
        v11 = v27[6];
        v12 = v27[7];
        v13 = [v9 residentDevice];
        v14 = [v13 device];
        v15 = [v14 identifier];
        v16 = [v12 objectForKeyedSubscript:v15];
        v17 = [v9 metrics];
        v18 = [(HMDCameraRecordingAnalysisNodeMetrics *)v29 initWithResidentDevice:v10 cameraProfile:v11 pendingDecisionsByCameraUUID:v16 metrics:v17];

        v19 = v27[8];
        v20 = [HMDCameraRecordingAnalysisNode alloc];
        v21 = [v9 residentDevice];
        v22 = [(HMDCameraRecordingAnalysisNode *)v20 initWithResidentDevice:v21 metrics:v18];
        [v19 addObject:v22];

        ++v8;
      }

      while (v28 != v8);
      v28 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v28);
  }
}

uint64_t __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 residentDevice];
  if ([v4 containsObject:v5])
  {
    v6 = [v3 residentDevice];
    v7 = [v6 capabilities];
    v8 = [v7 supportsCameraRecording] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_handleMeshUpdateMessage:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy numberForKey:@"kMeshVersion"];
  if ([v6 unsignedIntegerValue] == 2)
  {
    v7 = [messageCopy uuidForKey:@"kMeshDevice"];
    v8 = [(HMDResidentMesh *)self _meshStorageForDeviceIdentifier:v7];
    if (v8)
    {
      v33 = v6;
      v9 = [messageCopy numberForKey:@"kMeshDeviceStorageGenerationCount"];
      [v8 setGenerationCount:{objc_msgSend(v9, "unsignedIntegerValue")}];

      v10 = [messageCopy numberForKey:@"kMeshDeviceStorageEnabled"];
      [v8 setEnabled:{objc_msgSend(v10, "BOOLValue")}];

      v11 = [messageCopy dictionaryForKey:@"kMeshDeviceStorageSystemLoad"];
      [v8 setMetrics:v11];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      observers = [(HMDResidentMesh *)self observers];
      v13 = [observers countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(observers);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            _activeRecordingSessionCameraUUIDs = [(HMDResidentMesh *)self _activeRecordingSessionCameraUUIDs];
            [v17 residentMeshDidUpdate:self activeRecordingSessionCameraUUIDs:_activeRecordingSessionCameraUUIDs];
          }

          v14 = [observers countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v14);
      }

      v38 = @"kMeshDeviceStorageEnabled";
      v19 = MEMORY[0x277CCABB0];
      resident = [(HMDResidentMesh *)self resident];
      v21 = [v19 numberWithBool:{objc_msgSend(resident, "enabled")}];
      v39 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [messageCopy respondWithPayload:v22];

      v6 = v33;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        *buf = 138543874;
        v42 = v31;
        v43 = 2114;
        v44 = shortDescription;
        v45 = 2114;
        v46 = v7;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message %{public}@ from unknown device: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      resident = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:resident];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      shortDescription2 = [messageCopy shortDescription];
      *buf = 138544130;
      v42 = v26;
      v43 = 2112;
      v44 = v6;
      v45 = 2048;
      v46 = 2;
      v47 = 2114;
      v48 = shortDescription2;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message with version %@ lower than current version %ld: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v7];
  }
}

- (void)_handleMeshUpdateRequestMessage:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy numberForKey:@"kMeshVersion"];
  if ([v6 unsignedIntegerValue] == 2)
  {
    v7 = [messageCopy uuidForKey:@"kMeshDevice"];
    v8 = [(HMDResidentMesh *)self _meshStorageForDeviceIdentifier:v7];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        *buf = 138543618;
        v29 = v13;
        v30 = 2112;
        v31 = shortDescription;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Responding to mesh update request message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "enabled", @"kMeshDeviceStorageEnabled"}];
      v27[0] = v15;
      v26[1] = @"kMeshDeviceStorageGenerationCount";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "generationCount")}];
      v27[1] = v16;
      v26[2] = @"kMeshDeviceStorageSystemLoad";
      metrics = [v8 metrics];
      v27[2] = metrics;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      [messageCopy respondWithPayload:v18];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        shortDescription2 = [messageCopy shortDescription];
        *buf = 138543874;
        v29 = v24;
        v30 = 2114;
        v31 = shortDescription2;
        v32 = 2114;
        v33 = v7;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message %{public}@ from unknown device: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v15];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      shortDescription3 = [messageCopy shortDescription];
      *buf = 138544130;
      v29 = v22;
      v30 = 2112;
      v31 = v6;
      v32 = 2048;
      v33 = 2;
      v34 = 2114;
      v35 = shortDescription3;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message with version %@ lower than current version %ld: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v7];
  }
}

- (void)_sendMessage:(id)message payload:(id)payload target:(id)target force:(BOOL)force responseHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  payloadCopy = payload;
  targetCopy = target;
  handlerCopy = handler;
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  homeManager = [(HMDResidentMesh *)self homeManager];
  homes = [homeManager homes];

  v14 = [homes countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v67;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v67 != v17)
        {
          objc_enumerationMutation(homes);
        }

        v19 = *(*(&v66 + 1) + 8 * i);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        residentDeviceManager = [v19 residentDeviceManager];
        availableResidentDevices = [residentDeviceManager availableResidentDevices];

        v22 = [availableResidentDevices countByEnumeratingWithState:&v62 objects:v76 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v63;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v63 != v24)
              {
                objc_enumerationMutation(availableResidentDevices);
              }

              if ([*(*(&v62 + 1) + 8 * j) isCurrentDevice])
              {
                v16 = 1;
                goto LABEL_16;
              }
            }

            v23 = [availableResidentDevices countByEnumeratingWithState:&v62 objects:v76 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v15 = [homes countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  resident = [(HMDResidentMesh *)self resident];
  v27 = resident;
  if ((v16 & 1) == 0 && !force)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    v31 = messageCopy;
    v33 = handlerCopy;
    v32 = targetCopy;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v34;
      v72 = 2112;
      v73 = messageCopy;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Suppressing message %@ because we are not a resident device.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v35 = payloadCopy;
    goto LABEL_36;
  }

  v31 = messageCopy;
  v33 = handlerCopy;
  v32 = targetCopy;
  if (!targetCopy)
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v40 = HMFGetOSLogHandle();
    v35 = payloadCopy;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v41;
      v72 = 2112;
      v73 = messageCopy;
      v42 = "%{public}@Suppressing message %@ because target is nil.";
      goto LABEL_34;
    }

LABEL_35:

    objc_autoreleasePoolPop(v38);
    goto LABEL_36;
  }

  v35 = payloadCopy;
  if (!resident)
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v41;
      v72 = 2112;
      v73 = messageCopy;
      v42 = "%{public}@Suppressing message %@ because self.resident is nil.";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  residentDevice = [resident residentDevice];
  v37 = [residentDevice isEqual:targetCopy];

  if (v37)
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v41;
      v72 = 2112;
      v73 = messageCopy;
      v42 = "%{public}@Suppressing message %@ because we are the target.";
LABEL_34:
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEFAULT, v42, buf, 0x16u);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v57 = [HMDRemoteMessage messageWithName:messageCopy messagePayload:payloadCopy];
  messageTargetUUID = [(HMDResidentMesh *)self messageTargetUUID];
  device = [targetCopy device];
  remoteDestinationString = [device remoteDestinationString];

  v45 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v53 = remoteDestinationString;
    v48 = v54 = v45;
    shortDescription = [v57 shortDescription];
    messagePayload = [v57 messagePayload];
    *buf = 138543874;
    v71 = v48;
    v72 = 2114;
    v73 = shortDescription;
    v74 = 2112;
    v75 = messagePayload;
    _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ with payload: %@", buf, 0x20u);

    v45 = v54;
    remoteDestinationString = v53;
  }

  objc_autoreleasePoolPop(v45);
  messageDispatcher = [(HMDResidentMesh *)selfCopy5 messageDispatcher];
  workQueue2 = [(HMDResidentMesh *)selfCopy5 workQueue];
  [messageDispatcher sendSecureMessage:v57 target:messageTargetUUID userID:remoteDestinationString destination:remoteDestinationString responseQueue:workQueue2 responseHandler:handlerCopy];

LABEL_36:
}

- (id)_addResidentStorageResidentDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [(HMDResidentMesh *)self _residentStorageForResidentDevice:deviceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      device = [deviceCopy device];
      shortDescription = [device shortDescription];
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding resident device to residents list: %{public}@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [[HMDResidentMeshResidentStorage alloc] initWithResidentDevice:deviceCopy owner:selfCopy];
    reachableAccessories = [(HMDResidentMesh *)selfCopy reachableAccessories];
    [reachableAccessories addObject:v7];
  }

  return v7;
}

- (id)_residentStorageForResidentDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reachableAccessories = [(HMDResidentMesh *)self reachableAccessories];
  v6 = [reachableAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(reachableAccessories);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        residentDevice = [v9 residentDevice];
        v11 = [residentDevice isEqual:deviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [reachableAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_addMeshStorageResidentDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [(HMDResidentMesh *)self _meshStorageForResidentDevice:deviceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      device = [deviceCopy device];
      shortDescription = [device shortDescription];
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding resident device to mesh: %{public}@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [[HMDResidentMeshMeshStorage alloc] initWithResidentDevice:deviceCopy owner:selfCopy];
    residents = [(HMDResidentMesh *)selfCopy residents];
    [residents addObject:v7];
  }

  return v7;
}

- (id)_meshStorageForDeviceIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  residents = [(HMDResidentMesh *)self residents];
  v6 = [residents countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(residents);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        residentDevice = [v9 residentDevice];
        device = [residentDevice device];
        identifier = [device identifier];
        v13 = [identifier isEqual:identifierCopy];

        if (v13)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [residents countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_meshStorageForResidentDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  residents = [(HMDResidentMesh *)self residents];
  v6 = [residents countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(residents);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        residentDevice = [v9 residentDevice];
        v11 = [residentDevice isEqual:deviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [residents countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_buildResidentsWithElection:(id)election device:(id)device
{
  v163 = *MEMORY[0x277D85DE8];
  electionCopy = election;
  deviceCopy = device;
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  homeManager = [(HMDResidentMesh *)self homeManager];
  homes = [homeManager homes];

  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke;
  v149[3] = &unk_27867BF88;
  v13 = v9;
  v150 = v13;
  v14 = dictionary;
  v151 = v14;
  [homes hmf_enumerateWithAutoreleasePoolUsingBlock:v149];
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_2;
  v146[3] = &unk_27867BF88;
  v15 = v13;
  v147 = v15;
  selfCopy = self;
  v103 = homes;
  [homes hmf_enumerateWithAutoreleasePoolUsingBlock:v146];
  v16 = [MEMORY[0x277CBEB58] set];
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_200;
  v142[3] = &unk_27867BFB0;
  v102 = v14;
  v143 = v102;
  v17 = v16;
  v144 = v17;
  selfCopy2 = self;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v142];
  v18 = [MEMORY[0x277CBEB58] set];
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_206;
  v136[3] = &unk_27867BFD8;
  v104 = electionCopy;
  v137 = v104;
  v100 = deviceCopy;
  v138 = v100;
  selfCopy3 = self;
  v111 = v15;
  v140 = v111;
  v19 = v18;
  v141 = v19;
  v101 = v17;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v136];
  resident = [(HMDResidentMesh *)self resident];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  residents = [(HMDResidentMesh *)self residents];
  v22 = objc_msgSend_copy(residents);

  selfCopy4 = self;
  obj = [v22 countByEnumeratingWithState:&v132 objects:v162 count:16];
  if (obj)
  {
    v23 = *v133;
    v107 = *v133;
    do
    {
      for (i = 0; i != obj; ++i)
      {
        if (*v133 != v23)
        {
          objc_enumerationMutation(v22);
        }

        v25 = *(*(&v132 + 1) + 8 * i);
        residentDevice = [v25 residentDevice];
        isCurrentDevice = [residentDevice isCurrentDevice];

        if (isCurrentDevice)
        {
          if (([v25 isEqual:resident] & 1) == 0)
          {
            v28 = objc_autoreleasePoolPush();
            selfCopy5 = self;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v31 = v109 = resident;
              residentDevice2 = [v25 residentDevice];
              [residentDevice2 device];
              v33 = v106 = v28;
              [v33 shortDescription];
              v34 = v22;
              v36 = v35 = v19;
              *buf = 138543618;
              v155 = v31;
              v156 = 2114;
              v157 = v36;
              _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Setting resident device to %{public}@", buf, 0x16u);

              v19 = v35;
              v22 = v34;

              v28 = v106;
              self = selfCopy4;

              resident = v109;
            }

            objc_autoreleasePoolPop(v28);
            v23 = v107;
          }

          v37 = v25;

          loadMetrics = [(HMDResidentMesh *)self loadMetrics];
          [v37 setMetrics:loadMetrics];

          [(HMDResidentMesh *)self setResident:v37];
          resident = v37;
        }

        residentDevice3 = [v25 residentDevice];
        v40 = [v19 containsObject:residentDevice3];

        if ((v40 & 1) == 0)
        {
          residents2 = [(HMDResidentMesh *)self residents];
          [residents2 removeObject:v25];
        }
      }

      obj = [v22 countByEnumeratingWithState:&v132 objects:v162 count:16];
    }

    while (obj);
  }

  v110 = resident;

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  reachableAccessories = [(HMDResidentMesh *)self reachableAccessories];
  v43 = objc_msgSend_copy(reachableAccessories);

  v44 = [v43 countByEnumeratingWithState:&v128 objects:v161 count:16];
  v45 = v111;
  if (v44)
  {
    v46 = v44;
    v47 = *v129;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v129 != v47)
        {
          objc_enumerationMutation(v43);
        }

        v49 = *(*(&v128 + 1) + 8 * j);
        residentDevice4 = [v49 residentDevice];
        v51 = [v19 containsObject:residentDevice4];

        if ((v51 & 1) == 0)
        {
          reachableAccessories2 = [(HMDResidentMesh *)self reachableAccessories];
          [reachableAccessories2 removeObject:v49];
        }
      }

      v46 = [v43 countByEnumeratingWithState:&v128 objects:v161 count:16];
    }

    while (v46);
  }

  v98 = v19;
  if ([v104 isEqual:@"HMDResidentDeviceManagerAddResidentNotification"])
  {
    v105 = 1;
  }

  else
  {
    v105 = [v104 isEqual:{@"HMDResidentDeviceManagerUpdateResidentNotification", v19, v100}];
  }

  primaryResidentForHomes = [(HMDResidentMesh *)self primaryResidentForHomes];
  v54 = [v111 isSubsetOfSet:primaryResidentForHomes];

  if (!v54 || v105)
  {
    v55 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543362;
      v155 = v58;
      _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Our primary residents list has new items (or some shift in devices happened):", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v55);
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obja = v111;
    v59 = [obja countByEnumeratingWithState:&v124 objects:v160 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v125;
      do
      {
        v62 = 0;
        v108 = v60;
        do
        {
          if (*v125 != v61)
          {
            objc_enumerationMutation(obja);
          }

          v63 = *(*(&v124 + 1) + 8 * v62);
          v64 = objc_autoreleasePoolPush();
          v65 = selfCopy6;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = HMFGetLogIdentifier();
            [v63 UUIDString];
            v69 = v68 = selfCopy6;
            primaryResidentForHomes2 = [(HMDResidentMesh *)v65 primaryResidentForHomes];
            v71 = [primaryResidentForHomes2 containsObject:v63];
            *buf = 138543874;
            v72 = " (added)";
            if (v71)
            {
              v72 = "";
            }

            v155 = v67;
            v156 = 2114;
            v157 = v69;
            v158 = 2080;
            v159 = v72;
            _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@  Home: %{public}@%s", buf, 0x20u);

            selfCopy6 = v68;
            v60 = v108;

            self = selfCopy4;
          }

          objc_autoreleasePoolPop(v64);
          ++v62;
        }

        while (v60 != v62);
        v60 = [obja countByEnumeratingWithState:&v124 objects:v160 count:16];
      }

      while (v60);
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    objb = [(HMDResidentMesh *)selfCopy6 residents];
    v73 = [objb countByEnumeratingWithState:&v120 objects:v153 count:16];
    v74 = v110;
    v45 = v111;
    if (v73)
    {
      v75 = v73;
      v76 = *v121;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v121 != v76)
          {
            objc_enumerationMutation(objb);
          }

          v78 = *(*(&v120 + 1) + 8 * k);
          if (v74 != v78 && [*(*(&v120 + 1) + 8 * k) enabled])
          {
            updatedOrAddedDevices = [(HMDResidentMesh *)selfCopy6 updatedOrAddedDevices];
            residentDevice5 = [v78 residentDevice];
            device = [residentDevice5 device];
            v82 = selfCopy6;
            v83 = [updatedOrAddedDevices containsObject:device];

            if (v83)
            {
              updatedOrAddedDevices2 = [(HMDResidentMesh *)v82 updatedOrAddedDevices];
              residentDevice6 = [v78 residentDevice];
              device2 = [residentDevice6 device];
              [updatedOrAddedDevices2 removeObject:device2];

              self = selfCopy4;
              v74 = v110;
              selfCopy6 = v82;
            }

            else
            {
              self = selfCopy4;
              v74 = v110;
              selfCopy6 = v82;
              if (v105)
              {
                continue;
              }
            }

            [v78 _requestStatus];
          }
        }

        v75 = [objb countByEnumeratingWithState:&v120 objects:v153 count:16];
      }

      while (v75);
    }
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  primaryResidentForHomes3 = [(HMDResidentMesh *)self primaryResidentForHomes];
  v88 = [primaryResidentForHomes3 countByEnumeratingWithState:&v116 objects:v152 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v117;
    do
    {
      for (m = 0; m != v89; ++m)
      {
        if (*v117 != v90)
        {
          objc_enumerationMutation(primaryResidentForHomes3);
        }

        v92 = *(*(&v116 + 1) + 8 * m);
        if (([v45 containsObject:v92] & 1) == 0)
        {
          v93 = objc_autoreleasePoolPush();
          selfCopy7 = self;
          v95 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            v96 = HMFGetLogIdentifier();
            uUIDString = [v92 UUIDString];
            *buf = 138543618;
            v155 = v96;
            v156 = 2114;
            v157 = uUIDString;
            _os_log_impl(&dword_229538000, v95, OS_LOG_TYPE_INFO, "%{public}@  Home: %{public}@ (removed)", buf, 0x16u);

            self = selfCopy4;
          }

          objc_autoreleasePoolPop(v93);
          v45 = v111;
        }
      }

      v89 = [primaryResidentForHomes3 countByEnumeratingWithState:&v116 objects:v152 count:16];
    }

    while (v89);
  }

  [(HMDResidentMesh *)self setPrimaryResidentForHomes:v45];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 enabledResidents];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v13 + 1) + 8 * i) isCurrentDevice])
        {
          v9 = *(a1 + 32);
          v10 = [v3 uuid];
          [v9 addObject:v10];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *(a1 + 40);
  v12 = [v3 uuid];
  [v11 setObject:v4 forKeyedSubscript:v12];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 primaryResident];
    if (v6)
    {
      v7 = [*(a1 + 40) _addResidentStorageResidentDevice:v6];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v3 uuid];
        v13 = 138543618;
        v14 = v11;
        v15 = 2114;
        v16 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Could not create resident storage for home %{public}@: no primary resident", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_200(id *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  [a1[5] addObjectsFromArray:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[6];
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 na_map:&__block_literal_global_204];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v3;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Home %{public}@ may use devices: %{public}@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_206(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isEqual:@"HMDResidentDeviceManagerRemoveResidentNotification"])
  {
    v4 = [v3 device];
    v5 = [v4 isEqual:*(a1 + 40)];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 48);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v3 device];
        v11 = [v10 shortDescription];
        v20 = 138543618;
        v21 = v9;
        v22 = 2114;
        v23 = v11;
        v12 = "%{public}@Received a remove resident notification for device %{public}@";
LABEL_12:
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v12, &v20, 0x16u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  if (![v3 isCurrentDevice])
  {
    v13 = [*(a1 + 48) messageDispatcher];
    v14 = [v13 secureRemoteTransport];
    v15 = [v14 deviceMonitor];
    v16 = [v15 unreachableDevices];
    v17 = [v3 device];
    v18 = [v16 containsObject:v17];

    if (v18)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 48);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v3 device];
        v11 = [v10 shortDescription];
        v20 = 138543618;
        v21 = v9;
        v22 = 2114;
        v23 = v11;
        v12 = "%{public}@Not adding unreachable device: %{public}@";
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_14:
    [*(a1 + 64) addObject:v3];
    v19 = [*(a1 + 48) _addMeshStorageResidentDevice:v3];
    goto LABEL_15;
  }

  if ([*(a1 + 56) count])
  {
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 48);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v3 device];
    v11 = [v10 shortDescription];
    v20 = 138543618;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v12 = "%{public}@Not adding the current device because it isn't a part of any homes: %{public}@";
    goto LABEL_12;
  }

LABEL_13:

  objc_autoreleasePoolPop(v6);
LABEL_15:
}

- (void)_deviceIsNotReachable:(id)reachable
{
  v61 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  if ([reachableCopy isCurrentDevice])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Our device lost visibility to the rest of the world. Setting timeout before pulling the plug.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = dispatch_time(0, 10000000000);
    workQueue = [(HMDResidentMesh *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__HMDResidentMesh__deviceIsNotReachable___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_after(v9, workQueue, block);
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    reachableAccessories = [(HMDResidentMesh *)self reachableAccessories];
    v12 = objc_msgSend_copy(reachableAccessories);

    v13 = [v12 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v51;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          residentDevice = [v17 residentDevice];
          device = [residentDevice device];
          v20 = [reachableCopy isEqual:device];

          if (v20)
          {
            v21 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              shortDescription = [reachableCopy shortDescription];
              *buf = 138543618;
              v57 = v24;
              v58 = 2114;
              v59 = shortDescription;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Removed device %{public}@ from resident storage", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v21);
            reachableAccessories2 = [(HMDResidentMesh *)selfCopy2 reachableAccessories];
            [reachableAccessories2 removeObject:v17];

            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    residents = [(HMDResidentMesh *)self residents];
    v28 = objc_msgSend_copy(residents);

    v29 = [v28 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v47;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v46 + 1) + 8 * j);
          residentDevice2 = [v33 residentDevice];
          device2 = [residentDevice2 device];
          v36 = [reachableCopy isEqual:device2];

          if (v36)
          {
            v37 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = HMFGetLogIdentifier();
              shortDescription2 = [reachableCopy shortDescription];
              *buf = 138543618;
              v57 = v40;
              v58 = 2114;
              v59 = shortDescription2;
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Removed device %{public}@ from mesh storage", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v37);
            residents2 = [(HMDResidentMesh *)selfCopy3 residents];
            [residents2 removeObject:v33];

            updatedOrAddedDevices = [(HMDResidentMesh *)selfCopy3 updatedOrAddedDevices];
            residentDevice3 = [v33 residentDevice];
            device3 = [residentDevice3 device];
            [updatedOrAddedDevices removeObject:device3];

            goto LABEL_29;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:
  }
}

void __41__HMDResidentMesh__deviceIsNotReachable___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messageDispatcher];
  v3 = [v2 secureRemoteTransport];
  v4 = [v3 deviceMonitor];
  v5 = [v4 isReachable];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Nope, we came back.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost visibility to the rest of the world. Deconstructing the mesh entirely.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) setResident:0];
    v12 = [*(a1 + 32) residents];
    [v12 removeAllObjects];

    v13 = [*(a1 + 32) reachableAccessories];
    [v13 removeAllObjects];

    v14 = [MEMORY[0x277CBEB98] set];
    [*(a1 + 32) setPrimaryResidentForHomes:v14];
  }
}

- (void)_handleAddUpdateOrReachabilityChangeForDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy isCurrentDevice] & 1) == 0)
  {
    updatedOrAddedDevices = [(HMDResidentMesh *)self updatedOrAddedDevices];
    [updatedOrAddedDevices addObject:deviceCopy];
  }

  devicesChangedTimer = [(HMDResidentMesh *)self devicesChangedTimer];
  [devicesChangedTimer resume];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  devicesChangedTimer = [(HMDResidentMesh *)self devicesChangedTimer];

  if (devicesChangedTimer == fireCopy)
  {

    [(HMDResidentMesh *)self _buildResidentsWithElection:@"HMDResidentDeviceManagerAddResidentNotification" device:0];
  }
}

- (void)_handlePrimaryResidentChangedNotification:(id)notification
{
  workQueue = [(HMDResidentMesh *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDResidentMesh__handlePrimaryResidentChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)__deviceResidentChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDResidentMesh___deviceResidentChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __43__HMDResidentMesh___deviceResidentChanged___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_BOOLForKey:@"kResidentEnabledKey" isPresent:&v20];

  v4 = v20 ^ 1 | v3;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v8;
    v24 = 1024;
    v25 = v4 & 1;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that the current resident's enabled status is now %{BOOL}d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 40) resident];
  v10 = v9;
  if (v9)
  {
    [v9 setEnabled:v4 & 1];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [*(a1 + 40) reachableAccessories];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) _transmitStatus:1];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)__rebuildResidents:(id)residents
{
  residentsCopy = residents;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMDResidentMesh___rebuildResidents___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = residentsCopy;
  selfCopy = self;
  v6 = residentsCopy;
  dispatch_async(workQueue, v7);
}

void __38__HMDResidentMesh___rebuildResidents___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

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

  if (!v5)
  {
    v6 = [*(a1 + 32) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v3 = v7;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) name];
    v13 = [v3 identifier];
    v14 = [v13 UUIDString];
    v15 = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Resident device changed (%{public}@ / %{public}@) notification.", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 40) _buildResidentsWithElection:0 device:0];
}

- (void)__residentDeviceAddedOrUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDResidentMesh___residentDeviceAddedOrUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __62__HMDResidentMesh___residentDeviceAddedOrUpdatedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 32) name];
    v11 = [v5 identifier];
    v12 = [v11 UUIDString];
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device changed (%{public}@ / %{public}@) notification.", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *(a1 + 40);
  v14 = [v5 device];
  [v13 _handleAddUpdateOrReachabilityChangeForDevice:v14];
}

- (void)__residentDeviceRemovedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDResidentMesh___residentDeviceRemovedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __55__HMDResidentMesh___residentDeviceRemovedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 32) name];
    v11 = [v5 device];
    v12 = [v11 identifier];
    v13 = [v12 UUIDString];
    v17 = 138543874;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device removed (%{public}@ / %{public}@) notification.", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) name];
  v16 = [v5 device];
  [v14 _buildResidentsWithElection:v15 device:v16];
}

- (void)__deviceIsNotReachable:(id)reachable
{
  reachableCopy = reachable;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDResidentMesh___deviceIsNotReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = reachableCopy;
  selfCopy = self;
  v6 = reachableCopy;
  dispatch_async(workQueue, v7);
}

void __42__HMDResidentMesh___deviceIsNotReachable___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 identifier];
    v10 = [v9 UUIDString];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device %{public}@ is NOT reachable (notification)", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) _deviceIsNotReachable:v4];
}

- (void)__deviceIsReachable:(id)reachable
{
  reachableCopy = reachable;
  workQueue = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDResidentMesh___deviceIsReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = reachableCopy;
  selfCopy = self;
  v6 = reachableCopy;
  dispatch_async(workQueue, v7);
}

void __39__HMDResidentMesh___deviceIsReachable___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 identifier];
    v10 = [v9 UUIDString];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device %{public}@ is reachable (notification)", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) _handleAddUpdateOrReachabilityChangeForDevice:v4];
}

- (void)dealloc
{
  messageDispatcher = [(HMDResidentMesh *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDResidentMesh;
  [(HMDResidentMesh *)&v5 dealloc];
}

- (HMDResidentMesh)initWithHomeManager:(id)manager residentEnabled:(BOOL)enabled
{
  v52[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v50.receiver = self;
  v50.super_class = HMDResidentMesh;
  v7 = [(HMDResidentMesh *)&v50 init];
  if (v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    residents = v7->_residents;
    v7->_residents = array;

    array2 = [MEMORY[0x277CBEB18] array];
    reachableAccessories = v7->_reachableAccessories;
    v7->_reachableAccessories = array2;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    loadMetrics = v7->_loadMetrics;
    v7->_loadMetrics = dictionary;

    v14 = [MEMORY[0x277CBEB58] set];
    updatedOrAddedDevices = v7->_updatedOrAddedDevices;
    v7->_updatedOrAddedDevices = v14;

    objc_storeWeak(&v7->_homeManager, managerCopy);
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"82455554-35AB-4772-B3A4-DCA0F933F5D3"];
    uuid = v7->_uuid;
    v7->_uuid = v16;

    v18 = [MEMORY[0x277CBEB98] set];
    primaryResidentForHomes = v7->_primaryResidentForHomes;
    v7->_primaryResidentForHomes = v18;

    v20 = HMDispatchQueueNameString();
    uTF8String = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(uTF8String, v22);
    workQueue = v7->_workQueue;
    v7->_workQueue = v23;

    objc_storeWeak(&v7->_resident, 0);
    messageDispatcher = [managerCopy messageDispatcher];
    objc_storeWeak(&v7->_messageDispatcher, messageDispatcher);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v28 = v7->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDResidentMesh_initWithHomeManager_residentEnabled___block_invoke;
    block[3] = &unk_278688650;
    v29 = v7;
    v48 = v29;
    enabledCopy = enabled;
    dispatch_sync(v28, block);
    v30 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:2.0];
    v31 = v29[8];
    v29[8] = v30;

    [v29[8] setDelegate:v29];
    [v29[8] setDelegateQueue:v7->_workQueue];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v29 selector:sel___residentDeviceAddedOrUpdatedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v29 selector:sel___residentDeviceAddedOrUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v29 selector:sel___residentDeviceRemovedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v29 selector:sel___rebuildResidents_ name:@"HMDAccountAddedDeviceNotification" object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v29 selector:sel___rebuildResidents_ name:@"HMDDeviceUpdatedNotification" object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v29 selector:sel___rebuildResidents_ name:@"HMDAccountRemovedDeviceNotification" object:0];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter7 addObserver:v29 selector:sel___deviceResidentChanged_ name:@"HMDHomeManagerResidentEnabledChangedNotification" object:0];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:v29 selector:sel__handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter9 addObserver:v29 selector:sel___deviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

    defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter10 addObserver:v29 selector:sel___deviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    v42 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v42 setRequiresAccountMessage:1];
    [v42 setRequiresSecureMessage:1];
    [v42 setTransportRestriction:-1];
    v43 = objc_msgSend_copy(v42);
    v52[0] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    [messageDispatcher registerForMessage:@"kDeviceMeshUpdateRequestKey" receiver:v29 policies:v44 selector:sel__handleMeshUpdateRequestMessage_];

    v51 = v43;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [messageDispatcher registerForMessage:@"kDeviceMeshUpdateKey" receiver:v29 policies:v45 selector:sel__handleMeshUpdateMessage_];
  }

  return v7;
}

void __55__HMDResidentMesh_initWithHomeManager_residentEnabled___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _buildResidentsWithElection:0 device:0];
  v2 = [*(a1 + 32) resident];
  v3 = v2;
  if (v2)
  {
    [v2 setEnabled:*(a1 + 40)];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@We do not have a current device (probably logged out from iCloud).", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t66 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t66, &__block_literal_global_284);
  }

  v3 = logCategory__hmf_once_v67;

  return v3;
}

void __30__HMDResidentMesh_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v67;
  logCategory__hmf_once_v67 = v0;
}

@end