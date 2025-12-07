@interface HMDMediaDestinationMessageHandler
+ (id)logCategory;
- (HMDMediaDestinationMessageHandler)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center notifications:(id)notifications dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationMessageHandlerDataSource)dataSource;
- (HMDMediaDestinationMessageHandlerDelegate)delegate;
- (id)audioGroupIdentifierInMessage:(id)message error:(id *)error;
- (unint64_t)supportedOptionsInMessage:(id)message error:(id *)error;
- (void)handleMediaDestinationUpdateAudioGroupIdentifierRequestMessage:(id)message;
- (void)handleMediaDestinationUpdateSupportedOptionsRequestMessage:(id)message;
- (void)handleUpdatedDestination:(id)destination;
- (void)sendRequestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion;
- (void)sendRequestToUpdateSupportOptions:(unint64_t)options completion:(id)completion;
@end

@implementation HMDMediaDestinationMessageHandler

- (HMDMediaDestinationMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleMediaDestinationUpdateSupportedOptionsRequestMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update destination supported options request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  responseHandler = [messageCopy responseHandler];

  if (!responseHandler)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = messageCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response handler from update destination supported options request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    goto LABEL_11;
  }

  v28 = 0;
  v10 = [(HMDMediaDestinationMessageHandler *)selfCopy supportedOptionsInMessage:messageCopy error:&v28];
  v11 = v28;
  if (v11)
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = messageCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get supported options from update destination supported options request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
LABEL_11:
    [messageCopy respondWithError:v12];
    goto LABEL_18;
  }

  delegate = [(HMDMediaDestinationMessageHandler *)selfCopy delegate];
  v22 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationMessageHandler:selfCopy didReceiveUpdateSupportedOptionsRequestMessage:messageCopy supportOptions:v10];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Failed to update supported options due to no delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v27];
  }

  v12 = 0;
LABEL_18:
}

- (void)handleMediaDestinationUpdateAudioGroupIdentifierRequestMessage:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update destination audio group identifier request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    v27 = 0;
    v10 = [(HMDMediaDestinationMessageHandler *)selfCopy audioGroupIdentifierInMessage:messageCopy error:&v27];
    v11 = v27;
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v15;
        v30 = 2112;
        v31 = messageCopy;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio group identifier from update audio group identifier request message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [messageCopy respondWithError:v11];
    }

    else
    {
      delegate = [(HMDMediaDestinationMessageHandler *)selfCopy delegate];
      v21 = delegate;
      if (delegate)
      {
        [delegate mediaDestinationMessageHandler:selfCopy didReceiveUpdateAudioGroupIdentifierRequestMessage:messageCopy audioGroupIdentifier:v10];
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to update audio group identifier due to no delegate", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [messageCopy respondWithError:v26];
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = messageCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response handler from update destination audio group identifier request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v11];
  }
}

- (unint64_t)supportedOptionsInMessage:(id)message error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v8 = messagePayload;
  if (messagePayload)
  {
    v9 = [messagePayload hmf_numberForKey:*MEMORY[0x277CD0868]];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get supported options from message payload: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        *error = unsignedIntegerValue = 0;
      }

      else
      {
        unsignedIntegerValue = 0;
      }
    }
  }

  else if (error)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = messageCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = unsignedIntegerValue = 0;
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)audioGroupIdentifierInMessage:(id)message error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v8 = messagePayload;
  if (messagePayload)
  {
    v9 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0838]];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:*MEMORY[0x277CD0860]])
      {
        goto LABEL_16;
      }

      v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
      if (v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        objc_autoreleasePoolPop(v12);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          *error = v11 = 0;
          goto LABEL_17;
        }

LABEL_16:
        v11 = 0;
        goto LABEL_17;
      }

      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v8;
      v16 = "%{public}@Failed to parse audio group identifier from message payload: %@";
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v8;
      v16 = "%{public}@Failed to get audio group identifier from message payload: %@";
    }

    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, v16, &v22, 0x16u);

    goto LABEL_14;
  }

  if (error)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = messageCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (void)handleUpdatedDestination:(id)destination
{
  v14 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = destinationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling updated destination: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  notificationCenter = [(HMDMessageHandler *)selfCopy notificationCenter];
  [notificationCenter postNotificationName:*MEMORY[0x277CD0880] object:destinationCopy];
}

- (void)sendRequestToUpdateSupportOptions:(unint64_t)options completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMMediaDestinationSupportOptionsAsString();
    *buf = 138543618;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending request to update destination support options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (completionCopy)
  {
    v30 = *MEMORY[0x277CD0868];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
    v31 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    v14 = objc_alloc(MEMORY[0x277D0F820]);
    messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
    v16 = [v14 initWithTarget:messageTargetUUID];

    v17 = objc_alloc(MEMORY[0x277D0F848]);
    v18 = [v17 initWithName:*MEMORY[0x277CD0878] destination:v16 payload:v13];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __82__HMDMediaDestinationMessageHandler_sendRequestToUpdateSupportOptions_completion___block_invoke;
    v27 = &unk_279732CF0;
    v28 = selfCopy;
    v29 = completionCopy;
    [v18 setResponseHandler:&v24];
    v19 = objc_msgSend_copy(v18, v24, v25, v26, v27, v28);
    [(HMDMessageHandler *)selfCopy routeMessage:v19];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to set completion to update support options", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

void __82__HMDMediaDestinationMessageHandler_sendRequestToUpdateSupportOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Update destination supported options request message responded with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();
}

- (void)sendRequestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v11;
    v36 = 2112;
    v37 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending request to update audio group identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (completionCopy)
  {
    v32 = *MEMORY[0x277CD0838];
    uUIDString = [identifierCopy UUIDString];
    v13 = uUIDString;
    v14 = *MEMORY[0x277CD0860];
    if (uUIDString)
    {
      v14 = uUIDString;
    }

    v33 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v16 = objc_alloc(MEMORY[0x277D0F820]);
    messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
    v18 = [v16 initWithTarget:messageTargetUUID];

    v19 = objc_alloc(MEMORY[0x277D0F848]);
    v20 = [v19 initWithName:*MEMORY[0x277CD0870] destination:v18 payload:v15];
    [v20 setRemoteRestriction:9];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __88__HMDMediaDestinationMessageHandler_sendRequestToUpdateAudioGroupIdentifier_completion___block_invoke;
    v29 = &unk_279732CF0;
    v30 = selfCopy;
    v31 = completionCopy;
    [v20 setResponseHandler:&v26];
    v21 = objc_msgSend_copy(v20, v26, v27, v28, v29, v30);
    [(HMDMessageHandler *)selfCopy routeMessage:v21];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to set completion to update support options", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

void __88__HMDMediaDestinationMessageHandler_sendRequestToUpdateAudioGroupIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Update audio group identifier request message responded with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();
}

- (HMDMediaDestinationMessageHandler)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center notifications:(id)notifications dataSource:(id)source delegate:(id)delegate
{
  v28[1] = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  notificationsCopy = notifications;
  sourceCopy = source;
  delegateCopy = delegate;
  if (!destinationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!centerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
LABEL_11:
    _HMFPreconditionFailure();
  }

  if (!notificationsCopy)
  {
    goto LABEL_11;
  }

  v20 = delegateCopy;
  v28[0] = *MEMORY[0x277CD0870];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v27 = *MEMORY[0x277CD0878];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  uniqueIdentifier = [destinationCopy uniqueIdentifier];
  v26.receiver = self;
  v26.super_class = HMDMediaDestinationMessageHandler;
  v24 = [(HMDAppleMediaAccessoryMessageHandler *)&v26 initWithMessageTargetUUID:uniqueIdentifier messageDispatcher:dispatcherCopy notificationCenter:centerCopy ownerPrivateRemoteMessages:MEMORY[0x277CBEBF8] adminPrivateRemoteMessages:v21 internalMessages:v22 notifications:notificationsCopy notificationsToObject:MEMORY[0x277CBEC10]];

  if (v24)
  {
    [(HMDMediaDestinationMessageHandler *)v24 setDataSource:sourceCopy];
    [(HMDMediaDestinationMessageHandler *)v24 setDelegate:v20];
  }

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_126549 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_126549, &__block_literal_global_126550);
  }

  v3 = logCategory__hmf_once_v21_126551;

  return v3;
}

uint64_t __48__HMDMediaDestinationMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v21_126551;
  logCategory__hmf_once_v21_126551 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end