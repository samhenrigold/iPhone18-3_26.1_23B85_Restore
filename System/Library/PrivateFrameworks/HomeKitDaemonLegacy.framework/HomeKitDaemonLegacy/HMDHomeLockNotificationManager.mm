@interface HMDHomeLockNotificationManager
+ (id)logCategory;
- (BOOL)hasReachablePrimaryResidentSupportingLockNotificationContext;
- (BOOL)shouldResolveNotificationContextForCharacteristic:(id)characteristic;
- (HMDHome)home;
- (HMDHomeLockNotificationManager)initWithUUID:(id)d workQueue:(id)queue;
- (HMDHomeLockNotificationManager)initWithUUID:(id)d workQueue:(id)queue dataSource:(id)source;
- (id)contextResolutionResultFromAccessCode:(id)code;
- (id)contextResolutionResultFromHAPContextId:(id)id;
- (id)contextResolutionResultFromNFCContextId:(id)id;
- (id)displayNameForNotificationContextResolutionResult:(id)result;
- (id)logIdentifier;
- (void)_resolveKeypadContextIdentifier:(id)identifier accessoryUUID:(id)d completion:(id)completion;
- (void)_sendResolveLockNotificationContextIdentifierMessage:(id)message accessoryUUID:(id)d withCompletion:(id)completion;
- (void)configureWithHome:(id)home;
- (void)handleResolveNotificationContextIdentifierMessage:(id)message;
- (void)resolveEncodedCharacteristicNotificationContext:(id)context accessoryUUID:(id)d completion:(id)completion;
- (void)resolveKeypadContextIdentifier:(id)identifier accessoryUUID:(id)d withCompletion:(id)completion;
@end

@implementation HMDHomeLockNotificationManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  uuid = [(HMDHomeLockNotificationManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)contextResolutionResultFromNFCContextId:(id)id
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  home = [(HMDHomeLockNotificationManager *)self home];
  v6 = home;
  if (home)
  {
    users = [home users];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__HMDHomeLockNotificationManager_contextResolutionResultFromNFCContextId___block_invoke;
    v22[3] = &unk_27972E540;
    v8 = idCopy;
    v23 = v8;
    v9 = [users na_firstObjectPassingTest:v22];

    if (v9)
    {
      v10 = [HMDHomeLockNotificationContextResolutionResult alloc];
      uuid = [v9 uuid];
      v12 = [(HMDHomeLockNotificationContextResolutionResult *)v10 initWithUserUUID:uuid label:0 labelIdentifier:0];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find any user with NFC contextId: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = 0;
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
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

uint64_t __74__HMDHomeLockNotificationManager_contextResolutionResultFromNFCContextId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notificationContextNFCIdentifier];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (id)contextResolutionResultFromHAPContextId:(id)id
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  home = [(HMDHomeLockNotificationManager *)self home];
  v6 = home;
  if (home)
  {
    users = [home users];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__HMDHomeLockNotificationManager_contextResolutionResultFromHAPContextId___block_invoke;
    v22[3] = &unk_27972E540;
    v8 = idCopy;
    v23 = v8;
    v9 = [users na_firstObjectPassingTest:v22];

    if (v9)
    {
      v10 = [HMDHomeLockNotificationContextResolutionResult alloc];
      uuid = [v9 uuid];
      v12 = [(HMDHomeLockNotificationContextResolutionResult *)v10 initWithUserUUID:uuid label:0 labelIdentifier:0];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find any user with HAP contextId: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = 0;
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
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

uint64_t __74__HMDHomeLockNotificationManager_contextResolutionResultFromHAPContextId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notificationContextHAPIdentifier];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (id)contextResolutionResultFromAccessCode:(id)code
{
  v31 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeLockNotificationManager *)self home];
  v7 = home;
  if (home)
  {
    users = [home users];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__HMDHomeLockNotificationManager_contextResolutionResultFromAccessCode___block_invoke;
    v27[3] = &unk_27972E540;
    v9 = codeCopy;
    v28 = v9;
    v10 = [users na_firstObjectPassingTest:v27];

    if (v10)
    {
      v11 = [HMDHomeLockNotificationContextResolutionResult alloc];
      uuid = [v10 uuid];
      v13 = v11;
      v14 = uuid;
      v15 = 0;
    }

    else
    {
      labelsByAccessCode = [v7 labelsByAccessCode];
      uuid = [labelsByAccessCode objectForKeyedSubscript:v9];

      if (!uuid)
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Did not find any user or label with access code", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        uuid = 0;
        v20 = 0;
        goto LABEL_10;
      }

      v13 = [HMDHomeLockNotificationContextResolutionResult alloc];
      v14 = 0;
      v15 = uuid;
    }

    v20 = [(HMDHomeLockNotificationContextResolutionResult *)v13 initWithUserUUID:v14 label:v15 labelIdentifier:0];
LABEL_10:

    goto LABEL_11;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result from access code because home is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_11:

  return v20;
}

uint64_t __72__HMDHomeLockNotificationManager_contextResolutionResultFromAccessCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_resolveKeypadContextIdentifier:(id)identifier accessoryUUID:(id)d completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeLockNotificationManager *)self home];
  accessCodeManager = [home accessCodeManager];
  if (accessCodeManager)
  {
    untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__HMDHomeLockNotificationManager__resolveKeypadContextIdentifier_accessoryUUID_completion___block_invoke;
    v20[3] = &unk_279728A58;
    v20[4] = self;
    v21 = completionCopy;
    [accessCodeManager fetchAccessCodeForIdentifier:identifierCopy accessoryUUID:dCopy flow:untrackedPlaceholderFlow completion:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Can not resolve notification context identifier because accessCodeManager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

void __91__HMDHomeLockNotificationManager__resolveKeypadContextIdentifier_accessoryUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 contextResolutionResultFromAccessCode:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)_sendResolveLockNotificationContextIdentifierMessage:(id)message accessoryUUID:(id)d withCompletion:(id)completion
{
  v47[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  completionCopy = completion;
  workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeLockNotificationManager *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  if (primaryResidentDevice)
  {
    v15 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDHomeLockNotificationManager *)self messageTargetUUID];
    device = [primaryResidentDevice device];
    v18 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:messageTargetUUID device:device];

    v47[0] = messageCopy;
    v46[0] = @"HMDHomeResolveLockNotificationContextIdentifierMessageAccessCodeIdentifierKey";
    v46[1] = @"HMDHomeResolveLockNotificationContextIdentifierMessage";
    v34 = dCopy;
    uUIDString = [dCopy UUIDString];
    v47[1] = uUIDString;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

    v21 = [[HMDRemoteMessage alloc] initWithName:@"HMDHomeResolveLockNotificationContextIdentifierMessage" destination:v18 payload:v20 type:0 timeout:1 secure:0.0];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke;
    v35[3] = &unk_279732AE8;
    v35[4] = self;
    v33 = completionCopy;
    v37 = completionCopy;
    v22 = messageCopy;
    v23 = messageCopy;
    v36 = v23;
    [(HMDRemoteMessage *)v21 setResponseHandler:v35];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138544130;
      v39 = v27;
      v40 = 2112;
      v41 = v21;
      v42 = 2112;
      v43 = primaryResidentDevice;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Sending message: %@ to primary resident: %@ to resolve notification context identifier: %@ ", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    msgDispatcher = [(HMDHomeLockNotificationManager *)selfCopy msgDispatcher];
    [msgDispatcher sendMessage:v21];

    messageCopy = v22;
    completionCopy = v33;
    dCopy = v34;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Did not find primary resident to send message to resolve notification context identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMDHomeLockNotificationContextResolutionResultKey"];
  if (v7)
  {
    v35 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v35];
    v9 = v35;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v15 = v14 = v5;
        v16 = *(a1 + 40);
        *buf = 138544130;
        v39 = v15;
        v40 = 2112;
        v41 = v8;
        v42 = 2112;
        v43 = v16;
        v44 = 2112;
        v45 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification context resolution result: %@ from resident for access code identifier: %@ with error: %@", buf, 0x2Au);

        v5 = v14;
      }

      objc_autoreleasePoolPop(v10);
      v17 = [*(a1 + 32) workQueue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_27;
      v29[3] = &unk_279735738;
      v31 = *(a1 + 48);
      v30 = v8;
      dispatch_async(v17, v29);

      v18 = v31;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v25 = v24 = v5;
        *buf = 138543874;
        v39 = v25;
        v40 = 2112;
        v41 = v7;
        v42 = 2112;
        v43 = v9;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode notification context result from data: %@ decodingError: %@", buf, 0x20u);

        v5 = v24;
      }

      objc_autoreleasePoolPop(v10);
      if (v9)
      {
        v46 = *MEMORY[0x277CCA7E8];
        v47[0] = v9;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      }

      else
      {
        v26 = 0;
      }

      v27 = [*(a1 + 32) workQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_26;
      v32[3] = &unk_279735738;
      v28 = *(a1 + 48);
      v33 = v26;
      v34 = v28;
      v18 = v26;
      dispatch_async(v27, v32);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v22;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing notification context result key in response payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_23;
    block[3] = &unk_2797348C0;
    v37 = *(a1 + 48);
    dispatch_async(v23, block);

    v9 = v37;
  }
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_26(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)resolveKeypadContextIdentifier:(id)identifier accessoryUUID:(id)d withCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  if ([(HMDHomeLockNotificationManager *)self hasReachablePrimaryResidentSupportingLockNotificationContext])
  {
    workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke;
    v17[3] = &unk_279734578;
    v17[4] = self;
    v20 = completionCopy;
    v18 = identifierCopy;
    v19 = dCopy;
    dispatch_async(workQueue, v17);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Can not resolve keypad contextId because primary resident supporting lock notification context is not present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

void __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isOwnerUser];
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v8)
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        *buf = 138543874;
        v32 = v9;
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Resolving keypad context identifier locally for access code identifier: %@ accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke_18;
      v29[3] = &unk_279728A30;
      v14 = *(a1 + 48);
      v30 = *(a1 + 56);
      [v12 _resolveKeypadContextIdentifier:v13 accessoryUUID:v14 completion:v29];
      v15 = v30;
    }

    else
    {
      if (v8)
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        *buf = 138543874;
        v32 = v21;
        v33 = 2112;
        v34 = v22;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Resolving keypad context identifier via resident for access code identifier: %@ accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke_19;
      v27[3] = &unk_279728A30;
      v26 = *(a1 + 48);
      v28 = *(a1 + 56);
      [v24 _sendResolveLockNotificationContextIdentifierMessage:v25 accessoryUUID:v26 withCompletion:v27];
      v15 = v28;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Can not resolve keypad contextId because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = *(a1 + 56);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    (*(v20 + 16))(v20, 0, v15);
  }
}

- (id)displayNameForNotificationContextResolutionResult:(id)result
{
  v25 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  home = [(HMDHomeLockNotificationManager *)self home];
  if (!home)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v13;
      v14 = "%{public}@Can not find display name because home is nil";
LABEL_10:
      v15 = v12;
      v16 = 12;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
    displayName = 0;
    goto LABEL_13;
  }

  if (![(HMDHomeLockNotificationManager *)self hasReachablePrimaryResidentSupportingLockNotificationContext])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v13;
      v14 = "%{public}@Can not find display name because primary resident supporting lock notification context is not present";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  userUUID = [resultCopy userUUID];

  if (userUUID)
  {
    users = [home users];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HMDHomeLockNotificationManager_displayNameForNotificationContextResolutionResult___block_invoke;
    v19[3] = &unk_27972E540;
    v20 = resultCopy;
    v8 = [users na_firstObjectPassingTest:v19];

    if (v8)
    {
      displayName = [v8 displayName];

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  label = [resultCopy label];

  if (!label)
  {
LABEL_19:
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v13;
    v23 = 2112;
    v24 = resultCopy;
    v14 = "%{public}@Did not find display name for notification context result: %@";
    v15 = v12;
    v16 = 22;
    goto LABEL_11;
  }

  displayName = [resultCopy label];
LABEL_13:

  return displayName;
}

uint64_t __84__HMDHomeLockNotificationManager_displayNameForNotificationContextResolutionResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) userUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)resolveEncodedCharacteristicNotificationContext:(id)context accessoryUUID:(id)d completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  v32 = 0;
  v11 = [MEMORY[0x277CFEA88] parsedFromData:contextCopy error:&v32];
  v12 = v32;
  if (v11)
  {
    contextIdentifier = [v11 contextIdentifier];
    value = [contextIdentifier value];

    if (value)
    {
      source = [v11 source];
      value2 = [source value];

      switch(value2)
      {
        case 1:
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __107__HMDHomeLockNotificationManager_resolveEncodedCharacteristicNotificationContext_accessoryUUID_completion___block_invoke;
          v30[3] = &unk_279728A30;
          v31 = completionCopy;
          [(HMDHomeLockNotificationManager *)self resolveKeypadContextIdentifier:value accessoryUUID:dCopy withCompletion:v30];
          v26 = v31;
          goto LABEL_20;
        case 2:
          v17 = [(HMDHomeLockNotificationManager *)self contextResolutionResultFromNFCContextId:value];
          goto LABEL_14;
        case 3:
          v17 = [(HMDHomeLockNotificationManager *)self contextResolutionResultFromHAPContextId:value];
LABEL_14:
          v26 = v17;
          (*(completionCopy + 2))(completionCopy, v17, 0);
LABEL_20:

          goto LABEL_21;
      }

      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v28 = v29 = v22;
        *buf = 138543618;
        v34 = v28;
        v35 = 2048;
        v36 = value2;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Invalid source %ld present in notification context", buf, 0x16u);

        v22 = v29;
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
        *buf = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = contextCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to decode notification context identifier from data:%@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(completionCopy + 2))(completionCopy, 0, v26);
    goto LABEL_20;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543874;
    v34 = v21;
    v35 = 2112;
    v36 = contextCopy;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse notification context TLV from context:%@ error:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  value = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(completionCopy + 2))(completionCopy, 0, value);
LABEL_21:
}

- (void)handleResolveNotificationContextIdentifierMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = messageCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling message: %@ to resolve notification context identifier", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [messageCopy numberForKey:@"HMDHomeResolveLockNotificationContextIdentifierMessageAccessCodeIdentifierKey"];
  v11 = [messageCopy uuidForKey:@"HMDHomeResolveLockNotificationContextIdentifierMessage"];
  v12 = v11;
  if (v10 && v11)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __84__HMDHomeLockNotificationManager_handleResolveNotificationContextIdentifierMessage___block_invoke;
    v18[3] = &unk_279728A08;
    v18[4] = selfCopy;
    v19 = v10;
    v20 = messageCopy;
    [(HMDHomeLockNotificationManager *)selfCopy _resolveKeypadContextIdentifier:v19 accessoryUUID:v12 completion:v18];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v16;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received invalid parameters in message to resolve lock notification context for identifier: %@ accessoryUUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 userInfo:0];
    [messageCopy respondWithError:v17];
  }
}

void __84__HMDHomeLockNotificationManager_handleResolveNotificationContextIdentifierMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    *buf = 138544130;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Resolved notification context identifier: %@ to result: %@ with error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v28 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v28];
    v13 = v28;
    v14 = v13;
    if (v12)
    {
      v29 = @"HMDHomeLockNotificationContextResolutionResultKey";
      v30 = v12;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [*(a1 + 48) respondWithPayload:v15];
    }

    else
    {
      if (v13)
      {
        v31 = *MEMORY[0x277CCA7E8];
        v32 = v13;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      }

      else
      {
        v15 = 0;
      }

      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:v15];
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v25 = v27 = v22;
        v26 = *(a1 + 48);
        *buf = 138543874;
        v34 = v25;
        v35 = 2112;
        v36 = v26;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Responding to resolve notification context identifier message: %@ with: %@", buf, 0x20u);

        v22 = v27;
      }

      objc_autoreleasePoolPop(v22);
      [*(a1 + 48) respondWithError:v21];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:0];
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 48);
      *buf = 138543874;
      v34 = v19;
      v35 = 2112;
      v36 = v20;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Responding to resolve notification context identifier message: %@ with: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    [*(a1 + 48) respondWithError:v14];
  }
}

- (BOOL)shouldResolveNotificationContextForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  v5 = [type isEqualToString:*MEMORY[0x277CCF838]];

  if (v5 && ([characteristicCopy value], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "integerValue"), v6, v7 <= 1) && objc_msgSend(characteristicCopy, "supportsNotificationContext"))
  {
    notificationContext = [characteristicCopy notificationContext];
    v9 = notificationContext != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasReachablePrimaryResidentSupportingLockNotificationContext
{
  v15 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLockNotificationManager *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  if (primaryResidentDevice)
  {
    capabilities = [primaryResidentDevice capabilities];
    if ([capabilities supportsLockNotificationContext])
    {
      isReachable = [primaryResidentDevice isReachable];
    }

    else
    {
      isReachable = 0;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident is not available", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    isReachable = 0;
  }

  return isReachable;
}

- (void)configureWithHome:(id)home
{
  v25 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = homeCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeLockNotificationManager *)selfCopy setHome:homeCopy];
  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDHomeLockNotificationManager *)selfCopy setMsgDispatcher:msgDispatcher];

  dataSource = [(HMDHomeLockNotificationManager *)selfCopy dataSource];
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
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering for lock notifications messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v16 setRoles:{objc_msgSend(v16, "roles") | 4}];
    v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
    msgDispatcher2 = [(HMDHomeLockNotificationManager *)v13 msgDispatcher];
    v20[0] = v17;
    v20[1] = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [msgDispatcher2 registerForMessage:@"HMDHomeResolveLockNotificationContextIdentifierMessage" receiver:v13 policies:v19 selector:sel_handleResolveNotificationContextIdentifierMessage_];
  }
}

- (HMDHomeLockNotificationManager)initWithUUID:(id)d workQueue:(id)queue dataSource:(id)source
{
  dCopy = d;
  queueCopy = queue;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = HMDHomeLockNotificationManager;
  v11 = [(HMDHomeLockNotificationManager *)&v15 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(dCopy);
    uuid = v11->_uuid;
    v11->_uuid = v12;

    objc_storeStrong(&v11->_workQueue, queue);
    objc_storeStrong(&v11->_dataSource, source);
  }

  return v11;
}

- (HMDHomeLockNotificationManager)initWithUUID:(id)d workQueue:(id)queue
{
  queueCopy = queue;
  dCopy = d;
  v8 = objc_alloc_init(HMDHomeLockNotificationManagerDataSource);
  v9 = [(HMDHomeLockNotificationManager *)self initWithUUID:dCopy workQueue:queueCopy dataSource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30, &__block_literal_global_76803);
  }

  v3 = logCategory__hmf_once_v31;

  return v3;
}

uint64_t __45__HMDHomeLockNotificationManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v31;
  logCategory__hmf_once_v31 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end