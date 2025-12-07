@interface HMDCameraClipsQuotaMessenger
+ (id)logCategory;
- (HMDCameraClipsQuotaMessenger)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (id)quotaManager;
- (void)configure;
- (void)handleFetchNamesForZonesWithEnabledCloudStorageMessage:(id)message;
- (void)handleUpdateCloudStorageMessage:(id)message;
@end

@implementation HMDCameraClipsQuotaMessenger

- (void)handleUpdateCloudStorageMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v34 = v8;
    v35 = 2114;
    v36 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [messageCopy stringForKey:*MEMORY[0x277CCF4E8]];
  if (v10)
  {
    v11 = [messageCopy BOOLForKey:*MEMORY[0x277CCF4E0]];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFEnabledStatusToString();
      *buf = 138543874;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating cloud storage to %@ for zone with name: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    quotaManager = [(HMDCameraClipsQuotaMessenger *)v13 quotaManager];
    v18 = quotaManager;
    if (v11)
    {
      v19 = [quotaManager enableCloudStorageForZoneWithName:v10];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __64__HMDCameraClipsQuotaMessenger_handleUpdateCloudStorageMessage___block_invoke;
      v31[3] = &unk_278687CC0;
      v32 = messageCopy;
      v20 = [v19 addCompletionBlock:v31];

      v21 = v32;
    }

    else
    {
      v27 = [quotaManager disableCloudStorageForZoneWithName:v10];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __64__HMDCameraClipsQuotaMessenger_handleUpdateCloudStorageMessage___block_invoke_2;
      v29[3] = &unk_278687CC0;
      v30 = messageCopy;
      v28 = [v27 addCompletionBlock:v29];

      v21 = v30;
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
      v34 = v25;
      v35 = 2112;
      v36 = messagePayload;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot find zone name in update cloud storage message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v21];
  }
}

- (void)handleFetchNamesForZonesWithEnabledCloudStorageMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling fetch names for zones with enabled cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  quotaManager = [(HMDCameraClipsQuotaMessenger *)selfCopy quotaManager];
  fetchNamesForZonesWithEnabledCloudStorage = [quotaManager fetchNamesForZonesWithEnabledCloudStorage];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke;
  v18[3] = &unk_2786811A0;
  v18[4] = selfCopy;
  v12 = messageCopy;
  v19 = v12;
  v13 = [fetchNamesForZonesWithEnabledCloudStorage addSuccessBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke_13;
  v16[3] = &unk_27868A1D8;
  v16[4] = selfCopy;
  v17 = v12;
  v14 = v12;
  v15 = [v13 addFailureBlock:v16];
}

void __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched names for zones with enabled cloud storage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 40);
  v10 = *MEMORY[0x277CCF4F0];
  v11 = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 respondWithPayload:v9];
}

void __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke_13(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch names for zones with enabled cloud storage: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];
}

- (id)quotaManager
{
  quotaManagerFactory = [(HMDCameraClipsQuotaMessenger *)self quotaManagerFactory];
  v3 = quotaManagerFactory[2]();

  return v3;
}

- (void)configure
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:133];
  messageDispatcher = [(HMDCameraClipsQuotaMessenger *)self messageDispatcher];
  v5 = *MEMORY[0x277CCF4D8];
  v11[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [messageDispatcher registerForMessage:v5 receiver:self policies:v6 selector:sel_handleFetchNamesForZonesWithEnabledCloudStorageMessage_];

  messageDispatcher2 = [(HMDCameraClipsQuotaMessenger *)self messageDispatcher];
  v8 = *MEMORY[0x277CCF4F8];
  v10 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [messageDispatcher2 registerForMessage:v8 receiver:self policies:v9 selector:sel_handleUpdateCloudStorageMessage_];
}

- (HMDCameraClipsQuotaMessenger)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = dispatcherCopy;
  if (!dispatcherCopy)
  {
LABEL_7:
    _HMFPreconditionFailure();
    return __68__HMDCameraClipsQuotaMessenger_initWithWorkQueue_messageDispatcher___block_invoke();
  }

  v14.receiver = self;
  v14.super_class = HMDCameraClipsQuotaMessenger;
  v10 = [(HMDCameraClipsQuotaMessenger *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workQueue, queue);
    objc_storeStrong(&v11->_messageDispatcher, dispatcher);
    quotaManagerFactory = v11->_quotaManagerFactory;
    v11->_quotaManagerFactory = &__block_literal_global_133106;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_133118 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_133118, &__block_literal_global_19_133119);
  }

  v3 = logCategory__hmf_once_v7_133120;

  return v3;
}

void __43__HMDCameraClipsQuotaMessenger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_133120;
  logCategory__hmf_once_v7_133120 = v0;
}

@end