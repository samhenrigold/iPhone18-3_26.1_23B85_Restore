@interface HMDAppleMediaAccessoriesStateMessenger
+ (id)logCategory;
- (HMDAppleMediaAccessoriesStateMessenger)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher;
- (HMDAppleMediaAccessoriesStateMessengerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (id)logIdentifier;
- (id)relayMessageName:(id)name payload:(id)payload toAppleMediaAccessory:(id)accessory;
- (void)handleAppleMediaAccessoryModelIdentifierRequestMessage:(id)message;
- (void)registerForMessagesWithHome:(id)home;
- (void)sendModelIdentifierRequestMessageToAppleMediaAccessory:(id)accessory withAccessoryIdentifier:(id)identifier completion:(id)completion;
@end

@implementation HMDAppleMediaAccessoriesStateMessenger

- (HMDAppleMediaAccessoriesStateMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleAppleMediaAccessoryModelIdentifierRequestMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling apple media accessory model identifier request message: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload alloc] initWithPayload:messagePayload];
    if (v10)
    {
      delegate = [(HMDAppleMediaAccessoriesStateMessenger *)selfCopy delegate];
      if (delegate)
      {
        accessoryIdentifier = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)v10 accessoryIdentifier];
        [delegate appleMediaAccessoriesStateMessenger:selfCopy didReceiveModelIdentifierRequestMessage:messageCopy withAccessoryIdentifier:accessoryIdentifier];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v25 = 138543362;
          v26 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify delegate of model identifier request message due to no delegate", &v25, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        accessoryIdentifier = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        [messageCopy respondWithError:accessoryIdentifier];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = messagePayload;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get model identifier request payload from payload: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      delegate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:delegate];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = messageCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from model identifier request message: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [messageCopy respondWithError:v10];
  }
}

- (NSUUID)messageTargetUUID
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8218CC5D-C283-4FE6-9E57-848EF1092455"];
  v4 = MEMORY[0x277CCAD78];
  identifier = [(HMDAppleMediaAccessoriesStateMessenger *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];
  v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

  return v8;
}

- (id)logIdentifier
{
  identifier = [(HMDAppleMediaAccessoriesStateMessenger *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)relayMessageName:(id)name payload:(id)payload toAppleMediaAccessory:(id)accessory
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  payloadCopy = payload;
  accessoryCopy = accessory;
  v11 = objc_alloc_init(MEMORY[0x277D2C900]);
  device = [accessoryCopy device];
  if (device)
  {
    v13 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDAppleMediaAccessoriesStateMessenger *)self messageTargetUUID];
    v15 = [(HMDRemoteDeviceMessageDestination *)v13 initWithTarget:messageTargetUUID device:device];

    v27 = nameCopy;
    v16 = [HMDRemoteMessage secureMessageWithName:nameCopy qualityOfService:-1 destination:v15 messagePayload:payloadCopy];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __89__HMDAppleMediaAccessoriesStateMessenger_relayMessageName_payload_toAppleMediaAccessory___block_invoke;
    v28[3] = &unk_278689DC0;
    v29 = v11;
    [v16 setResponseHandler:v28];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = accessoryCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Relaying message: %@ to accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    messageDispatcher = [(HMDAppleMediaAccessoriesStateMessenger *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v16];

    nameCopy = v27;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138544130;
      v31 = v25;
      v32 = 2112;
      v33 = nameCopy;
      v34 = 2112;
      v35 = payloadCopy;
      v36 = 2112;
      v37 = accessoryCopy;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to get device to relay message name: %@ payload: %@ to apple media accessory: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [v11 finishWithError:v15];
  }

  return v11;
}

void __89__HMDAppleMediaAccessoriesStateMessenger_relayMessageName_payload_toAppleMediaAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) finishWithResult:v5];
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }

    v7 = v6;
    [*(a1 + 32) finishWithError:v6];
  }
}

- (void)sendModelIdentifierRequestMessageToAppleMediaAccessory:(id)accessory withAccessoryIdentifier:(id)identifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v14;
    v29 = 2112;
    v30 = accessoryCopy;
    v31 = 2112;
    v32 = identifierCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending model identifier request message to apple media accessory: %@ accessory identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload alloc] initWithAccessoryIdentifier:identifierCopy];
  v16 = +[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload messageName];
  payloadCopy = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)v15 payloadCopy];
  v18 = [(HMDAppleMediaAccessoriesStateMessenger *)selfCopy relayMessageName:v16 payload:payloadCopy toAppleMediaAccessory:accessoryCopy];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke;
  v25[3] = &unk_278689A68;
  v25[4] = selfCopy;
  v19 = completionCopy;
  v26 = v19;
  v20 = [v18 addFailureBlock:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke_14;
  v23[3] = &unk_278682CE8;
  v23[4] = selfCopy;
  v24 = v19;
  v21 = v19;
  v22 = [v18 addSuccessBlock:v23];
}

void __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Relay model identifier request payload completed with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

void __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke_14(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Relay model identifier request payload completed with response payload: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [[HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload alloc] initWithPayload:v3];
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 40);
    v11 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v8 modelIdentifier];
    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode model identifier response payload: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v16 + 16))(v16, v11, 0);
  }
}

- (void)registerForMessagesWithHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];
  messageDispatcher = [(HMDAppleMediaAccessoriesStateMessenger *)selfCopy messageDispatcher];
  v13 = +[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload messageName];
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [messageDispatcher registerForMessage:v13 receiver:selfCopy policies:v14 selector:sel_handleAppleMediaAccessoryModelIdentifierRequestMessage_];
}

- (HMDAppleMediaAccessoriesStateMessenger)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher
{
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = dispatcherCopy;
  if (!dispatcherCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoriesStateMessenger *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoriesStateMessenger;
  v10 = [(HMDAppleMediaAccessoriesStateMessenger *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    objc_storeStrong(&v11->_messageDispatcher, dispatcher);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_233387 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_233387, &__block_literal_global_233388);
  }

  v3 = logCategory__hmf_once_v8_233389;

  return v3;
}

void __53__HMDAppleMediaAccessoriesStateMessenger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_233389;
  logCategory__hmf_once_v8_233389 = v0;
}

@end