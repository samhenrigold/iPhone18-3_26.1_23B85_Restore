@interface HMDHomeMediaSystemControllerMessageHandler
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate;
- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate featuresDataSource:(id)source;
- (HMDHomeMediaSystemControllerMessageHandlerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (id)appleMediaAccessoryWithUUID:(id)d;
- (id)homeUUID;
- (id)logIdentifier;
- (id)mediaGroupsAggregator;
- (id)mediaSystemNameFromRoomWithAccessoryUUIDs:(id)ds;
- (id)messageDestination;
- (id)messageRouter;
- (id)preProcessMediaSystemMessage:(id)message;
- (id)preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:(id)payload;
- (id)stagingMediaSystemDataFromData:(id)data accessoryUUIDs:(id)ds;
- (id)unconfiguredParticipantOnboardingManager;
- (id)updateMediaSystemCompletionBlockWithMessage:(id)message data:(id)data accessoryUUIDs:(id)ds;
- (id)updateParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier;
- (id)updateParticipantWithDestinationManager:(id)manager associatedGroupIdentifier:(id)identifier;
- (id)validateConfiguredName:(id)name;
- (id)validatePayload:(id)payload;
- (void)_legacyHandleAddMediaSystem:(id)system;
- (void)_legacyHandleAddMediaSystemWithPreProcessedMessage:(id)message;
- (void)_legacyHandleRemoveMediaSystem:(id)system;
- (void)_legacyHandleUpdateMediaSystem:(id)system;
- (void)_logAddMediaSystemMetricsUsingMessage:(id)message setupAccessoryUUID:(id)d setupRequestOption:(unint64_t)option;
- (void)_logRemoveMediaSystemMetricsUsingMessage:(id)message;
- (void)_registerForMessages;
- (void)locallyAddMediaSystemUsingRequestMessage:(id)message;
- (void)locallyRemoveMediaSystemUsingRemoveRequestMessage:(id)message;
- (void)locallyUpdateMediaSystemUsingRequestMessage:(id)message;
- (void)queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier;
- (void)routeAddMediaSystem:(id)system;
- (void)routeRemoveMediaSystem:(id)system;
- (void)routeUpdateMediaSystem:(id)system;
- (void)updateParticipantWithDestinationIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier;
- (void)updateParticipantWithDestinationIdentifiers:(id)identifiers associatedGroupIdentifier:(id)identifier;
@end

@implementation HMDHomeMediaSystemControllerMessageHandler

- (HMDHomeMediaSystemControllerMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDHomeMediaSystemControllerMessageHandler *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDHomeMediaSystemControllerMessageHandler *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)_legacyHandleUpdateMediaSystem:(id)system
{
  v48 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:systemCopy];
  if (v5)
  {
    v6 = [systemCopy uuidForKey:*MEMORY[0x277CD2470]];
    v7 = [systemCopy stringForKey:*MEMORY[0x277CD2440]];
    v8 = [systemCopy stringForKey:*MEMORY[0x277CD2410]];
    v37 = [systemCopy arrayForKey:*MEMORY[0x277CD2438]];
    if (v6)
    {
      home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
      v10 = [home validateName:v7];

      if (v10)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v35 = v6;
        v36 = v8;
        v42 = 0;
        v43 = 0;
        v40 = 0;
        v41 = 0;
        v12 = [MEMORY[0x277CD1BF8] decodeComponentData:v37 leftComponentUUID:&v43 leftAccessoryUUID:&v42 rightComponentUUID:&v41 rightAccessoryUUID:&v40];
        v13 = v43;
        v14 = v42;
        v15 = v41;
        v16 = v40;
        v17 = v16;
        if (v12)
        {
          delegate = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __77__HMDHomeMediaSystemControllerMessageHandler__legacyHandleUpdateMediaSystem___block_invoke;
          v38[3] = &unk_279734EB8;
          v39 = systemCopy;
          [delegate messageHandlerUpdateMediaSystem:v35 configuredName:v7 leftUUID:v13 leftAccessoryUUID:v14 rightUUID:v15 rightAccessoryUUID:v17 builderSession:v36 completion:v38];

          v19 = v39;
        }

        else
        {
          v33 = v16;
          v34 = v13;
          v29 = objc_autoreleasePoolPush();
          selfCopy = self;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v45 = v32;
            v46 = 2112;
            v47 = v37;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not decode components %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          [systemCopy respondWithError:v19];
          v17 = v33;
          v13 = v34;
        }

        v6 = v35;
        v8 = v36;
        goto LABEL_21;
      }

      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v28;
        v46 = 2112;
        v47 = v7;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Name already exists %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v23;
        v46 = 2112;
        v47 = 0;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Message is missing mediaSystemUUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }

    [systemCopy respondWithError:v10];
LABEL_21:
  }
}

void __77__HMDHomeMediaSystemControllerMessageHandler__legacyHandleUpdateMediaSystem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) respondWithError:v6];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      v9 = *MEMORY[0x277CD2418];
      v10[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      [v7 respondWithPayload:v8];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      [v7 respondWithError:v8];
    }
  }
}

- (void)locallyUpdateMediaSystemUsingRequestMessage:(id)message
{
  v65 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    messagePayload = [messageCopy messagePayload];
    *buf = 138544130;
    v58 = v8;
    v59 = 2112;
    v60 = name;
    v61 = 2112;
    v62 = identifier;
    v63 = 2112;
    v64 = messagePayload;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locally update media system using request message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload2 = [messageCopy messagePayload];
  v14 = [v12 initWithPayload:messagePayload2];

  mediaGroupsAggregator = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy mediaGroupsAggregator];
  v16 = mediaGroupsAggregator;
  if (v14 && mediaGroupsAggregator)
  {
    uuid = [v14 uuid];
    v18 = [v16 localGroupWithIdentifier:uuid];

    mediaSystemData = [v18 mediaSystemData];
    if (mediaSystemData)
    {
      v20 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy validatePayload:v14];
      if (!v20)
      {
        v21 = [mediaSystemData mutableCopy];
        configuredName = [v14 configuredName];
        v53 = mediaSystemData;
        if (configuredName)
        {
          [v21 setName:configuredName];
        }

        else
        {
          roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
          [v21 setName:roomNameSentinel];
        }

        configuredName2 = [v14 configuredName];
        [v21 setDefaultName:configuredName2 == 0];

        leftAccessoryUUID = [v14 leftAccessoryUUID];
        [v21 setLeftDestinationIdentifier:leftAccessoryUUID];

        rightAccessoryUUID = [v14 rightAccessoryUUID];
        [v21 setRightDestinationIdentifier:rightAccessoryUUID];

        leftAccessoryUUID2 = [v14 leftAccessoryUUID];
        v56[0] = leftAccessoryUUID2;
        rightAccessoryUUID2 = [v14 rightAccessoryUUID];
        v56[1] = rightAccessoryUUID2;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
        [v16 updateGroup:v21 participantAccessoryUUIDs:v38];

        leftAccessoryUUID3 = [v14 leftAccessoryUUID];
        uuid2 = [v14 uuid];
        v39 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:leftAccessoryUUID3 associatedGroupIdentifier:uuid2];
        v55[0] = v39;
        [v14 rightAccessoryUUID];
        v40 = v52 = v21;
        uuid3 = [v14 uuid];
        v42 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:v40 associatedGroupIdentifier:uuid3];
        v55[1] = v42;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];

        v43 = [MEMORY[0x277D2C900] chainFutures:v51];
        leftAccessoryUUID4 = [v14 leftAccessoryUUID];
        v54[0] = leftAccessoryUUID4;
        rightAccessoryUUID3 = [v14 rightAccessoryUUID];
        v54[1] = rightAccessoryUUID3;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
        v47 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateMediaSystemCompletionBlockWithMessage:messageCopy data:v52 accessoryUUIDs:v46];
        v48 = [v43 addCompletionBlock:v47];

        v31 = 0;
        mediaSystemData = v53;
        goto LABEL_18;
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
        *buf = 138543618;
        v58 = v30;
        v59 = 2112;
        v60 = v18;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to update media system due to missing media system group: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }

    v31 = v20;
    [messageCopy respondWithError:v20];
LABEL_18:

    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v58 = v26;
    v59 = 2112;
    v60 = v14;
    v61 = 2112;
    v62 = v16;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to update media system due to missing dependencies payload: %@ aggregator: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
  [messageCopy respondWithError:v18];
LABEL_19:
}

- (void)routeUpdateMediaSystem:(id)system
{
  v21 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [systemCopy name];
    identifier = [systemCopy identifier];
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = identifier;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Routing update media system message: %@(%@)", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDHomeMediaSystemControllerMessageHandler *)v12 _legacyHandleUpdateMediaSystem:systemCopy];
  }
}

- (void)_legacyHandleRemoveMediaSystem:(id)system
{
  systemCopy = system;
  v4 = [systemCopy uuidForKey:*MEMORY[0x277CD2470]];
  v5 = [systemCopy stringForKey:*MEMORY[0x277CD2410]];
  v6 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:systemCopy];
  if (v6)
  {
    delegate = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
    [delegate messageHandlerRemoveMediaSystem:v4 builderSession:v5 message:systemCopy];
  }
}

- (void)locallyRemoveMediaSystemUsingRemoveRequestMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    messagePayload = [messageCopy messagePayload];
    v36 = 138544130;
    v37 = v8;
    v38 = 2112;
    v39 = name;
    v40 = 2112;
    v41 = identifier;
    v42 = 2112;
    v43 = messagePayload;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locallying remove media system using request message: %@(%@) payload: %@", &v36, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload2 = [messageCopy messagePayload];
  v13 = [messagePayload2 hmf_UUIDForKey:*MEMORY[0x277CD2470]];

  if (v13)
  {
    mediaGroupsAggregator = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy mediaGroupsAggregator];
    v15 = mediaGroupsAggregator;
    if (mediaGroupsAggregator)
    {
      v16 = [mediaGroupsAggregator localGroupWithIdentifier:v13];
      mediaSystemData = [v16 mediaSystemData];
      v18 = mediaSystemData;
      if (mediaSystemData)
      {
        associatedGroupIdentifier = [mediaSystemData associatedGroupIdentifier];
        destinationUniqueIdentifiers = [v18 destinationUniqueIdentifiers];
        [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithDestinationIdentifiers:destinationUniqueIdentifiers associatedGroupIdentifier:associatedGroupIdentifier];

        [v15 removeGroupWithIdentifier:v13];
        [messageCopy respondWithSuccess];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          v36 = 138543618;
          v37 = v35;
          v38 = 2112;
          v39 = v16;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Failed to remove media system due to missing media system group: %@", &v36, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        associatedGroupIdentifier = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        [messageCopy respondWithError:associatedGroupIdentifier];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove media system due to no aggregator", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      [messageCopy respondWithError:v16];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      name2 = [messageCopy name];
      identifier2 = [messageCopy identifier];
      messagePayload3 = [messageCopy messagePayload];
      v36 = 138544130;
      v37 = v24;
      v38 = 2112;
      v39 = name2;
      v40 = 2112;
      v41 = identifier2;
      v42 = 2112;
      v43 = messagePayload3;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove media system due to invalid payload in request message: %@(%@) payload: %@", &v36, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [messageCopy respondWithError:v15];
  }
}

- (void)routeRemoveMediaSystem:(id)system
{
  v11 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self _logRemoveMediaSystemMetricsUsingMessage:systemCopy];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy _legacyHandleRemoveMediaSystem:systemCopy];
  }
}

- (void)_legacyHandleAddMediaSystemWithPreProcessedMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy uuidForKey:*MEMORY[0x277CD2470]];
  v6 = [messageCopy stringForKey:*MEMORY[0x277CD2440]];
  v7 = [messageCopy arrayForKey:*MEMORY[0x277CD2438]];
  v8 = [messageCopy stringForKey:*MEMORY[0x277CD2410]];
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v45 = v14;
      v46 = 2112;
      v47 = v5;
      v48 = 2112;
      v49 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Message is missing required information uuid: %@, builderID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    goto LABEL_19;
  }

  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v16 = [home validateName:v6];

  if (v16)
  {
    v17 = v6 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v29;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Name already exists %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
LABEL_19:
    [messageCopy respondWithError:v16];
    goto LABEL_24;
  }

  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v36 = v7;
  v18 = [MEMORY[0x277CD1BF8] decodeComponentData:v7 leftComponentUUID:&v43 leftAccessoryUUID:&v42 rightComponentUUID:&v41 rightAccessoryUUID:&v40];
  v37 = v43;
  v19 = v42;
  v20 = v41;
  v21 = v40;
  v22 = v21;
  if (v18)
  {
    delegate = [(HMDHomeMediaSystemControllerMessageHandler *)self delegate];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __97__HMDHomeMediaSystemControllerMessageHandler__legacyHandleAddMediaSystemWithPreProcessedMessage___block_invoke;
    v38[3] = &unk_279734EB8;
    v39 = messageCopy;
    [delegate messageHandlerAddMediaSystem:v5 configuredName:v6 leftUUID:v37 leftAccessoryUUID:v19 rightUUID:v20 rightAccessoryUUID:v22 builderSession:v9 completion:v38];

    v24 = v39;
  }

  else
  {
    v34 = v21;
    v35 = v20;
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v33;
      v46 = 2112;
      v47 = v36;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not decode components %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v24];
    v22 = v34;
    v20 = v35;
  }

  v7 = v36;
LABEL_24:
}

void __97__HMDHomeMediaSystemControllerMessageHandler__legacyHandleAddMediaSystemWithPreProcessedMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) respondWithError:v6];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      v9 = *MEMORY[0x277CD2418];
      v10[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      [v7 respondWithPayload:v8];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      [v7 respondWithError:v8];
    }
  }
}

- (void)_legacyHandleAddMediaSystem:(id)system
{
  v4 = [(HMDHomeMediaSystemControllerMessageHandler *)self preProcessMediaSystemMessage:system];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDHomeMediaSystemControllerMessageHandler *)self _legacyHandleAddMediaSystemWithPreProcessedMessage:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)appleMediaAccessoryWithUUID:(id)d
{
  dCopy = d;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  homeManager = [home homeManager];

  v7 = [homeManager accessoryWithUUID:dCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)homeUUID
{
  v16 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  uuid = [home uuid];
  v5 = uuid;
  if (uuid)
  {
    v6 = uuid;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = home;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to get home uuid from home: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v5;
}

- (id)mediaGroupsAggregator
{
  v16 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  mediaGroupsAggregator = [home mediaGroupsAggregator];
  v5 = mediaGroupsAggregator;
  if (mediaGroupsAggregator)
  {
    v6 = mediaGroupsAggregator;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = home;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media groups aggregator from home: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v5;
}

- (id)messageRouter
{
  v16 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  primaryResidentMessageRouter = [home primaryResidentMessageRouter];
  v5 = primaryResidentMessageRouter;
  if (primaryResidentMessageRouter)
  {
    v6 = primaryResidentMessageRouter;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = home;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get primary message router in home: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v5;
}

- (id)unconfiguredParticipantOnboardingManager
{
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  mediaGroupsUnconfiguredParticipantOnboardingManager = [home mediaGroupsUnconfiguredParticipantOnboardingManager];

  return mediaGroupsUnconfiguredParticipantOnboardingManager;
}

- (void)queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = dCopy;
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Queueing onboarding participant accessory uuid: %@ associated group identifier: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  unconfiguredParticipantOnboardingManager = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy unconfiguredParticipantOnboardingManager];
  v13 = unconfiguredParticipantOnboardingManager;
  if (unconfiguredParticipantOnboardingManager)
  {
    [unconfiguredParticipantOnboardingManager queueOnboardingParticipantWithAccessoryUUID:dCopy withAssociatedGroupIdentifier:identifierCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v17;
      v20 = 2112;
      v21 = dCopy;
      v22 = 2112;
      v23 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to queue participant accessory uuid: %@ associated group identifier: %@ due to no onboarding manager", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (id)updateParticipantWithDestinationManager:(id)manager associatedGroupIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D2C900];
  identifierCopy = identifier;
  managerCopy = manager;
  v9 = objc_alloc_init(v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationManager_associatedGroupIdentifier___block_invoke;
  v14[3] = &unk_2797358C8;
  v14[4] = self;
  v10 = v9;
  v15 = v10;
  [managerCopy requestToUpdateAudioGroupIdentifier:identifierCopy completion:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

void __112__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationManager_associatedGroupIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Request to update audio groups completed with error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }
}

- (id)updateParticipantWithAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = [home destinationManagerWithParentIdentifier:dCopy];
  if (v9)
  {
    futureWithNoResult = [(HMDHomeMediaSystemControllerMessageHandler *)self updateParticipantWithDestinationManager:v9 associatedGroupIdentifier:identifierCopy];
  }

  else
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self queueOnboardingForUnconfiguredParticipantWithAccessoryUUID:dCopy associatedGroupIdentifier:identifierCopy];

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (void)updateParticipantWithDestinationIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v9 = [home destinationManagerWithDestinationIdentifier:identifierCopy];
  if (v9 || ([home destinationManagerWithParentIdentifier:identifierCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [(HMDHomeMediaSystemControllerMessageHandler *)self updateParticipantWithDestinationManager:v9 associatedGroupIdentifier:groupIdentifierCopy];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v15;
      v18 = 2112;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = home;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to update participant with destination identifier: %@ due to no destination manager found in home: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)updateParticipantWithDestinationIdentifiers:(id)identifiers associatedGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __116__HMDHomeMediaSystemControllerMessageHandler_updateParticipantWithDestinationIdentifiers_associatedGroupIdentifier___block_invoke;
  v8[3] = &unk_279729328;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [identifiers na_each:v8];
}

- (id)mediaSystemNameFromRoomWithAccessoryUUIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  if (home)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = dsCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [home accessoryWithUUID:{*(*(&v16 + 1) + 8 * i), v16}];
          room = [v11 room];
          if (room)
          {
            v14 = room;
            name = [room name];

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  name = [MEMORY[0x277CD1C08] defaultGroupName];
LABEL_13:

  return name;
}

- (id)stagingMediaSystemDataFromData:(id)data accessoryUUIDs:(id)ds
{
  dsCopy = ds;
  v7 = [data mutableCopy];
  name = [v7 name];
  roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
  if ([name isEqualToString:roomNameSentinel])
  {
    [(HMDHomeMediaSystemControllerMessageHandler *)self mediaSystemNameFromRoomWithAccessoryUUIDs:dsCopy];
  }

  else
  {
    [v7 name];
  }
  v10 = ;
  [v7 setName:v10];

  return v7;
}

- (id)updateMediaSystemCompletionBlockWithMessage:(id)message data:(id)data accessoryUUIDs:(id)ds
{
  messageCopy = message;
  dataCopy = data;
  dsCopy = ds;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HMDHomeMediaSystemControllerMessageHandler_updateMediaSystemCompletionBlockWithMessage_data_accessoryUUIDs___block_invoke;
  v16[3] = &unk_279725578;
  v16[4] = self;
  v17 = messageCopy;
  v18 = dataCopy;
  v19 = dsCopy;
  v11 = dsCopy;
  v12 = dataCopy;
  v13 = messageCopy;
  v14 = _Block_copy(v16);

  return v14;
}

void __110__HMDHomeMediaSystemControllerMessageHandler_updateMediaSystemCompletionBlockWithMessage_data_accessoryUUIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Update media system participants completed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Update media system participants completed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) home];
    if (v13)
    {
      v14 = [*(a1 + 32) stagingMediaSystemDataFromData:*(a1 + 48) accessoryUUIDs:*(a1 + 56)];
      v15 = [[HMDMediaSystem alloc] initWithMediaSystemData:v14 home:v13];
      v16 = *(a1 + 40);
      v17 = [(HMDMediaSystem *)v15 serialize];
      v25 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v16 respondWithPayload:v18];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create update media system response due to no home", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = *(a1 + 40);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v23 respondWithError:v14];
    }
  }
}

- (id)validateConfiguredName:(id)name
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get name to validate", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 2;
    goto LABEL_10;
  }

  if (![nameCopy length] || (v6 = objc_msgSend(v5, "length"), v6 > HMMaxLengthForNaming()))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v10;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get valid name due length of name: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 3;
LABEL_10:
    v17 = [v11 hmErrorWithCode:v12];
    goto LABEL_11;
  }

  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v20 = home;
  if (home)
  {
    v17 = [home validateName:v5];
    if (v17)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v30 = 138543874;
        v31 = v24;
        v32 = 2112;
        v33 = v5;
        v34 = 2112;
        v35 = v17;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get valid name: %@ error: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v25 = v17;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to get home during name validation", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
  }

LABEL_11:

  return v17;
}

- (id)validatePayload:(id)payload
{
  configuredName = [payload configuredName];
  if (configuredName)
  {
    v5 = [(HMDHomeMediaSystemControllerMessageHandler *)self validateConfiguredName:configuredName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:(id)payload
{
  v43 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  leftAccessoryUUID = [payloadCopy leftAccessoryUUID];
  v7 = [home destinationManagerWithParentIdentifier:leftAccessoryUUID];

  v34 = v7;
  destination = [v7 destination];
  audioGroupIdentifier = [destination audioGroupIdentifier];
  rightAccessoryUUID = [payloadCopy rightAccessoryUUID];
  v11 = [home destinationManagerWithParentIdentifier:rightAccessoryUUID];

  v33 = v11;
  destination2 = [v11 destination];
  audioGroupIdentifier2 = [destination2 audioGroupIdentifier];
  if (!destination || !destination2)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v31 = payloadCopy;
      *buf = 138544130;
      v36 = v17;
      v37 = 2112;
      v38 = destination;
      v39 = 2112;
      v40 = destination2;
      v41 = 2112;
      v42 = home;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Preferred associated group will be derived without influence from missing left destination: %@ right destination: %@ in home: %@", buf, 0x2Au);

      payloadCopy = v31;
    }

    objc_autoreleasePoolPop(v14);
  }

  if (audioGroupIdentifier && audioGroupIdentifier2 && ([audioGroupIdentifier isEqual:audioGroupIdentifier2] & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v28 = payloadCopy;
      *buf = 138543874;
      v36 = v29;
      v37 = 2112;
      v38 = destination;
      v39 = 2112;
      v40 = destination2;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Not setting a preferred group identifier due to miss matching groups on left destination: %@ right destination: %@", buf, 0x20u);

      payloadCopy = v28;
    }

    objc_autoreleasePoolPop(v25);
    v19 = 0;
  }

  else
  {
    if (audioGroupIdentifier)
    {
      v18 = audioGroupIdentifier;
    }

    else
    {
      v18 = audioGroupIdentifier2;
    }

    v19 = v18;
    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v23 = v32 = payloadCopy;
        *buf = 138543618;
        v36 = v23;
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting preferred associated group identifier: %@", buf, 0x16u);

        payloadCopy = v32;
      }

      objc_autoreleasePoolPop(v20);
      v24 = v19;
    }
  }

  return v19;
}

- (void)locallyAddMediaSystemUsingRequestMessage:(id)message
{
  v64 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [messageCopy name];
    identifier = [messageCopy identifier];
    messagePayload = [messageCopy messagePayload];
    *buf = 138544130;
    v57 = v8;
    v58 = 2112;
    v59 = name;
    v60 = 2112;
    v61 = identifier;
    v62 = 2112;
    v63 = messagePayload;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Locally add media system using request message: %@(%@) payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload2 = [messageCopy messagePayload];
  v14 = [v12 initWithPayload:messagePayload2];

  homeUUID = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy homeUUID];
  mediaGroupsAggregator = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy mediaGroupsAggregator];
  v17 = mediaGroupsAggregator;
  if (!v14 || !homeUUID || !mediaGroupsAggregator)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138544130;
      v57 = v25;
      v58 = 2112;
      v59 = v14;
      v60 = 2112;
      v61 = v17;
      v62 = 2112;
      v63 = homeUUID;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to add media system due to missing dependencies payload: %@ aggregator: %@ homeUUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    goto LABEL_12;
  }

  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy validatePayload:v14];
  if (v18)
  {
LABEL_12:
    v26 = v18;
    [messageCopy respondWithError:v18];
    goto LABEL_13;
  }

  configuredName = [v14 configuredName];
  v20 = configuredName;
  v51 = v17;
  if (configuredName)
  {
    roomNameSentinel = configuredName;
  }

  else
  {
    roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
  }

  v52 = roomNameSentinel;

  configuredName2 = [v14 configuredName];
  v28 = configuredName2 == 0;

  v29 = objc_alloc(MEMORY[0x277CD1C08]);
  uuid = [v14 uuid];
  v31 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy preferredAssociatedGroupIdentifierForMediaSystemBuilderPayload:v14];
  leftAccessoryUUID = [v14 leftAccessoryUUID];
  rightAccessoryUUID = [v14 rightAccessoryUUID];
  v50 = [v29 initWithIdentifier:uuid parentIdentifier:homeUUID name:v52 defaultName:v28 associatedGroupIdentifier:v31 leftDestinationIdentifier:leftAccessoryUUID rightDestinationIdentifier:rightAccessoryUUID];

  leftAccessoryUUID2 = [v14 leftAccessoryUUID];
  v55[0] = leftAccessoryUUID2;
  rightAccessoryUUID2 = [v14 rightAccessoryUUID];
  v55[1] = rightAccessoryUUID2;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v17 = v51;
  [v51 updateGroup:v50 participantAccessoryUUIDs:v36];

  leftAccessoryUUID3 = [v14 leftAccessoryUUID];
  uuid2 = [v14 uuid];
  v37 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:leftAccessoryUUID3 associatedGroupIdentifier:uuid2];
  v54[0] = v37;
  rightAccessoryUUID3 = [v14 rightAccessoryUUID];
  uuid3 = [v14 uuid];
  v40 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateParticipantWithAccessoryUUID:rightAccessoryUUID3 associatedGroupIdentifier:uuid3];
  v54[1] = v40;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];

  v41 = [MEMORY[0x277D2C900] chainFutures:v49];
  leftAccessoryUUID4 = [v14 leftAccessoryUUID];
  v53[0] = leftAccessoryUUID4;
  rightAccessoryUUID4 = [v14 rightAccessoryUUID];
  v53[1] = rightAccessoryUUID4;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v45 = [(HMDHomeMediaSystemControllerMessageHandler *)selfCopy updateMediaSystemCompletionBlockWithMessage:messageCopy data:v50 accessoryUUIDs:v44];
  v46 = [v41 addCompletionBlock:v45];

  v26 = 0;
LABEL_13:
}

- (void)_logRemoveMediaSystemMetricsUsingMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  messagePayload = [messageCopy messagePayload];
  v7 = messagePayload;
  if (home && messagePayload)
  {
    v8 = [messagePayload objectForKeyedSubscript:*MEMORY[0x277CD2470]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        name = [messageCopy name];
        v24 = 138543874;
        v25 = v16;
        v26 = 2112;
        v27 = name;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received %@ message for media system UUID: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      mediaSystemSetupMetricDispatcher = [home mediaSystemSetupMetricDispatcher];
      [mediaSystemSetupMetricDispatcher markRequestReceivedForGroupIdentifier:v11 metricType:2 setupSessionIdentifier:0 setupRequestOption:0 setupSessionStartTimeMS:0];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v23;
        v26 = 2112;
        v27 = messageCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Message %@ payload does not contain valid media system UUID", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v22;
      v26 = 2112;
      v27 = home;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@home: %@ or payload: %@ is nil", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)_logAddMediaSystemMetricsUsingMessage:(id)message setupAccessoryUUID:(id)d setupRequestOption:(unint64_t)option
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v11 = objc_alloc(MEMORY[0x277CD1BF8]);
  messagePayload = [messageCopy messagePayload];
  v13 = [v11 initWithPayload:messagePayload];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (home && v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      name = [messageCopy name];
      *buf = 138543874;
      v35 = v18;
      v36 = 2112;
      v37 = name;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Received %@ message for media system builder payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    homeManager = [home homeManager];
    v21 = homeManager;
    v32 = dCopy;
    v33 = 0.0;
    if (dCopy)
    {
      v22 = [homeManager setupSessionIdentifierForAccessoryUUID:dCopy outStartTime:&v33];
    }

    else
    {
      v22 = 0;
    }

    optionCopy = option;
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v28;
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Found associated setup session identifier %@ during media system grouping", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = 1000 * v33;
    mediaSystemSetupMetricDispatcher = [home mediaSystemSetupMetricDispatcher];
    uuid = [v13 uuid];
    [mediaSystemSetupMetricDispatcher markRequestReceivedForGroupIdentifier:uuid metricType:1 setupSessionIdentifier:v22 setupRequestOption:optionCopy setupSessionStartTimeMS:v29];

    dCopy = v32;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v23;
      v36 = 2112;
      v37 = home;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Home: %@ or media system builder payload: %@ is nil", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)routeAddMediaSystem:(id)system
{
  v21 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    name = [systemCopy name];
    identifier = [systemCopy identifier];
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = identifier;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Routing add media system message: %@(%@)", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home theater QFA is not enabled using legacy flows", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDHomeMediaSystemControllerMessageHandler *)v12 _legacyHandleAddMediaSystem:systemCopy];
  }
}

- (id)preProcessMediaSystemMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  if (![home isSharedAdmin])
  {
    goto LABEL_6;
  }

  primaryResident = [home primaryResident];
  v7 = primaryResident;
  if (primaryResident && ([primaryResident isReachable] & 1) != 0)
  {
    if ([v7 supportsMediaSystem])
    {

LABEL_6:
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__HMDHomeMediaSystemControllerMessageHandler_preProcessMediaSystemMessage___block_invoke;
      aBlock[3] = &unk_279735248;
      objc_copyWeak(&v25, location);
      v8 = messageCopy;
      v23 = v8;
      v24 = home;
      v9 = _Block_copy(aBlock);
      v10 = [v8 mutableCopy];
      identifier = [v8 identifier];
      [v10 setIdentifier:identifier];

      [v10 setResponseHandler:v9];
      [v10 setRemote:{objc_msgSend(v8, "isRemote")}];
      v12 = objc_msgSend_copy(v10);

      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
      goto LABEL_11;
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v21;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident device does not support media system: %@", location, 0x16u);
    }

    v17 = 92;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident device isn't available or reachable: %@", location, 0x16u);
    }

    v17 = 91;
  }

  objc_autoreleasePoolPop(v13);
  v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v17];
  [messageCopy respondWithError:v18];

  v12 = 0;
LABEL_11:

  return v12;
}

void __75__HMDHomeMediaSystemControllerMessageHandler_preProcessMediaSystemMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && !v5 && [a1[5] isSharedAdmin])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = a1[4];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Relaying the message %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [a1[5] administratorHandler];
    v14 = [v13 operationForMessage:a1[4] error:0];
    if (v14)
    {
      [v13 addOperation:v14];
    }
  }

  v15 = [a1[4] responseHandler];

  if (v15)
  {
    v16 = [a1[4] responseHandler];
    (v16)[2](v16, v5, v6);
  }
}

- (void)_registerForMessages
{
  v9[3] = *MEMORY[0x277D85DE8];
  home = [(HMDHomeMediaSystemControllerMessageHandler *)self home];
  v4 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  messageDispatcher = [(HMDHomeMediaSystemControllerMessageHandler *)self messageDispatcher];
  [messageDispatcher registerForMessage:*MEMORY[0x277CD2098] receiver:self policies:v7 selector:sel_routeAddMediaSystem_];
  [messageDispatcher registerForMessage:*MEMORY[0x277CD2518] receiver:self policies:v7 selector:sel_routeRemoveMediaSystem_];
}

- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate featuresDataSource:(id)source
{
  queueCopy = queue;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  delegateCopy = delegate;
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = HMDHomeMediaSystemControllerMessageHandler;
  v18 = [(HMDHomeMediaSystemControllerMessageHandler *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v19->_messageDispatcher, dispatcher);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_featuresDataSource, source);
    [(HMDHomeMediaSystemControllerMessageHandler *)v19 _registerForMessages];
  }

  return v19;
}

- (HMDHomeMediaSystemControllerMessageHandler)initWithQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher delegate:(id)delegate
{
  delegateCopy = delegate;
  dispatcherCopy = dispatcher;
  homeCopy = home;
  queueCopy = queue;
  v14 = objc_alloc_init(HMDFeaturesDataSource);
  v15 = [(HMDHomeMediaSystemControllerMessageHandler *)self initWithQueue:queueCopy home:homeCopy messageDispatcher:dispatcherCopy delegate:delegateCopy featuresDataSource:v14];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t48 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t48, &__block_literal_global_38542);
  }

  v3 = logCategory__hmf_once_v49;

  return v3;
}

uint64_t __57__HMDHomeMediaSystemControllerMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v49;
  logCategory__hmf_once_v49 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end