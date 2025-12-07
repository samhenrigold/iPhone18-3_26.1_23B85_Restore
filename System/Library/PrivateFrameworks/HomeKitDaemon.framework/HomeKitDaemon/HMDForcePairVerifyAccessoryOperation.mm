@interface HMDForcePairVerifyAccessoryOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (id)logIdentifier;
@end

@implementation HMDForcePairVerifyAccessoryOperation

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_156546 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_156546, &__block_literal_global_156547);
  }

  v3 = logCategory__hmf_once_v5_156548;

  return v3;
}

void __51__HMDForcePairVerifyAccessoryOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_156548;
  logCategory__hmf_once_v5_156548 = v0;
}

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)mainWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v6 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  v9 = [v6 findAccessoryUsing:accessoryUUID homeManager:homeManager];

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = accessoryOperationStatus == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      [(HMDAccessoryBackgroundOperation *)selfCopy homeUUID];
      v25 = v16;
      v23 = v22 = error;
      *buf = 138544130;
      v29 = v19;
      v30 = 2112;
      v31 = accessoryUUID2;
      v32 = 2112;
      v33 = accessoryIdentifier;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to force Pair Verify with accessory : %@/%@, for Home: %@", buf, 0x2Au);

      error = v22;
      v16 = v25;
    }

    objc_autoreleasePoolPop(v16);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    }
  }

  else if (accessoryOperationStatus != 1)
  {
    v15 = dispatch_get_global_queue(-32768, 0);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __54__HMDForcePairVerifyAccessoryOperation_mainWithError___block_invoke;
    v26[3] = &unk_27868A1D8;
    v26[4] = self;
    v27 = v12;
    [v27 establishLocalHAPConnectionWithQueue:v15 completion:v26];
  }

  return v14;
}

void __54__HMDForcePairVerifyAccessoryOperation_mainWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Force PV with accessory [%@] finished with error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

@end