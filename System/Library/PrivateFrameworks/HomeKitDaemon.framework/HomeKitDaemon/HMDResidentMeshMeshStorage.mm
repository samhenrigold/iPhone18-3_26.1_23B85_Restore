@interface HMDResidentMeshMeshStorage
- (HMDResidentMesh)owner;
- (HMDResidentMeshMeshStorage)initWithResidentDevice:(id)device owner:(id)owner;
- (void)_requestStatus;
@end

@implementation HMDResidentMeshMeshStorage

- (HMDResidentMesh)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)_requestStatus
{
  v28 = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshMeshStorage *)self owner];
  if (!owner)
  {
    _HMFPreconditionFailure();
  }

  v4 = owner;
  workQueue = [owner workQueue];
  dispatch_assert_queue_V2(workQueue);

  nestedStatusRequests = [(HMDResidentMeshMeshStorage *)self nestedStatusRequests];
  residentDevice = [(HMDResidentMeshMeshStorage *)self residentDevice];
  isReachable = [residentDevice isReachable];

  if (isReachable)
  {
    [(HMDResidentMeshMeshStorage *)self setNestedStatusRequests:[(HMDResidentMeshMeshStorage *)self nestedStatusRequests]+ 1];
    if (!nestedStatusRequests)
    {
      v22[0] = @"kMeshDevice";
      residentDevice2 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      device = [residentDevice2 device];
      identifier = [device identifier];
      uUIDString = [identifier UUIDString];
      v22[1] = @"kMeshVersion";
      v23[0] = uUIDString;
      v23[1] = &unk_283E736D0;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

      residentDevice3 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __44__HMDResidentMeshMeshStorage__requestStatus__block_invoke;
      v21[3] = &unk_278689DC0;
      v21[4] = self;
      [v4 _sendMessage:@"kDeviceMeshUpdateRequestKey" payload:v19 target:residentDevice3 force:0 responseHandler:v21];

      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    owner2 = [(HMDResidentMeshMeshStorage *)self owner];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      residentDevice4 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = residentDevice4;
      v14 = "%{public}@Not sending status request because we already have an outstanding request for device: %@";
LABEL_8:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, v14, buf, 0x16u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    owner2 = [(HMDResidentMeshMeshStorage *)self owner];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      residentDevice4 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = residentDevice4;
      v14 = "%{public}@skipping update to unreachable resident %@";
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:
}

void __44__HMDResidentMeshMeshStorage__requestStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) nestedStatusRequests];
  [*(a1 + 32) setNestedStatusRequests:0];
  if (v5)
  {
    v8 = [*(a1 + 32) owner];
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) residentDevice];
      v14 = [v13 device];
      v23 = 138543874;
      v24 = v12;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Got error result for kDeviceMeshUpdateRequestKey from %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if ([v5 code] == 54)
    {
      v15 = [v5 domain];
      v16 = [v15 isEqualToString:*MEMORY[0x277CCFD28]];

      if (v16)
      {
        [*(a1 + 32) setGenerationCount:0];
      }
    }

    if (v7 >= 2)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v10;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [*(a1 + 32) residentDevice];
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Retrying kDeviceMeshUpdateRequestKey message for %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 32) _requestStatus];
    }
  }

  else
  {
    [*(a1 + 32) setEnabled:{objc_msgSend(v6, "hmf_BOOLForKey:", @"kMeshDeviceStorageEnabled"}];
    v22 = [v6 hmf_numberForKey:@"kMeshDeviceStorageGenerationCount"];
    [*(a1 + 32) setGenerationCount:{objc_msgSend(v22, "unsignedIntegerValue")}];

    v10 = [v6 hmf_dictionaryForKey:@"kMeshDeviceStorageSystemLoad"];
    [*(a1 + 32) setMetrics:v10];
  }
}

- (HMDResidentMeshMeshStorage)initWithResidentDevice:(id)device owner:(id)owner
{
  deviceCopy = device;
  ownerCopy = owner;
  v14.receiver = self;
  v14.super_class = HMDResidentMeshMeshStorage;
  v9 = [(HMDResidentMeshMeshStorage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_residentDevice, device);
    objc_storeWeak(&v10->_owner, ownerCopy);
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    metrics = v10->_metrics;
    v10->_metrics = dictionary;

    v10->_generationCount = 1;
    v10->_enabled = 1;
  }

  return v10;
}

@end