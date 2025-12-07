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
- (void)handleDoorLockAlarmEvent:(id)event forAccessory:(id)accessory flow:(id)flow;
- (void)handleDoorLockEventReport:(id)report forAccessory:(id)accessory flow:(id)flow;
- (void)handleLockOperationEvent:(id)event forAccessory:(id)accessory flow:(id)flow;
- (void)handleLockUserChangeEvent:(id)event forAccessory:(id)accessory flow:(id)flow;
- (void)handleResolveNotificationContextIdentifierMessage:(id)message;
- (void)resolveEncodedCharacteristicNotificationContext:(id)context accessoryUUID:(id)d completion:(id)completion;
- (void)resolveKeypadContextIdentifier:(id)identifier accessoryUUID:(id)d withCompletion:(id)completion;
- (void)sendDoorLockAlarmEventNotification:(id)notification accessory:(id)accessory flow:(id)flow;
- (void)sendLockOperationEventNotification:(id)notification userUniqueID:(id)d lockOperationType:(id)type lockOperationSource:(id)source fabricIndex:(id)index accessory:(id)accessory timestamp:(id)timestamp flow:(id)self0;
- (void)sendLockUserChangeEventNotification:(id)notification lockDataType:(unsigned __int8)type accessory:(id)accessory dataOperationType:(unsigned __int8)operationType fabricIndex:(id)index flow:(id)flow;
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
    v22[3] = &unk_278688680;
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
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find any user with NFC contextId: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result because home is nil", buf, 0xCu);
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
    v22[3] = &unk_278688680;
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
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find any user with HAP contextId: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result because home is nil", buf, 0xCu);
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
  v30 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeLockNotificationManager *)self home];
  v7 = home;
  if (home)
  {
    users = [home users];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__HMDHomeLockNotificationManager_contextResolutionResultFromAccessCode___block_invoke;
    v26[3] = &unk_278688680;
    v9 = codeCopy;
    v27 = v9;
    v10 = [users na_firstObjectPassingTest:v26];

    if (v10)
    {
      v11 = [HMDHomeLockNotificationContextResolutionResult alloc];
      uuid = [v10 uuid];
      v13 = [(HMDHomeLockNotificationContextResolutionResult *)v11 initWithUserUUID:uuid label:0 labelIdentifier:0];
    }

    else
    {
      labelsByAccessCode = [v7 labelsByAccessCode];
      uuid = [labelsByAccessCode objectForKeyedSubscript:v9];

      if (uuid)
      {
        labelIdentifiersByAccessCode = [v7 labelIdentifiersByAccessCode];
        v20 = [labelIdentifiersByAccessCode objectForKeyedSubscript:v9];

        v13 = [[HMDHomeLockNotificationContextResolutionResult alloc] initWithUserUUID:0 label:uuid labelIdentifier:v20];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Did not find any user or label with access code", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        uuid = 0;
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result from access code because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
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
    v20[3] = &unk_278678988;
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
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Can not resolve notification context identifier because accessCodeManager is nil", buf, 0xCu);
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
    v35[3] = &unk_2786862C0;
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
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Sending message: %@ to primary resident: %@ to resolve notification context identifier: %@ ", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Did not find primary resident to send message to resolve notification context identifier", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification context resolution result: %@ from resident for access code identifier: %@ with error: %@", buf, 0x2Au);

        v5 = v14;
      }

      objc_autoreleasePoolPop(v10);
      v17 = [*(a1 + 32) workQueue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_36;
      v29[3] = &unk_27868A7A0;
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode notification context result from data: %@ decodingError: %@", buf, 0x20u);

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
      v32[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_35;
      v32[3] = &unk_27868A7A0;
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing notification context result key in response payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_32;
    block[3] = &unk_278688B80;
    v37 = *(a1 + 48);
    dispatch_async(v23, block);

    v9 = v37;
  }
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_32(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_35(uint64_t a1)
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
    v17[3] = &unk_278689AB8;
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Can not resolve keypad contextId because primary resident supporting lock notification context is not present", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resolving keypad context identifier locally for access code identifier: %@ accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke_27;
      v29[3] = &unk_278678960;
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
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resolving keypad context identifier via resident for access code identifier: %@ accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke_28;
      v27[3] = &unk_278678960;
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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Can not resolve keypad contextId because home is nil", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
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
    v19[3] = &unk_278688680;
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
          v30[3] = &unk_278678960;
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
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Invalid source %ld present in notification context", buf, 0x16u);

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
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to decode notification context identifier from data:%@", buf, 0x16u);
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
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse notification context TLV from context:%@ error:%@", buf, 0x20u);
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling message: %@ to resolve notification context identifier", buf, 0x16u);
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
    v18[3] = &unk_278678938;
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received invalid parameters in message to resolve lock notification context for identifier: %@ accessoryUUID: %@", buf, 0x20u);
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Resolved notification context identifier: %@ to result: %@ with error: %@", buf, 0x2Au);
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
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Responding to resolve notification context identifier message: %@ with: %@", buf, 0x20u);

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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Responding to resolve notification context identifier message: %@ with: %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident is not available", &v13, 0xCu);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering for lock notifications messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v16 setRoles:{objc_msgSend(v16, "roles") | 4}];
    v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:5 remoteAccessRequired:0];
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
    dispatch_once(&logCategory__hmf_once_t30, &__block_literal_global_116982);
  }

  v3 = logCategory__hmf_once_v31;

  return v3;
}

void __45__HMDHomeLockNotificationManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v31;
  logCategory__hmf_once_v31 = v0;
}

- (void)sendLockUserChangeEventNotification:(id)notification lockDataType:(unsigned __int8)type accessory:(id)accessory dataOperationType:(unsigned __int8)operationType fabricIndex:(id)index flow:(id)flow
{
  operationTypeCopy = operationType;
  typeCopy = type;
  v48 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  accessoryCopy = accessory;
  indexCopy = index;
  flowCopy = flow;
  home = [accessoryCopy home];
  v19 = home;
  if (home)
  {
    if (notificationCopy)
    {
      users = [home users];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __134__HMDHomeLockNotificationManager_CHIP__sendLockUserChangeEventNotification_lockDataType_accessory_dataOperationType_fabricIndex_flow___block_invoke;
      v42[3] = &unk_278688680;
      v43 = notificationCopy;
      v21 = [users na_firstObjectPassingTest:v42];
    }

    else
    {
      v21 = 0;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
    [dictionary setObject:v28 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyLockDataType"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:operationTypeCopy];
    [dictionary setObject:v29 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyDataOperationType"];

    if (indexCopy)
    {
      v30 = [objc_opt_class() findEcosystemName:indexCopy];
      [dictionary setObject:v30 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyEcosystemName"];
    }

    v31 = HMFEncodedRootObject();
    [dictionary setObject:v31 forKeyedSubscript:*MEMORY[0x277D0F1C8]];

    users2 = [v19 users];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __134__HMDHomeLockNotificationManager_CHIP__sendLockUserChangeEventNotification_lockDataType_accessory_dataOperationType_fabricIndex_flow___block_invoke_2;
    v36[3] = &unk_27867C4C8;
    v36[4] = self;
    v37 = flowCopy;
    v38 = dictionary;
    v41 = operationTypeCopy;
    v39 = v21;
    v40 = accessoryCopy;
    v33 = v21;
    v34 = dictionary;
    [users2 na_each:v36];

    notificationCopy = v35;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v45 = v25;
      v46 = 2112;
      v47 = uUID;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error sending message for Matter Accessory Bulletin Notification, home is nil.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

uint64_t __134__HMDHomeLockNotificationManager_CHIP__sendLockUserChangeEventNotification_lockDataType_accessory_dataOperationType_fabricIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIDForAccessories];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

void __134__HMDHomeLockNotificationManager_CHIP__sendLockUserChangeEventNotification_lockDataType_accessory_dataOperationType_fabricIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isAccessCurrentlyAllowedBySchedule])
  {
    v4 = [*(a1 + 48) mutableCopy];
    if (*(a1 + 72) || [v3 isAdministrator])
    {
      v5 = *(a1 + 56);
      if (v5 && ([v5 account], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "account"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v8, "hmf_isEqualToUUID:", v11), v11, v10, v9, v8, v7, v6, v12))
      {
        [v4 setObject:&unk_283E73760 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyIsAffectedUser"];
      }

      else if (*(a1 + 72) == 1)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [*(a1 + 40) UUID];
          *buf = 138543618;
          v48 = v21;
          v49 = 2112;
          v50 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not inserting lock user change bulletin because dataOperationType is of type MTRDoorLockDataOperationTypeClear and user is not the affected user.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        goto LABEL_22;
      }

      v23 = [v3 accountHandle];
      if (v23)
      {
        v24 = [HMDRemoteAccountMessageDestination alloc];
        v25 = [*(a1 + 64) messageTargetUUID];
        v26 = [(HMDRemoteAccountMessageDestination *)v24 initWithTarget:v25 handle:v23 multicast:1];

        v46 = v4;
        v27 = [objc_alloc(MEMORY[0x277D0F818]) initWithName:@"HMDCharacteristicEventReportMessage" destination:v26 payload:v4];
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 32);
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          [*(a1 + 40) UUID];
          v32 = v43 = v23;
          v33 = [*(a1 + 64) messageTargetUUID];
          [v3 account];
          v34 = v45 = v26;
          [v34 identifier];
          v35 = v44 = v28;
          *buf = 138544386;
          v48 = v31;
          v49 = 2112;
          v50 = v32;
          v51 = 2112;
          v52 = v33;
          v53 = 2112;
          v54 = v35;
          v55 = 2112;
          v56 = v46;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending HMDCharacteristicEventReportMessage to target=%@ for account=%@ with payload=%@", buf, 0x34u);

          v28 = v44;
          v26 = v45;

          v23 = v43;
        }

        objc_autoreleasePoolPop(v28);
        v36 = [*(a1 + 64) msgDispatcher];
        [v36 sendMessage:v27];

        v4 = v46;
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = *(a1 + 32);
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [*(a1 + 40) UUID];
          v42 = [v3 shortDescription];
          *buf = 138543874;
          v48 = v40;
          v49 = 2112;
          v50 = v41;
          v51 = 2112;
          v52 = v42;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot send lock user change event notification because no account handle was found for user: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 40) UUID];
    *buf = 138543618;
    v48 = v16;
    v49 = 2112;
    v50 = v17;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot send the notification as the user is outside schedule", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_23:
}

- (void)sendDoorLockAlarmEventNotification:(id)notification accessory:(id)accessory flow:(id)flow
{
  v49 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  accessoryCopy = accessory;
  flowCopy = flow;
  home = [accessoryCopy home];
  if (home)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:notificationCopy forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyAlarmCode"];
    v13 = HMFEncodedRootObject();
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F1C8]];

    v14 = [accessoryCopy findCharacteristicType:*MEMORY[0x277CCF838] forServiceType:*MEMORY[0x277CD0EB0]];
    if (v14)
    {
      accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];
      v42 = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      [accessoryBulletinNotificationManager characteristicsByDestinationForCharacteristics:v16];
      selfCopy = self;
      v17 = home;
      v18 = v14;
      v19 = flowCopy;
      v21 = v20 = notificationCopy;
      allKeys = [v21 allKeys];

      notificationCopy = v20;
      flowCopy = v19;
      v14 = v18;
      home = v17;

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __90__HMDHomeLockNotificationManager_CHIP__sendDoorLockAlarmEventNotification_accessory_flow___block_invoke;
      v36[3] = &unk_27867C4A0;
      v37 = accessoryCopy;
      v38 = dictionary;
      v39 = v17;
      v40 = selfCopy;
      v41 = flowCopy;
      [allKeys na_each:v36];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v31 = v35 = v28;
        [accessoryCopy uuid];
        *buf = 138543874;
        v44 = v33;
        v45 = 2112;
        v46 = v31;
        v48 = v47 = 2112;
        v32 = v48;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] There is no HMCharacteristicTypeCurrentLockMechanismState characteristic on this accessory %@", buf, 0x20u);

        v28 = v35;
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v44 = v26;
      v45 = 2112;
      v46 = uUID;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error sending message for Matter Accessory Bulletin Notification, home is nil.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }
}

void __90__HMDHomeLockNotificationManager_CHIP__sendDoorLockAlarmEventNotification_accessory_flow___block_invoke(id *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDDeviceHandle deviceHandleForDestination:v3];
  v5 = +[HMDAccountRegistry sharedRegistry];
  v6 = [v5 deviceForHandle:v4];

  v7 = [HMDRemoteDeviceMessageDestination alloc];
  v8 = [a1[4] messageTargetUUID];
  v9 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:v8 device:v6];

  v10 = [HMDRemoteMessage alloc];
  v11 = objc_msgSend_copy(a1[5]);
  v12 = [(HMDRemoteMessage *)v10 initWithName:@"HMDCharacteristicEventReportMessage" destination:v9 payload:v11];

  v13 = [a1[6] primaryResident];
  v14 = [v13 device];
  v15 = [v14 isEqual:v6];

  v16 = objc_autoreleasePoolPush();
  v17 = a1[7];
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      [a1[8] UUID];
      v21 = v31 = v4;
      v22 = a1[5];
      *buf = 138543874;
      v34 = v20;
      v35 = 2112;
      v36 = v21;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling handleCharacteristicEventReportMessage (Showing notification on THIS Apple TV) with payload=%@", buf, 0x20u);

      v4 = v31;
    }

    objc_autoreleasePoolPop(v16);
    [a1[4] handleCharacteristicEventReportMessage:v12];
  }

  else
  {
    v32 = v4;
    if (v19)
    {
      v23 = HMFGetLogIdentifier();
      [a1[8] UUID];
      v24 = v29 = v16;
      v25 = [a1[4] messageTargetUUID];
      [v6 identifier];
      v26 = v30 = v3;
      v27 = a1[5];
      *buf = 138544386;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = v26;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending HMDCharacteristicEventReportMessage to target=%@ for device=%@ with payload=%@", buf, 0x34u);

      v3 = v30;
      v16 = v29;
    }

    objc_autoreleasePoolPop(v16);
    v28 = [a1[4] msgDispatcher];
    [v28 sendMessage:v12];

    v4 = v32;
  }
}

- (void)sendLockOperationEventNotification:(id)notification userUniqueID:(id)d lockOperationType:(id)type lockOperationSource:(id)source fabricIndex:(id)index accessory:(id)accessory timestamp:(id)timestamp flow:(id)self0
{
  v125 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dCopy = d;
  typeCopy = type;
  sourceCopy = source;
  indexCopy = index;
  accessoryCopy = accessory;
  timestampCopy = timestamp;
  flowCopy = flow;
  v94 = accessoryCopy;
  home = [accessoryCopy home];
  if (home)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:typeCopy forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyOperationType"];
    v21 = HMFEncodedRootObject();
    v91 = dictionary;
    [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277D0F1C8]];

    selfCopy6 = self;
    if ([sourceCopy isEqualToNumber:&unk_283E73748])
    {
      if (indexCopy)
      {
        v23 = [objc_opt_class() findEcosystemName:indexCopy];
        [dictionary setObject:v23 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyEcosystemName"];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          [flowCopy UUID];
          v37 = v36 = home;
          *buf = 138543874;
          v110 = v35;
          v111 = 2112;
          v112 = v37;
          v113 = 2112;
          v114 = sourceCopy;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Lock Operation Source = %@, which is Remote, and fabric index is null. This is an error (most likely with the lock firmware). The fabric index should never be null when the operation source is Remote, according to the Matter spec.", buf, 0x20u);

          home = v36;
        }

        objc_autoreleasePoolPop(v32);
        indexCopy = 0;
      }
    }

    v90 = indexCopy;
    if (notificationCopy)
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v42 = v41 = flowCopy;
        [v41 UUID];
        v88 = selfCopy6;
        v44 = v43 = home;
        uuid = [notificationCopy uuid];
        *buf = 138543874;
        v110 = v42;
        v111 = 2112;
        v112 = v44;
        v113 = 2112;
        v114 = uuid;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Matched user uuid=%@", buf, 0x20u);

        home = v43;
        selfCopy6 = v88;

        flowCopy = v41;
      }
    }

    else
    {
      if (dCopy)
      {
        v47 = [home accessCodeForMatterUserWithUserUniqueID:?];
        if ([v47 length])
        {
          labelsByAccessCode = [home labelsByAccessCode];
          v49 = [labelsByAccessCode objectForKeyedSubscript:v47];

          labelIdentifiersByAccessCode = [home labelIdentifiersByAccessCode];
          v46 = [labelIdentifiersByAccessCode objectForKeyedSubscript:v47];

          v51 = objc_autoreleasePoolPush();
          v52 = selfCopy6;
          v53 = HMFGetOSLogHandle();
          v89 = v49;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            [flowCopy UUID];
            v55 = v86 = v51;
            *buf = 138545155;
            v110 = v54;
            v111 = 2112;
            v112 = v55;
            v113 = 2160;
            v114 = 1752392040;
            v115 = 2112;
            v116 = dCopy;
            v117 = 2113;
            v118 = v47;
            v119 = 2113;
            v120 = v49;
            v121 = 2160;
            v122 = 1752392040;
            v123 = 2112;
            v124 = v46;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Matched userUniqueID %{mask.hash}@ to guest access code %{private}@ ('%{private}@', %{mask.hash}@)", buf, 0x52u);

            v51 = v86;
          }
        }

        else
        {
          v51 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v62 = v61 = v51;
            uUID = [flowCopy UUID];
            *buf = 138544130;
            v110 = v62;
            v111 = 2112;
            v112 = uUID;
            v113 = 2160;
            v114 = 1752392040;
            v115 = 2112;
            v116 = dCopy;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not match userUniqueID %{mask.hash}@ to any user", buf, 0x2Au);

            v51 = v61;
          }

          v46 = 0;
          v89 = 0;
        }

        objc_autoreleasePoolPop(v51);
        goto LABEL_25;
      }

      v38 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v57 = home;
        v59 = v58 = flowCopy;
        *buf = 138543618;
        v110 = v56;
        v111 = 2112;
        v112 = v59;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No user or userUniqueID to match to.", buf, 0x16u);

        flowCopy = v58;
        home = v57;
        selfCopy6 = self;
      }
    }

    objc_autoreleasePoolPop(v38);
    v46 = 0;
    v89 = 0;
LABEL_25:
    v64 = MEMORY[0x277CBEB38];
    v107[0] = @"HMDAccessoryMatterLockOperationTypeNotificationKey";
    v107[1] = @"HMDAccessoryMatterLockOperationSourceNotificationKey";
    v108[0] = typeCopy;
    v108[1] = sourceCopy;
    v107[2] = @"HMDAccessoryMatterLockOperationDateNotificationKey";
    v108[2] = timestampCopy;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:{3, v86}];
    v66 = [v64 dictionaryWithDictionary:v65];

    if (notificationCopy)
    {
      uuid2 = [notificationCopy uuid];
      [v66 setObject:uuid2 forKeyedSubscript:@"HMDAccessoryMatterLockUserUUIDNotificationKey"];
    }

    else if (v46)
    {
      [v66 setObject:v46 forKeyedSubscript:@"HMDAccessoryMatterLockLabelIdentifierNotificationKey"];
    }

    v68 = objc_msgSend_copy(v66);
    logAndPostNotification(@"HMDAccessoryMatterLockStateChangedNotification", v94, v68);

    v69 = [v94 findCharacteristicType:*MEMORY[0x277CCF838] forServiceType:*MEMORY[0x277CD0EB0]];
    if (v69)
    {
      accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];
      v106 = v69;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
      [accessoryBulletinNotificationManager characteristicsByDestinationForCharacteristics:v71];
      v72 = v46;
      v73 = selfCopy6;
      v74 = home;
      v76 = v75 = flowCopy;
      allKeys = [v76 allKeys];

      flowCopy = v75;
      home = v74;

      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke;
      v98[3] = &unk_27867C478;
      v99 = notificationCopy;
      v78 = v91;
      v100 = v91;
      v101 = v74;
      v79 = v89;
      v102 = v89;
      v103 = v94;
      v104 = v73;
      v46 = v72;
      v105 = flowCopy;
      [allKeys na_each:v98];

      v31 = dCopy;
      v24 = v90;
    }

    else
    {
      v87 = home;
      v80 = objc_autoreleasePoolPush();
      v81 = selfCopy6;
      v82 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        uuid3 = [v94 uuid];
        *buf = 138543874;
        v110 = v83;
        v111 = 2112;
        v112 = uUID2;
        v113 = 2112;
        v114 = uuid3;
        _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] There is no HMCharacteristicTypeCurrentLockMechanismState characteristic on this accessory %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v80);
      v78 = v91;
      v31 = dCopy;
      v79 = v89;
      v24 = v90;
      home = v87;
    }

    goto LABEL_35;
  }

  v24 = indexCopy;
  v25 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    [flowCopy UUID];
    v30 = v29 = flowCopy;
    *buf = 138543618;
    v110 = v28;
    v111 = 2112;
    v112 = v30;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error sending message for Matter Accessory Bulletin Notification, home is nil.", buf, 0x16u);

    flowCopy = v29;
    home = 0;
  }

  objc_autoreleasePoolPop(v25);
  v31 = dCopy;
LABEL_35:
}

void __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDDeviceHandle deviceHandleForDestination:v3];
  v5 = +[HMDAccountRegistry sharedRegistry];
  v49 = v4;
  v6 = [v5 deviceForHandle:v4];

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 account];
    v9 = [v8 identifier];
    v10 = [v9 identifier];
    v11 = [v6 account];
    v12 = [v11 identifier];
    v13 = [v12 identifier];
    if ([v10 hmf_isEqualToUUID:v13])
    {
      [v6 productInfo];
      v15 = v14 = v6;
      v45 = [v15 productClass];

      v6 = v14;
      if (v45 != 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v16 = [*(a1 + 40) mutableCopy];
  v17 = [*(a1 + 48) users];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke_2;
  v50[3] = &unk_278688680;
  v18 = v6;
  v51 = v18;
  v19 = [v17 na_firstObjectPassingTest:v50];

  v20 = *(a1 + 32);
  v47 = v6;
  v48 = v3;
  if (v20 && (([v20 isOwner] & 1) != 0 || objc_msgSend(v19, "isAdministrator")))
  {
    v21 = [*(a1 + 32) uuid];
    v22 = [v21 UUIDString];
    [v16 setObject:v22 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyUserUUID"];
  }

  else if (*(a1 + 56) && [v19 isAdministrator])
  {
    [v16 setObject:*(a1 + 56) forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyGuestName"];
  }

  v23 = [HMDRemoteDeviceMessageDestination alloc];
  v24 = [*(a1 + 64) messageTargetUUID];
  v25 = [(HMDRemoteDeviceMessageDestination *)v23 initWithTarget:v24 device:v18];

  v26 = [HMDRemoteMessage alloc];
  v27 = objc_msgSend_copy(v16);
  v28 = [(HMDRemoteMessage *)v26 initWithName:@"HMDCharacteristicEventReportMessage" destination:v25 payload:v27];

  v29 = [*(a1 + 48) primaryResident];
  v30 = [v29 device];
  v31 = [v30 isEqual:v18];

  v32 = objc_autoreleasePoolPush();
  v33 = *(a1 + 72);
  v34 = HMFGetOSLogHandle();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
  if (v31)
  {
    if (v35)
    {
      v36 = HMFGetLogIdentifier();
      [*(a1 + 80) UUID];
      v38 = v37 = v19;
      *buf = 138543874;
      v53 = v36;
      v54 = 2112;
      v55 = v38;
      v56 = 2112;
      v57 = v16;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling handleCharacteristicEventReportMessage (Showing notification on THIS Apple TV) with payload=%@", buf, 0x20u);

      v19 = v37;
    }

    objc_autoreleasePoolPop(v32);
    [*(a1 + 64) handleCharacteristicEventReportMessage:v28];
  }

  else
  {
    if (v35)
    {
      HMFGetLogIdentifier();
      v39 = v46 = v16;
      v40 = [*(a1 + 80) UUID];
      [*(a1 + 64) messageTargetUUID];
      v41 = v44 = v19;
      v42 = [v18 identifier];
      *buf = 138544386;
      v53 = v39;
      v54 = 2112;
      v55 = v40;
      v56 = 2112;
      v57 = v41;
      v58 = 2112;
      v59 = v42;
      v60 = 2112;
      v61 = v46;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending HMDCharacteristicEventReportMessage to target=%@ for device=%@ with payload=%@", buf, 0x34u);

      v19 = v44;
      v16 = v46;
    }

    objc_autoreleasePoolPop(v32);
    v43 = [*(a1 + 64) msgDispatcher];
    [v43 sendMessage:v28];
  }

  v6 = v47;
  v3 = v48;
LABEL_21:
}

uint64_t __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 identifier];
  v5 = [v4 identifier];
  v6 = [*(a1 + 32) account];
  v7 = [v6 identifier];
  v8 = [v7 identifier];
  v9 = [v5 hmf_isEqualToUUID:v8];

  return v9;
}

- (void)handleLockUserChangeEvent:(id)event forAccessory:(id)accessory flow:(id)flow
{
  v44 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accessoryCopy = accessory;
  flowCopy = flow;
  value = [eventCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = value;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    dataOperationType = [v13 dataOperationType];
    integerValue = [dataOperationType integerValue];

    if (integerValue != 2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      lockDataType = [v13 lockDataType];
      integerValue2 = [lockDataType integerValue];

      v43 = integerValue2;
      dataOperationType2 = [v13 dataOperationType];
      LOBYTE(lockDataType) = [dataOperationType2 integerValue];

      dataIndex = [v13 dataIndex];
      v27 = [dataIndex isEqualToNumber:&unk_283E73730];

      v28 = objc_alloc(MEMORY[0x277D0F7A8]);
      workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
      v30 = [v28 initWithQueue:workQueue];

      chipAccessoryServer = [accessoryCopy chipAccessoryServer];
      v32 = [chipAccessoryServer createDoorLockClusterObjectWithFlow:flowCopy];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke;
      v34[3] = &unk_27867C450;
      v35 = v13;
      selfCopy = self;
      v37 = flowCopy;
      v39 = buf;
      v40 = v27;
      v38 = accessoryCopy;
      v41 = lockDataType;
      v33 = [v32 inContext:v30 then:v34 orRecover:&__block_literal_global_163604];

      _Block_object_dispose(buf, 8);
      goto LABEL_13;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = uUID;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not inserting lock user change bulletin because dataOperationType is not of type MTRDoorLockDataOperationTypeClear or MTRDoorLockDataOperationTypeAdd (we are not clearing or adding the credential, we are modifying it).", buf, 0x16u);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = uUID2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot insert lock user change bulletin because eventReport.value is not a MTRDoorLockClusterLockUserChangeEvent.", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v16);
LABEL_13:
}

uint64_t __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchCurrentFabricIndex];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_2;
  v25[3] = &unk_27867C400;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v26 = v5;
  v27 = v6;
  v8 = v7;
  v9 = *(a1 + 64);
  v28 = v8;
  v30 = v9;
  v31 = *(a1 + 72);
  v10 = v3;
  v29 = v10;
  v11 = [v4 then:v25];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_99;
  v20[3] = &unk_27867C428;
  v23 = *(a1 + 64);
  v19 = *(a1 + 40);
  v12 = *(&v19 + 1);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v21 = v19;
  v22 = v15;
  v24 = *(a1 + 72);
  v16 = [v11 then:v20];
  if (v16)
  {
    v17 = v16;

    return 3;
  }

  else
  {
    _HMFPreconditionFailure();
    return __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_100();
  }
}

uint64_t __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) fabricIndex];
  v5 = [v4 isEqualToNumber:v3];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v27 = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v11 = "%{public}@[Flow: %@] Not inserting lock user change bulletin because the user change was originated by our fabric.";
LABEL_15:
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v11, &v27, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);
  v13 = v12 > 7;
  v14 = (1 << v12) & 0xC1;
  if (v13 || v14 == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v27 = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v11 = "%{public}@[Flow: %@] Not inserting lock user change bulletin because lockDataType is not of type MTRDoorLockLockDataTypePIN or MTRDoorLockLockDataTypeRFID (this event is for something other than the pin code or TTU credential).";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (*(a1 + 72) == 1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v27 = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v11 = "%{public}@[Flow: %@] Not inserting lock user change bulletin because allSlotsCleared.";
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v6);
    v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v22 = 2;
    goto LABEL_20;
  }

  v16 = *(a1 + 56);
  v17 = [*(a1 + 32) userIndex];
  v18 = [v17 integerValue];
  v19 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v20 = [v16 getUserAtIndex:v18 flow:v19];
  if (!v20)
  {
    _HMFPreconditionFailure();
  }

  v21 = v20;

  v22 = 3;
LABEL_20:

  return v22;
}

uint64_t __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_99(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userUniqueID];
  v5 = *(*(a1 + 64) + 8);
  if (!*(v5 + 24))
  {
    *(v5 + 24) = 7;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    [*(a1 + 40) UUID];
    v26 = v28 = v3;
    [*(a1 + 48) uuid];
    v9 = v27 = v7;
    v10 = [*(a1 + 56) lockDataType];
    v11 = [*(a1 + 56) dataOperationType];
    [*(a1 + 56) operationSource];
    v12 = v29 = v6;
    v13 = [*(a1 + 56) userIndex];
    v25 = [*(a1 + 56) fabricIndex];
    [*(a1 + 56) dataIndex];
    v15 = v14 = v4;
    v16 = *(a1 + 72);
    v17 = *(a1 + 56);
    *buf = 138546178;
    v32 = v30;
    v33 = 2112;
    v34 = v26;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = v14;
    v47 = 2112;
    v48 = v25;
    v49 = 2112;
    v50 = v15;
    v51 = 1024;
    v52 = v16;
    v53 = 2112;
    v54 = v17;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockUserChange Event for accessory=%@ lockDataType=%@ dataOperationType=%@ operationSource=%@ userIndex=%@ userUniqueID=%@ fabricIndex=%@ dataIndex=%@ allSlotsCleared=%d event=%@", buf, 0x76u);

    v4 = v14;
    v6 = v29;

    v7 = v27;
    v3 = v28;
  }

  objc_autoreleasePoolPop(v6);
  v18 = *(a1 + 32);
  v19 = [v3 userUniqueID];
  v20 = *(*(*(a1 + 64) + 8) + 24);
  v21 = *(a1 + 73);
  v22 = *(a1 + 48);
  v23 = [*(a1 + 56) fabricIndex];
  [v18 sendLockUserChangeEventNotification:v19 lockDataType:v20 accessory:v22 dataOperationType:v21 fabricIndex:v23 flow:*(a1 + 40)];

  return 1;
}

- (void)handleLockOperationEvent:(id)event forAccessory:(id)accessory flow:(id)flow
{
  v50 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accessoryCopy = accessory;
  flowCopy = flow;
  value = [eventCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = value;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v47 = v20;
    v48 = 2112;
    v49 = uUID;
    v22 = "%{public}@[Flow: %@] Cannot insert lock operation bulletin because eventReport.value was not a MTRDoorLockClusterLockOperationEvent.";
LABEL_11:
    v23 = v19;
    v24 = OS_LOG_TYPE_ERROR;
    goto LABEL_12;
  }

  lockOperationType = [v13 lockOperationType];
  if (![lockOperationType integerValue])
  {

LABEL_15:
    operationSource = [v13 operationSource];
    if ([operationSource integerValue] == 7)
    {
      fabricIndex = [v13 fabricIndex];

      if (!fabricIndex)
      {
        v17 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v19 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v20 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v47 = v20;
        v48 = 2112;
        v49 = uUID;
        v22 = "%{public}@[Flow: %@] Cannot insert lock operation bulletin because the operation source is Remote but we have no fabric. This is likely a bug with the lock.";
        goto LABEL_11;
      }
    }

    else
    {
    }

    v27 = [MEMORY[0x277CBEAA8] now];
    v28 = objc_alloc(MEMORY[0x277D0F7A8]);
    workQueue = [(HMDHomeLockNotificationManager *)self workQueue];
    v34 = [v28 initWithQueue:workQueue];

    chipAccessoryServer = [accessoryCopy chipAccessoryServer];
    v30 = [chipAccessoryServer createDoorLockClusterObjectWithFlow:flowCopy];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke;
    v40[3] = &unk_27867C3D8;
    v41 = v13;
    selfCopy3 = self;
    v43 = flowCopy;
    v44 = accessoryCopy;
    v45 = v27;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_95;
    v35[3] = &unk_27867C3B0;
    v35[4] = self;
    v36 = v43;
    v37 = v44;
    v38 = v41;
    v39 = v45;
    v31 = v45;
    v32 = [v30 inContext:v34 then:v40 orRecover:v35];

    goto LABEL_21;
  }

  lockOperationType2 = [v13 lockOperationType];
  integerValue = [lockOperationType2 integerValue];

  if (integerValue == 1)
  {
    goto LABEL_15;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v47 = v20;
    v48 = 2112;
    v49 = uUID;
    v22 = "%{public}@[Flow: %@] Not inserting lock operation bulletin because lockOperationType is neither Lock or Unlock types.";
    v23 = v19;
    v24 = OS_LOG_TYPE_INFO;
LABEL_12:
    _os_log_impl(&dword_229538000, v23, v24, v22, buf, 0x16u);
  }

LABEL_13:

  objc_autoreleasePoolPop(v17);
LABEL_21:
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchCurrentFabricIndex];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_2;
  v36[3] = &unk_27867C338;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v8 = v3;
  v40 = v8;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_81;
  v34[3] = &unk_2786882F0;
  v9 = *(a1 + 48);
  v34[4] = *(a1 + 40);
  v35 = v9;
  v10 = [v4 then:v36 orRecover:v34];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_83;
  v30[3] = &unk_27867C388;
  v24 = *(a1 + 40);
  v11 = *(&v24 + 1);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v31 = v24;
  v32 = v14;
  v33 = *(a1 + 64);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_93;
  v26[3] = &unk_27867C3B0;
  v25 = *(a1 + 40);
  v15 = *(&v25 + 1);
  v16 = *(a1 + 56);
  v17 = *(a1 + 32);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v27 = v25;
  v28 = v18;
  v29 = *(a1 + 64);
  v19 = [v10 then:v30 orRecover:v26];
  if (v19)
  {
    v20 = v19;

    return 3;
  }

  else
  {
    v22 = _HMFPreconditionFailure();
    return __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_95(v22, v23);
  }
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_95(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    *buf = 138543618;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to retrieve HMMTRSyncClusterDoorLock, so we cannot associate this LockOperation event with a user or our fabric. Posting bulletin without user attribution.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 40) UUID];
    [*(a1 + 48) uuid];
    v14 = v26 = v3;
    v15 = [*(a1 + 56) lockOperationType];
    v16 = [*(a1 + 56) operationSource];
    [*(a1 + 56) userIndex];
    v17 = v25 = v9;
    v18 = [*(a1 + 56) fabricIndex];
    v19 = *(a1 + 56);
    *buf = 138545154;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    v37 = 2112;
    v38 = v17;
    v39 = 2112;
    v40 = v18;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockOperation Event for accessory=%@ operationType=%@ operationSource=%@ userIndex=%@ userUniqueID=nil fabricIndex=%@ event=%@", buf, 0x52u);

    v9 = v25;
    v3 = v26;
  }

  objc_autoreleasePoolPop(v9);
  v20 = *(a1 + 32);
  v21 = [*(a1 + 56) lockOperationType];
  v22 = [*(a1 + 56) operationSource];
  v23 = [*(a1 + 56) fabricIndex];
  [v20 sendLockOperationEventNotification:0 userUniqueID:0 lockOperationType:v21 lockOperationSource:v22 fabricIndex:v23 accessory:*(a1 + 48) timestamp:*(a1 + 64) flow:*(a1 + 40)];

  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) operationSource];
  if ([v4 integerValue] == 7)
  {
    v5 = [*(a1 + 32) fabricIndex];
    v6 = [v5 isEqualToNumber:v3];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 48) UUID];
        v21 = 138543618;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not inserting lock operation event bulletin because the lock operation event was originated by our fabric. We handle this path in HMDHome and throw HMFErrorCodeOperationCancelled here.", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
      }

      v19 = 2;
LABEL_14:

      goto LABEL_15;
    }
  }

  else
  {
  }

  v15 = [*(a1 + 32) userIndex];

  if (v15)
  {
    v16 = *(a1 + 56);
    v13 = [*(a1 + 32) userIndex];
    v17 = [v16 getUserAtIndex:objc_msgSend(v13 flow:{"integerValue"), *(a1 + 48)}];
    if (!v17)
    {
      _HMFPreconditionFailure();
    }

    v18 = v17;
    v19 = 3;

    goto LABEL_14;
  }

  v19 = 1;
LABEL_15:

  return v19;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_81(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch current fabric index, so we cannot associate this LockOperation event with our fabric. Posting bulletin regardless.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_83(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v3 = [v36 userUniqueID];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = [*(a1 + 48) userIndex];
    *buf = 138544130;
    v42 = v7;
    v43 = 2112;
    v44 = v8;
    v45 = 2112;
    v46 = v3;
    v47 = 2112;
    v48 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] UserUniqueID returned from getUserAtIndex is %@ for userIndex=%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v10 = [*(a1 + 56) home];
    v11 = [v10 users];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_84;
    v37[3] = &unk_27867C360;
    v12 = v3;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v15 = [v11 na_firstObjectPassingTest:v37];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    v19 = [*(a1 + 40) UUID];
    v20 = [*(a1 + 56) uuid];
    [*(a1 + 48) lockOperationType];
    v21 = v34 = v16;
    v22 = [*(a1 + 48) operationSource];
    v23 = [*(a1 + 48) userIndex];
    [v15 uuid];
    v24 = v32 = v17;
    [*(a1 + 48) fabricIndex];
    v25 = v33 = v15;
    v26 = *(a1 + 48);
    *buf = 138545666;
    v42 = v35;
    v43 = 2112;
    v44 = v19;
    v45 = 2112;
    v46 = v20;
    v47 = 2112;
    v48 = v21;
    v49 = 2112;
    v50 = v22;
    v51 = 2112;
    v52 = v23;
    v53 = 2112;
    v54 = v24;
    v55 = 2112;
    v56 = v3;
    v57 = 2112;
    v58 = v25;
    v59 = 2112;
    v60 = v26;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockOperation Event for accessory=%@ operationType=%@ operationSource=%@ userIndex=%@ userUUID=%@ userUniqueID=%@ fabricIndex=%@ event=%@", buf, 0x66u);

    v15 = v33;
    v17 = v32;

    v16 = v34;
  }

  objc_autoreleasePoolPop(v16);
  v27 = *(a1 + 32);
  v28 = [*(a1 + 48) lockOperationType];
  v29 = [*(a1 + 48) operationSource];
  v30 = [*(a1 + 48) fabricIndex];
  [v27 sendLockOperationEventNotification:v15 userUniqueID:v3 lockOperationType:v28 lockOperationSource:v29 fabricIndex:v30 accessory:*(a1 + 56) timestamp:*(a1 + 64) flow:*(a1 + 40)];

  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_93(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 code] != 12)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to retrieve MTRDoorLockClusterGetUserResponseParams, so we cannot associate this LockOperation event with a user. Posting bulletin without user attribution.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [*(a1 + 48) uuid];
      v15 = [*(a1 + 56) lockOperationType];
      [*(a1 + 56) operationSource];
      v16 = v25 = v3;
      v17 = [*(a1 + 56) userIndex];
      [*(a1 + 56) fabricIndex];
      v18 = v26 = v9;
      v19 = *(a1 + 56);
      *buf = 138545154;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v17;
      v39 = 2112;
      v40 = v18;
      v41 = 2112;
      v42 = v19;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockOperation Event for accessory=%@ operationType=%@ operationSource=%@ userIndex=%@ userUniqueID=nil fabricIndex=%@ event=%@", buf, 0x52u);

      v9 = v26;
      v3 = v25;
    }

    objc_autoreleasePoolPop(v9);
    v20 = *(a1 + 32);
    v21 = [*(a1 + 56) lockOperationType];
    v22 = [*(a1 + 56) operationSource];
    v23 = [*(a1 + 56) fabricIndex];
    [v20 sendLockOperationEventNotification:0 userUniqueID:0 lockOperationType:v21 lockOperationSource:v22 fabricIndex:v23 accessory:*(a1 + 48) timestamp:*(a1 + 64) flow:*(a1 + 40)];
  }

  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_84(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uniqueIDForAccessories];
  v5 = [v4 isEqualToNumber:*(a1 + 32)];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 48) UUID];
    v11 = *(a1 + 32);
    v12 = [v3 uuid];
    v13 = [v3 uniqueIDForAccessories];
    v14 = v13;
    v17 = 138544642;
    v15 = @"NO";
    v18 = v9;
    if (v5)
    {
      v15 = @"YES";
    }

    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Checking to see if userUniqueID=%@ matches for userUUID=%@ who has the uniqueIDForAccessories=%@... match found=%@", &v17, 0x3Eu);
  }

  objc_autoreleasePoolPop(v6);
  return v5;
}

- (void)handleDoorLockAlarmEvent:(id)event forAccessory:(id)accessory flow:(id)flow
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accessoryCopy = accessory;
  flowCopy = flow;
  value = [eventCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = value;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v29 = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = uUID;
      v22 = "%{public}@[Flow: %@] Cannot insert DoorLockAlarm event bulletin because event is nil for MTRDoorLockClusterDoorLockAlarmEvent.";
      v23 = v18;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    goto LABEL_15;
  }

  alarmCode = [v13 alarmCode];
  integerValue = [alarmCode integerValue];

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (integerValue)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v29 = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = uUID;
      v22 = "%{public}@[Flow: %@] Not inserting DoorLockAlarm event bulletin because alarmCode is not of type LockJammed.";
      v23 = v18;
      v24 = OS_LOG_TYPE_INFO;
LABEL_10:
      _os_log_impl(&dword_229538000, v23, v24, v22, &v29, 0x16u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v19)
  {
    v25 = HMFGetLogIdentifier();
    uUID2 = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    v29 = 138544130;
    v30 = v25;
    v31 = 2112;
    v32 = uUID2;
    v33 = 2112;
    v34 = uuid;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling DoorLockAlarm (Door Jammed) Event for accessory=%@ event=%@", &v29, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  alarmCode2 = [v13 alarmCode];
  [(HMDHomeLockNotificationManager *)selfCopy2 sendDoorLockAlarmEventNotification:alarmCode2 accessory:accessoryCopy flow:flowCopy];

LABEL_15:
}

- (void)handleDoorLockEventReport:(id)report forAccessory:(id)accessory flow:(id)flow
{
  v31 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  accessoryCopy = accessory;
  flowCopy = flow;
  path = [reportCopy path];
  event = [path event];
  unsignedIntValue = [event unsignedIntValue];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    v23 = 138544130;
    v24 = v17;
    v25 = 2112;
    v26 = uUID;
    v27 = 2112;
    v28 = uuid;
    v29 = 1024;
    v30 = unsignedIntValue;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling Matter event report for accessory=%@ eventID=%u", &v23, 0x26u);
  }

  objc_autoreleasePoolPop(v14);
  path2 = [reportCopy path];
  event2 = [path2 event];
  unsignedIntValue2 = [event2 unsignedIntValue];

  switch(unsignedIntValue2)
  {
    case 4:
      [(HMDHomeLockNotificationManager *)selfCopy handleLockUserChangeEvent:reportCopy forAccessory:accessoryCopy flow:flowCopy];
      break;
    case 2:
      [(HMDHomeLockNotificationManager *)selfCopy handleLockOperationEvent:reportCopy forAccessory:accessoryCopy flow:flowCopy];
      break;
    case 0:
      [(HMDHomeLockNotificationManager *)selfCopy handleDoorLockAlarmEvent:reportCopy forAccessory:accessoryCopy flow:flowCopy];
      break;
  }
}

@end