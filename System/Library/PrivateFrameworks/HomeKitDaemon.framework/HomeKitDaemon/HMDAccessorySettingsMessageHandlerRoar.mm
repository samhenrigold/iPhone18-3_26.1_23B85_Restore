@interface HMDAccessorySettingsMessageHandlerRoar
- (void)relayReplaceConstraints:(id)constraints constraintIdsToRemove:(id)remove keyPath:(id)path destination:(id)destination completion:(id)completion;
- (void)relayUpdateValue:(id)value keyPath:(id)path destination:(id)destination completion:(id)completion;
@end

@implementation HMDAccessorySettingsMessageHandlerRoar

- (void)relayReplaceConstraints:(id)constraints constraintIdsToRemove:(id)remove keyPath:(id)path destination:(id)destination completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  removeCopy = remove;
  pathCopy = path;
  destinationCopy = destination;
  completionCopy = completion;
  v32 = constraintsCopy;
  if (destinationCopy)
  {
    v15 = [MEMORY[0x277CD1F58] _encodedConstraintsToAdd:constraintsCopy];
    v31 = [removeCopy na_map:&__block_literal_global_127746];
    v30 = [MEMORY[0x277CD1F58] _replaceConstraintsPayloadWithAdditions:v15 removals:v31 keyPath:pathCopy];
    v16 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDAccessorySettingsMessageHandler *)self messageTargetUUID];
    device = [destinationCopy device];
    v19 = [(HMDRemoteDeviceMessageDestination *)v16 initWithTarget:messageTargetUUID device:device];

    v20 = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CCED80] qualityOfService:25 destination:v19 messagePayload:v30];
    objc_initWeak(&location, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __119__HMDAccessorySettingsMessageHandlerRoar_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_2;
    v35[3] = &unk_278689728;
    objc_copyWeak(&v37, &location);
    v36 = completionCopy;
    [v20 setResponseHandler:v35];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v24;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Relaying key path targeted replace constraints message. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    messageDispatcher = [(HMDAccessorySettingsMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v20 completionHandler:0];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot send setting message as device is not known", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    (*(completionCopy + 2))(completionCopy, v15);
  }
}

void __119__HMDAccessorySettingsMessageHandlerRoar_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v6 = [WeakRetained workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __119__HMDAccessorySettingsMessageHandlerRoar_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_3;
    v7[3] = &unk_27868A7A0;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)relayUpdateValue:(id)value keyPath:(id)path destination:(id)destination completion:(id)completion
{
  v42[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  destinationCopy = destination;
  completionCopy = completion;
  if (destinationCopy)
  {
    v13 = *MEMORY[0x277CD0F88];
    v42[0] = pathCopy;
    v14 = *MEMORY[0x277CCEDA8];
    v41[0] = v13;
    v41[1] = v14;
    null = valueCopy;
    if (!valueCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v16 = encodeRootObject();
    v42[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

    if (!valueCopy)
    {
    }

    v18 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDAccessorySettingsMessageHandler *)self messageTargetUUID];
    device = [destinationCopy device];
    v21 = [(HMDRemoteDeviceMessageDestination *)v18 initWithTarget:messageTargetUUID device:device];

    v22 = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CCED98] qualityOfService:25 destination:v21 messagePayload:v17];
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke;
    v33[3] = &unk_278689728;
    objc_copyWeak(&v35, &location);
    v34 = completionCopy;
    [v22 setResponseHandler:v33];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v26;
      v39 = 2112;
      v40 = v22;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Relaying key path targeted update value message. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    messageDispatcher = [(HMDAccessorySettingsMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v22 completionHandler:0];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot send setting message as device is not known", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    (*(completionCopy + 2))(completionCopy, 0, 0, v17);
  }
}

void __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v7 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke_2;
    block[3] = &unk_278689F98;
    block[4] = v6;
    v9 = v4;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [v2 _decodeUpdateValueMessagePayload:v3 outValue:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) hmf_numberForKey:@"cv"];
    (*(v6 + 16))(v6, v5, [v7 unsignedIntegerValue], 0);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode response %@ of relayed key path targeted update value message.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v13 + 16))(v13, 0, 0, v7);
  }
}

@end