@interface HMDResidentMeshResidentStorage
+ (id)logCategory;
- (BOOL)_residentDidChange;
- (HMDResidentDevice)residentDevice;
- (HMDResidentMesh)owner;
- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)device owner:(id)owner;
- (id)_buildPayload;
- (id)logIdentifier;
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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Transmit timer fired; sending status update", &v17, 0xCu);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident mesh owner reference is nil", &v17, 0xCu);
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
  v48 = *MEMORY[0x277D85DE8];
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
      v45 = v13;
      v46 = 2112;
      v47 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending status update with force: %@", buf, 0x16u);
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
        v45 = v18;
        v46 = 2112;
        v47 = shortDescription;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not sending status update (metrics for %@ did not change and not forced)", buf, 0x16u);
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
            v45 = v32;
            v46 = 2114;
            v47 = shortDescription2;
            v35 = "%{public}@Not sending status update (%{public}@ is ourself)";
LABEL_19:
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, v35, buf, 0x16u);
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

            _buildPayload = [(HMDResidentMeshResidentStorage *)self _buildPayload];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __50__HMDResidentMeshResidentStorage__transmitStatus___block_invoke;
            v40[3] = &unk_278686658;
            v41 = v11;
            v42 = residentDevice;
            v43 = v26;
            [v41 _sendMessage:@"kDeviceMeshUpdateKey" payload:_buildPayload target:v42 force:statusCopy responseHandler:v40];

            goto LABEL_25;
          }

          v29 = objc_autoreleasePoolPush();
          v30 = v11;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543362;
            v45 = v32;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Not sending status update (our resident device identifier is not set (probably unaccessible))", buf, 0xCu);
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
          v36 = v39 = v29;
          *buf = 138543618;
          v45 = v32;
          v46 = 2114;
          v47 = v36;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Not sending status update (%{public}@ is not enabled)", buf, 0x16u);

          v29 = v39;
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
        v45 = v32;
        v46 = 2112;
        v47 = shortDescription2;
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
    v45 = v24;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Resident mesh owner reference is nil", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to send status update to %{public}@: %@", &v14, 0x20u);
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
  v15[5] = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  resident = [owner resident];
  v15[0] = &unk_283E736D0;
  v14[0] = @"kMeshVersion";
  v14[1] = @"kMeshDeviceStorageGenerationCount";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resident, "generationCount")}];
  v15[1] = v13;
  v14[2] = @"kMeshDevice";
  residentDevice = [resident residentDevice];
  device = [residentDevice device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  v15[2] = uUIDString;
  v14[3] = @"kMeshDeviceStorageEnabled";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resident, "enabled")}];
  v15[3] = v8;
  v14[4] = @"kMeshDeviceStorageSystemLoad";
  loadMetrics = [owner loadMetrics];
  v10 = objc_msgSend_copy(loadMetrics);
  v15[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  return v11;
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot transmit after delay because owner reference is nil", &v31, 0xCu);
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Not scheduling transmit timer because one already exists", &v31, 0xCu);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not scheduling transmit timer because metrics didn't change", &v31, 0xCu);
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
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting transmit timer for %{public}@ for %fs", &v31, 0x20u);
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
  v5 = [metrics isEqualToDictionary:lastSentMetrics];

  return v5 ^ 1;
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
    v17 = _HMFPreconditionFailure();
    return +[(HMDResidentMeshResidentStorage *)v17];
  }

  v19.receiver = self;
  v19.super_class = HMDResidentMeshResidentStorage;
  v9 = [(HMDResidentMeshResidentStorage *)&v19 init];
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
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_159887 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_159887, &__block_literal_global_159888);
  }

  v3 = logCategory__hmf_once_v17_159889;

  return v3;
}

void __45__HMDResidentMeshResidentStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17_159889;
  logCategory__hmf_once_v17_159889 = v0;
}

@end