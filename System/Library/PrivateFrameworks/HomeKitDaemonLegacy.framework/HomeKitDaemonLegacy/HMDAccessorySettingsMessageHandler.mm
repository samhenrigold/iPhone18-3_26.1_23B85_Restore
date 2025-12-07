@interface HMDAccessorySettingsMessageHandler
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_decodeUpdateValueMessagePayload:(id)payload outValue:(id *)value;
- (BOOL)processReplaceConstraintMessage:(id)message outConstraintsToAdd:(id *)add outConstraintIdsToRemove:(id *)remove;
- (HMDAccessorySettingsMessageController)messageController;
- (HMDAccessorySettingsMessageHandler)initWithQueue:(id)queue delegate:(id)delegate;
- (NSUUID)messageTargetUUID;
- (void)_handleAddConstraint:(id)constraint;
- (void)_handleRemoveConstraint:(id)constraint;
- (void)_handleReplaceConstraints:(id)constraints;
- (void)_handleReplaceConstraintsForKeyPath:(id)path;
- (void)_handleSettingUpdateValue:(id)value;
- (void)_handleSettingUpdateValueByKeyPath:(id)path;
- (void)_handleUpdatedConstraints:(id)constraints;
- (void)notifyOfUpdatedValue:(id)value settingKeyPath:(id)path;
- (void)relayReplaceConstraints:(id)constraints constraintIdsToRemove:(id)remove keyPath:(id)path destination:(id)destination completion:(id)completion;
- (void)relayUpdateValue:(id)value keyPath:(id)path destination:(id)destination completion:(id)completion;
@end

@implementation HMDAccessorySettingsMessageHandler

- (HMDAccessorySettingsMessageController)messageController
{
  WeakRetained = objc_loadWeakRetained(&self->_messageController);

  return WeakRetained;
}

- (void)notifyOfUpdatedValue:(id)value settingKeyPath:(id)path
{
  v19[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v8 = MEMORY[0x277D0F848];
    v9 = *MEMORY[0x277CCED98];
    v18[0] = *MEMORY[0x277CCEDA8];
    v10 = encodeRootObject();
    v18[1] = *MEMORY[0x277CD0F88];
    v19[0] = v10;
    v19[1] = pathCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v12 = [v8 entitledMessageWithName:v9 messagePayload:v11];

    v13 = objc_alloc(MEMORY[0x277D0F820]);
    messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
    messageTargetUUID = [messageController messageTargetUUID];
    v16 = [v13 initWithTarget:messageTargetUUID];
    [v12 setDestination:v16];

    messageDispatcher = [(HMDAccessorySettingsMessageHandler *)self messageDispatcher];
    [messageDispatcher sendMessage:v12 completionHandler:0];
  }
}

- (void)relayReplaceConstraints:(id)constraints constraintIdsToRemove:(id)remove keyPath:(id)path destination:(id)destination completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  removeCopy = remove;
  pathCopy = path;
  destinationCopy = destination;
  completionCopy = completion;
  v28 = constraintsCopy;
  if (destinationCopy)
  {
    v15 = [MEMORY[0x277CD1F58] _encodedConstraintsToAdd:constraintsCopy];
    v27 = [removeCopy na_map:&__block_literal_global_46_190280];
    v16 = [MEMORY[0x277CD1F58] _replaceConstraintsPayloadWithAdditions:v15 removals:v27 keyPath:pathCopy];
    v17 = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CCED80] qualityOfService:25 destination:destinationCopy messagePayload:v16];
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __115__HMDAccessorySettingsMessageHandler_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_2;
    v31[3] = &unk_2797355F8;
    objc_copyWeak(&v33, &location);
    v32 = completionCopy;
    [v17 setResponseHandler:v31];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v21;
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Relaying replace constraints message. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    messageDispatcher = [(HMDAccessorySettingsMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v17 completionHandler:0];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot send setting message as device is not known", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    (*(completionCopy + 2))(completionCopy, v15);
  }
}

void __115__HMDAccessorySettingsMessageHandler_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v6 = [WeakRetained workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __115__HMDAccessorySettingsMessageHandler_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_3;
    v7[3] = &unk_279735738;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)relayUpdateValue:(id)value keyPath:(id)path destination:(id)destination completion:(id)completion
{
  v37[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  destinationCopy = destination;
  completionCopy = completion;
  if (destinationCopy)
  {
    v36 = *MEMORY[0x277CCEDA8];
    null = valueCopy;
    if (!valueCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v14 = encodeRootObject();
    v37[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];

    if (!valueCopy)
    {
    }

    pathCopy = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CCED98] qualityOfService:25 destination:destinationCopy messagePayload:v15, pathCopy];
    objc_initWeak(&location, self);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __86__HMDAccessorySettingsMessageHandler_relayUpdateValue_keyPath_destination_completion___block_invoke;
    v28[3] = &unk_2797355F8;
    objc_copyWeak(&v30, &location);
    v29 = completionCopy;
    [pathCopy setResponseHandler:v28];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v20;
      v34 = 2112;
      v35 = pathCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Relaying update value message. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    messageDispatcher = [(HMDAccessorySettingsMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:pathCopy completionHandler:0];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot send setting message as device is not known", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{54, pathCopy}];
    (*(completionCopy + 2))(completionCopy, 0, 0, v15);
  }
}

void __86__HMDAccessorySettingsMessageHandler_relayUpdateValue_keyPath_destination_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v7 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDAccessorySettingsMessageHandler_relayUpdateValue_keyPath_destination_completion___block_invoke_2;
    block[3] = &unk_2797355D0;
    block[4] = v6;
    v9 = v4;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void __86__HMDAccessorySettingsMessageHandler_relayUpdateValue_keyPath_destination_completion___block_invoke_2(uint64_t a1)
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode response %@ of relayed update value message.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v13 + 16))(v13, 0, 0, v7);
  }
}

- (void)_handleReplaceConstraintsForKeyPath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  messagePayload = [pathCopy messagePayload];
  v6 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0F88]];

  if (v6)
  {
    messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
    if (![pathCopy isRemote])
    {
LABEL_7:
      v26 = 0;
      v27 = 0;
      v11 = [(HMDAccessorySettingsMessageHandler *)self processReplaceConstraintMessage:pathCopy outConstraintsToAdd:&v27 outConstraintIdsToRemove:&v26];
      v12 = v27;
      v13 = v26;
      if (v11)
      {
        remoteSourceDevice = [pathCopy remoteSourceDevice];
        productInfo = [remoteSourceDevice productInfo];
        productClass = [productInfo productClass];
        isRemote = [pathCopy isRemote];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __74__HMDAccessorySettingsMessageHandler__handleReplaceConstraintsForKeyPath___block_invoke;
        v24[3] = &unk_2797359D8;
        v25 = pathCopy;
        [messageController onMessageReplaceConstraintsWithAdditions:v12 constraintIdsToRemove:v13 keyPath:v6 senderProductClass:productClass isRemote:isRemote completion:v24];
      }

      goto LABEL_15;
    }

    home = [messageController home];
    if (!home)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      [pathCopy respondWithError:v12];
LABEL_15:

      goto LABEL_16;
    }

    v9 = home;
    v10 = [pathCopy userForHome:home];
    if (v10 && ([messageController canUser:v10 editConstraintsForSettingWithKeyPath:v6] & 1) != 0)
    {

      goto LABEL_7;
    }

    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    [pathCopy respondWithError:v23];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      messagePayload2 = [pathCopy messagePayload];
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing key path from accessory settings update message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    messageController = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [pathCopy respondWithError:messageController];
  }

LABEL_16:
}

uint64_t __74__HMDAccessorySettingsMessageHandler__handleReplaceConstraintsForKeyPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)_handleReplaceConstraints:(id)constraints
{
  constraintsCopy = constraints;
  messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
  destination = [constraintsCopy destination];
  target = [destination target];
  messageTargetUUID = [(HMDAccessorySettingsMessageHandler *)self messageTargetUUID];
  v9 = [target isEqual:messageTargetUUID];

  if (!v9)
  {
    if ([constraintsCopy isRemote])
    {
      home = [messageController home];
      if (!home)
      {
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
        [constraintsCopy respondWithError:v17];
LABEL_13:

        goto LABEL_14;
      }

      v11 = home;
      v12 = [constraintsCopy userForHome:home];
      if (!v12 || ([constraintsCopy destination], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "target"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(messageController, "canUser:editConstraintsForSetting:", v12, v14), v14, v13, !v15))
      {
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        [constraintsCopy respondWithError:v25];

        goto LABEL_14;
      }
    }

    v28 = 0;
    v29 = 0;
    v16 = [(HMDAccessorySettingsMessageHandler *)self processReplaceConstraintMessage:constraintsCopy outConstraintsToAdd:&v29 outConstraintIdsToRemove:&v28];
    v17 = v29;
    v18 = v28;
    if (v16)
    {
      destination2 = [constraintsCopy destination];
      target2 = [destination2 target];
      remoteSourceDevice = [constraintsCopy remoteSourceDevice];
      productInfo = [remoteSourceDevice productInfo];
      productClass = [productInfo productClass];
      isRemote = [constraintsCopy isRemote];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __64__HMDAccessorySettingsMessageHandler__handleReplaceConstraints___block_invoke;
      v26[3] = &unk_2797359D8;
      v27 = constraintsCopy;
      [messageController onMessageReplaceConstraintsWithAdditions:v17 constraintIdsToRemove:v18 settingIdentifier:target2 senderProductClass:productClass isRemote:isRemote completion:v26];
    }

    goto LABEL_13;
  }

  [(HMDAccessorySettingsMessageHandler *)self _handleReplaceConstraintsForKeyPath:constraintsCopy];
LABEL_14:
}

uint64_t __64__HMDAccessorySettingsMessageHandler__handleReplaceConstraints___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (BOOL)processReplaceConstraintMessage:(id)message outConstraintsToAdd:(id *)add outConstraintIdsToRemove:(id *)remove
{
  v64 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  array = [MEMORY[0x277CBEB18] array];
  v10 = [messageCopy arrayForKey:*MEMORY[0x277CCED28]];
  if (v10)
  {
    if ([v10 hmf_objectsAreKindOfClass:objc_opt_class()])
    {
      addCopy = add;
      removeCopy = remove;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v55;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v55 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v54 + 1) + 8 * i)];
            [array addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v13);
      }

      v17 = [messageCopy dataForKey:*MEMORY[0x277CCED18]];
      if (v17)
      {
        v18 = MEMORY[0x277CCAAC8];
        v19 = MEMORY[0x277CBEB98];
        v58[0] = objc_opt_class();
        v58[1] = objc_opt_class();
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
        v21 = [v19 setWithArray:v20];
        v53 = 0;
        v22 = [v18 unarchivedObjectOfClasses:v21 fromData:v17 error:&v53];
        v23 = v53;

        v24 = v22;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        if (v26)
        {

          v27 = v26;
          *addCopy = v26;
          *removeCopy = objc_msgSend_copy(array);
          v28 = 1;
          v23 = v24;
LABEL_30:

          goto LABEL_31;
        }

        v45 = objc_autoreleasePoolPush();
        selfCopy = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543618;
          v61 = v48;
          v62 = 2112;
          v63 = v23;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive accessory setting constraint from constraints to add data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        [messageCopy respondWithError:v49];
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          messagePayload = [messageCopy messagePayload];
          *buf = 138543618;
          v61 = v43;
          v62 = 2112;
          v63 = messagePayload;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Missing serialized constraints to add in message payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        [messageCopy respondWithError:v23];
      }

      v28 = 0;
      goto LABEL_30;
    }

    v36 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v39;
      v62 = 2112;
      v63 = v10;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Invalid constraints classes: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v34 = MEMORY[0x277CCA9B8];
    v35 = 43;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v61 = v32;
      v62 = 2112;
      v63 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Missing constraints to remove in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v34 = MEMORY[0x277CCA9B8];
    v35 = 3;
  }

  v17 = [v34 hmErrorWithCode:v35];
  [messageCopy respondWithError:v17];
  v28 = 0;
LABEL_31:

  return v28;
}

- (void)_handleUpdatedConstraints:(id)constraints
{
  v40 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  v5 = [constraintsCopy dataForKey:*MEMORY[0x277CCED20]];
  if (v5)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v9 = [v7 setWithArray:v8];
    v34 = 0;
    v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v34];
    v11 = v34;

    v12 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      messagePayload = [constraintsCopy messagePayload];
      v16 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0F88]];

      if (v16)
      {
        messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __64__HMDAccessorySettingsMessageHandler__handleUpdatedConstraints___block_invoke;
        v32[3] = &unk_2797359D8;
        v33 = constraintsCopy;
        [messageController onMessageUpdateConstraints:v14 keyPath:v16 completion:v32];

        v18 = v33;
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v31;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Missing key path in message payload", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
        v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [constraintsCopy respondWithError:v18];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v27;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive accessory setting constraint from constraints data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      [constraintsCopy respondWithError:v16];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      messagePayload2 = [constraintsCopy messagePayload];
      *buf = 138543618;
      v37 = v22;
      v38 = 2112;
      v39 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Missing serialized constraints in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Constraint not found" reason:@"Missing serialized constraint in update message" suggestion:0];
    [constraintsCopy respondWithError:v11];
  }
}

uint64_t __64__HMDAccessorySettingsMessageHandler__handleUpdatedConstraints___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)_handleRemoveConstraint:(id)constraint
{
  v30 = *MEMORY[0x277D85DE8];
  constraintCopy = constraint;
  v5 = [constraintCopy dataForKey:*MEMORY[0x277CCED20]];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v5 allowedClass:objc_opt_class() frameworkClasses:MEMORY[0x277CBEBF8]];
    if (v6)
    {
      messagePayload = [constraintCopy messagePayload];
      v8 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0F88]];

      if (v8)
      {
        messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __62__HMDAccessorySettingsMessageHandler__handleRemoveConstraint___block_invoke;
        v24[3] = &unk_2797359D8;
        v25 = constraintCopy;
        [messageController onMessageRemoveConstraint:v6 keyPath:v8 completion:v24];

        v10 = v25;
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v27 = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing key path in message payload", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [constraintCopy respondWithError:v10];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid constraint in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      [constraintCopy respondWithError:v8];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      messagePayload2 = [constraintCopy messagePayload];
      *buf = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized constraint in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Constraint not found" reason:@"Missing serialized constraint in remove message" suggestion:0];
    [constraintCopy respondWithError:v6];
  }
}

uint64_t __62__HMDAccessorySettingsMessageHandler__handleRemoveConstraint___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)_handleAddConstraint:(id)constraint
{
  v30 = *MEMORY[0x277D85DE8];
  constraintCopy = constraint;
  v5 = [constraintCopy dataForKey:*MEMORY[0x277CCED20]];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v5 allowedClass:objc_opt_class() frameworkClasses:MEMORY[0x277CBEBF8]];
    if (v6)
    {
      messagePayload = [constraintCopy messagePayload];
      v8 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0F88]];

      if (v8)
      {
        messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __59__HMDAccessorySettingsMessageHandler__handleAddConstraint___block_invoke;
        v24[3] = &unk_2797359D8;
        v25 = constraintCopy;
        [messageController onMessageAddConstraint:v6 keyPath:v8 completion:v24];

        v10 = v25;
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v27 = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing key path in message payload", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [constraintCopy respondWithError:v10];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid constraint in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      [constraintCopy respondWithError:v8];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      messagePayload2 = [constraintCopy messagePayload];
      *buf = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized constraint in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Constraint not found" reason:@"Missing serialized constraint in add message" suggestion:0];
    [constraintCopy respondWithError:v6];
  }
}

uint64_t __59__HMDAccessorySettingsMessageHandler__handleAddConstraint___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)_handleSettingUpdateValueByKeyPath:(id)path
{
  pathCopy = path;
  messagePayload = [pathCopy messagePayload];
  v21 = 0;
  v6 = [(HMDAccessorySettingsMessageHandler *)self _decodeUpdateValueMessagePayload:messagePayload outValue:&v21];
  v7 = v21;

  if (v6)
  {
    messagePayload2 = [pathCopy messagePayload];
    v9 = [messagePayload2 hmf_stringForKey:*MEMORY[0x277CD0F88]];

    if (v9)
    {
      messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
      remoteSourceDevice = [pathCopy remoteSourceDevice];
      version = [remoteSourceDevice version];
      remoteSourceDevice2 = [pathCopy remoteSourceDevice];
      productInfo = [remoteSourceDevice2 productInfo];
      productClass = [productInfo productClass];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __73__HMDAccessorySettingsMessageHandler__handleSettingUpdateValueByKeyPath___block_invoke;
      v18[3] = &unk_2797355A8;
      v18[4] = self;
      v16 = v9;
      v19 = v16;
      v20 = pathCopy;
      [messageController onMessageUpdateValue:v7 settingKeyPath:v16 senderVersion:version senderProductClass:productClass completion:v18];
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [pathCopy respondWithError:v17];

      v16 = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [pathCopy respondWithError:v16];
  }
}

void __73__HMDAccessorySettingsMessageHandler__handleSettingUpdateValueByKeyPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 48) respondWithError:v8];
  }

  else
  {
    v29[0] = *MEMORY[0x277CCEDA8];
    v9 = v7;
    if (!v7)
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    v10 = encodeRootObject();
    v29[1] = @"cv";
    v30[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v30[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

    if (!v7)
    {
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v19 = 138544386;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = 0;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Responding to the original update value request for target %@ with value: %@, configNum: %@, error: %@", &v19, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    [*(a1 + 48) respondWithPayload:v12];
  }
}

- (void)_handleSettingUpdateValue:(id)value
{
  valueCopy = value;
  messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
  destination = [valueCopy destination];
  target = [destination target];
  messageTargetUUID = [(HMDAccessorySettingsMessageHandler *)self messageTargetUUID];
  v9 = [target isEqual:messageTargetUUID];

  if (v9)
  {
    [(HMDAccessorySettingsMessageHandler *)self _handleSettingUpdateValueByKeyPath:valueCopy];
  }

  else
  {
    messagePayload = [valueCopy messagePayload];
    v23 = 0;
    v11 = [(HMDAccessorySettingsMessageHandler *)self _decodeUpdateValueMessagePayload:messagePayload outValue:&v23];
    v12 = v23;

    if (v11)
    {
      destination2 = [valueCopy destination];
      target2 = [destination2 target];
      remoteSourceDevice = [valueCopy remoteSourceDevice];
      version = [remoteSourceDevice version];
      remoteSourceDevice2 = [valueCopy remoteSourceDevice];
      productInfo = [remoteSourceDevice2 productInfo];
      productClass = [productInfo productClass];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__HMDAccessorySettingsMessageHandler__handleSettingUpdateValue___block_invoke;
      v21[3] = &unk_279735580;
      v21[4] = self;
      v22 = valueCopy;
      [messageController onMessageUpdateValue:v12 settingIdentifier:target2 senderVersion:version senderProductClass:productClass completion:v21];
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [valueCopy respondWithError:v19];

      v12 = v19;
    }
  }
}

void __64__HMDAccessorySettingsMessageHandler__handleSettingUpdateValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 40) respondWithError:v8];
  }

  else
  {
    v32[0] = *MEMORY[0x277CCEDA8];
    v9 = v7;
    if (!v7)
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    v10 = encodeRootObject();
    v32[1] = @"cv";
    v33[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v33[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    if (!v7)
    {
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) destination];
      [v20 target];
      v17 = v21 = v13;
      v18 = [v17 UUIDString];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      *buf = 138544386;
      v23 = v16;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = 0;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Responding to the original update value request for target %@ with value: %@, configNum: %@, error: %@", buf, 0x34u);

      v13 = v21;
    }

    objc_autoreleasePoolPop(v13);
    [*(a1 + 40) respondWithPayload:v12];
  }
}

- (NSUUID)messageTargetUUID
{
  messageController = [(HMDAccessorySettingsMessageHandler *)self messageController];
  messageTargetUUID = [messageController messageTargetUUID];

  return messageTargetUUID;
}

- (BOOL)_decodeUpdateValueMessagePayload:(id)payload outValue:(id *)value
{
  v27 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v7 = [payloadCopy hmf_dataForKey:*MEMORY[0x277CCEDA8]];
  if (v7)
  {
    v22 = 0;
    v8 = [HMDAccessorySetting decodedValue:v7 error:&v22];
    v9 = v22;
    v10 = v8 != 0;
    if (v8)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v8 == null)
      {

        v8 = 0;
      }

      v12 = v8;
      *value = v8;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory setting supported value from value data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
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
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = payloadCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized value from payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v10 = 0;
  }

  return v10;
}

- (HMDAccessorySettingsMessageHandler)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HMDAccessorySettingsMessageHandler;
  v9 = [(HMDAccessorySettingsMessageHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeWeak(&v10->_messageController, delegateCopy);
  }

  return v10;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v28[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiverCopy = receiver;
  v8 = [HMDUserMessagePolicy userMessagePolicyWithUserPrivilege:4 remoteAccessRequired:0];
  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v28[0] = v9;
  v10 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v28[1] = v10;
  v28[2] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];

  v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v27 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];

  name = [messageCopy name];
  v15 = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v15)
  {
    v17 = 2;
LABEL_5:
    v19 = v11;
LABEL_6:
    v20 = [HMDConfigurationMessagePolicy policyWithOperationTypes:v17];
    v21 = [v19 arrayByAddingObject:v20];
    v22 = HMFCreateMessageBindingWithReceiver();

    goto LABEL_7;
  }

  v18 = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v18)
  {
    v17 = 5;
    goto LABEL_5;
  }

  v24 = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v24)
  {
    v17 = 1;
LABEL_14:
    v19 = v13;
    goto LABEL_6;
  }

  v25 = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v25)
  {
    v17 = 4;
    goto LABEL_14;
  }

  v26 = HMFEqualObjects();

  if (v26)
  {
    name2 = [messageCopy name];
    v17 = 2;
    v19 = v13;
    goto LABEL_6;
  }

  v22 = 0;
LABEL_7:

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_190345 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_190345, &__block_literal_global_190346);
  }

  v3 = logCategory__hmf_once_v1_190347;

  return v3;
}

uint64_t __49__HMDAccessorySettingsMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_190347;
  logCategory__hmf_once_v1_190347 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end