@interface HMDResidentMeshResidentStorage
+ (id)logCategory;
- (BOOL)_addAccessoryWithLinkQuality:(id)quality toList:(id)list;
- (BOOL)_residentDidChange;
- (BOOL)_testCanSkipReachabilityUpdateForAccessory:(id)accessory;
- (HMDResidentDevice)residentDevice;
- (HMDResidentMesh)owner;
- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)device owner:(id)owner;
- (id)_buildPayload;
- (id)logIdentifier;
- (void)_addAccessory:(id)accessory activateTimer:(BOOL)timer;
- (void)_removeAccessory:(id)accessory activateTimer:(BOOL)timer;
- (void)_transmitAfter:(double)after;
- (void)_transmitStatus:(BOOL)status;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentMeshResidentStorage

- (HMDResidentDevice)residentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_residentDevice);

  return WeakRetained;
}

- (HMDResidentMesh)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v19 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  v6 = owner;
  if (owner)
  {
    workQueue = [owner workQueue];
    dispatch_assert_queue_V2(workQueue);

    transmitTimer = [(HMDResidentMeshResidentStorage *)self transmitTimer];

    if (transmitTimer == fireCopy)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Transmit timer fired; sending status update", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDResidentMeshResidentStorage *)selfCopy _transmitStatus:0];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident mesh owner reference is nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (id)logIdentifier
{
  residentDevice = [(HMDResidentMeshResidentStorage *)self residentDevice];
  device = [residentDevice device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)_transmitStatus:(BOOL)status
{
  statusCopy = status;
  v49 = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  v6 = owner;
  if (owner)
  {
    workQueue = [owner workQueue];
    dispatch_assert_queue_V2(workQueue);

    residentDevice = [(HMDResidentMeshResidentStorage *)self residentDevice];
    resident = [v6 resident];
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMFBooleanToString();
      *buf = 138543618;
      v46 = v13;
      v47 = 2112;
      v48 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending status update with force: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDResidentMeshResidentStorage *)self setTransmitTimer:0];
    if (![(HMDResidentMeshResidentStorage *)self _residentDidChange]&& !statusCopy)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v11;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        device = [residentDevice device];
        shortDescription = [device shortDescription];
        *buf = 138543618;
        v46 = v18;
        v47 = 2112;
        v48 = shortDescription;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not sending status update (metrics for %@ did not change and not forced)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_26;
    }

    v25 = [v11 _meshStorageForResidentDevice:residentDevice];
    v26 = v25;
    if (v25)
    {
      if ([v25 enabled])
      {
        residentDevice2 = [resident residentDevice];
        v28 = [residentDevice isEqual:residentDevice2];

        if (v28)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v11;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            device2 = [residentDevice device];
            shortDescription2 = [device2 shortDescription];
            *buf = 138543618;
            v46 = v32;
            v47 = 2114;
            v48 = shortDescription2;
            v35 = "%{public}@Not sending status update (%{public}@ is ourself)";
LABEL_19:
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, v35, buf, 0x16u);
LABEL_22:

LABEL_23:
          }
        }

        else
        {
          if (resident)
          {
            metrics = [(HMDResidentMeshResidentStorage *)self metrics];
            [(HMDResidentMeshResidentStorage *)self setLastSentMetrics:metrics];

            accessoryUUIDs = [(HMDResidentMeshResidentStorage *)self accessoryUUIDs];
            [(HMDResidentMeshResidentStorage *)self setLastSentAccessoryUUIDs:accessoryUUIDs];

            _buildPayload = [(HMDResidentMeshResidentStorage *)self _buildPayload];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __50__HMDResidentMeshResidentStorage__transmitStatus___block_invoke;
            v41[3] = &unk_279730A88;
            v42 = v11;
            v43 = residentDevice;
            v44 = v26;
            [v42 _sendMessage:@"kDeviceMeshUpdateKey" payload:_buildPayload target:v43 force:statusCopy responseHandler:v41];

            goto LABEL_25;
          }

          v29 = objc_autoreleasePoolPush();
          v30 = v11;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543362;
            v46 = v32;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Not sending status update (our resident device identifier is not set (probably unaccessible))", buf, 0xCu);
            goto LABEL_23;
          }
        }
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v11;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          device2 = [v26 residentDevice];
          shortDescription2 = [device2 device];
          [shortDescription2 shortDescription];
          v36 = v40 = v29;
          *buf = 138543618;
          v46 = v32;
          v47 = 2114;
          v48 = v36;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Not sending status update (%{public}@ is not enabled)", buf, 0x16u);

          v29 = v40;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v11;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        device2 = [residentDevice device];
        shortDescription2 = [device2 shortDescription];
        *buf = 138543618;
        v46 = v32;
        v47 = 2112;
        v48 = shortDescription2;
        v35 = "%{public}@Not sending status update (have not heard about %@ from device manager)";
        goto LABEL_19;
      }
    }

    objc_autoreleasePoolPop(v29);
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v24;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Resident mesh owner reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
LABEL_27:
}

void __50__HMDResidentMeshResidentStorage__transmitStatus___block_invoke(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] device];
      v13 = [v12 shortDescription];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to send status update to %{public}@: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    [a1[6] setEnabled:{objc_msgSend(v6, "hmf_BOOLForKey:", @"kMeshDeviceStorageEnabled"}];
  }
}

- (id)_buildPayload
{
  v34 = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  resident = [owner resident];
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  accessoryUUIDs = [resident accessoryUUIDs];
  v6 = [accessoryUUIDs countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(accessoryUUIDs);
        }

        uUIDString = [*(*(&v27 + 1) + 8 * i) UUIDString];
        [array addObject:uUIDString];
      }

      v7 = [accessoryUUIDs countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  v32[0] = &unk_286628C78;
  v31[0] = @"kMeshVersion";
  v31[1] = @"kMeshDeviceStorageGenerationCount";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resident, "generationCount")}];
  v32[1] = v25;
  v31[2] = @"kMeshDevice";
  residentDevice = [resident residentDevice];
  device = [residentDevice device];
  [device identifier];
  v11 = resident;
  v12 = v23 = resident;
  uUIDString2 = [v12 UUIDString];
  v32[2] = uUIDString2;
  v31[3] = @"kMeshDeviceStorageEnabled";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "enabled")}];
  v32[3] = v14;
  v31[4] = @"kMeshDeviceStorageAcccessories";
  v15 = objc_msgSend_copy(array);
  v32[4] = v15;
  v31[5] = @"kMeshDeviceStorageAccessoriesWithLinkQuality";
  accessoryListWithLinkQuality = [(HMDResidentMeshResidentStorage *)self accessoryListWithLinkQuality];
  v17 = objc_msgSend_copy(accessoryListWithLinkQuality);
  v32[5] = v17;
  v31[6] = @"kMeshDeviceStorageSystemLoad";
  loadMetrics = [owner loadMetrics];
  v19 = objc_msgSend_copy(loadMetrics);
  v32[6] = v19;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];

  return v21;
}

- (void)_transmitAfter:(double)after
{
  v37 = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  if (!owner)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot transmit after delay because owner reference is nil", &v31, 0xCu);
    }

    v11 = v12;
    goto LABEL_16;
  }

  transmitTimer = [(HMDResidentMeshResidentStorage *)self transmitTimer];

  if (transmitTimer)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = owner;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Not scheduling transmit timer because one already exists", &v31, 0xCu);
    }

    v11 = v7;
LABEL_16:
    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  _residentDidChange = [(HMDResidentMeshResidentStorage *)self _residentDidChange];
  v17 = objc_autoreleasePoolPush();
  v18 = owner;
  v19 = HMFGetOSLogHandle();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (!_residentDidChange)
  {
    if (v20)
    {
      v30 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v30;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Not scheduling transmit timer because metrics didn't change", &v31, 0xCu);
    }

    v11 = v17;
    goto LABEL_16;
  }

  if (v20)
  {
    v21 = HMFGetLogIdentifier();
    residentDevice = [(HMDResidentMeshResidentStorage *)self residentDevice];
    device = [residentDevice device];
    shortDescription = [device shortDescription];
    v31 = 138543874;
    v32 = v21;
    v33 = 2114;
    v34 = shortDescription;
    v35 = 2048;
    afterCopy = after;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting transmit timer for %{public}@ for %fs", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v25 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:after];
  [(HMDResidentMeshResidentStorage *)self setTransmitTimer:v25];

  transmitTimer2 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  [transmitTimer2 setDelegate:self];

  transmitTimer3 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  workQueue = [v18 workQueue];
  [transmitTimer3 setDelegateQueue:workQueue];

  transmitTimer4 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  [transmitTimer4 resume];

LABEL_17:
}

- (BOOL)_residentDidChange
{
  metrics = [(HMDResidentMeshResidentStorage *)self metrics];
  lastSentMetrics = [(HMDResidentMeshResidentStorage *)self lastSentMetrics];
  if ([metrics isEqualToDictionary:lastSentMetrics])
  {
    accessoryUUIDs = [(HMDResidentMeshResidentStorage *)self accessoryUUIDs];
    lastSentAccessoryUUIDs = [(HMDResidentMeshResidentStorage *)self lastSentAccessoryUUIDs];
    v7 = [accessoryUUIDs isEqual:lastSentAccessoryUUIDs] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_removeAccessory:(id)accessory activateTimer:(BOOL)timer
{
  timerCopy = timer;
  v46 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identifier = [accessoryCopy identifier];

  if (identifier)
  {
    accessoryListWithLinkQuality = [(HMDResidentMeshResidentStorage *)self accessoryListWithLinkQuality];
    identifier2 = [accessoryCopy identifier];
    [accessoryListWithLinkQuality removeObjectForKey:identifier2];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v13;
      v38 = 2112;
      v39 = accessoryCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory: %@ with nil identifier sent to remove", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  accessoryUUIDs = [(HMDResidentMeshResidentStorage *)self accessoryUUIDs];
  uuid = [accessoryCopy uuid];
  v16 = [accessoryUUIDs containsObject:uuid];

  if (v16 && ![(HMDResidentMeshResidentStorage *)self _testCanSkipReachabilityUpdateForAccessory:accessoryCopy])
  {
    v17 = objc_autoreleasePoolPush();
    owner = [(HMDResidentMeshResidentStorage *)self owner];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v20 = v35 = timerCopy;
      owner2 = [(HMDResidentMeshResidentStorage *)self owner];
      resident = [owner2 resident];
      residentDevice = [resident residentDevice];
      device = [residentDevice device];
      [device shortDescription];
      v21 = v34 = v17;
      uuid2 = [accessoryCopy uuid];
      residentDevice2 = [(HMDResidentMeshResidentStorage *)self residentDevice];
      device2 = [residentDevice2 device];
      shortDescription = [device2 shortDescription];
      v26 = shortDescription;
      *buf = 138544386;
      v27 = "NO";
      v37 = v20;
      if (v35)
      {
        v27 = "YES";
      }

      v38 = 2114;
      v39 = v21;
      v40 = 2114;
      v41 = uuid2;
      v42 = 2114;
      v43 = shortDescription;
      v44 = 2080;
      v45 = v27;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing connectivity from %{public}@ to %{public}@ for %{public}@ (activateTimer=%s)", buf, 0x34u);

      v17 = v34;
      timerCopy = v35;
    }

    objc_autoreleasePoolPop(v17);
    accessoryUUIDs2 = [(HMDResidentMeshResidentStorage *)self accessoryUUIDs];
    uuid3 = [accessoryCopy uuid];
    [accessoryUUIDs2 removeObject:uuid3];

    if (timerCopy)
    {
      [(HMDResidentMeshResidentStorage *)self _transmitAfter:10.0];
    }
  }
}

- (void)_addAccessory:(id)accessory activateTimer:(BOOL)timer
{
  timerCopy = timer;
  v48 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  v9 = objc_autoreleasePoolPush();
  if (owner)
  {
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v12;
      v40 = 2112;
      v41 = accessoryCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Adding accessory to mesh: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = accessoryCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if ([v15 hasBTLELink])
    {
      accessoryListWithLinkQuality = [(HMDResidentMeshResidentStorage *)selfCopy accessoryListWithLinkQuality];
      v17 = [(HMDResidentMeshResidentStorage *)selfCopy _addAccessoryWithLinkQuality:v15 toList:accessoryListWithLinkQuality];
    }

    else
    {
      v17 = 0;
    }

    accessoryUUIDs = [(HMDResidentMeshResidentStorage *)selfCopy accessoryUUIDs];
    v21 = [accessoryUUIDs containsObject:uuid];

    if ((v21 & 1) == 0 && ![(HMDResidentMeshResidentStorage *)selfCopy _testCanSkipReachabilityUpdateForAccessory:v13])
    {
      v37 = timerCopy;
      v22 = objc_autoreleasePoolPush();
      owner2 = [(HMDResidentMeshResidentStorage *)selfCopy owner];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        owner3 = [(HMDResidentMeshResidentStorage *)selfCopy owner];
        resident = [owner3 resident];
        residentDevice = [resident residentDevice];
        device = [residentDevice device];
        shortDescription = [device shortDescription];
        residentDevice2 = [(HMDResidentMeshResidentStorage *)selfCopy residentDevice];
        device2 = [residentDevice2 device];
        [device2 shortDescription];
        v26 = v35 = v22;
        v29 = HMFBooleanToString();
        *buf = 138544386;
        v39 = v36;
        v40 = 2114;
        v41 = shortDescription;
        v42 = 2114;
        v43 = uuid;
        v44 = 2114;
        v45 = v26;
        v46 = 2112;
        v47 = v29;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Adding connectivity from %{public}@ to %{public}@ for %{public}@ (activateTimer=%@)", buf, 0x34u);

        v22 = v35;
      }

      objc_autoreleasePoolPop(v22);
      accessoryUUIDs2 = [(HMDResidentMeshResidentStorage *)selfCopy accessoryUUIDs];
      [accessoryUUIDs2 addObject:uuid];

      if (v37 || v17)
      {
        [(HMDResidentMeshResidentStorage *)selfCopy _transmitAfter:10.0];
      }
    }
  }

  else
  {
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[HMDResidentMesh] Owner of Resident Device node disappeared out from under us.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (BOOL)_testCanSkipReachabilityUpdateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessoryCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    cameraProfiles = [v5 cameraProfiles];
    v8 = [cameraProfiles count] == 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_addAccessoryWithLinkQuality:(id)quality toList:(id)list
{
  listCopy = list;
  qualityCopy = quality;
  identifier = [qualityCopy identifier];
  v16 = 0;
  v15 = 5;
  home = [qualityCopy home];

  [home retrieveStateForTrackedAccessory:identifier stateNumber:0 isReachable:&v16 linkQuality:&v15 lastSeen:0];
  v9 = [listCopy objectForKeyedSubscript:identifier];
  v10 = v9;
  if (v16 != 1)
  {
    if (v9)
    {
      [listCopy setObject:0 forKeyedSubscript:identifier];
      goto LABEL_7;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  integerValue = [v9 integerValue];
  if (integerValue == v15)
  {
    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [listCopy setObject:v12 forKeyedSubscript:identifier];

LABEL_7:
  v13 = 1;
LABEL_9:

  return v13;
}

- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)device owner:(id)owner
{
  deviceCopy = device;
  ownerCopy = owner;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = ownerCopy;
  if (!ownerCopy)
  {
LABEL_7:
    v23 = _HMFPreconditionFailure();
    return +[(HMDResidentMeshResidentStorage *)v23];
  }

  v25.receiver = self;
  v25.super_class = HMDResidentMeshResidentStorage;
  v9 = [(HMDResidentMeshResidentStorage *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_owner, v8);
    objc_storeWeak(&v10->_residentDevice, deviceCopy);
    loadMetrics = [v8 loadMetrics];
    v12 = [loadMetrics mutableCopy];
    metrics = v10->_metrics;
    v10->_metrics = v12;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    lastSentMetrics = v10->_lastSentMetrics;
    v10->_lastSentMetrics = dictionary;

    v16 = [MEMORY[0x277CBEB58] set];
    accessoryUUIDs = v10->_accessoryUUIDs;
    v10->_accessoryUUIDs = v16;

    v18 = [MEMORY[0x277CBEB98] set];
    lastSentAccessoryUUIDs = v10->_lastSentAccessoryUUIDs;
    v10->_lastSentAccessoryUUIDs = v18;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    accessoryListWithLinkQuality = v10->_accessoryListWithLinkQuality;
    v10->_accessoryListWithLinkQuality = dictionary2;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23_106818 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23_106818, &__block_literal_global_106819);
  }

  v3 = logCategory__hmf_once_v24_106820;

  return v3;
}

uint64_t __45__HMDResidentMeshResidentStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v24_106820;
  logCategory__hmf_once_v24_106820 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end