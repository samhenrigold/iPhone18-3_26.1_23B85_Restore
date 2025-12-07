@interface HMDHomeNFCReaderKeyManager
+ (id)logCategory;
- (HMDDevice)primaryResidentDevice;
- (HMDHome)home;
- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue;
- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue keychainStore:(id)store dataSource:(id)source;
- (id)createNFCReaderKeyModelWithHome:(id)home nfcReaderKey:(id)key;
- (id)logIdentifier;
- (id)readerKeyWithKeychainItemIdentifier:(id)identifier error:(id *)error flow:(id)flow;
- (void)configureWithHome:(id)home;
- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow;
- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow completion:(id)completion;
- (void)deleteKeychainItemForNFCReaderKeyIsForceUpdate:(BOOL)update withFlow:(id)flow completion:(id)completion;
- (void)fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion;
- (void)fetchOrCreateReaderKeyWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion;
- (void)handleCreateKeychainItemForReaderKeyMessage:(id)message;
- (void)handleDeleteKeychainItemForNFCReaderKey:(id)key;
- (void)handleFetchOrCreateReaderKeyMessage:(id)message;
- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)notification;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handleSystemKeychainStoreUpdatedNotification:(id)notification;
- (void)removeKeychainItemForReaderKey:(id)key home:(id)home flow:(id)flow;
- (void)requestDevice:(id)device toCreateKeychainItemForReaderKeyWithFlow:(id)flow completion:(id)completion;
- (void)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)flow completion:(id)completion;
- (void)rollReaderKeyWithFlow:(id)flow withCompletion:(id)completion;
- (void)unconfigure;
@end

@implementation HMDHomeNFCReaderKeyManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  uuid = [(HMDHomeNFCReaderKeyManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)flow completion:(id)completion
{
  v41[1] = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  primaryResidentDevice = [(HMDHomeNFCReaderKeyManager *)self primaryResidentDevice];
  if (primaryResidentDevice)
  {
    v10 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDHomeNFCReaderKeyManager *)self messageTargetUUID];
    v12 = [(HMDRemoteDeviceMessageDestination *)v10 initWithTarget:messageTargetUUID device:primaryResidentDevice];

    v13 = [HMDRemoteMessage alloc];
    v40 = *MEMORY[0x277D0F1C8];
    v14 = HMFEncodedRootObject();
    v41[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v16 = [(HMDRemoteMessage *)v13 initWithName:@"HMDHomeFetchOrCreateNFCReaderKeyMessage" destination:v12 payload:v15 type:0 timeout:1 secure:0.0];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke;
    v29[3] = &unk_279732AE8;
    v29[4] = self;
    v17 = flowCopy;
    v30 = v17;
    v31 = completionCopy;
    [(HMDRemoteMessage *)v16 setResponseHandler:v29];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      uUID = [v17 UUID];
      *buf = 138544130;
      v33 = v21;
      v34 = 2112;
      v35 = uUID;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = primaryResidentDevice;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to fetch or create reader key: %@ to primary resident: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    messageDispatcher = [(HMDHomeNFCReaderKeyManager *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v16];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = uUID2;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not send message to fetch or create reader key, there is no primary resident that support wallet key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMDHomeFetchOrCreateNFCReaderKeyMessageKeyReaderKey"];
  if (v7)
  {
    v37 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v37];
    v9 = v37;
    if (v8)
    {
      v10 = [a1[4] workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_2;
      block[3] = &unk_279734578;
      v11 = a1[5];
      block[4] = a1[4];
      v31 = v11;
      v32 = v8;
      v33 = a1[6];
      dispatch_async(v10, block);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1[4];
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v22 = v29 = v5;
        [a1[5] UUID];
        v23 = v28 = v19;
        *buf = 138544130;
        v41 = v22;
        v42 = 2112;
        v43 = v23;
        v44 = 2112;
        v45 = v7;
        v46 = 2112;
        v47 = v9;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to decode reader key %@:%@", buf, 0x2Au);

        v19 = v28;
        v5 = v29;
      }

      objc_autoreleasePoolPop(v19);
      v24 = [MEMORY[0x277CBEB38] dictionary];
      [v24 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v25 = [a1[4] workQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_225;
      v34[3] = &unk_279735738;
      v26 = a1[6];
      v35 = v24;
      v36 = v26;
      v27 = v24;
      dispatch_async(v25, v34);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [a1[5] UUID];
      v17 = v16 = v5;
      *buf = 138544386;
      v41 = v15;
      v42 = 2112;
      v43 = v17;
      v44 = 2112;
      v45 = @"HMDHomeFetchOrCreateNFCReaderKeyMessageKeyReaderKey";
      v46 = 2112;
      v47 = v6;
      v48 = 2112;
      v49 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Missing reader key: %@ in payload: %@ error: %@", buf, 0x34u);

      v5 = v16;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [a1[4] workQueue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_223;
    v38[3] = &unk_2797348C0;
    v39 = a1[6];
    dispatch_async(v18, v38);

    v9 = v39;
  }
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_223(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_225(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetched nfc reader key: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 56) + 16))();
}

- (void)requestDevice:(id)device toCreateKeychainItemForReaderKeyWithFlow:(id)flow completion:(id)completion
{
  v44[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v36 = v15;
    v37 = 2112;
    v38 = uUID;
    v39 = 2112;
    v40 = deviceCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Requesting primary resident device to create keychain item for nfc reader key. residentDevice: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [HMDRemoteDeviceMessageDestination alloc];
  messageTargetUUID = [(HMDHomeNFCReaderKeyManager *)selfCopy messageTargetUUID];
  v19 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:messageTargetUUID device:deviceCopy];

  v20 = [HMDRemoteMessage alloc];
  v43 = *MEMORY[0x277D0F1C8];
  v21 = HMFEncodedRootObject();
  v44[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v23 = [(HMDRemoteMessage *)v20 initWithName:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessage" destination:v19 payload:v22 type:0 timeout:1 secure:0.0];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke;
  v32[3] = &unk_279732AE8;
  v32[4] = selfCopy;
  v24 = flowCopy;
  v33 = v24;
  v25 = completionCopy;
  v34 = v25;
  [(HMDRemoteMessage *)v23 setResponseHandler:v32];
  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    uUID2 = [v24 UUID];
    *buf = 138544130;
    v36 = v29;
    v37 = 2112;
    v38 = uUID2;
    v39 = 2112;
    v40 = v23;
    v41 = 2112;
    v42 = deviceCopy;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to create keychain item for reader key: %@ to primary resident: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
  messageDispatcher = [(HMDHomeNFCReaderKeyManager *)v27 messageDispatcher];
  [messageDispatcher sendMessage:v23];
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey"];
  if (v7)
  {
    v8 = [HMDHomeNFCReaderKey createWithExternalRepresentation:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [a1[4] workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_2;
      block[3] = &unk_279734578;
      v11 = a1[5];
      block[4] = a1[4];
      v30 = v11;
      v12 = v9;
      v31 = v12;
      v32 = a1[6];
      dispatch_async(v10, block);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1[4];
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [a1[5] UUID];
        *buf = 138544130;
        v39 = v23;
        v40 = 2112;
        v41 = v24;
        v42 = 2112;
        v43 = v7;
        v44 = 2112;
        v45 = 0;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to decode reader key keychain item %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CBEB38] dictionary];
      [v25 setObject:0 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v26 = [a1[4] workQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_222;
      v33[3] = &unk_279735738;
      v27 = a1[6];
      v34 = v25;
      v35 = v27;
      v28 = v25;
      dispatch_async(v26, v33);

      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      [a1[5] UUID];
      v18 = v17 = v5;
      *buf = 138544386;
      v39 = v16;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = @"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey";
      v44 = 2112;
      v45 = v6;
      v46 = 2112;
      v47 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Missing reader key keychain item: %@ in payload: %@ error: %@", buf, 0x34u);

      v5 = v17;
    }

    objc_autoreleasePoolPop(v13);
    v19 = [a1[4] workQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_221;
    v36[3] = &unk_2797348C0;
    v37 = a1[6];
    dispatch_async(v19, v36);

    v12 = v37;
  }
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_221(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_222(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident successfully created keychain item for nfc reader key: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 56) + 16))();
}

- (HMDDevice)primaryResidentDevice
{
  home = [(HMDHomeNFCReaderKeyManager *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  device = [primaryResidentDevice device];
  if (device)
  {
    capabilities = [primaryResidentDevice capabilities];
    if ([capabilities supportsWalletKey])
    {
      isReachable = [primaryResidentDevice isReachable];

      if (isReachable)
      {
        v8 = device;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)removeKeychainItemForReaderKey:(id)key home:(id)home flow:(id)flow
{
  v57 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  homeCopy = home;
  flowCopy = flow;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  identifier = [keyCopy identifier];
  v46 = homeCopy;
  v12 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:homeCopy keyIdentifier:?];
  keychainStore = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v48 = 0;
  v14 = [keychainStore allKeychainItemsForType:&unk_286629068 identifier:v12 syncable:MEMORY[0x277CBEC38] error:&v48];
  v15 = v48;
  firstObject = [v14 firstObject];

  userInfo = [v15 userInfo];
  v18 = [userInfo hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  if (!firstObject)
  {
    code = [v18 code];
    v44 = objc_autoreleasePoolPush();
    selfCopy = self;
    v36 = HMFGetOSLogHandle();
    v26 = v36;
    if (code == -25300)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v50 = v37;
        v51 = 2112;
        v52 = uUID;
        v39 = "%{public}@[Flow: %@] Not removing nfc reader key, keychain item does not exist";
        v40 = v26;
        v41 = OS_LOG_TYPE_INFO;
        v42 = 22;
LABEL_14:
        _os_log_impl(&dword_2531F8000, v40, v41, v39, buf, v42);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543874;
      v50 = v37;
      v51 = 2112;
      v52 = uUID;
      v53 = 2112;
      v54 = v15;
      v39 = "%{public}@[Flow: %@] Failed to remove nfc reader key, keychain item fetch failed: %@";
      v40 = v26;
      v41 = OS_LOG_TYPE_ERROR;
      v42 = 32;
      goto LABEL_14;
    }

    v23 = v44;
    goto LABEL_16;
  }

  v43 = v18;
  v19 = keyCopy;
  keychainStore2 = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v47 = v15;
  v21 = [keychainStore2 deleteKeychainItem:firstObject error:&v47];
  v22 = v47;

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  v26 = v25;
  if (v21)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v28 = v27 = v23;
      uUID2 = [flowCopy UUID];
      *buf = 138543874;
      v50 = v28;
      v51 = 2112;
      v52 = uUID2;
      v53 = 2112;
      v54 = firstObject;
      v30 = "%{public}@[Flow: %@] Successfully removed nfc reader key keychain item %@";
      v31 = v26;
      v32 = OS_LOG_TYPE_INFO;
      v33 = 32;
LABEL_10:
      _os_log_impl(&dword_2531F8000, v31, v32, v30, buf, v33);

      v23 = v27;
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v28 = v27 = v23;
    uUID2 = [flowCopy UUID];
    *buf = 138544130;
    v50 = v28;
    v51 = 2112;
    v52 = uUID2;
    v53 = 2112;
    v54 = firstObject;
    v55 = 2112;
    v56 = v22;
    v30 = "%{public}@[Flow: %@] Failed to remove nfc reader key keychain item %@:%@";
    v31 = v26;
    v32 = OS_LOG_TYPE_ERROR;
    v33 = 42;
    goto LABEL_10;
  }

  v15 = v22;
  keyCopy = v19;
  v18 = v43;
LABEL_16:

  objc_autoreleasePoolPop(v23);
}

- (id)createNFCReaderKeyModelWithHome:(id)home nfcReaderKey:(id)key
{
  keyCopy = key;
  homeCopy = home;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [HMDHomeNFCReaderKeyModel defaultModelForHome:homeCopy];

  [v9 setNfcReaderKey:keyCopy];

  return v9;
}

- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow
{
  v70 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  flowCopy = flow;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v63 = v13;
    v64 = 2112;
    v65 = uUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating reader key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = +[HMDHomeNFCReaderKey createRandomKey];
  v16 = v15;
  if (v15)
  {
    createKeychainItemFuture3 = [v15 createKeychainItemForHome:homeCopy];
    if (createKeychainItemFuture3)
    {
      v51 = flowCopy;
      v52 = homeCopy;
      keychainStore = [(HMDHomeNFCReaderKeyManager *)selfCopy keychainStore];
      v61 = 0;
      v19 = [keychainStore updateKeychainItem:createKeychainItemFuture3 createIfNeeded:1 error:&v61];
      createKeychainItemFuture2 = v61;

      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v19)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          uUID2 = [v51 UUID];
          *buf = 138544130;
          v63 = v25;
          v64 = 2112;
          v65 = uUID2;
          v66 = 2112;
          v67 = createKeychainItemFuture3;
          v68 = 2112;
          v69 = v16;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully created keychain item: %@ for nfc reader key: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
        v27 = objc_alloc(MEMORY[0x277D0F848]);
        v28 = NSStringFromSelector(a2);
        allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
        createKeychainItemFuture = [v27 initWithName:v28 destination:allMessageDestinations payload:0];

        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke;
        v57[3] = &unk_27972CD68;
        v57[4] = v22;
        v49 = v51;
        v58 = v49;
        v31 = v16;
        v59 = v31;
        v32 = v52;
        v60 = v32;
        [createKeychainItemFuture setResponseHandler:v57];
        v50 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v33 = [(HMDHomeNFCReaderKeyManager *)v22 createNFCReaderKeyModelWithHome:v32 nfcReaderKey:v31];
        backingStore = [v32 backingStore];
        v35 = [backingStore transaction:@"Creating NFC Reader Key" options:v50];

        flowCopy = v51;
        [v35 add:v33 withMessage:createKeychainItemFuture];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_2;
        v53[3] = &unk_279730430;
        v53[4] = v22;
        v54 = v49;
        v55 = v31;
        v56 = v32;
        [v35 run:v53];

        homeCopy = v52;
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          uUID3 = [v51 UUID];
          *buf = 138544130;
          v63 = v46;
          v64 = 2112;
          v65 = uUID3;
          v66 = 2112;
          v67 = createKeychainItemFuture3;
          v68 = 2112;
          v69 = createKeychainItemFuture2;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add nfc reader key item: %@ to key chain: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
        createKeychainItemFuture = [(HMDHomeNFCReaderKeyManager *)v22 createKeychainItemFuture];
        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [createKeychainItemFuture finishWithError:v48];

        flowCopy = v51;
        homeCopy = v52;
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        *buf = 138543874;
        v63 = v44;
        v64 = 2112;
        v65 = uUID4;
        v66 = 2112;
        v67 = v16;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create keychain item  for reader key: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v41);
      createKeychainItemFuture2 = [(HMDHomeNFCReaderKeyManager *)v42 createKeychainItemFuture];
      createKeychainItemFuture = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [createKeychainItemFuture2 finishWithError:createKeychainItemFuture];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      uUID5 = [flowCopy UUID];
      *buf = 138543618;
      v63 = v39;
      v64 = 2112;
      v65 = uUID5;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create the nfc reader key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    createKeychainItemFuture3 = [(HMDHomeNFCReaderKeyManager *)v37 createKeychainItemFuture];
    createKeychainItemFuture2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [createKeychainItemFuture3 finishWithError:createKeychainItemFuture2];
  }
}

void __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      *buf = 138543874;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC reader key transaction message response handler called with: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_213;
    block[3] = &unk_279734870;
    v20 = a1[4];
    v13 = a1[6];
    v14 = a1[7];
    v15 = a1[5];
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v20;
    *(&v17 + 1) = v13;
    v22 = v17;
    v23 = v16;
    dispatch_async(v12, block);

    v18 = [a1[4] createKeychainItemFuture];
    [v18 finishWithError:v5];
  }

  else
  {
    v19 = [a1[4] createKeychainItemFuture];
    [v19 finishWithResult:a1[6]];
  }
}

void __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_2(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [a1[5] UUID];
      *buf = 138543874;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC reader key transaction run failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_217;
    block[3] = &unk_279734870;
    v16 = a1[4];
    v10 = a1[6];
    v11 = a1[7];
    v12 = a1[5];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v16;
    *(&v14 + 1) = v10;
    v18 = v14;
    v19 = v13;
    dispatch_async(v9, block);

    v15 = [a1[4] createKeychainItemFuture];
    [v15 finishWithError:v3];
  }
}

- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow completion:(id)completion
{
  updateCopy = update;
  v45 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  homeManager = [homeCopy homeManager];
  hasLoadedData = [homeManager hasLoadedData];

  if ((hasLoadedData & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v40 = v21;
      v41 = 2112;
      v42 = uUID;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not creating nfc reader key, home data load is in progress.", buf, 0x16u);
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v18);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    completionCopy[2](completionCopy, 0, v24);
    goto LABEL_14;
  }

  administratorHandler = [homeCopy administratorHandler];
  shouldRelayMessages = [administratorHandler shouldRelayMessages];

  if (shouldRelayMessages)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      uuid = [homeCopy uuid];
      *buf = 138543874;
      v40 = v21;
      v41 = 2112;
      v42 = uUID;
      v43 = 2112;
      v44 = uuid;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Call to create reader key, but we are not the designated writer for home: %@", buf, 0x20u);

LABEL_7:
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v35 = updateCopy;
  createKeychainItemFuture = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];

  createKeychainItemFuture2 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];

  if (!createKeychainItemFuture2)
  {
    v27 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HMDHomeNFCReaderKeyManager *)self setCreateKeychainItemFuture:v27];
  }

  createKeychainItemFuture3 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];
  createKeychainItemFuture4 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];
  v30 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  v32 = [v30 schedulerWithDispatchQueue:workQueue2];
  v33 = [createKeychainItemFuture4 reschedule:v32];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke;
  v36[3] = &unk_27972CD40;
  v36[4] = self;
  v37 = createKeychainItemFuture3;
  v38 = completionCopy;
  v24 = createKeychainItemFuture3;
  v34 = [v33 addCompletionBlock:v36];

  if (!createKeychainItemFuture)
  {
    [(HMDHomeNFCReaderKeyManager *)self createReaderKeyInKeychainForHome:homeCopy isForceUpdate:v35 flow:flowCopy];
  }

LABEL_14:
}

void __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) createKeychainItemFuture];
  v7 = *(a1 + 40);

  if (v6 == v7)
  {
    [*(a1 + 32) setCreateKeychainItemFuture:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)readerKeyWithKeychainItemIdentifier:(id)identifier error:(id *)error flow:(id)flow
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  flowCopy = flow;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  keychainStore = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v12 = [keychainStore allKeychainItemsForType:&unk_286629068 identifier:identifierCopy syncable:MEMORY[0x277CBEC38] error:error];

  if ([v12 count])
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v21 = 138544130;
      v22 = v16;
      v23 = 2112;
      v24 = uUID;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found keychain items: %@ for nfc reader key with keychain item identifier: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    firstObject = [v12 firstObject];
    v19 = [HMDHomeNFCReaderKey createWithKeychainItem:firstObject];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)deleteKeychainItemForNFCReaderKeyIsForceUpdate:(BOOL)update withFlow:(id)flow completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeNFCReaderKeyManager *)self home];
  v12 = home;
  if (home)
  {
    homeManager = [home homeManager];
    if ([homeManager hasLoadedData])
    {
      nfcReaderKey = [v12 nfcReaderKey];
      if (nfcReaderKey)
      {
        v15 = objc_alloc(MEMORY[0x277D0F848]);
        v16 = NSStringFromSelector(a2);
        allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
        v18 = [v15 initWithName:v16 destination:allMessageDestinations payload:0];

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke;
        v30[3] = &unk_279734780;
        v34 = completionCopy;
        v30[4] = self;
        nfcReaderKey = nfcReaderKey;
        v31 = nfcReaderKey;
        v19 = v12;
        v32 = v19;
        v33 = flowCopy;
        [v18 setResponseHandler:v30];
        v20 = [(HMDHomeNFCReaderKeyManager *)self createNFCReaderKeyModelWithHome:v19 nfcReaderKey:0];
        v21 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        backingStore = [v19 backingStore];
        v23 = [backingStore transaction:@"Deleting NFC Reader Key" options:v21];

        [v23 add:v20 withMessage:v18];
        [v23 run];
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(completionCopy + 2))(completionCopy, v29);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v36 = v27;
        v37 = 2112;
        v38 = uUID;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not deleting reader key, home data load is in progress.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      nfcReaderKey = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, nfcReaderKey);
    }
  }

  else
  {
    homeManager = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, homeManager);
  }
}

void __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke(id *a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = a2;
    v3 = MEMORY[0x277CBEAC0];
    v4 = a2;
    v5 = [v3 dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v6 = a1[8];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:v5];
    v6[2](v6, v7);
  }

  else
  {
    v8 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke_2;
    block[3] = &unk_279734668;
    v13 = *(a1 + 2);
    v9 = *(&v13 + 1);
    v10 = a1[6];
    v11 = a1[7];
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v15 = v13;
    v16 = v12;
    v17 = a1[8];
    dispatch_async(v8, block);

    v5 = 0;
  }
}

uint64_t __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeKeychainItemForReaderKey:*(a1 + 40) home:*(a1 + 48) flow:*(a1 + 56)];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)handleSystemKeychainStoreUpdatedNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling system keychain store updated notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  if (home)
  {
    workQueue = [(HMDHomeNFCReaderKeyManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDHomeNFCReaderKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke;
    block[3] = &unk_279734960;
    block[4] = selfCopy;
    v19 = home;
    v20 = internalOnlyInitializer;
    dispatch_async(workQueue, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      uUID2 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = uUID2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling keychain update, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __75__HMDHomeNFCReaderKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke(id *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] dataSource];
  v3 = [v2 isWatch];

  v4 = [a1[5] currentUser];
  v5 = [v4 isOwner];

  if ((v3 & 1) != 0 || v5 != 1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[6] UUID];
      v17 = HMFBooleanToString();
      v18 = HMFBooleanToString();
      *buf = 138544130;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling keychain update because it is watch: %@ or is not owner device: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v6 = [a1[5] nfcReaderKey];
    v7 = [v6 identifier];

    if (v7)
    {
      v8 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:a1[5] keyIdentifier:v7];
      v9 = a1[4];
      v29 = 0;
      v10 = [v9 readerKeyWithKeychainItemIdentifier:v8 error:&v29 flow:a1[6]];
      v11 = v29;
      if (v10)
      {
        logAndPostNotification(@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification", a1[4], 0);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = a1[4];
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [a1[6] UUID];
          *buf = 138544130;
          v31 = v27;
          v32 = 2112;
          v33 = v28;
          v34 = 2112;
          v35 = v7;
          v36 = 2112;
          v37 = v8;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch reader key with identifier: %@ and keychain item identifier: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1[4];
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [a1[6] UUID];
        *buf = 138543618;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling nfc reader key update because it set to nil on home", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }
}

- (void)handleHomeRemovedNotification:(id)notification
{
  v49 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v42 = v13;
    v43 = 2112;
    v44 = uUID;
    v45 = 2112;
    v46 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home removed notification: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  if (home == v8)
  {
    dataSource = [(HMDHomeNFCReaderKeyManager *)selfCopy dataSource];
    isWatch = [dataSource isWatch];

    currentUser = [home currentUser];
    isOwner = [currentUser isOwner];

    if ((isWatch & 1) != 0 || isOwner != 1)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        [internalOnlyInitializer UUID];
        v28 = v36 = v24;
        v29 = HMFBooleanToString();
        v30 = HMFBooleanToString();
        *buf = 138544130;
        v42 = v27;
        v43 = 2112;
        v44 = v28;
        v45 = 2112;
        v46 = v29;
        v47 = 2112;
        v48 = v30;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not removing nfc reader key because it is watch: %@ or is not owner device: %@", buf, 0x2Au);

        v24 = v36;
      }

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      primaryResidentDevice = [(HMDHomeNFCReaderKeyManager *)selfCopy primaryResidentDevice];
      v21 = primaryResidentDevice;
      if (primaryResidentDevice && ([primaryResidentDevice isCurrentDevice] & 1) == 0)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          uUID2 = [internalOnlyInitializer UUID];
          *buf = 138543618;
          v42 = v34;
          v43 = 2112;
          v44 = uUID2;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping removal of nfc reader key on current device because home has a primary resident that supports wallet key", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
      }

      else
      {
        nfcReaderKey = [home nfcReaderKey];
        if (nfcReaderKey)
        {
          workQueue = [(HMDHomeNFCReaderKeyManager *)selfCopy workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__HMDHomeNFCReaderKeyManager_handleHomeRemovedNotification___block_invoke;
          block[3] = &unk_279734870;
          block[4] = selfCopy;
          v38 = nfcReaderKey;
          v39 = home;
          v40 = internalOnlyInitializer;
          dispatch_async(workQueue, block);
        }
      }
    }
  }
}

- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  dataSource = [(HMDHomeNFCReaderKeyManager *)self dataSource];
  isWatch = [dataSource isWatch];

  home = [(HMDHomeNFCReaderKeyManager *)self home];
  currentUser = [home currentUser];
  isOwner = [currentUser isOwner];

  v13 = isOwner ^ 1;
  if ((isWatch & 1) != 0 || v13)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMFBooleanToString();
      v20 = HMFBooleanToString();
      *buf = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not handling home nfc reader key update notification because it is watch: %@ or is not owner device: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v22 = notificationCopy;
    v23 = v7;
    dispatch_async(workQueue, block);
  }
}

void __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke(id *a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    *buf = 138543618;
    v59 = v6;
    v60 = 2112;
    v61 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling HomeDidUpdateNFCReaderKeyNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [a1[5] userInfo];
  v9 = [v8 objectForKeyedSubscript:@"HMDHomeDidUpdateNFCReaderKeyNotificationKeyPreviousNFCReaderKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v2 UUID];
      *buf = 138543874;
      v59 = v15;
      v60 = 2112;
      v61 = v16;
      v62 = 2112;
      v63 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing keychain item for nfc reader key: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [a1[4] removeKeychainItemForReaderKey:v11 home:a1[6] flow:v2];
  }

  v17 = [a1[6] nfcReaderKey];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 identifier];
    v20 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:a1[6] keyIdentifier:v19];
    v21 = a1[4];
    v57 = 0;
    v22 = [v21 readerKeyWithKeychainItemIdentifier:v20 error:&v57 flow:v2];
    v23 = v57;
    if (v22)
    {
      v53 = v22;
      v24 = [a1[4] keyIdentifiersAlreadyUpdated];
      v25 = [v24 containsObject:v19];

      if (v25)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = a1[4];
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          [v2 UUID];
          v30 = v50 = v26;
          *buf = 138543874;
          v59 = v29;
          v60 = 2112;
          v61 = v30;
          v62 = 2112;
          v63 = v19;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Already updated Reader key with key identifier: %@", buf, 0x20u);

          v26 = v50;
        }

        objc_autoreleasePoolPop(v26);
      }

      else
      {
        v52 = v23;
        v41 = [a1[4] keyIdentifiersAlreadyUpdated];
        [v41 addObject:v19];

        v42 = objc_autoreleasePoolPush();
        v43 = a1[4];
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          [v2 UUID];
          v46 = v49 = v42;
          *buf = 138543874;
          v59 = v45;
          v60 = 2112;
          v61 = v46;
          v62 = 2112;
          v63 = v19;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caching did update reader key with key identifier: %@", buf, 0x20u);

          v42 = v49;
        }

        objc_autoreleasePoolPop(v42);
        v47 = dispatch_time(0, 86400000000000);
        v48 = [a1[4] workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_202;
        block[3] = &unk_279734960;
        block[4] = a1[4];
        v55 = v2;
        v56 = v19;
        dispatch_after(v47, v48, block);

        logAndPostNotification(@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification", a1[4], 0);
        v23 = v52;
      }

      v22 = v53;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = a1[4];
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        [v2 UUID];
        v40 = v51 = v36;
        *buf = 138544130;
        v59 = v39;
        v60 = 2112;
        v61 = v40;
        v62 = 2112;
        v63 = v19;
        v64 = 2112;
        v65 = v20;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch reader key with identifier: %@ and keychain item identifier: %@", buf, 0x2Au);

        v36 = v51;
        v22 = 0;
      }

      objc_autoreleasePoolPop(v36);
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = a1[4];
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v2 UUID];
      *buf = 138543618;
      v59 = v34;
      v60 = 2112;
      v61 = v35;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Received home nfc reader key did update notification but its not set for home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
  }
}

void __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_202(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing key identifier from keyIdentifiersAlreadyUpdated: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) keyIdentifiersAlreadyUpdated];
  [v8 removeObject:*(a1 + 48)];
}

- (void)unconfigure
{
  messageDispatcher = [(HMDHomeNFCReaderKeyManager *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  accessoryManager = [(HMDHomeNFCReaderKeyManager *)self accessoryManager];
  [accessoryManager unconfigure];
}

- (void)rollReaderKeyWithFlow:(id)flow withCompletion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = flowCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = flowCopy;
  dispatch_async(workQueue, block);
}

void __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] UUID];
    *buf = 138543618;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] rollReaderKeyWithFlow", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (isInternalBuild())
  {
    v7 = [a1[4] home];
    v8 = [v7 currentUser];
    v9 = v8;
    if (v7 && v8)
    {
      if (([v8 isOwner] & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = a1[4];
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = [a1[5] UUID];
          *buf = 138543618;
          v39 = v13;
          v40 = 2112;
          v41 = v14;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] We are not the owner, so unable to roll reader key", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v15 = a1[6];
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
        v15[2](v15, v16);
      }

      v17 = a1[4];
      v18 = a1[5];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_199;
      v34[3] = &unk_279735BE8;
      v19 = a1[6];
      v20 = a1[4];
      v37 = v19;
      v34[4] = v20;
      v35 = v7;
      v36 = a1[5];
      [v17 deleteKeychainItemForNFCReaderKeyIsForceUpdate:1 withFlow:v18 completion:v34];

      v21 = v37;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = a1[4];
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [a1[5] UUID];
        *buf = 138544130;
        v39 = v31;
        v40 = 2112;
        v41 = v32;
        v42 = 2112;
        v43 = v7;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to roll reader key, home or currentUser is nil. home: %@, currentUser: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v28);
      v33 = a1[6];
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v33[2](v33, v21);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1[4];
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [a1[5] UUID];
      *buf = 138543618;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to roll reader key, not internal build", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = a1[6];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v27[2](v27, v7);
  }
}

void __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_199(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = v5;
    if (v5 != *MEMORY[0x277CCFD28])
    {

LABEL_6:
      (*(*(a1 + 56) + 16))();
      goto LABEL_7;
    }

    v7 = [v4 code];

    if (v7 != 2)
    {
      goto LABEL_6;
    }
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_2;
  v11[3] = &unk_27972CD18;
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  [v8 createReaderKeyInKeychainForHome:v9 isForceUpdate:1 flow:v10 completion:v11];

LABEL_7:
}

- (void)fetchOrCreateReaderKeyWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion
{
  v83 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v16 = HMFBooleanToString();
    *buf = 138543874;
    v74 = v14;
    v75 = 2112;
    v76 = uUID;
    v77 = 2112;
    v78 = v16;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetch or create reader key with requiresPrivateKey: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  if (home)
  {
    dataSource = [(HMDHomeNFCReaderKeyManager *)selfCopy dataSource];
    isWatch = [dataSource isWatch];

    currentUser = [home currentUser];
    nfcReaderKey = [home nfcReaderKey];
    v22 = nfcReaderKey;
    if (((isWatch & 1) != 0 || !key) && nfcReaderKey)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v74 = v26;
        v75 = 2112;
        v76 = uUID2;
        v77 = 2112;
        v78 = v22;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current device is watch or caller does not requires private key, fetched nfc reader key from home graph: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      completionCopy[2](completionCopy, v22, 0);
      goto LABEL_23;
    }

    if ([currentUser isAdministrator])
    {
      privilege = [currentUser privilege];
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      if (privilege == 4)
      {
        if (v37)
        {
          v38 = HMFGetLogIdentifier();
          uUID3 = [flowCopy UUID];
          *buf = 138543618;
          v74 = v38;
          v75 = 2112;
          v76 = uUID3;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is shared admin, sending request to resident to create nfc reader key", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        [(HMDHomeNFCReaderKeyManager *)v35 requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:flowCopy completion:completionCopy];
        goto LABEL_23;
      }

      if (!isWatch)
      {
        if (v37)
        {
          v50 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          *buf = 138543618;
          v74 = v50;
          v75 = 2112;
          v76 = uUID4;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is owner, fetching or creating nfc reader key from keychain", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        nfcReaderKey2 = [home nfcReaderKey];
        identifier = [nfcReaderKey2 identifier];

        if (identifier)
        {
          v53 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:home keyIdentifier:identifier];
          v54 = objc_autoreleasePoolPush();
          v55 = v35;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v68 = v54;
            v58 = v57 = v53;
            [flowCopy UUID];
            v59 = v70 = identifier;
            *buf = 138544130;
            v74 = v58;
            v75 = 2112;
            v76 = v59;
            v77 = 2112;
            v78 = v57;
            v79 = 2112;
            v80 = v22;
            _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Looking for key chain item with identifier: %@ for reader key: %@", buf, 0x2Au);

            identifier = v70;
            v53 = v57;
            v54 = v68;
          }

          objc_autoreleasePoolPop(v54);
          v72 = 0;
          v60 = [(HMDHomeNFCReaderKeyManager *)v55 readerKeyWithKeychainItemIdentifier:v53 error:&v72 flow:flowCopy];
          v61 = v72;
          if (v60)
          {
            completionCopy[2](completionCopy, v60, 0);
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v69 = v55;
            v63 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v64 = v71 = identifier;
              [flowCopy UUID];
              v65 = v66 = v53;
              *buf = 138544386;
              v74 = v64;
              v75 = 2112;
              v76 = v65;
              v77 = 2112;
              v78 = v66;
              v79 = 2112;
              v80 = v22;
              v81 = 2112;
              v82 = v61;
              _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch keychain item with identifier: %@ for nfc reader key %@:%@", buf, 0x34u);

              v53 = v66;
              identifier = v71;
            }

            objc_autoreleasePoolPop(context);
            (completionCopy)[2](completionCopy, 0, v61);
          }
        }

        else
        {
          primaryResidentDevice = [(HMDHomeNFCReaderKeyManager *)v35 primaryResidentDevice];
          v61 = primaryResidentDevice;
          if (primaryResidentDevice && ([primaryResidentDevice isCurrentDevice] & 1) == 0)
          {
            [(HMDHomeNFCReaderKeyManager *)v35 requestDevice:v61 toCreateKeychainItemForReaderKeyWithFlow:flowCopy completion:completionCopy];
          }

          else
          {
            [(HMDHomeNFCReaderKeyManager *)v35 createReaderKeyInKeychainForHome:home isForceUpdate:0 flow:flowCopy completion:completionCopy];
          }
        }

        goto LABEL_22;
      }

      if (v37)
      {
        v48 = HMFGetLogIdentifier();
        uUID5 = [flowCopy UUID];
        *buf = 138543618;
        v74 = v48;
        v75 = 2112;
        v76 = uUID5;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is owner. Fetch or create reader key from keychain is not supported on watch", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v45 = MEMORY[0x277CCA9B8];
      v46 = 48;
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        uUID6 = [flowCopy UUID];
        *buf = 138543618;
        v74 = v43;
        v75 = 2112;
        v76 = uUID6;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is not admin and home key doesn't exist in home graph, returning nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v45 = MEMORY[0x277CCA9B8];
      v46 = 2;
    }

    identifier = [v45 hmErrorWithCode:v46];
    (completionCopy)[2](completionCopy, 0, identifier);
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = selfCopy;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    uUID7 = [flowCopy UUID];
    *buf = 138543618;
    v74 = v31;
    v75 = 2112;
    v76 = uUID7;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create reader key, home is nil", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  currentUser = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (completionCopy)[2](completionCopy, 0, currentUser);
LABEL_24:
}

- (void)fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__HMDHomeNFCReaderKeyManager_fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey_flow_completion___block_invoke;
  v13[3] = &unk_279732430;
  keyCopy = key;
  v13[4] = self;
  v14 = flowCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = flowCopy;
  dispatch_async(workQueue, v13);
}

- (void)handleCreateKeychainItemForReaderKeyMessage:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v44 = v10;
    v45 = 2112;
    v46 = uUID;
    v47 = 2112;
    v48 = messageCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to create keychain item for reader key: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  v13 = home;
  if (home)
  {
    nfcReaderKey = [home nfcReaderKey];
    identifier = [nfcReaderKey identifier];

    if (identifier)
    {
      v16 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:v13 keyIdentifier:identifier];
      v40 = 0;
      v17 = [(HMDHomeNFCReaderKeyManager *)selfCopy readerKeyWithKeychainItemIdentifier:v16 error:&v40 flow:flow];
      v18 = v40;
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v17)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = v36 = v16;
          [flow UUID];
          v24 = v34 = v19;
          *buf = 138543874;
          v44 = v23;
          v45 = 2112;
          v46 = v24;
          v47 = 2112;
          v48 = v17;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item is already created for reader key: %@", buf, 0x20u);

          v19 = v34;
          v16 = v36;
        }

        objc_autoreleasePoolPop(v19);
        v41 = @"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey";
        externalRepresentation = [v17 externalRepresentation];
        v42 = externalRepresentation;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

        [messageCopy respondWithPayload:v26];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v32 = v35 = v19;
          [flow UUID];
          v33 = v37 = v16;
          *buf = 138543874;
          v44 = v32;
          v45 = 2112;
          v46 = v33;
          v47 = 2112;
          v48 = v18;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch keychain item for nfc reader key: %@", buf, 0x20u);

          v16 = v37;
          v19 = v35;
        }

        objc_autoreleasePoolPop(v19);
        [messageCopy respondWithError:v18];
      }
    }

    else
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __74__HMDHomeNFCReaderKeyManager_handleCreateKeychainItemForReaderKeyMessage___block_invoke;
      v38[3] = &unk_27972CCF0;
      v39 = messageCopy;
      [(HMDHomeNFCReaderKeyManager *)selfCopy createReaderKeyInKeychainForHome:v13 isForceUpdate:0 flow:flow completion:v38];
      v18 = v39;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      *buf = 138543618;
      v44 = v30;
      v45 = 2112;
      v46 = uUID2;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] I am not configured with a home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    identifier = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:identifier];
  }
}

void __74__HMDHomeNFCReaderKeyManager_handleCreateKeychainItemForReaderKeyMessage___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = @"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey";
    v3 = [a2 externalRepresentation];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

    [*(a1 + 32) respondWithPayload:v4];
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 respondWithError:?];
  }
}

- (void)handleFetchOrCreateReaderKeyMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v18 = v10;
    v19 = 2112;
    v20 = uUID;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to fetch or create reader key: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HMDHomeNFCReaderKeyManager_handleFetchOrCreateReaderKeyMessage___block_invoke;
  v14[3] = &unk_27972CCC8;
  v14[4] = selfCopy;
  v15 = flow;
  v16 = messageCopy;
  v12 = messageCopy;
  v13 = flow;
  [(HMDHomeNFCReaderKeyManager *)selfCopy fetchOrCreateReaderKeyWithRequiresPrivateKey:0 flow:v13 completion:v14];
}

void __66__HMDHomeNFCReaderKeyManager_handleFetchOrCreateReaderKeyMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v32 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v32];
    v8 = v32;
    if (v7)
    {
      v33 = @"HMDHomeFetchOrCreateNFCReaderKeyMessageKeyReaderKey";
      v34 = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v10 = objc_autoreleasePoolPush();
      v11 = a1[4];
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        [a1[5] UUID];
        v30 = v6;
        v15 = v14 = v8;
        v16 = a1[6];
        *buf = 138544130;
        v36 = v13;
        v37 = 2112;
        v38 = v15;
        v39 = 2112;
        v40 = v16;
        v41 = 2112;
        v42 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with payload: %@ ", buf, 0x2Au);

        v8 = v14;
        v6 = v30;
      }

      objc_autoreleasePoolPop(v10);
      [a1[6] respondWithPayload:v9];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:v9];
      [a1[6] respondWithError:v23];
      v24 = objc_autoreleasePoolPush();
      v25 = a1[4];
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        [a1[5] UUID];
        v27 = v31 = v24;
        v28 = a1[6];
        *buf = 138544130;
        v36 = v29;
        v37 = 2112;
        v38 = v27;
        v39 = 2112;
        v40 = v28;
        v41 = 2112;
        v42 = v23;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with: %@", buf, 0x2Au);

        v24 = v31;
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] UUID];
      v22 = a1[6];
      *buf = 138544130;
      v36 = v20;
      v37 = 2112;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    [a1[6] respondWithError:v6];
  }
}

- (void)handleDeleteKeychainItemForNFCReaderKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [keyCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling message to delete keychain item for nfc reader key", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HMDHomeNFCReaderKeyManager_handleDeleteKeychainItemForNFCReaderKey___block_invoke;
  v12[3] = &unk_2797358C8;
  v12[4] = selfCopy;
  v13 = keyCopy;
  v11 = keyCopy;
  [(HMDHomeNFCReaderKeyManager *)selfCopy deleteKeychainItemForNFCReaderKeyIsForceUpdate:0 withFlow:flow completion:v12];
}

void __70__HMDHomeNFCReaderKeyManager_handleDeleteKeychainItemForNFCReaderKey___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle message to delete nfc reader key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully handled message to delete nfc reader key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 40);
    v12 = @"HMDHomeDeleteKeychainItemForNFCReaderKeyMessageKeyDidSucceed";
    v13 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v10 respondWithPayload:v11];
  }
}

- (void)configureWithHome:(id)home
{
  v38 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v8;
    v36 = 2112;
    v37 = homeCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeNFCReaderKeyManager *)selfCopy setHome:homeCopy];
  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDHomeNFCReaderKeyManager *)selfCopy setMessageDispatcher:msgDispatcher];

  dataSource = [(HMDHomeNFCReaderKeyManager *)selfCopy dataSource];
  isResidentCapable = [dataSource isResidentCapable];

  if (isResidentCapable)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];
    v17 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v17 setRoles:{objc_msgSend(v17, "roles") | 4}];
    messageDispatcher = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v33[0] = v16;
    v33[1] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    [messageDispatcher registerForMessage:@"HMDHomeFetchOrCreateNFCReaderKeyMessage" receiver:v13 policies:v19 selector:sel_handleFetchOrCreateReaderKeyMessage_];

    messageDispatcher2 = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v32[0] = v16;
    v32[1] = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [messageDispatcher2 registerForMessage:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessage" receiver:v13 policies:v21 selector:sel_handleCreateKeychainItemForReaderKeyMessage_];

    messageDispatcher3 = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v31[0] = v16;
    v31[1] = v17;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [messageDispatcher3 registerForMessage:@"HMDHomeDeleteKeychainItemForNFCReaderKeyMessage" receiver:v13 policies:v23 selector:sel_handleDeleteKeychainItemForNFCReaderKey_];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  homeManager = [homeCopy homeManager];
  [defaultCenter addObserver:selfCopy selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:homeManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v27 = *MEMORY[0x277CFE930];
  keychainStore = [(HMDHomeNFCReaderKeyManager *)selfCopy keychainStore];
  [defaultCenter2 addObserver:selfCopy selector:sel_handleSystemKeychainStoreUpdatedNotification_ name:v27 object:keychainStore];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:selfCopy selector:sel_handleHomeDidUpdateNFCReaderKeyNotification_ name:@"HMDHomeDidUpdateNFCReaderKeyNotification" object:homeCopy];

  accessoryManager = [(HMDHomeNFCReaderKeyManager *)selfCopy accessoryManager];
  [accessoryManager configureWithHome:homeCopy];
}

- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue keychainStore:(id)store dataSource:(id)source
{
  dCopy = d;
  queueCopy = queue;
  storeCopy = store;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = HMDHomeNFCReaderKeyManager;
  v14 = [(HMDHomeNFCReaderKeyManager *)&v22 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(dCopy);
    uuid = v14->_uuid;
    v14->_uuid = v15;

    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeStrong(&v14->_keychainStore, store);
    objc_storeStrong(&v14->_dataSource, source);
    v17 = [[HMDHomeWalletKeyAccessoryManager alloc] initWithUUID:dCopy workQueue:queueCopy];
    accessoryManager = v14->_accessoryManager;
    v14->_accessoryManager = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    keyIdentifiersAlreadyUpdated = v14->_keyIdentifiersAlreadyUpdated;
    v14->_keyIdentifiersAlreadyUpdated = v19;
  }

  return v14;
}

- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue
{
  v6 = MEMORY[0x277CFEC78];
  queueCopy = queue;
  dCopy = d;
  systemStore = [v6 systemStore];
  v10 = objc_alloc_init(HMDHomeWalletDataSource);
  v11 = [(HMDHomeNFCReaderKeyManager *)self initWithUUID:dCopy workQueue:queueCopy keychainStore:systemStore dataSource:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70_129739 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70_129739, &__block_literal_global_129740);
  }

  v3 = logCategory__hmf_once_v71_129741;

  return v3;
}

uint64_t __41__HMDHomeNFCReaderKeyManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v71_129741;
  logCategory__hmf_once_v71_129741 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end